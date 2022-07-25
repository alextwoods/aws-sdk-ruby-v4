# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::FMS
  # An API client for AWSFMS_20180101
  # See {#initialize} for a full list of supported configuration options
  # <p>This is the <i>Firewall Manager API Reference</i>. This guide is for
  #       developers who need detailed information about the Firewall Manager API actions, data
  #       types, and errors. For detailed information about Firewall Manager features, see the
  #         <a href="https://docs.aws.amazon.com/waf/latest/developerguide/fms-chapter.html">Firewall Manager Developer Guide</a>.</p>
  #          <p>Some API actions require explicit resource permissions. For information, see the developer guide topic
  #         <a href="https://docs.aws.amazon.com/waf/latest/developerguide/fms-api-permissions-ref.html">Firewall Manager required permissions for API actions</a>.
  # </p>
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
    def initialize(config = AWS::SDK::FMS::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Sets the Firewall Manager administrator account. The account must be
    #       a member of the organization in Organizations whose resources you want to protect.
    #           Firewall Manager sets the permissions that allow the account to administer your Firewall Manager policies.</p>
    #          <p>The account that you associate with Firewall Manager is called the Firewall Manager administrator account. </p>
    #
    # @param [Hash] params
    #   See {Types::AssociateAdminAccountInput}.
    #
    # @option params [String] :admin_account
    #   <p>The Amazon Web Services account ID to associate with Firewall Manager as the Firewall Manager
    #         administrator account. This must be an Organizations member account.
    #           For more information about Organizations, see
    #           <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts.html">Managing the Amazon Web Services Accounts in Your Organization</a>.  </p>
    #
    # @return [Types::AssociateAdminAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_admin_account(
    #     admin_account: 'AdminAccount' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateAdminAccountOutput
    #
    def associate_admin_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateAdminAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateAdminAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateAdminAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::InvalidInputException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AssociateAdminAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateAdminAccount,
        stubs: @stubs,
        params_class: Params::AssociateAdminAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_admin_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the Firewall Manager policy administrator as a tenant administrator of a third-party firewall service. A tenant is an instance of the third-party firewall service that's associated with your Amazon Web Services customer account.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateThirdPartyFirewallInput}.
    #
    # @option params [String] :third_party_firewall
    #   <p>The name of the third-party firewall vendor.</p>
    #
    # @return [Types::AssociateThirdPartyFirewallOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_third_party_firewall(
    #     third_party_firewall: 'PALO_ALTO_NETWORKS_CLOUD_NGFW' # required - accepts ["PALO_ALTO_NETWORKS_CLOUD_NGFW"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateThirdPartyFirewallOutput
    #   resp.data.third_party_firewall_status #=> String, one of ["ONBOARDING", "ONBOARD_COMPLETE", "OFFBOARDING", "OFFBOARD_COMPLETE", "NOT_EXIST"]
    #
    def associate_third_party_firewall(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateThirdPartyFirewallInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateThirdPartyFirewallInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateThirdPartyFirewall
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AssociateThirdPartyFirewall
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateThirdPartyFirewall,
        stubs: @stubs,
        params_class: Params::AssociateThirdPartyFirewallOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_third_party_firewall
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Permanently deletes an Firewall Manager applications list.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAppsListInput}.
    #
    # @option params [String] :list_id
    #   <p>The ID of the applications list that you want to delete. You can retrieve this ID from
    #         <code>PutAppsList</code>, <code>ListAppsLists</code>, and <code>GetAppsList</code>.</p>
    #
    # @return [Types::DeleteAppsListOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_apps_list(
    #     list_id: 'ListId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAppsListOutput
    #
    def delete_apps_list(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAppsListInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAppsListInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAppsList
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteAppsList
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAppsList,
        stubs: @stubs,
        params_class: Params::DeleteAppsListOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_apps_list
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Firewall Manager association with the IAM role and the Amazon Simple
    #       Notification Service (SNS) topic that is used to record Firewall Manager SNS logs.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteNotificationChannelInput}.
    #
    # @return [Types::DeleteNotificationChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_notification_channel()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteNotificationChannelOutput
    #
    def delete_notification_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteNotificationChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteNotificationChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteNotificationChannel
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteNotificationChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteNotificationChannel,
        stubs: @stubs,
        params_class: Params::DeleteNotificationChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_notification_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Permanently deletes an Firewall Manager policy. </p>
    #
    # @param [Hash] params
    #   See {Types::DeletePolicyInput}.
    #
    # @option params [String] :policy_id
    #   <p>The ID of the policy that you want to delete. You can retrieve this ID from
    #           <code>PutPolicy</code> and <code>ListPolicies</code>.</p>
    #
    # @option params [Boolean] :delete_all_policy_resources
    #   <p>If <code>True</code>, the request performs cleanup according to the policy type. </p>
    #            <p>For WAF and Shield Advanced policies, the cleanup does the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Deletes rule groups created by Firewall Manager</p>
    #               </li>
    #               <li>
    #                  <p>Removes web ACLs from in-scope resources</p>
    #               </li>
    #               <li>
    #                  <p>Deletes web ACLs that contain no rules or rule groups</p>
    #               </li>
    #            </ul>
    #            <p>For security group policies, the cleanup does the following for each security group in
    #         the policy:</p>
    #            <ul>
    #               <li>
    #                  <p>Disassociates the security group from in-scope resources </p>
    #               </li>
    #               <li>
    #                  <p>Deletes the security group if it was created through Firewall Manager and if it's
    #             no longer associated with any resources through another policy</p>
    #               </li>
    #            </ul>
    #            <p>After the cleanup, in-scope resources are no longer protected by web ACLs in this policy.
    #         Protection of out-of-scope resources remains unchanged. Scope is determined by tags that you
    #         create and accounts that you associate with the policy. When creating the policy, if you
    #         specify that only resources in specific accounts or with specific tags are in scope of the
    #         policy, those accounts and resources are handled by the policy. All others are out of scope.
    #         If you don't specify tags or accounts, all resources are in scope. </p>
    #
    # @return [Types::DeletePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy(
    #     policy_id: 'PolicyId', # required
    #     delete_all_policy_resources: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePolicyOutput
    #
    def delete_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::InvalidInputException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeletePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePolicy,
        stubs: @stubs,
        params_class: Params::DeletePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Permanently deletes an Firewall Manager protocols list.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteProtocolsListInput}.
    #
    # @option params [String] :list_id
    #   <p>The ID of the protocols list that you want to delete. You can retrieve this ID from
    #         <code>PutProtocolsList</code>, <code>ListProtocolsLists</code>, and <code>GetProtocolsLost</code>.</p>
    #
    # @return [Types::DeleteProtocolsListOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_protocols_list(
    #     list_id: 'ListId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteProtocolsListOutput
    #
    def delete_protocols_list(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteProtocolsListInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteProtocolsListInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteProtocolsList
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteProtocolsList
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteProtocolsList,
        stubs: @stubs,
        params_class: Params::DeleteProtocolsListOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_protocols_list
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the account that has been set as the Firewall Manager administrator
    #       account. To set a different account as the administrator account, you must submit an
    #         <code>AssociateAdminAccount</code> request.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateAdminAccountInput}.
    #
    # @return [Types::DisassociateAdminAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_admin_account()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateAdminAccountOutput
    #
    def disassociate_admin_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateAdminAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateAdminAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateAdminAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DisassociateAdminAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateAdminAccount,
        stubs: @stubs,
        params_class: Params::DisassociateAdminAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_admin_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates a Firewall Manager policy administrator from a third-party firewall tenant. When you call <code>DisassociateThirdPartyFirewall</code>, the third-party firewall vendor deletes all of the firewalls that are associated with the account.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateThirdPartyFirewallInput}.
    #
    # @option params [String] :third_party_firewall
    #   <p>The name of the third-party firewall vendor.</p>
    #
    # @return [Types::DisassociateThirdPartyFirewallOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_third_party_firewall(
    #     third_party_firewall: 'PALO_ALTO_NETWORKS_CLOUD_NGFW' # required - accepts ["PALO_ALTO_NETWORKS_CLOUD_NGFW"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateThirdPartyFirewallOutput
    #   resp.data.third_party_firewall_status #=> String, one of ["ONBOARDING", "ONBOARD_COMPLETE", "OFFBOARDING", "OFFBOARD_COMPLETE", "NOT_EXIST"]
    #
    def disassociate_third_party_firewall(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateThirdPartyFirewallInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateThirdPartyFirewallInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateThirdPartyFirewall
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DisassociateThirdPartyFirewall
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateThirdPartyFirewall,
        stubs: @stubs,
        params_class: Params::DisassociateThirdPartyFirewallOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_third_party_firewall
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the Organizations account that is associated with Firewall Manager
    #       as the Firewall Manager administrator.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAdminAccountInput}.
    #
    # @return [Types::GetAdminAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_admin_account()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAdminAccountOutput
    #   resp.data.admin_account #=> String
    #   resp.data.role_status #=> String, one of ["READY", "CREATING", "PENDING_DELETION", "DELETING", "DELETED"]
    #
    def get_admin_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAdminAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAdminAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAdminAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetAdminAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAdminAccount,
        stubs: @stubs,
        params_class: Params::GetAdminAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_admin_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the specified Firewall Manager applications list.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAppsListInput}.
    #
    # @option params [String] :list_id
    #   <p>The ID of the Firewall Manager applications list that you want the details for.</p>
    #
    # @option params [Boolean] :default_list
    #   <p>Specifies whether the list to retrieve is a default list owned by Firewall Manager.</p>
    #
    # @return [Types::GetAppsListOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_apps_list(
    #     list_id: 'ListId', # required
    #     default_list: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAppsListOutput
    #   resp.data.apps_list #=> Types::AppsListData
    #   resp.data.apps_list.list_id #=> String
    #   resp.data.apps_list.list_name #=> String
    #   resp.data.apps_list.list_update_token #=> String
    #   resp.data.apps_list.create_time #=> Time
    #   resp.data.apps_list.last_update_time #=> Time
    #   resp.data.apps_list.apps_list #=> Array<App>
    #   resp.data.apps_list.apps_list[0] #=> Types::App
    #   resp.data.apps_list.apps_list[0].app_name #=> String
    #   resp.data.apps_list.apps_list[0].protocol #=> String
    #   resp.data.apps_list.apps_list[0].port #=> Integer
    #   resp.data.apps_list.previous_apps_list #=> Hash<String, Array<App>>
    #   resp.data.apps_list_arn #=> String
    #
    def get_apps_list(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAppsListInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAppsListInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAppsList
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetAppsList
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAppsList,
        stubs: @stubs,
        params_class: Params::GetAppsListOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_apps_list
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns detailed compliance information about the specified member account. Details
    #       include resources that are in and out of compliance with the specified policy. </p>
    #          <ul>
    #             <li>
    #               <p>Resources are
    #               considered noncompliant for WAF and Shield Advanced policies if the specified policy has
    #               not been applied to them.</p>
    #             </li>
    #             <li>
    #               <p>Resources are considered noncompliant for security group policies if
    #               they are in scope of the policy, they violate one or more of the policy rules, and remediation
    #               is disabled or not possible.</p>
    #             </li>
    #             <li>
    #               <p>Resources are considered noncompliant for Network Firewall policies
    #                 if a firewall is missing in the VPC, if the firewall endpoint isn't set up in an expected Availability Zone and subnet,
    #                 if a subnet created by the Firewall Manager doesn't have the expected route table,
    #                 and for modifications to a firewall policy that violate the Firewall Manager policy's rules.</p>
    #             </li>
    #             <li>
    #               <p>Resources are considered noncompliant for DNS Firewall policies
    #               if a DNS Firewall rule group is missing from the rule group associations for the VPC. </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::GetComplianceDetailInput}.
    #
    # @option params [String] :policy_id
    #   <p>The ID of the policy that you want to get the details for. <code>PolicyId</code> is
    #         returned by <code>PutPolicy</code> and by <code>ListPolicies</code>.</p>
    #
    # @option params [String] :member_account
    #   <p>The Amazon Web Services account that owns the resources that you want to get the details for.</p>
    #
    # @return [Types::GetComplianceDetailOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_compliance_detail(
    #     policy_id: 'PolicyId', # required
    #     member_account: 'MemberAccount' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetComplianceDetailOutput
    #   resp.data.policy_compliance_detail #=> Types::PolicyComplianceDetail
    #   resp.data.policy_compliance_detail.policy_owner #=> String
    #   resp.data.policy_compliance_detail.policy_id #=> String
    #   resp.data.policy_compliance_detail.member_account #=> String
    #   resp.data.policy_compliance_detail.violators #=> Array<ComplianceViolator>
    #   resp.data.policy_compliance_detail.violators[0] #=> Types::ComplianceViolator
    #   resp.data.policy_compliance_detail.violators[0].resource_id #=> String
    #   resp.data.policy_compliance_detail.violators[0].violation_reason #=> String, one of ["WEB_ACL_MISSING_RULE_GROUP", "RESOURCE_MISSING_WEB_ACL", "RESOURCE_INCORRECT_WEB_ACL", "RESOURCE_MISSING_SHIELD_PROTECTION", "RESOURCE_MISSING_WEB_ACL_OR_SHIELD_PROTECTION", "RESOURCE_MISSING_SECURITY_GROUP", "RESOURCE_VIOLATES_AUDIT_SECURITY_GROUP", "SECURITY_GROUP_UNUSED", "SECURITY_GROUP_REDUNDANT", "FMS_CREATED_SECURITY_GROUP_EDITED", "MISSING_FIREWALL", "MISSING_FIREWALL_SUBNET_IN_AZ", "MISSING_EXPECTED_ROUTE_TABLE", "NETWORK_FIREWALL_POLICY_MODIFIED", "FIREWALL_SUBNET_IS_OUT_OF_SCOPE", "INTERNET_GATEWAY_MISSING_EXPECTED_ROUTE", "FIREWALL_SUBNET_MISSING_EXPECTED_ROUTE", "UNEXPECTED_FIREWALL_ROUTES", "UNEXPECTED_TARGET_GATEWAY_ROUTES", "TRAFFIC_INSPECTION_CROSSES_AZ_BOUNDARY", "INVALID_ROUTE_CONFIGURATION", "MISSING_TARGET_GATEWAY", "INTERNET_TRAFFIC_NOT_INSPECTED", "BLACK_HOLE_ROUTE_DETECTED", "BLACK_HOLE_ROUTE_DETECTED_IN_FIREWALL_SUBNET", "RESOURCE_MISSING_DNS_FIREWALL", "ROUTE_HAS_OUT_OF_SCOPE_ENDPOINT", "FIREWALL_SUBNET_MISSING_VPCE_ENDPOINT"]
    #   resp.data.policy_compliance_detail.violators[0].resource_type #=> String
    #   resp.data.policy_compliance_detail.violators[0].metadata #=> Hash<String, String>
    #   resp.data.policy_compliance_detail.violators[0].metadata['key'] #=> String
    #   resp.data.policy_compliance_detail.evaluation_limit_exceeded #=> Boolean
    #   resp.data.policy_compliance_detail.expired_at #=> Time
    #   resp.data.policy_compliance_detail.issue_info_map #=> Hash<String, String>
    #   resp.data.policy_compliance_detail.issue_info_map['key'] #=> String
    #
    def get_compliance_detail(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetComplianceDetailInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetComplianceDetailInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetComplianceDetail
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetComplianceDetail
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetComplianceDetail,
        stubs: @stubs,
        params_class: Params::GetComplianceDetailOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_compliance_detail
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Information
    #       about the Amazon Simple Notification Service (SNS) topic that is used to
    #       record Firewall Manager SNS logs.</p>
    #
    # @param [Hash] params
    #   See {Types::GetNotificationChannelInput}.
    #
    # @return [Types::GetNotificationChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_notification_channel()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetNotificationChannelOutput
    #   resp.data.sns_topic_arn #=> String
    #   resp.data.sns_role_name #=> String
    #
    def get_notification_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetNotificationChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetNotificationChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetNotificationChannel
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetNotificationChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetNotificationChannel,
        stubs: @stubs,
        params_class: Params::GetNotificationChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_notification_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the specified Firewall Manager policy.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPolicyInput}.
    #
    # @option params [String] :policy_id
    #   <p>The ID of the Firewall Manager policy that you want the details for.</p>
    #
    # @return [Types::GetPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy(
    #     policy_id: 'PolicyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPolicyOutput
    #   resp.data.policy #=> Types::Policy
    #   resp.data.policy.policy_id #=> String
    #   resp.data.policy.policy_name #=> String
    #   resp.data.policy.policy_update_token #=> String
    #   resp.data.policy.security_service_policy_data #=> Types::SecurityServicePolicyData
    #   resp.data.policy.security_service_policy_data.type #=> String, one of ["WAF", "WAFV2", "SHIELD_ADVANCED", "SECURITY_GROUPS_COMMON", "SECURITY_GROUPS_CONTENT_AUDIT", "SECURITY_GROUPS_USAGE_AUDIT", "NETWORK_FIREWALL", "DNS_FIREWALL", "THIRD_PARTY_FIREWALL"]
    #   resp.data.policy.security_service_policy_data.managed_service_data #=> String
    #   resp.data.policy.security_service_policy_data.policy_option #=> Types::PolicyOption
    #   resp.data.policy.security_service_policy_data.policy_option.network_firewall_policy #=> Types::NetworkFirewallPolicy
    #   resp.data.policy.security_service_policy_data.policy_option.network_firewall_policy.firewall_deployment_model #=> String, one of ["CENTRALIZED", "DISTRIBUTED"]
    #   resp.data.policy.security_service_policy_data.policy_option.third_party_firewall_policy #=> Types::ThirdPartyFirewallPolicy
    #   resp.data.policy.security_service_policy_data.policy_option.third_party_firewall_policy.firewall_deployment_model #=> String, one of ["CENTRALIZED", "DISTRIBUTED"]
    #   resp.data.policy.resource_type #=> String
    #   resp.data.policy.resource_type_list #=> Array<String>
    #   resp.data.policy.resource_type_list[0] #=> String
    #   resp.data.policy.resource_tags #=> Array<ResourceTag>
    #   resp.data.policy.resource_tags[0] #=> Types::ResourceTag
    #   resp.data.policy.resource_tags[0].key #=> String
    #   resp.data.policy.resource_tags[0].value #=> String
    #   resp.data.policy.exclude_resource_tags #=> Boolean
    #   resp.data.policy.remediation_enabled #=> Boolean
    #   resp.data.policy.delete_unused_fm_managed_resources #=> Boolean
    #   resp.data.policy.include_map #=> Hash<String, Array<String>>
    #   resp.data.policy.include_map['key'] #=> Array<String>
    #   resp.data.policy.include_map['key'][0] #=> String
    #   resp.data.policy.exclude_map #=> Hash<String, Array<String>>
    #   resp.data.policy_arn #=> String
    #
    def get_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::ResourceNotFoundException, Errors::InvalidTypeException]),
        data_parser: Parsers::GetPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPolicy,
        stubs: @stubs,
        params_class: Params::GetPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>If you created a Shield Advanced policy, returns policy-level attack summary information
    #          in the event of a potential DDoS attack. Other policy types are currently unsupported.</p>
    #
    # @param [Hash] params
    #   See {Types::GetProtectionStatusInput}.
    #
    # @option params [String] :policy_id
    #   <p>The ID of the policy for which you want to get the attack information.</p>
    #
    # @option params [String] :member_account_id
    #   <p>The Amazon Web Services account that is in scope of the policy that you want to get the details
    #            for.</p>
    #
    # @option params [Time] :start_time
    #   <p>The start of the time period to query for the attacks. This is a <code>timestamp</code> type. The
    #             request syntax listing indicates a <code>number</code> type because the default used by Firewall Manager is Unix time in seconds. However, any valid <code>timestamp</code> format is
    #            allowed.</p>
    #
    # @option params [Time] :end_time
    #   <p>The end of the time period to query for the attacks. This is a <code>timestamp</code> type. The
    #            request syntax listing indicates a <code>number</code> type because the default used by Firewall Manager is Unix time in seconds. However, any valid <code>timestamp</code> format is
    #            allowed.</p>
    #
    # @option params [String] :next_token
    #   <p>If you specify a value for <code>MaxResults</code> and you have more objects than the number that you specify
    #            for <code>MaxResults</code>, Firewall Manager returns a <code>NextToken</code> value in the response, which you can use to retrieve another group of
    #            objects. For the second and subsequent <code>GetProtectionStatus</code> requests, specify the value of <code>NextToken</code>
    #            from the previous response to get information about another batch of objects.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the number of objects that you want Firewall Manager to return for this request. If you have more
    #           objects than the number that you specify for <code>MaxResults</code>, the response includes a
    #            <code>NextToken</code> value that you can use to get another batch of objects.</p>
    #
    # @return [Types::GetProtectionStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_protection_status(
    #     policy_id: 'PolicyId', # required
    #     member_account_id: 'MemberAccountId',
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetProtectionStatusOutput
    #   resp.data.admin_account_id #=> String
    #   resp.data.service_type #=> String, one of ["WAF", "WAFV2", "SHIELD_ADVANCED", "SECURITY_GROUPS_COMMON", "SECURITY_GROUPS_CONTENT_AUDIT", "SECURITY_GROUPS_USAGE_AUDIT", "NETWORK_FIREWALL", "DNS_FIREWALL", "THIRD_PARTY_FIREWALL"]
    #   resp.data.data #=> String
    #   resp.data.next_token #=> String
    #
    def get_protection_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetProtectionStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetProtectionStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetProtectionStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetProtectionStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetProtectionStatus,
        stubs: @stubs,
        params_class: Params::GetProtectionStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_protection_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the specified Firewall Manager protocols list.</p>
    #
    # @param [Hash] params
    #   See {Types::GetProtocolsListInput}.
    #
    # @option params [String] :list_id
    #   <p>The ID of the Firewall Manager protocols list that you want the details for.</p>
    #
    # @option params [Boolean] :default_list
    #   <p>Specifies whether the list to retrieve is a default list owned by Firewall Manager.</p>
    #
    # @return [Types::GetProtocolsListOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_protocols_list(
    #     list_id: 'ListId', # required
    #     default_list: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetProtocolsListOutput
    #   resp.data.protocols_list #=> Types::ProtocolsListData
    #   resp.data.protocols_list.list_id #=> String
    #   resp.data.protocols_list.list_name #=> String
    #   resp.data.protocols_list.list_update_token #=> String
    #   resp.data.protocols_list.create_time #=> Time
    #   resp.data.protocols_list.last_update_time #=> Time
    #   resp.data.protocols_list.protocols_list #=> Array<String>
    #   resp.data.protocols_list.protocols_list[0] #=> String
    #   resp.data.protocols_list.previous_protocols_list #=> Hash<String, Array<String>>
    #   resp.data.protocols_list_arn #=> String
    #
    def get_protocols_list(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetProtocolsListInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetProtocolsListInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetProtocolsList
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetProtocolsList
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetProtocolsList,
        stubs: @stubs,
        params_class: Params::GetProtocolsListOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_protocols_list
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>The onboarding status of a Firewall Manager admin account to third-party firewall vendor tenant.</p>
    #
    # @param [Hash] params
    #   See {Types::GetThirdPartyFirewallAssociationStatusInput}.
    #
    # @option params [String] :third_party_firewall
    #   <p>The name of the third-party firewall vendor.</p>
    #
    # @return [Types::GetThirdPartyFirewallAssociationStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_third_party_firewall_association_status(
    #     third_party_firewall: 'PALO_ALTO_NETWORKS_CLOUD_NGFW' # required - accepts ["PALO_ALTO_NETWORKS_CLOUD_NGFW"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetThirdPartyFirewallAssociationStatusOutput
    #   resp.data.third_party_firewall_status #=> String, one of ["ONBOARDING", "ONBOARD_COMPLETE", "OFFBOARDING", "OFFBOARD_COMPLETE", "NOT_EXIST"]
    #   resp.data.marketplace_onboarding_status #=> String, one of ["NO_SUBSCRIPTION", "NOT_COMPLETE", "COMPLETE"]
    #
    def get_third_party_firewall_association_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetThirdPartyFirewallAssociationStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetThirdPartyFirewallAssociationStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetThirdPartyFirewallAssociationStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetThirdPartyFirewallAssociationStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetThirdPartyFirewallAssociationStatus,
        stubs: @stubs,
        params_class: Params::GetThirdPartyFirewallAssociationStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_third_party_firewall_association_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves violations for a resource based on the specified Firewall Manager policy and Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::GetViolationDetailsInput}.
    #
    # @option params [String] :policy_id
    #   <p>The ID of the Firewall Manager policy that you want the details for. This currently only supports security group content audit policies.</p>
    #
    # @option params [String] :member_account
    #   <p>The Amazon Web Services account ID that you want the details for.</p>
    #
    # @option params [String] :resource_id
    #   <p>The ID of the resource that has violations.</p>
    #
    # @option params [String] :resource_type
    #   <p>The resource type. This is in the format shown in the <a href="https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html">Amazon Web Services Resource Types Reference</a>.
    #         Supported resource types are:
    #         <code>AWS::EC2::Instance</code>,
    #         <code>AWS::EC2::NetworkInterface</code>,
    #         <code>AWS::EC2::SecurityGroup</code>,
    #         <code>AWS::NetworkFirewall::FirewallPolicy</code>, and
    #         <code>AWS::EC2::Subnet</code>.
    #      </p>
    #
    # @return [Types::GetViolationDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_violation_details(
    #     policy_id: 'PolicyId', # required
    #     member_account: 'MemberAccount', # required
    #     resource_id: 'ResourceId', # required
    #     resource_type: 'ResourceType' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetViolationDetailsOutput
    #   resp.data.violation_detail #=> Types::ViolationDetail
    #   resp.data.violation_detail.policy_id #=> String
    #   resp.data.violation_detail.member_account #=> String
    #   resp.data.violation_detail.resource_id #=> String
    #   resp.data.violation_detail.resource_type #=> String
    #   resp.data.violation_detail.resource_violations #=> Array<ResourceViolation>
    #   resp.data.violation_detail.resource_violations[0] #=> Types::ResourceViolation
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation #=> Types::AwsVPCSecurityGroupViolation
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation.violation_target #=> String
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation.violation_target_description #=> String
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation.partial_matches #=> Array<PartialMatch>
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation.partial_matches[0] #=> Types::PartialMatch
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation.partial_matches[0].reference #=> String
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation.partial_matches[0].target_violation_reasons #=> Array<String>
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation.partial_matches[0].target_violation_reasons[0] #=> String
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions #=> Array<SecurityGroupRemediationAction>
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0] #=> Types::SecurityGroupRemediationAction
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0].remediation_action_type #=> String, one of ["REMOVE", "MODIFY"]
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0].description #=> String
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0].remediation_result #=> Types::SecurityGroupRuleDescription
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0].remediation_result.ipv4_range #=> String
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0].remediation_result.ipv6_range #=> String
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0].remediation_result.prefix_list_id #=> String
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0].remediation_result.protocol #=> String
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0].remediation_result.from_port #=> Integer
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0].remediation_result.to_port #=> Integer
    #   resp.data.violation_detail.resource_violations[0].aws_vpc_security_group_violation.possible_security_group_remediation_actions[0].is_default_action #=> Boolean
    #   resp.data.violation_detail.resource_violations[0].aws_ec2_network_interface_violation #=> Types::AwsEc2NetworkInterfaceViolation
    #   resp.data.violation_detail.resource_violations[0].aws_ec2_network_interface_violation.violation_target #=> String
    #   resp.data.violation_detail.resource_violations[0].aws_ec2_network_interface_violation.violating_security_groups #=> Array<String>
    #   resp.data.violation_detail.resource_violations[0].aws_ec2_network_interface_violation.violating_security_groups[0] #=> String
    #   resp.data.violation_detail.resource_violations[0].aws_ec2_instance_violation #=> Types::AwsEc2InstanceViolation
    #   resp.data.violation_detail.resource_violations[0].aws_ec2_instance_violation.violation_target #=> String
    #   resp.data.violation_detail.resource_violations[0].aws_ec2_instance_violation.aws_ec2_network_interface_violations #=> Array<AwsEc2NetworkInterfaceViolation>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_firewall_violation #=> Types::NetworkFirewallMissingFirewallViolation
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_firewall_violation.violation_target #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_firewall_violation.vpc #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_firewall_violation.availability_zone #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_firewall_violation.target_violation_reason #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_subnet_violation #=> Types::NetworkFirewallMissingSubnetViolation
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_subnet_violation.violation_target #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_subnet_violation.vpc #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_subnet_violation.availability_zone #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_subnet_violation.target_violation_reason #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_expected_rt_violation #=> Types::NetworkFirewallMissingExpectedRTViolation
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_expected_rt_violation.violation_target #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_expected_rt_violation.vpc #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_expected_rt_violation.availability_zone #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_expected_rt_violation.current_route_table #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_expected_rt_violation.expected_route_table #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_policy_modified_violation #=> Types::NetworkFirewallPolicyModifiedViolation
    #   resp.data.violation_detail.resource_violations[0].network_firewall_policy_modified_violation.violation_target #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_policy_modified_violation.current_policy_description #=> Types::NetworkFirewallPolicyDescription
    #   resp.data.violation_detail.resource_violations[0].network_firewall_policy_modified_violation.current_policy_description.stateless_rule_groups #=> Array<StatelessRuleGroup>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_policy_modified_violation.current_policy_description.stateless_rule_groups[0] #=> Types::StatelessRuleGroup
    #   resp.data.violation_detail.resource_violations[0].network_firewall_policy_modified_violation.current_policy_description.stateless_rule_groups[0].rule_group_name #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_policy_modified_violation.current_policy_description.stateless_rule_groups[0].resource_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_policy_modified_violation.current_policy_description.stateless_rule_groups[0].priority #=> Integer
    #   resp.data.violation_detail.resource_violations[0].network_firewall_policy_modified_violation.current_policy_description.stateless_default_actions #=> Array<String>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_policy_modified_violation.current_policy_description.stateless_default_actions[0] #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_policy_modified_violation.current_policy_description.stateless_fragment_default_actions #=> Array<String>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_policy_modified_violation.current_policy_description.stateless_custom_actions #=> Array<String>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_policy_modified_violation.current_policy_description.stateful_rule_groups #=> Array<StatefulRuleGroup>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_policy_modified_violation.current_policy_description.stateful_rule_groups[0] #=> Types::StatefulRuleGroup
    #   resp.data.violation_detail.resource_violations[0].network_firewall_policy_modified_violation.current_policy_description.stateful_rule_groups[0].rule_group_name #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_policy_modified_violation.current_policy_description.stateful_rule_groups[0].resource_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_policy_modified_violation.expected_policy_description #=> Types::NetworkFirewallPolicyDescription
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation #=> Types::NetworkFirewallInternetTrafficNotInspectedViolation
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.subnet_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.subnet_availability_zone #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.route_table_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.violating_routes #=> Array<Route>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.violating_routes[0] #=> Types::Route
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.violating_routes[0].destination_type #=> String, one of ["IPV4", "IPV6", "PREFIX_LIST"]
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.violating_routes[0].target_type #=> String, one of ["GATEWAY", "CARRIER_GATEWAY", "INSTANCE", "LOCAL_GATEWAY", "NAT_GATEWAY", "NETWORK_INTERFACE", "VPC_ENDPOINT", "VPC_PEERING_CONNECTION", "EGRESS_ONLY_INTERNET_GATEWAY", "TRANSIT_GATEWAY"]
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.violating_routes[0].destination #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.violating_routes[0].target #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.is_route_table_used_in_different_az #=> Boolean
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.current_firewall_subnet_route_table #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.expected_firewall_endpoint #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.firewall_subnet_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.expected_firewall_subnet_routes #=> Array<ExpectedRoute>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.expected_firewall_subnet_routes[0] #=> Types::ExpectedRoute
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.expected_firewall_subnet_routes[0].ip_v4_cidr #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.expected_firewall_subnet_routes[0].prefix_list_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.expected_firewall_subnet_routes[0].ip_v6_cidr #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.expected_firewall_subnet_routes[0].contributing_subnets #=> Array<String>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.expected_firewall_subnet_routes[0].allowed_targets #=> Array<String>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.expected_firewall_subnet_routes[0].allowed_targets[0] #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.expected_firewall_subnet_routes[0].route_table_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.actual_firewall_subnet_routes #=> Array<Route>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.internet_gateway_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.current_internet_gateway_route_table #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.expected_internet_gateway_routes #=> Array<ExpectedRoute>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.actual_internet_gateway_routes #=> Array<Route>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_internet_traffic_not_inspected_violation.vpc_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_invalid_route_configuration_violation #=> Types::NetworkFirewallInvalidRouteConfigurationViolation
    #   resp.data.violation_detail.resource_violations[0].network_firewall_invalid_route_configuration_violation.affected_subnets #=> Array<String>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_invalid_route_configuration_violation.route_table_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_invalid_route_configuration_violation.is_route_table_used_in_different_az #=> Boolean
    #   resp.data.violation_detail.resource_violations[0].network_firewall_invalid_route_configuration_violation.violating_route #=> Types::Route
    #   resp.data.violation_detail.resource_violations[0].network_firewall_invalid_route_configuration_violation.current_firewall_subnet_route_table #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_invalid_route_configuration_violation.expected_firewall_endpoint #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_invalid_route_configuration_violation.actual_firewall_endpoint #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_invalid_route_configuration_violation.expected_firewall_subnet_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_invalid_route_configuration_violation.actual_firewall_subnet_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_invalid_route_configuration_violation.expected_firewall_subnet_routes #=> Array<ExpectedRoute>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_invalid_route_configuration_violation.actual_firewall_subnet_routes #=> Array<Route>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_invalid_route_configuration_violation.internet_gateway_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_invalid_route_configuration_violation.current_internet_gateway_route_table #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_invalid_route_configuration_violation.expected_internet_gateway_routes #=> Array<ExpectedRoute>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_invalid_route_configuration_violation.actual_internet_gateway_routes #=> Array<Route>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_invalid_route_configuration_violation.vpc_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_black_hole_route_detected_violation #=> Types::NetworkFirewallBlackHoleRouteDetectedViolation
    #   resp.data.violation_detail.resource_violations[0].network_firewall_black_hole_route_detected_violation.violation_target #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_black_hole_route_detected_violation.route_table_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_black_hole_route_detected_violation.vpc_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_black_hole_route_detected_violation.violating_routes #=> Array<Route>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_unexpected_firewall_routes_violation #=> Types::NetworkFirewallUnexpectedFirewallRoutesViolation
    #   resp.data.violation_detail.resource_violations[0].network_firewall_unexpected_firewall_routes_violation.firewall_subnet_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_unexpected_firewall_routes_violation.violating_routes #=> Array<Route>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_unexpected_firewall_routes_violation.route_table_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_unexpected_firewall_routes_violation.firewall_endpoint #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_unexpected_firewall_routes_violation.vpc_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_unexpected_gateway_routes_violation #=> Types::NetworkFirewallUnexpectedGatewayRoutesViolation
    #   resp.data.violation_detail.resource_violations[0].network_firewall_unexpected_gateway_routes_violation.gateway_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_unexpected_gateway_routes_violation.violating_routes #=> Array<Route>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_unexpected_gateway_routes_violation.route_table_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_unexpected_gateway_routes_violation.vpc_id #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_expected_routes_violation #=> Types::NetworkFirewallMissingExpectedRoutesViolation
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_expected_routes_violation.violation_target #=> String
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_expected_routes_violation.expected_routes #=> Array<ExpectedRoute>
    #   resp.data.violation_detail.resource_violations[0].network_firewall_missing_expected_routes_violation.vpc_id #=> String
    #   resp.data.violation_detail.resource_violations[0].dns_rule_group_priority_conflict_violation #=> Types::DnsRuleGroupPriorityConflictViolation
    #   resp.data.violation_detail.resource_violations[0].dns_rule_group_priority_conflict_violation.violation_target #=> String
    #   resp.data.violation_detail.resource_violations[0].dns_rule_group_priority_conflict_violation.violation_target_description #=> String
    #   resp.data.violation_detail.resource_violations[0].dns_rule_group_priority_conflict_violation.conflicting_priority #=> Integer
    #   resp.data.violation_detail.resource_violations[0].dns_rule_group_priority_conflict_violation.conflicting_policy_id #=> String
    #   resp.data.violation_detail.resource_violations[0].dns_rule_group_priority_conflict_violation.unavailable_priorities #=> Array<Integer>
    #   resp.data.violation_detail.resource_violations[0].dns_rule_group_priority_conflict_violation.unavailable_priorities[0] #=> Integer
    #   resp.data.violation_detail.resource_violations[0].dns_duplicate_rule_group_violation #=> Types::DnsDuplicateRuleGroupViolation
    #   resp.data.violation_detail.resource_violations[0].dns_duplicate_rule_group_violation.violation_target #=> String
    #   resp.data.violation_detail.resource_violations[0].dns_duplicate_rule_group_violation.violation_target_description #=> String
    #   resp.data.violation_detail.resource_violations[0].dns_rule_group_limit_exceeded_violation #=> Types::DnsRuleGroupLimitExceededViolation
    #   resp.data.violation_detail.resource_violations[0].dns_rule_group_limit_exceeded_violation.violation_target #=> String
    #   resp.data.violation_detail.resource_violations[0].dns_rule_group_limit_exceeded_violation.violation_target_description #=> String
    #   resp.data.violation_detail.resource_violations[0].dns_rule_group_limit_exceeded_violation.number_of_rule_groups_already_associated #=> Integer
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions #=> Types::PossibleRemediationActions
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.description #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions #=> Array<PossibleRemediationAction>
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0] #=> Types::PossibleRemediationAction
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].description #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions #=> Array<RemediationActionWithOrder>
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0] #=> Types::RemediationActionWithOrder
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action #=> Types::RemediationAction
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.description #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_create_route_action #=> Types::EC2CreateRouteAction
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_create_route_action.description #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_create_route_action.destination_cidr_block #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_create_route_action.destination_prefix_list_id #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_create_route_action.destination_ipv6_cidr_block #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_create_route_action.vpc_endpoint_id #=> Types::ActionTarget
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_create_route_action.vpc_endpoint_id.resource_id #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_create_route_action.vpc_endpoint_id.description #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_create_route_action.gateway_id #=> Types::ActionTarget
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_create_route_action.route_table_id #=> Types::ActionTarget
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_replace_route_action #=> Types::EC2ReplaceRouteAction
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_replace_route_action.description #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_replace_route_action.destination_cidr_block #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_replace_route_action.destination_prefix_list_id #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_replace_route_action.destination_ipv6_cidr_block #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_replace_route_action.gateway_id #=> Types::ActionTarget
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_replace_route_action.route_table_id #=> Types::ActionTarget
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_delete_route_action #=> Types::EC2DeleteRouteAction
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_delete_route_action.description #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_delete_route_action.destination_cidr_block #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_delete_route_action.destination_prefix_list_id #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_delete_route_action.destination_ipv6_cidr_block #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_delete_route_action.route_table_id #=> Types::ActionTarget
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_copy_route_table_action #=> Types::EC2CopyRouteTableAction
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_copy_route_table_action.description #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_copy_route_table_action.vpc_id #=> Types::ActionTarget
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_copy_route_table_action.route_table_id #=> Types::ActionTarget
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_replace_route_table_association_action #=> Types::EC2ReplaceRouteTableAssociationAction
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_replace_route_table_association_action.description #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_replace_route_table_association_action.association_id #=> Types::ActionTarget
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_replace_route_table_association_action.route_table_id #=> Types::ActionTarget
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_associate_route_table_action #=> Types::EC2AssociateRouteTableAction
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_associate_route_table_action.description #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_associate_route_table_action.route_table_id #=> Types::ActionTarget
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_associate_route_table_action.subnet_id #=> Types::ActionTarget
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_associate_route_table_action.gateway_id #=> Types::ActionTarget
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_create_route_table_action #=> Types::EC2CreateRouteTableAction
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_create_route_table_action.description #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.ec2_create_route_table_action.vpc_id #=> Types::ActionTarget
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.fms_policy_update_firewall_creation_config_action #=> Types::FMSPolicyUpdateFirewallCreationConfigAction
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.fms_policy_update_firewall_creation_config_action.description #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].remediation_action.fms_policy_update_firewall_creation_config_action.firewall_creation_config #=> String
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].ordered_remediation_actions[0].order #=> Integer
    #   resp.data.violation_detail.resource_violations[0].possible_remediation_actions.actions[0].is_default_action #=> Boolean
    #   resp.data.violation_detail.resource_violations[0].firewall_subnet_is_out_of_scope_violation #=> Types::FirewallSubnetIsOutOfScopeViolation
    #   resp.data.violation_detail.resource_violations[0].firewall_subnet_is_out_of_scope_violation.firewall_subnet_id #=> String
    #   resp.data.violation_detail.resource_violations[0].firewall_subnet_is_out_of_scope_violation.vpc_id #=> String
    #   resp.data.violation_detail.resource_violations[0].firewall_subnet_is_out_of_scope_violation.subnet_availability_zone #=> String
    #   resp.data.violation_detail.resource_violations[0].firewall_subnet_is_out_of_scope_violation.subnet_availability_zone_id #=> String
    #   resp.data.violation_detail.resource_violations[0].firewall_subnet_is_out_of_scope_violation.vpc_endpoint_id #=> String
    #   resp.data.violation_detail.resource_violations[0].route_has_out_of_scope_endpoint_violation #=> Types::RouteHasOutOfScopeEndpointViolation
    #   resp.data.violation_detail.resource_violations[0].route_has_out_of_scope_endpoint_violation.subnet_id #=> String
    #   resp.data.violation_detail.resource_violations[0].route_has_out_of_scope_endpoint_violation.vpc_id #=> String
    #   resp.data.violation_detail.resource_violations[0].route_has_out_of_scope_endpoint_violation.route_table_id #=> String
    #   resp.data.violation_detail.resource_violations[0].route_has_out_of_scope_endpoint_violation.violating_routes #=> Array<Route>
    #   resp.data.violation_detail.resource_violations[0].route_has_out_of_scope_endpoint_violation.subnet_availability_zone #=> String
    #   resp.data.violation_detail.resource_violations[0].route_has_out_of_scope_endpoint_violation.subnet_availability_zone_id #=> String
    #   resp.data.violation_detail.resource_violations[0].route_has_out_of_scope_endpoint_violation.current_firewall_subnet_route_table #=> String
    #   resp.data.violation_detail.resource_violations[0].route_has_out_of_scope_endpoint_violation.firewall_subnet_id #=> String
    #   resp.data.violation_detail.resource_violations[0].route_has_out_of_scope_endpoint_violation.firewall_subnet_routes #=> Array<Route>
    #   resp.data.violation_detail.resource_violations[0].route_has_out_of_scope_endpoint_violation.internet_gateway_id #=> String
    #   resp.data.violation_detail.resource_violations[0].route_has_out_of_scope_endpoint_violation.current_internet_gateway_route_table #=> String
    #   resp.data.violation_detail.resource_violations[0].route_has_out_of_scope_endpoint_violation.internet_gateway_routes #=> Array<Route>
    #   resp.data.violation_detail.resource_violations[0].third_party_firewall_missing_firewall_violation #=> Types::ThirdPartyFirewallMissingFirewallViolation
    #   resp.data.violation_detail.resource_violations[0].third_party_firewall_missing_firewall_violation.violation_target #=> String
    #   resp.data.violation_detail.resource_violations[0].third_party_firewall_missing_firewall_violation.vpc #=> String
    #   resp.data.violation_detail.resource_violations[0].third_party_firewall_missing_firewall_violation.availability_zone #=> String
    #   resp.data.violation_detail.resource_violations[0].third_party_firewall_missing_firewall_violation.target_violation_reason #=> String
    #   resp.data.violation_detail.resource_violations[0].third_party_firewall_missing_subnet_violation #=> Types::ThirdPartyFirewallMissingSubnetViolation
    #   resp.data.violation_detail.resource_violations[0].third_party_firewall_missing_subnet_violation.violation_target #=> String
    #   resp.data.violation_detail.resource_violations[0].third_party_firewall_missing_subnet_violation.vpc #=> String
    #   resp.data.violation_detail.resource_violations[0].third_party_firewall_missing_subnet_violation.availability_zone #=> String
    #   resp.data.violation_detail.resource_violations[0].third_party_firewall_missing_subnet_violation.target_violation_reason #=> String
    #   resp.data.violation_detail.resource_violations[0].third_party_firewall_missing_expected_route_table_violation #=> Types::ThirdPartyFirewallMissingExpectedRouteTableViolation
    #   resp.data.violation_detail.resource_violations[0].third_party_firewall_missing_expected_route_table_violation.violation_target #=> String
    #   resp.data.violation_detail.resource_violations[0].third_party_firewall_missing_expected_route_table_violation.vpc #=> String
    #   resp.data.violation_detail.resource_violations[0].third_party_firewall_missing_expected_route_table_violation.availability_zone #=> String
    #   resp.data.violation_detail.resource_violations[0].third_party_firewall_missing_expected_route_table_violation.current_route_table #=> String
    #   resp.data.violation_detail.resource_violations[0].third_party_firewall_missing_expected_route_table_violation.expected_route_table #=> String
    #   resp.data.violation_detail.resource_violations[0].firewall_subnet_missing_vpc_endpoint_violation #=> Types::FirewallSubnetMissingVPCEndpointViolation
    #   resp.data.violation_detail.resource_violations[0].firewall_subnet_missing_vpc_endpoint_violation.firewall_subnet_id #=> String
    #   resp.data.violation_detail.resource_violations[0].firewall_subnet_missing_vpc_endpoint_violation.vpc_id #=> String
    #   resp.data.violation_detail.resource_violations[0].firewall_subnet_missing_vpc_endpoint_violation.subnet_availability_zone #=> String
    #   resp.data.violation_detail.resource_violations[0].firewall_subnet_missing_vpc_endpoint_violation.subnet_availability_zone_id #=> String
    #   resp.data.violation_detail.resource_tags #=> Array<Tag>
    #   resp.data.violation_detail.resource_tags[0] #=> Types::Tag
    #   resp.data.violation_detail.resource_tags[0].key #=> String
    #   resp.data.violation_detail.resource_tags[0].value #=> String
    #   resp.data.violation_detail.resource_description #=> String
    #
    def get_violation_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetViolationDetailsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetViolationDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetViolationDetails
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetViolationDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetViolationDetails,
        stubs: @stubs,
        params_class: Params::GetViolationDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_violation_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of <code>AppsListDataSummary</code> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAppsListsInput}.
    #
    # @option params [Boolean] :default_lists
    #   <p>Specifies whether the lists to retrieve are default lists owned by Firewall Manager.</p>
    #
    # @option params [String] :next_token
    #   <p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum,
    #           Firewall Manager returns this token in the response. For all but the first request, you provide the token returned by the prior request
    #           in the request parameters, to retrieve the next batch of objects.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Firewall Manager to return for this request. If more
    #               objects are available, in the response, Firewall Manager provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify this, Firewall Manager returns all available objects.</p>
    #
    # @return [Types::ListAppsListsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_apps_lists(
    #     default_lists: false,
    #     next_token: 'NextToken',
    #     max_results: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAppsListsOutput
    #   resp.data.apps_lists #=> Array<AppsListDataSummary>
    #   resp.data.apps_lists[0] #=> Types::AppsListDataSummary
    #   resp.data.apps_lists[0].list_arn #=> String
    #   resp.data.apps_lists[0].list_id #=> String
    #   resp.data.apps_lists[0].list_name #=> String
    #   resp.data.apps_lists[0].apps_list #=> Array<App>
    #   resp.data.apps_lists[0].apps_list[0] #=> Types::App
    #   resp.data.apps_lists[0].apps_list[0].app_name #=> String
    #   resp.data.apps_lists[0].apps_list[0].protocol #=> String
    #   resp.data.apps_lists[0].apps_list[0].port #=> Integer
    #   resp.data.next_token #=> String
    #
    def list_apps_lists(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAppsListsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAppsListsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAppsLists
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListAppsLists
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAppsLists,
        stubs: @stubs,
        params_class: Params::ListAppsListsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_apps_lists
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of <code>PolicyComplianceStatus</code> objects. Use
    #         <code>PolicyComplianceStatus</code> to get a summary of which member accounts are protected
    #       by the specified policy. </p>
    #
    # @param [Hash] params
    #   See {Types::ListComplianceStatusInput}.
    #
    # @option params [String] :policy_id
    #   <p>The ID of the Firewall Manager policy that you want the details for.</p>
    #
    # @option params [String] :next_token
    #   <p>If you specify a value for <code>MaxResults</code> and you have more
    #           <code>PolicyComplianceStatus</code> objects than the number that you specify for
    #           <code>MaxResults</code>, Firewall Manager returns a <code>NextToken</code> value in the
    #         response that allows you to list another group of <code>PolicyComplianceStatus</code> objects.
    #         For the second and subsequent <code>ListComplianceStatus</code> requests, specify the value of
    #           <code>NextToken</code> from the previous response to get information about another batch of
    #           <code>PolicyComplianceStatus</code> objects.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the number of <code>PolicyComplianceStatus</code> objects that you want
    #         Firewall Manager to return for this request. If you have more
    #           <code>PolicyComplianceStatus</code> objects than the number that you specify for
    #           <code>MaxResults</code>, the response includes a <code>NextToken</code> value that you can
    #         use to get another batch of <code>PolicyComplianceStatus</code> objects.</p>
    #
    # @return [Types::ListComplianceStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_compliance_status(
    #     policy_id: 'PolicyId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListComplianceStatusOutput
    #   resp.data.policy_compliance_status_list #=> Array<PolicyComplianceStatus>
    #   resp.data.policy_compliance_status_list[0] #=> Types::PolicyComplianceStatus
    #   resp.data.policy_compliance_status_list[0].policy_owner #=> String
    #   resp.data.policy_compliance_status_list[0].policy_id #=> String
    #   resp.data.policy_compliance_status_list[0].policy_name #=> String
    #   resp.data.policy_compliance_status_list[0].member_account #=> String
    #   resp.data.policy_compliance_status_list[0].evaluation_results #=> Array<EvaluationResult>
    #   resp.data.policy_compliance_status_list[0].evaluation_results[0] #=> Types::EvaluationResult
    #   resp.data.policy_compliance_status_list[0].evaluation_results[0].compliance_status #=> String, one of ["COMPLIANT", "NON_COMPLIANT"]
    #   resp.data.policy_compliance_status_list[0].evaluation_results[0].violator_count #=> Integer
    #   resp.data.policy_compliance_status_list[0].evaluation_results[0].evaluation_limit_exceeded #=> Boolean
    #   resp.data.policy_compliance_status_list[0].last_updated #=> Time
    #   resp.data.policy_compliance_status_list[0].issue_info_map #=> Hash<String, String>
    #   resp.data.policy_compliance_status_list[0].issue_info_map['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_compliance_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListComplianceStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListComplianceStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListComplianceStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListComplianceStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListComplianceStatus,
        stubs: @stubs,
        params_class: Params::ListComplianceStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_compliance_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a <code>MemberAccounts</code> object that lists the member accounts in the
    #       administrator's Amazon Web Services organization.</p>
    #          <p>The <code>ListMemberAccounts</code> must be submitted by the account that is set as the
    #       Firewall Manager administrator.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMemberAccountsInput}.
    #
    # @option params [String] :next_token
    #   <p>If you specify a value for <code>MaxResults</code> and you have more account IDs than the
    #         number that you specify for <code>MaxResults</code>, Firewall Manager returns a
    #           <code>NextToken</code> value in the response that allows you to list another group of IDs.
    #         For the second and subsequent <code>ListMemberAccountsRequest</code> requests, specify the
    #         value of <code>NextToken</code> from the previous response to get information about another
    #         batch of member account IDs.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the number of member account IDs that you want Firewall Manager to return
    #         for this request. If you have more IDs than the number that you specify for
    #           <code>MaxResults</code>, the response includes a <code>NextToken</code> value that you can
    #         use to get another batch of member account IDs.</p>
    #
    # @return [Types::ListMemberAccountsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_member_accounts(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMemberAccountsOutput
    #   resp.data.member_accounts #=> Array<String>
    #   resp.data.member_accounts[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_member_accounts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMemberAccountsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMemberAccountsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMemberAccounts
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListMemberAccounts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMemberAccounts,
        stubs: @stubs,
        params_class: Params::ListMemberAccountsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_member_accounts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of <code>PolicySummary</code> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPoliciesInput}.
    #
    # @option params [String] :next_token
    #   <p>If you specify a value for <code>MaxResults</code> and you have more
    #           <code>PolicySummary</code> objects than the number that you specify for
    #           <code>MaxResults</code>, Firewall Manager returns a <code>NextToken</code> value in the
    #         response that allows you to list another group of <code>PolicySummary</code> objects. For the
    #         second and subsequent <code>ListPolicies</code> requests, specify the value of
    #           <code>NextToken</code> from the previous response to get information about another batch of
    #           <code>PolicySummary</code> objects.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the number of <code>PolicySummary</code> objects that you want Firewall Manager to return for this request. If you have more <code>PolicySummary</code> objects than
    #         the number that you specify for <code>MaxResults</code>, the response includes a
    #           <code>NextToken</code> value that you can use to get another batch of
    #           <code>PolicySummary</code> objects.</p>
    #
    # @return [Types::ListPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policies(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPoliciesOutput
    #   resp.data.policy_list #=> Array<PolicySummary>
    #   resp.data.policy_list[0] #=> Types::PolicySummary
    #   resp.data.policy_list[0].policy_arn #=> String
    #   resp.data.policy_list[0].policy_id #=> String
    #   resp.data.policy_list[0].policy_name #=> String
    #   resp.data.policy_list[0].resource_type #=> String
    #   resp.data.policy_list[0].security_service_type #=> String, one of ["WAF", "WAFV2", "SHIELD_ADVANCED", "SECURITY_GROUPS_COMMON", "SECURITY_GROUPS_CONTENT_AUDIT", "SECURITY_GROUPS_USAGE_AUDIT", "NETWORK_FIREWALL", "DNS_FIREWALL", "THIRD_PARTY_FIREWALL"]
    #   resp.data.policy_list[0].remediation_enabled #=> Boolean
    #   resp.data.policy_list[0].delete_unused_fm_managed_resources #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPolicies
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPolicies,
        stubs: @stubs,
        params_class: Params::ListPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an array of <code>ProtocolsListDataSummary</code> objects.</p>
    #
    # @param [Hash] params
    #   See {Types::ListProtocolsListsInput}.
    #
    # @option params [Boolean] :default_lists
    #   <p>Specifies whether the lists to retrieve are default lists owned by Firewall Manager.</p>
    #
    # @option params [String] :next_token
    #   <p>If you specify a value for <code>MaxResults</code> in your list request, and you have more objects than the maximum,
    #           Firewall Manager returns this token in the response. For all but the first request, you provide the token returned by the prior request
    #           in the request parameters, to retrieve the next batch of objects.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of objects that you want Firewall Manager to return for this request. If more
    #               objects are available, in the response, Firewall Manager provides a
    #              <code>NextToken</code> value that you can use in a subsequent call to get the next batch of objects.</p>
    #            <p>If you don't specify this, Firewall Manager returns all available objects.</p>
    #
    # @return [Types::ListProtocolsListsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_protocols_lists(
    #     default_lists: false,
    #     next_token: 'NextToken',
    #     max_results: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListProtocolsListsOutput
    #   resp.data.protocols_lists #=> Array<ProtocolsListDataSummary>
    #   resp.data.protocols_lists[0] #=> Types::ProtocolsListDataSummary
    #   resp.data.protocols_lists[0].list_arn #=> String
    #   resp.data.protocols_lists[0].list_id #=> String
    #   resp.data.protocols_lists[0].list_name #=> String
    #   resp.data.protocols_lists[0].protocols_list #=> Array<String>
    #   resp.data.protocols_lists[0].protocols_list[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_protocols_lists(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListProtocolsListsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListProtocolsListsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListProtocolsLists
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListProtocolsLists
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListProtocolsLists,
        stubs: @stubs,
        params_class: Params::ListProtocolsListsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_protocols_lists
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the list of tags for the specified Amazon Web Services resource.   </p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to return tags for. The Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. </p>
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
    #   resp.data.tag_list #=> Array<Tag>
    #   resp.data.tag_list[0] #=> Types::Tag
    #   resp.data.tag_list[0].key #=> String
    #   resp.data.tag_list[0].value #=> String
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
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

    # <p>Retrieves a list of all of the third-party firewall policies that are associated with the third-party firewall administrator's account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListThirdPartyFirewallFirewallPoliciesInput}.
    #
    # @option params [String] :third_party_firewall
    #   <p>The name of the third-party firewall vendor.</p>
    #
    # @option params [String] :next_token
    #   <p>If the previous response included a <code>NextToken</code> element, the specified third-party firewall vendor is associated with more
    #   third-party firewall policies. To get more third-party firewall policies, submit another <code>ListThirdPartyFirewallFirewallPoliciesRequest</code> request.</p>
    #            <p>
    #     For the value of <code>NextToken</code>, specify the value of <code>NextToken</code> from the previous response.
    #     If the previous response didn't include a <code>NextToken</code> element, there are no more third-party firewall policies to
    #     get.
    #   </p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of third-party firewall policies that you want Firewall Manager to return. If
    #   the specified third-party firewall vendor is associated with more than <code>MaxResults</code> firewall policies, the response includes a
    #   <code>NextToken</code> element. <code>NextToken</code> contains an encrypted token that identifies the first third-party firewall policies
    #   that Firewall Manager will return if you submit another request.</p>
    #
    # @return [Types::ListThirdPartyFirewallFirewallPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_third_party_firewall_firewall_policies(
    #     third_party_firewall: 'PALO_ALTO_NETWORKS_CLOUD_NGFW', # required - accepts ["PALO_ALTO_NETWORKS_CLOUD_NGFW"]
    #     next_token: 'NextToken',
    #     max_results: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListThirdPartyFirewallFirewallPoliciesOutput
    #   resp.data.third_party_firewall_firewall_policies #=> Array<ThirdPartyFirewallFirewallPolicy>
    #   resp.data.third_party_firewall_firewall_policies[0] #=> Types::ThirdPartyFirewallFirewallPolicy
    #   resp.data.third_party_firewall_firewall_policies[0].firewall_policy_id #=> String
    #   resp.data.third_party_firewall_firewall_policies[0].firewall_policy_name #=> String
    #   resp.data.next_token #=> String
    #
    def list_third_party_firewall_firewall_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListThirdPartyFirewallFirewallPoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListThirdPartyFirewallFirewallPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListThirdPartyFirewallFirewallPolicies
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::ListThirdPartyFirewallFirewallPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListThirdPartyFirewallFirewallPolicies,
        stubs: @stubs,
        params_class: Params::ListThirdPartyFirewallFirewallPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_third_party_firewall_firewall_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Firewall Manager applications list.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAppsListInput}.
    #
    # @option params [AppsListData] :apps_list
    #   <p>The details of the Firewall Manager applications list to be created.</p>
    #
    # @option params [Array<Tag>] :tag_list
    #   <p>The tags associated with the resource.</p>
    #
    # @return [Types::PutAppsListOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_apps_list(
    #     apps_list: {
    #       list_id: 'ListId',
    #       list_name: 'ListName', # required
    #       list_update_token: 'ListUpdateToken',
    #       create_time: Time.now,
    #       last_update_time: Time.now,
    #       apps_list: [
    #         {
    #           app_name: 'AppName', # required
    #           protocol: 'Protocol', # required
    #           port: 1 # required
    #         }
    #       ], # required
    #     }, # required
    #     tag_list: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAppsListOutput
    #   resp.data.apps_list #=> Types::AppsListData
    #   resp.data.apps_list.list_id #=> String
    #   resp.data.apps_list.list_name #=> String
    #   resp.data.apps_list.list_update_token #=> String
    #   resp.data.apps_list.create_time #=> Time
    #   resp.data.apps_list.last_update_time #=> Time
    #   resp.data.apps_list.apps_list #=> Array<App>
    #   resp.data.apps_list.apps_list[0] #=> Types::App
    #   resp.data.apps_list.apps_list[0].app_name #=> String
    #   resp.data.apps_list.apps_list[0].protocol #=> String
    #   resp.data.apps_list.apps_list[0].port #=> Integer
    #   resp.data.apps_list.previous_apps_list #=> Hash<String, Array<App>>
    #   resp.data.apps_list_arn #=> String
    #
    def put_apps_list(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAppsListInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAppsListInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAppsList
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::InvalidInputException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::PutAppsList
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAppsList,
        stubs: @stubs,
        params_class: Params::PutAppsListOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_apps_list
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Designates the IAM role and Amazon Simple Notification Service (SNS) topic that
    #       Firewall Manager uses to record SNS logs.</p>
    #          <p>To perform this action outside of the console, you must configure the SNS topic to allow the Firewall Manager
    #       role <code>AWSServiceRoleForFMS</code> to publish SNS logs. For more information, see
    #       <a href="https://docs.aws.amazon.com/waf/latest/developerguide/fms-api-permissions-ref.html">Firewall Manager required permissions for API actions</a> in the <i>Firewall Manager Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutNotificationChannelInput}.
    #
    # @option params [String] :sns_topic_arn
    #   <p>The Amazon Resource Name (ARN) of the SNS topic that collects notifications from
    #         Firewall Manager.</p>
    #
    # @option params [String] :sns_role_name
    #   <p>The Amazon Resource Name (ARN) of the IAM role that allows Amazon SNS to record
    #         Firewall Manager activity. </p>
    #
    # @return [Types::PutNotificationChannelOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_notification_channel(
    #     sns_topic_arn: 'SnsTopicArn', # required
    #     sns_role_name: 'SnsRoleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutNotificationChannelOutput
    #
    def put_notification_channel(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutNotificationChannelInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutNotificationChannelInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutNotificationChannel
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::PutNotificationChannel
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutNotificationChannel,
        stubs: @stubs,
        params_class: Params::PutNotificationChannelOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_notification_channel
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Firewall Manager policy.</p>
    #          <p>Firewall Manager provides the following types of policies: </p>
    #          <ul>
    #             <li>
    #                <p>An WAF policy (type WAFV2), which defines rule groups to run first in the
    #               corresponding WAF web ACL and rule groups to run last in the web ACL.</p>
    #             </li>
    #             <li>
    #                <p>An WAF Classic policy (type WAF), which defines a rule group. </p>
    #             </li>
    #             <li>
    #                <p>A Shield Advanced policy, which applies Shield Advanced protection to specified
    #           accounts and resources.</p>
    #             </li>
    #             <li>
    #                <p>A security group policy, which manages VPC security groups across your Amazon Web Services
    #           organization. </p>
    #             </li>
    #             <li>
    #                <p>An Network Firewall policy, which provides firewall rules to filter network traffic in specified
    #           Amazon VPCs.</p>
    #             </li>
    #             <li>
    #                <p>A DNS Firewall policy, which provides Route 53 Resolver DNS Firewall rules to filter DNS queries for
    #             specified VPCs.</p>
    #             </li>
    #          </ul>
    #          <p>Each policy is specific to one of the types. If you want to enforce more than one
    #       policy type across accounts, create multiple policies. You can create multiple
    #       policies for each type.</p>
    #          <p>You must be subscribed to Shield Advanced to create a Shield Advanced policy. For more
    #         information about subscribing to Shield Advanced, see
    #     <a href="https://docs.aws.amazon.com/waf/latest/DDOSAPIReference/API_CreateSubscription.html">CreateSubscription</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::PutPolicyInput}.
    #
    # @option params [Policy] :policy
    #   <p>The details of the Firewall Manager policy to be created.</p>
    #
    # @option params [Array<Tag>] :tag_list
    #   <p>The tags to add to the Amazon Web Services resource.</p>
    #
    # @return [Types::PutPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_policy(
    #     policy: {
    #       policy_id: 'PolicyId',
    #       policy_name: 'PolicyName', # required
    #       policy_update_token: 'PolicyUpdateToken',
    #       security_service_policy_data: {
    #         type: 'WAF', # required - accepts ["WAF", "WAFV2", "SHIELD_ADVANCED", "SECURITY_GROUPS_COMMON", "SECURITY_GROUPS_CONTENT_AUDIT", "SECURITY_GROUPS_USAGE_AUDIT", "NETWORK_FIREWALL", "DNS_FIREWALL", "THIRD_PARTY_FIREWALL"]
    #         managed_service_data: 'ManagedServiceData',
    #         policy_option: {
    #           network_firewall_policy: {
    #             firewall_deployment_model: 'CENTRALIZED' # accepts ["CENTRALIZED", "DISTRIBUTED"]
    #           },
    #           third_party_firewall_policy: {
    #             firewall_deployment_model: 'CENTRALIZED' # accepts ["CENTRALIZED", "DISTRIBUTED"]
    #           }
    #         }
    #       }, # required
    #       resource_type: 'ResourceType', # required
    #       resource_type_list: [
    #         'member'
    #       ],
    #       resource_tags: [
    #         {
    #           key: 'Key', # required
    #           value: 'Value'
    #         }
    #       ],
    #       exclude_resource_tags: false, # required
    #       remediation_enabled: false, # required
    #       delete_unused_fm_managed_resources: false,
    #       include_map: {
    #         'key' => [
    #           'member'
    #         ]
    #       },
    #     }, # required
    #     tag_list: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutPolicyOutput
    #   resp.data.policy #=> Types::Policy
    #   resp.data.policy.policy_id #=> String
    #   resp.data.policy.policy_name #=> String
    #   resp.data.policy.policy_update_token #=> String
    #   resp.data.policy.security_service_policy_data #=> Types::SecurityServicePolicyData
    #   resp.data.policy.security_service_policy_data.type #=> String, one of ["WAF", "WAFV2", "SHIELD_ADVANCED", "SECURITY_GROUPS_COMMON", "SECURITY_GROUPS_CONTENT_AUDIT", "SECURITY_GROUPS_USAGE_AUDIT", "NETWORK_FIREWALL", "DNS_FIREWALL", "THIRD_PARTY_FIREWALL"]
    #   resp.data.policy.security_service_policy_data.managed_service_data #=> String
    #   resp.data.policy.security_service_policy_data.policy_option #=> Types::PolicyOption
    #   resp.data.policy.security_service_policy_data.policy_option.network_firewall_policy #=> Types::NetworkFirewallPolicy
    #   resp.data.policy.security_service_policy_data.policy_option.network_firewall_policy.firewall_deployment_model #=> String, one of ["CENTRALIZED", "DISTRIBUTED"]
    #   resp.data.policy.security_service_policy_data.policy_option.third_party_firewall_policy #=> Types::ThirdPartyFirewallPolicy
    #   resp.data.policy.security_service_policy_data.policy_option.third_party_firewall_policy.firewall_deployment_model #=> String, one of ["CENTRALIZED", "DISTRIBUTED"]
    #   resp.data.policy.resource_type #=> String
    #   resp.data.policy.resource_type_list #=> Array<String>
    #   resp.data.policy.resource_type_list[0] #=> String
    #   resp.data.policy.resource_tags #=> Array<ResourceTag>
    #   resp.data.policy.resource_tags[0] #=> Types::ResourceTag
    #   resp.data.policy.resource_tags[0].key #=> String
    #   resp.data.policy.resource_tags[0].value #=> String
    #   resp.data.policy.exclude_resource_tags #=> Boolean
    #   resp.data.policy.remediation_enabled #=> Boolean
    #   resp.data.policy.delete_unused_fm_managed_resources #=> Boolean
    #   resp.data.policy.include_map #=> Hash<String, Array<String>>
    #   resp.data.policy.include_map['key'] #=> Array<String>
    #   resp.data.policy.include_map['key'][0] #=> String
    #   resp.data.policy.exclude_map #=> Hash<String, Array<String>>
    #   resp.data.policy_arn #=> String
    #
    def put_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::InvalidInputException, Errors::LimitExceededException, Errors::ResourceNotFoundException, Errors::InvalidTypeException]),
        data_parser: Parsers::PutPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutPolicy,
        stubs: @stubs,
        params_class: Params::PutPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Firewall Manager protocols list.</p>
    #
    # @param [Hash] params
    #   See {Types::PutProtocolsListInput}.
    #
    # @option params [ProtocolsListData] :protocols_list
    #   <p>The details of the Firewall Manager protocols list to be created.</p>
    #
    # @option params [Array<Tag>] :tag_list
    #   <p>The tags associated with the resource.</p>
    #
    # @return [Types::PutProtocolsListOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_protocols_list(
    #     protocols_list: {
    #       list_id: 'ListId',
    #       list_name: 'ListName', # required
    #       list_update_token: 'ListUpdateToken',
    #       create_time: Time.now,
    #       last_update_time: Time.now,
    #       protocols_list: [
    #         'member'
    #       ], # required
    #     }, # required
    #     tag_list: [
    #       {
    #         key: 'Key', # required
    #         value: 'Value' # required
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutProtocolsListOutput
    #   resp.data.protocols_list #=> Types::ProtocolsListData
    #   resp.data.protocols_list.list_id #=> String
    #   resp.data.protocols_list.list_name #=> String
    #   resp.data.protocols_list.list_update_token #=> String
    #   resp.data.protocols_list.create_time #=> Time
    #   resp.data.protocols_list.last_update_time #=> Time
    #   resp.data.protocols_list.protocols_list #=> Array<String>
    #   resp.data.protocols_list.protocols_list[0] #=> String
    #   resp.data.protocols_list.previous_protocols_list #=> Hash<String, Array<String>>
    #   resp.data.protocols_list_arn #=> String
    #
    def put_protocols_list(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutProtocolsListInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutProtocolsListInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutProtocolsList
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::InvalidInputException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::PutProtocolsList
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutProtocolsList,
        stubs: @stubs,
        params_class: Params::PutProtocolsListOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_protocols_list
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to an Amazon Web Services resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to return tags for. The Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. </p>
    #
    # @option params [Array<Tag>] :tag_list
    #   <p>The tags to add to the resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
    #     tag_list: [
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::InvalidInputException, Errors::LimitExceededException, Errors::ResourceNotFoundException]),
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

    # <p>Removes one or more tags from an Amazon Web Services resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to return tags for. The Firewall Manager resources that support tagging are policies, applications lists, and protocols lists. </p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of the tags to remove from the resource. </p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalErrorException, Errors::InvalidOperationException, Errors::InvalidInputException, Errors::ResourceNotFoundException]),
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
