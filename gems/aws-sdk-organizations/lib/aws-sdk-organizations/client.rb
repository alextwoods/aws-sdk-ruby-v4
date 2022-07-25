# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::Organizations
  # An API client for AWSOrganizationsV20161128
  # See {#initialize} for a full list of supported configuration options
  # <p>Organizations is a web service that enables you to consolidate your multiple
  #             Amazon Web Services accounts into an <i>organization</i> and centrally manage your
  #             accounts and their resources.</p>
  #         <p>This guide provides descriptions of the Organizations operations. For more
  #             information about using this service, see the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html">Organizations User Guide</a>.</p>
  #         <p>
  #             <b>Support and feedback for Organizations</b>
  #          </p>
  #         <p>We welcome your feedback. Send your comments to <a href="mailto:feedback-awsorganizations@amazon.com">feedback-awsorganizations@amazon.com</a> or post your feedback and questions in
  #             the <a href="http://forums.aws.amazon.com/forum.jspa?forumID=219">Organizations support forum</a>. For
  #             more information about the Amazon Web Services support forums, see <a href="http://forums.aws.amazon.com/help.jspa">Forums Help</a>.</p>
  #         <p>
  #             <b>Endpoint to call When using the CLI or the Amazon Web Services
  #                 SDK</b>
  #          </p>
  #         <p>For the current release of Organizations, specify the <code>us-east-1</code> region
  #             for all Amazon Web Services API and CLI calls made from the commercial Amazon Web Services Regions outside of
  #             China. If calling from one of the Amazon Web Services Regions in China, then specify
  #                 <code>cn-northwest-1</code>. You can do this in the CLI by using these parameters
  #             and commands:</p>
  #         <ul>
  #             <li>
  #                 <p>Use the following parameter with each command to specify both the endpoint and
  #                     its region:</p>
  #                 <p>
  #                   <code>--endpoint-url https://organizations.us-east-1.amazonaws.com</code>
  #                     <i>(from commercial Amazon Web Services Regions outside of China)</i>
  #                </p>
  #                 <p>or</p>
  #                 <p>
  #                   <code>--endpoint-url
  #                         https://organizations.cn-northwest-1.amazonaws.com.cn</code>
  #                     <i>(from Amazon Web Services Regions in China)</i>
  #                </p>
  #             </li>
  #             <li>
  #                 <p>Use the default endpoint, but configure your default region with this
  #                     command:</p>
  #                 <p>
  #                   <code>aws configure set default.region us-east-1</code>
  #                     <i>(from commercial Amazon Web Services Regions outside of China)</i>
  #                </p>
  #                 <p>or</p>
  #                 <p>
  #                   <code>aws configure set default.region cn-northwest-1</code>
  #                     <i>(from Amazon Web Services Regions in China)</i>
  #                </p>
  #             </li>
  #             <li>
  #                 <p>Use the following parameter with each command to specify the endpoint:</p>
  #                 <p>
  #                   <code>--region us-east-1</code>
  #                     <i>(from commercial Amazon Web Services Regions outside of China)</i>
  #                </p>
  #                 <p>or</p>
  #                 <p>
  #                   <code>--region cn-northwest-1</code>
  #                     <i>(from Amazon Web Services Regions in China)</i>
  #                </p>
  #             </li>
  #          </ul>
  #         <p>
  #             <b>Recording API Requests</b>
  #         </p>
  #         <p>Organizations supports CloudTrail, a service that records Amazon Web Services API calls for your
  #             Amazon Web Services account and delivers log files to an Amazon S3 bucket. By using information collected
  #             by CloudTrail, you can determine which requests the Organizations service received, who made the
  #             request and when, and so on. For more about Organizations and its support for CloudTrail, see
  #                 <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_incident-response.html#orgs_cloudtrail-integration">Logging
  #                 Organizations Events with CloudTrail</a> in the <i>Organizations User Guide</i>.
  #             To learn more about CloudTrail, including how to turn it on and find your log files, see the
  #                 <a href="https://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html">CloudTrail User Guide</a>.</p>
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
    def initialize(config = AWS::SDK::Organizations::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Sends a response to the originator of a handshake agreeing to the action proposed by
    #             the handshake request.</p>
    #         <p>This operation can be called only by the following principals when they also have the
    #             relevant IAM permissions:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <b>Invitation to join</b> or <b>Approve all features request</b> handshakes: only a principal from
    #                     the member account.</p>
    #                 <p>The user who calls the API for an invitation to join must have the
    #                         <code>organizations:AcceptHandshake</code> permission. If you enabled all
    #                     features in the organization, the user must also have the
    #                         <code>iam:CreateServiceLinkedRole</code> permission so that Organizations can
    #                     create the required service-linked role named <code>AWSServiceRoleForOrganizations</code>. For
    #                     more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integration_services.html#orgs_integration_service-linked-roles">Organizations and Service-Linked Roles</a> in the
    #                         <i>Organizations User Guide</i>.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Enable all features final confirmation</b>
    #                     handshake: only a principal from the management account.</p>
    #                 <p>For more information about invitations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_invites.html">Inviting an
    #                         Amazon Web Services account to join your organization</a> in the
    #                         <i>Organizations User Guide.</i> For more information about requests to
    #                     enable all features in the organization, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling all features in your organization</a> in
    #                     the <i>Organizations User Guide.</i>
    #                </p>
    #             </li>
    #          </ul>
    #         <p>After you accept a handshake, it continues to appear in the results of relevant APIs
    #             for only 30 days. After that, it's deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::AcceptHandshakeInput}.
    #
    # @option params [String] :handshake_id
    #   <p>The unique identifier (ID) of the handshake that you want to accept.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-"
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    #
    # @return [Types::AcceptHandshakeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_handshake(
    #     handshake_id: 'HandshakeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptHandshakeOutput
    #   resp.data.handshake #=> Types::Handshake
    #   resp.data.handshake.id #=> String
    #   resp.data.handshake.arn #=> String
    #   resp.data.handshake.parties #=> Array<HandshakeParty>
    #   resp.data.handshake.parties[0] #=> Types::HandshakeParty
    #   resp.data.handshake.parties[0].id #=> String
    #   resp.data.handshake.parties[0].type #=> String, one of ["ACCOUNT", "ORGANIZATION", "EMAIL"]
    #   resp.data.handshake.state #=> String, one of ["REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"]
    #   resp.data.handshake.requested_timestamp #=> Time
    #   resp.data.handshake.expiration_timestamp #=> Time
    #   resp.data.handshake.action #=> String, one of ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"]
    #   resp.data.handshake.resources #=> Array<HandshakeResource>
    #   resp.data.handshake.resources[0] #=> Types::HandshakeResource
    #   resp.data.handshake.resources[0].value #=> String
    #   resp.data.handshake.resources[0].type #=> String, one of ["ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"]
    #   resp.data.handshake.resources[0].resources #=> Array<HandshakeResource>
    #
    def accept_handshake(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptHandshakeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptHandshakeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptHandshake
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::HandshakeNotFoundException, Errors::AccessDeniedForDependencyException, Errors::HandshakeConstraintViolationException, Errors::HandshakeAlreadyInStateException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::InvalidHandshakeTransitionException]),
        data_parser: Parsers::AcceptHandshake
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptHandshake,
        stubs: @stubs,
        params_class: Params::AcceptHandshakeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_handshake
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches a policy to a root, an organizational unit (OU), or an individual account.
    #             How the policy affects accounts depends on the type of policy. Refer to the
    #                 <i>Organizations User Guide</i> for information about each policy type:</p>
    #         <ul>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">SERVICE_CONTROL_POLICY</a>
    #                </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                </p>
    #             </li>
    #          </ul>
    #         <p>This operation can be called only from the organization's management account.</p>
    #
    # @param [Hash] params
    #   See {Types::AttachPolicyInput}.
    #
    # @option params [String] :policy_id
    #   <p>The unique identifier (ID) of the policy that you want to attach to the target. You
    #               can get the ID for the policy by calling the <a>ListPolicies</a>
    #               operation.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #
    # @option params [String] :target_id
    #   <p>The unique identifier (ID) of the root, OU, or account that you want to attach the
    #               policy to. You can get the ID by calling the <a>ListRoots</a>, <a>ListOrganizationalUnitsForParent</a>, or <a>ListAccounts</a>
    #               operations.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Account</b> - A string that consists of exactly 12 digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::AttachPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_policy(
    #     policy_id: 'PolicyId', # required
    #     target_id: 'TargetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AttachPolicyOutput
    #
    def attach_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AttachPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AttachPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AttachPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicatePolicyAttachmentException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::ConcurrentModificationException, Errors::PolicyTypeNotEnabledException, Errors::TargetNotFoundException, Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::PolicyChangesInProgressException, Errors::AccessDeniedException, Errors::PolicyNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::AttachPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AttachPolicy,
        stubs: @stubs,
        params_class: Params::AttachPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :attach_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels a handshake. Canceling a handshake sets the handshake state to
    #                 <code>CANCELED</code>.</p>
    #         <p>This operation can be called only from the account that originated the handshake. The recipient of the handshake can't cancel it, but can use <a>DeclineHandshake</a> instead. After a handshake is canceled, the recipient
    #             can no longer respond to that handshake.</p>
    #         <p>After you cancel a handshake, it continues to appear in the results of relevant APIs
    #             for only 30 days. After that, it's deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::CancelHandshakeInput}.
    #
    # @option params [String] :handshake_id
    #   <p>The unique identifier (ID) of the handshake that you want to cancel. You can get the
    #               ID from the <a>ListHandshakesForOrganization</a> operation.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-"
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    #
    # @return [Types::CancelHandshakeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_handshake(
    #     handshake_id: 'HandshakeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelHandshakeOutput
    #   resp.data.handshake #=> Types::Handshake
    #   resp.data.handshake.id #=> String
    #   resp.data.handshake.arn #=> String
    #   resp.data.handshake.parties #=> Array<HandshakeParty>
    #   resp.data.handshake.parties[0] #=> Types::HandshakeParty
    #   resp.data.handshake.parties[0].id #=> String
    #   resp.data.handshake.parties[0].type #=> String, one of ["ACCOUNT", "ORGANIZATION", "EMAIL"]
    #   resp.data.handshake.state #=> String, one of ["REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"]
    #   resp.data.handshake.requested_timestamp #=> Time
    #   resp.data.handshake.expiration_timestamp #=> Time
    #   resp.data.handshake.action #=> String, one of ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"]
    #   resp.data.handshake.resources #=> Array<HandshakeResource>
    #   resp.data.handshake.resources[0] #=> Types::HandshakeResource
    #   resp.data.handshake.resources[0].value #=> String
    #   resp.data.handshake.resources[0].type #=> String, one of ["ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"]
    #   resp.data.handshake.resources[0].resources #=> Array<HandshakeResource>
    #
    def cancel_handshake(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelHandshakeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelHandshakeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelHandshake
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::HandshakeNotFoundException, Errors::HandshakeAlreadyInStateException, Errors::InvalidInputException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::InvalidHandshakeTransitionException]),
        data_parser: Parsers::CancelHandshake
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelHandshake,
        stubs: @stubs,
        params_class: Params::CancelHandshakeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_handshake
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Closes an Amazon Web Services member account within an organization. You can't close the management
    #             account with this API. This is an asynchronous request that Amazon Web Services performs in the
    #             background. Because <code>CloseAccount</code> operates asynchronously, it can return a
    #             successful completion message even though account closure might still be in progress.
    #             You need to wait a few minutes before the account is fully closed. To check the status
    #             of the request, do one of the following:</p>
    #         <ul>
    #             <li>
    #                 <p>Use the <code>AccountId</code> that you sent in the <code>CloseAccount</code>
    #                     request to provide as a parameter to the <a>DescribeAccount</a>
    #                     operation. </p>
    #                 <p>While the close account request is in progress, Account status will indicate
    #                     PENDING_CLOSURE. When the close account request completes, the status will
    #                     change to SUSPENDED. </p>
    #             </li>
    #             <li>
    #                 <p>Check the CloudTrail log for the <code>CloseAccountResult</code> event that gets
    #                     published after the account closes successfully. For information on using CloudTrail
    #                     with Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_security_incident-response.html#orgs_cloudtrail-integration">Logging and monitoring in Organizations</a> in the
    #                         <i>Organizations User Guide.</i>
    #                </p>
    #             </li>
    #          </ul>
    #         <note>
    #             <ul>
    #                <li>
    #                     <p>You can only close 10% of active member accounts within a rolling 30 day
    #                         period. This quota is not bound by a calendar month, but starts when you
    #                         close an account. Within 30 days of that initial account closure, you can't
    #                         exceed the 10% account closure limit.</p>
    #                 </li>
    #                <li>
    #                     <p>To reinstate a closed account, contact Amazon Web Services Support within the 90-day
    #                         grace period while the account is in SUSPENDED status. </p>
    #                 </li>
    #                <li>
    #                     <p>If the Amazon Web Services account you attempt to close is linked to an Amazon Web Services GovCloud (US)
    #                         account, the <code>CloseAccount</code> request will close both accounts. To
    #                         learn important pre-closure details, see <a href="https://docs.aws.amazon.com/govcloud-us/latest/UserGuide/Closing-govcloud-account.html">
    #                             Closing an Amazon Web Services GovCloud (US) account</a> in the <i>
    #                             Amazon Web Services GovCloud User Guide</i>.</p>
    #                 </li>
    #             </ul>
    #         </note>
    #         <p>For more information about closing accounts, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html">Closing an
    #                 Amazon Web Services account</a> in the <i>Organizations User Guide.</i>
    #          </p>
    #
    # @param [Hash] params
    #   See {Types::CloseAccountInput}.
    #
    # @option params [String] :account_id
    #   <p>Retrieves the Amazon Web Services account Id for the current <code>CloseAccount</code> API request.
    #           </p>
    #
    # @return [Types::CloseAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.close_account(
    #     account_id: 'AccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CloseAccountOutput
    #
    def close_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CloseAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CloseAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CloseAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccountAlreadyClosedException, Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::AccountNotFoundException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::ConflictException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CloseAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CloseAccount,
        stubs: @stubs,
        params_class: Params::CloseAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :close_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon Web Services account that is automatically a member of the organization whose
    #             credentials made the request. This is an asynchronous request that Amazon Web Services performs in the
    #             background. Because <code>CreateAccount</code> operates asynchronously, it can return a
    #             successful completion message even though account initialization might still be in
    #             progress. You might need to wait a few minutes before you can successfully access the
    #             account. To check the status of the request, do one of the following:</p>
    #         <ul>
    #             <li>
    #                 <p>Use the <code>Id</code> member of the <code>CreateAccountStatus</code>
    #                     response element from this operation to provide as a parameter to the <a>DescribeCreateAccountStatus</a> operation.</p>
    #             </li>
    #             <li>
    #                 <p>Check the CloudTrail log for the <code>CreateAccountResult</code> event. For
    #                     information on using CloudTrail with Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_security_incident-response.html#orgs_cloudtrail-integration">Logging and monitoring in Organizations</a> in the
    #                         <i>Organizations User Guide.</i>
    #                </p>
    #             </li>
    #          </ul>
    #         <p>The user who calls the API to create an account must have the
    #                 <code>organizations:CreateAccount</code> permission. If you enabled all features in
    #             the organization, Organizations creates the required service-linked role named
    #                 <code>AWSServiceRoleForOrganizations</code>. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs">Organizations and Service-Linked Roles</a> in the
    #                 <i>Organizations User Guide</i>.</p>
    #         <p>If the request includes tags, then the requester must have the
    #                 <code>organizations:TagResource</code> permission.</p>
    #         <p>Organizations preconfigures the new member account with a role (named
    #                 <code>OrganizationAccountAccessRole</code> by default) that grants users in the
    #             management account administrator permissions in the new member account. Principals in
    #             the management account can assume the role. Organizations clones the company name and address
    #             information for the new account from the organization's management account.</p>
    #         <p>This operation can be called only from the organization's management account.</p>
    #         <p>For more information about creating accounts, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html">Creating an Amazon Web Services account in
    #                 Your Organization</a> in the <i>Organizations User Guide.</i>
    #          </p>
    #         <important>
    #             <ul>
    #                <li>
    #                     <p>When you create an account in an organization using the Organizations console,
    #                         API, or CLI commands, the information required for the account to operate
    #                         as a standalone account, such as a payment method and signing the end user
    #                         license agreement (EULA) is <i>not</i> automatically
    #                         collected. If you must remove an account from your organization later, you
    #                         can do so only after you provide the missing information. Follow the steps
    #                         at <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info"> To leave an organization as a member account</a> in the
    #                             <i>Organizations User Guide</i>.</p>
    #                 </li>
    #                <li>
    #                     <p>If you get an exception that indicates that you exceeded your account
    #                         limits for the organization, contact <a href="https://console.aws.amazon.com/support/home#/">Amazon Web Services Support</a>.</p>
    #                 </li>
    #                <li>
    #                     <p>If you get an exception that indicates that the operation failed because
    #                         your organization is still initializing, wait one hour and then try again.
    #                         If the error persists, contact <a href="https://console.aws.amazon.com/support/home#/">Amazon Web Services Support</a>.</p>
    #                 </li>
    #                <li>
    #                     <p>Using <code>CreateAccount</code> to create multiple temporary accounts
    #                         isn't recommended. You can only close an account from the Billing and Cost Management console, and
    #                         you must be signed in as the root user. For information on the requirements
    #                         and process for closing an account, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html">Closing an
    #                             Amazon Web Services account</a> in the
    #                         <i>Organizations User Guide</i>.</p>
    #                 </li>
    #             </ul>
    #         </important>
    #         <note>
    #             <p>When you create a member account with this operation, you can choose whether to
    #                 create the account with the <b>IAM User and Role Access to
    #                     Billing Information</b> switch enabled. If you enable it, IAM users and
    #                 roles that have appropriate permissions can view billing information for the
    #                 account. If you disable it, only the account root user can access billing
    #                 information. For information about how to disable this switch for an account, see
    #                     <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html">Granting
    #                     Access to Your Billing Information and Tools</a>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::CreateAccountInput}.
    #
    # @option params [String] :email
    #   <p>The email address of the owner to assign to the new member account. This email address
    #               must not already be associated with another Amazon Web Services account. You must use a valid email
    #               address to complete account creation.</p>
    #           <p>The rules for a valid email address:</p>
    #           <ul>
    #               <li>
    #                   <p>The address must be a minimum of 6 and a maximum of 64 characters long.</p>
    #               </li>
    #               <li>
    #                   <p>All characters must be 7-bit ASCII characters.</p>
    #               </li>
    #               <li>
    #                   <p>There must be one and only one @ symbol, which separates the local name from
    #                       the domain name.</p>
    #               </li>
    #               <li>
    #                   <p>The local name can't contain any of the following characters:</p>
    #                   <p>whitespace, " ' ( ) < > [ ] : ; , \ | % &</p>
    #               </li>
    #               <li>
    #                   <p>The local name can't begin with a dot (.)</p>
    #               </li>
    #               <li>
    #                   <p>The domain name can consist of only the characters [a-z],[A-Z],[0-9], hyphen
    #                       (-), or dot (.)</p>
    #               </li>
    #               <li>
    #                   <p>The domain name can't begin or end with a hyphen (-) or dot (.)</p>
    #               </li>
    #               <li>
    #                   <p>The domain name must contain at least one dot</p>
    #               </li>
    #            </ul>
    #           <p>You can't access the root user of the account or remove an account that was created
    #               with an invalid email address.</p>
    #
    # @option params [String] :account_name
    #   <p>The friendly name of the member account.</p>
    #
    # @option params [String] :role_name
    #   <p>(Optional)</p>
    #           <p>The name of an IAM role that Organizations automatically preconfigures in the new member
    #               account. This role trusts the management account, allowing users in the management
    #               account to assume the role, as permitted by the management account administrator. The
    #               role has administrator permissions in the new member account.</p>
    #           <p>If you don't specify this parameter, the role name defaults to
    #                   <code>OrganizationAccountAccessRole</code>.</p>
    #           <p>For more information about how to use this role to access the member account, see the
    #               following links:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role">Accessing and Administering the Member Accounts in Your
    #                           Organization</a> in the <i>Organizations User Guide</i>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>Steps 2 and 3 in <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html">Tutorial:
    #                           Delegate Access Across Amazon Web Services accounts Using IAM Roles</a> in the
    #                           <i>IAM User Guide</i>
    #                  </p>
    #               </li>
    #            </ul>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that
    #       is used to validate this parameter. The pattern can include uppercase
    #       letters, lowercase letters, digits with no spaces, and any of the following characters: =,.@-</p>
    #
    # @option params [String] :iam_user_access_to_billing
    #   <p>If set to <code>ALLOW</code>, the new account enables IAM users to access account
    #               billing information <i>if</i> they have the required permissions. If set
    #               to <code>DENY</code>, only the root user of the new account can access account billing
    #               information. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">Activating
    #                   Access to the Billing and Cost Management Console</a> in the
    #               <i>Amazon Web Services Billing and Cost Management User Guide</i>.</p>
    #           <p>If you don't specify this parameter, the value defaults to <code>ALLOW</code>, and
    #               IAM users and roles with the required permissions can access billing information for
    #               the new account.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags that you want to attach to the newly created account. For each tag in
    #               the list, you must specify both a tag key and a value. You can set the value to an empty
    #               string, but you can't set it to <code>null</code>. For more information about tagging,
    #               see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging Organizations
    #                   resources</a> in the Organizations User Guide.</p>
    #           <note>
    #               <p>If any one of the tags is invalid or if you exceed the maximum allowed number of
    #                   tags for an account, then the entire request fails and the account is not
    #                   created.</p>
    #           </note>
    #
    # @return [Types::CreateAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_account(
    #     email: 'Email', # required
    #     account_name: 'AccountName', # required
    #     role_name: 'RoleName',
    #     iam_user_access_to_billing: 'ALLOW', # accepts ["ALLOW", "DENY"]
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
    #   resp.data #=> Types::CreateAccountOutput
    #   resp.data.create_account_status #=> Types::CreateAccountStatus
    #   resp.data.create_account_status.id #=> String
    #   resp.data.create_account_status.account_name #=> String
    #   resp.data.create_account_status.state #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.create_account_status.requested_timestamp #=> Time
    #   resp.data.create_account_status.completed_timestamp #=> Time
    #   resp.data.create_account_status.account_id #=> String
    #   resp.data.create_account_status.gov_cloud_account_id #=> String
    #   resp.data.create_account_status.failure_reason #=> String, one of ["ACCOUNT_LIMIT_EXCEEDED", "EMAIL_ALREADY_EXISTS", "INVALID_ADDRESS", "INVALID_EMAIL", "CONCURRENT_ACCOUNT_MODIFICATION", "INTERNAL_FAILURE", "GOVCLOUD_ACCOUNT_ALREADY_EXISTS", "MISSING_BUSINESS_VALIDATION", "FAILED_BUSINESS_VALIDATION", "PENDING_BUSINESS_VALIDATION", "INVALID_IDENTITY_FOR_BUSINESS_VALIDATION", "UNKNOWN_BUSINESS_VALIDATION", "MISSING_PAYMENT_INSTRUMENT", "INVALID_PAYMENT_INSTRUMENT"]
    #
    def create_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::FinalizingOrganizationException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAccount,
        stubs: @stubs,
        params_class: Params::CreateAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>This action is available if all of the following are true:</p>
    #         <ul>
    #             <li>
    #                 <p>You're authorized to create accounts in the Amazon Web Services GovCloud (US) Region. For
    #                     more information on the Amazon Web Services GovCloud (US) Region, see the <a href="https://docs.aws.amazon.com/govcloud-us/latest/UserGuide/welcome.html">
    #                      <i>Amazon Web Services GovCloud User Guide</i>.</a>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>You already have an account in the Amazon Web Services GovCloud (US) Region that is paired
    #                     with a management account of an organization in the commercial Region.</p>
    #             </li>
    #             <li>
    #                 <p>You call this action from the management account of your organization in the
    #                     commercial Region.</p>
    #             </li>
    #             <li>
    #                 <p>You have the <code>organizations:CreateGovCloudAccount</code> permission.
    #                 </p>
    #             </li>
    #          </ul>
    #         <p>Organizations automatically creates the required service-linked role named
    #                 <code>AWSServiceRoleForOrganizations</code>. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs">Organizations and Service-Linked Roles</a> in the
    #                 <i>Organizations User Guide.</i>
    #          </p>
    #         <p>Amazon Web Services automatically enables CloudTrail for Amazon Web Services GovCloud (US) accounts, but you should also
    #             do the following:</p>
    #         <ul>
    #             <li>
    #                 <p>Verify that CloudTrail is enabled to store logs.</p>
    #             </li>
    #             <li>
    #                 <p>Create an Amazon S3 bucket for CloudTrail log storage.</p>
    #                 <p>For more information, see <a href="https://docs.aws.amazon.com/govcloud-us/latest/UserGuide/verifying-cloudtrail.html">Verifying CloudTrail Is
    #                         Enabled</a> in the <i>Amazon Web Services GovCloud User Guide</i>.
    #                 </p>
    #             </li>
    #          </ul>
    #         <p>If the request includes tags, then the requester must have the
    #                 <code>organizations:TagResource</code> permission. The tags are attached to the
    #             commercial account associated with the GovCloud account, rather than the GovCloud
    #             account itself. To add tags to the GovCloud account, call the <a>TagResource</a> operation in the GovCloud Region after the new GovCloud
    #             account exists.</p>
    #         <p>You call this action from the management account of your organization in the
    #             commercial Region to create a standalone Amazon Web Services account in the Amazon Web Services GovCloud (US)
    #             Region. After the account is created, the management account of an organization in the
    #             Amazon Web Services GovCloud (US) Region can invite it to that organization. For more information on
    #             inviting standalone accounts in the Amazon Web Services GovCloud (US) to join an organization, see
    #                 <a href="https://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html">Organizations</a> in the
    #                 <i>Amazon Web Services GovCloud User Guide.</i>
    #          </p>
    #         <p>Calling <code>CreateGovCloudAccount</code> is an asynchronous request that Amazon Web Services
    #             performs in the background. Because <code>CreateGovCloudAccount</code> operates
    #             asynchronously, it can return a successful completion message even though account
    #             initialization might still be in progress. You might need to wait a few minutes before
    #             you can successfully access the account. To check the status of the request, do one of
    #             the following:</p>
    #         <ul>
    #             <li>
    #                 <p>Use the <code>OperationId</code> response element from this operation to
    #                     provide as a parameter to the <a>DescribeCreateAccountStatus</a>
    #                     operation.</p>
    #             </li>
    #             <li>
    #                 <p>Check the CloudTrail log for the <code>CreateAccountResult</code> event. For
    #                     information on using CloudTrail with Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html">Monitoring the Activity in Your
    #                         Organization</a> in the <i>Organizations User Guide.</i>
    #                </p>
    #             </li>
    #          </ul>
    #         <p></p>
    #         <p>When you call the <code>CreateGovCloudAccount</code> action, you create two accounts:
    #             a standalone account in the Amazon Web Services GovCloud (US) Region and an associated account in the
    #             commercial Region for billing and support purposes. The account in the commercial Region
    #             is automatically a member of the organization whose credentials made the request. Both
    #             accounts are associated with the same email address.</p>
    #         <p>A role is created in the new account in the commercial Region that allows the
    #             management account in the organization in the commercial Region to assume it. An Amazon Web Services
    #             GovCloud (US) account is then created and associated with the commercial account that
    #             you just created. A role is also created in the new Amazon Web Services GovCloud (US) account that can
    #             be assumed by the Amazon Web Services GovCloud (US) account that is associated with the management
    #             account of the commercial organization. For more information and to view a diagram that
    #             explains how account access works, see <a href="https://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html">Organizations</a> in the
    #                 <i>Amazon Web Services GovCloud User Guide.</i>
    #          </p>
    #
    #
    #         <p>For more information about creating accounts, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html">Creating
    #                 an Amazon Web Services account in Your Organization</a> in the
    #                 <i>Organizations User Guide.</i>
    #          </p>
    #         <important>
    #             <ul>
    #                <li>
    #                     <p>When you create an account in an organization using the Organizations console,
    #                         API, or CLI commands, the information required for the account to operate as
    #                         a standalone account is <i>not</i> automatically collected.
    #                         This includes a payment method and signing the end user license agreement
    #                         (EULA). If you must remove an account from your organization later, you can
    #                         do so only after you provide the missing information. Follow the steps at
    #                             <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info"> To leave an organization as a member account</a> in the
    #                             <i>Organizations User Guide.</i>
    #                   </p>
    #                 </li>
    #                <li>
    #                     <p>If you get an exception that indicates that you exceeded your account
    #                         limits for the organization, contact <a href="https://console.aws.amazon.com/support/home#/">Amazon Web Services Support</a>.</p>
    #                 </li>
    #                <li>
    #                     <p>If you get an exception that indicates that the operation failed because
    #                         your organization is still initializing, wait one hour and then try again.
    #                         If the error persists, contact <a href="https://console.aws.amazon.com/support/home#/">Amazon Web Services Support</a>.</p>
    #                 </li>
    #                <li>
    #                     <p>Using <code>CreateGovCloudAccount</code> to create multiple temporary
    #                         accounts isn't recommended. You can only close an account from the Amazon Web Services
    #                         Billing and Cost Management console, and you must be signed in as the root user. For information on
    #                         the requirements and process for closing an account, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html">Closing an
    #                             Amazon Web Services account</a> in the
    #                         <i>Organizations User Guide</i>.</p>
    #                 </li>
    #             </ul>
    #         </important>
    #         <note>
    #             <p>When you create a member account with this operation, you can choose whether to
    #                 create the account with the <b>IAM User and Role Access to
    #                     Billing Information</b> switch enabled. If you enable it, IAM users and
    #                 roles that have appropriate permissions can view billing information for the
    #                 account. If you disable it, only the account root user can access billing
    #                 information. For information about how to disable this switch for an account, see
    #                     <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html">Granting
    #                     Access to Your Billing Information and Tools</a>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::CreateGovCloudAccountInput}.
    #
    # @option params [String] :email
    #   <p>Specifies the email address of the owner to assign to the new member account in the
    #               commercial Region. This email address must not already be associated with another
    #               Amazon Web Services account. You must use a valid email address to complete account creation.</p>
    #           <p>The rules for a valid email address:</p>
    #           <ul>
    #               <li>
    #                   <p>The address must be a minimum of 6 and a maximum of 64 characters long.</p>
    #               </li>
    #               <li>
    #                   <p>All characters must be 7-bit ASCII characters.</p>
    #               </li>
    #               <li>
    #                   <p>There must be one and only one @ symbol, which separates the local name from
    #                       the domain name.</p>
    #               </li>
    #               <li>
    #                   <p>The local name can't contain any of the following characters:</p>
    #                   <p>whitespace, " ' ( ) < > [ ] : ; , \ | % &</p>
    #               </li>
    #               <li>
    #                   <p>The local name can't begin with a dot (.)</p>
    #               </li>
    #               <li>
    #                   <p>The domain name can consist of only the characters [a-z],[A-Z],[0-9], hyphen
    #                       (-), or dot (.)</p>
    #               </li>
    #               <li>
    #                   <p>The domain name can't begin or end with a hyphen (-) or dot (.)</p>
    #               </li>
    #               <li>
    #                   <p>The domain name must contain at least one dot</p>
    #               </li>
    #            </ul>
    #           <p>You can't access the root user of the account or remove an account that was created
    #               with an invalid email address. Like all request parameters for
    #                   <code>CreateGovCloudAccount</code>, the request for the email address for the Amazon Web Services
    #               GovCloud (US) account originates from the commercial Region, not from the Amazon Web Services GovCloud
    #               (US) Region.</p>
    #
    # @option params [String] :account_name
    #   <p>The friendly name of the member account. </p>
    #           <p>The account name can consist of only the characters [a-z],[A-Z],[0-9], hyphen (-), or
    #               dot (.) You can't separate characters with a dash (–).</p>
    #
    # @option params [String] :role_name
    #   <p>(Optional)</p>
    #           <p>The name of an IAM role that Organizations automatically preconfigures in the new member
    #               accounts in both the Amazon Web Services GovCloud (US) Region and in the commercial Region. This role
    #               trusts the management account, allowing users in the management account to assume the
    #               role, as permitted by the management account administrator. The role has administrator
    #               permissions in the new member account.</p>
    #           <p>If you don't specify this parameter, the role name defaults to
    #                   <code>OrganizationAccountAccessRole</code>.</p>
    #           <p>For more information about how to use this role to access the member account, see
    #                   <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role">Accessing and Administering the Member Accounts in Your Organization</a> in the
    #                   <i>Organizations User Guide</i> and steps 2 and 3 in <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html">Tutorial: Delegate Access Across Amazon Web Services accounts Using IAM Roles</a> in the
    #                   <i>IAM User Guide.</i>
    #            </p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that
    #       is used to validate this parameter. The pattern can include uppercase
    #       letters, lowercase letters, digits with no spaces, and any of the following characters: =,.@-</p>
    #
    # @option params [String] :iam_user_access_to_billing
    #   <p>If set to <code>ALLOW</code>, the new linked account in the commercial Region enables
    #               IAM users to access account billing information <i>if</i> they have the
    #               required permissions. If set to <code>DENY</code>, only the root user of the new account
    #               can access account billing information. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">Activating
    #                   Access to the Billing and Cost Management Console</a> in the
    #               <i>Amazon Web Services Billing and Cost Management User Guide.</i>
    #            </p>
    #           <p>If you don't specify this parameter, the value defaults to <code>ALLOW</code>, and
    #               IAM users and roles with the required permissions can access billing information for
    #               the new account.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags that you want to attach to the newly created account. These tags are
    #               attached to the commercial account associated with the GovCloud account, and not to the
    #               GovCloud account itself. To add tags to the actual GovCloud account, call the <a>TagResource</a> operation in the GovCloud region after the new GovCloud
    #               account exists.</p>
    #           <p>For each tag in the list, you must specify both a tag key and a value. You can set the
    #               value to an empty string, but you can't set it to <code>null</code>. For more
    #               information about tagging, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging Organizations resources</a> in the
    #               Organizations User Guide.</p>
    #           <note>
    #               <p>If any one of the tags is invalid or if you exceed the maximum allowed number of
    #                   tags for an account, then the entire request fails and the account is not
    #                   created.</p>
    #           </note>
    #
    # @return [Types::CreateGovCloudAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_gov_cloud_account(
    #     email: 'Email', # required
    #     account_name: 'AccountName', # required
    #     role_name: 'RoleName',
    #     iam_user_access_to_billing: 'ALLOW', # accepts ["ALLOW", "DENY"]
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
    #   resp.data #=> Types::CreateGovCloudAccountOutput
    #   resp.data.create_account_status #=> Types::CreateAccountStatus
    #   resp.data.create_account_status.id #=> String
    #   resp.data.create_account_status.account_name #=> String
    #   resp.data.create_account_status.state #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.create_account_status.requested_timestamp #=> Time
    #   resp.data.create_account_status.completed_timestamp #=> Time
    #   resp.data.create_account_status.account_id #=> String
    #   resp.data.create_account_status.gov_cloud_account_id #=> String
    #   resp.data.create_account_status.failure_reason #=> String, one of ["ACCOUNT_LIMIT_EXCEEDED", "EMAIL_ALREADY_EXISTS", "INVALID_ADDRESS", "INVALID_EMAIL", "CONCURRENT_ACCOUNT_MODIFICATION", "INTERNAL_FAILURE", "GOVCLOUD_ACCOUNT_ALREADY_EXISTS", "MISSING_BUSINESS_VALIDATION", "FAILED_BUSINESS_VALIDATION", "PENDING_BUSINESS_VALIDATION", "INVALID_IDENTITY_FOR_BUSINESS_VALIDATION", "UNKNOWN_BUSINESS_VALIDATION", "MISSING_PAYMENT_INSTRUMENT", "INVALID_PAYMENT_INSTRUMENT"]
    #
    def create_gov_cloud_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGovCloudAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGovCloudAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGovCloudAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::FinalizingOrganizationException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreateGovCloudAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGovCloudAccount,
        stubs: @stubs,
        params_class: Params::CreateGovCloudAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_gov_cloud_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an Amazon Web Services organization. The account whose user is calling the
    #                 <code>CreateOrganization</code> operation automatically becomes the <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account">management account</a> of the new organization.</p>
    #         <p>This operation must be called using credentials from the account that is to become the
    #             new organization's management account. The principal must also have the relevant IAM
    #             permissions.</p>
    #         <p>By default (or if you set the <code>FeatureSet</code> parameter to <code>ALL</code>),
    #             the new organization is created with all features enabled and service control policies
    #             automatically enabled in the root. If you instead choose to create the organization
    #             supporting only the consolidated billing features by setting the <code>FeatureSet</code>
    #             parameter to <code>CONSOLIDATED_BILLING"</code>, no policy types are enabled by default,
    #             and you can't use organization policies</p>
    #
    # @param [Hash] params
    #   See {Types::CreateOrganizationInput}.
    #
    # @option params [String] :feature_set
    #   <p>Specifies the feature set supported by the new organization. Each feature set supports
    #               different levels of functionality.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>CONSOLIDATED_BILLING</code>: All member accounts have their bills
    #                       consolidated to and paid by the management account. For more information, see
    #                           <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-cb-only">Consolidated billing</a> in the
    #                       <i>Organizations User Guide.</i>
    #                  </p>
    #                   <p> The consolidated billing feature subset isn't available for organizations in
    #                       the Amazon Web Services GovCloud (US) Region.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ALL</code>: In addition to all the features supported by the
    #                       consolidated billing feature set, the management account can also apply any
    #                       policy type to any member account in the organization. For more information, see
    #                           <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#feature-set-all">All
    #                           features</a> in the <i>Organizations User Guide.</i>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::CreateOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_organization(
    #     feature_set: 'ALL' # accepts ["ALL", "CONSOLIDATED_BILLING"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateOrganizationOutput
    #   resp.data.organization #=> Types::Organization
    #   resp.data.organization.id #=> String
    #   resp.data.organization.arn #=> String
    #   resp.data.organization.feature_set #=> String, one of ["ALL", "CONSOLIDATED_BILLING"]
    #   resp.data.organization.master_account_arn #=> String
    #   resp.data.organization.master_account_id #=> String
    #   resp.data.organization.master_account_email #=> String
    #   resp.data.organization.available_policy_types #=> Array<PolicyTypeSummary>
    #   resp.data.organization.available_policy_types[0] #=> Types::PolicyTypeSummary
    #   resp.data.organization.available_policy_types[0].type #=> String, one of ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #   resp.data.organization.available_policy_types[0].status #=> String, one of ["ENABLED", "PENDING_ENABLE", "PENDING_DISABLE"]
    #
    def create_organization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateOrganizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateOrganizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateOrganization
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AccessDeniedForDependencyException, Errors::InvalidInputException, Errors::ConstraintViolationException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::AlreadyInOrganizationException]),
        data_parser: Parsers::CreateOrganization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateOrganization,
        stubs: @stubs,
        params_class: Params::CreateOrganizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_organization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an organizational unit (OU) within a root or parent OU. An OU is a container
    #             for accounts that enables you to organize your accounts to apply policies according to
    #             your business requirements. The number of levels deep that you can nest OUs is dependent
    #             upon the policy types enabled for that root. For service control policies, the limit is
    #             five.</p>
    #         <p>For more information about OUs, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_ous.html">Managing Organizational Units</a> in the
    #                 <i>Organizations User Guide.</i>
    #          </p>
    #         <p>If the request includes tags, then the requester must have the
    #                 <code>organizations:TagResource</code> permission.</p>
    #         <p>This operation can be called only from the organization's management account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateOrganizationalUnitInput}.
    #
    # @option params [String] :parent_id
    #   <p>The unique identifier (ID) of the parent root or OU that you want to create the new OU
    #               in.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :name
    #   <p>The friendly name to assign to the new OU.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags that you want to attach to the newly created OU. For each tag in the
    #               list, you must specify both a tag key and a value. You can set the value to an empty
    #               string, but you can't set it to <code>null</code>. For more information about tagging,
    #               see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging Organizations
    #                   resources</a> in the Organizations User Guide.</p>
    #           <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed number of tags for
    #                   an OU, then the entire request fails and the OU is not created.</p>
    #           </note>
    #
    # @return [Types::CreateOrganizationalUnitOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_organizational_unit(
    #     parent_id: 'ParentId', # required
    #     name: 'Name', # required
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
    #   resp.data #=> Types::CreateOrganizationalUnitOutput
    #   resp.data.organizational_unit #=> Types::OrganizationalUnit
    #   resp.data.organizational_unit.id #=> String
    #   resp.data.organizational_unit.arn #=> String
    #   resp.data.organizational_unit.name #=> String
    #
    def create_organizational_unit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateOrganizationalUnitInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateOrganizationalUnitInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateOrganizationalUnit
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::DuplicateOrganizationalUnitException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::ParentNotFoundException]),
        data_parser: Parsers::CreateOrganizationalUnit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateOrganizationalUnit,
        stubs: @stubs,
        params_class: Params::CreateOrganizationalUnitOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_organizational_unit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a policy of a specified type that you can attach to a root, an organizational
    #             unit (OU), or an individual Amazon Web Services account.</p>
    #         <p>For more information about policies and their use, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html">Managing
    #                 Organization Policies</a>.</p>
    #         <p>If the request includes tags, then the requester must have the
    #                 <code>organizations:TagResource</code> permission.</p>
    #         <p>This operation can be called only from the organization's management account.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePolicyInput}.
    #
    # @option params [String] :content
    #   <p>The policy text content to add to the new policy. The text that you supply must adhere
    #               to the rules of the policy type you specify in the <code>Type</code> parameter.</p>
    #
    # @option params [String] :description
    #   <p>An optional description to assign to the policy.</p>
    #
    # @option params [String] :name
    #   <p>The friendly name to assign to the policy.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       that is used to validate this parameter is a string of any of the characters in the ASCII
    #       character range.</p>
    #
    # @option params [String] :type
    #   <p>The type of policy to create. You can specify one of the following values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">SERVICE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags that you want to attach to the newly created policy. For each tag in
    #               the list, you must specify both a tag key and a value. You can set the value to an empty
    #               string, but you can't set it to <code>null</code>. For more information about tagging,
    #               see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging Organizations
    #                   resources</a> in the Organizations User Guide.</p>
    #           <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed number of tags for
    #                   a policy, then the entire request fails and the policy is not created.</p>
    #           </note>
    #
    # @return [Types::CreatePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy(
    #     content: 'Content', # required
    #     description: 'Description', # required
    #     name: 'Name', # required
    #     type: 'SERVICE_CONTROL_POLICY', # required - accepts ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
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
    #   resp.data #=> Types::CreatePolicyOutput
    #   resp.data.policy #=> Types::Policy
    #   resp.data.policy.policy_summary #=> Types::PolicySummary
    #   resp.data.policy.policy_summary.id #=> String
    #   resp.data.policy.policy_summary.arn #=> String
    #   resp.data.policy.policy_summary.name #=> String
    #   resp.data.policy.policy_summary.description #=> String
    #   resp.data.policy.policy_summary.type #=> String, one of ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #   resp.data.policy.policy_summary.aws_managed #=> Boolean
    #   resp.data.policy.content #=> String
    #
    def create_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PolicyTypeNotAvailableForOrganizationException, Errors::UnsupportedAPIEndpointException, Errors::DuplicatePolicyException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::MalformedPolicyDocumentException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::CreatePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePolicy,
        stubs: @stubs,
        params_class: Params::CreatePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Declines a handshake request. This sets the handshake state to <code>DECLINED</code>
    #             and effectively deactivates the request.</p>
    #         <p>This operation can be called only from the account that received the handshake. The originator of the handshake can use <a>CancelHandshake</a>
    #             instead. The originator can't reactivate a declined request, but can reinitiate the
    #             process with a new handshake request.</p>
    #         <p>After you decline a handshake, it continues to appear in the results of relevant APIs
    #             for only 30 days. After that, it's deleted.</p>
    #
    # @param [Hash] params
    #   See {Types::DeclineHandshakeInput}.
    #
    # @option params [String] :handshake_id
    #   <p>The unique identifier (ID) of the handshake that you want to decline. You can get the
    #               ID from the <a>ListHandshakesForAccount</a> operation.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-"
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    #
    # @return [Types::DeclineHandshakeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.decline_handshake(
    #     handshake_id: 'HandshakeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeclineHandshakeOutput
    #   resp.data.handshake #=> Types::Handshake
    #   resp.data.handshake.id #=> String
    #   resp.data.handshake.arn #=> String
    #   resp.data.handshake.parties #=> Array<HandshakeParty>
    #   resp.data.handshake.parties[0] #=> Types::HandshakeParty
    #   resp.data.handshake.parties[0].id #=> String
    #   resp.data.handshake.parties[0].type #=> String, one of ["ACCOUNT", "ORGANIZATION", "EMAIL"]
    #   resp.data.handshake.state #=> String, one of ["REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"]
    #   resp.data.handshake.requested_timestamp #=> Time
    #   resp.data.handshake.expiration_timestamp #=> Time
    #   resp.data.handshake.action #=> String, one of ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"]
    #   resp.data.handshake.resources #=> Array<HandshakeResource>
    #   resp.data.handshake.resources[0] #=> Types::HandshakeResource
    #   resp.data.handshake.resources[0].value #=> String
    #   resp.data.handshake.resources[0].type #=> String, one of ["ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"]
    #   resp.data.handshake.resources[0].resources #=> Array<HandshakeResource>
    #
    def decline_handshake(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeclineHandshakeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeclineHandshakeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeclineHandshake
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::HandshakeNotFoundException, Errors::HandshakeAlreadyInStateException, Errors::InvalidInputException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::InvalidHandshakeTransitionException]),
        data_parser: Parsers::DeclineHandshake
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeclineHandshake,
        stubs: @stubs,
        params_class: Params::DeclineHandshakeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :decline_handshake
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the organization. You can delete an organization only by using credentials
    #             from the management account. The organization must be empty of member accounts.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteOrganizationInput}.
    #
    # @return [Types::DeleteOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_organization()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteOrganizationOutput
    #
    def delete_organization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteOrganizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteOrganizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteOrganization
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::AccessDeniedException, Errors::OrganizationNotEmptyException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteOrganization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteOrganization,
        stubs: @stubs,
        params_class: Params::DeleteOrganizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_organization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an organizational unit (OU) from a root or another OU. You must first remove
    #             all accounts and child OUs from the OU that you want to delete.</p>
    #         <p>This operation can be called only from the organization's management account.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteOrganizationalUnitInput}.
    #
    # @option params [String] :organizational_unit_id
    #   <p>The unique identifier (ID) of the organizational unit that you want to delete. You can
    #               get the ID from the <a>ListOrganizationalUnitsForParent</a> operation.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires
    #       "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the
    #       OU). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters
    #       or digits.</p>
    #
    # @return [Types::DeleteOrganizationalUnitOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_organizational_unit(
    #     organizational_unit_id: 'OrganizationalUnitId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteOrganizationalUnitOutput
    #
    def delete_organizational_unit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteOrganizationalUnitInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteOrganizationalUnitInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteOrganizationalUnit
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OrganizationalUnitNotEmptyException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::OrganizationalUnitNotFoundException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeleteOrganizationalUnit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteOrganizationalUnit,
        stubs: @stubs,
        params_class: Params::DeleteOrganizationalUnitOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_organizational_unit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified policy from your organization. Before you perform this
    #             operation, you must first detach the policy from all organizational units (OUs), roots,
    #             and accounts.</p>
    #         <p>This operation can be called only from the organization's management account.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePolicyInput}.
    #
    # @option params [String] :policy_id
    #   <p>The unique identifier (ID) of the policy that you want to delete. You can get the ID
    #               from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a>
    #               operations.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #
    # @return [Types::DeletePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy(
    #     policy_id: 'PolicyId' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedAPIEndpointException, Errors::PolicyInUseException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::PolicyNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
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

    # <p>Removes the specified member Amazon Web Services account as a delegated administrator for the
    #             specified Amazon Web Services service.</p>
    #         <important>
    #             <p>Deregistering a delegated administrator can have unintended impacts on the
    #                 functionality of the enabled Amazon Web Services service. See the documentation for the enabled
    #                 service before you deregister a delegated administrator so that you understand any
    #                 potential impacts.</p>
    #         </important>
    #         <p>You can run this action only for Amazon Web Services services that support this
    #     feature. For a current list of services that support it, see the column <i>Supports
    #     Delegated Administrator</i> in the table at <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html">Amazon Web Services Services that you can use with
    #     Organizations</a> in the <i>Organizations User Guide.</i>
    #          </p>
    #         <p>This operation can be called only from the organization's management account.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterDelegatedAdministratorInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID number of the member account in the organization that you want to
    #               deregister as a delegated administrator.</p>
    #
    # @option params [String] :service_principal
    #   <p>The service principal name of an Amazon Web Services service for which the account is a delegated
    #               administrator.</p>
    #           <p>Delegated administrator privileges are revoked for only the specified Amazon Web Services service
    #               from the member account. If the specified service is the only service for which the
    #               member account is a delegated administrator, the operation also revokes Organizations read action
    #               permissions.</p>
    #
    # @return [Types::DeregisterDelegatedAdministratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_delegated_administrator(
    #     account_id: 'AccountId', # required
    #     service_principal: 'ServicePrincipal' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterDelegatedAdministratorOutput
    #
    def deregister_delegated_administrator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterDelegatedAdministratorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterDelegatedAdministratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterDelegatedAdministrator
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::AccountNotFoundException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::AccessDeniedException, Errors::AccountNotRegisteredException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DeregisterDelegatedAdministrator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterDelegatedAdministrator,
        stubs: @stubs,
        params_class: Params::DeregisterDelegatedAdministratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_delegated_administrator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves Organizations-related information about the specified account.</p>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountInput}.
    #
    # @option params [String] :account_id
    #   <p>The unique identifier (ID) of the Amazon Web Services account that you want information about. You
    #               can get the ID from the <a>ListAccounts</a> or <a>ListAccountsForParent</a> operations.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12
    #       digits.</p>
    #
    # @return [Types::DescribeAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account(
    #     account_id: 'AccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccountOutput
    #   resp.data.account #=> Types::Account
    #   resp.data.account.id #=> String
    #   resp.data.account.arn #=> String
    #   resp.data.account.email #=> String
    #   resp.data.account.name #=> String
    #   resp.data.account.status #=> String, one of ["ACTIVE", "SUSPENDED", "PENDING_CLOSURE"]
    #   resp.data.account.joined_method #=> String, one of ["INVITED", "CREATED"]
    #   resp.data.account.joined_timestamp #=> Time
    #
    def describe_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AccountNotFoundException, Errors::AWSOrganizationsNotInUseException, Errors::AccessDeniedException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccount,
        stubs: @stubs,
        params_class: Params::DescribeAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the current status of an asynchronous request to create an account.</p>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCreateAccountStatusInput}.
    #
    # @option params [String] :create_account_request_id
    #   <p>Specifies the <code>Id</code> value that uniquely identifies the
    #                   <code>CreateAccount</code> request. You can get the value from the
    #                   <code>CreateAccountStatus.Id</code> response in an earlier <a>CreateAccount</a> request, or from the <a>ListCreateAccountStatus</a> operation.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a create account request ID string
    #       requires "car-" followed by from 8 to 32 lowercase letters or digits.</p>
    #
    # @return [Types::DescribeCreateAccountStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_create_account_status(
    #     create_account_request_id: 'CreateAccountRequestId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCreateAccountStatusOutput
    #   resp.data.create_account_status #=> Types::CreateAccountStatus
    #   resp.data.create_account_status.id #=> String
    #   resp.data.create_account_status.account_name #=> String
    #   resp.data.create_account_status.state #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.create_account_status.requested_timestamp #=> Time
    #   resp.data.create_account_status.completed_timestamp #=> Time
    #   resp.data.create_account_status.account_id #=> String
    #   resp.data.create_account_status.gov_cloud_account_id #=> String
    #   resp.data.create_account_status.failure_reason #=> String, one of ["ACCOUNT_LIMIT_EXCEEDED", "EMAIL_ALREADY_EXISTS", "INVALID_ADDRESS", "INVALID_EMAIL", "CONCURRENT_ACCOUNT_MODIFICATION", "INTERNAL_FAILURE", "GOVCLOUD_ACCOUNT_ALREADY_EXISTS", "MISSING_BUSINESS_VALIDATION", "FAILED_BUSINESS_VALIDATION", "PENDING_BUSINESS_VALIDATION", "INVALID_IDENTITY_FOR_BUSINESS_VALIDATION", "UNKNOWN_BUSINESS_VALIDATION", "MISSING_PAYMENT_INSTRUMENT", "INVALID_PAYMENT_INSTRUMENT"]
    #
    def describe_create_account_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCreateAccountStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCreateAccountStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeCreateAccountStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::AccessDeniedException, Errors::CreateAccountStatusNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeCreateAccountStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeCreateAccountStatus,
        stubs: @stubs,
        params_class: Params::DescribeCreateAccountStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_create_account_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the contents of the effective policy for specified policy type and account.
    #             The effective policy is the aggregation of any policies of the specified type that the
    #             account inherits, plus any policy of that type that is directly attached to the
    #             account.</p>
    #         <p>This operation applies only to policy types <i>other</i> than service
    #             control policies (SCPs).</p>
    #         <p>For more information about policy inheritance, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies-inheritance.html">How Policy Inheritance
    #                 Works</a> in the <i>Organizations User Guide</i>.</p>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEffectivePolicyInput}.
    #
    # @option params [String] :policy_type
    #   <p>The type of policy that you want information about. You can specify one of the
    #               following values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :target_id
    #   <p>When you're signed in as the management account, specify the ID of the account that
    #               you want details about. Specifying an organization root or organizational unit (OU) as
    #               the target is not supported.</p>
    #
    # @return [Types::DescribeEffectivePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_effective_policy(
    #     policy_type: 'TAG_POLICY', # required - accepts ["TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #     target_id: 'TargetId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEffectivePolicyOutput
    #   resp.data.effective_policy #=> Types::EffectivePolicy
    #   resp.data.effective_policy.policy_content #=> String
    #   resp.data.effective_policy.last_updated_timestamp #=> Time
    #   resp.data.effective_policy.target_id #=> String
    #   resp.data.effective_policy.policy_type #=> String, one of ["TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #
    def describe_effective_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEffectivePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEffectivePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEffectivePolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::AccessDeniedException, Errors::EffectivePolicyNotFoundException, Errors::ServiceException, Errors::TargetNotFoundException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeEffectivePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEffectivePolicy,
        stubs: @stubs,
        params_class: Params::DescribeEffectivePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_effective_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a previously requested handshake. The handshake ID comes
    #             from the response to the original <a>InviteAccountToOrganization</a>
    #             operation that generated the handshake.</p>
    #         <p>You can access handshakes that are <code>ACCEPTED</code>, <code>DECLINED</code>, or
    #                 <code>CANCELED</code> for only 30 days after they change to that state. They're then
    #             deleted and no longer accessible.</p>
    #         <p>This operation can be called from any account in the organization.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeHandshakeInput}.
    #
    # @option params [String] :handshake_id
    #   <p>The unique identifier (ID) of the handshake that you want information about. You can
    #               get the ID from the original call to <a>InviteAccountToOrganization</a>, or
    #               from a call to <a>ListHandshakesForAccount</a> or <a>ListHandshakesForOrganization</a>.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-"
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    #
    # @return [Types::DescribeHandshakeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_handshake(
    #     handshake_id: 'HandshakeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeHandshakeOutput
    #   resp.data.handshake #=> Types::Handshake
    #   resp.data.handshake.id #=> String
    #   resp.data.handshake.arn #=> String
    #   resp.data.handshake.parties #=> Array<HandshakeParty>
    #   resp.data.handshake.parties[0] #=> Types::HandshakeParty
    #   resp.data.handshake.parties[0].id #=> String
    #   resp.data.handshake.parties[0].type #=> String, one of ["ACCOUNT", "ORGANIZATION", "EMAIL"]
    #   resp.data.handshake.state #=> String, one of ["REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"]
    #   resp.data.handshake.requested_timestamp #=> Time
    #   resp.data.handshake.expiration_timestamp #=> Time
    #   resp.data.handshake.action #=> String, one of ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"]
    #   resp.data.handshake.resources #=> Array<HandshakeResource>
    #   resp.data.handshake.resources[0] #=> Types::HandshakeResource
    #   resp.data.handshake.resources[0].value #=> String
    #   resp.data.handshake.resources[0].type #=> String, one of ["ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"]
    #   resp.data.handshake.resources[0].resources #=> Array<HandshakeResource>
    #
    def describe_handshake(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeHandshakeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeHandshakeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeHandshake
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::HandshakeNotFoundException, Errors::InvalidInputException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeHandshake
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeHandshake,
        stubs: @stubs,
        params_class: Params::DescribeHandshakeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_handshake
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the organization that the user's account belongs
    #             to.</p>
    #         <p>This operation can be called from any account in the organization.</p>
    #         <note>
    #             <p>Even if a policy type is shown as available in the organization, you can disable
    #                 it separately at the root level with <a>DisablePolicyType</a>. Use <a>ListRoots</a> to see the status of policy types for a specified
    #                 root.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DescribeOrganizationInput}.
    #
    # @return [Types::DescribeOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOrganizationOutput
    #   resp.data.organization #=> Types::Organization
    #   resp.data.organization.id #=> String
    #   resp.data.organization.arn #=> String
    #   resp.data.organization.feature_set #=> String, one of ["ALL", "CONSOLIDATED_BILLING"]
    #   resp.data.organization.master_account_arn #=> String
    #   resp.data.organization.master_account_id #=> String
    #   resp.data.organization.master_account_email #=> String
    #   resp.data.organization.available_policy_types #=> Array<PolicyTypeSummary>
    #   resp.data.organization.available_policy_types[0] #=> Types::PolicyTypeSummary
    #   resp.data.organization.available_policy_types[0].type #=> String, one of ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #   resp.data.organization.available_policy_types[0].status #=> String, one of ["ENABLED", "PENDING_ENABLE", "PENDING_DISABLE"]
    #
    def describe_organization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOrganizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOrganizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOrganization
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AWSOrganizationsNotInUseException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeOrganization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOrganization,
        stubs: @stubs,
        params_class: Params::DescribeOrganizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_organization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about an organizational unit (OU).</p>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOrganizationalUnitInput}.
    #
    # @option params [String] :organizational_unit_id
    #   <p>The unique identifier (ID) of the organizational unit that you want details about. You
    #               can get the ID from the <a>ListOrganizationalUnitsForParent</a>
    #               operation.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires
    #       "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the
    #       OU). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters
    #       or digits.</p>
    #
    # @return [Types::DescribeOrganizationalUnitOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organizational_unit(
    #     organizational_unit_id: 'OrganizationalUnitId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOrganizationalUnitOutput
    #   resp.data.organizational_unit #=> Types::OrganizationalUnit
    #   resp.data.organizational_unit.id #=> String
    #   resp.data.organizational_unit.arn #=> String
    #   resp.data.organizational_unit.name #=> String
    #
    def describe_organizational_unit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeOrganizationalUnitInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeOrganizationalUnitInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeOrganizationalUnit
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::OrganizationalUnitNotFoundException, Errors::AccessDeniedException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribeOrganizationalUnit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeOrganizationalUnit,
        stubs: @stubs,
        params_class: Params::DescribeOrganizationalUnitOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_organizational_unit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about a policy.</p>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePolicyInput}.
    #
    # @option params [String] :policy_id
    #   <p>The unique identifier (ID) of the policy that you want details about. You can get the
    #               ID from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a>
    #               operations.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #
    # @return [Types::DescribePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_policy(
    #     policy_id: 'PolicyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePolicyOutput
    #   resp.data.policy #=> Types::Policy
    #   resp.data.policy.policy_summary #=> Types::PolicySummary
    #   resp.data.policy.policy_summary.id #=> String
    #   resp.data.policy.policy_summary.arn #=> String
    #   resp.data.policy.policy_summary.name #=> String
    #   resp.data.policy.policy_summary.description #=> String
    #   resp.data.policy.policy_summary.type #=> String, one of ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #   resp.data.policy.policy_summary.aws_managed #=> Boolean
    #   resp.data.policy.content #=> String
    #
    def describe_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::AccessDeniedException, Errors::PolicyNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DescribePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePolicy,
        stubs: @stubs,
        params_class: Params::DescribePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detaches a policy from a target root, organizational unit (OU), or account.</p>
    #         <important>
    #             <p>If the policy being detached is a service control policy (SCP), the changes to
    #                 permissions for Identity and Access Management (IAM) users and roles in affected accounts are
    #                 immediate.</p>
    #         </important>
    #         <p>Every root, OU, and account must have at least one SCP attached. If you want to
    #             replace the default <code>FullAWSAccess</code> policy with an SCP that limits the
    #             permissions that can be delegated, you must attach the replacement SCP before you can
    #             remove the default SCP. This is the authorization strategy of an "<a href="https://docs.aws.amazon.com/organizations/latest/userguide/SCP_strategies.html#orgs_policies_allowlist">allow list</a>". If you instead attach a second SCP and
    #             leave the <code>FullAWSAccess</code> SCP still attached, and specify <code>"Effect":
    #                 "Deny"</code> in the second SCP to override the <code>"Effect": "Allow"</code> in
    #             the <code>FullAWSAccess</code> policy (or any other attached SCP), you're using the
    #             authorization strategy of a "<a href="https://docs.aws.amazon.com/organizations/latest/userguide/SCP_strategies.html#orgs_policies_denylist">deny list</a>".</p>
    #         <p>This operation can be called only from the organization's management account.</p>
    #
    # @param [Hash] params
    #   See {Types::DetachPolicyInput}.
    #
    # @option params [String] :policy_id
    #   <p>The unique identifier (ID) of the policy you want to detach. You can get the ID from
    #               the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a>
    #               operations.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #
    # @option params [String] :target_id
    #   <p>The unique identifier (ID) of the root, OU, or account that you want to detach the
    #               policy from. You can get the ID from the <a>ListRoots</a>, <a>ListOrganizationalUnitsForParent</a>, or <a>ListAccounts</a>
    #               operations.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Account</b> - A string that consists of exactly 12 digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DetachPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_policy(
    #     policy_id: 'PolicyId', # required
    #     target_id: 'TargetId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetachPolicyOutput
    #
    def detach_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetachPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetachPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetachPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PolicyNotAttachedException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::ConcurrentModificationException, Errors::TargetNotFoundException, Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::PolicyChangesInProgressException, Errors::AccessDeniedException, Errors::PolicyNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DetachPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetachPolicy,
        stubs: @stubs,
        params_class: Params::DetachPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detach_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the integration of an Amazon Web Services service (the service that is specified by
    #                 <code>ServicePrincipal</code>) with Organizations. When you disable integration, the
    #             specified service no longer can create a <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html">service-linked role</a> in
    #                 <i>new</i> accounts in your organization. This means the service can't
    #             perform operations on your behalf on any new accounts in your organization. The service
    #             can still perform operations in older accounts until the service completes its clean-up
    #             from Organizations.</p>
    #         <important>
    #             <p>We <b>
    #                   <i>strongly recommend</i>
    #                </b> that
    #                 you don't use this command to disable integration between Organizations and the specified
    #                 Amazon Web Services service. Instead, use the console or commands that are provided by the
    #                 specified service. This lets the trusted service perform any required initialization
    #                 when enabling trusted access, such as creating any required resources and any
    #                 required clean up of resources when disabling trusted access. </p>
    #             <p>For information about how to disable trusted service access to your organization
    #                 using the trusted service, see the <b>Learn more</b> link
    #                 under the <b>Supports Trusted Access</b> column at <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html">Amazon Web Services services that you can use with Organizations</a>. on this page.</p>
    #             <p>If you disable access by using this command, it causes the following actions to
    #                 occur:</p>
    #             <ul>
    #                <li>
    #                     <p>The service can no longer create a service-linked role in the accounts in
    #                         your organization. This means that the service can't perform operations on
    #                         your behalf on any new accounts in your organization. The service can still
    #                         perform operations in older accounts until the service completes its
    #                         clean-up from Organizations. </p>
    #                 </li>
    #                <li>
    #                     <p>The service can no longer perform tasks in the member accounts in the
    #                         organization, unless those operations are explicitly permitted by the IAM
    #                         policies that are attached to your roles. This includes any data aggregation
    #                         from the member accounts to the management account, or to a delegated
    #                         administrator account, where relevant.</p>
    #                 </li>
    #                <li>
    #                     <p>Some services detect this and clean up any remaining data or resources
    #                         related to the integration, while other services stop accessing the
    #                         organization but leave any historical data and configuration in place to
    #                         support a possible re-enabling of the integration.</p>
    #                 </li>
    #             </ul>
    #             <p>Using the other service's console or commands to disable the integration ensures
    #                 that the other service is aware that it can clean up any resources that are required
    #                 only for the integration. How the service cleans up its resources in the
    #                 organization's accounts depends on that service. For more information, see the
    #                 documentation for the other Amazon Web Services service. </p>
    #         </important>
    #         <p>After you perform the <code>DisableAWSServiceAccess</code> operation, the specified
    #             service can no longer perform operations in your organization's accounts </p>
    #         <p>For more information about integrating other services with Organizations, including the
    #             list of services that work with Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Integrating Organizations with Other
    #                 Amazon Web Services Services</a> in the <i>Organizations User Guide.</i>
    #          </p>
    #         <p>This operation can be called only from the organization's management account.</p>
    #
    # @param [Hash] params
    #   See {Types::DisableAWSServiceAccessInput}.
    #
    # @option params [String] :service_principal
    #   <p>The service principal name of the Amazon Web Services service for which you want to disable
    #               integration with your organization. This is typically in the form of a URL, such as
    #                       <code>
    #                  <i>service-abbreviation</i>.amazonaws.com</code>.</p>
    #
    # @return [Types::DisableAWSServiceAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_aws_service_access(
    #     service_principal: 'ServicePrincipal' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisableAWSServiceAccessOutput
    #
    def disable_aws_service_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisableAWSServiceAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisableAWSServiceAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisableAWSServiceAccess
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DisableAWSServiceAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisableAWSServiceAccess,
        stubs: @stubs,
        params_class: Params::DisableAWSServiceAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_aws_service_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables an organizational policy type in a root. A policy of a certain type can be
    #             attached to entities in a root only if that type is enabled in the root. After you
    #             perform this operation, you no longer can attach policies of the specified type to that
    #             root or to any organizational unit (OU) or account in that root. You can undo this by
    #             using the <a>EnablePolicyType</a> operation.</p>
    #         <p>This is an asynchronous request that Amazon Web Services performs in the background. If you disable
    #             a policy type for a root, it still appears enabled for the organization if <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">all features</a> are enabled for the organization. Amazon Web Services recommends that you
    #             first use <a>ListRoots</a> to see the status of policy types for a specified
    #             root, and then use this operation.</p>
    #         <p>This operation can be called only from the organization's management account.</p>
    #         <p> To view the status of available policy types in the organization, use <a>DescribeOrganization</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DisablePolicyTypeInput}.
    #
    # @option params [String] :root_id
    #   <p>The unique identifier (ID) of the root in which you want to disable a policy type. You
    #               can get the ID from the <a>ListRoots</a> operation.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a root ID string requires "r-" followed by
    #       from 4 to 32 lowercase letters or digits.</p>
    #
    # @option params [String] :policy_type
    #   <p>The policy type that you want to disable in this root. You can specify one of the
    #               following values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">SERVICE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::DisablePolicyTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disable_policy_type(
    #     root_id: 'RootId', # required
    #     policy_type: 'SERVICE_CONTROL_POLICY' # required - accepts ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisablePolicyTypeOutput
    #   resp.data.root #=> Types::Root
    #   resp.data.root.id #=> String
    #   resp.data.root.arn #=> String
    #   resp.data.root.name #=> String
    #   resp.data.root.policy_types #=> Array<PolicyTypeSummary>
    #   resp.data.root.policy_types[0] #=> Types::PolicyTypeSummary
    #   resp.data.root.policy_types[0].type #=> String, one of ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #   resp.data.root.policy_types[0].status #=> String, one of ["ENABLED", "PENDING_ENABLE", "PENDING_DISABLE"]
    #
    def disable_policy_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisablePolicyTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisablePolicyTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisablePolicyType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::PolicyChangesInProgressException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::PolicyTypeNotEnabledException, Errors::RootNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::DisablePolicyType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisablePolicyType,
        stubs: @stubs,
        params_class: Params::DisablePolicyTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disable_policy_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the integration of an Amazon Web Services service (the service that is specified by
    #                 <code>ServicePrincipal</code>) with Organizations. When you enable integration, you allow
    #             the specified service to create a <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html">service-linked role</a> in
    #             all the accounts in your organization. This allows the service to perform operations on
    #             your behalf in your organization and its accounts.</p>
    #         <important>
    #             <p>We recommend that you enable integration between Organizations and the specified Amazon Web Services
    #                 service by using the console or commands that are provided by the specified service.
    #                 Doing so ensures that the service is aware that it can create the resources that are
    #                 required for the integration. How the service creates those resources in the
    #                 organization's accounts depends on that service. For more information, see the
    #                 documentation for the other Amazon Web Services service.</p>
    #         </important>
    #         <p>For more information about enabling services to integrate with Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Integrating
    #                 Organizations with Other Amazon Web Services Services</a> in the
    #                 <i>Organizations User Guide.</i>
    #          </p>
    #         <p>This operation can be called only from the organization's management account and only
    #             if the organization has <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">enabled all
    #                 features</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableAWSServiceAccessInput}.
    #
    # @option params [String] :service_principal
    #   <p>The service principal name of the Amazon Web Services service for which you want to enable
    #               integration with your organization. This is typically in the form of a URL, such as
    #                       <code>
    #                  <i>service-abbreviation</i>.amazonaws.com</code>.</p>
    #
    # @return [Types::EnableAWSServiceAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_aws_service_access(
    #     service_principal: 'ServicePrincipal' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableAWSServiceAccessOutput
    #
    def enable_aws_service_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableAWSServiceAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableAWSServiceAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableAWSServiceAccess
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::EnableAWSServiceAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableAWSServiceAccess,
        stubs: @stubs,
        params_class: Params::EnableAWSServiceAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_aws_service_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables all features in an organization. This enables the use of organization policies
    #             that can restrict the services and actions that can be called in each account. Until you
    #             enable all features, you have access only to consolidated billing, and you can't use any
    #             of the advanced account administration features that Organizations supports. For more
    #             information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling All Features in Your Organization</a> in the
    #                 <i>Organizations User Guide.</i>
    #          </p>
    #         <important>
    #             <p>This operation is required only for organizations that were created explicitly
    #                 with only the consolidated billing features enabled. Calling this operation sends a
    #                 handshake to every invited account in the organization. The feature set change can
    #                 be finalized and the additional features enabled only after all administrators in
    #                 the invited accounts approve the change by accepting the handshake.</p>
    #         </important>
    #         <p>After you enable all features, you can separately enable or disable individual policy
    #             types in a root using <a>EnablePolicyType</a> and <a>DisablePolicyType</a>. To see the status of policy types in a root, use
    #                 <a>ListRoots</a>.</p>
    #         <p>After all invited member accounts accept the handshake, you finalize the feature set
    #             change by accepting the handshake that contains <code>"Action":
    #                 "ENABLE_ALL_FEATURES"</code>. This completes the change.</p>
    #         <p>After you enable all features in your organization, the management account in the
    #             organization can apply policies on all member accounts. These policies can restrict what
    #             users and even administrators in those accounts can do. The management account can apply
    #             policies that prevent accounts from leaving the organization. Ensure that your account
    #             administrators are aware of this.</p>
    #         <p>This operation can be called only from the organization's management account.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableAllFeaturesInput}.
    #
    # @return [Types::EnableAllFeaturesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_all_features()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableAllFeaturesOutput
    #   resp.data.handshake #=> Types::Handshake
    #   resp.data.handshake.id #=> String
    #   resp.data.handshake.arn #=> String
    #   resp.data.handshake.parties #=> Array<HandshakeParty>
    #   resp.data.handshake.parties[0] #=> Types::HandshakeParty
    #   resp.data.handshake.parties[0].id #=> String
    #   resp.data.handshake.parties[0].type #=> String, one of ["ACCOUNT", "ORGANIZATION", "EMAIL"]
    #   resp.data.handshake.state #=> String, one of ["REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"]
    #   resp.data.handshake.requested_timestamp #=> Time
    #   resp.data.handshake.expiration_timestamp #=> Time
    #   resp.data.handshake.action #=> String, one of ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"]
    #   resp.data.handshake.resources #=> Array<HandshakeResource>
    #   resp.data.handshake.resources[0] #=> Types::HandshakeResource
    #   resp.data.handshake.resources[0].value #=> String
    #   resp.data.handshake.resources[0].type #=> String, one of ["ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"]
    #   resp.data.handshake.resources[0].resources #=> Array<HandshakeResource>
    #
    def enable_all_features(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableAllFeaturesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableAllFeaturesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableAllFeatures
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::HandshakeConstraintViolationException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::EnableAllFeatures
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableAllFeatures,
        stubs: @stubs,
        params_class: Params::EnableAllFeaturesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_all_features
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables a policy type in a root. After you enable a policy type in a root, you can
    #             attach policies of that type to the root, any organizational unit (OU), or account in
    #             that root. You can undo this by using the <a>DisablePolicyType</a>
    #             operation.</p>
    #         <p>This is an asynchronous request that Amazon Web Services performs in the background. Amazon Web Services
    #             recommends that you first use <a>ListRoots</a> to see the status of policy
    #             types for a specified root, and then use this operation.</p>
    #         <p>This operation can be called only from the organization's management account.</p>
    #         <p>You can enable a policy type in a root only if that policy type is available in the
    #             organization. To view the status of available policy types in the organization, use
    #                 <a>DescribeOrganization</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::EnablePolicyTypeInput}.
    #
    # @option params [String] :root_id
    #   <p>The unique identifier (ID) of the root in which you want to enable a policy type. You
    #               can get the ID from the <a>ListRoots</a> operation.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a root ID string requires "r-" followed by
    #       from 4 to 32 lowercase letters or digits.</p>
    #
    # @option params [String] :policy_type
    #   <p>The policy type that you want to enable. You can specify one of the following
    #               values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">SERVICE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @return [Types::EnablePolicyTypeOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_policy_type(
    #     root_id: 'RootId', # required
    #     policy_type: 'SERVICE_CONTROL_POLICY' # required - accepts ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnablePolicyTypeOutput
    #   resp.data.root #=> Types::Root
    #   resp.data.root.id #=> String
    #   resp.data.root.arn #=> String
    #   resp.data.root.name #=> String
    #   resp.data.root.policy_types #=> Array<PolicyTypeSummary>
    #   resp.data.root.policy_types[0] #=> Types::PolicyTypeSummary
    #   resp.data.root.policy_types[0].type #=> String, one of ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #   resp.data.root.policy_types[0].status #=> String, one of ["ENABLED", "PENDING_ENABLE", "PENDING_DISABLE"]
    #
    def enable_policy_type(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnablePolicyTypeInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnablePolicyTypeInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnablePolicyType
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PolicyTypeNotAvailableForOrganizationException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::ConcurrentModificationException, Errors::RootNotFoundException, Errors::PolicyTypeAlreadyEnabledException, Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::PolicyChangesInProgressException, Errors::AccessDeniedException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::EnablePolicyType
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnablePolicyType,
        stubs: @stubs,
        params_class: Params::EnablePolicyTypeOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_policy_type
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sends an invitation to another account to join your organization as a member account.
    #             Organizations sends email on your behalf to the email address that is associated with the
    #             other account's owner. The invitation is implemented as a <a>Handshake</a>
    #             whose details are in the response.</p>
    #         <important>
    #             <ul>
    #                <li>
    #                     <p>You can invite Amazon Web Services accounts only from the same seller as the management
    #                         account. For example, if your organization's management account was created
    #                         by Amazon Internet Services Pvt. Ltd (AISPL), an Amazon Web Services seller in India, you
    #                         can invite only other AISPL accounts to your organization. You can't combine
    #                         accounts from AISPL and Amazon Web Services or from any other Amazon Web Services seller. For more
    #                         information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/useconsolidatedbilliing-India.html">Consolidated
    #                             Billing in India</a>.</p>
    #                 </li>
    #                <li>
    #                     <p>If you receive an exception that indicates that you exceeded your account
    #                         limits for the organization or that the operation failed because your
    #                         organization is still initializing, wait one hour and then try again. If the
    #                         error persists after an hour, contact <a href="https://console.aws.amazon.com/support/home#/">Amazon Web Services Support</a>.</p>
    #                 </li>
    #             </ul>
    #         </important>
    #         <p>If the request includes tags, then the requester must have the
    #                 <code>organizations:TagResource</code> permission.</p>
    #         <p>This operation can be called only from the organization's management account.</p>
    #
    # @param [Hash] params
    #   See {Types::InviteAccountToOrganizationInput}.
    #
    # @option params [HandshakeParty] :target
    #   <p>The identifier (ID) of the Amazon Web Services account that you want to invite to join your
    #               organization. This is a JSON object that contains the following elements:</p>
    #           <p>
    #               <code>{ "Type": "ACCOUNT", "Id": "<<i>
    #                     <b>account id
    #                           number</b>
    #                  </i>>" }</code>
    #           </p>
    #           <p>If you use the CLI, you can submit this as a single string, similar to the following
    #               example:</p>
    #           <p>
    #               <code>--target Id=123456789012,Type=ACCOUNT</code>
    #           </p>
    #           <p>If you specify <code>"Type": "ACCOUNT"</code>, you must provide the Amazon Web Services account ID
    #               number as the <code>Id</code>. If you specify <code>"Type": "EMAIL"</code>, you must
    #               specify the email address that is associated with the account.</p>
    #           <p>
    #               <code>--target Id=diego@example.com,Type=EMAIL</code>
    #           </p>
    #
    # @option params [String] :notes
    #   <p>Additional information that you want to include in the generated email to the
    #               recipient account owner.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags that you want to attach to the account when it becomes a member of the
    #               organization. For each tag in the list, you must specify both a tag key and a value. You
    #               can set the value to an empty string, but you can't set it to <code>null</code>. For
    #               more information about tagging, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html">Tagging Organizations resources</a> in the
    #               Organizations User Guide.</p>
    #           <important>
    #               <p>Any tags in the request are checked for compliance with any applicable tag
    #                   policies when the request is made. The request is rejected if the tags in the
    #                   request don't match the requirements of the policy at that time. Tag policy
    #                   compliance is <i>
    #                     <b>not</b>
    #                  </i> checked
    #                   again when the invitation is accepted and the tags are actually attached to the
    #                   account. That means that if the tag policy changes between the invitation and the
    #                   acceptance, then that tags could potentially be non-compliant.</p>
    #           </important>
    #           <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed number of tags for
    #                   an account, then the entire request fails and invitations are not sent.</p>
    #           </note>
    #
    # @return [Types::InviteAccountToOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.invite_account_to_organization(
    #     target: {
    #       id: 'Id', # required
    #       type: 'ACCOUNT' # required - accepts ["ACCOUNT", "ORGANIZATION", "EMAIL"]
    #     }, # required
    #     notes: 'Notes',
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
    #   resp.data #=> Types::InviteAccountToOrganizationOutput
    #   resp.data.handshake #=> Types::Handshake
    #   resp.data.handshake.id #=> String
    #   resp.data.handshake.arn #=> String
    #   resp.data.handshake.parties #=> Array<HandshakeParty>
    #   resp.data.handshake.parties[0] #=> Types::HandshakeParty
    #   resp.data.handshake.parties[0].id #=> String
    #   resp.data.handshake.parties[0].type #=> String, one of ["ACCOUNT", "ORGANIZATION", "EMAIL"]
    #   resp.data.handshake.state #=> String, one of ["REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"]
    #   resp.data.handshake.requested_timestamp #=> Time
    #   resp.data.handshake.expiration_timestamp #=> Time
    #   resp.data.handshake.action #=> String, one of ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"]
    #   resp.data.handshake.resources #=> Array<HandshakeResource>
    #   resp.data.handshake.resources[0] #=> Types::HandshakeResource
    #   resp.data.handshake.resources[0].value #=> String
    #   resp.data.handshake.resources[0].type #=> String, one of ["ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"]
    #   resp.data.handshake.resources[0].resources #=> Array<HandshakeResource>
    #
    def invite_account_to_organization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InviteAccountToOrganizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InviteAccountToOrganizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InviteAccountToOrganization
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::DuplicateHandshakeException, Errors::HandshakeConstraintViolationException, Errors::AccountOwnerNotVerifiedException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::FinalizingOrganizationException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::InviteAccountToOrganization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InviteAccountToOrganization,
        stubs: @stubs,
        params_class: Params::InviteAccountToOrganizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :invite_account_to_organization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a member account from its parent organization. This version of the operation
    #             is performed by the account that wants to leave. To remove a member account as a user in
    #             the management account, use <a>RemoveAccountFromOrganization</a>
    #             instead.</p>
    #         <p>This operation can be called only from a member account in the organization.</p>
    #         <important>
    #             <ul>
    #                <li>
    #                     <p>The management account in an organization with all features enabled can
    #                         set service control policies (SCPs) that can restrict what administrators of
    #                         member accounts can do. This includes preventing them from successfully
    #                         calling <code>LeaveOrganization</code> and leaving the organization.</p>
    #                 </li>
    #                <li>
    #                     <p>You can leave an organization as a member account only if the account is
    #                         configured with the information required to operate as a standalone account.
    #                         When you create an account in an organization using the Organizations console,
    #                         API, or CLI commands, the information required of standalone accounts is
    #                             <i>not</i> automatically collected. For each account that
    #                         you want to make standalone, you must perform the following steps. If any of
    #                         the steps are already completed for this account, that step doesn't
    #                         appear.</p>
    #                     <ul>
    #                      <li>
    #                             <p>Choose a support plan</p>
    #                         </li>
    #                      <li>
    #                             <p>Provide and verify the required contact information</p>
    #                         </li>
    #                      <li>
    #                             <p>Provide a current payment method</p>
    #                         </li>
    #                   </ul>
    #                     <p>Amazon Web Services uses the payment method to charge for any billable (not free tier)
    #                         Amazon Web Services activity that occurs while the account isn't attached to an
    #                         organization. Follow the steps at <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info"> To leave an organization when all required account information has not
    #                             yet been provided</a> in the
    #                         <i>Organizations User Guide.</i>
    #                   </p>
    #                 </li>
    #                <li>
    #                     <p>The account that you want to leave must not be a delegated administrator
    #                         account for any Amazon Web Services service enabled for your organization. If the account
    #                         is a delegated administrator, you must first change the delegated
    #                         administrator account to another account that is remaining in the
    #                         organization.</p>
    #                 </li>
    #                <li>
    #                     <p>You can leave an organization only after you enable IAM user access to
    #                         billing in your account. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">Activating Access to the Billing and Cost Management Console</a> in the
    #                             <i>Amazon Web Services Billing and Cost Management User Guide.</i>
    #                   </p>
    #                 </li>
    #                <li>
    #                     <p>After the account leaves the organization, all tags that were attached to
    #                         the account object in the organization are deleted. Amazon Web Services accounts outside
    #                         of an organization do not support tags.</p>
    #                 </li>
    #                <li>
    #                     <p>A newly created account has a waiting period before it can be removed from
    #                         its organization. If you get an error that indicates that a wait period is
    #                         required, then try again in a few days.</p>
    #                 </li>
    #             </ul>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::LeaveOrganizationInput}.
    #
    # @return [Types::LeaveOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.leave_organization()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::LeaveOrganizationOutput
    #
    def leave_organization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::LeaveOrganizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::LeaveOrganizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::LeaveOrganization
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AccountNotFoundException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::MasterCannotLeaveOrganizationException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::LeaveOrganization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::LeaveOrganization,
        stubs: @stubs,
        params_class: Params::LeaveOrganizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :leave_organization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of the Amazon Web Services services that you enabled to integrate with your
    #             organization. After a service on this list creates the resources that it requires for
    #             the integration, it can perform operations on your organization and its accounts.</p>
    #         <p>For more information about integrating other services with Organizations, including the
    #             list of services that currently work with Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Integrating Organizations with Other
    #                 Amazon Web Services Services</a> in the <i>Organizations User Guide.</i>
    #          </p>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAWSServiceAccessForOrganizationInput}.
    #
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    # @return [Types::ListAWSServiceAccessForOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aws_service_access_for_organization(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAWSServiceAccessForOrganizationOutput
    #   resp.data.enabled_service_principals #=> Array<EnabledServicePrincipal>
    #   resp.data.enabled_service_principals[0] #=> Types::EnabledServicePrincipal
    #   resp.data.enabled_service_principals[0].service_principal #=> String
    #   resp.data.enabled_service_principals[0].date_enabled #=> Time
    #   resp.data.next_token #=> String
    #
    def list_aws_service_access_for_organization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAWSServiceAccessForOrganizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAWSServiceAccessForOrganizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAWSServiceAccessForOrganization
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::AccessDeniedException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListAWSServiceAccessForOrganization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAWSServiceAccessForOrganization,
        stubs: @stubs,
        params_class: Params::ListAWSServiceAccessForOrganizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_aws_service_access_for_organization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the accounts in the organization. To request only the accounts in a
    #             specified root or organizational unit (OU), use the <a>ListAccountsForParent</a> operation instead.</p>
    #         <note>
    #             <p>Always check the <code>NextToken</code> response parameter
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can
    # occasionally return an empty set of results even when there are more results available. The
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i>
    # when there are no more results to display.</p>
    #          </note>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAccountsInput}.
    #
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    # @return [Types::ListAccountsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accounts(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccountsOutput
    #   resp.data.accounts #=> Array<Account>
    #   resp.data.accounts[0] #=> Types::Account
    #   resp.data.accounts[0].id #=> String
    #   resp.data.accounts[0].arn #=> String
    #   resp.data.accounts[0].email #=> String
    #   resp.data.accounts[0].name #=> String
    #   resp.data.accounts[0].status #=> String, one of ["ACTIVE", "SUSPENDED", "PENDING_CLOSURE"]
    #   resp.data.accounts[0].joined_method #=> String, one of ["INVITED", "CREATED"]
    #   resp.data.accounts[0].joined_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_accounts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccountsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccountsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccounts
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::AccessDeniedException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListAccounts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccounts,
        stubs: @stubs,
        params_class: Params::ListAccountsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_accounts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the accounts in an organization that are contained by the specified target root
    #             or organizational unit (OU). If you specify the root, you get a list of all the accounts
    #             that aren't in any OU. If you specify an OU, you get a list of all the accounts in only
    #             that OU and not in any child OUs. To get a list of all accounts in the organization, use
    #             the <a>ListAccounts</a> operation.</p>
    #         <note>
    #             <p>Always check the <code>NextToken</code> response parameter
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can
    # occasionally return an empty set of results even when there are more results available. The
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i>
    # when there are no more results to display.</p>
    #          </note>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAccountsForParentInput}.
    #
    # @option params [String] :parent_id
    #   <p>The unique identifier (ID) for the parent root or organization unit (OU) whose
    #               accounts you want to list.</p>
    #
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    # @return [Types::ListAccountsForParentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accounts_for_parent(
    #     parent_id: 'ParentId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccountsForParentOutput
    #   resp.data.accounts #=> Array<Account>
    #   resp.data.accounts[0] #=> Types::Account
    #   resp.data.accounts[0].id #=> String
    #   resp.data.accounts[0].arn #=> String
    #   resp.data.accounts[0].email #=> String
    #   resp.data.accounts[0].name #=> String
    #   resp.data.accounts[0].status #=> String, one of ["ACTIVE", "SUSPENDED", "PENDING_CLOSURE"]
    #   resp.data.accounts[0].joined_method #=> String, one of ["INVITED", "CREATED"]
    #   resp.data.accounts[0].joined_timestamp #=> Time
    #   resp.data.next_token #=> String
    #
    def list_accounts_for_parent(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccountsForParentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccountsForParentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccountsForParent
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::AccessDeniedException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::ParentNotFoundException]),
        data_parser: Parsers::ListAccountsForParent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccountsForParent,
        stubs: @stubs,
        params_class: Params::ListAccountsForParentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_accounts_for_parent
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all of the organizational units (OUs) or accounts that are contained in the
    #             specified parent OU or root. This operation, along with <a>ListParents</a>
    #             enables you to traverse the tree structure that makes up this root.</p>
    #         <note>
    #             <p>Always check the <code>NextToken</code> response parameter
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can
    # occasionally return an empty set of results even when there are more results available. The
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i>
    # when there are no more results to display.</p>
    #          </note>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #
    # @param [Hash] params
    #   See {Types::ListChildrenInput}.
    #
    # @option params [String] :parent_id
    #   <p>The unique identifier (ID) for the parent root or OU whose children you want to
    #               list.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :child_type
    #   <p>Filters the output to include only the specified child type.</p>
    #
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    # @return [Types::ListChildrenOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_children(
    #     parent_id: 'ParentId', # required
    #     child_type: 'ACCOUNT', # required - accepts ["ACCOUNT", "ORGANIZATIONAL_UNIT"]
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListChildrenOutput
    #   resp.data.children #=> Array<Child>
    #   resp.data.children[0] #=> Types::Child
    #   resp.data.children[0].id #=> String
    #   resp.data.children[0].type #=> String, one of ["ACCOUNT", "ORGANIZATIONAL_UNIT"]
    #   resp.data.next_token #=> String
    #
    def list_children(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListChildrenInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListChildrenInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListChildren
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::AccessDeniedException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::ParentNotFoundException]),
        data_parser: Parsers::ListChildren
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListChildren,
        stubs: @stubs,
        params_class: Params::ListChildrenOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_children
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the account creation requests that match the specified status that is currently
    #             being tracked for the organization.</p>
    #         <note>
    #             <p>Always check the <code>NextToken</code> response parameter
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can
    # occasionally return an empty set of results even when there are more results available. The
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i>
    # when there are no more results to display.</p>
    #          </note>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #
    # @param [Hash] params
    #   See {Types::ListCreateAccountStatusInput}.
    #
    # @option params [Array<String>] :states
    #   <p>A list of one or more states that you want included in the response. If this parameter
    #               isn't present, all requests are included in the response.</p>
    #
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    # @return [Types::ListCreateAccountStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_create_account_status(
    #     states: [
    #       'IN_PROGRESS' # accepts ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #     ],
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListCreateAccountStatusOutput
    #   resp.data.create_account_statuses #=> Array<CreateAccountStatus>
    #   resp.data.create_account_statuses[0] #=> Types::CreateAccountStatus
    #   resp.data.create_account_statuses[0].id #=> String
    #   resp.data.create_account_statuses[0].account_name #=> String
    #   resp.data.create_account_statuses[0].state #=> String, one of ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #   resp.data.create_account_statuses[0].requested_timestamp #=> Time
    #   resp.data.create_account_statuses[0].completed_timestamp #=> Time
    #   resp.data.create_account_statuses[0].account_id #=> String
    #   resp.data.create_account_statuses[0].gov_cloud_account_id #=> String
    #   resp.data.create_account_statuses[0].failure_reason #=> String, one of ["ACCOUNT_LIMIT_EXCEEDED", "EMAIL_ALREADY_EXISTS", "INVALID_ADDRESS", "INVALID_EMAIL", "CONCURRENT_ACCOUNT_MODIFICATION", "INTERNAL_FAILURE", "GOVCLOUD_ACCOUNT_ALREADY_EXISTS", "MISSING_BUSINESS_VALIDATION", "FAILED_BUSINESS_VALIDATION", "PENDING_BUSINESS_VALIDATION", "INVALID_IDENTITY_FOR_BUSINESS_VALIDATION", "UNKNOWN_BUSINESS_VALIDATION", "MISSING_PAYMENT_INSTRUMENT", "INVALID_PAYMENT_INSTRUMENT"]
    #   resp.data.next_token #=> String
    #
    def list_create_account_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListCreateAccountStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListCreateAccountStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListCreateAccountStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::AccessDeniedException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListCreateAccountStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListCreateAccountStatus,
        stubs: @stubs,
        params_class: Params::ListCreateAccountStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_create_account_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the Amazon Web Services accounts that are designated as delegated administrators in this
    #             organization.</p>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDelegatedAdministratorsInput}.
    #
    # @option params [String] :service_principal
    #   <p>Specifies a service principal name. If specified, then the operation lists the
    #               delegated administrators only for the specified service.</p>
    #           <p>If you don't specify a service principal, the operation lists all delegated
    #               administrators for all services in your organization.</p>
    #
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    # @return [Types::ListDelegatedAdministratorsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_delegated_administrators(
    #     service_principal: 'ServicePrincipal',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDelegatedAdministratorsOutput
    #   resp.data.delegated_administrators #=> Array<DelegatedAdministrator>
    #   resp.data.delegated_administrators[0] #=> Types::DelegatedAdministrator
    #   resp.data.delegated_administrators[0].id #=> String
    #   resp.data.delegated_administrators[0].arn #=> String
    #   resp.data.delegated_administrators[0].email #=> String
    #   resp.data.delegated_administrators[0].name #=> String
    #   resp.data.delegated_administrators[0].status #=> String, one of ["ACTIVE", "SUSPENDED", "PENDING_CLOSURE"]
    #   resp.data.delegated_administrators[0].joined_method #=> String, one of ["INVITED", "CREATED"]
    #   resp.data.delegated_administrators[0].joined_timestamp #=> Time
    #   resp.data.delegated_administrators[0].delegation_enabled_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_delegated_administrators(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDelegatedAdministratorsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDelegatedAdministratorsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDelegatedAdministrators
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::AccessDeniedException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListDelegatedAdministrators
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDelegatedAdministrators,
        stubs: @stubs,
        params_class: Params::ListDelegatedAdministratorsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_delegated_administrators
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List the Amazon Web Services services for which the specified account is a delegated
    #             administrator.</p>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #
    # @param [Hash] params
    #   See {Types::ListDelegatedServicesForAccountInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID number of a delegated administrator account in the organization.</p>
    #
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    # @return [Types::ListDelegatedServicesForAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_delegated_services_for_account(
    #     account_id: 'AccountId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListDelegatedServicesForAccountOutput
    #   resp.data.delegated_services #=> Array<DelegatedService>
    #   resp.data.delegated_services[0] #=> Types::DelegatedService
    #   resp.data.delegated_services[0].service_principal #=> String
    #   resp.data.delegated_services[0].delegation_enabled_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_delegated_services_for_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListDelegatedServicesForAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListDelegatedServicesForAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListDelegatedServicesForAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::AccountNotFoundException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::AccessDeniedException, Errors::AccountNotRegisteredException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListDelegatedServicesForAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListDelegatedServicesForAccount,
        stubs: @stubs,
        params_class: Params::ListDelegatedServicesForAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_delegated_services_for_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the current handshakes that are associated with the account of the requesting
    #             user.</p>
    #         <p>Handshakes that are <code>ACCEPTED</code>, <code>DECLINED</code>,
    #                 <code>CANCELED</code>, or <code>EXPIRED</code> appear in the results of this API for
    #             only 30 days after changing to that state. After that, they're deleted and no longer
    #             accessible.</p>
    #         <note>
    #             <p>Always check the <code>NextToken</code> response parameter
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can
    # occasionally return an empty set of results even when there are more results available. The
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i>
    # when there are no more results to display.</p>
    #          </note>
    #         <p>This operation can be called from any account in the organization.</p>
    #
    # @param [Hash] params
    #   See {Types::ListHandshakesForAccountInput}.
    #
    # @option params [HandshakeFilter] :filter
    #   <p>Filters the handshakes that you want included in the response. The default is all
    #               types. Use the <code>ActionType</code> element to limit the output to only a specified
    #               type, such as <code>INVITE</code>, <code>ENABLE_ALL_FEATURES</code>, or
    #                   <code>APPROVE_ALL_FEATURES</code>. Alternatively, for the
    #                   <code>ENABLE_ALL_FEATURES</code> handshake that generates a separate child handshake
    #               for each member account, you can specify <code>ParentHandshakeId</code> to see only the
    #               handshakes that were generated by that parent request.</p>
    #
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    # @return [Types::ListHandshakesForAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_handshakes_for_account(
    #     filter: {
    #       action_type: 'INVITE', # accepts ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"]
    #       parent_handshake_id: 'ParentHandshakeId'
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListHandshakesForAccountOutput
    #   resp.data.handshakes #=> Array<Handshake>
    #   resp.data.handshakes[0] #=> Types::Handshake
    #   resp.data.handshakes[0].id #=> String
    #   resp.data.handshakes[0].arn #=> String
    #   resp.data.handshakes[0].parties #=> Array<HandshakeParty>
    #   resp.data.handshakes[0].parties[0] #=> Types::HandshakeParty
    #   resp.data.handshakes[0].parties[0].id #=> String
    #   resp.data.handshakes[0].parties[0].type #=> String, one of ["ACCOUNT", "ORGANIZATION", "EMAIL"]
    #   resp.data.handshakes[0].state #=> String, one of ["REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"]
    #   resp.data.handshakes[0].requested_timestamp #=> Time
    #   resp.data.handshakes[0].expiration_timestamp #=> Time
    #   resp.data.handshakes[0].action #=> String, one of ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"]
    #   resp.data.handshakes[0].resources #=> Array<HandshakeResource>
    #   resp.data.handshakes[0].resources[0] #=> Types::HandshakeResource
    #   resp.data.handshakes[0].resources[0].value #=> String
    #   resp.data.handshakes[0].resources[0].type #=> String, one of ["ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"]
    #   resp.data.handshakes[0].resources[0].resources #=> Array<HandshakeResource>
    #   resp.data.next_token #=> String
    #
    def list_handshakes_for_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListHandshakesForAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListHandshakesForAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListHandshakesForAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListHandshakesForAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListHandshakesForAccount,
        stubs: @stubs,
        params_class: Params::ListHandshakesForAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_handshakes_for_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the handshakes that are associated with the organization that the requesting
    #             user is part of. The <code>ListHandshakesForOrganization</code> operation returns a list
    #             of handshake structures. Each structure contains details and status about a
    #             handshake.</p>
    #         <p>Handshakes that are <code>ACCEPTED</code>, <code>DECLINED</code>,
    #                 <code>CANCELED</code>, or <code>EXPIRED</code> appear in the results of this API for
    #             only 30 days after changing to that state. After that, they're deleted and no longer
    #             accessible.</p>
    #         <note>
    #             <p>Always check the <code>NextToken</code> response parameter
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can
    # occasionally return an empty set of results even when there are more results available. The
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i>
    # when there are no more results to display.</p>
    #          </note>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #
    # @param [Hash] params
    #   See {Types::ListHandshakesForOrganizationInput}.
    #
    # @option params [HandshakeFilter] :filter
    #   <p>A filter of the handshakes that you want included in the response. The default is all
    #               types. Use the <code>ActionType</code> element to limit the output to only a specified
    #               type, such as <code>INVITE</code>, <code>ENABLE-ALL-FEATURES</code>, or
    #                   <code>APPROVE-ALL-FEATURES</code>. Alternatively, for the
    #                   <code>ENABLE-ALL-FEATURES</code> handshake that generates a separate child handshake
    #               for each member account, you can specify the <code>ParentHandshakeId</code> to see only
    #               the handshakes that were generated by that parent request.</p>
    #
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    # @return [Types::ListHandshakesForOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_handshakes_for_organization(
    #     filter: {
    #       action_type: 'INVITE', # accepts ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"]
    #       parent_handshake_id: 'ParentHandshakeId'
    #     },
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListHandshakesForOrganizationOutput
    #   resp.data.handshakes #=> Array<Handshake>
    #   resp.data.handshakes[0] #=> Types::Handshake
    #   resp.data.handshakes[0].id #=> String
    #   resp.data.handshakes[0].arn #=> String
    #   resp.data.handshakes[0].parties #=> Array<HandshakeParty>
    #   resp.data.handshakes[0].parties[0] #=> Types::HandshakeParty
    #   resp.data.handshakes[0].parties[0].id #=> String
    #   resp.data.handshakes[0].parties[0].type #=> String, one of ["ACCOUNT", "ORGANIZATION", "EMAIL"]
    #   resp.data.handshakes[0].state #=> String, one of ["REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"]
    #   resp.data.handshakes[0].requested_timestamp #=> Time
    #   resp.data.handshakes[0].expiration_timestamp #=> Time
    #   resp.data.handshakes[0].action #=> String, one of ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"]
    #   resp.data.handshakes[0].resources #=> Array<HandshakeResource>
    #   resp.data.handshakes[0].resources[0] #=> Types::HandshakeResource
    #   resp.data.handshakes[0].resources[0].value #=> String
    #   resp.data.handshakes[0].resources[0].type #=> String, one of ["ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"]
    #   resp.data.handshakes[0].resources[0].resources #=> Array<HandshakeResource>
    #   resp.data.next_token #=> String
    #
    def list_handshakes_for_organization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListHandshakesForOrganizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListHandshakesForOrganizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListHandshakesForOrganization
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListHandshakesForOrganization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListHandshakesForOrganization,
        stubs: @stubs,
        params_class: Params::ListHandshakesForOrganizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_handshakes_for_organization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the organizational units (OUs) in a parent organizational unit or root.</p>
    #         <note>
    #             <p>Always check the <code>NextToken</code> response parameter
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can
    # occasionally return an empty set of results even when there are more results available. The
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i>
    # when there are no more results to display.</p>
    #          </note>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOrganizationalUnitsForParentInput}.
    #
    # @option params [String] :parent_id
    #   <p>The unique identifier (ID) of the root or OU whose child OUs you want to list.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    # @return [Types::ListOrganizationalUnitsForParentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organizational_units_for_parent(
    #     parent_id: 'ParentId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOrganizationalUnitsForParentOutput
    #   resp.data.organizational_units #=> Array<OrganizationalUnit>
    #   resp.data.organizational_units[0] #=> Types::OrganizationalUnit
    #   resp.data.organizational_units[0].id #=> String
    #   resp.data.organizational_units[0].arn #=> String
    #   resp.data.organizational_units[0].name #=> String
    #   resp.data.next_token #=> String
    #
    def list_organizational_units_for_parent(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOrganizationalUnitsForParentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOrganizationalUnitsForParentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOrganizationalUnitsForParent
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::AccessDeniedException, Errors::ServiceException, Errors::TooManyRequestsException, Errors::ParentNotFoundException]),
        data_parser: Parsers::ListOrganizationalUnitsForParent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOrganizationalUnitsForParent,
        stubs: @stubs,
        params_class: Params::ListOrganizationalUnitsForParentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_organizational_units_for_parent
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the root or organizational units (OUs) that serve as the immediate parent of the
    #             specified child OU or account. This operation, along with <a>ListChildren</a>
    #             enables you to traverse the tree structure that makes up this root.</p>
    #         <note>
    #             <p>Always check the <code>NextToken</code> response parameter
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can
    # occasionally return an empty set of results even when there are more results available. The
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i>
    # when there are no more results to display.</p>
    #          </note>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #         <note>
    #             <p>In the current release, a child can have only a single parent.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::ListParentsInput}.
    #
    # @option params [String] :child_id
    #   <p>The unique identifier (ID) of the OU or account whose parent containers you want to
    #               list. Don't specify a root.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a child ID string requires one of the
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Account</b> - A string that consists of exactly 12 digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with
    #             "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that
    #             contains the OU). This string is followed by a second "-" dash and from 8 to 32 additional
    #             lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    # @return [Types::ListParentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_parents(
    #     child_id: 'ChildId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListParentsOutput
    #   resp.data.parents #=> Array<Parent>
    #   resp.data.parents[0] #=> Types::Parent
    #   resp.data.parents[0].id #=> String
    #   resp.data.parents[0].type #=> String, one of ["ROOT", "ORGANIZATIONAL_UNIT"]
    #   resp.data.next_token #=> String
    #
    def list_parents(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListParentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListParentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListParents
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::ChildNotFoundException, Errors::AccessDeniedException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListParents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListParents,
        stubs: @stubs,
        params_class: Params::ListParentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_parents
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the list of all policies in an organization of a specified type.</p>
    #         <note>
    #             <p>Always check the <code>NextToken</code> response parameter
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can
    # occasionally return an empty set of results even when there are more results available. The
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i>
    # when there are no more results to display.</p>
    #          </note>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPoliciesInput}.
    #
    # @option params [String] :filter
    #   <p>Specifies the type of policy that you want to include in the response. You must
    #               specify one of the following values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">SERVICE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    # @return [Types::ListPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policies(
    #     filter: 'SERVICE_CONTROL_POLICY', # required - accepts ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPoliciesOutput
    #   resp.data.policies #=> Array<PolicySummary>
    #   resp.data.policies[0] #=> Types::PolicySummary
    #   resp.data.policies[0].id #=> String
    #   resp.data.policies[0].arn #=> String
    #   resp.data.policies[0].name #=> String
    #   resp.data.policies[0].description #=> String
    #   resp.data.policies[0].type #=> String, one of ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #   resp.data.policies[0].aws_managed #=> Boolean
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::AccessDeniedException, Errors::ServiceException, Errors::TooManyRequestsException]),
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

    # <p>Lists the policies that are directly attached to the specified target root,
    #             organizational unit (OU), or account. You must specify the policy type that you want
    #             included in the returned list.</p>
    #         <note>
    #             <p>Always check the <code>NextToken</code> response parameter
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can
    # occasionally return an empty set of results even when there are more results available. The
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i>
    # when there are no more results to display.</p>
    #          </note>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPoliciesForTargetInput}.
    #
    # @option params [String] :target_id
    #   <p>The unique identifier (ID) of the root, organizational unit, or account whose policies
    #               you want to list.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a target ID string requires one of the
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Account</b> - A string that consists of exactly 12 digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :filter
    #   <p>The type of policy that you want to include in the returned list. You must specify one
    #               of the following values:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html">AISERVICES_OPT_OUT_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html">BACKUP_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">SERVICE_CONTROL_POLICY</a>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html">TAG_POLICY</a>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    # @return [Types::ListPoliciesForTargetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policies_for_target(
    #     target_id: 'TargetId', # required
    #     filter: 'SERVICE_CONTROL_POLICY', # required - accepts ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPoliciesForTargetOutput
    #   resp.data.policies #=> Array<PolicySummary>
    #   resp.data.policies[0] #=> Types::PolicySummary
    #   resp.data.policies[0].id #=> String
    #   resp.data.policies[0].arn #=> String
    #   resp.data.policies[0].name #=> String
    #   resp.data.policies[0].description #=> String
    #   resp.data.policies[0].type #=> String, one of ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #   resp.data.policies[0].aws_managed #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_policies_for_target(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPoliciesForTargetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPoliciesForTargetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPoliciesForTarget
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::AccessDeniedException, Errors::ServiceException, Errors::TargetNotFoundException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListPoliciesForTarget
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPoliciesForTarget,
        stubs: @stubs,
        params_class: Params::ListPoliciesForTargetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_policies_for_target
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the roots that are defined in the current organization.</p>
    #         <note>
    #             <p>Always check the <code>NextToken</code> response parameter
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can
    # occasionally return an empty set of results even when there are more results available. The
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i>
    # when there are no more results to display.</p>
    #          </note>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #         <note>
    #             <p>Policy types can be enabled and disabled in roots. This is distinct from whether
    #                 they're available in the organization. When you enable all features, you make policy
    #                 types available for use in that organization. Individual policy types can then be
    #                 enabled and disabled in a root. To see the availability of a policy type in an
    #                 organization, use <a>DescribeOrganization</a>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::ListRootsInput}.
    #
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    # @return [Types::ListRootsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_roots(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRootsOutput
    #   resp.data.roots #=> Array<Root>
    #   resp.data.roots[0] #=> Types::Root
    #   resp.data.roots[0].id #=> String
    #   resp.data.roots[0].arn #=> String
    #   resp.data.roots[0].name #=> String
    #   resp.data.roots[0].policy_types #=> Array<PolicyTypeSummary>
    #   resp.data.roots[0].policy_types[0] #=> Types::PolicyTypeSummary
    #   resp.data.roots[0].policy_types[0].type #=> String, one of ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #   resp.data.roots[0].policy_types[0].status #=> String, one of ["ENABLED", "PENDING_ENABLE", "PENDING_DISABLE"]
    #   resp.data.next_token #=> String
    #
    def list_roots(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRootsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRootsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRoots
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::AccessDeniedException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListRoots
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRoots,
        stubs: @stubs,
        params_class: Params::ListRootsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_roots
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists tags that are attached to the specified resource.</p>
    #         <p>You can attach tags to the following resources in Organizations.</p>
    #         <ul>
    #             <li>
    #                 <p>Amazon Web Services account</p>
    #             </li>
    #             <li>
    #                 <p>Organization root</p>
    #             </li>
    #             <li>
    #                 <p>Organizational unit (OU)</p>
    #             </li>
    #             <li>
    #                 <p>Policy (any type)</p>
    #             </li>
    #          </ul>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_id
    #   <p>The ID of the resource with the tags to list.</p>
    #           <p>You can specify any of the following taggable resources.</p>
    #           <ul>
    #               <li>
    #                   <p>Amazon Web Services account – specify the account ID number.</p>
    #               </li>
    #               <li>
    #                   <p>Organizational unit  – specify the OU ID that begins with <code>ou-</code> and
    #                       looks similar to: <code>ou-<i>1a2b-34uvwxyz</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>Root – specify the root ID that begins with <code>r-</code> and looks similar
    #                       to: <code>r-<i>1a2b</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>Policy – specify the policy ID that begins with <code>p-</code> andlooks
    #                       similar to: <code>p-<i>12abcdefg3</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_id: 'ResourceId', # required
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.next_token #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::AccessDeniedException, Errors::ServiceException, Errors::TargetNotFoundException, Errors::TooManyRequestsException]),
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

    # <p>Lists all the roots, organizational units (OUs), and accounts that the specified
    #             policy is attached to.</p>
    #         <note>
    #             <p>Always check the <code>NextToken</code> response parameter
    # for a <code>null</code> value when calling a <code>List*</code> operation. These operations can
    # occasionally return an empty set of results even when there are more results available. The
    # <code>NextToken</code> response parameter value is <code>null</code>
    #                <i>only</i>
    # when there are no more results to display.</p>
    #          </note>
    #         <p>This operation can be called only from the organization's
    # management account or by a member account that is a delegated administrator for an Amazon Web Services service.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTargetsForPolicyInput}.
    #
    # @option params [String] :policy_id
    #   <p>The unique identifier (ID) of the policy whose attachments you want to know.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #
    # @option params [String] :next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    # @return [Types::ListTargetsForPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_targets_for_policy(
    #     policy_id: 'PolicyId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTargetsForPolicyOutput
    #   resp.data.targets #=> Array<PolicyTargetSummary>
    #   resp.data.targets[0] #=> Types::PolicyTargetSummary
    #   resp.data.targets[0].target_id #=> String
    #   resp.data.targets[0].arn #=> String
    #   resp.data.targets[0].name #=> String
    #   resp.data.targets[0].type #=> String, one of ["ACCOUNT", "ORGANIZATIONAL_UNIT", "ROOT"]
    #   resp.data.next_token #=> String
    #
    def list_targets_for_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTargetsForPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTargetsForPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTargetsForPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::AccessDeniedException, Errors::PolicyNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::ListTargetsForPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTargetsForPolicy,
        stubs: @stubs,
        params_class: Params::ListTargetsForPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_targets_for_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Moves an account from its current source parent root or organizational unit (OU) to
    #             the specified destination parent root or OU.</p>
    #         <p>This operation can be called only from the organization's management account.</p>
    #
    # @param [Hash] params
    #   See {Types::MoveAccountInput}.
    #
    # @option params [String] :account_id
    #   <p>The unique identifier (ID) of the account that you want to move.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12
    #       digits.</p>
    #
    # @option params [String] :source_parent_id
    #   <p>The unique identifier (ID) of the root or organizational unit that you want to move
    #               the account from.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :destination_parent_id
    #   <p>The unique identifier (ID) of the root or organizational unit that you want to move
    #               the account to.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a parent ID string requires one of the
    #       following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <b>Root</b> - A string that begins with "r-" followed by from 4 to 32 lowercase letters or
    #             digits.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <b>Organizational unit (OU)</b> - A string that begins with "ou-" followed by from 4 to 32
    #             lowercase letters or digits (the ID of the root that the OU is in). This string is followed by a second
    #             "-" dash and from 8 to 32 additional lowercase letters or digits.</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::MoveAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.move_account(
    #     account_id: 'AccountId', # required
    #     source_parent_id: 'SourceParentId', # required
    #     destination_parent_id: 'DestinationParentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::MoveAccountOutput
    #
    def move_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::MoveAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::MoveAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::MoveAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AccountNotFoundException, Errors::AWSOrganizationsNotInUseException, Errors::SourceParentNotFoundException, Errors::DestinationParentNotFoundException, Errors::AccessDeniedException, Errors::DuplicateAccountException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::MoveAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::MoveAccount,
        stubs: @stubs,
        params_class: Params::MoveAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :move_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the specified member account to administer the Organizations features of the specified
    #             Amazon Web Services service. It grants read-only access to Organizations service data. The account still
    #             requires IAM permissions to access and administer the Amazon Web Services service.</p>
    #         <p>You can run this action only for Amazon Web Services services that support this
    #     feature. For a current list of services that support it, see the column <i>Supports
    #     Delegated Administrator</i> in the table at <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services_list.html">Amazon Web Services Services that you can use with
    #     Organizations</a> in the <i>Organizations User Guide.</i>
    #          </p>
    #         <p>This operation can be called only from the organization's management account.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterDelegatedAdministratorInput}.
    #
    # @option params [String] :account_id
    #   <p>The account ID number of the member account in the organization to register as a
    #               delegated administrator.</p>
    #
    # @option params [String] :service_principal
    #   <p>The service principal of the Amazon Web Services service for which you want to make the member
    #               account a delegated administrator.</p>
    #
    # @return [Types::RegisterDelegatedAdministratorOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_delegated_administrator(
    #     account_id: 'AccountId', # required
    #     service_principal: 'ServicePrincipal' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterDelegatedAdministratorOutput
    #
    def register_delegated_administrator(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterDelegatedAdministratorInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterDelegatedAdministratorInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterDelegatedAdministrator
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnsupportedAPIEndpointException, Errors::InvalidInputException, Errors::AccountNotFoundException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::AccountAlreadyRegisteredException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::RegisterDelegatedAdministrator
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterDelegatedAdministrator,
        stubs: @stubs,
        params_class: Params::RegisterDelegatedAdministratorOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_delegated_administrator
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified account from the organization.</p>
    #         <p>The removed account becomes a standalone account that isn't a member of any
    #             organization. It's no longer subject to any policies and is responsible for its own bill
    #             payments. The organization's management account is no longer charged for any expenses
    #             accrued by the member account after it's removed from the organization.</p>
    #         <p>This operation can be called only from the organization's management account. Member accounts can remove themselves with <a>LeaveOrganization</a> instead.</p>
    #         <important>
    #             <ul>
    #                <li>
    #                     <p>You can remove an account from your organization only if the account is
    #                         configured with the information required to operate as a standalone account.
    #                         When you create an account in an organization using the Organizations console,
    #                         API, or CLI commands, the information required of standalone accounts is
    #                             <i>not</i> automatically collected. For an account that
    #                         you want to make standalone, you must choose a support plan, provide and
    #                         verify the required contact information, and provide a current payment
    #                         method. Amazon Web Services uses the payment method to charge for any billable (not free
    #                         tier) Amazon Web Services activity that occurs while the account isn't attached to an
    #                         organization. To remove an account that doesn't yet have this information,
    #                         you must sign in as the member account and follow the steps at <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info"> To leave an organization when all required account information has not
    #                             yet been provided</a> in the
    #                         <i>Organizations User Guide.</i>
    #                   </p>
    #                 </li>
    #                <li>
    #                     <p>The account that you want to leave must not be a delegated administrator
    #                         account for any Amazon Web Services service enabled for your organization. If the account
    #                         is a delegated administrator, you must first change the delegated
    #                         administrator account to another account that is remaining in the
    #                         organization.</p>
    #                 </li>
    #                <li>
    #                     <p>After the account leaves the organization, all tags that were attached to
    #                         the account object in the organization are deleted. Amazon Web Services accounts outside
    #                         of an organization do not support tags.</p>
    #                 </li>
    #             </ul>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::RemoveAccountFromOrganizationInput}.
    #
    # @option params [String] :account_id
    #   <p>The unique identifier (ID) of the member account that you want to remove from the
    #               organization.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12
    #       digits.</p>
    #
    # @return [Types::RemoveAccountFromOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_account_from_organization(
    #     account_id: 'AccountId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveAccountFromOrganizationOutput
    #
    def remove_account_from_organization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveAccountFromOrganizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveAccountFromOrganizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveAccountFromOrganization
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AccountNotFoundException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::MasterCannotLeaveOrganizationException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::RemoveAccountFromOrganization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveAccountFromOrganization,
        stubs: @stubs,
        params_class: Params::RemoveAccountFromOrganizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_account_from_organization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to the specified resource.</p>
    #         <p>Currently, you can attach tags to the following resources in Organizations.</p>
    #         <ul>
    #             <li>
    #                 <p>Amazon Web Services account</p>
    #             </li>
    #             <li>
    #                 <p>Organization root</p>
    #             </li>
    #             <li>
    #                 <p>Organizational unit (OU)</p>
    #             </li>
    #             <li>
    #                 <p>Policy (any type)</p>
    #             </li>
    #          </ul>
    #         <p>This operation can be called only from the organization's management account.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_id
    #   <p>The ID of the resource to add a tag to.</p>
    #           <p>You can specify any of the following taggable resources.</p>
    #           <ul>
    #               <li>
    #                   <p>Amazon Web Services account – specify the account ID number.</p>
    #               </li>
    #               <li>
    #                   <p>Organizational unit  – specify the OU ID that begins with <code>ou-</code> and
    #                       looks similar to: <code>ou-<i>1a2b-34uvwxyz</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>Root – specify the root ID that begins with <code>r-</code> and looks similar
    #                       to: <code>r-<i>1a2b</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>Policy – specify the policy ID that begins with <code>p-</code> andlooks
    #                       similar to: <code>p-<i>12abcdefg3</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags to add to the specified resource.</p>
    #           <p>For each tag in the list, you must specify both a tag key and a value. The value can
    #               be an empty string, but you can't set it to <code>null</code>.</p>
    #           <note>
    #               <p>If any one of the tags is invalid or if you exceed the maximum allowed number of
    #                   tags for a resource, then the entire request fails.</p>
    #           </note>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_id: 'ResourceId', # required
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
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TargetNotFoundException, Errors::TooManyRequestsException]),
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

    # <p>Removes any tags with the specified keys from the specified resource.</p>
    #         <p>You can attach tags to the following resources in Organizations.</p>
    #         <ul>
    #             <li>
    #                 <p>Amazon Web Services account</p>
    #             </li>
    #             <li>
    #                 <p>Organization root</p>
    #             </li>
    #             <li>
    #                 <p>Organizational unit (OU)</p>
    #             </li>
    #             <li>
    #                 <p>Policy (any type)</p>
    #             </li>
    #          </ul>
    #         <p>This operation can be called only from the organization's management account.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_id
    #   <p>The ID of the resource to remove a tag from.</p>
    #           <p>You can specify any of the following taggable resources.</p>
    #           <ul>
    #               <li>
    #                   <p>Amazon Web Services account – specify the account ID number.</p>
    #               </li>
    #               <li>
    #                   <p>Organizational unit  – specify the OU ID that begins with <code>ou-</code> and
    #                       looks similar to: <code>ou-<i>1a2b-34uvwxyz</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>Root – specify the root ID that begins with <code>r-</code> and looks similar
    #                       to: <code>r-<i>1a2b</i>
    #                     </code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>Policy – specify the policy ID that begins with <code>p-</code> andlooks
    #                       similar to: <code>p-<i>12abcdefg3</i>
    #                     </code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The list of keys for tags to remove from the specified resource.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_id: 'ResourceId', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TargetNotFoundException, Errors::TooManyRequestsException]),
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

    # <p>Renames the specified organizational unit (OU). The ID and ARN don't change. The child
    #             OUs and accounts remain in place, and any attached policies of the OU remain
    #             attached.</p>
    #         <p>This operation can be called only from the organization's management account.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateOrganizationalUnitInput}.
    #
    # @option params [String] :organizational_unit_id
    #   <p>The unique identifier (ID) of the OU that you want to rename. You can get the ID from
    #               the <a>ListOrganizationalUnitsForParent</a> operation.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires
    #       "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the
    #       OU). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters
    #       or digits.</p>
    #
    # @option params [String] :name
    #   <p>The new name that you want to assign to the OU.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       that is used to validate this parameter is a string of any of the characters in the ASCII
    #       character range.</p>
    #
    # @return [Types::UpdateOrganizationalUnitOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_organizational_unit(
    #     organizational_unit_id: 'OrganizationalUnitId', # required
    #     name: 'Name'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateOrganizationalUnitOutput
    #   resp.data.organizational_unit #=> Types::OrganizationalUnit
    #   resp.data.organizational_unit.id #=> String
    #   resp.data.organizational_unit.arn #=> String
    #   resp.data.organizational_unit.name #=> String
    #
    def update_organizational_unit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateOrganizationalUnitInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateOrganizationalUnitInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateOrganizationalUnit
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::AWSOrganizationsNotInUseException, Errors::OrganizationalUnitNotFoundException, Errors::DuplicateOrganizationalUnitException, Errors::AccessDeniedException, Errors::ConcurrentModificationException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdateOrganizationalUnit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateOrganizationalUnit,
        stubs: @stubs,
        params_class: Params::UpdateOrganizationalUnitOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_organizational_unit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing policy with a new name, description, or content. If you don't
    #             supply any parameter, that value remains unchanged. You can't change a policy's
    #             type.</p>
    #         <p>This operation can be called only from the organization's management account.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePolicyInput}.
    #
    # @option params [String] :policy_id
    #   <p>The unique identifier (ID) of the policy that you want to update.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #
    # @option params [String] :name
    #   <p>If provided, the new name for the policy.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       that is used to validate this parameter is a string of any of the characters in the ASCII
    #       character range.</p>
    #
    # @option params [String] :description
    #   <p>If provided, the new description for the policy.</p>
    #
    # @option params [String] :content
    #   <p>If provided, the new content for the policy. The text must be correctly formatted JSON
    #               that complies with the syntax for the policy's type. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html">Service
    #                   Control Policy Syntax</a> in the <i>Organizations User Guide.</i>
    #            </p>
    #
    # @return [Types::UpdatePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_policy(
    #     policy_id: 'PolicyId', # required
    #     name: 'Name',
    #     description: 'Description',
    #     content: 'Content'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePolicyOutput
    #   resp.data.policy #=> Types::Policy
    #   resp.data.policy.policy_summary #=> Types::PolicySummary
    #   resp.data.policy.policy_summary.id #=> String
    #   resp.data.policy.policy_summary.arn #=> String
    #   resp.data.policy.policy_summary.name #=> String
    #   resp.data.policy.policy_summary.description #=> String
    #   resp.data.policy.policy_summary.type #=> String, one of ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #   resp.data.policy.policy_summary.aws_managed #=> Boolean
    #   resp.data.policy.content #=> String
    #
    def update_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AWSOrganizationsNotInUseException, Errors::ConstraintViolationException, Errors::ConcurrentModificationException, Errors::UnsupportedAPIEndpointException, Errors::DuplicatePolicyException, Errors::InvalidInputException, Errors::PolicyChangesInProgressException, Errors::AccessDeniedException, Errors::MalformedPolicyDocumentException, Errors::PolicyNotFoundException, Errors::ServiceException, Errors::TooManyRequestsException]),
        data_parser: Parsers::UpdatePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePolicy,
        stubs: @stubs,
        params_class: Params::UpdatePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_policy
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
