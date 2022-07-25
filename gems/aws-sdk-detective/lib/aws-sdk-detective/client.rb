# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Detective
  # An API client for AmazonDetective
  # See {#initialize} for a full list of supported configuration options
  # <p>Detective uses machine learning and purpose-built visualizations to help you to
  #          analyze and investigate security issues across your Amazon Web Services (Amazon Web Services) workloads. Detective automatically extracts time-based events such
  #          as login attempts, API calls, and network traffic from CloudTrail and Amazon Virtual Private Cloud (Amazon VPC) flow logs. It also extracts findings detected by
  #             Amazon GuardDuty.</p>
  #          <p>The Detective API primarily supports the creation and management of behavior
  #          graphs. A behavior graph contains the extracted data from a set of member accounts, and is
  #          created and managed by an administrator account.</p>
  #          <p>To add a member account to the behavior graph, the administrator account sends an
  #          invitation to the account. When the account accepts the invitation, it becomes a member
  #          account in the behavior graph.</p>
  #          <p>Detective is also integrated with Organizations. The organization
  #          management account designates the Detective administrator account for the
  #          organization. That account becomes the administrator account for the organization behavior
  #          graph. The Detective administrator account can enable any organization account as
  #          a member account in the organization behavior graph. The organization accounts do not
  #          receive invitations. The Detective administrator account can also invite other
  #          accounts to the organization behavior graph.</p>
  #          <p>Every behavior graph is specific to a Region. You can only use the API to manage
  #          behavior graphs that belong to the Region that is associated with the currently selected
  #          endpoint.</p>
  #          <p>The administrator account for a behavior graph can use the Detective API to do
  #          the following:</p>
  #          <ul>
  #             <li>
  #                <p>Enable and disable Detective. Enabling Detective creates a new
  #                behavior graph.</p>
  #             </li>
  #             <li>
  #                <p>View the list of member accounts in a behavior graph.</p>
  #             </li>
  #             <li>
  #                <p>Add member accounts to a behavior graph.</p>
  #             </li>
  #             <li>
  #                <p>Remove member accounts from a behavior graph.</p>
  #             </li>
  #             <li>
  #                <p>Apply tags to a behavior graph.</p>
  #             </li>
  #          </ul>
  #          <p>The organization management account can use the Detective API to select the
  #          delegated administrator for Detective.</p>
  #          <p>The Detective administrator account for an organization can use the Detective API to do the following:</p>
  #          <ul>
  #             <li>
  #                <p>Perform all of the functions of an administrator account.</p>
  #             </li>
  #             <li>
  #                <p>Determine whether to automatically enable new organization accounts as member
  #                accounts in the organization behavior graph.</p>
  #             </li>
  #          </ul>
  #          <p>An invited member account can use the Detective API to do the following:</p>
  #          <ul>
  #             <li>
  #                <p>View the list of behavior graphs that they are invited to.</p>
  #             </li>
  #             <li>
  #                <p>Accept an invitation to contribute to a behavior graph.</p>
  #             </li>
  #             <li>
  #                <p>Decline an invitation to contribute to a behavior graph.</p>
  #             </li>
  #             <li>
  #                <p>Remove their account from a behavior graph.</p>
  #             </li>
  #          </ul>
  #          <p>All API actions are logged as CloudTrail events. See <a href="https://docs.aws.amazon.com/detective/latest/adminguide/logging-using-cloudtrail.html">Logging Detective API Calls with CloudTrail</a>.</p>
  #          <note>
  #             <p>We replaced the term "master account" with the term "administrator account." An
  #             administrator account is used to centrally manage multiple accounts. In the case of
  #                Detective, the administrator account manages the accounts in their behavior
  #             graph.</p>
  #          </note>
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
    def initialize(config = AWS::SDK::Detective::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Accepts an invitation for the member account to contribute data to a behavior graph.
    #          This operation can only be called by an invited member account. </p>
    #          <p>The request provides the ARN of behavior graph.</p>
    #          <p>The member account status in the graph must be <code>INVITED</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::AcceptInvitationInput}.
    #
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph that the member account is accepting the invitation
    #            for.</p>
    #            <p>The member account status in the behavior graph must be <code>INVITED</code>.</p>
    #
    # @return [Types::AcceptInvitationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_invitation(
    #     graph_arn: 'GraphArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptInvitationOutput
    #
    def accept_invitation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptInvitationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptInvitationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptInvitation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::AcceptInvitation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptInvitation,
        stubs: @stubs,
        params_class: Params::AcceptInvitationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_invitation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new behavior graph for the calling account, and sets that account as the
    #          administrator account. This operation is called by the account that is enabling Detective.</p>
    #          <p>Before you try to enable Detective, make sure that your account has been
    #          enrolled in Amazon GuardDuty for at least 48 hours. If you do not meet this
    #          requirement, you cannot enable Detective. If you do meet the GuardDuty
    #          prerequisite, then when you make the request to enable Detective, it checks
    #          whether your data volume is within the Detective quota. If it exceeds the quota,
    #          then you cannot enable Detective. </p>
    #          <p>The operation also enables Detective for the calling account in the currently
    #          selected Region. It returns the ARN of the new behavior graph.</p>
    #          <p>
    #             <code>CreateGraph</code> triggers a process to create the corresponding data tables for
    #          the new behavior graph.</p>
    #          <p>An account can only be the administrator account for one behavior graph within a Region.
    #          If the same account calls <code>CreateGraph</code> with the same administrator account, it
    #          always returns the same behavior graph ARN. It does not create a new behavior graph.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateGraphInput}.
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the new behavior graph. You can add up to 50 tags. For each tag,
    #            you provide the tag key and the tag value. Each tag key can contain up to 128 characters.
    #            Each tag value can contain up to 256 characters.</p>
    #
    # @return [Types::CreateGraphOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_graph(
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGraphOutput
    #   resp.data.graph_arn #=> String
    #
    def create_graph(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGraphInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGraphInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGraph
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::ConflictException]),
        data_parser: Parsers::CreateGraph
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGraph,
        stubs: @stubs,
        params_class: Params::CreateGraphOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_graph
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>
    #             <code>CreateMembers</code> is used to send invitations to accounts. For the organization
    #          behavior graph, the Detective administrator account uses
    #             <code>CreateMembers</code> to enable organization accounts as member accounts.</p>
    #          <p>For invited accounts, <code>CreateMembers</code> sends a request to invite the specified
    #             Amazon Web Services accounts to be member accounts in the behavior graph. This operation
    #          can only be called by the administrator account for a behavior graph. </p>
    #          <p>
    #             <code>CreateMembers</code> verifies the accounts and then invites the verified accounts.
    #          The administrator can optionally specify to not send invitation emails to the member
    #          accounts. This would be used when the administrator manages their member accounts
    #          centrally.</p>
    #          <p>For organization accounts in the organization behavior graph, <code>CreateMembers</code>
    #          attempts to enable the accounts. The organization accounts do not receive
    #          invitations.</p>
    #          <p>The request provides the behavior graph ARN and the list of accounts to invite or to
    #          enable.</p>
    #          <p>The response separates the requested accounts into two lists:</p>
    #          <ul>
    #             <li>
    #                <p>The accounts that <code>CreateMembers</code> was able to process. For invited
    #                accounts, includes member accounts that are being verified, that have passed
    #                verification and are to be invited, and that have failed verification. For
    #                organization accounts in the organization behavior graph, includes accounts that can
    #                be enabled and that cannot be enabled.</p>
    #             </li>
    #             <li>
    #                <p>The accounts that <code>CreateMembers</code> was unable to process. This list
    #                includes accounts that were already invited to be member accounts in the behavior
    #                graph.</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::CreateMembersInput}.
    #
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph.</p>
    #
    # @option params [String] :message
    #   <p>Customized message text to include in the invitation email message to the invited member
    #            accounts.</p>
    #
    # @option params [Boolean] :disable_email_notification
    #   <p>if set to <code>true</code>, then the invited accounts do not receive email
    #            notifications. By default, this is set to <code>false</code>, and the invited accounts
    #            receive email notifications.</p>
    #            <p>Organization accounts in the organization behavior graph do not receive email
    #            notifications.</p>
    #
    # @option params [Array<Account>] :accounts
    #   <p>The list of Amazon Web Services accounts to invite or to enable. You can invite or enable
    #            up to 50 accounts at a time. For each invited account, the account list contains the
    #            account identifier and the Amazon Web Services account root user email address. For
    #            organization accounts in the organization behavior graph, the email address is not
    #            required.</p>
    #
    # @return [Types::CreateMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_members(
    #     graph_arn: 'GraphArn', # required
    #     message: 'Message',
    #     disable_email_notification: false,
    #     accounts: [
    #       {
    #         account_id: 'AccountId', # required
    #         email_address: 'EmailAddress' # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMembersOutput
    #   resp.data.members #=> Array<MemberDetail>
    #   resp.data.members[0] #=> Types::MemberDetail
    #   resp.data.members[0].account_id #=> String
    #   resp.data.members[0].email_address #=> String
    #   resp.data.members[0].graph_arn #=> String
    #   resp.data.members[0].master_id #=> String
    #   resp.data.members[0].administrator_id #=> String
    #   resp.data.members[0].status #=> String, one of ["INVITED", "VERIFICATION_IN_PROGRESS", "VERIFICATION_FAILED", "ENABLED", "ACCEPTED_BUT_DISABLED"]
    #   resp.data.members[0].disabled_reason #=> String, one of ["VOLUME_TOO_HIGH", "VOLUME_UNKNOWN"]
    #   resp.data.members[0].invited_time #=> Time
    #   resp.data.members[0].updated_time #=> Time
    #   resp.data.members[0].volume_usage_in_bytes #=> Integer
    #   resp.data.members[0].volume_usage_updated_time #=> Time
    #   resp.data.members[0].percent_of_graph_utilization #=> Float
    #   resp.data.members[0].percent_of_graph_utilization_updated_time #=> Time
    #   resp.data.members[0].invitation_type #=> String, one of ["INVITATION", "ORGANIZATION"]
    #   resp.data.unprocessed_accounts #=> Array<UnprocessedAccount>
    #   resp.data.unprocessed_accounts[0] #=> Types::UnprocessedAccount
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].reason #=> String
    #
    def create_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMembersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMembers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::CreateMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMembers,
        stubs: @stubs,
        params_class: Params::CreateMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the specified behavior graph and queues it to be deleted. This operation
    #          removes the behavior graph from each member account's list of behavior graphs.</p>
    #          <p>
    #             <code>DeleteGraph</code> can only be called by the administrator account for a behavior
    #          graph.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGraphInput}.
    #
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph to disable.</p>
    #
    # @return [Types::DeleteGraphOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_graph(
    #     graph_arn: 'GraphArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGraphOutput
    #
    def delete_graph(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGraphInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGraphInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGraph
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteGraph
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGraph,
        stubs: @stubs,
        params_class: Params::DeleteGraphOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_graph
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified member accounts from the behavior graph. The removed accounts no
    #          longer contribute data to the behavior graph. This operation can only be called by the
    #          administrator account for the behavior graph.</p>
    #          <p>For invited accounts, the removed accounts are deleted from the list of accounts in the
    #          behavior graph. To restore the account, the administrator account must send another
    #          invitation.</p>
    #          <p>For organization accounts in the organization behavior graph, the Detective
    #          administrator account can always enable the organization account again. Organization
    #          accounts that are not enabled as member accounts are not included in the
    #             <code>ListMembers</code> results for the organization behavior graph.</p>
    #          <p>An administrator account cannot use <code>DeleteMembers</code> to remove their own
    #          account from the behavior graph. To disable a behavior graph, the administrator account
    #          uses the <code>DeleteGraph</code> API method.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMembersInput}.
    #
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph to remove members from.</p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>The list of Amazon Web Services account identifiers for the member accounts to remove
    #            from the behavior graph. You can remove up to 50 member accounts at a time.</p>
    #
    # @return [Types::DeleteMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_members(
    #     graph_arn: 'GraphArn', # required
    #     account_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMembersOutput
    #   resp.data.account_ids #=> Array<String>
    #   resp.data.account_ids[0] #=> String
    #   resp.data.unprocessed_accounts #=> Array<UnprocessedAccount>
    #   resp.data.unprocessed_accounts[0] #=> Types::UnprocessedAccount
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].reason #=> String
    #
    def delete_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMembersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMembers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DeleteMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMembers,
        stubs: @stubs,
        params_class: Params::DeleteMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the configuration for the organization behavior graph.
    #          Currently indicates whether to automatically enable new organization accounts as member
    #          accounts.</p>
    #          <p>Can only be called by the Detective administrator account for the organization. </p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOrganizationConfigurationInput}.
    #
    # @option params [String] :graph_arn
    #   <p>The ARN of the organization behavior graph.</p>
    #
    # @return [Types::DescribeOrganizationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization_configuration(
    #     graph_arn: 'GraphArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOrganizationConfigurationOutput
    #   resp.data.auto_enable #=> Boolean
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalServerException, Errors::ValidationException]),
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

    # <p>Removes the Detective administrator account for the organization in the current
    #          Region. Deletes the behavior graph for that account.</p>
    #          <p>Can only be called by the organization management account. Before you can select a
    #          different Detective administrator account, you must remove the Detective
    #          administrator account in all Regions.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableOrganizationAdminAccountInput}.
    #
    # @return [Types::DisableOrganizationAdminAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_organization_admin_account()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableOrganizationAdminAccountOutput
    #
    def disable_organization_admin_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableOrganizationAdminAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableOrganizationAdminAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableOrganizationAdminAccount
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::DisableOrganizationAdminAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableOrganizationAdminAccount,
        stubs: @stubs,
        params_class: Params::DisableOrganizationAdminAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_organization_admin_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the member account from the specified behavior graph. This operation can only be
    #          called by an invited member account that has the <code>ENABLED</code> status.</p>
    #          <p>
    #             <code>DisassociateMembership</code> cannot be called by an organization account in the
    #          organization behavior graph. For the organization behavior graph, the Detective
    #          administrator account determines which organization accounts to enable or disable as member
    #          accounts.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateMembershipInput}.
    #
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph to remove the member account from.</p>
    #            <p>The member account's member status in the behavior graph must be
    #            <code>ENABLED</code>.</p>
    #
    # @return [Types::DisassociateMembershipOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_membership(
    #     graph_arn: 'GraphArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateMembershipOutput
    #
    def disassociate_membership(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateMembershipInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateMembershipInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateMembership
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::DisassociateMembership
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateMembership,
        stubs: @stubs,
        params_class: Params::DisassociateMembershipOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_membership
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Designates the Detective administrator account for the organization in the
    #          current Region.</p>
    #          <p>If the account does not have Detective enabled, then enables Detective
    #          for that account and creates a new behavior graph.</p>
    #          <p>Can only be called by the organization management account.</p>
    #          <p>The Detective administrator account for an organization must be the same in all
    #          Regions. If you already designated a Detective administrator account in another
    #          Region, then you must designate the same account.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableOrganizationAdminAccountInput}.
    #
    # @option params [String] :account_id
    #   <p>The Amazon Web Services account identifier of the account to designate as the Detective administrator account for the organization.</p>
    #
    # @return [Types::EnableOrganizationAdminAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_organization_admin_account(
    #     account_id: 'AccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableOrganizationAdminAccountOutput
    #
    def enable_organization_admin_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableOrganizationAdminAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableOrganizationAdminAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableOrganizationAdminAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::EnableOrganizationAdminAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableOrganizationAdminAccount,
        stubs: @stubs,
        params_class: Params::EnableOrganizationAdminAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_organization_admin_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the membership details for specified member accounts for a behavior
    #          graph.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMembersInput}.
    #
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph for which to request the member details.</p>
    #
    # @option params [Array<String>] :account_ids
    #   <p>The list of Amazon Web Services account identifiers for the member account for which to
    #            return member details. You can request details for up to 50 member accounts at a
    #            time.</p>
    #            <p>You cannot use <code>GetMembers</code> to retrieve information about member accounts
    #            that were removed from the behavior graph.</p>
    #
    # @return [Types::GetMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_members(
    #     graph_arn: 'GraphArn', # required
    #     account_ids: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMembersOutput
    #   resp.data.member_details #=> Array<MemberDetail>
    #   resp.data.member_details[0] #=> Types::MemberDetail
    #   resp.data.member_details[0].account_id #=> String
    #   resp.data.member_details[0].email_address #=> String
    #   resp.data.member_details[0].graph_arn #=> String
    #   resp.data.member_details[0].master_id #=> String
    #   resp.data.member_details[0].administrator_id #=> String
    #   resp.data.member_details[0].status #=> String, one of ["INVITED", "VERIFICATION_IN_PROGRESS", "VERIFICATION_FAILED", "ENABLED", "ACCEPTED_BUT_DISABLED"]
    #   resp.data.member_details[0].disabled_reason #=> String, one of ["VOLUME_TOO_HIGH", "VOLUME_UNKNOWN"]
    #   resp.data.member_details[0].invited_time #=> Time
    #   resp.data.member_details[0].updated_time #=> Time
    #   resp.data.member_details[0].volume_usage_in_bytes #=> Integer
    #   resp.data.member_details[0].volume_usage_updated_time #=> Time
    #   resp.data.member_details[0].percent_of_graph_utilization #=> Float
    #   resp.data.member_details[0].percent_of_graph_utilization_updated_time #=> Time
    #   resp.data.member_details[0].invitation_type #=> String, one of ["INVITATION", "ORGANIZATION"]
    #   resp.data.unprocessed_accounts #=> Array<UnprocessedAccount>
    #   resp.data.unprocessed_accounts[0] #=> Types::UnprocessedAccount
    #   resp.data.unprocessed_accounts[0].account_id #=> String
    #   resp.data.unprocessed_accounts[0].reason #=> String
    #
    def get_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMembersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMembers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::GetMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMembers,
        stubs: @stubs,
        params_class: Params::GetMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the list of behavior graphs that the calling account is an administrator account
    #          of. This operation can only be called by an administrator account.</p>
    #          <p>Because an account can currently only be the administrator of one behavior graph within
    #          a Region, the results always contain a single behavior graph.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGraphsInput}.
    #
    # @option params [String] :next_token
    #   <p>For requests to get the next page of results, the pagination token that was returned
    #            with the previous set of results. The initial request does not include a pagination
    #            token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of graphs to return at a time. The total must be less than the
    #            overall limit on the number of results to return, which is currently 200.</p>
    #
    # @return [Types::ListGraphsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_graphs(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGraphsOutput
    #   resp.data.graph_list #=> Array<Graph>
    #   resp.data.graph_list[0] #=> Types::Graph
    #   resp.data.graph_list[0].arn #=> String
    #   resp.data.graph_list[0].created_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_graphs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGraphsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGraphsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGraphs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListGraphs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGraphs,
        stubs: @stubs,
        params_class: Params::ListGraphsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_graphs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the list of open and accepted behavior graph invitations for the member
    #          account. This operation can only be called by an invited member account.</p>
    #          <p>Open invitations are invitations that the member account has not responded to.</p>
    #          <p>The results do not include behavior graphs for which the member account declined the
    #          invitation. The results also do not include behavior graphs that the member account
    #          resigned from or was removed from.</p>
    #
    # @param [Hash] params
    #   See {Types::ListInvitationsInput}.
    #
    # @option params [String] :next_token
    #   <p>For requests to retrieve the next page of results, the pagination token that was
    #            returned with the previous page of results. The initial request does not include a
    #            pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of behavior graph invitations to return in the response. The total
    #            must be less than the overall limit on the number of results to return, which is currently
    #            200.</p>
    #
    # @return [Types::ListInvitationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_invitations(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInvitationsOutput
    #   resp.data.invitations #=> Array<MemberDetail>
    #   resp.data.invitations[0] #=> Types::MemberDetail
    #   resp.data.invitations[0].account_id #=> String
    #   resp.data.invitations[0].email_address #=> String
    #   resp.data.invitations[0].graph_arn #=> String
    #   resp.data.invitations[0].master_id #=> String
    #   resp.data.invitations[0].administrator_id #=> String
    #   resp.data.invitations[0].status #=> String, one of ["INVITED", "VERIFICATION_IN_PROGRESS", "VERIFICATION_FAILED", "ENABLED", "ACCEPTED_BUT_DISABLED"]
    #   resp.data.invitations[0].disabled_reason #=> String, one of ["VOLUME_TOO_HIGH", "VOLUME_UNKNOWN"]
    #   resp.data.invitations[0].invited_time #=> Time
    #   resp.data.invitations[0].updated_time #=> Time
    #   resp.data.invitations[0].volume_usage_in_bytes #=> Integer
    #   resp.data.invitations[0].volume_usage_updated_time #=> Time
    #   resp.data.invitations[0].percent_of_graph_utilization #=> Float
    #   resp.data.invitations[0].percent_of_graph_utilization_updated_time #=> Time
    #   resp.data.invitations[0].invitation_type #=> String, one of ["INVITATION", "ORGANIZATION"]
    #   resp.data.next_token #=> String
    #
    def list_invitations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInvitationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInvitationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInvitations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListInvitations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInvitations,
        stubs: @stubs,
        params_class: Params::ListInvitationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_invitations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the list of member accounts for a behavior graph.</p>
    #          <p>For invited accounts, the results do not include member accounts that were removed from
    #          the behavior graph.</p>
    #          <p>For the organization behavior graph, the results do not include organization accounts
    #          that the Detective administrator account has not enabled as member
    #          accounts.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMembersInput}.
    #
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph for which to retrieve the list of member accounts.</p>
    #
    # @option params [String] :next_token
    #   <p>For requests to retrieve the next page of member account results, the pagination token
    #            that was returned with the previous page of results. The initial request does not include a
    #            pagination token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of member accounts to include in the response. The total must be less
    #            than the overall limit on the number of results to return, which is currently 200.</p>
    #
    # @return [Types::ListMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_members(
    #     graph_arn: 'GraphArn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMembersOutput
    #   resp.data.member_details #=> Array<MemberDetail>
    #   resp.data.member_details[0] #=> Types::MemberDetail
    #   resp.data.member_details[0].account_id #=> String
    #   resp.data.member_details[0].email_address #=> String
    #   resp.data.member_details[0].graph_arn #=> String
    #   resp.data.member_details[0].master_id #=> String
    #   resp.data.member_details[0].administrator_id #=> String
    #   resp.data.member_details[0].status #=> String, one of ["INVITED", "VERIFICATION_IN_PROGRESS", "VERIFICATION_FAILED", "ENABLED", "ACCEPTED_BUT_DISABLED"]
    #   resp.data.member_details[0].disabled_reason #=> String, one of ["VOLUME_TOO_HIGH", "VOLUME_UNKNOWN"]
    #   resp.data.member_details[0].invited_time #=> Time
    #   resp.data.member_details[0].updated_time #=> Time
    #   resp.data.member_details[0].volume_usage_in_bytes #=> Integer
    #   resp.data.member_details[0].volume_usage_updated_time #=> Time
    #   resp.data.member_details[0].percent_of_graph_utilization #=> Float
    #   resp.data.member_details[0].percent_of_graph_utilization_updated_time #=> Time
    #   resp.data.member_details[0].invitation_type #=> String, one of ["INVITATION", "ORGANIZATION"]
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Returns information about the Detective administrator account for an
    #          organization. Can only be called by the organization management account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOrganizationAdminAccountsInput}.
    #
    # @option params [String] :next_token
    #   <p>For requests to get the next page of results, the pagination token that was returned
    #            with the previous set of results. The initial request does not include a pagination
    #            token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return.</p>
    #
    # @return [Types::ListOrganizationAdminAccountsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organization_admin_accounts(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOrganizationAdminAccountsOutput
    #   resp.data.administrators #=> Array<Administrator>
    #   resp.data.administrators[0] #=> Types::Administrator
    #   resp.data.administrators[0].account_id #=> String
    #   resp.data.administrators[0].graph_arn #=> String
    #   resp.data.administrators[0].delegation_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_organization_admin_accounts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOrganizationAdminAccountsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOrganizationAdminAccountsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOrganizationAdminAccounts
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalServerException, Errors::ValidationException]),
        data_parser: Parsers::ListOrganizationAdminAccounts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOrganizationAdminAccounts,
        stubs: @stubs,
        params_class: Params::ListOrganizationAdminAccountsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_organization_admin_accounts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the tag values that are assigned to a behavior graph.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the behavior graph for which to retrieve the tag values.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Rejects an invitation to contribute the account data to a behavior graph. This operation
    #          must be called by an invited member account that has the <code>INVITED</code>
    #          status.</p>
    #          <p>
    #             <code>RejectInvitation</code> cannot be called by an organization account in the
    #          organization behavior graph. In the organization behavior graph, organization accounts do
    #          not receive an invitation.</p>
    #
    # @param [Hash] params
    #   See {Types::RejectInvitationInput}.
    #
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph to reject the invitation to.</p>
    #            <p>The member account's current member status in the behavior graph must be
    #               <code>INVITED</code>.</p>
    #
    # @return [Types::RejectInvitationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_invitation(
    #     graph_arn: 'GraphArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RejectInvitationOutput
    #
    def reject_invitation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RejectInvitationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RejectInvitationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RejectInvitation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::RejectInvitation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RejectInvitation,
        stubs: @stubs,
        params_class: Params::RejectInvitationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reject_invitation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends a request to enable data ingest for a member account that has a status of
    #             <code>ACCEPTED_BUT_DISABLED</code>.</p>
    #          <p>For valid member accounts, the status is updated as follows.</p>
    #          <ul>
    #             <li>
    #                <p>If Detective enabled the member account, then the new status is
    #                   <code>ENABLED</code>.</p>
    #             </li>
    #             <li>
    #                <p>If Detective cannot enable the member account, the status remains
    #                   <code>ACCEPTED_BUT_DISABLED</code>. </p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::StartMonitoringMemberInput}.
    #
    # @option params [String] :graph_arn
    #   <p>The ARN of the behavior graph.</p>
    #
    # @option params [String] :account_id
    #   <p>The account ID of the member account to try to enable.</p>
    #            <p>The account must be an invited member account with a status of
    #               <code>ACCEPTED_BUT_DISABLED</code>. </p>
    #
    # @return [Types::StartMonitoringMemberOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_monitoring_member(
    #     graph_arn: 'GraphArn', # required
    #     account_id: 'AccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartMonitoringMemberOutput
    #
    def start_monitoring_member(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartMonitoringMemberInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartMonitoringMemberInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartMonitoringMember
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InternalServerException, Errors::ServiceQuotaExceededException, Errors::ConflictException, Errors::ValidationException, Errors::ResourceNotFoundException]),
        data_parser: Parsers::StartMonitoringMember
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartMonitoringMember,
        stubs: @stubs,
        params_class: Params::StartMonitoringMemberOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_monitoring_member
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies tag values to a behavior graph.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the behavior graph to assign the tags to.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The tags to assign to the behavior graph. You can add up to 50 tags. For each tag, you
    #            provide the tag key and the tag value. Each tag key can contain up to 128 characters. Each
    #            tag value can contain up to 256 characters.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'ResourceArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Removes tags from a behavior graph.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the behavior graph to remove the tags from.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys of the tags to remove from the behavior graph. You can remove up to 50 tags
    #            at a time.</p>
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::InternalServerException, Errors::ValidationException, Errors::ResourceNotFoundException]),
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

    # <p>Updates the configuration for the Organizations integration in the current Region.
    #          Can only be called by the Detective administrator account for the
    #          organization.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateOrganizationConfigurationInput}.
    #
    # @option params [String] :graph_arn
    #   <p>The ARN of the organization behavior graph.</p>
    #
    # @option params [Boolean] :auto_enable
    #   <p>Indicates whether to automatically enable new organization accounts as member accounts
    #            in the organization behavior graph.</p>
    #
    # @return [Types::UpdateOrganizationConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_organization_configuration(
    #     graph_arn: 'GraphArn', # required
    #     auto_enable: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateOrganizationConfigurationOutput
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyRequestsException, Errors::InternalServerException, Errors::ValidationException]),
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
