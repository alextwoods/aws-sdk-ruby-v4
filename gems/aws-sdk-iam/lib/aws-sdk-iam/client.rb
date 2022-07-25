# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::IAM
  # An API client for AWSIdentityManagementV20100508
  # See {#initialize} for a full list of supported configuration options
  # <fullname>Identity and Access Management</fullname>
  #          <p>Identity and Access Management (IAM) is a web service for securely controlling
  #       access to Amazon Web Services services. With IAM, you can centrally manage users, security credentials
  #       such as access keys, and permissions that control which Amazon Web Services resources users and
  #       applications can access. For more information about IAM, see <a href="http://aws.amazon.com/iam/">Identity and Access Management (IAM)</a> and the <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/">Identity and Access Management User Guide</a>.</p>
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
    def initialize(config = AWS::SDK::IAM::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds a new client ID (also known as audience) to the list of client IDs already
    #             registered for the specified IAM OpenID Connect (OIDC) provider resource.</p>
    #         <p>This operation is idempotent; it does not fail or return an error if you add an
    #             existing client ID to the provider.</p>
    #
    # @param [Hash] params
    #   See {Types::AddClientIDToOpenIDConnectProviderInput}.
    #
    # @option params [String] :open_id_connect_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM OpenID Connect (OIDC) provider resource to
    #               add the client ID to. You can get a list of OIDC provider ARNs by using the <a>ListOpenIDConnectProviders</a> operation.</p>
    #
    # @option params [String] :client_id
    #   <p>The client ID (also known as audience) to add to the IAM OpenID Connect provider
    #               resource.</p>
    #
    # @return [Types::AddClientIDToOpenIDConnectProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_client_id_to_open_id_connect_provider(
    #     open_id_connect_provider_arn: 'OpenIDConnectProviderArn', # required
    #     client_id: 'ClientID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddClientIDToOpenIDConnectProviderOutput
    #
    def add_client_id_to_open_id_connect_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddClientIDToOpenIDConnectProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddClientIDToOpenIDConnectProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddClientIDToOpenIDConnectProvider
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::AddClientIDToOpenIDConnectProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddClientIDToOpenIDConnectProvider,
        stubs: @stubs,
        params_class: Params::AddClientIDToOpenIDConnectProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_client_id_to_open_id_connect_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds the specified IAM role to the specified instance profile. An instance profile
    #             can contain only one role, and this quota cannot be increased. You can remove the
    #             existing role and then add a different role to an instance profile. You must then wait
    #             for the change to appear across all of Amazon Web Services because of <a href="https://en.wikipedia.org/wiki/Eventual_consistency">eventual
    #                 consistency</a>. To force the change, you must <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_DisassociateIamInstanceProfile.html">disassociate the instance profile</a> and then <a href="https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_AssociateIamInstanceProfile.html">associate the
    #                 instance profile</a>, or you can stop your instance and then restart it.</p>
    #         <note>
    #             <p>The caller of this operation must be granted the <code>PassRole</code> permission
    #                 on the IAM role by a permissions policy.</p>
    #         </note>
    #         <p>For more information about roles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with roles</a>. For more
    #             information about instance profiles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About instance
    #             profiles</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::AddRoleToInstanceProfileInput}.
    #
    # @option params [String] :instance_profile_name
    #   <p>The name of the instance profile to update.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :role_name
    #   <p>The name of the role to add.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::AddRoleToInstanceProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_role_to_instance_profile(
    #     instance_profile_name: 'InstanceProfileName', # required
    #     role_name: 'RoleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddRoleToInstanceProfileOutput
    #
    def add_role_to_instance_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddRoleToInstanceProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddRoleToInstanceProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddRoleToInstanceProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnmodifiableEntityException, Errors::EntityAlreadyExistsException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::AddRoleToInstanceProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddRoleToInstanceProfile,
        stubs: @stubs,
        params_class: Params::AddRoleToInstanceProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_role_to_instance_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds the specified user to the specified group.</p>
    #
    # @param [Hash] params
    #   See {Types::AddUserToGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>The name of the group to update.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :user_name
    #   <p>The name of the user to add.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::AddUserToGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_user_to_group(
    #     group_name: 'GroupName', # required
    #     user_name: 'UserName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddUserToGroupOutput
    #
    def add_user_to_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddUserToGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddUserToGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddUserToGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::AddUserToGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddUserToGroup,
        stubs: @stubs,
        params_class: Params::AddUserToGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_user_to_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches the specified managed policy to the specified IAM group.</p>
    #         <p>You use this operation to attach a managed policy to a group. To embed an inline
    #             policy in a group, use <a>PutGroupPolicy</a>.</p>
    #         <p>As a best practice, you can validate your IAM policies.
    #      To learn more, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html">Validating IAM policies</a>
    #             in the <i>IAM User Guide</i>.</p>
    #         <p>For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::AttachGroupPolicyInput}.
    #
    # @option params [String] :group_name
    #   <p>The name (friendly name, not ARN) of the group to attach the policy to.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @return [Types::AttachGroupPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_group_policy(
    #     group_name: 'GroupName', # required
    #     policy_arn: 'PolicyArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AttachGroupPolicyOutput
    #
    def attach_group_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AttachGroupPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AttachGroupPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AttachGroupPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::PolicyNotAttachableException, Errors::ServiceFailureException]),
        data_parser: Parsers::AttachGroupPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AttachGroupPolicy,
        stubs: @stubs,
        params_class: Params::AttachGroupPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :attach_group_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches the specified managed policy to the specified IAM role. When you attach a
    #             managed policy to a role, the managed policy becomes part of the role's permission
    #             (access) policy.</p>
    #         <note>
    #             <p>You cannot use a managed policy as the role's trust policy. The role's trust
    #                 policy is created at the same time as the role, using <a>CreateRole</a>.
    #                 You can update a role's trust policy using <a>UpdateAssumeRolePolicy</a>.</p>
    #         </note>
    #         <p>Use this operation to attach a <i>managed</i> policy to a role. To embed
    #             an inline policy in a role, use <a>PutRolePolicy</a>. For more information
    #             about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #         <p>As a best practice, you can validate your IAM policies.
    #      To learn more, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html">Validating IAM policies</a>
    #             in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::AttachRolePolicyInput}.
    #
    # @option params [String] :role_name
    #   <p>The name (friendly name, not ARN) of the role to attach the policy to.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @return [Types::AttachRolePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_role_policy(
    #     role_name: 'RoleName', # required
    #     policy_arn: 'PolicyArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AttachRolePolicyOutput
    #
    def attach_role_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AttachRolePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AttachRolePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AttachRolePolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnmodifiableEntityException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::PolicyNotAttachableException, Errors::ServiceFailureException]),
        data_parser: Parsers::AttachRolePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AttachRolePolicy,
        stubs: @stubs,
        params_class: Params::AttachRolePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :attach_role_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches the specified managed policy to the specified user.</p>
    #         <p>You use this operation to attach a <i>managed</i> policy to a user. To
    #             embed an inline policy in a user, use <a>PutUserPolicy</a>.</p>
    #         <p>As a best practice, you can validate your IAM policies.
    #      To learn more, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html">Validating IAM policies</a>
    #             in the <i>IAM User Guide</i>.</p>
    #         <p>For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::AttachUserPolicyInput}.
    #
    # @option params [String] :user_name
    #   <p>The name (friendly name, not ARN) of the IAM user to attach the policy to.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to attach.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @return [Types::AttachUserPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_user_policy(
    #     user_name: 'UserName', # required
    #     policy_arn: 'PolicyArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AttachUserPolicyOutput
    #
    def attach_user_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AttachUserPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AttachUserPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AttachUserPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::PolicyNotAttachableException, Errors::ServiceFailureException]),
        data_parser: Parsers::AttachUserPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AttachUserPolicy,
        stubs: @stubs,
        params_class: Params::AttachUserPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :attach_user_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the password of the IAM user who is calling this operation. This operation
    #             can be performed using the CLI, the Amazon Web Services API, or the <b>My
    #                 Security Credentials</b> page in the Amazon Web Services Management Console. The Amazon Web Services account root user
    #             password is not affected by this operation.</p>
    #         <p>Use <a>UpdateLoginProfile</a> to use the CLI, the Amazon Web Services API, or the
    #                 <b>Users</b> page in the IAM console to change the
    #             password for any IAM user. For more information about modifying passwords, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html">Managing
    #                 passwords</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ChangePasswordInput}.
    #
    # @option params [String] :old_password
    #   <p>The IAM user's current password.</p>
    #
    # @option params [String] :new_password
    #   <p>The new password. The new password must conform to the Amazon Web Services account's password
    #               policy, if one exists.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       that is used to validate this parameter is a string of characters. That string can include almost any printable
    #       ASCII character from the space (<code>\u0020</code>) through the end of the ASCII character range (<code>\u00FF</code>).
    #       You can also include the tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and carriage return (<code>\u000D</code>)
    #       characters. Any of these characters are valid in a password. However, many tools, such
    #       as the Amazon Web Services Management Console, might restrict the ability to type certain characters because they have
    #       special meaning within that tool.</p>
    #
    # @return [Types::ChangePasswordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.change_password(
    #     old_password: 'OldPassword', # required
    #     new_password: 'NewPassword' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ChangePasswordOutput
    #
    def change_password(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ChangePasswordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ChangePasswordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ChangePassword
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityTemporarilyUnmodifiableException, Errors::PasswordPolicyViolationException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidUserTypeException, Errors::ServiceFailureException]),
        data_parser: Parsers::ChangePassword
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ChangePassword,
        stubs: @stubs,
        params_class: Params::ChangePasswordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :change_password
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates a new Amazon Web Services secret access key and corresponding Amazon Web Services access key ID for the
    #             specified user. The default status for new keys is <code>Active</code>.</p>
    #         <p>If you do not specify a user name, IAM determines the user name implicitly based on
    #             the Amazon Web Services access key ID signing the request. This operation works for access keys under
    #             the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root
    #             user credentials. This is true even if the Amazon Web Services account has no associated users.</p>
    #         <p> For information about quotas on the number of keys you can create, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS
    #                 quotas</a> in the <i>IAM User Guide</i>.</p>
    #         <important>
    #             <p>To ensure the security of your Amazon Web Services account, the secret access key is accessible
    #                 only during key and user creation. You must save the key (for example, in a text
    #                 file) if you want to be able to access it again. If a secret key is lost, you can
    #                 delete the access keys for the associated user and then create new keys.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::CreateAccessKeyInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the IAM user that the new key will belong to.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::CreateAccessKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_access_key(
    #     user_name: 'UserName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAccessKeyOutput
    #   resp.data.access_key #=> Types::AccessKey
    #   resp.data.access_key.user_name #=> String
    #   resp.data.access_key.access_key_id #=> String
    #   resp.data.access_key.status #=> String, one of ["Active", "Inactive"]
    #   resp.data.access_key.secret_access_key #=> String
    #   resp.data.access_key.create_date #=> Time
    #
    def create_access_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAccessKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAccessKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAccessKey
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::CreateAccessKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAccessKey,
        stubs: @stubs,
        params_class: Params::CreateAccessKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_access_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an alias for your Amazon Web Services account. For information about using an Amazon Web Services account
    #             alias, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html">Using an
    #                 alias for your Amazon Web Services account ID</a> in the
    #             <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAccountAliasInput}.
    #
    # @option params [String] :account_alias
    #   <p>The account alias to create.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of
    #       lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have
    #       two dashes in a row.</p>
    #
    # @return [Types::CreateAccountAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_account_alias(
    #     account_alias: 'AccountAlias' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAccountAliasOutput
    #
    def create_account_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAccountAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAccountAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAccountAlias
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityAlreadyExistsException, Errors::LimitExceededException, Errors::ServiceFailureException]),
        data_parser: Parsers::CreateAccountAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAccountAlias,
        stubs: @stubs,
        params_class: Params::CreateAccountAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_account_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new group.</p>
    #         <p> For information about the number of groups you can create, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS
    #                 quotas</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateGroupInput}.
    #
    # @option params [String] :path
    #   <p> The path to the group. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #                   identifiers</a> in the <i>IAM User Guide</i>.</p>
    #           <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #
    # @option params [String] :group_name
    #   <p>The name of the group to create. Do not include the path in this value.</p>
    #           <p>IAM user, group, role, and policy names must be unique within the account. Names are
    #               not distinguished by case. For example, you cannot create resources named both
    #               "MyResource" and "myresource".</p>
    #
    # @return [Types::CreateGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group(
    #     path: 'Path',
    #     group_name: 'GroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGroupOutput
    #   resp.data.group #=> Types::Group
    #   resp.data.group.path #=> String
    #   resp.data.group.group_name #=> String
    #   resp.data.group.group_id #=> String
    #   resp.data.group.arn #=> String
    #   resp.data.group.create_date #=> Time
    #
    def create_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityAlreadyExistsException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::CreateGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateGroup,
        stubs: @stubs,
        params_class: Params::CreateGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Creates a new instance profile. For information about instance profiles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_switch-role-ec2.html">Using
    #                 roles for applications on Amazon EC2</a> in the
    #                 <i>IAM User Guide</i>, and <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/iam-roles-for-amazon-ec2.html#ec2-instance-profile">Instance profiles</a> in the <i>Amazon EC2 User Guide</i>.</p>
    #         <p> For information about the number of instance profiles you can create, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM object
    #                 quotas</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateInstanceProfileInput}.
    #
    # @option params [String] :instance_profile_name
    #   <p>The name of the instance profile to create.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :path
    #   <p> The path to the instance profile. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #                   Identifiers</a> in the <i>IAM User Guide</i>.</p>
    #           <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags that you want to attach to the newly created IAM instance profile.
    #         Each tag consists of a key name and an associated value. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request
    #      fails and the resource is not created.</p>
    #            </note>
    #
    # @return [Types::CreateInstanceProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instance_profile(
    #     instance_profile_name: 'InstanceProfileName', # required
    #     path: 'Path',
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
    #   resp.data #=> Types::CreateInstanceProfileOutput
    #   resp.data.instance_profile #=> Types::InstanceProfile
    #   resp.data.instance_profile.path #=> String
    #   resp.data.instance_profile.instance_profile_name #=> String
    #   resp.data.instance_profile.instance_profile_id #=> String
    #   resp.data.instance_profile.arn #=> String
    #   resp.data.instance_profile.create_date #=> Time
    #   resp.data.instance_profile.roles #=> Array<Role>
    #   resp.data.instance_profile.roles[0] #=> Types::Role
    #   resp.data.instance_profile.roles[0].path #=> String
    #   resp.data.instance_profile.roles[0].role_name #=> String
    #   resp.data.instance_profile.roles[0].role_id #=> String
    #   resp.data.instance_profile.roles[0].arn #=> String
    #   resp.data.instance_profile.roles[0].create_date #=> Time
    #   resp.data.instance_profile.roles[0].assume_role_policy_document #=> String
    #   resp.data.instance_profile.roles[0].description #=> String
    #   resp.data.instance_profile.roles[0].max_session_duration #=> Integer
    #   resp.data.instance_profile.roles[0].permissions_boundary #=> Types::AttachedPermissionsBoundary
    #   resp.data.instance_profile.roles[0].permissions_boundary.permissions_boundary_type #=> String, one of ["PermissionsBoundaryPolicy"]
    #   resp.data.instance_profile.roles[0].permissions_boundary.permissions_boundary_arn #=> String
    #   resp.data.instance_profile.roles[0].tags #=> Array<Tag>
    #   resp.data.instance_profile.roles[0].tags[0] #=> Types::Tag
    #   resp.data.instance_profile.roles[0].tags[0].key #=> String
    #   resp.data.instance_profile.roles[0].tags[0].value #=> String
    #   resp.data.instance_profile.roles[0].role_last_used #=> Types::RoleLastUsed
    #   resp.data.instance_profile.roles[0].role_last_used.last_used_date #=> Time
    #   resp.data.instance_profile.roles[0].role_last_used.region #=> String
    #   resp.data.instance_profile.tags #=> Array<Tag>
    #
    def create_instance_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateInstanceProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateInstanceProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateInstanceProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::EntityAlreadyExistsException, Errors::LimitExceededException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::CreateInstanceProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateInstanceProfile,
        stubs: @stubs,
        params_class: Params::CreateInstanceProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_instance_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a password for the specified IAM user. A password allows an IAM user to
    #             access Amazon Web Services services through the Amazon Web Services Management Console.</p>
    #         <p>You can use the CLI, the Amazon Web Services API, or the <b>Users</b>
    #             page in the IAM console to create a password for any IAM user. Use <a>ChangePassword</a> to update your own existing password in the <b>My Security Credentials</b> page in the Amazon Web Services Management Console.</p>
    #         <p>For more information about managing passwords, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html">Managing passwords</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLoginProfileInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the IAM user to create a password for. The user must already
    #               exist.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :password
    #   <p>The new password for the user.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       that is used to validate this parameter is a string of characters. That string can include almost any printable
    #       ASCII character from the space (<code>\u0020</code>) through the end of the ASCII character range (<code>\u00FF</code>).
    #       You can also include the tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and carriage return (<code>\u000D</code>)
    #       characters. Any of these characters are valid in a password. However, many tools, such
    #       as the Amazon Web Services Management Console, might restrict the ability to type certain characters because they have
    #       special meaning within that tool.</p>
    #
    # @option params [Boolean] :password_reset_required
    #   <p>Specifies whether the user is required to set a new password on next sign-in.</p>
    #
    # @return [Types::CreateLoginProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_login_profile(
    #     user_name: 'UserName', # required
    #     password: 'Password', # required
    #     password_reset_required: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLoginProfileOutput
    #   resp.data.login_profile #=> Types::LoginProfile
    #   resp.data.login_profile.user_name #=> String
    #   resp.data.login_profile.create_date #=> Time
    #   resp.data.login_profile.password_reset_required #=> Boolean
    #
    def create_login_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLoginProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLoginProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLoginProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::PasswordPolicyViolationException, Errors::EntityAlreadyExistsException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::CreateLoginProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLoginProfile,
        stubs: @stubs,
        params_class: Params::CreateLoginProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_login_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an IAM entity to describe an identity provider (IdP) that supports <a href="http://openid.net/connect/">OpenID Connect (OIDC)</a>.</p>
    #         <p>The OIDC provider that you create with this operation can be used as a principal in a
    #             role's trust policy. Such a policy establishes a trust relationship between Amazon Web Services and
    #             the OIDC provider.</p>
    #         <p>If you are using an OIDC identity provider from Google, Facebook, or Amazon Cognito, you don't
    #             need to create a separate IAM identity provider. These OIDC identity providers are
    #             already built-in to Amazon Web Services and are available for your use. Instead, you can move directly
    #             to creating new roles using your identity provider. To learn more, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_create_for-idp_oidc.html">Creating
    #                 a role for web identity or OpenID connect federation</a> in the <i>IAM
    #                 User Guide</i>.</p>
    #         <p>When you create the IAM OIDC provider, you specify the following:</p>
    #         <ul>
    #             <li>
    #                 <p>The URL of the OIDC identity provider (IdP) to trust</p>
    #             </li>
    #             <li>
    #                 <p>A list of client IDs (also known as audiences) that identify the application
    #                     or applications allowed to authenticate using the OIDC provider</p>
    #             </li>
    #             <li>
    #                 <p>A list of thumbprints of one or more server certificates that the IdP
    #                     uses</p>
    #             </li>
    #          </ul>
    #         <p>You get all of this information from the OIDC IdP you want to use to access
    #             Amazon Web Services.</p>
    #         <note>
    #             <p>Amazon Web Services secures communication with some OIDC identity providers (IdPs) through our
    #             library of trusted certificate authorities (CAs) instead of using a certificate
    #             thumbprint to verify your IdP server certificate. These OIDC IdPs include Google, and
    #             those that use an Amazon S3 bucket to host a JSON Web Key Set (JWKS) endpoint. In these
    #             cases, your legacy thumbprint remains in your configuration, but is no longer used for validation.</p>
    #          </note>
    #         <note>
    #             <p>The trust for the OIDC provider is derived from the IAM provider that this
    #                 operation creates. Therefore, it is best to limit access to the <a>CreateOpenIDConnectProvider</a> operation to highly privileged
    #                 users.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::CreateOpenIDConnectProviderInput}.
    #
    # @option params [String] :url
    #   <p>The URL of the identity provider. The URL must begin with <code>https://</code> and
    #               should correspond to the <code>iss</code> claim in the provider's OpenID Connect ID
    #               tokens. Per the OIDC standard, path components are allowed but query parameters are not.
    #               Typically the URL consists of only a hostname, like
    #                   <code>https://server.example.org</code> or <code>https://example.com</code>. The URL
    #               should not contain a port number. </p>
    #           <p>You cannot register the same provider multiple times in a single Amazon Web Services account. If you
    #               try to submit a URL that has already been used for an OpenID Connect provider in the
    #               Amazon Web Services account, you will get an error.</p>
    #
    # @option params [Array<String>] :client_id_list
    #   <p>Provides a list of client IDs, also known as audiences. When a mobile or web app
    #               registers with an OpenID Connect provider, they establish a value that identifies the
    #               application. This is the value that's sent as the <code>client_id</code> parameter on
    #               OAuth requests.</p>
    #           <p>You can register multiple client IDs with the same provider. For example, you might
    #               have multiple applications that use the same OIDC provider. You cannot register more
    #               than 100 client IDs with a single IAM OIDC provider.</p>
    #           <p>There is no defined format for a client ID. The
    #                   <code>CreateOpenIDConnectProviderRequest</code> operation accepts client IDs up to
    #               255 characters long.</p>
    #
    # @option params [Array<String>] :thumbprint_list
    #   <p>A list of server certificate thumbprints for the OpenID Connect (OIDC) identity
    #               provider's server certificates. Typically this list includes only one entry. However,
    #               IAM lets you have up to five thumbprints for an OIDC provider. This lets you maintain
    #               multiple thumbprints if the identity provider is rotating certificates.</p>
    #           <p>The server certificate thumbprint is the hex-encoded SHA-1 hash value of the X.509
    #               certificate used by the domain where the OpenID Connect provider makes its keys
    #               available. It is always a 40-character string.</p>
    #           <p>You must provide at least one thumbprint when creating an IAM OIDC provider. For
    #               example, assume that the OIDC provider is <code>server.example.com</code> and the
    #               provider stores its keys at https://keys.server.example.com/openid-connect. In that
    #               case, the thumbprint string would be the hex-encoded SHA-1 hash value of the certificate
    #               used by <code>https://keys.server.example.com.</code>
    #            </p>
    #           <p>For more information about obtaining the OIDC provider thumbprint, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/identity-providers-oidc-obtain-thumbprint.html">Obtaining the
    #                   thumbprint for an OpenID Connect provider</a> in the <i>IAM User
    #                   Guide</i>.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags that you want to attach to the new IAM OpenID Connect (OIDC) provider.
    #         Each tag consists of a key name and an associated value. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request
    #      fails and the resource is not created.</p>
    #            </note>
    #
    # @return [Types::CreateOpenIDConnectProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_open_id_connect_provider(
    #     url: 'Url', # required
    #     client_id_list: [
    #       'member'
    #     ],
    #     thumbprint_list: [
    #       'member'
    #     ], # required
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
    #   resp.data #=> Types::CreateOpenIDConnectProviderOutput
    #   resp.data.open_id_connect_provider_arn #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def create_open_id_connect_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateOpenIDConnectProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateOpenIDConnectProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateOpenIDConnectProvider
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::EntityAlreadyExistsException, Errors::LimitExceededException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::CreateOpenIDConnectProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateOpenIDConnectProvider,
        stubs: @stubs,
        params_class: Params::CreateOpenIDConnectProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_open_id_connect_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new managed policy for your Amazon Web Services account.</p>
    #         <p>This operation creates a policy version with a version identifier of <code>v1</code>
    #             and sets v1 as the policy's default version. For more information about policy versions,
    #             see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for managed policies</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #         <p>As a best practice, you can validate your IAM policies.
    #      To learn more, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_policy-validator.html">Validating IAM policies</a>
    #             in the <i>IAM User Guide</i>.</p>
    #         <p>For more information about managed policies in general, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed
    #                 policies and inline policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePolicyInput}.
    #
    # @option params [String] :policy_name
    #   <p>The friendly name of the policy.</p>
    #           <p>IAM user, group, role, and policy names must be unique within the account. Names are
    #               not distinguished by case. For example, you cannot create resources named both
    #               "MyResource" and "myresource".</p>
    #
    # @option params [String] :path
    #   <p>The path for the policy.</p>
    #           <p>For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM identifiers</a> in the
    #                   <i>IAM User Guide</i>.</p>
    #           <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #           <note>
    #               <p>You cannot use an asterisk (*) in the path name.</p>
    #           </note>
    #
    # @option params [String] :policy_document
    #   <p>The JSON policy document that you want to use as the content for the new
    #               policy.</p>
    #           <p>You must provide policies in JSON format in IAM. However, for CloudFormation
    #               templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
    #               IAM.</p>
    #           <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #           <p>To learn more about JSON policy grammar, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_grammar.html">Grammar of the IAM JSON
    #                   policy language</a> in the <i>IAM User Guide</i>. </p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :description
    #   <p>A friendly description of the policy.</p>
    #           <p>Typically used to store information about the permissions defined in the policy. For
    #               example, "Grants access to production DynamoDB tables."</p>
    #           <p>The policy description is immutable. After a value is assigned, it cannot be
    #               changed.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags that you want to attach to the new IAM customer managed policy.
    #         Each tag consists of a key name and an associated value. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request
    #      fails and the resource is not created.</p>
    #            </note>
    #
    # @return [Types::CreatePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy(
    #     policy_name: 'PolicyName', # required
    #     path: 'Path',
    #     policy_document: 'PolicyDocument', # required
    #     description: 'Description',
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
    #   resp.data.policy.policy_name #=> String
    #   resp.data.policy.policy_id #=> String
    #   resp.data.policy.arn #=> String
    #   resp.data.policy.path #=> String
    #   resp.data.policy.default_version_id #=> String
    #   resp.data.policy.attachment_count #=> Integer
    #   resp.data.policy.permissions_boundary_usage_count #=> Integer
    #   resp.data.policy.is_attachable #=> Boolean
    #   resp.data.policy.description #=> String
    #   resp.data.policy.create_date #=> Time
    #   resp.data.policy.update_date #=> Time
    #   resp.data.policy.tags #=> Array<Tag>
    #   resp.data.policy.tags[0] #=> Types::Tag
    #   resp.data.policy.tags[0].key #=> String
    #   resp.data.policy.tags[0].value #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::EntityAlreadyExistsException, Errors::LimitExceededException, Errors::InvalidInputException, Errors::MalformedPolicyDocumentException, Errors::ServiceFailureException]),
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

    # <p>Creates a new version of the specified managed policy. To update a managed policy, you
    #             create a new policy version. A managed policy can have up to five versions. If the
    #             policy has five versions, you must delete an existing version using <a>DeletePolicyVersion</a> before you create a new version.</p>
    #         <p>Optionally, you can set the new version as the policy's default version. The default
    #             version is the version that is in effect for the IAM users, groups, and roles to which
    #             the policy is attached.</p>
    #         <p>For more information about managed policy versions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for managed
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePolicyVersionInput}.
    #
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy to which you want to add a new
    #               version.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :policy_document
    #   <p>The JSON policy document that you want to use as the content for this new version of
    #               the policy.</p>
    #           <p>You must provide policies in JSON format in IAM. However, for CloudFormation
    #               templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
    #               IAM.</p>
    #           <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #
    # @option params [Boolean] :set_as_default
    #   <p>Specifies whether to set this version as the policy's default version.</p>
    #           <p>When this parameter is <code>true</code>, the new policy version becomes the operative
    #               version. That is, it becomes the version that is in effect for the IAM users, groups,
    #               and roles that the policy is attached to.</p>
    #           <p>For more information about managed policy versions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for managed
    #                   policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @return [Types::CreatePolicyVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_policy_version(
    #     policy_arn: 'PolicyArn', # required
    #     policy_document: 'PolicyDocument', # required
    #     set_as_default: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePolicyVersionOutput
    #   resp.data.policy_version #=> Types::PolicyVersion
    #   resp.data.policy_version.document #=> String
    #   resp.data.policy_version.version_id #=> String
    #   resp.data.policy_version.is_default_version #=> Boolean
    #   resp.data.policy_version.create_date #=> Time
    #
    def create_policy_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePolicyVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePolicyVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePolicyVersion
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::MalformedPolicyDocumentException, Errors::ServiceFailureException]),
        data_parser: Parsers::CreatePolicyVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePolicyVersion,
        stubs: @stubs,
        params_class: Params::CreatePolicyVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_policy_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new role for your Amazon Web Services account. For more information about roles, see
    #                 <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">IAM
    #                 roles</a>. For information about quotas for role names and the number of roles
    #             you can create, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS quotas</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRoleInput}.
    #
    # @option params [String] :path
    #   <p> The path to the role. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #                   Identifiers</a> in the <i>IAM User Guide</i>.</p>
    #           <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #
    # @option params [String] :role_name
    #   <p>The name of the role to create.</p>
    #           <p>IAM user, group, role, and policy names must be unique within the account. Names are
    #               not distinguished by case. For example, you cannot create resources named both
    #               "MyResource" and "myresource".</p>
    #
    # @option params [String] :assume_role_policy_document
    #   <p>The trust relationship policy document that grants an entity permission to assume the
    #               role.</p>
    #           <p>In IAM, you must provide a JSON policy that has been converted to a string. However,
    #               for CloudFormation templates formatted in YAML, you can provide the policy in JSON or YAML
    #               format. CloudFormation always converts a YAML policy to JSON format before submitting it to
    #               IAM.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #           <p> Upon success, the response includes the same trust policy in JSON format.</p>
    #
    # @option params [String] :description
    #   <p>A description of the role.</p>
    #
    # @option params [Integer] :max_session_duration
    #   <p>The maximum session duration (in seconds) that you want to set for the specified role.
    #               If you do not specify a value for this setting, the default value of one hour is
    #               applied. This setting can have a value from 1 hour to 12 hours.</p>
    #           <p>Anyone who assumes the role from the or API can use the <code>DurationSeconds</code>
    #               API parameter or the <code>duration-seconds</code> CLI parameter to request a longer
    #               session. The <code>MaxSessionDuration</code> setting determines the maximum duration
    #               that can be requested using the <code>DurationSeconds</code> parameter. If users don't
    #               specify a value for the <code>DurationSeconds</code> parameter, their security
    #               credentials are valid for one hour by default. This applies when you use the
    #                   <code>AssumeRole*</code> API operations or the <code>assume-role*</code> CLI
    #               operations but does not apply when you use those operations to create a console URL. For
    #               more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using IAM roles</a> in the <i>IAM User Guide</i>.</p>
    #
    # @option params [String] :permissions_boundary
    #   <p>The ARN of the policy that is used to set the permissions boundary for the
    #               role.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags that you want to attach to the new role. Each tag consists of a key name and an associated value.
    #         For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request
    #      fails and the resource is not created.</p>
    #            </note>
    #
    # @return [Types::CreateRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_role(
    #     path: 'Path',
    #     role_name: 'RoleName', # required
    #     assume_role_policy_document: 'AssumeRolePolicyDocument', # required
    #     description: 'Description',
    #     max_session_duration: 1,
    #     permissions_boundary: 'PermissionsBoundary',
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
    #   resp.data #=> Types::CreateRoleOutput
    #   resp.data.role #=> Types::Role
    #   resp.data.role.path #=> String
    #   resp.data.role.role_name #=> String
    #   resp.data.role.role_id #=> String
    #   resp.data.role.arn #=> String
    #   resp.data.role.create_date #=> Time
    #   resp.data.role.assume_role_policy_document #=> String
    #   resp.data.role.description #=> String
    #   resp.data.role.max_session_duration #=> Integer
    #   resp.data.role.permissions_boundary #=> Types::AttachedPermissionsBoundary
    #   resp.data.role.permissions_boundary.permissions_boundary_type #=> String, one of ["PermissionsBoundaryPolicy"]
    #   resp.data.role.permissions_boundary.permissions_boundary_arn #=> String
    #   resp.data.role.tags #=> Array<Tag>
    #   resp.data.role.tags[0] #=> Types::Tag
    #   resp.data.role.tags[0].key #=> String
    #   resp.data.role.tags[0].value #=> String
    #   resp.data.role.role_last_used #=> Types::RoleLastUsed
    #   resp.data.role.role_last_used.last_used_date #=> Time
    #   resp.data.role.role_last_used.region #=> String
    #
    def create_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRoleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRoleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRole
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::EntityAlreadyExistsException, Errors::LimitExceededException, Errors::InvalidInputException, Errors::MalformedPolicyDocumentException, Errors::ServiceFailureException]),
        data_parser: Parsers::CreateRole
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRole,
        stubs: @stubs,
        params_class: Params::CreateRoleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_role
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an IAM resource that describes an identity provider (IdP) that supports SAML
    #             2.0.</p>
    #         <p>The SAML provider resource that you create with this operation can be used as a
    #             principal in an IAM role's trust policy. Such a policy can enable federated users who
    #             sign in using the SAML IdP to assume the role. You can create an IAM role that
    #             supports Web-based single sign-on (SSO) to the Amazon Web Services Management Console or one that supports API access
    #             to Amazon Web Services.</p>
    #         <p>When you create the SAML provider resource, you upload a SAML metadata document that
    #             you get from your IdP. That document includes the issuer's name, expiration information,
    #             and keys that can be used to validate the SAML authentication response (assertions) that
    #             the IdP sends. You must generate the metadata document using the identity management
    #             software that is used as your organization's IdP.</p>
    #         <note>
    #             <p> This operation requires <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p>
    #         </note>
    #         <p> For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_enable-console-saml.html">Enabling SAML 2.0
    #                 federated users to access the Amazon Web Services Management Console</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About SAML 2.0-based
    #                 federation</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateSAMLProviderInput}.
    #
    # @option params [String] :saml_metadata_document
    #   <p>An XML document generated by an identity provider (IdP) that supports SAML 2.0. The
    #               document includes the issuer's name, expiration information, and keys that can be used
    #               to validate the SAML authentication response (assertions) that are received from the
    #               IdP. You must generate the metadata document using the identity management software that
    #               is used as your organization's IdP.</p>
    #           <p>For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About SAML 2.0-based
    #                   federation</a> in the <i>IAM User Guide</i>
    #           </p>
    #
    # @option params [String] :name
    #   <p>The name of the provider to create.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags that you want to attach to the new IAM SAML provider.
    #         Each tag consists of a key name and an associated value. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request
    #      fails and the resource is not created.</p>
    #            </note>
    #
    # @return [Types::CreateSAMLProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_saml_provider(
    #     saml_metadata_document: 'SAMLMetadataDocument', # required
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
    #   resp.data #=> Types::CreateSAMLProviderOutput
    #   resp.data.saml_provider_arn #=> String
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def create_saml_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateSAMLProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateSAMLProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateSAMLProvider
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::EntityAlreadyExistsException, Errors::LimitExceededException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::CreateSAMLProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateSAMLProvider,
        stubs: @stubs,
        params_class: Params::CreateSAMLProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_saml_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an IAM role that is linked to a specific Amazon Web Services service. The service controls
    #             the attached policies and when the role can be deleted. This helps ensure that the
    #             service is not broken by an unexpectedly changed or deleted role, which could put your
    #             Amazon Web Services resources into an unknown state. Allowing the service to control the role helps
    #             improve service stability and proper cleanup when a service and its role are no longer
    #             needed. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html">Using service-linked
    #                 roles</a> in the <i>IAM User Guide</i>. </p>
    #         <p>To attach a policy to this service-linked role, you must make the request using the
    #             Amazon Web Services service that depends on this role.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateServiceLinkedRoleInput}.
    #
    # @option params [String] :aws_service_name
    #   <p>The service principal for the Amazon Web Services service to which this role is attached. You use a
    #               string similar to a URL but without the http:// in front. For example:
    #                   <code>elasticbeanstalk.amazonaws.com</code>. </p>
    #           <p>Service principals are unique and case-sensitive. To find the exact service principal
    #               for your service-linked role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_aws-services-that-work-with-iam.html">Amazon Web Services services
    #                   that work with IAM</a> in the <i>IAM User Guide</i>. Look for
    #               the services that have <b>Yes </b>in the <b>Service-Linked Role</b> column. Choose the <b>Yes</b> link to view the service-linked role documentation for that
    #               service.</p>
    #
    # @option params [String] :description
    #   <p>The description of the role.</p>
    #
    # @option params [String] :custom_suffix
    #   <p></p>
    #           <p>A string that you provide, which is combined with the service-provided prefix to form
    #               the complete role name. If you make multiple requests for the same service, then you
    #               must supply a different <code>CustomSuffix</code> for each request. Otherwise the
    #               request fails with a duplicate role name error. For example, you could add
    #                   <code>-1</code> or <code>-debug</code> to the suffix.</p>
    #           <p>Some services do not support the <code>CustomSuffix</code> parameter. If you provide
    #               an optional suffix and the operation fails, try the operation again without the
    #               suffix.</p>
    #
    # @return [Types::CreateServiceLinkedRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_linked_role(
    #     aws_service_name: 'AWSServiceName', # required
    #     description: 'Description',
    #     custom_suffix: 'CustomSuffix'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateServiceLinkedRoleOutput
    #   resp.data.role #=> Types::Role
    #   resp.data.role.path #=> String
    #   resp.data.role.role_name #=> String
    #   resp.data.role.role_id #=> String
    #   resp.data.role.arn #=> String
    #   resp.data.role.create_date #=> Time
    #   resp.data.role.assume_role_policy_document #=> String
    #   resp.data.role.description #=> String
    #   resp.data.role.max_session_duration #=> Integer
    #   resp.data.role.permissions_boundary #=> Types::AttachedPermissionsBoundary
    #   resp.data.role.permissions_boundary.permissions_boundary_type #=> String, one of ["PermissionsBoundaryPolicy"]
    #   resp.data.role.permissions_boundary.permissions_boundary_arn #=> String
    #   resp.data.role.tags #=> Array<Tag>
    #   resp.data.role.tags[0] #=> Types::Tag
    #   resp.data.role.tags[0].key #=> String
    #   resp.data.role.tags[0].value #=> String
    #   resp.data.role.role_last_used #=> Types::RoleLastUsed
    #   resp.data.role.role_last_used.last_used_date #=> Time
    #   resp.data.role.role_last_used.region #=> String
    #
    def create_service_linked_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateServiceLinkedRoleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateServiceLinkedRoleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateServiceLinkedRole
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::CreateServiceLinkedRole
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateServiceLinkedRole,
        stubs: @stubs,
        params_class: Params::CreateServiceLinkedRoleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_service_linked_role
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates a set of credentials consisting of a user name and password that can be used
    #             to access the service specified in the request. These credentials are generated by
    #             IAM, and can be used only for the specified service. </p>
    #         <p>You can have a maximum of two sets of service-specific credentials for each supported
    #             service per user.</p>
    #         <p>You can create service-specific credentials for CodeCommit and Amazon Keyspaces (for Apache
    #             Cassandra).</p>
    #         <p>You can reset the password to a new service-generated value by calling <a>ResetServiceSpecificCredential</a>.</p>
    #         <p>For more information about service-specific credentials, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_ssh-keys.html">Using IAM
    #                 with CodeCommit: Git credentials, SSH keys, and Amazon Web Services access keys</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateServiceSpecificCredentialInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the IAM user that is to be associated with the credentials. The new
    #               service-specific credentials have the same permissions as the associated user except
    #               that they can be used only to access the specified service.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :service_name
    #   <p>The name of the Amazon Web Services service that is to be associated with the credentials. The
    #               service you specify here is the only service that can be accessed using these
    #               credentials.</p>
    #
    # @return [Types::CreateServiceSpecificCredentialOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_service_specific_credential(
    #     user_name: 'UserName', # required
    #     service_name: 'ServiceName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateServiceSpecificCredentialOutput
    #   resp.data.service_specific_credential #=> Types::ServiceSpecificCredential
    #   resp.data.service_specific_credential.create_date #=> Time
    #   resp.data.service_specific_credential.service_name #=> String
    #   resp.data.service_specific_credential.service_user_name #=> String
    #   resp.data.service_specific_credential.service_password #=> String
    #   resp.data.service_specific_credential.service_specific_credential_id #=> String
    #   resp.data.service_specific_credential.user_name #=> String
    #   resp.data.service_specific_credential.status #=> String, one of ["Active", "Inactive"]
    #
    def create_service_specific_credential(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateServiceSpecificCredentialInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateServiceSpecificCredentialInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateServiceSpecificCredential
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceNotSupportedException]),
        data_parser: Parsers::CreateServiceSpecificCredential
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateServiceSpecificCredential,
        stubs: @stubs,
        params_class: Params::CreateServiceSpecificCredentialOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_service_specific_credential
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new IAM user for your Amazon Web Services account.</p>
    #         <p> For information about quotas for the number of IAM users you can create, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS
    #                 quotas</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserInput}.
    #
    # @option params [String] :path
    #   <p> The path for the user name. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #                   identifiers</a> in the <i>IAM User Guide</i>.</p>
    #           <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #
    # @option params [String] :user_name
    #   <p>The name of the user to create.</p>
    #           <p>IAM user, group, role, and policy names must be unique within the account. Names are
    #               not distinguished by case. For example, you cannot create resources named both
    #               "MyResource" and "myresource".</p>
    #
    # @option params [String] :permissions_boundary
    #   <p>The ARN of the policy that is used to set the permissions boundary for the
    #               user.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags that you want to attach to the new user. Each tag consists of a key name and an associated value.
    #         For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request
    #      fails and the resource is not created.</p>
    #            </note>
    #
    # @return [Types::CreateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user(
    #     path: 'Path',
    #     user_name: 'UserName', # required
    #     permissions_boundary: 'PermissionsBoundary',
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
    #   resp.data #=> Types::CreateUserOutput
    #   resp.data.user #=> Types::User
    #   resp.data.user.path #=> String
    #   resp.data.user.user_name #=> String
    #   resp.data.user.user_id #=> String
    #   resp.data.user.arn #=> String
    #   resp.data.user.create_date #=> Time
    #   resp.data.user.password_last_used #=> Time
    #   resp.data.user.permissions_boundary #=> Types::AttachedPermissionsBoundary
    #   resp.data.user.permissions_boundary.permissions_boundary_type #=> String, one of ["PermissionsBoundaryPolicy"]
    #   resp.data.user.permissions_boundary.permissions_boundary_arn #=> String
    #   resp.data.user.tags #=> Array<Tag>
    #   resp.data.user.tags[0] #=> Types::Tag
    #   resp.data.user.tags[0].key #=> String
    #   resp.data.user.tags[0].value #=> String
    #
    def create_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::EntityAlreadyExistsException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::CreateUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUser,
        stubs: @stubs,
        params_class: Params::CreateUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new virtual MFA device for the Amazon Web Services account. After creating the virtual
    #             MFA, use <a>EnableMFADevice</a> to attach the MFA device to an IAM user.
    #             For more information about creating and working with virtual MFA devices, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html">Using a virtual MFA
    #                 device</a> in the <i>IAM User Guide</i>.</p>
    #         <p>For information about the maximum number of MFA devices you can create, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS
    #                 quotas</a> in the <i>IAM User Guide</i>.</p>
    #         <important>
    #             <p>The seed information contained in the QR code and the Base32 string should be
    #                 treated like any other secret access information. In other words, protect the seed
    #                 information as you would your Amazon Web Services access keys or your passwords. After you
    #                 provision your virtual device, you should ensure that the information is destroyed
    #                 following secure procedures.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::CreateVirtualMFADeviceInput}.
    #
    # @option params [String] :path
    #   <p> The path for the virtual MFA device. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #                   identifiers</a> in the <i>IAM User Guide</i>.</p>
    #           <p>This parameter is optional. If it is not included, it defaults to a slash (/).</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #
    # @option params [String] :virtual_mfa_device_name
    #   <p>The name of the virtual MFA device. Use with path to uniquely identify a virtual MFA
    #               device.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags that you want to attach to the new IAM virtual MFA device.
    #         Each tag consists of a key name and an associated value. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request
    #      fails and the resource is not created.</p>
    #            </note>
    #
    # @return [Types::CreateVirtualMFADeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_virtual_mfa_device(
    #     path: 'Path',
    #     virtual_mfa_device_name: 'VirtualMFADeviceName', # required
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
    #   resp.data #=> Types::CreateVirtualMFADeviceOutput
    #   resp.data.virtual_mfa_device #=> Types::VirtualMFADevice
    #   resp.data.virtual_mfa_device.serial_number #=> String
    #   resp.data.virtual_mfa_device.base32_string_seed #=> String
    #   resp.data.virtual_mfa_device.qr_code_png #=> String
    #   resp.data.virtual_mfa_device.user #=> Types::User
    #   resp.data.virtual_mfa_device.user.path #=> String
    #   resp.data.virtual_mfa_device.user.user_name #=> String
    #   resp.data.virtual_mfa_device.user.user_id #=> String
    #   resp.data.virtual_mfa_device.user.arn #=> String
    #   resp.data.virtual_mfa_device.user.create_date #=> Time
    #   resp.data.virtual_mfa_device.user.password_last_used #=> Time
    #   resp.data.virtual_mfa_device.user.permissions_boundary #=> Types::AttachedPermissionsBoundary
    #   resp.data.virtual_mfa_device.user.permissions_boundary.permissions_boundary_type #=> String, one of ["PermissionsBoundaryPolicy"]
    #   resp.data.virtual_mfa_device.user.permissions_boundary.permissions_boundary_arn #=> String
    #   resp.data.virtual_mfa_device.user.tags #=> Array<Tag>
    #   resp.data.virtual_mfa_device.user.tags[0] #=> Types::Tag
    #   resp.data.virtual_mfa_device.user.tags[0].key #=> String
    #   resp.data.virtual_mfa_device.user.tags[0].value #=> String
    #   resp.data.virtual_mfa_device.enable_date #=> Time
    #   resp.data.virtual_mfa_device.tags #=> Array<Tag>
    #
    def create_virtual_mfa_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateVirtualMFADeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateVirtualMFADeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateVirtualMFADevice
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::EntityAlreadyExistsException, Errors::LimitExceededException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::CreateVirtualMFADevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateVirtualMFADevice,
        stubs: @stubs,
        params_class: Params::CreateVirtualMFADeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_virtual_mfa_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deactivates the specified MFA device and removes it from association with the user
    #             name for which it was originally enabled.</p>
    #         <p>For more information about creating and working with virtual MFA devices, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html">Enabling a virtual
    #                 multi-factor authentication (MFA) device</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeactivateMFADeviceInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user whose MFA device you want to deactivate.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :serial_number
    #   <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices,
    #               the serial number is the device ARN.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of upper and lowercase alphanumeric characters with no spaces. You can also include any of the
    #       following characters: =,.@:/-</p>
    #
    # @return [Types::DeactivateMFADeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_mfa_device(
    #     user_name: 'UserName', # required
    #     serial_number: 'SerialNumber' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeactivateMFADeviceOutput
    #
    def deactivate_mfa_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeactivateMFADeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeactivateMFADeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeactivateMFADevice
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityTemporarilyUnmodifiableException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeactivateMFADevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeactivateMFADevice,
        stubs: @stubs,
        params_class: Params::DeactivateMFADeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deactivate_mfa_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the access key pair associated with the specified IAM user.</p>
    #         <p>If you do not specify a user name, IAM determines the user name implicitly based on
    #             the Amazon Web Services access key ID signing the request. This operation works for access keys under
    #             the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root
    #             user credentials even if the Amazon Web Services account has no associated users.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAccessKeyInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user whose access key pair you want to delete.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :access_key_id
    #   <p>The access key ID for the access key ID and secret access key you want to
    #               delete.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can
    #       consist of any upper or lowercased letter or digit.</p>
    #
    # @return [Types::DeleteAccessKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_key(
    #     user_name: 'UserName',
    #     access_key_id: 'AccessKeyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAccessKeyOutput
    #
    def delete_access_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAccessKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAccessKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAccessKey
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteAccessKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAccessKey,
        stubs: @stubs,
        params_class: Params::DeleteAccessKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_access_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Deletes the specified Amazon Web Services account alias. For information about using an Amazon Web Services
    #             account alias, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html">Using an alias for your Amazon Web Services account ID</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAccountAliasInput}.
    #
    # @option params [String] :account_alias
    #   <p>The name of the account alias to delete.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of
    #       lowercase letters, digits, and dashes. You cannot start or finish with a dash, nor can you have
    #       two dashes in a row.</p>
    #
    # @return [Types::DeleteAccountAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_alias(
    #     account_alias: 'AccountAlias' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAccountAliasOutput
    #
    def delete_account_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAccountAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAccountAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAccountAlias
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteAccountAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAccountAlias,
        stubs: @stubs,
        params_class: Params::DeleteAccountAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_account_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the password policy for the Amazon Web Services account. There are no parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAccountPasswordPolicyInput}.
    #
    # @return [Types::DeleteAccountPasswordPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_password_policy()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAccountPasswordPolicyOutput
    #
    def delete_account_password_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAccountPasswordPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAccountPasswordPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAccountPasswordPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteAccountPasswordPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAccountPasswordPolicy,
        stubs: @stubs,
        params_class: Params::DeleteAccountPasswordPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_account_password_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified IAM group. The group must not contain any users or have any
    #             attached policies.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>The name of the IAM group to delete.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::DeleteGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group(
    #     group_name: 'GroupName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGroupOutput
    #
    def delete_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::DeleteConflictException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGroup,
        stubs: @stubs,
        params_class: Params::DeleteGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified inline policy that is embedded in the specified IAM
    #             group.</p>
    #         <p>A group can also have managed policies attached to it. To detach a managed policy from
    #             a group, use <a>DetachGroupPolicy</a>. For more information about policies,
    #             refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGroupPolicyInput}.
    #
    # @option params [String] :group_name
    #   <p>The name (friendly name, not ARN) identifying the group that the policy is embedded
    #               in.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :policy_name
    #   <p>The name identifying the policy document to delete.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::DeleteGroupPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group_policy(
    #     group_name: 'GroupName', # required
    #     policy_name: 'PolicyName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteGroupPolicyOutput
    #
    def delete_group_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteGroupPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteGroupPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteGroupPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteGroupPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteGroupPolicy,
        stubs: @stubs,
        params_class: Params::DeleteGroupPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_group_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified instance profile. The instance profile must not have an
    #             associated role.</p>
    #         <important>
    #             <p>Make sure that you do not have any Amazon EC2 instances running with the instance
    #                 profile you are about to delete. Deleting a role or instance profile that is
    #                 associated with a running instance will break any applications running on the
    #                 instance.</p>
    #         </important>
    #         <p>For more information about instance profiles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About instance
    #             profiles</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteInstanceProfileInput}.
    #
    # @option params [String] :instance_profile_name
    #   <p>The name of the instance profile to delete.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::DeleteInstanceProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_instance_profile(
    #     instance_profile_name: 'InstanceProfileName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteInstanceProfileOutput
    #
    def delete_instance_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInstanceProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteInstanceProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteInstanceProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::DeleteConflictException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteInstanceProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteInstanceProfile,
        stubs: @stubs,
        params_class: Params::DeleteInstanceProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_instance_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the password for the specified IAM user, which terminates the user's ability
    #             to access Amazon Web Services services through the Amazon Web Services Management Console.</p>
    #         <p>You can use the CLI, the Amazon Web Services API, or the <b>Users</b>
    #             page in the IAM console to delete a password for any IAM user. You can use <a>ChangePassword</a> to update, but not delete, your own password in the
    #                 <b>My Security Credentials</b> page in the
    #             Amazon Web Services Management Console.</p>
    #         <important>
    #             <p> Deleting a user's password does not prevent a user from accessing Amazon Web Services through
    #                 the command line interface or the API. To prevent all user access, you must also
    #                 either make any access keys inactive or delete them. For more information about
    #                 making keys inactive or deleting them, see <a>UpdateAccessKey</a> and
    #                     <a>DeleteAccessKey</a>. </p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::DeleteLoginProfileInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user whose password you want to delete.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::DeleteLoginProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_login_profile(
    #     user_name: 'UserName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLoginProfileOutput
    #
    def delete_login_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLoginProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLoginProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLoginProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityTemporarilyUnmodifiableException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteLoginProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLoginProfile,
        stubs: @stubs,
        params_class: Params::DeleteLoginProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_login_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an OpenID Connect identity provider (IdP) resource object in IAM.</p>
    #         <p>Deleting an IAM OIDC provider resource does not update any roles that reference the
    #             provider as a principal in their trust policies. Any attempt to assume a role that
    #             references a deleted provider fails.</p>
    #         <p>This operation is idempotent; it does not fail or return an error if you call the
    #             operation for a provider that does not exist.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteOpenIDConnectProviderInput}.
    #
    # @option params [String] :open_id_connect_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM OpenID Connect provider resource object to
    #               delete. You can get a list of OpenID Connect provider resource ARNs by using the <a>ListOpenIDConnectProviders</a> operation.</p>
    #
    # @return [Types::DeleteOpenIDConnectProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_open_id_connect_provider(
    #     open_id_connect_provider_arn: 'OpenIDConnectProviderArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteOpenIDConnectProviderOutput
    #
    def delete_open_id_connect_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteOpenIDConnectProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteOpenIDConnectProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteOpenIDConnectProvider
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteOpenIDConnectProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteOpenIDConnectProvider,
        stubs: @stubs,
        params_class: Params::DeleteOpenIDConnectProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_open_id_connect_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified managed policy.</p>
    #         <p>Before you can delete a managed policy, you must first detach the policy from all
    #             users, groups, and roles that it is attached to. In addition, you must delete all the
    #             policy's versions. The following steps describe the process for deleting a managed
    #             policy:</p>
    #         <ul>
    #             <li>
    #                 <p>Detach the policy from all users, groups, and roles that the policy is
    #                     attached to, using <a>DetachUserPolicy</a>, <a>DetachGroupPolicy</a>, or <a>DetachRolePolicy</a>. To
    #                     list all the users, groups, and roles that a policy is attached to, use <a>ListEntitiesForPolicy</a>.</p>
    #             </li>
    #             <li>
    #                 <p>Delete all versions of the policy using <a>DeletePolicyVersion</a>.
    #                     To list the policy's versions, use <a>ListPolicyVersions</a>. You
    #                     cannot use <a>DeletePolicyVersion</a> to delete the version that is
    #                     marked as the default version. You delete the policy's default version in the
    #                     next step of the process.</p>
    #             </li>
    #             <li>
    #                 <p>Delete the policy (this automatically deletes the policy's default version)
    #                     using this operation.</p>
    #             </li>
    #          </ul>
    #         <p>For information about managed policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePolicyInput}.
    #
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to delete.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @return [Types::DeletePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy(
    #     policy_arn: 'PolicyArn' # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::DeleteConflictException, Errors::ServiceFailureException]),
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

    # <p>Deletes the specified version from the specified managed policy.</p>
    #         <p>You cannot delete the default version from a policy using this operation. To delete
    #             the default version from a policy, use <a>DeletePolicy</a>. To find out which
    #             version of a policy is marked as the default version, use <a>ListPolicyVersions</a>.</p>
    #         <p>For information about versions for managed policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for managed
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePolicyVersionInput}.
    #
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy from which you want to delete a
    #               version.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :version_id
    #   <p>The policy version to delete.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that
    #       consists of the lowercase letter 'v' followed by one or two digits, and optionally
    #       followed by a period '.' and a string of letters and digits.</p>
    #           <p>For more information about managed policy versions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for managed
    #                   policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @return [Types::DeletePolicyVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_policy_version(
    #     policy_arn: 'PolicyArn', # required
    #     version_id: 'VersionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePolicyVersionOutput
    #
    def delete_policy_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePolicyVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePolicyVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePolicyVersion
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::DeleteConflictException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeletePolicyVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePolicyVersion,
        stubs: @stubs,
        params_class: Params::DeletePolicyVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_policy_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified role. The role must not have any policies attached. For more
    #             information about roles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with roles</a>.</p>
    #         <important>
    #             <p>Make sure that you do not have any Amazon EC2 instances running with the role you
    #                 are about to delete. Deleting a role or instance profile that is associated with a
    #                 running instance will break any applications running on the instance.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::DeleteRoleInput}.
    #
    # @option params [String] :role_name
    #   <p>The name of the role to delete.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::DeleteRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_role(
    #     role_name: 'RoleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRoleOutput
    #
    def delete_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRoleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRoleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRole
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::UnmodifiableEntityException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::DeleteConflictException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteRole
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRole,
        stubs: @stubs,
        params_class: Params::DeleteRoleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_role
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the permissions boundary for the specified IAM role. </p>
    #         <important>
    #             <p>Deleting the permissions boundary for a role might increase its permissions. For
    #                 example, it might allow anyone who assumes the role to perform all the actions
    #                 granted in its permissions policies. </p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::DeleteRolePermissionsBoundaryInput}.
    #
    # @option params [String] :role_name
    #   <p>The name (friendly name, not ARN) of the IAM role from which you want to remove the
    #               permissions boundary.</p>
    #
    # @return [Types::DeleteRolePermissionsBoundaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_role_permissions_boundary(
    #     role_name: 'RoleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRolePermissionsBoundaryOutput
    #
    def delete_role_permissions_boundary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRolePermissionsBoundaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRolePermissionsBoundaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRolePermissionsBoundary
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnmodifiableEntityException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteRolePermissionsBoundary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRolePermissionsBoundary,
        stubs: @stubs,
        params_class: Params::DeleteRolePermissionsBoundaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_role_permissions_boundary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified inline policy that is embedded in the specified IAM
    #             role.</p>
    #         <p>A role can also have managed policies attached to it. To detach a managed policy from
    #             a role, use <a>DetachRolePolicy</a>. For more information about policies,
    #             refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRolePolicyInput}.
    #
    # @option params [String] :role_name
    #   <p>The name (friendly name, not ARN) identifying the role that the policy is embedded
    #               in.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :policy_name
    #   <p>The name of the inline policy to delete from the specified IAM role.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::DeleteRolePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_role_policy(
    #     role_name: 'RoleName', # required
    #     policy_name: 'PolicyName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRolePolicyOutput
    #
    def delete_role_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRolePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRolePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRolePolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnmodifiableEntityException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteRolePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRolePolicy,
        stubs: @stubs,
        params_class: Params::DeleteRolePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_role_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a SAML provider resource in IAM.</p>
    #         <p>Deleting the provider resource from IAM does not update any roles that reference the
    #             SAML provider resource's ARN as a principal in their trust policies. Any attempt to
    #             assume a role that references a non-existent provider resource ARN fails.</p>
    #         <note>
    #             <p> This operation requires <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteSAMLProviderInput}.
    #
    # @option params [String] :saml_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the SAML provider to delete.</p>
    #
    # @return [Types::DeleteSAMLProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_saml_provider(
    #     saml_provider_arn: 'SAMLProviderArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSAMLProviderOutput
    #
    def delete_saml_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSAMLProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSAMLProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSAMLProvider
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteSAMLProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSAMLProvider,
        stubs: @stubs,
        params_class: Params::DeleteSAMLProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_saml_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified SSH public key.</p>
    #         <p>The SSH public key deleted by this operation is used only for authenticating the
    #             associated IAM user to an CodeCommit repository. For more information about using SSH keys
    #             to authenticate to an CodeCommit repository, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up CodeCommit for
    #                 SSH connections</a> in the <i>CodeCommit User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSSHPublicKeyInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the IAM user associated with the SSH public key.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :ssh_public_key_id
    #   <p>The unique identifier for the SSH public key.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can
    #       consist of any upper or lowercased letter or digit.</p>
    #
    # @return [Types::DeleteSSHPublicKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_ssh_public_key(
    #     user_name: 'UserName', # required
    #     ssh_public_key_id: 'SSHPublicKeyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSSHPublicKeyOutput
    #
    def delete_ssh_public_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSSHPublicKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSSHPublicKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSSHPublicKey
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException]),
        data_parser: Parsers::DeleteSSHPublicKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSSHPublicKey,
        stubs: @stubs,
        params_class: Params::DeleteSSHPublicKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_ssh_public_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified server certificate.</p>
    #         <p>For more information about working with server certificates, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working
    #                 with server certificates</a> in the <i>IAM User Guide</i>. This
    #             topic also includes a list of Amazon Web Services services that can use the server certificates that
    #             you manage with IAM.</p>
    #         <important>
    #             <p> If you are using a server certificate with Elastic Load Balancing, deleting the
    #                 certificate could have implications for your application. If Elastic Load Balancing
    #                 doesn't detect the deletion of bound certificates, it may continue to use the
    #                 certificates. This could cause Elastic Load Balancing to stop accepting traffic. We
    #                 recommend that you remove the reference to the certificate from Elastic Load
    #                 Balancing before using this command to delete the certificate. For more information,
    #                 see <a href="https://docs.aws.amazon.com/ElasticLoadBalancing/latest/APIReference/API_DeleteLoadBalancerListeners.html">DeleteLoadBalancerListeners</a> in the <i>Elastic Load Balancing API
    #                     Reference</i>.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::DeleteServerCertificateInput}.
    #
    # @option params [String] :server_certificate_name
    #   <p>The name of the server certificate you want to delete.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::DeleteServerCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_server_certificate(
    #     server_certificate_name: 'ServerCertificateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteServerCertificateOutput
    #
    def delete_server_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteServerCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteServerCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteServerCertificate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::DeleteConflictException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteServerCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteServerCertificate,
        stubs: @stubs,
        params_class: Params::DeleteServerCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_server_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Submits a service-linked role deletion request and returns a
    #                 <code>DeletionTaskId</code>, which you can use to check the status of the deletion.
    #             Before you call this operation, confirm that the role has no active sessions and that
    #             any resources used by the role in the linked service are deleted. If you call this
    #             operation more than once for the same service-linked role and an earlier deletion task
    #             is not complete, then the <code>DeletionTaskId</code> of the earlier request is
    #             returned.</p>
    #         <p>If you submit a deletion request for a service-linked role whose linked service is
    #             still accessing a resource, then the deletion task fails. If it fails, the <a>GetServiceLinkedRoleDeletionStatus</a> operation returns the reason for the
    #             failure, usually including the resources that must be deleted. To delete the
    #             service-linked role, you must first remove those resources from the linked service and
    #             then submit the deletion request again. Resources are specific to the service that is
    #             linked to the role. For more information about removing resources from a service, see
    #             the <a href="http://docs.aws.amazon.com/">Amazon Web Services documentation</a> for your
    #             service.</p>
    #         <p>For more information about service-linked roles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_terms-and-concepts.html#iam-term-service-linked-role">Roles terms and concepts: Amazon Web Services service-linked role</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteServiceLinkedRoleInput}.
    #
    # @option params [String] :role_name
    #   <p>The name of the service-linked role to be deleted.</p>
    #
    # @return [Types::DeleteServiceLinkedRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_linked_role(
    #     role_name: 'RoleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteServiceLinkedRoleOutput
    #   resp.data.deletion_task_id #=> String
    #
    def delete_service_linked_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteServiceLinkedRoleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteServiceLinkedRoleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteServiceLinkedRole
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteServiceLinkedRole
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteServiceLinkedRole,
        stubs: @stubs,
        params_class: Params::DeleteServiceLinkedRoleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_service_linked_role
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified service-specific credential.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteServiceSpecificCredentialInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the IAM user associated with the service-specific credential. If this
    #               value is not specified, then the operation assumes the user whose credentials are used
    #               to call the operation.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :service_specific_credential_id
    #   <p>The unique identifier of the service-specific credential. You can get this value by
    #               calling <a>ListServiceSpecificCredentials</a>.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can
    #       consist of any upper or lowercased letter or digit.</p>
    #
    # @return [Types::DeleteServiceSpecificCredentialOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_service_specific_credential(
    #     user_name: 'UserName',
    #     service_specific_credential_id: 'ServiceSpecificCredentialId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteServiceSpecificCredentialOutput
    #
    def delete_service_specific_credential(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteServiceSpecificCredentialInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteServiceSpecificCredentialInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteServiceSpecificCredential
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException]),
        data_parser: Parsers::DeleteServiceSpecificCredential
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteServiceSpecificCredential,
        stubs: @stubs,
        params_class: Params::DeleteServiceSpecificCredentialOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_service_specific_credential
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a signing certificate associated with the specified IAM user.</p>
    #         <p>If you do not specify a user name, IAM determines the user name implicitly based on
    #             the Amazon Web Services access key ID signing the request. This operation works for access keys under
    #             the Amazon Web Services account. Consequently, you can use this operation to manage Amazon Web Services account root
    #             user credentials even if the Amazon Web Services account has no associated IAM users.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteSigningCertificateInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user the signing certificate belongs to.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :certificate_id
    #   <p>The ID of the signing certificate to delete.</p>
    #           <p>The format of this parameter, as described by its <a href="http://wikipedia.org/wiki/regex">regex</a> pattern, is a string of
    #               characters that can be upper- or lower-cased letters or digits.</p>
    #
    # @return [Types::DeleteSigningCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_signing_certificate(
    #     user_name: 'UserName',
    #     certificate_id: 'CertificateId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteSigningCertificateOutput
    #
    def delete_signing_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteSigningCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteSigningCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteSigningCertificate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteSigningCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteSigningCertificate,
        stubs: @stubs,
        params_class: Params::DeleteSigningCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_signing_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified IAM user. Unlike the Amazon Web Services Management Console, when you delete a user
    #             programmatically, you must delete the items attached to the user manually, or the
    #             deletion fails. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_deleting_cli">Deleting an IAM
    #                 user</a>. Before attempting to delete a user, remove the following items:</p>
    #         <ul>
    #             <li>
    #                 <p>Password (<a>DeleteLoginProfile</a>)</p>
    #             </li>
    #             <li>
    #                 <p>Access keys (<a>DeleteAccessKey</a>)</p>
    #             </li>
    #             <li>
    #                 <p>Signing certificate (<a>DeleteSigningCertificate</a>)</p>
    #             </li>
    #             <li>
    #                 <p>SSH public key (<a>DeleteSSHPublicKey</a>)</p>
    #             </li>
    #             <li>
    #                 <p>Git credentials (<a>DeleteServiceSpecificCredential</a>)</p>
    #             </li>
    #             <li>
    #                 <p>Multi-factor authentication (MFA) device (<a>DeactivateMFADevice</a>, <a>DeleteVirtualMFADevice</a>)</p>
    #             </li>
    #             <li>
    #                 <p>Inline policies (<a>DeleteUserPolicy</a>)</p>
    #             </li>
    #             <li>
    #                 <p>Attached managed policies (<a>DetachUserPolicy</a>)</p>
    #             </li>
    #             <li>
    #                 <p>Group memberships (<a>RemoveUserFromGroup</a>)</p>
    #             </li>
    #          </ul>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user to delete.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::DeleteUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user(
    #     user_name: 'UserName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserOutput
    #
    def delete_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::DeleteConflictException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUser,
        stubs: @stubs,
        params_class: Params::DeleteUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the permissions boundary for the specified IAM user.</p>
    #         <important>
    #             <p>Deleting the permissions boundary for a user might increase its permissions by
    #                 allowing the user to perform all the actions granted in its permissions policies.
    #             </p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserPermissionsBoundaryInput}.
    #
    # @option params [String] :user_name
    #   <p>The name (friendly name, not ARN) of the IAM user from which you want to remove the
    #               permissions boundary.</p>
    #
    # @return [Types::DeleteUserPermissionsBoundaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_permissions_boundary(
    #     user_name: 'UserName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserPermissionsBoundaryOutput
    #
    def delete_user_permissions_boundary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserPermissionsBoundaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserPermissionsBoundaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUserPermissionsBoundary
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteUserPermissionsBoundary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUserPermissionsBoundary,
        stubs: @stubs,
        params_class: Params::DeleteUserPermissionsBoundaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user_permissions_boundary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified inline policy that is embedded in the specified IAM
    #             user.</p>
    #         <p>A user can also have managed policies attached to it. To detach a managed policy from
    #             a user, use <a>DetachUserPolicy</a>. For more information about policies,
    #             refer to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserPolicyInput}.
    #
    # @option params [String] :user_name
    #   <p>The name (friendly name, not ARN) identifying the user that the policy is embedded
    #               in.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :policy_name
    #   <p>The name identifying the policy document to delete.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::DeleteUserPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user_policy(
    #     user_name: 'UserName', # required
    #     policy_name: 'PolicyName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserPolicyOutput
    #
    def delete_user_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUserPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteUserPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUserPolicy,
        stubs: @stubs,
        params_class: Params::DeleteUserPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a virtual MFA device.</p>
    #         <note>
    #             <p> You must deactivate a user's virtual MFA device before you can delete it. For
    #                 information about deactivating MFA devices, see <a>DeactivateMFADevice</a>. </p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteVirtualMFADeviceInput}.
    #
    # @option params [String] :serial_number
    #   <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices,
    #               the serial number is the same as the ARN.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of upper and lowercase alphanumeric characters with no spaces. You can also include any of the
    #       following characters: =,.@:/-</p>
    #
    # @return [Types::DeleteVirtualMFADeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_virtual_mfa_device(
    #     serial_number: 'SerialNumber' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteVirtualMFADeviceOutput
    #
    def delete_virtual_mfa_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteVirtualMFADeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteVirtualMFADeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteVirtualMFADevice
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::DeleteConflictException, Errors::ServiceFailureException]),
        data_parser: Parsers::DeleteVirtualMFADevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteVirtualMFADevice,
        stubs: @stubs,
        params_class: Params::DeleteVirtualMFADeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_virtual_mfa_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified managed policy from the specified IAM group.</p>
    #         <p>A group can also have inline policies embedded with it. To delete an inline policy,
    #             use <a>DeleteGroupPolicy</a>. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed
    #                 policies and inline policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DetachGroupPolicyInput}.
    #
    # @option params [String] :group_name
    #   <p>The name (friendly name, not ARN) of the IAM group to detach the policy from.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @return [Types::DetachGroupPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_group_policy(
    #     group_name: 'GroupName', # required
    #     policy_arn: 'PolicyArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetachGroupPolicyOutput
    #
    def detach_group_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetachGroupPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetachGroupPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetachGroupPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::DetachGroupPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetachGroupPolicy,
        stubs: @stubs,
        params_class: Params::DetachGroupPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detach_group_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified managed policy from the specified role.</p>
    #         <p>A role can also have inline policies embedded with it. To delete an inline policy, use
    #                 <a>DeleteRolePolicy</a>. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed
    #                 policies and inline policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DetachRolePolicyInput}.
    #
    # @option params [String] :role_name
    #   <p>The name (friendly name, not ARN) of the IAM role to detach the policy from.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @return [Types::DetachRolePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_role_policy(
    #     role_name: 'RoleName', # required
    #     policy_arn: 'PolicyArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetachRolePolicyOutput
    #
    def detach_role_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetachRolePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetachRolePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetachRolePolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnmodifiableEntityException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::DetachRolePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetachRolePolicy,
        stubs: @stubs,
        params_class: Params::DetachRolePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detach_role_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified managed policy from the specified user.</p>
    #         <p>A user can also have inline policies embedded with it. To delete an inline policy, use
    #                 <a>DeleteUserPolicy</a>. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed
    #                 policies and inline policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DetachUserPolicyInput}.
    #
    # @option params [String] :user_name
    #   <p>The name (friendly name, not ARN) of the IAM user to detach the policy from.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy you want to detach.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @return [Types::DetachUserPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_user_policy(
    #     user_name: 'UserName', # required
    #     policy_arn: 'PolicyArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetachUserPolicyOutput
    #
    def detach_user_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetachUserPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetachUserPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetachUserPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::DetachUserPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetachUserPolicy,
        stubs: @stubs,
        params_class: Params::DetachUserPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detach_user_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the specified MFA device and associates it with the specified IAM user. When
    #             enabled, the MFA device is required for every subsequent login by the IAM user
    #             associated with the device.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableMFADeviceInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the IAM user for whom you want to enable the MFA device.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :serial_number
    #   <p>The serial number that uniquely identifies the MFA device. For virtual MFA devices,
    #               the serial number is the device ARN.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of upper and lowercase alphanumeric characters with no spaces. You can also include any of the
    #       following characters: =,.@:/-</p>
    #
    # @option params [String] :authentication_code1
    #   <p>An authentication code emitted by the device. </p>
    #           <p>The format for this parameter is a string of six digits.</p>
    #           <important>
    #               <p>Submit your request immediately after generating the authentication codes. If you
    #                   generate the codes and then wait too long to submit the request, the MFA device
    #                   successfully associates with the user but the MFA device becomes out of sync. This
    #                   happens because time-based one-time passwords (TOTP) expire after a short period of
    #                   time. If this happens, you can <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html">resync the
    #                   device</a>.</p>
    #           </important>
    #
    # @option params [String] :authentication_code2
    #   <p>A subsequent authentication code emitted by the device.</p>
    #           <p>The format for this parameter is a string of six digits.</p>
    #           <important>
    #               <p>Submit your request immediately after generating the authentication codes. If you
    #                   generate the codes and then wait too long to submit the request, the MFA device
    #                   successfully associates with the user but the MFA device becomes out of sync. This
    #                   happens because time-based one-time passwords (TOTP) expire after a short period of
    #                   time. If this happens, you can <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html">resync the
    #                   device</a>.</p>
    #           </important>
    #
    # @return [Types::EnableMFADeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_mfa_device(
    #     user_name: 'UserName', # required
    #     serial_number: 'SerialNumber', # required
    #     authentication_code1: 'AuthenticationCode1', # required
    #     authentication_code2: 'AuthenticationCode2' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableMFADeviceOutput
    #
    def enable_mfa_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableMFADeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableMFADeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableMFADevice
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityTemporarilyUnmodifiableException, Errors::EntityAlreadyExistsException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidAuthenticationCodeException, Errors::ServiceFailureException]),
        data_parser: Parsers::EnableMFADevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableMFADevice,
        stubs: @stubs,
        params_class: Params::EnableMFADeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_mfa_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Generates a credential report for the Amazon Web Services account. For more information about the
    #             credential report, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting credential reports</a> in
    #             the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GenerateCredentialReportInput}.
    #
    # @return [Types::GenerateCredentialReportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_credential_report()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GenerateCredentialReportOutput
    #   resp.data.state #=> String, one of ["STARTED", "INPROGRESS", "COMPLETE"]
    #   resp.data.description #=> String
    #
    def generate_credential_report(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GenerateCredentialReportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GenerateCredentialReportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GenerateCredentialReport
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::ServiceFailureException]),
        data_parser: Parsers::GenerateCredentialReport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GenerateCredentialReport,
        stubs: @stubs,
        params_class: Params::GenerateCredentialReportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :generate_credential_report
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates a report for service last accessed data for Organizations. You can generate a
    #             report for any entities (organization root, organizational unit, or account) or policies
    #             in your organization.</p>
    #         <p>To call this operation, you must be signed in using your Organizations management account
    #             credentials. You can use your long-term IAM user or root user credentials, or
    #             temporary credentials from assuming an IAM role. SCPs must be enabled for your
    #             organization root. You must have the required IAM and Organizations permissions. For more
    #             information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html">Refining permissions using
    #                 service last accessed data</a> in the
    #             <i>IAM User Guide</i>.</p>
    #         <p>You can generate a service last accessed data report for entities by specifying only
    #             the entity's path. This data includes a list of services that are allowed by any service
    #             control policies (SCPs) that apply to the entity.</p>
    #         <p>You can generate a service last accessed data report for a policy by specifying an
    #             entity's path and an optional Organizations policy ID. This data includes a list of services that
    #             are allowed by the specified SCP.</p>
    #         <p>For each service in both report types, the data includes the most recent account
    #             activity that the policy allows to account principals in the entity or the entity's
    #             children. For important information about the data, reporting period, permissions
    #             required, troubleshooting, and supported Regions see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html">Reducing permissions using
    #                 service last accessed data</a> in the
    #             <i>IAM User Guide</i>.</p>
    #         <important>
    #             <p>The data includes all attempts to access Amazon Web Services, not just the successful ones. This
    #                 includes all attempts that were made using the Amazon Web Services Management Console, the Amazon Web Services API through any
    #                 of the SDKs, or any of the command line tools. An unexpected entry in the service
    #                 last accessed data does not mean that an account has been compromised, because the
    #                 request might have been denied. Refer to your CloudTrail logs as the authoritative
    #                 source for information about all API calls and whether they were successful or
    #                 denied access. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html">Logging IAM events with
    #                     CloudTrail</a> in the <i>IAM User Guide</i>.</p>
    #         </important>
    #         <p>This operation returns a <code>JobId</code>. Use this parameter in the <code>
    #                <a>GetOrganizationsAccessReport</a>
    #             </code> operation to check the status of
    #             the report generation. To check the status of this request, use the <code>JobId</code>
    #             parameter in the <code>
    #                <a>GetOrganizationsAccessReport</a>
    #             </code> operation
    #             and test the <code>JobStatus</code> response parameter. When the job is complete, you
    #             can retrieve the report.</p>
    #         <p>To generate a service last accessed data report for entities, specify an entity path
    #             without specifying the optional Organizations policy ID. The type of entity that you specify
    #             determines the data returned in the report.</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <b>Root</b> – When you specify the
    #                     organizations root as the entity, the resulting report lists all of the services
    #                     allowed by SCPs that are attached to your root. For each service, the report
    #                     includes data for all accounts in your organization except the
    #                     management account, because the management account is not limited by SCPs.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>OU</b> – When you specify an
    #                     organizational unit (OU) as the entity, the resulting report lists all of the
    #                     services allowed by SCPs that are attached to the OU and its parents. For each
    #                     service, the report includes data for all accounts in the OU or its children.
    #                     This data excludes the management account, because the management account is not
    #                     limited by SCPs.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>management account</b> – When you specify the
    #                     management account, the resulting report lists all Amazon Web Services services, because the
    #                     management account is not limited by SCPs. For each service, the report includes
    #                     data for only the management account.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Account</b> – When you specify another
    #                     account as the entity, the resulting report lists all of the services allowed by
    #                     SCPs that are attached to the account and its parents. For each service, the
    #                     report includes data for only the specified account.</p>
    #             </li>
    #          </ul>
    #         <p>To generate a service last accessed data report for policies, specify an entity path
    #             and the optional Organizations policy ID. The type of entity that you specify determines the data
    #             returned for each service.</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <b>Root</b> – When you specify the root
    #                     entity and a policy ID, the resulting report lists all of the services that are
    #                     allowed by the specified SCP. For each service, the report includes data for all
    #                     accounts in your organization to which the SCP applies. This data excludes the
    #                     management account, because the management account is not limited by SCPs. If the
    #                     SCP is not attached to any entities in the organization, then the report will
    #                     return a list of services with no data.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>OU</b> – When you specify an OU entity and
    #                     a policy ID, the resulting report lists all of the services that are allowed by
    #                     the specified SCP. For each service, the report includes data for all accounts
    #                     in the OU or its children to which the SCP applies. This means that other
    #                     accounts outside the OU that are affected by the SCP might not be included in
    #                     the data. This data excludes the management account, because the
    #                     management account is not limited by SCPs. If the SCP is not attached to the OU
    #                     or one of its children, the report will return a list of services with no
    #                     data.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>management account</b> – When you specify the
    #                     management account, the resulting report lists all Amazon Web Services services, because the
    #                     management account is not limited by SCPs. If you specify a policy ID in the CLI
    #                     or API, the policy is ignored. For each service, the report includes data for
    #                     only the management account.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Account</b> – When you specify another
    #                     account entity and a policy ID, the resulting report lists all of the services
    #                     that are allowed by the specified SCP. For each service, the report includes
    #                     data for only the specified account. This means that other accounts in the
    #                     organization that are affected by the SCP might not be included in the data. If
    #                     the SCP is not attached to the account, the report will return a list of
    #                     services with no data.</p>
    #             </li>
    #          </ul>
    #         <note>
    #             <p>Service last accessed data does not use other policy types when determining
    #                 whether a principal could access a service. These other policy types include
    #                 identity-based policies, resource-based policies, access control lists, IAM
    #                 permissions boundaries, and STS assume role policies. It only applies SCP logic.
    #                 For more about the evaluation of policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics">Evaluating policies</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #         </note>
    #         <p>For more information about service last accessed data, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html">Reducing policy scope by
    #                 viewing user activity</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GenerateOrganizationsAccessReportInput}.
    #
    # @option params [String] :entity_path
    #   <p>The path of the Organizations entity (root, OU, or account). You can build an entity path
    #               using the known structure of your organization. For example, assume that your account ID
    #               is <code>123456789012</code> and its parent OU ID is <code>ou-rge0-awsabcde</code>. The
    #               organization root ID is <code>r-f6g7h8i9j0example</code> and your organization ID is
    #                   <code>o-a1b2c3d4e5</code>. Your entity path is
    #                   <code>o-a1b2c3d4e5/r-f6g7h8i9j0example/ou-rge0-awsabcde/123456789012</code>.</p>
    #
    # @option params [String] :organizations_policy_id
    #   <p>The identifier of the Organizations service control policy (SCP). This parameter is
    #               optional.</p>
    #           <p>This ID is used to generate information about when an account principal that is
    #               limited by the SCP attempted to access an Amazon Web Services service.</p>
    #
    # @return [Types::GenerateOrganizationsAccessReportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_organizations_access_report(
    #     entity_path: 'EntityPath', # required
    #     organizations_policy_id: 'OrganizationsPolicyId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GenerateOrganizationsAccessReportOutput
    #   resp.data.job_id #=> String
    #
    def generate_organizations_access_report(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GenerateOrganizationsAccessReportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GenerateOrganizationsAccessReportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GenerateOrganizationsAccessReport
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ReportGenerationLimitExceededException]),
        data_parser: Parsers::GenerateOrganizationsAccessReport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GenerateOrganizationsAccessReport,
        stubs: @stubs,
        params_class: Params::GenerateOrganizationsAccessReportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :generate_organizations_access_report
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Generates a report that includes details about when an IAM resource (user, group,
    #             role, or policy) was last used in an attempt to access Amazon Web Services services. Recent activity
    #             usually appears within four hours. IAM reports activity for at least the last 400
    #             days, or less if your Region began supporting this feature within the last year. For
    #             more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html#access-advisor_tracking-period">Regions where data is tracked</a>.</p>
    #         <important>
    #             <p>The service last accessed data includes all attempts to access an Amazon Web Services API, not
    #                 just the successful ones. This includes all attempts that were made using the
    #                 Amazon Web Services Management Console, the Amazon Web Services API through any of the SDKs, or any of the command line tools.
    #                 An unexpected entry in the service last accessed data does not mean that your
    #                 account has been compromised, because the request might have been denied. Refer to
    #                 your CloudTrail logs as the authoritative source for information about all API calls
    #                 and whether they were successful or denied access. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/cloudtrail-integration.html">Logging
    #                     IAM events with CloudTrail</a> in the
    #                     <i>IAM User Guide</i>.</p>
    #         </important>
    #         <p>The <code>GenerateServiceLastAccessedDetails</code> operation returns a
    #                 <code>JobId</code>. Use this parameter in the following operations to retrieve the
    #             following details from your report: </p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <a>GetServiceLastAccessedDetails</a> – Use this operation
    #                     for users, groups, roles, or policies to list every Amazon Web Services service that the
    #                     resource could access using permissions policies. For each service, the response
    #                     includes information about the most recent access attempt.</p>
    #                 <p>The <code>JobId</code> returned by
    #                         <code>GenerateServiceLastAccessedDetail</code> must be used by the same role
    #                     within a session, or by the same user when used to call
    #                         <code>GetServiceLastAccessedDetail</code>.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <a>GetServiceLastAccessedDetailsWithEntities</a> – Use this
    #                     operation for groups and policies to list information about the associated
    #                     entities (users or roles) that attempted to access a specific Amazon Web Services service.
    #                 </p>
    #             </li>
    #          </ul>
    #         <p>To check the status of the <code>GenerateServiceLastAccessedDetails</code> request,
    #             use the <code>JobId</code> parameter in the same operations and test the
    #                 <code>JobStatus</code> response parameter.</p>
    #         <p>For additional information about the permissions policies that allow an identity
    #             (user, group, or role) to access specific services, use the <a>ListPoliciesGrantingServiceAccess</a> operation.</p>
    #         <note>
    #             <p>Service last accessed data does not use other policy types when determining
    #                 whether a resource could access a service. These other policy types include
    #                 resource-based policies, access control lists, Organizations policies, IAM permissions
    #                 boundaries, and STS assume role policies. It only applies permissions policy
    #                 logic. For more about the evaluation of policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics">Evaluating policies</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #         </note>
    #         <p>For more information about service and action last accessed data, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html">Reducing permissions using service last accessed data</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GenerateServiceLastAccessedDetailsInput}.
    #
    # @option params [String] :arn
    #   <p>The ARN of the IAM resource (user, group, role, or managed policy) used to generate
    #               information about when the resource was last used in an attempt to access an Amazon Web Services
    #               service.</p>
    #
    # @option params [String] :granularity
    #   <p>The level of detail that you want to generate. You can specify whether you want to
    #               generate information about the last attempt to access services or actions. If you
    #               specify service-level granularity, this operation generates only service data. If you
    #               specify action-level granularity, it generates service and action data. If you don't
    #               include this optional parameter, the operation generates service data.</p>
    #
    # @return [Types::GenerateServiceLastAccessedDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.generate_service_last_accessed_details(
    #     arn: 'Arn', # required
    #     granularity: 'SERVICE_LEVEL' # accepts ["SERVICE_LEVEL", "ACTION_LEVEL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GenerateServiceLastAccessedDetailsOutput
    #   resp.data.job_id #=> String
    #
    def generate_service_last_accessed_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GenerateServiceLastAccessedDetailsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GenerateServiceLastAccessedDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GenerateServiceLastAccessedDetails
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException]),
        data_parser: Parsers::GenerateServiceLastAccessedDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GenerateServiceLastAccessedDetails,
        stubs: @stubs,
        params_class: Params::GenerateServiceLastAccessedDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :generate_service_last_accessed_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about when the specified access key was last used. The
    #             information includes the date and time of last use, along with the Amazon Web Services service and
    #             Region that were specified in the last request made with that key.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAccessKeyLastUsedInput}.
    #
    # @option params [String] :access_key_id
    #   <p>The identifier of an access key.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can
    #       consist of any upper or lowercased letter or digit.</p>
    #
    # @return [Types::GetAccessKeyLastUsedOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_key_last_used(
    #     access_key_id: 'AccessKeyId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccessKeyLastUsedOutput
    #   resp.data.user_name #=> String
    #   resp.data.access_key_last_used #=> Types::AccessKeyLastUsed
    #   resp.data.access_key_last_used.last_used_date #=> Time
    #   resp.data.access_key_last_used.service_name #=> String
    #   resp.data.access_key_last_used.region #=> String
    #
    def get_access_key_last_used(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccessKeyLastUsedInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccessKeyLastUsedInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccessKeyLastUsed
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException]),
        data_parser: Parsers::GetAccessKeyLastUsed
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccessKeyLastUsed,
        stubs: @stubs,
        params_class: Params::GetAccessKeyLastUsedOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_access_key_last_used
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about all IAM users, groups, roles, and policies in your Amazon Web Services
    #             account, including their relationships to one another. Use this operation to obtain a
    #             snapshot of the configuration of IAM permissions (users, groups, roles, and policies)
    #             in your account.</p>
    #         <note>
    #             <p>Policies returned by this operation are URL-encoded compliant
    #     with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL
    #     decoding method to convert the policy back to plain JSON text. For example, if you use Java, you
    #     can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in
    #     the Java SDK. Other languages and SDKs provide similar functionality.</p>
    #          </note>
    #         <p>You can optionally filter the results using the <code>Filter</code> parameter. You can
    #             paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAccountAuthorizationDetailsInput}.
    #
    # @option params [Array<String>] :filter
    #   <p>A list of entity types used to filter the results. Only the entities that match the
    #               types you specify are included in the output. Use the value
    #                   <code>LocalManagedPolicy</code> to include customer managed policies.</p>
    #           <p>The format for this parameter is a comma-separated (if more than one) list of strings.
    #               Each string value in the list must be one of the valid values listed below.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @return [Types::GetAccountAuthorizationDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_authorization_details(
    #     filter: [
    #       'User' # accepts ["User", "Role", "Group", "LocalManagedPolicy", "AWSManagedPolicy"]
    #     ],
    #     max_items: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccountAuthorizationDetailsOutput
    #   resp.data.user_detail_list #=> Array<UserDetail>
    #   resp.data.user_detail_list[0] #=> Types::UserDetail
    #   resp.data.user_detail_list[0].path #=> String
    #   resp.data.user_detail_list[0].user_name #=> String
    #   resp.data.user_detail_list[0].user_id #=> String
    #   resp.data.user_detail_list[0].arn #=> String
    #   resp.data.user_detail_list[0].create_date #=> Time
    #   resp.data.user_detail_list[0].user_policy_list #=> Array<PolicyDetail>
    #   resp.data.user_detail_list[0].user_policy_list[0] #=> Types::PolicyDetail
    #   resp.data.user_detail_list[0].user_policy_list[0].policy_name #=> String
    #   resp.data.user_detail_list[0].user_policy_list[0].policy_document #=> String
    #   resp.data.user_detail_list[0].group_list #=> Array<String>
    #   resp.data.user_detail_list[0].group_list[0] #=> String
    #   resp.data.user_detail_list[0].attached_managed_policies #=> Array<AttachedPolicy>
    #   resp.data.user_detail_list[0].attached_managed_policies[0] #=> Types::AttachedPolicy
    #   resp.data.user_detail_list[0].attached_managed_policies[0].policy_name #=> String
    #   resp.data.user_detail_list[0].attached_managed_policies[0].policy_arn #=> String
    #   resp.data.user_detail_list[0].permissions_boundary #=> Types::AttachedPermissionsBoundary
    #   resp.data.user_detail_list[0].permissions_boundary.permissions_boundary_type #=> String, one of ["PermissionsBoundaryPolicy"]
    #   resp.data.user_detail_list[0].permissions_boundary.permissions_boundary_arn #=> String
    #   resp.data.user_detail_list[0].tags #=> Array<Tag>
    #   resp.data.user_detail_list[0].tags[0] #=> Types::Tag
    #   resp.data.user_detail_list[0].tags[0].key #=> String
    #   resp.data.user_detail_list[0].tags[0].value #=> String
    #   resp.data.group_detail_list #=> Array<GroupDetail>
    #   resp.data.group_detail_list[0] #=> Types::GroupDetail
    #   resp.data.group_detail_list[0].path #=> String
    #   resp.data.group_detail_list[0].group_name #=> String
    #   resp.data.group_detail_list[0].group_id #=> String
    #   resp.data.group_detail_list[0].arn #=> String
    #   resp.data.group_detail_list[0].create_date #=> Time
    #   resp.data.group_detail_list[0].group_policy_list #=> Array<PolicyDetail>
    #   resp.data.group_detail_list[0].attached_managed_policies #=> Array<AttachedPolicy>
    #   resp.data.role_detail_list #=> Array<RoleDetail>
    #   resp.data.role_detail_list[0] #=> Types::RoleDetail
    #   resp.data.role_detail_list[0].path #=> String
    #   resp.data.role_detail_list[0].role_name #=> String
    #   resp.data.role_detail_list[0].role_id #=> String
    #   resp.data.role_detail_list[0].arn #=> String
    #   resp.data.role_detail_list[0].create_date #=> Time
    #   resp.data.role_detail_list[0].assume_role_policy_document #=> String
    #   resp.data.role_detail_list[0].instance_profile_list #=> Array<InstanceProfile>
    #   resp.data.role_detail_list[0].instance_profile_list[0] #=> Types::InstanceProfile
    #   resp.data.role_detail_list[0].instance_profile_list[0].path #=> String
    #   resp.data.role_detail_list[0].instance_profile_list[0].instance_profile_name #=> String
    #   resp.data.role_detail_list[0].instance_profile_list[0].instance_profile_id #=> String
    #   resp.data.role_detail_list[0].instance_profile_list[0].arn #=> String
    #   resp.data.role_detail_list[0].instance_profile_list[0].create_date #=> Time
    #   resp.data.role_detail_list[0].instance_profile_list[0].roles #=> Array<Role>
    #   resp.data.role_detail_list[0].instance_profile_list[0].roles[0] #=> Types::Role
    #   resp.data.role_detail_list[0].instance_profile_list[0].roles[0].path #=> String
    #   resp.data.role_detail_list[0].instance_profile_list[0].roles[0].role_name #=> String
    #   resp.data.role_detail_list[0].instance_profile_list[0].roles[0].role_id #=> String
    #   resp.data.role_detail_list[0].instance_profile_list[0].roles[0].arn #=> String
    #   resp.data.role_detail_list[0].instance_profile_list[0].roles[0].create_date #=> Time
    #   resp.data.role_detail_list[0].instance_profile_list[0].roles[0].assume_role_policy_document #=> String
    #   resp.data.role_detail_list[0].instance_profile_list[0].roles[0].description #=> String
    #   resp.data.role_detail_list[0].instance_profile_list[0].roles[0].max_session_duration #=> Integer
    #   resp.data.role_detail_list[0].instance_profile_list[0].roles[0].permissions_boundary #=> Types::AttachedPermissionsBoundary
    #   resp.data.role_detail_list[0].instance_profile_list[0].roles[0].tags #=> Array<Tag>
    #   resp.data.role_detail_list[0].instance_profile_list[0].roles[0].role_last_used #=> Types::RoleLastUsed
    #   resp.data.role_detail_list[0].instance_profile_list[0].roles[0].role_last_used.last_used_date #=> Time
    #   resp.data.role_detail_list[0].instance_profile_list[0].roles[0].role_last_used.region #=> String
    #   resp.data.role_detail_list[0].instance_profile_list[0].tags #=> Array<Tag>
    #   resp.data.role_detail_list[0].role_policy_list #=> Array<PolicyDetail>
    #   resp.data.role_detail_list[0].attached_managed_policies #=> Array<AttachedPolicy>
    #   resp.data.role_detail_list[0].permissions_boundary #=> Types::AttachedPermissionsBoundary
    #   resp.data.role_detail_list[0].tags #=> Array<Tag>
    #   resp.data.role_detail_list[0].role_last_used #=> Types::RoleLastUsed
    #   resp.data.policies #=> Array<ManagedPolicyDetail>
    #   resp.data.policies[0] #=> Types::ManagedPolicyDetail
    #   resp.data.policies[0].policy_name #=> String
    #   resp.data.policies[0].policy_id #=> String
    #   resp.data.policies[0].arn #=> String
    #   resp.data.policies[0].path #=> String
    #   resp.data.policies[0].default_version_id #=> String
    #   resp.data.policies[0].attachment_count #=> Integer
    #   resp.data.policies[0].permissions_boundary_usage_count #=> Integer
    #   resp.data.policies[0].is_attachable #=> Boolean
    #   resp.data.policies[0].description #=> String
    #   resp.data.policies[0].create_date #=> Time
    #   resp.data.policies[0].update_date #=> Time
    #   resp.data.policies[0].policy_version_list #=> Array<PolicyVersion>
    #   resp.data.policies[0].policy_version_list[0] #=> Types::PolicyVersion
    #   resp.data.policies[0].policy_version_list[0].document #=> String
    #   resp.data.policies[0].policy_version_list[0].version_id #=> String
    #   resp.data.policies[0].policy_version_list[0].is_default_version #=> Boolean
    #   resp.data.policies[0].policy_version_list[0].create_date #=> Time
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def get_account_authorization_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccountAuthorizationDetailsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccountAuthorizationDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccountAuthorizationDetails
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException]),
        data_parser: Parsers::GetAccountAuthorizationDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccountAuthorizationDetails,
        stubs: @stubs,
        params_class: Params::GetAccountAuthorizationDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_account_authorization_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the password policy for the Amazon Web Services account. This tells you the complexity
    #             requirements and mandatory rotation periods for the IAM user passwords in your account.
    #             For more information about using a password policy, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html">Managing an IAM password
    #                 policy</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAccountPasswordPolicyInput}.
    #
    # @return [Types::GetAccountPasswordPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_password_policy()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccountPasswordPolicyOutput
    #   resp.data.password_policy #=> Types::PasswordPolicy
    #   resp.data.password_policy.minimum_password_length #=> Integer
    #   resp.data.password_policy.require_symbols #=> Boolean
    #   resp.data.password_policy.require_numbers #=> Boolean
    #   resp.data.password_policy.require_uppercase_characters #=> Boolean
    #   resp.data.password_policy.require_lowercase_characters #=> Boolean
    #   resp.data.password_policy.allow_users_to_change_password #=> Boolean
    #   resp.data.password_policy.expire_passwords #=> Boolean
    #   resp.data.password_policy.max_password_age #=> Integer
    #   resp.data.password_policy.password_reuse_prevention #=> Integer
    #   resp.data.password_policy.hard_expiry #=> Boolean
    #
    def get_account_password_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccountPasswordPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccountPasswordPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccountPasswordPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetAccountPasswordPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccountPasswordPolicy,
        stubs: @stubs,
        params_class: Params::GetAccountPasswordPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_account_password_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about IAM entity usage and IAM quotas in the Amazon Web Services
    #             account.</p>
    #         <p> For information about IAM quotas, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS quotas</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetAccountSummaryInput}.
    #
    # @return [Types::GetAccountSummaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_account_summary()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccountSummaryOutput
    #   resp.data.summary_map #=> Hash<String, Integer>
    #   resp.data.summary_map['key'] #=> Integer
    #
    def get_account_summary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccountSummaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccountSummaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccountSummary
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException]),
        data_parser: Parsers::GetAccountSummary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccountSummary,
        stubs: @stubs,
        params_class: Params::GetAccountSummaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_account_summary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of all of the context keys referenced in the input policies. The policies
    #             are supplied as a list of one or more strings. To get the context keys from policies
    #             associated with an IAM user, group, or role, use <a>GetContextKeysForPrincipalPolicy</a>.</p>
    #         <p>Context keys are variables maintained by Amazon Web Services and its services that provide details
    #             about the context of an API query request. Context keys can be evaluated by testing
    #             against a value specified in an IAM policy. Use
    #                 <code>GetContextKeysForCustomPolicy</code> to understand what key names and values
    #             you must supply when you call <a>SimulateCustomPolicy</a>. Note that all
    #             parameters are shown in unencoded form here for clarity but must be URL encoded to be
    #             included as a part of a real HTML request.</p>
    #
    # @param [Hash] params
    #   See {Types::GetContextKeysForCustomPolicyInput}.
    #
    # @option params [Array<String>] :policy_input_list
    #   <p>A list of policies for which you want the list of context keys referenced in those
    #               policies. Each document is specified as a string containing the complete, valid JSON
    #               text of an IAM policy.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::GetContextKeysForCustomPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_context_keys_for_custom_policy(
    #     policy_input_list: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetContextKeysForCustomPolicyOutput
    #   resp.data.context_key_names #=> Array<String>
    #   resp.data.context_key_names[0] #=> String
    #
    def get_context_keys_for_custom_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetContextKeysForCustomPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetContextKeysForCustomPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetContextKeysForCustomPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException]),
        data_parser: Parsers::GetContextKeysForCustomPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetContextKeysForCustomPolicy,
        stubs: @stubs,
        params_class: Params::GetContextKeysForCustomPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_context_keys_for_custom_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets a list of all of the context keys referenced in all the IAM policies that are
    #             attached to the specified IAM entity. The entity can be an IAM user, group, or role.
    #             If you specify a user, then the request also includes all of the policies attached to
    #             groups that the user is a member of.</p>
    #         <p>You can optionally include a list of one or more additional policies, specified as
    #             strings. If you want to include <i>only</i> a list of policies by string,
    #             use <a>GetContextKeysForCustomPolicy</a> instead.</p>
    #         <p>
    #             <b>Note:</b> This operation discloses information about the
    #             permissions granted to other users. If you do not want users to see other user's
    #             permissions, then consider allowing them to use <a>GetContextKeysForCustomPolicy</a> instead.</p>
    #         <p>Context keys are variables maintained by Amazon Web Services and its services that provide details
    #             about the context of an API query request. Context keys can be evaluated by testing
    #             against a value in an IAM policy. Use <a>GetContextKeysForPrincipalPolicy</a> to understand what key names and values you must supply when you call <a>SimulatePrincipalPolicy</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetContextKeysForPrincipalPolicyInput}.
    #
    # @option params [String] :policy_source_arn
    #   <p>The ARN of a user, group, or role whose policies contain the context keys that you
    #               want listed. If you specify a user, the list includes context keys that are found in all
    #               policies that are attached to the user. The list also includes all groups that the user
    #               is a member of. If you pick a group or a role, then it includes only those context keys
    #               that are found in policies attached to that entity. Note that all parameters are shown
    #               in unencoded form here for clarity, but must be URL encoded to be included as a part of
    #               a real HTML request.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [Array<String>] :policy_input_list
    #   <p>An optional list of additional policies for which you want the list of context keys
    #               that are referenced.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::GetContextKeysForPrincipalPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_context_keys_for_principal_policy(
    #     policy_source_arn: 'PolicySourceArn', # required
    #     policy_input_list: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetContextKeysForPrincipalPolicyOutput
    #   resp.data.context_key_names #=> Array<String>
    #   resp.data.context_key_names[0] #=> String
    #
    def get_context_keys_for_principal_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetContextKeysForPrincipalPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetContextKeysForPrincipalPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetContextKeysForPrincipalPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException]),
        data_parser: Parsers::GetContextKeysForPrincipalPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetContextKeysForPrincipalPolicy,
        stubs: @stubs,
        params_class: Params::GetContextKeysForPrincipalPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_context_keys_for_principal_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Retrieves a credential report for the Amazon Web Services account. For more information about the
    #             credential report, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html">Getting credential reports</a> in
    #             the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCredentialReportInput}.
    #
    # @return [Types::GetCredentialReportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_credential_report()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCredentialReportOutput
    #   resp.data.content #=> String
    #   resp.data.report_format #=> String, one of ["text/csv"]
    #   resp.data.generated_time #=> Time
    #
    def get_credential_report(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCredentialReportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCredentialReportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCredentialReport
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CredentialReportNotReadyException, Errors::CredentialReportExpiredException, Errors::CredentialReportNotPresentException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetCredentialReport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCredentialReport,
        stubs: @stubs,
        params_class: Params::GetCredentialReportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_credential_report
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Returns a list of IAM users that are in the specified IAM group. You can paginate
    #             the results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::GetGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>The name of the group.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::GetGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group(
    #     group_name: 'GroupName', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGroupOutput
    #   resp.data.group #=> Types::Group
    #   resp.data.group.path #=> String
    #   resp.data.group.group_name #=> String
    #   resp.data.group.group_id #=> String
    #   resp.data.group.arn #=> String
    #   resp.data.group.create_date #=> Time
    #   resp.data.users #=> Array<User>
    #   resp.data.users[0] #=> Types::User
    #   resp.data.users[0].path #=> String
    #   resp.data.users[0].user_name #=> String
    #   resp.data.users[0].user_id #=> String
    #   resp.data.users[0].arn #=> String
    #   resp.data.users[0].create_date #=> Time
    #   resp.data.users[0].password_last_used #=> Time
    #   resp.data.users[0].permissions_boundary #=> Types::AttachedPermissionsBoundary
    #   resp.data.users[0].permissions_boundary.permissions_boundary_type #=> String, one of ["PermissionsBoundaryPolicy"]
    #   resp.data.users[0].permissions_boundary.permissions_boundary_arn #=> String
    #   resp.data.users[0].tags #=> Array<Tag>
    #   resp.data.users[0].tags[0] #=> Types::Tag
    #   resp.data.users[0].tags[0].key #=> String
    #   resp.data.users[0].tags[0].value #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def get_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGroup,
        stubs: @stubs,
        params_class: Params::GetGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the specified inline policy document that is embedded in the specified IAM
    #             group.</p>
    #         <note>
    #             <p>Policies returned by this operation are URL-encoded compliant
    #     with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL
    #     decoding method to convert the policy back to plain JSON text. For example, if you use Java, you
    #     can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in
    #     the Java SDK. Other languages and SDKs provide similar functionality.</p>
    #          </note>
    #         <p>An IAM group can also have managed policies attached to it. To retrieve a managed
    #             policy document that is attached to a group, use <a>GetPolicy</a> to
    #             determine the policy's default version, then use <a>GetPolicyVersion</a> to
    #             retrieve the policy document.</p>
    #         <p>For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetGroupPolicyInput}.
    #
    # @option params [String] :group_name
    #   <p>The name of the group the policy is associated with.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy document to get.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::GetGroupPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_group_policy(
    #     group_name: 'GroupName', # required
    #     policy_name: 'PolicyName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetGroupPolicyOutput
    #   resp.data.group_name #=> String
    #   resp.data.policy_name #=> String
    #   resp.data.policy_document #=> String
    #
    def get_group_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetGroupPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetGroupPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetGroupPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetGroupPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetGroupPolicy,
        stubs: @stubs,
        params_class: Params::GetGroupPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_group_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p> Retrieves information about the specified instance profile, including the instance
    #             profile's path, GUID, ARN, and role. For more information about instance profiles, see
    #                 <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About
    #                 instance profiles</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetInstanceProfileInput}.
    #
    # @option params [String] :instance_profile_name
    #   <p>The name of the instance profile to get information about.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::GetInstanceProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_instance_profile(
    #     instance_profile_name: 'InstanceProfileName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInstanceProfileOutput
    #   resp.data.instance_profile #=> Types::InstanceProfile
    #   resp.data.instance_profile.path #=> String
    #   resp.data.instance_profile.instance_profile_name #=> String
    #   resp.data.instance_profile.instance_profile_id #=> String
    #   resp.data.instance_profile.arn #=> String
    #   resp.data.instance_profile.create_date #=> Time
    #   resp.data.instance_profile.roles #=> Array<Role>
    #   resp.data.instance_profile.roles[0] #=> Types::Role
    #   resp.data.instance_profile.roles[0].path #=> String
    #   resp.data.instance_profile.roles[0].role_name #=> String
    #   resp.data.instance_profile.roles[0].role_id #=> String
    #   resp.data.instance_profile.roles[0].arn #=> String
    #   resp.data.instance_profile.roles[0].create_date #=> Time
    #   resp.data.instance_profile.roles[0].assume_role_policy_document #=> String
    #   resp.data.instance_profile.roles[0].description #=> String
    #   resp.data.instance_profile.roles[0].max_session_duration #=> Integer
    #   resp.data.instance_profile.roles[0].permissions_boundary #=> Types::AttachedPermissionsBoundary
    #   resp.data.instance_profile.roles[0].permissions_boundary.permissions_boundary_type #=> String, one of ["PermissionsBoundaryPolicy"]
    #   resp.data.instance_profile.roles[0].permissions_boundary.permissions_boundary_arn #=> String
    #   resp.data.instance_profile.roles[0].tags #=> Array<Tag>
    #   resp.data.instance_profile.roles[0].tags[0] #=> Types::Tag
    #   resp.data.instance_profile.roles[0].tags[0].key #=> String
    #   resp.data.instance_profile.roles[0].tags[0].value #=> String
    #   resp.data.instance_profile.roles[0].role_last_used #=> Types::RoleLastUsed
    #   resp.data.instance_profile.roles[0].role_last_used.last_used_date #=> Time
    #   resp.data.instance_profile.roles[0].role_last_used.region #=> String
    #   resp.data.instance_profile.tags #=> Array<Tag>
    #
    def get_instance_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInstanceProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInstanceProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInstanceProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetInstanceProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInstanceProfile,
        stubs: @stubs,
        params_class: Params::GetInstanceProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_instance_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the user name for the specified IAM user. A login profile is created when
    #             you create a password for the user to access the Amazon Web Services Management Console. If the user does not exist
    #             or does not have a password, the operation returns a 404 (<code>NoSuchEntity</code>)
    #             error.</p>
    #         <p>If you create an IAM user with access to the console, the <code>CreateDate</code>
    #             reflects the date you created the initial password for the user.</p>
    #         <p>If you create an IAM user with programmatic access, and then later add a password
    #             for the user to access the Amazon Web Services Management Console, the <code>CreateDate</code> reflects the initial
    #             password creation date. A user with programmatic access does not have a login profile
    #             unless you create a password for the user to access the Amazon Web Services Management Console.</p>
    #
    # @param [Hash] params
    #   See {Types::GetLoginProfileInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user whose login profile you want to retrieve.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::GetLoginProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_login_profile(
    #     user_name: 'UserName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetLoginProfileOutput
    #   resp.data.login_profile #=> Types::LoginProfile
    #   resp.data.login_profile.user_name #=> String
    #   resp.data.login_profile.create_date #=> Time
    #   resp.data.login_profile.password_reset_required #=> Boolean
    #
    def get_login_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetLoginProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetLoginProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetLoginProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetLoginProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetLoginProfile,
        stubs: @stubs,
        params_class: Params::GetLoginProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_login_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the specified OpenID Connect (OIDC) provider resource object
    #             in IAM.</p>
    #
    # @param [Hash] params
    #   See {Types::GetOpenIDConnectProviderInput}.
    #
    # @option params [String] :open_id_connect_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the OIDC provider resource object in IAM to get
    #               information for. You can get a list of OIDC provider resource ARNs by using the <a>ListOpenIDConnectProviders</a> operation.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @return [Types::GetOpenIDConnectProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_open_id_connect_provider(
    #     open_id_connect_provider_arn: 'OpenIDConnectProviderArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOpenIDConnectProviderOutput
    #   resp.data.url #=> String
    #   resp.data.client_id_list #=> Array<String>
    #   resp.data.client_id_list[0] #=> String
    #   resp.data.thumbprint_list #=> Array<String>
    #   resp.data.thumbprint_list[0] #=> String
    #   resp.data.create_date #=> Time
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def get_open_id_connect_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOpenIDConnectProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOpenIDConnectProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOpenIDConnectProvider
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetOpenIDConnectProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOpenIDConnectProvider,
        stubs: @stubs,
        params_class: Params::GetOpenIDConnectProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_open_id_connect_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the service last accessed data report for Organizations that was previously
    #             generated using the <code>
    #                <a>GenerateOrganizationsAccessReport</a>
    #             </code>
    #             operation. This operation retrieves the status of your report job and the report
    #             contents.</p>
    #         <p>Depending on the parameters that you passed when you generated the report, the data
    #             returned could include different information. For details, see <a>GenerateOrganizationsAccessReport</a>.</p>
    #         <p>To call this operation, you must be signed in to the management account in your
    #             organization. SCPs must be enabled for your organization root. You must have permissions
    #             to perform this operation. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html">Refining permissions using
    #                 service last accessed data</a> in the
    #             <i>IAM User Guide</i>.</p>
    #         <p>For each service that principals in an account (root users, IAM users, or IAM
    #             roles) could access using SCPs, the operation returns details about the most recent
    #             access attempt. If there was no attempt, the service is listed without details about the
    #             most recent attempt to access the service. If the operation fails, it returns the reason
    #             that it failed.</p>
    #         <p>By default, the list is sorted by service namespace.</p>
    #
    # @param [Hash] params
    #   See {Types::GetOrganizationsAccessReportInput}.
    #
    # @option params [String] :job_id
    #   <p>The identifier of the request generated by the <a>GenerateOrganizationsAccessReport</a> operation.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [String] :sort_key
    #   <p>The key that is used to sort the results. If you choose the namespace key, the results
    #               are returned in alphabetical order. If you choose the time key, the results are sorted
    #               numerically by the date and time.</p>
    #
    # @return [Types::GetOrganizationsAccessReportOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_organizations_access_report(
    #     job_id: 'JobId', # required
    #     max_items: 1,
    #     marker: 'Marker',
    #     sort_key: 'SERVICE_NAMESPACE_ASCENDING' # accepts ["SERVICE_NAMESPACE_ASCENDING", "SERVICE_NAMESPACE_DESCENDING", "LAST_AUTHENTICATED_TIME_ASCENDING", "LAST_AUTHENTICATED_TIME_DESCENDING"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetOrganizationsAccessReportOutput
    #   resp.data.job_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #   resp.data.job_creation_date #=> Time
    #   resp.data.job_completion_date #=> Time
    #   resp.data.number_of_services_accessible #=> Integer
    #   resp.data.number_of_services_not_accessed #=> Integer
    #   resp.data.access_details #=> Array<AccessDetail>
    #   resp.data.access_details[0] #=> Types::AccessDetail
    #   resp.data.access_details[0].service_name #=> String
    #   resp.data.access_details[0].service_namespace #=> String
    #   resp.data.access_details[0].region #=> String
    #   resp.data.access_details[0].entity_path #=> String
    #   resp.data.access_details[0].last_authenticated_time #=> Time
    #   resp.data.access_details[0].total_authenticated_entities #=> Integer
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #   resp.data.error_details #=> Types::ErrorDetails
    #   resp.data.error_details.message #=> String
    #   resp.data.error_details.code #=> String
    #
    def get_organizations_access_report(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetOrganizationsAccessReportInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetOrganizationsAccessReportInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetOrganizationsAccessReport
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException]),
        data_parser: Parsers::GetOrganizationsAccessReport
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetOrganizationsAccessReport,
        stubs: @stubs,
        params_class: Params::GetOrganizationsAccessReportOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_organizations_access_report
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the specified managed policy, including the policy's
    #             default version and the total number of IAM users, groups, and roles to which the
    #             policy is attached. To retrieve the list of the specific users, groups, and roles that
    #             the policy is attached to, use <a>ListEntitiesForPolicy</a>. This operation
    #             returns metadata about the policy. To retrieve the actual policy document for a specific
    #             version of the policy, use <a>GetPolicyVersion</a>.</p>
    #         <p>This operation retrieves information about managed policies. To retrieve information
    #             about an inline policy that is embedded with an IAM user, group, or role, use <a>GetUserPolicy</a>, <a>GetGroupPolicy</a>, or <a>GetRolePolicy</a>.</p>
    #         <p>For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPolicyInput}.
    #
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the managed policy that you want information
    #               about.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @return [Types::GetPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy(
    #     policy_arn: 'PolicyArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPolicyOutput
    #   resp.data.policy #=> Types::Policy
    #   resp.data.policy.policy_name #=> String
    #   resp.data.policy.policy_id #=> String
    #   resp.data.policy.arn #=> String
    #   resp.data.policy.path #=> String
    #   resp.data.policy.default_version_id #=> String
    #   resp.data.policy.attachment_count #=> Integer
    #   resp.data.policy.permissions_boundary_usage_count #=> Integer
    #   resp.data.policy.is_attachable #=> Boolean
    #   resp.data.policy.description #=> String
    #   resp.data.policy.create_date #=> Time
    #   resp.data.policy.update_date #=> Time
    #   resp.data.policy.tags #=> Array<Tag>
    #   resp.data.policy.tags[0] #=> Types::Tag
    #   resp.data.policy.tags[0].key #=> String
    #   resp.data.policy.tags[0].value #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
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

    # <p>Retrieves information about the specified version of the specified managed policy,
    #             including the policy document.</p>
    #         <note>
    #             <p>Policies returned by this operation are URL-encoded compliant
    #     with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL
    #     decoding method to convert the policy back to plain JSON text. For example, if you use Java, you
    #     can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in
    #     the Java SDK. Other languages and SDKs provide similar functionality.</p>
    #          </note>
    #         <p>To list the available versions for a policy, use <a>ListPolicyVersions</a>.</p>
    #         <p>This operation retrieves information about managed policies. To retrieve information
    #             about an inline policy that is embedded in a user, group, or role, use <a>GetUserPolicy</a>, <a>GetGroupPolicy</a>, or <a>GetRolePolicy</a>.</p>
    #         <p>For more information about the types of policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #         <p>For more information about managed policy versions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for managed
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPolicyVersionInput}.
    #
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the managed policy that you want information
    #               about.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :version_id
    #   <p>Identifies the policy version to retrieve.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that
    #       consists of the lowercase letter 'v' followed by one or two digits, and optionally
    #       followed by a period '.' and a string of letters and digits.</p>
    #
    # @return [Types::GetPolicyVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_policy_version(
    #     policy_arn: 'PolicyArn', # required
    #     version_id: 'VersionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPolicyVersionOutput
    #   resp.data.policy_version #=> Types::PolicyVersion
    #   resp.data.policy_version.document #=> String
    #   resp.data.policy_version.version_id #=> String
    #   resp.data.policy_version.is_default_version #=> Boolean
    #   resp.data.policy_version.create_date #=> Time
    #
    def get_policy_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPolicyVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPolicyVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPolicyVersion
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetPolicyVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPolicyVersion,
        stubs: @stubs,
        params_class: Params::GetPolicyVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_policy_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the specified role, including the role's path, GUID, ARN,
    #             and the role's trust policy that grants permission to assume the role. For more
    #             information about roles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with roles</a>.</p>
    #         <note>
    #             <p>Policies returned by this operation are URL-encoded compliant
    #     with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL
    #     decoding method to convert the policy back to plain JSON text. For example, if you use Java, you
    #     can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in
    #     the Java SDK. Other languages and SDKs provide similar functionality.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetRoleInput}.
    #
    # @option params [String] :role_name
    #   <p>The name of the IAM role to get information about.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::GetRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_role(
    #     role_name: 'RoleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRoleOutput
    #   resp.data.role #=> Types::Role
    #   resp.data.role.path #=> String
    #   resp.data.role.role_name #=> String
    #   resp.data.role.role_id #=> String
    #   resp.data.role.arn #=> String
    #   resp.data.role.create_date #=> Time
    #   resp.data.role.assume_role_policy_document #=> String
    #   resp.data.role.description #=> String
    #   resp.data.role.max_session_duration #=> Integer
    #   resp.data.role.permissions_boundary #=> Types::AttachedPermissionsBoundary
    #   resp.data.role.permissions_boundary.permissions_boundary_type #=> String, one of ["PermissionsBoundaryPolicy"]
    #   resp.data.role.permissions_boundary.permissions_boundary_arn #=> String
    #   resp.data.role.tags #=> Array<Tag>
    #   resp.data.role.tags[0] #=> Types::Tag
    #   resp.data.role.tags[0].key #=> String
    #   resp.data.role.tags[0].value #=> String
    #   resp.data.role.role_last_used #=> Types::RoleLastUsed
    #   resp.data.role.role_last_used.last_used_date #=> Time
    #   resp.data.role.role_last_used.region #=> String
    #
    def get_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRoleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRoleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRole
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetRole
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRole,
        stubs: @stubs,
        params_class: Params::GetRoleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_role
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the specified inline policy document that is embedded with the specified
    #             IAM role.</p>
    #         <note>
    #             <p>Policies returned by this operation are URL-encoded compliant
    #     with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL
    #     decoding method to convert the policy back to plain JSON text. For example, if you use Java, you
    #     can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in
    #     the Java SDK. Other languages and SDKs provide similar functionality.</p>
    #          </note>
    #         <p>An IAM role can also have managed policies attached to it. To retrieve a managed
    #             policy document that is attached to a role, use <a>GetPolicy</a> to determine
    #             the policy's default version, then use <a>GetPolicyVersion</a> to retrieve
    #             the policy document.</p>
    #         <p>For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #         <p>For more information about roles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html">Using roles to delegate permissions and
    #                 federate identities</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRolePolicyInput}.
    #
    # @option params [String] :role_name
    #   <p>The name of the role associated with the policy.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy document to get.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::GetRolePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_role_policy(
    #     role_name: 'RoleName', # required
    #     policy_name: 'PolicyName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRolePolicyOutput
    #   resp.data.role_name #=> String
    #   resp.data.policy_name #=> String
    #   resp.data.policy_document #=> String
    #
    def get_role_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRolePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRolePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRolePolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetRolePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRolePolicy,
        stubs: @stubs,
        params_class: Params::GetRolePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_role_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the SAML provider metadocument that was uploaded when the IAM SAML provider
    #             resource object was created or updated.</p>
    #         <note>
    #             <p>This operation requires <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::GetSAMLProviderInput}.
    #
    # @option params [String] :saml_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the SAML provider resource object in IAM to get
    #               information about.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @return [Types::GetSAMLProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_saml_provider(
    #     saml_provider_arn: 'SAMLProviderArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSAMLProviderOutput
    #   resp.data.saml_metadata_document #=> String
    #   resp.data.create_date #=> Time
    #   resp.data.valid_until #=> Time
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def get_saml_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSAMLProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSAMLProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSAMLProvider
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetSAMLProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSAMLProvider,
        stubs: @stubs,
        params_class: Params::GetSAMLProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_saml_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the specified SSH public key, including metadata about the key.</p>
    #         <p>The SSH public key retrieved by this operation is used only for authenticating the
    #             associated IAM user to an CodeCommit repository. For more information about using SSH keys
    #             to authenticate to an CodeCommit repository, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up CodeCommit for SSH
    #                 connections</a> in the <i>CodeCommit User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetSSHPublicKeyInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the IAM user associated with the SSH public key.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :ssh_public_key_id
    #   <p>The unique identifier for the SSH public key.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can
    #       consist of any upper or lowercased letter or digit.</p>
    #
    # @option params [String] :encoding
    #   <p>Specifies the public key encoding format to use in the response. To retrieve the
    #               public key in ssh-rsa format, use <code>SSH</code>. To retrieve the public key in PEM
    #               format, use <code>PEM</code>.</p>
    #
    # @return [Types::GetSSHPublicKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_ssh_public_key(
    #     user_name: 'UserName', # required
    #     ssh_public_key_id: 'SSHPublicKeyId', # required
    #     encoding: 'SSH' # required - accepts ["SSH", "PEM"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetSSHPublicKeyOutput
    #   resp.data.ssh_public_key #=> Types::SSHPublicKey
    #   resp.data.ssh_public_key.user_name #=> String
    #   resp.data.ssh_public_key.ssh_public_key_id #=> String
    #   resp.data.ssh_public_key.fingerprint #=> String
    #   resp.data.ssh_public_key.ssh_public_key_body #=> String
    #   resp.data.ssh_public_key.status #=> String, one of ["Active", "Inactive"]
    #   resp.data.ssh_public_key.upload_date #=> Time
    #
    def get_ssh_public_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetSSHPublicKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetSSHPublicKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetSSHPublicKey
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::UnrecognizedPublicKeyEncodingException]),
        data_parser: Parsers::GetSSHPublicKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetSSHPublicKey,
        stubs: @stubs,
        params_class: Params::GetSSHPublicKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_ssh_public_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the specified server certificate stored in IAM.</p>
    #         <p>For more information about working with server certificates, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working
    #                 with server certificates</a> in the <i>IAM User Guide</i>. This
    #             topic includes a list of Amazon Web Services services that can use the server certificates that you
    #             manage with IAM.</p>
    #
    # @param [Hash] params
    #   See {Types::GetServerCertificateInput}.
    #
    # @option params [String] :server_certificate_name
    #   <p>The name of the server certificate you want to retrieve information about.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::GetServerCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_server_certificate(
    #     server_certificate_name: 'ServerCertificateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServerCertificateOutput
    #   resp.data.server_certificate #=> Types::ServerCertificate
    #   resp.data.server_certificate.server_certificate_metadata #=> Types::ServerCertificateMetadata
    #   resp.data.server_certificate.server_certificate_metadata.path #=> String
    #   resp.data.server_certificate.server_certificate_metadata.server_certificate_name #=> String
    #   resp.data.server_certificate.server_certificate_metadata.server_certificate_id #=> String
    #   resp.data.server_certificate.server_certificate_metadata.arn #=> String
    #   resp.data.server_certificate.server_certificate_metadata.upload_date #=> Time
    #   resp.data.server_certificate.server_certificate_metadata.expiration #=> Time
    #   resp.data.server_certificate.certificate_body #=> String
    #   resp.data.server_certificate.certificate_chain #=> String
    #   resp.data.server_certificate.tags #=> Array<Tag>
    #   resp.data.server_certificate.tags[0] #=> Types::Tag
    #   resp.data.server_certificate.tags[0].key #=> String
    #   resp.data.server_certificate.tags[0].value #=> String
    #
    def get_server_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServerCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServerCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetServerCertificate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetServerCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetServerCertificate,
        stubs: @stubs,
        params_class: Params::GetServerCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_server_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a service last accessed report that was created using the
    #                 <code>GenerateServiceLastAccessedDetails</code> operation. You can use the
    #                 <code>JobId</code> parameter in <code>GetServiceLastAccessedDetails</code> to
    #             retrieve the status of your report job. When the report is complete, you can retrieve
    #             the generated report. The report includes a list of Amazon Web Services services that the resource
    #             (user, group, role, or managed policy) can access.</p>
    #         <note>
    #             <p>Service last accessed data does not use other policy types when determining
    #                 whether a resource could access a service. These other policy types include
    #                 resource-based policies, access control lists, Organizations policies, IAM permissions
    #                 boundaries, and STS assume role policies. It only applies permissions policy
    #                 logic. For more about the evaluation of policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics">Evaluating policies</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #         </note>
    #         <p>For each service that the resource could access using permissions policies, the
    #             operation returns details about the most recent access attempt. If there was no attempt,
    #             the service is listed without details about the most recent attempt to access the
    #             service. If the operation fails, the <code>GetServiceLastAccessedDetails</code>
    #             operation returns the reason that it failed.</p>
    #         <p>The <code>GetServiceLastAccessedDetails</code> operation returns a list of services.
    #             This list includes the number of entities that have attempted to access the service and
    #             the date and time of the last attempt. It also returns the ARN of the following entity,
    #             depending on the resource ARN that you used to generate the report:</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <b>User</b> – Returns the user ARN that you
    #                     used to generate the report</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Group</b> – Returns the ARN of the group
    #                     member (user) that last attempted to access the service</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Role</b> – Returns the role ARN that you
    #                     used to generate the report</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Policy</b> – Returns the ARN of the user
    #                     or role that last used the policy to attempt to access the service</p>
    #             </li>
    #          </ul>
    #         <p>By default, the list is sorted by service namespace.</p>
    #         <p>If you specified <code>ACTION_LEVEL</code> granularity when you generated the report,
    #             this operation returns service and action last accessed data. This includes the most
    #             recent access attempt for each tracked action within a service. Otherwise, this
    #             operation returns only service data.</p>
    #         <p>For more information about service and action last accessed data, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html">Reducing permissions using service last accessed data</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetServiceLastAccessedDetailsInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID of the request generated by the <a>GenerateServiceLastAccessedDetails</a> operation. The <code>JobId</code>
    #               returned by <code>GenerateServiceLastAccessedDetail</code> must be used by the same role
    #               within a session, or by the same user when used to call
    #                   <code>GetServiceLastAccessedDetail</code>.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @return [Types::GetServiceLastAccessedDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_last_accessed_details(
    #     job_id: 'JobId', # required
    #     max_items: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServiceLastAccessedDetailsOutput
    #   resp.data.job_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #   resp.data.job_type #=> String, one of ["SERVICE_LEVEL", "ACTION_LEVEL"]
    #   resp.data.job_creation_date #=> Time
    #   resp.data.services_last_accessed #=> Array<ServiceLastAccessed>
    #   resp.data.services_last_accessed[0] #=> Types::ServiceLastAccessed
    #   resp.data.services_last_accessed[0].service_name #=> String
    #   resp.data.services_last_accessed[0].last_authenticated #=> Time
    #   resp.data.services_last_accessed[0].service_namespace #=> String
    #   resp.data.services_last_accessed[0].last_authenticated_entity #=> String
    #   resp.data.services_last_accessed[0].last_authenticated_region #=> String
    #   resp.data.services_last_accessed[0].total_authenticated_entities #=> Integer
    #   resp.data.services_last_accessed[0].tracked_actions_last_accessed #=> Array<TrackedActionLastAccessed>
    #   resp.data.services_last_accessed[0].tracked_actions_last_accessed[0] #=> Types::TrackedActionLastAccessed
    #   resp.data.services_last_accessed[0].tracked_actions_last_accessed[0].action_name #=> String
    #   resp.data.services_last_accessed[0].tracked_actions_last_accessed[0].last_accessed_entity #=> String
    #   resp.data.services_last_accessed[0].tracked_actions_last_accessed[0].last_accessed_time #=> Time
    #   resp.data.services_last_accessed[0].tracked_actions_last_accessed[0].last_accessed_region #=> String
    #   resp.data.job_completion_date #=> Time
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #   resp.data.error #=> Types::ErrorDetails
    #   resp.data.error.message #=> String
    #   resp.data.error.code #=> String
    #
    def get_service_last_accessed_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServiceLastAccessedDetailsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServiceLastAccessedDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetServiceLastAccessedDetails
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException]),
        data_parser: Parsers::GetServiceLastAccessedDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetServiceLastAccessedDetails,
        stubs: @stubs,
        params_class: Params::GetServiceLastAccessedDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_service_last_accessed_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>After you generate a group or policy report using the
    #                 <code>GenerateServiceLastAccessedDetails</code> operation, you can use the
    #                 <code>JobId</code> parameter in
    #                 <code>GetServiceLastAccessedDetailsWithEntities</code>. This operation retrieves the
    #             status of your report job and a list of entities that could have used group or policy
    #             permissions to access the specified service.</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <b>Group</b> – For a group report, this
    #                     operation returns a list of users in the group that could have used the group’s
    #                     policies in an attempt to access the service.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Policy</b> – For a policy report, this
    #                     operation returns a list of entities (users or roles) that could have used the
    #                     policy in an attempt to access the service.</p>
    #             </li>
    #          </ul>
    #         <p>You can also use this operation for user or role reports to retrieve details about
    #             those entities.</p>
    #         <p>If the operation fails, the <code>GetServiceLastAccessedDetailsWithEntities</code>
    #             operation returns the reason that it failed.</p>
    #         <p>By default, the list of associated entities is sorted by date, with the most recent
    #             access listed first.</p>
    #
    # @param [Hash] params
    #   See {Types::GetServiceLastAccessedDetailsWithEntitiesInput}.
    #
    # @option params [String] :job_id
    #   <p>The ID of the request generated by the <code>GenerateServiceLastAccessedDetails</code>
    #               operation.</p>
    #
    # @option params [String] :service_namespace
    #   <p>The service namespace for an Amazon Web Services service. Provide the service namespace to learn
    #               when the IAM entity last attempted to access the specified service.</p>
    #           <p>To learn the service namespace for a service, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html">Actions, resources, and condition keys for Amazon Web Services services</a> in the
    #                   <i>IAM User Guide</i>. Choose the name of the service to view
    #               details for that service. In the first paragraph, find the service prefix. For example,
    #                   <code>(service prefix: a4b)</code>. For more information about service namespaces,
    #               see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">Amazon Web Services
    #                   service namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @return [Types::GetServiceLastAccessedDetailsWithEntitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_last_accessed_details_with_entities(
    #     job_id: 'JobId', # required
    #     service_namespace: 'ServiceNamespace', # required
    #     max_items: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServiceLastAccessedDetailsWithEntitiesOutput
    #   resp.data.job_status #=> String, one of ["IN_PROGRESS", "COMPLETED", "FAILED"]
    #   resp.data.job_creation_date #=> Time
    #   resp.data.job_completion_date #=> Time
    #   resp.data.entity_details_list #=> Array<EntityDetails>
    #   resp.data.entity_details_list[0] #=> Types::EntityDetails
    #   resp.data.entity_details_list[0].entity_info #=> Types::EntityInfo
    #   resp.data.entity_details_list[0].entity_info.arn #=> String
    #   resp.data.entity_details_list[0].entity_info.name #=> String
    #   resp.data.entity_details_list[0].entity_info.type #=> String, one of ["USER", "ROLE", "GROUP"]
    #   resp.data.entity_details_list[0].entity_info.id #=> String
    #   resp.data.entity_details_list[0].entity_info.path #=> String
    #   resp.data.entity_details_list[0].last_authenticated #=> Time
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #   resp.data.error #=> Types::ErrorDetails
    #   resp.data.error.message #=> String
    #   resp.data.error.code #=> String
    #
    def get_service_last_accessed_details_with_entities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServiceLastAccessedDetailsWithEntitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServiceLastAccessedDetailsWithEntitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetServiceLastAccessedDetailsWithEntities
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException]),
        data_parser: Parsers::GetServiceLastAccessedDetailsWithEntities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetServiceLastAccessedDetailsWithEntities,
        stubs: @stubs,
        params_class: Params::GetServiceLastAccessedDetailsWithEntitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_service_last_accessed_details_with_entities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the status of your service-linked role deletion. After you use <a>DeleteServiceLinkedRole</a> to submit a service-linked role for deletion,
    #             you can use the <code>DeletionTaskId</code> parameter in
    #                 <code>GetServiceLinkedRoleDeletionStatus</code> to check the status of the deletion.
    #             If the deletion fails, this operation returns the reason that it failed, if that
    #             information is returned by the service.</p>
    #
    # @param [Hash] params
    #   See {Types::GetServiceLinkedRoleDeletionStatusInput}.
    #
    # @option params [String] :deletion_task_id
    #   <p>The deletion task identifier. This identifier is returned by the <a>DeleteServiceLinkedRole</a> operation in the format
    #                   <code>task/aws-service-role/<service-principal-name>/<role-name>/<task-uuid></code>.</p>
    #
    # @return [Types::GetServiceLinkedRoleDeletionStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_service_linked_role_deletion_status(
    #     deletion_task_id: 'DeletionTaskId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetServiceLinkedRoleDeletionStatusOutput
    #   resp.data.status #=> String, one of ["SUCCEEDED", "IN_PROGRESS", "FAILED", "NOT_STARTED"]
    #   resp.data.reason #=> Types::DeletionTaskFailureReasonType
    #   resp.data.reason.reason #=> String
    #   resp.data.reason.role_usage_list #=> Array<RoleUsageType>
    #   resp.data.reason.role_usage_list[0] #=> Types::RoleUsageType
    #   resp.data.reason.role_usage_list[0].region #=> String
    #   resp.data.reason.role_usage_list[0].resources #=> Array<String>
    #   resp.data.reason.role_usage_list[0].resources[0] #=> String
    #
    def get_service_linked_role_deletion_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetServiceLinkedRoleDeletionStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetServiceLinkedRoleDeletionStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetServiceLinkedRoleDeletionStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetServiceLinkedRoleDeletionStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetServiceLinkedRoleDeletionStatus,
        stubs: @stubs,
        params_class: Params::GetServiceLinkedRoleDeletionStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_service_linked_role_deletion_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves information about the specified IAM user, including the user's creation
    #             date, path, unique ID, and ARN.</p>
    #         <p>If you do not specify a user name, IAM determines the user name implicitly based on
    #             the Amazon Web Services access key ID used to sign the request to this operation.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUserInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user to get information about.</p>
    #           <p>This parameter is optional. If it is not included, it defaults to the user making the
    #               request. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::GetUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user(
    #     user_name: 'UserName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUserOutput
    #   resp.data.user #=> Types::User
    #   resp.data.user.path #=> String
    #   resp.data.user.user_name #=> String
    #   resp.data.user.user_id #=> String
    #   resp.data.user.arn #=> String
    #   resp.data.user.create_date #=> Time
    #   resp.data.user.password_last_used #=> Time
    #   resp.data.user.permissions_boundary #=> Types::AttachedPermissionsBoundary
    #   resp.data.user.permissions_boundary.permissions_boundary_type #=> String, one of ["PermissionsBoundaryPolicy"]
    #   resp.data.user.permissions_boundary.permissions_boundary_arn #=> String
    #   resp.data.user.tags #=> Array<Tag>
    #   resp.data.user.tags[0] #=> Types::Tag
    #   resp.data.user.tags[0].key #=> String
    #   resp.data.user.tags[0].value #=> String
    #
    def get_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUser,
        stubs: @stubs,
        params_class: Params::GetUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the specified inline policy document that is embedded in the specified IAM
    #             user.</p>
    #         <note>
    #             <p>Policies returned by this operation are URL-encoded compliant
    #     with <a href="https://tools.ietf.org/html/rfc3986">RFC 3986</a>. You can use a URL
    #     decoding method to convert the policy back to plain JSON text. For example, if you use Java, you
    #     can use the <code>decode</code> method of the <code>java.net.URLDecoder</code> utility class in
    #     the Java SDK. Other languages and SDKs provide similar functionality.</p>
    #          </note>
    #         <p>An IAM user can also have managed policies attached to it. To retrieve a managed
    #             policy document that is attached to a user, use <a>GetPolicy</a> to determine
    #             the policy's default version. Then use <a>GetPolicyVersion</a> to retrieve
    #             the policy document.</p>
    #         <p>For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetUserPolicyInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user who the policy is associated with.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy document to get.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::GetUserPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_user_policy(
    #     user_name: 'UserName', # required
    #     policy_name: 'PolicyName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetUserPolicyOutput
    #   resp.data.user_name #=> String
    #   resp.data.policy_name #=> String
    #   resp.data.policy_document #=> String
    #
    def get_user_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetUserPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetUserPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetUserPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::GetUserPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetUserPolicy,
        stubs: @stubs,
        params_class: Params::GetUserPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_user_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the access key IDs associated with the specified IAM user.
    #             If there is none, the operation returns an empty list.</p>
    #         <p>Although each user is limited to a small number of keys, you can still paginate the
    #             results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
    #         <p>If the <code>UserName</code> field is not specified, the user name is determined
    #             implicitly based on the Amazon Web Services access key ID used to sign the request. This operation
    #             works for access keys under the Amazon Web Services account. Consequently, you can use this operation
    #             to manage Amazon Web Services account root user credentials even if the Amazon Web Services account has no
    #             associated users.</p>
    #         <note>
    #             <p>To ensure the security of your Amazon Web Services account, the secret access key is accessible
    #                 only during key and user creation.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::ListAccessKeysInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListAccessKeysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_keys(
    #     user_name: 'UserName',
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccessKeysOutput
    #   resp.data.access_key_metadata #=> Array<AccessKeyMetadata>
    #   resp.data.access_key_metadata[0] #=> Types::AccessKeyMetadata
    #   resp.data.access_key_metadata[0].user_name #=> String
    #   resp.data.access_key_metadata[0].access_key_id #=> String
    #   resp.data.access_key_metadata[0].status #=> String, one of ["Active", "Inactive"]
    #   resp.data.access_key_metadata[0].create_date #=> Time
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_access_keys(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccessKeysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccessKeysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccessKeys
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListAccessKeys
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccessKeys,
        stubs: @stubs,
        params_class: Params::ListAccessKeysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_access_keys
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the account alias associated with the Amazon Web Services account (Note: you can have only
    #             one). For information about using an Amazon Web Services account alias, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/AccountAlias.html">Using an alias for your
    #                 Amazon Web Services account ID</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAccountAliasesInput}.
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListAccountAliasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_aliases(
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccountAliasesOutput
    #   resp.data.account_aliases #=> Array<String>
    #   resp.data.account_aliases[0] #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_account_aliases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccountAliasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccountAliasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccountAliases
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException]),
        data_parser: Parsers::ListAccountAliases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccountAliases,
        stubs: @stubs,
        params_class: Params::ListAccountAliasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_account_aliases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all managed policies that are attached to the specified IAM group.</p>
    #         <p>An IAM group can also have inline policies embedded with it. To list the inline
    #             policies for a group, use <a>ListGroupPolicies</a>. For information about
    #             policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #         <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters. You can use the <code>PathPrefix</code> parameter to limit the list of
    #             policies to only those matching the specified path prefix. If there are no policies
    #             attached to the specified group (or none that match the specified path prefix), the
    #             operation returns an empty list.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAttachedGroupPoliciesInput}.
    #
    # @option params [String] :group_name
    #   <p>The name (friendly name, not ARN) of the group to list attached policies for.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :path_prefix
    #   <p>The path prefix for filtering the results. This parameter is optional. If it is not
    #               included, it defaults to a slash (/), listing all policies.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListAttachedGroupPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attached_group_policies(
    #     group_name: 'GroupName', # required
    #     path_prefix: 'PathPrefix',
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAttachedGroupPoliciesOutput
    #   resp.data.attached_policies #=> Array<AttachedPolicy>
    #   resp.data.attached_policies[0] #=> Types::AttachedPolicy
    #   resp.data.attached_policies[0].policy_name #=> String
    #   resp.data.attached_policies[0].policy_arn #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_attached_group_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAttachedGroupPoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAttachedGroupPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAttachedGroupPolicies
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListAttachedGroupPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAttachedGroupPolicies,
        stubs: @stubs,
        params_class: Params::ListAttachedGroupPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_attached_group_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all managed policies that are attached to the specified IAM role.</p>
    #         <p>An IAM role can also have inline policies embedded with it. To list the inline
    #             policies for a role, use <a>ListRolePolicies</a>. For information about
    #             policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #         <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters. You can use the <code>PathPrefix</code> parameter to limit the list of
    #             policies to only those matching the specified path prefix. If there are no policies
    #             attached to the specified role (or none that match the specified path prefix), the
    #             operation returns an empty list.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAttachedRolePoliciesInput}.
    #
    # @option params [String] :role_name
    #   <p>The name (friendly name, not ARN) of the role to list attached policies for.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :path_prefix
    #   <p>The path prefix for filtering the results. This parameter is optional. If it is not
    #               included, it defaults to a slash (/), listing all policies.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListAttachedRolePoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attached_role_policies(
    #     role_name: 'RoleName', # required
    #     path_prefix: 'PathPrefix',
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAttachedRolePoliciesOutput
    #   resp.data.attached_policies #=> Array<AttachedPolicy>
    #   resp.data.attached_policies[0] #=> Types::AttachedPolicy
    #   resp.data.attached_policies[0].policy_name #=> String
    #   resp.data.attached_policies[0].policy_arn #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_attached_role_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAttachedRolePoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAttachedRolePoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAttachedRolePolicies
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListAttachedRolePolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAttachedRolePolicies,
        stubs: @stubs,
        params_class: Params::ListAttachedRolePoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_attached_role_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all managed policies that are attached to the specified IAM user.</p>
    #         <p>An IAM user can also have inline policies embedded with it. To list the inline
    #             policies for a user, use <a>ListUserPolicies</a>. For information about
    #             policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #         <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters. You can use the <code>PathPrefix</code> parameter to limit the list of
    #             policies to only those matching the specified path prefix. If there are no policies
    #             attached to the specified group (or none that match the specified path prefix), the
    #             operation returns an empty list.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAttachedUserPoliciesInput}.
    #
    # @option params [String] :user_name
    #   <p>The name (friendly name, not ARN) of the user to list attached policies for.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :path_prefix
    #   <p>The path prefix for filtering the results. This parameter is optional. If it is not
    #               included, it defaults to a slash (/), listing all policies.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListAttachedUserPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_attached_user_policies(
    #     user_name: 'UserName', # required
    #     path_prefix: 'PathPrefix',
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAttachedUserPoliciesOutput
    #   resp.data.attached_policies #=> Array<AttachedPolicy>
    #   resp.data.attached_policies[0] #=> Types::AttachedPolicy
    #   resp.data.attached_policies[0].policy_name #=> String
    #   resp.data.attached_policies[0].policy_arn #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_attached_user_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAttachedUserPoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAttachedUserPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAttachedUserPolicies
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListAttachedUserPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAttachedUserPolicies,
        stubs: @stubs,
        params_class: Params::ListAttachedUserPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_attached_user_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all IAM users, groups, and roles that the specified managed policy is attached
    #             to.</p>
    #         <p>You can use the optional <code>EntityFilter</code> parameter to limit the results to a
    #             particular type of entity (users, groups, or roles). For example, to list only the roles
    #             that are attached to the specified policy, set <code>EntityFilter</code> to
    #                 <code>Role</code>.</p>
    #         <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::ListEntitiesForPolicyInput}.
    #
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy for which you want the
    #               versions.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :entity_filter
    #   <p>The entity type to use for filtering the results.</p>
    #           <p>For example, when <code>EntityFilter</code> is <code>Role</code>, only the roles that
    #               are attached to the specified policy are returned. This parameter is optional. If it is
    #               not included, all attached entities (users, groups, and roles) are returned. The
    #               argument for this parameter must be one of the valid values listed below.</p>
    #
    # @option params [String] :path_prefix
    #   <p>The path prefix for filtering the results. This parameter is optional. If it is not
    #               included, it defaults to a slash (/), listing all entities.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #
    # @option params [String] :policy_usage_filter
    #   <p>The policy usage method to use for filtering the results.</p>
    #           <p>To list only permissions policies,
    #                   set <code>PolicyUsageFilter</code> to <code>PermissionsPolicy</code>. To list only
    #               the policies used to set permissions boundaries, set the value
    #                   to <code>PermissionsBoundary</code>.</p>
    #           <p>This parameter is optional. If it is not included, all policies are returned. </p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListEntitiesForPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_entities_for_policy(
    #     policy_arn: 'PolicyArn', # required
    #     entity_filter: 'User', # accepts ["User", "Role", "Group", "LocalManagedPolicy", "AWSManagedPolicy"]
    #     path_prefix: 'PathPrefix',
    #     policy_usage_filter: 'PermissionsPolicy', # accepts ["PermissionsPolicy", "PermissionsBoundary"]
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListEntitiesForPolicyOutput
    #   resp.data.policy_groups #=> Array<PolicyGroup>
    #   resp.data.policy_groups[0] #=> Types::PolicyGroup
    #   resp.data.policy_groups[0].group_name #=> String
    #   resp.data.policy_groups[0].group_id #=> String
    #   resp.data.policy_users #=> Array<PolicyUser>
    #   resp.data.policy_users[0] #=> Types::PolicyUser
    #   resp.data.policy_users[0].user_name #=> String
    #   resp.data.policy_users[0].user_id #=> String
    #   resp.data.policy_roles #=> Array<PolicyRole>
    #   resp.data.policy_roles[0] #=> Types::PolicyRole
    #   resp.data.policy_roles[0].role_name #=> String
    #   resp.data.policy_roles[0].role_id #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_entities_for_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListEntitiesForPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListEntitiesForPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListEntitiesForPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListEntitiesForPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListEntitiesForPolicy,
        stubs: @stubs,
        params_class: Params::ListEntitiesForPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_entities_for_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the names of the inline policies that are embedded in the specified IAM
    #             group.</p>
    #         <p>An IAM group can also have managed policies attached to it. To list the managed
    #             policies that are attached to a group, use <a>ListAttachedGroupPolicies</a>.
    #             For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #         <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters. If there are no inline policies embedded with the specified group, the
    #             operation returns an empty list.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGroupPoliciesInput}.
    #
    # @option params [String] :group_name
    #   <p>The name of the group to list policies for.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListGroupPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_policies(
    #     group_name: 'GroupName', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGroupPoliciesOutput
    #   resp.data.policy_names #=> Array<String>
    #   resp.data.policy_names[0] #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_group_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGroupPoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGroupPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGroupPolicies
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListGroupPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGroupPolicies,
        stubs: @stubs,
        params_class: Params::ListGroupPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_group_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the IAM groups that have the specified path prefix.</p>
    #         <p> You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGroupsInput}.
    #
    # @option params [String] :path_prefix
    #   <p> The path prefix for filtering the results. For example, the prefix
    #                   <code>/division_abc/subdivision_xyz/</code> gets all groups whose path starts with
    #                   <code>/division_abc/subdivision_xyz/</code>.</p>
    #           <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
    #               all groups. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups(
    #     path_prefix: 'PathPrefix',
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGroupsOutput
    #   resp.data.groups #=> Array<Group>
    #   resp.data.groups[0] #=> Types::Group
    #   resp.data.groups[0].path #=> String
    #   resp.data.groups[0].group_name #=> String
    #   resp.data.groups[0].group_id #=> String
    #   resp.data.groups[0].arn #=> String
    #   resp.data.groups[0].create_date #=> Time
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGroups
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException]),
        data_parser: Parsers::ListGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGroups,
        stubs: @stubs,
        params_class: Params::ListGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the IAM groups that the specified IAM user belongs to.</p>
    #         <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGroupsForUserInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user to list groups for.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListGroupsForUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups_for_user(
    #     user_name: 'UserName', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGroupsForUserOutput
    #   resp.data.groups #=> Array<Group>
    #   resp.data.groups[0] #=> Types::Group
    #   resp.data.groups[0].path #=> String
    #   resp.data.groups[0].group_name #=> String
    #   resp.data.groups[0].group_id #=> String
    #   resp.data.groups[0].arn #=> String
    #   resp.data.groups[0].create_date #=> Time
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_groups_for_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGroupsForUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGroupsForUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGroupsForUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListGroupsForUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGroupsForUser,
        stubs: @stubs,
        params_class: Params::ListGroupsForUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_groups_for_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags that are attached to the specified IAM instance profile. The returned list of tags is sorted by tag key.
    #       For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListInstanceProfileTagsInput}.
    #
    # @option params [String] :instance_profile_name
    #   <p>The name of the IAM instance profile whose tags you want to see.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListInstanceProfileTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_profile_tags(
    #     instance_profile_name: 'InstanceProfileName', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInstanceProfileTagsOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_instance_profile_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInstanceProfileTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInstanceProfileTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInstanceProfileTags
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListInstanceProfileTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInstanceProfileTags,
        stubs: @stubs,
        params_class: Params::ListInstanceProfileTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_instance_profile_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the instance profiles that have the specified path prefix. If there are none,
    #             the operation returns an empty list. For more information about instance profiles, see
    #                 <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About
    #                 instance profiles</a>.</p>
    #         <note>
    #             <p>IAM resource-listing operations return a subset of the available
    #    attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for an instance profile, see <a>GetInstanceProfile</a>.</p>
    #         </note>
    #         <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::ListInstanceProfilesInput}.
    #
    # @option params [String] :path_prefix
    #   <p> The path prefix for filtering the results. For example, the prefix
    #                   <code>/application_abc/component_xyz/</code> gets all instance profiles whose path
    #               starts with <code>/application_abc/component_xyz/</code>.</p>
    #           <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
    #               all instance profiles. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListInstanceProfilesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_profiles(
    #     path_prefix: 'PathPrefix',
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInstanceProfilesOutput
    #   resp.data.instance_profiles #=> Array<InstanceProfile>
    #   resp.data.instance_profiles[0] #=> Types::InstanceProfile
    #   resp.data.instance_profiles[0].path #=> String
    #   resp.data.instance_profiles[0].instance_profile_name #=> String
    #   resp.data.instance_profiles[0].instance_profile_id #=> String
    #   resp.data.instance_profiles[0].arn #=> String
    #   resp.data.instance_profiles[0].create_date #=> Time
    #   resp.data.instance_profiles[0].roles #=> Array<Role>
    #   resp.data.instance_profiles[0].roles[0] #=> Types::Role
    #   resp.data.instance_profiles[0].roles[0].path #=> String
    #   resp.data.instance_profiles[0].roles[0].role_name #=> String
    #   resp.data.instance_profiles[0].roles[0].role_id #=> String
    #   resp.data.instance_profiles[0].roles[0].arn #=> String
    #   resp.data.instance_profiles[0].roles[0].create_date #=> Time
    #   resp.data.instance_profiles[0].roles[0].assume_role_policy_document #=> String
    #   resp.data.instance_profiles[0].roles[0].description #=> String
    #   resp.data.instance_profiles[0].roles[0].max_session_duration #=> Integer
    #   resp.data.instance_profiles[0].roles[0].permissions_boundary #=> Types::AttachedPermissionsBoundary
    #   resp.data.instance_profiles[0].roles[0].permissions_boundary.permissions_boundary_type #=> String, one of ["PermissionsBoundaryPolicy"]
    #   resp.data.instance_profiles[0].roles[0].permissions_boundary.permissions_boundary_arn #=> String
    #   resp.data.instance_profiles[0].roles[0].tags #=> Array<Tag>
    #   resp.data.instance_profiles[0].roles[0].tags[0] #=> Types::Tag
    #   resp.data.instance_profiles[0].roles[0].tags[0].key #=> String
    #   resp.data.instance_profiles[0].roles[0].tags[0].value #=> String
    #   resp.data.instance_profiles[0].roles[0].role_last_used #=> Types::RoleLastUsed
    #   resp.data.instance_profiles[0].roles[0].role_last_used.last_used_date #=> Time
    #   resp.data.instance_profiles[0].roles[0].role_last_used.region #=> String
    #   resp.data.instance_profiles[0].tags #=> Array<Tag>
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_instance_profiles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInstanceProfilesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInstanceProfilesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInstanceProfiles
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException]),
        data_parser: Parsers::ListInstanceProfiles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInstanceProfiles,
        stubs: @stubs,
        params_class: Params::ListInstanceProfilesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_instance_profiles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the instance profiles that have the specified associated IAM role. If there
    #             are none, the operation returns an empty list. For more information about instance
    #             profiles, go to <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About instance
    #             profiles</a>.</p>
    #         <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::ListInstanceProfilesForRoleInput}.
    #
    # @option params [String] :role_name
    #   <p>The name of the role to list instance profiles for.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListInstanceProfilesForRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instance_profiles_for_role(
    #     role_name: 'RoleName', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInstanceProfilesForRoleOutput
    #   resp.data.instance_profiles #=> Array<InstanceProfile>
    #   resp.data.instance_profiles[0] #=> Types::InstanceProfile
    #   resp.data.instance_profiles[0].path #=> String
    #   resp.data.instance_profiles[0].instance_profile_name #=> String
    #   resp.data.instance_profiles[0].instance_profile_id #=> String
    #   resp.data.instance_profiles[0].arn #=> String
    #   resp.data.instance_profiles[0].create_date #=> Time
    #   resp.data.instance_profiles[0].roles #=> Array<Role>
    #   resp.data.instance_profiles[0].roles[0] #=> Types::Role
    #   resp.data.instance_profiles[0].roles[0].path #=> String
    #   resp.data.instance_profiles[0].roles[0].role_name #=> String
    #   resp.data.instance_profiles[0].roles[0].role_id #=> String
    #   resp.data.instance_profiles[0].roles[0].arn #=> String
    #   resp.data.instance_profiles[0].roles[0].create_date #=> Time
    #   resp.data.instance_profiles[0].roles[0].assume_role_policy_document #=> String
    #   resp.data.instance_profiles[0].roles[0].description #=> String
    #   resp.data.instance_profiles[0].roles[0].max_session_duration #=> Integer
    #   resp.data.instance_profiles[0].roles[0].permissions_boundary #=> Types::AttachedPermissionsBoundary
    #   resp.data.instance_profiles[0].roles[0].permissions_boundary.permissions_boundary_type #=> String, one of ["PermissionsBoundaryPolicy"]
    #   resp.data.instance_profiles[0].roles[0].permissions_boundary.permissions_boundary_arn #=> String
    #   resp.data.instance_profiles[0].roles[0].tags #=> Array<Tag>
    #   resp.data.instance_profiles[0].roles[0].tags[0] #=> Types::Tag
    #   resp.data.instance_profiles[0].roles[0].tags[0].key #=> String
    #   resp.data.instance_profiles[0].roles[0].tags[0].value #=> String
    #   resp.data.instance_profiles[0].roles[0].role_last_used #=> Types::RoleLastUsed
    #   resp.data.instance_profiles[0].roles[0].role_last_used.last_used_date #=> Time
    #   resp.data.instance_profiles[0].roles[0].role_last_used.region #=> String
    #   resp.data.instance_profiles[0].tags #=> Array<Tag>
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_instance_profiles_for_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInstanceProfilesForRoleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInstanceProfilesForRoleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInstanceProfilesForRole
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListInstanceProfilesForRole
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInstanceProfilesForRole,
        stubs: @stubs,
        params_class: Params::ListInstanceProfilesForRoleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_instance_profiles_for_role
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags that are attached to the specified IAM virtual multi-factor authentication (MFA) device. The returned list of tags is
    #       sorted by tag key. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMFADeviceTagsInput}.
    #
    # @option params [String] :serial_number
    #   <p>The unique identifier for the IAM virtual MFA device whose tags you want to see.
    #         For virtual MFA devices, the serial number is the same as the ARN.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListMFADeviceTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_mfa_device_tags(
    #     serial_number: 'SerialNumber', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMFADeviceTagsOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_mfa_device_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMFADeviceTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMFADeviceTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMFADeviceTags
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListMFADeviceTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMFADeviceTags,
        stubs: @stubs,
        params_class: Params::ListMFADeviceTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_mfa_device_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the MFA devices for an IAM user. If the request includes a IAM user name,
    #             then this operation lists all the MFA devices associated with the specified user. If you
    #             do not specify a user name, IAM determines the user name implicitly based on the Amazon Web Services
    #             access key ID signing the request for this operation.</p>
    #         <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMFADevicesInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user whose MFA devices you want to list.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListMFADevicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_mfa_devices(
    #     user_name: 'UserName',
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMFADevicesOutput
    #   resp.data.mfa_devices #=> Array<MFADevice>
    #   resp.data.mfa_devices[0] #=> Types::MFADevice
    #   resp.data.mfa_devices[0].user_name #=> String
    #   resp.data.mfa_devices[0].serial_number #=> String
    #   resp.data.mfa_devices[0].enable_date #=> Time
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_mfa_devices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMFADevicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMFADevicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMFADevices
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListMFADevices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMFADevices,
        stubs: @stubs,
        params_class: Params::ListMFADevicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_mfa_devices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags that are attached to the specified OpenID Connect (OIDC)-compatible
    #       identity provider. The returned list of tags is sorted by tag key. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html">About web identity
    #       federation</a>.</p>
    #          <p>For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOpenIDConnectProviderTagsInput}.
    #
    # @option params [String] :open_id_connect_provider_arn
    #   <p>The ARN of the OpenID Connect (OIDC) identity provider whose tags you want to
    #         see.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListOpenIDConnectProviderTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_open_id_connect_provider_tags(
    #     open_id_connect_provider_arn: 'OpenIDConnectProviderArn', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOpenIDConnectProviderTagsOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_open_id_connect_provider_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOpenIDConnectProviderTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOpenIDConnectProviderTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOpenIDConnectProviderTags
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListOpenIDConnectProviderTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOpenIDConnectProviderTags,
        stubs: @stubs,
        params_class: Params::ListOpenIDConnectProviderTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_open_id_connect_provider_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists information about the IAM OpenID Connect (OIDC) provider resource objects
    #             defined in the Amazon Web Services account.</p>
    #         <note>
    #             <p>IAM resource-listing operations return a subset of the available
    #    attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for an OIDC provider, see <a>GetOpenIDConnectProvider</a>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::ListOpenIDConnectProvidersInput}.
    #
    # @return [Types::ListOpenIDConnectProvidersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_open_id_connect_providers()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOpenIDConnectProvidersOutput
    #   resp.data.open_id_connect_provider_list #=> Array<OpenIDConnectProviderListEntry>
    #   resp.data.open_id_connect_provider_list[0] #=> Types::OpenIDConnectProviderListEntry
    #   resp.data.open_id_connect_provider_list[0].arn #=> String
    #
    def list_open_id_connect_providers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOpenIDConnectProvidersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOpenIDConnectProvidersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOpenIDConnectProviders
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException]),
        data_parser: Parsers::ListOpenIDConnectProviders
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOpenIDConnectProviders,
        stubs: @stubs,
        params_class: Params::ListOpenIDConnectProvidersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_open_id_connect_providers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the managed policies that are available in your Amazon Web Services account, including
    #             your own customer-defined managed policies and all Amazon Web Services managed policies.</p>
    #         <p>You can filter the list of policies that is returned using the optional
    #                 <code>OnlyAttached</code>, <code>Scope</code>, and <code>PathPrefix</code>
    #             parameters. For example, to list only the customer managed policies in your Amazon Web Services
    #             account, set <code>Scope</code> to <code>Local</code>. To list only Amazon Web Services managed
    #             policies, set <code>Scope</code> to <code>AWS</code>.</p>
    #         <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    #         <p>For more information about managed policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #         <note>
    #             <p>IAM resource-listing operations return a subset of the available
    #    attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a customer manged policy, see
    #                     <a>GetPolicy</a>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::ListPoliciesInput}.
    #
    # @option params [String] :scope
    #   <p>The scope to use for filtering the results.</p>
    #           <p>To list only Amazon Web Services managed policies, set <code>Scope</code> to <code>AWS</code>. To
    #               list only the customer managed policies in your Amazon Web Services account, set <code>Scope</code> to
    #                   <code>Local</code>.</p>
    #           <p>This parameter is optional. If it is not included, or if it is set to
    #               <code>All</code>, all policies are returned.</p>
    #
    # @option params [Boolean] :only_attached
    #   <p>A flag to filter the results to only the attached policies.</p>
    #           <p>When <code>OnlyAttached</code> is <code>true</code>, the returned list contains only
    #               the policies that are attached to an IAM user, group, or role. When
    #                   <code>OnlyAttached</code> is <code>false</code>, or when the parameter is not
    #               included, all policies are returned.</p>
    #
    # @option params [String] :path_prefix
    #   <p>The path prefix for filtering the results. This parameter is optional. If it is not
    #               included, it defaults to a slash (/), listing all policies. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #
    # @option params [String] :policy_usage_filter
    #   <p>The policy usage method to use for filtering the results.</p>
    #           <p>To list only permissions policies,
    #                   set <code>PolicyUsageFilter</code> to <code>PermissionsPolicy</code>. To list only
    #               the policies used to set permissions boundaries, set the value
    #                   to <code>PermissionsBoundary</code>.</p>
    #           <p>This parameter is optional. If it is not included, all policies are returned. </p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policies(
    #     scope: 'All', # accepts ["All", "AWS", "Local"]
    #     only_attached: false,
    #     path_prefix: 'PathPrefix',
    #     policy_usage_filter: 'PermissionsPolicy', # accepts ["PermissionsPolicy", "PermissionsBoundary"]
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPoliciesOutput
    #   resp.data.policies #=> Array<Policy>
    #   resp.data.policies[0] #=> Types::Policy
    #   resp.data.policies[0].policy_name #=> String
    #   resp.data.policies[0].policy_id #=> String
    #   resp.data.policies[0].arn #=> String
    #   resp.data.policies[0].path #=> String
    #   resp.data.policies[0].default_version_id #=> String
    #   resp.data.policies[0].attachment_count #=> Integer
    #   resp.data.policies[0].permissions_boundary_usage_count #=> Integer
    #   resp.data.policies[0].is_attachable #=> Boolean
    #   resp.data.policies[0].description #=> String
    #   resp.data.policies[0].create_date #=> Time
    #   resp.data.policies[0].update_date #=> Time
    #   resp.data.policies[0].tags #=> Array<Tag>
    #   resp.data.policies[0].tags[0] #=> Types::Tag
    #   resp.data.policies[0].tags[0].key #=> String
    #   resp.data.policies[0].tags[0].value #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException]),
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

    # <p>Retrieves a list of policies that the IAM identity (user, group, or role) can use to
    #             access each specified service.</p>
    #         <note>
    #             <p>This operation does not use other policy types when determining whether a resource
    #                 could access a service. These other policy types include resource-based policies,
    #                 access control lists, Organizations policies, IAM permissions boundaries, and STS
    #                 assume role policies. It only applies permissions policy logic. For more about the
    #                 evaluation of policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html#policy-eval-basics">Evaluating policies</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #         </note>
    #         <p>The list of policies returned by the operation depends on the ARN of the identity that
    #             you provide.</p>
    #         <ul>
    #             <li>
    #                 <p>
    #                   <b>User</b> – The list of policies includes
    #                     the managed and inline policies that are attached to the user directly. The list
    #                     also includes any additional managed and inline policies that are attached to
    #                     the group to which the user belongs. </p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Group</b> – The list of policies includes
    #                     only the managed and inline policies that are attached to the group directly.
    #                     Policies that are attached to the group’s user are not included.</p>
    #             </li>
    #             <li>
    #                 <p>
    #                   <b>Role</b> – The list of policies includes
    #                     only the managed and inline policies that are attached to the role.</p>
    #             </li>
    #          </ul>
    #         <p>For each managed policy, this operation returns the ARN and policy name. For each
    #             inline policy, it returns the policy name and the entity to which it is attached. Inline
    #             policies do not have an ARN. For more information about these policy types, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_managed-vs-inline.html">Managed policies and inline policies</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #         <p>Policies that are attached to users and roles as permissions boundaries are not
    #             returned. To view which managed policy is currently used to set the permissions boundary
    #             for a user or role, use the <a>GetUser</a> or <a>GetRole</a>
    #             operations.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPoliciesGrantingServiceAccessInput}.
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [String] :arn
    #   <p>The ARN of the IAM identity (user, group, or role) whose policies you want to
    #               list.</p>
    #
    # @option params [Array<String>] :service_namespaces
    #   <p>The service namespace for the Amazon Web Services services whose policies you want to list.</p>
    #           <p>To learn the service namespace for a service, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html">Actions, resources, and condition keys for Amazon Web Services services</a> in the
    #                   <i>IAM User Guide</i>. Choose the name of the service to view
    #               details for that service. In the first paragraph, find the service prefix. For example,
    #                   <code>(service prefix: a4b)</code>. For more information about service namespaces,
    #               see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces">Amazon Web Services
    #                   service namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @return [Types::ListPoliciesGrantingServiceAccessOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policies_granting_service_access(
    #     marker: 'Marker',
    #     arn: 'Arn', # required
    #     service_namespaces: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPoliciesGrantingServiceAccessOutput
    #   resp.data.policies_granting_service_access #=> Array<ListPoliciesGrantingServiceAccessEntry>
    #   resp.data.policies_granting_service_access[0] #=> Types::ListPoliciesGrantingServiceAccessEntry
    #   resp.data.policies_granting_service_access[0].service_namespace #=> String
    #   resp.data.policies_granting_service_access[0].policies #=> Array<PolicyGrantingServiceAccess>
    #   resp.data.policies_granting_service_access[0].policies[0] #=> Types::PolicyGrantingServiceAccess
    #   resp.data.policies_granting_service_access[0].policies[0].policy_name #=> String
    #   resp.data.policies_granting_service_access[0].policies[0].policy_type #=> String, one of ["INLINE", "MANAGED"]
    #   resp.data.policies_granting_service_access[0].policies[0].policy_arn #=> String
    #   resp.data.policies_granting_service_access[0].policies[0].entity_type #=> String, one of ["USER", "ROLE", "GROUP"]
    #   resp.data.policies_granting_service_access[0].policies[0].entity_name #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_policies_granting_service_access(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPoliciesGrantingServiceAccessInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPoliciesGrantingServiceAccessInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPoliciesGrantingServiceAccess
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException]),
        data_parser: Parsers::ListPoliciesGrantingServiceAccess
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPoliciesGrantingServiceAccess,
        stubs: @stubs,
        params_class: Params::ListPoliciesGrantingServiceAccessOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_policies_granting_service_access
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags that are attached to the specified IAM customer managed policy.
    #       The returned list of tags is sorted by tag key. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPolicyTagsInput}.
    #
    # @option params [String] :policy_arn
    #   <p>The ARN of the IAM customer managed policy whose tags you want to see.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListPolicyTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_tags(
    #     policy_arn: 'PolicyArn', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPolicyTagsOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_policy_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPolicyTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPolicyTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPolicyTags
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListPolicyTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPolicyTags,
        stubs: @stubs,
        params_class: Params::ListPolicyTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_policy_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists information about the versions of the specified managed policy, including the
    #             version that is currently set as the policy's default version.</p>
    #         <p>For more information about managed policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPolicyVersionsInput}.
    #
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy for which you want the
    #               versions.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListPolicyVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_policy_versions(
    #     policy_arn: 'PolicyArn', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPolicyVersionsOutput
    #   resp.data.versions #=> Array<PolicyVersion>
    #   resp.data.versions[0] #=> Types::PolicyVersion
    #   resp.data.versions[0].document #=> String
    #   resp.data.versions[0].version_id #=> String
    #   resp.data.versions[0].is_default_version #=> Boolean
    #   resp.data.versions[0].create_date #=> Time
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_policy_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPolicyVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPolicyVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPolicyVersions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListPolicyVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPolicyVersions,
        stubs: @stubs,
        params_class: Params::ListPolicyVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_policy_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the names of the inline policies that are embedded in the specified IAM
    #             role.</p>
    #         <p>An IAM role can also have managed policies attached to it. To list the managed
    #             policies that are attached to a role, use <a>ListAttachedRolePolicies</a>.
    #             For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #         <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters. If there are no inline policies embedded with the specified role, the
    #             operation returns an empty list.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRolePoliciesInput}.
    #
    # @option params [String] :role_name
    #   <p>The name of the role to list policies for.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListRolePoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_role_policies(
    #     role_name: 'RoleName', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRolePoliciesOutput
    #   resp.data.policy_names #=> Array<String>
    #   resp.data.policy_names[0] #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_role_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRolePoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRolePoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRolePolicies
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListRolePolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRolePolicies,
        stubs: @stubs,
        params_class: Params::ListRolePoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_role_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags that are attached to the specified role. The returned list of tags is
    #       sorted by tag key. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRoleTagsInput}.
    #
    # @option params [String] :role_name
    #   <p>The name of the IAM role for which you want to see the list of tags.</p>
    #            <p>This parameter accepts (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that consist of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListRoleTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_role_tags(
    #     role_name: 'RoleName', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRoleTagsOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_role_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRoleTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRoleTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRoleTags
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListRoleTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRoleTags,
        stubs: @stubs,
        params_class: Params::ListRoleTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_role_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the IAM roles that have the specified path prefix. If there are none, the
    #             operation returns an empty list. For more information about roles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with
    #                 roles</a>.</p>
    #         <note>
    #             <p>IAM resource-listing operations return a subset of the available
    #    attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a role, see <a>GetRole</a>.</p>
    #         </note>
    #         <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRolesInput}.
    #
    # @option params [String] :path_prefix
    #   <p> The path prefix for filtering the results. For example, the prefix
    #                   <code>/application_abc/component_xyz/</code> gets all roles whose path starts with
    #                   <code>/application_abc/component_xyz/</code>.</p>
    #           <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
    #               all roles. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListRolesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_roles(
    #     path_prefix: 'PathPrefix',
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRolesOutput
    #   resp.data.roles #=> Array<Role>
    #   resp.data.roles[0] #=> Types::Role
    #   resp.data.roles[0].path #=> String
    #   resp.data.roles[0].role_name #=> String
    #   resp.data.roles[0].role_id #=> String
    #   resp.data.roles[0].arn #=> String
    #   resp.data.roles[0].create_date #=> Time
    #   resp.data.roles[0].assume_role_policy_document #=> String
    #   resp.data.roles[0].description #=> String
    #   resp.data.roles[0].max_session_duration #=> Integer
    #   resp.data.roles[0].permissions_boundary #=> Types::AttachedPermissionsBoundary
    #   resp.data.roles[0].permissions_boundary.permissions_boundary_type #=> String, one of ["PermissionsBoundaryPolicy"]
    #   resp.data.roles[0].permissions_boundary.permissions_boundary_arn #=> String
    #   resp.data.roles[0].tags #=> Array<Tag>
    #   resp.data.roles[0].tags[0] #=> Types::Tag
    #   resp.data.roles[0].tags[0].key #=> String
    #   resp.data.roles[0].tags[0].value #=> String
    #   resp.data.roles[0].role_last_used #=> Types::RoleLastUsed
    #   resp.data.roles[0].role_last_used.last_used_date #=> Time
    #   resp.data.roles[0].role_last_used.region #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_roles(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRolesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRolesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRoles
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException]),
        data_parser: Parsers::ListRoles
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRoles,
        stubs: @stubs,
        params_class: Params::ListRolesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_roles
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags that are attached to the specified Security Assertion Markup Language
    #       (SAML) identity provider. The returned list of tags is sorted by tag key. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About SAML 2.0-based
    #       federation</a>.</p>
    #          <p>For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSAMLProviderTagsInput}.
    #
    # @option params [String] :saml_provider_arn
    #   <p>The ARN of the Security Assertion Markup Language (SAML) identity provider whose tags
    #         you want to see.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListSAMLProviderTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_saml_provider_tags(
    #     saml_provider_arn: 'SAMLProviderArn', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSAMLProviderTagsOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_saml_provider_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSAMLProviderTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSAMLProviderTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSAMLProviderTags
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListSAMLProviderTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSAMLProviderTags,
        stubs: @stubs,
        params_class: Params::ListSAMLProviderTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_saml_provider_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the SAML provider resource objects defined in IAM in the account.
    #             IAM resource-listing operations return a subset of the available
    #    attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a SAML provider, see <a>GetSAMLProvider</a>.</p>
    #         <important>
    #             <p> This operation requires <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::ListSAMLProvidersInput}.
    #
    # @return [Types::ListSAMLProvidersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_saml_providers()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSAMLProvidersOutput
    #   resp.data.saml_provider_list #=> Array<SAMLProviderListEntry>
    #   resp.data.saml_provider_list[0] #=> Types::SAMLProviderListEntry
    #   resp.data.saml_provider_list[0].arn #=> String
    #   resp.data.saml_provider_list[0].valid_until #=> Time
    #   resp.data.saml_provider_list[0].create_date #=> Time
    #
    def list_saml_providers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSAMLProvidersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSAMLProvidersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSAMLProviders
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException]),
        data_parser: Parsers::ListSAMLProviders
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSAMLProviders,
        stubs: @stubs,
        params_class: Params::ListSAMLProvidersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_saml_providers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the SSH public keys associated with the specified IAM
    #             user. If none exists, the operation returns an empty list.</p>
    #         <p>The SSH public keys returned by this operation are used only for authenticating the
    #             IAM user to an CodeCommit repository. For more information about using SSH keys to
    #             authenticate to an CodeCommit repository, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up CodeCommit for
    #                 SSH connections</a> in the <i>CodeCommit User Guide</i>.</p>
    #         <p>Although each user is limited to a small number of keys, you can still paginate the
    #             results using the <code>MaxItems</code> and <code>Marker</code> parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSSHPublicKeysInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the IAM user to list SSH public keys for. If none is specified, the
    #                   <code>UserName</code> field is determined implicitly based on the Amazon Web Services access key
    #               used to sign the request.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListSSHPublicKeysOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_ssh_public_keys(
    #     user_name: 'UserName',
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSSHPublicKeysOutput
    #   resp.data.ssh_public_keys #=> Array<SSHPublicKeyMetadata>
    #   resp.data.ssh_public_keys[0] #=> Types::SSHPublicKeyMetadata
    #   resp.data.ssh_public_keys[0].user_name #=> String
    #   resp.data.ssh_public_keys[0].ssh_public_key_id #=> String
    #   resp.data.ssh_public_keys[0].status #=> String, one of ["Active", "Inactive"]
    #   resp.data.ssh_public_keys[0].upload_date #=> Time
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_ssh_public_keys(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSSHPublicKeysInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSSHPublicKeysInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSSHPublicKeys
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException]),
        data_parser: Parsers::ListSSHPublicKeys
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSSHPublicKeys,
        stubs: @stubs,
        params_class: Params::ListSSHPublicKeysOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_ssh_public_keys
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags that are attached to the specified IAM server certificate. The
    #       returned list of tags is sorted by tag key. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>For certificates in a Region supported by Certificate Manager (ACM), we
    #         recommend that you don't use IAM server certificates. Instead, use ACM to provision,
    #         manage, and deploy your server certificates. For more information about IAM server
    #         certificates, <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with server
    #           certificates</a> in the <i>IAM User Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::ListServerCertificateTagsInput}.
    #
    # @option params [String] :server_certificate_name
    #   <p>The name of the IAM server certificate whose tags you want to see.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListServerCertificateTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_server_certificate_tags(
    #     server_certificate_name: 'ServerCertificateName', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServerCertificateTagsOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_server_certificate_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServerCertificateTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServerCertificateTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServerCertificateTags
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListServerCertificateTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServerCertificateTags,
        stubs: @stubs,
        params_class: Params::ListServerCertificateTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_server_certificate_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the server certificates stored in IAM that have the specified path prefix. If
    #             none exist, the operation returns an empty list.</p>
    #         <p> You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    #         <p>For more information about working with server certificates, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working
    #                 with server certificates</a> in the <i>IAM User Guide</i>. This
    #             topic also includes a list of Amazon Web Services services that can use the server certificates that
    #             you manage with IAM.</p>
    #         <note>
    #             <p>IAM resource-listing operations return a subset of the available
    #    attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a servercertificate, see <a>GetServerCertificate</a>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::ListServerCertificatesInput}.
    #
    # @option params [String] :path_prefix
    #   <p> The path prefix for filtering the results. For example:
    #                   <code>/company/servercerts</code> would get all server certificates for which the
    #               path starts with <code>/company/servercerts</code>.</p>
    #           <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
    #               all server certificates. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListServerCertificatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_server_certificates(
    #     path_prefix: 'PathPrefix',
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServerCertificatesOutput
    #   resp.data.server_certificate_metadata_list #=> Array<ServerCertificateMetadata>
    #   resp.data.server_certificate_metadata_list[0] #=> Types::ServerCertificateMetadata
    #   resp.data.server_certificate_metadata_list[0].path #=> String
    #   resp.data.server_certificate_metadata_list[0].server_certificate_name #=> String
    #   resp.data.server_certificate_metadata_list[0].server_certificate_id #=> String
    #   resp.data.server_certificate_metadata_list[0].arn #=> String
    #   resp.data.server_certificate_metadata_list[0].upload_date #=> Time
    #   resp.data.server_certificate_metadata_list[0].expiration #=> Time
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_server_certificates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServerCertificatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServerCertificatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServerCertificates
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException]),
        data_parser: Parsers::ListServerCertificates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServerCertificates,
        stubs: @stubs,
        params_class: Params::ListServerCertificatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_server_certificates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the service-specific credentials associated with the
    #             specified IAM user. If none exists, the operation returns an empty list. The
    #             service-specific credentials returned by this operation are used only for authenticating
    #             the IAM user to a specific service. For more information about using service-specific
    #             credentials to authenticate to an Amazon Web Services service, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-gc.html">Set up service-specific credentials</a>
    #             in the CodeCommit User Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::ListServiceSpecificCredentialsInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user whose service-specific credentials you want information about. If
    #               this value is not specified, then the operation assumes the user whose credentials are
    #               used to call the operation.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :service_name
    #   <p>Filters the returned results to only those for the specified Amazon Web Services service. If not
    #               specified, then Amazon Web Services returns service-specific credentials for all services.</p>
    #
    # @return [Types::ListServiceSpecificCredentialsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_service_specific_credentials(
    #     user_name: 'UserName',
    #     service_name: 'ServiceName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListServiceSpecificCredentialsOutput
    #   resp.data.service_specific_credentials #=> Array<ServiceSpecificCredentialMetadata>
    #   resp.data.service_specific_credentials[0] #=> Types::ServiceSpecificCredentialMetadata
    #   resp.data.service_specific_credentials[0].user_name #=> String
    #   resp.data.service_specific_credentials[0].status #=> String, one of ["Active", "Inactive"]
    #   resp.data.service_specific_credentials[0].service_user_name #=> String
    #   resp.data.service_specific_credentials[0].create_date #=> Time
    #   resp.data.service_specific_credentials[0].service_specific_credential_id #=> String
    #   resp.data.service_specific_credentials[0].service_name #=> String
    #
    def list_service_specific_credentials(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListServiceSpecificCredentialsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListServiceSpecificCredentialsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListServiceSpecificCredentials
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceNotSupportedException]),
        data_parser: Parsers::ListServiceSpecificCredentials
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListServiceSpecificCredentials,
        stubs: @stubs,
        params_class: Params::ListServiceSpecificCredentialsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_service_specific_credentials
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the signing certificates associated with the specified IAM
    #             user. If none exists, the operation returns an empty list.</p>
    #         <p>Although each user is limited to a small number of signing certificates, you can still
    #             paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    #         <p>If the <code>UserName</code> field is not specified, the user name is determined
    #             implicitly based on the Amazon Web Services access key ID used to sign the request for this operation.
    #             This operation works for access keys under the Amazon Web Services account. Consequently, you can use
    #             this operation to manage Amazon Web Services account root user credentials even if the Amazon Web Services account
    #             has no associated users.</p>
    #
    # @param [Hash] params
    #   See {Types::ListSigningCertificatesInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the IAM user whose signing certificates you want to examine.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListSigningCertificatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_signing_certificates(
    #     user_name: 'UserName',
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListSigningCertificatesOutput
    #   resp.data.certificates #=> Array<SigningCertificate>
    #   resp.data.certificates[0] #=> Types::SigningCertificate
    #   resp.data.certificates[0].user_name #=> String
    #   resp.data.certificates[0].certificate_id #=> String
    #   resp.data.certificates[0].certificate_body #=> String
    #   resp.data.certificates[0].status #=> String, one of ["Active", "Inactive"]
    #   resp.data.certificates[0].upload_date #=> Time
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_signing_certificates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListSigningCertificatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListSigningCertificatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListSigningCertificates
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListSigningCertificates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListSigningCertificates,
        stubs: @stubs,
        params_class: Params::ListSigningCertificatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_signing_certificates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the names of the inline policies embedded in the specified IAM user.</p>
    #         <p>An IAM user can also have managed policies attached to it. To list the managed
    #             policies that are attached to a user, use <a>ListAttachedUserPolicies</a>.
    #             For more information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #         <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters. If there are no inline policies embedded with the specified user, the
    #             operation returns an empty list.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUserPoliciesInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user to list policies for.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListUserPoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_policies(
    #     user_name: 'UserName', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUserPoliciesOutput
    #   resp.data.policy_names #=> Array<String>
    #   resp.data.policy_names[0] #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_user_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUserPoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUserPoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUserPolicies
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListUserPolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUserPolicies,
        stubs: @stubs,
        params_class: Params::ListUserPoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_user_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags that are attached to the specified IAM user. The returned list of tags is sorted by tag key. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUserTagsInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the IAM user whose tags you want to see.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListUserTagsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_user_tags(
    #     user_name: 'UserName', # required
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUserTagsOutput
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_user_tags(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUserTagsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUserTagsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUserTags
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::ListUserTags
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUserTags,
        stubs: @stubs,
        params_class: Params::ListUserTagsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_user_tags
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the IAM users that have the specified path prefix. If no path prefix is
    #             specified, the operation returns all users in the Amazon Web Services account. If there are none, the
    #             operation returns an empty list.</p>
    #         <note>
    #             <p>IAM resource-listing operations return a subset of the available
    #    attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view all of the information for a user, see <a>GetUser</a>.</p>
    #         </note>
    #         <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUsersInput}.
    #
    # @option params [String] :path_prefix
    #   <p> The path prefix for filtering the results. For example:
    #                   <code>/division_abc/subdivision_xyz/</code>, which would get all user names whose
    #               path starts with <code>/division_abc/subdivision_xyz/</code>.</p>
    #           <p>This parameter is optional. If it is not included, it defaults to a slash (/), listing
    #               all user names. This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users(
    #     path_prefix: 'PathPrefix',
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUsersOutput
    #   resp.data.users #=> Array<User>
    #   resp.data.users[0] #=> Types::User
    #   resp.data.users[0].path #=> String
    #   resp.data.users[0].user_name #=> String
    #   resp.data.users[0].user_id #=> String
    #   resp.data.users[0].arn #=> String
    #   resp.data.users[0].create_date #=> Time
    #   resp.data.users[0].password_last_used #=> Time
    #   resp.data.users[0].permissions_boundary #=> Types::AttachedPermissionsBoundary
    #   resp.data.users[0].permissions_boundary.permissions_boundary_type #=> String, one of ["PermissionsBoundaryPolicy"]
    #   resp.data.users[0].permissions_boundary.permissions_boundary_arn #=> String
    #   resp.data.users[0].tags #=> Array<Tag>
    #   resp.data.users[0].tags[0] #=> Types::Tag
    #   resp.data.users[0].tags[0].key #=> String
    #   resp.data.users[0].tags[0].value #=> String
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_users(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListUsersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListUsersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListUsers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException]),
        data_parser: Parsers::ListUsers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListUsers,
        stubs: @stubs,
        params_class: Params::ListUsersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_users
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the virtual MFA devices defined in the Amazon Web Services account by assignment status. If
    #             you do not specify an assignment status, the operation returns a list of all virtual MFA
    #             devices. Assignment status can be <code>Assigned</code>, <code>Unassigned</code>, or
    #                 <code>Any</code>.</p>
    #         <note>
    #             <p>IAM resource-listing operations return a subset of the available
    #    attributes for the resource. For example, this operation does not return tags, even though they are an attribute of the returned object. To view tag information for a virtual MFA device, see <a>ListMFADeviceTags</a>.</p>
    #         </note>
    #         <p>You can paginate the results using the <code>MaxItems</code> and <code>Marker</code>
    #             parameters.</p>
    #
    # @param [Hash] params
    #   See {Types::ListVirtualMFADevicesInput}.
    #
    # @option params [String] :assignment_status
    #   <p> The status (<code>Unassigned</code> or <code>Assigned</code>) of the devices to list.
    #               If you do not specify an <code>AssignmentStatus</code>, the operation defaults to
    #                   <code>Any</code>, which lists both assigned and unassigned virtual MFA
    #               devices.,</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @return [Types::ListVirtualMFADevicesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_virtual_mfa_devices(
    #     assignment_status: 'Assigned', # accepts ["Assigned", "Unassigned", "Any"]
    #     marker: 'Marker',
    #     max_items: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListVirtualMFADevicesOutput
    #   resp.data.virtual_mfa_devices #=> Array<VirtualMFADevice>
    #   resp.data.virtual_mfa_devices[0] #=> Types::VirtualMFADevice
    #   resp.data.virtual_mfa_devices[0].serial_number #=> String
    #   resp.data.virtual_mfa_devices[0].base32_string_seed #=> String
    #   resp.data.virtual_mfa_devices[0].qr_code_png #=> String
    #   resp.data.virtual_mfa_devices[0].user #=> Types::User
    #   resp.data.virtual_mfa_devices[0].user.path #=> String
    #   resp.data.virtual_mfa_devices[0].user.user_name #=> String
    #   resp.data.virtual_mfa_devices[0].user.user_id #=> String
    #   resp.data.virtual_mfa_devices[0].user.arn #=> String
    #   resp.data.virtual_mfa_devices[0].user.create_date #=> Time
    #   resp.data.virtual_mfa_devices[0].user.password_last_used #=> Time
    #   resp.data.virtual_mfa_devices[0].user.permissions_boundary #=> Types::AttachedPermissionsBoundary
    #   resp.data.virtual_mfa_devices[0].user.permissions_boundary.permissions_boundary_type #=> String, one of ["PermissionsBoundaryPolicy"]
    #   resp.data.virtual_mfa_devices[0].user.permissions_boundary.permissions_boundary_arn #=> String
    #   resp.data.virtual_mfa_devices[0].user.tags #=> Array<Tag>
    #   resp.data.virtual_mfa_devices[0].user.tags[0] #=> Types::Tag
    #   resp.data.virtual_mfa_devices[0].user.tags[0].key #=> String
    #   resp.data.virtual_mfa_devices[0].user.tags[0].value #=> String
    #   resp.data.virtual_mfa_devices[0].enable_date #=> Time
    #   resp.data.virtual_mfa_devices[0].tags #=> Array<Tag>
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def list_virtual_mfa_devices(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListVirtualMFADevicesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListVirtualMFADevicesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListVirtualMFADevices
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: []),
        data_parser: Parsers::ListVirtualMFADevices
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListVirtualMFADevices,
        stubs: @stubs,
        params_class: Params::ListVirtualMFADevicesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_virtual_mfa_devices
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates an inline policy document that is embedded in the specified IAM
    #             group.</p>
    #         <p>A user can also have managed policies attached to it. To attach a managed policy to a
    #             group, use <a>AttachGroupPolicy</a>. To create a new managed policy, use
    #                 <a>CreatePolicy</a>. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed
    #                 policies and inline policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    #         <p>For information about the maximum number of inline policies that you can embed in a
    #             group, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS quotas</a> in the <i>IAM User Guide</i>.</p>
    #         <note>
    #             <p>Because policy documents can be large, you should use POST rather than GET when
    #                 calling <code>PutGroupPolicy</code>. For general information about using the Query
    #                 API with IAM, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making query requests</a> in the
    #                     <i>IAM User Guide</i>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::PutGroupPolicyInput}.
    #
    # @option params [String] :group_name
    #   <p>The name of the group to associate the policy with.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-.</p>
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy document.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :policy_document
    #   <p>The policy document.</p>
    #
    #           <p>You must provide policies in JSON format in IAM. However, for CloudFormation templates
    #               formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always
    #               converts a YAML policy to JSON format before submitting it to = IAM.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::PutGroupPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_group_policy(
    #     group_name: 'GroupName', # required
    #     policy_name: 'PolicyName', # required
    #     policy_document: 'PolicyDocument' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutGroupPolicyOutput
    #
    def put_group_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutGroupPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutGroupPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutGroupPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::MalformedPolicyDocumentException, Errors::ServiceFailureException]),
        data_parser: Parsers::PutGroupPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutGroupPolicy,
        stubs: @stubs,
        params_class: Params::PutGroupPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_group_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates the policy that is specified as the IAM role's permissions boundary.
    #             You can use an Amazon Web Services managed policy or a customer managed policy to set the boundary for
    #             a role. Use the boundary to control the maximum permissions that the role can have.
    #             Setting a permissions boundary is an advanced feature that can affect the permissions
    #             for the role.</p>
    #         <p>You cannot set the boundary for a service-linked role. </p>
    #         <important>
    #             <p>Policies used as permissions boundaries do not provide permissions. You must also
    #                 attach a permissions policy to the role. To learn how the effective permissions for
    #                 a role are evaluated, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html">IAM JSON policy
    #                     evaluation logic</a> in the IAM User Guide. </p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::PutRolePermissionsBoundaryInput}.
    #
    # @option params [String] :role_name
    #   <p>The name (friendly name, not ARN) of the IAM role for which you want to set the
    #               permissions boundary.</p>
    #
    # @option params [String] :permissions_boundary
    #   <p>The ARN of the policy that is used to set the permissions boundary for the
    #               role.</p>
    #
    # @return [Types::PutRolePermissionsBoundaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_role_permissions_boundary(
    #     role_name: 'RoleName', # required
    #     permissions_boundary: 'PermissionsBoundary' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRolePermissionsBoundaryOutput
    #
    def put_role_permissions_boundary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRolePermissionsBoundaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRolePermissionsBoundaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRolePermissionsBoundary
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnmodifiableEntityException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::PolicyNotAttachableException, Errors::ServiceFailureException]),
        data_parser: Parsers::PutRolePermissionsBoundary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRolePermissionsBoundary,
        stubs: @stubs,
        params_class: Params::PutRolePermissionsBoundaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_role_permissions_boundary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates an inline policy document that is embedded in the specified IAM
    #             role.</p>
    #         <p>When you embed an inline policy in a role, the inline policy is used as part of the
    #             role's access (permissions) policy. The role's trust policy is created at the same time
    #             as the role, using <a>CreateRole</a>. You can update a role's trust policy
    #             using <a>UpdateAssumeRolePolicy</a>. For more information about IAM roles,
    #             see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html">Using roles to
    #                 delegate permissions and federate identities</a>.</p>
    #         <p>A role can also have a managed policy attached to it. To attach a managed policy to a
    #             role, use <a>AttachRolePolicy</a>. To create a new managed policy, use <a>CreatePolicy</a>. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed
    #                 policies and inline policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    #         <p>For information about the maximum number of inline policies that you can embed with a
    #             role, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS quotas</a> in the <i>IAM User Guide</i>.</p>
    #         <note>
    #             <p>Because policy documents can be large, you should use POST rather than GET when
    #                 calling <code>PutRolePolicy</code>. For general information about using the Query
    #                 API with IAM, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making query requests</a> in the
    #                     <i>IAM User Guide</i>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::PutRolePolicyInput}.
    #
    # @option params [String] :role_name
    #   <p>The name of the role to associate the policy with.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy document.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :policy_document
    #   <p>The policy document.</p>
    #           <p>You must provide policies in JSON format in IAM. However, for CloudFormation
    #               templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
    #               IAM.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::PutRolePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_role_policy(
    #     role_name: 'RoleName', # required
    #     policy_name: 'PolicyName', # required
    #     policy_document: 'PolicyDocument' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRolePolicyOutput
    #
    def put_role_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRolePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRolePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRolePolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnmodifiableEntityException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::MalformedPolicyDocumentException, Errors::ServiceFailureException]),
        data_parser: Parsers::PutRolePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRolePolicy,
        stubs: @stubs,
        params_class: Params::PutRolePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_role_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates the policy that is specified as the IAM user's permissions boundary.
    #             You can use an Amazon Web Services managed policy or a customer managed policy to set the boundary for
    #             a user. Use the boundary to control the maximum permissions that the user can have.
    #             Setting a permissions boundary is an advanced feature that can affect the permissions
    #             for the user.</p>
    #         <important>
    #             <p>Policies that are used as permissions boundaries do not provide permissions. You
    #                 must also attach a permissions policy to the user. To learn how the effective
    #                 permissions for a user are evaluated, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_evaluation-logic.html">IAM JSON policy
    #                     evaluation logic</a> in the IAM User Guide. </p>
    #         </important>
    #
    # @param [Hash] params
    #   See {Types::PutUserPermissionsBoundaryInput}.
    #
    # @option params [String] :user_name
    #   <p>The name (friendly name, not ARN) of the IAM user for which you want to set the
    #               permissions boundary.</p>
    #
    # @option params [String] :permissions_boundary
    #   <p>The ARN of the policy that is used to set the permissions boundary for the
    #               user.</p>
    #
    # @return [Types::PutUserPermissionsBoundaryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_user_permissions_boundary(
    #     user_name: 'UserName', # required
    #     permissions_boundary: 'PermissionsBoundary' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutUserPermissionsBoundaryOutput
    #
    def put_user_permissions_boundary(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutUserPermissionsBoundaryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutUserPermissionsBoundaryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutUserPermissionsBoundary
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::PolicyNotAttachableException, Errors::ServiceFailureException]),
        data_parser: Parsers::PutUserPermissionsBoundary
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutUserPermissionsBoundary,
        stubs: @stubs,
        params_class: Params::PutUserPermissionsBoundaryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_user_permissions_boundary
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates an inline policy document that is embedded in the specified IAM
    #             user.</p>
    #         <p>An IAM user can also have a managed policy attached to it. To attach a managed
    #             policy to a user, use <a>AttachUserPolicy</a>. To create a new managed
    #             policy, use <a>CreatePolicy</a>. For information about policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed
    #                 policies and inline policies</a> in the
    #             <i>IAM User Guide</i>.</p>
    #         <p>For information about the maximum number of inline policies that you can embed in a
    #             user, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS quotas</a> in the <i>IAM User Guide</i>.</p>
    #         <note>
    #             <p>Because policy documents can be large, you should use POST rather than GET when
    #                 calling <code>PutUserPolicy</code>. For general information about using the Query
    #                 API with IAM, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making query requests</a> in the
    #                     <i>IAM User Guide</i>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::PutUserPolicyInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user to associate the policy with.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :policy_name
    #   <p>The name of the policy document.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :policy_document
    #   <p>The policy document.</p>
    #
    #           <p>You must provide policies in JSON format in IAM. However, for CloudFormation
    #               templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
    #               IAM.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::PutUserPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_user_policy(
    #     user_name: 'UserName', # required
    #     policy_name: 'PolicyName', # required
    #     policy_document: 'PolicyDocument' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutUserPolicyOutput
    #
    def put_user_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutUserPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutUserPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutUserPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::MalformedPolicyDocumentException, Errors::ServiceFailureException]),
        data_parser: Parsers::PutUserPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutUserPolicy,
        stubs: @stubs,
        params_class: Params::PutUserPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_user_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified client ID (also known as audience) from the list of client IDs
    #             registered for the specified IAM OpenID Connect (OIDC) provider resource
    #             object.</p>
    #         <p>This operation is idempotent; it does not fail or return an error if you try to remove
    #             a client ID that does not exist.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveClientIDFromOpenIDConnectProviderInput}.
    #
    # @option params [String] :open_id_connect_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM OIDC provider resource to remove the
    #               client ID from. You can get a list of OIDC provider ARNs by using the <a>ListOpenIDConnectProviders</a> operation.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :client_id
    #   <p>The client ID (also known as audience) to remove from the IAM OIDC provider
    #               resource. For more information about client IDs, see <a>CreateOpenIDConnectProvider</a>.</p>
    #
    # @return [Types::RemoveClientIDFromOpenIDConnectProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_client_id_from_open_id_connect_provider(
    #     open_id_connect_provider_arn: 'OpenIDConnectProviderArn', # required
    #     client_id: 'ClientID' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveClientIDFromOpenIDConnectProviderOutput
    #
    def remove_client_id_from_open_id_connect_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveClientIDFromOpenIDConnectProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveClientIDFromOpenIDConnectProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveClientIDFromOpenIDConnectProvider
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::RemoveClientIDFromOpenIDConnectProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveClientIDFromOpenIDConnectProvider,
        stubs: @stubs,
        params_class: Params::RemoveClientIDFromOpenIDConnectProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_client_id_from_open_id_connect_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified IAM role from the specified EC2 instance profile.</p>
    #         <important>
    #             <p>Make sure that you do not have any Amazon EC2 instances running with the role you
    #                 are about to remove from the instance profile. Removing a role from an instance
    #                 profile that is associated with a running instance might break any applications
    #                 running on the instance.</p>
    #         </important>
    #         <p> For more information about IAM roles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/WorkingWithRoles.html">Working with roles</a>. For more
    #             information about instance profiles, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html">About instance
    #             profiles</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveRoleFromInstanceProfileInput}.
    #
    # @option params [String] :instance_profile_name
    #   <p>The name of the instance profile to update.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :role_name
    #   <p>The name of the role to remove.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::RemoveRoleFromInstanceProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_role_from_instance_profile(
    #     instance_profile_name: 'InstanceProfileName', # required
    #     role_name: 'RoleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveRoleFromInstanceProfileOutput
    #
    def remove_role_from_instance_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveRoleFromInstanceProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveRoleFromInstanceProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveRoleFromInstanceProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnmodifiableEntityException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::RemoveRoleFromInstanceProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveRoleFromInstanceProfile,
        stubs: @stubs,
        params_class: Params::RemoveRoleFromInstanceProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_role_from_instance_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified user from the specified group.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveUserFromGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>The name of the group to update.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :user_name
    #   <p>The name of the user to remove.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::RemoveUserFromGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_user_from_group(
    #     group_name: 'GroupName', # required
    #     user_name: 'UserName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveUserFromGroupOutput
    #
    def remove_user_from_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveUserFromGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveUserFromGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveUserFromGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::RemoveUserFromGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveUserFromGroup,
        stubs: @stubs,
        params_class: Params::RemoveUserFromGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_user_from_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Resets the password for a service-specific credential. The new password is Amazon Web Services
    #             generated and cryptographically strong. It cannot be configured by the user. Resetting
    #             the password immediately invalidates the previous password associated with this
    #             user.</p>
    #
    # @param [Hash] params
    #   See {Types::ResetServiceSpecificCredentialInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the IAM user associated with the service-specific credential. If this
    #               value is not specified, then the operation assumes the user whose credentials are used
    #               to call the operation.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :service_specific_credential_id
    #   <p>The unique identifier of the service-specific credential.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can
    #       consist of any upper or lowercased letter or digit.</p>
    #
    # @return [Types::ResetServiceSpecificCredentialOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_service_specific_credential(
    #     user_name: 'UserName',
    #     service_specific_credential_id: 'ServiceSpecificCredentialId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResetServiceSpecificCredentialOutput
    #   resp.data.service_specific_credential #=> Types::ServiceSpecificCredential
    #   resp.data.service_specific_credential.create_date #=> Time
    #   resp.data.service_specific_credential.service_name #=> String
    #   resp.data.service_specific_credential.service_user_name #=> String
    #   resp.data.service_specific_credential.service_password #=> String
    #   resp.data.service_specific_credential.service_specific_credential_id #=> String
    #   resp.data.service_specific_credential.user_name #=> String
    #   resp.data.service_specific_credential.status #=> String, one of ["Active", "Inactive"]
    #
    def reset_service_specific_credential(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResetServiceSpecificCredentialInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResetServiceSpecificCredentialInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResetServiceSpecificCredential
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException]),
        data_parser: Parsers::ResetServiceSpecificCredential
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResetServiceSpecificCredential,
        stubs: @stubs,
        params_class: Params::ResetServiceSpecificCredentialOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reset_service_specific_credential
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Synchronizes the specified MFA device with its IAM resource object on the Amazon Web Services
    #             servers.</p>
    #         <p>For more information about creating and working with virtual MFA devices, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_VirtualMFA.html">Using a virtual MFA
    #                 device</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ResyncMFADeviceInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user whose MFA device you want to resynchronize.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :serial_number
    #   <p>Serial number that uniquely identifies the MFA device.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :authentication_code1
    #   <p>An authentication code emitted by the device.</p>
    #           <p>The format for this parameter is a sequence of six digits.</p>
    #
    # @option params [String] :authentication_code2
    #   <p>A subsequent authentication code emitted by the device.</p>
    #           <p>The format for this parameter is a sequence of six digits.</p>
    #
    # @return [Types::ResyncMFADeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.resync_mfa_device(
    #     user_name: 'UserName', # required
    #     serial_number: 'SerialNumber', # required
    #     authentication_code1: 'AuthenticationCode1', # required
    #     authentication_code2: 'AuthenticationCode2' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResyncMFADeviceOutput
    #
    def resync_mfa_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResyncMFADeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResyncMFADeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResyncMFADevice
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidAuthenticationCodeException, Errors::ServiceFailureException]),
        data_parser: Parsers::ResyncMFADevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResyncMFADevice,
        stubs: @stubs,
        params_class: Params::ResyncMFADeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :resync_mfa_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the specified version of the specified policy as the policy's default (operative)
    #             version.</p>
    #         <p>This operation affects all users, groups, and roles that the policy is attached to. To
    #             list the users, groups, and roles that the policy is attached to, use <a>ListEntitiesForPolicy</a>.</p>
    #         <p>For information about managed policies, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html">Managed policies and inline
    #                 policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::SetDefaultPolicyVersionInput}.
    #
    # @option params [String] :policy_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM policy whose default version you want to
    #               set.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :version_id
    #   <p>The version of the policy to set as the default (operative) version.</p>
    #           <p>For more information about managed policy versions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html">Versioning for managed
    #                   policies</a> in the <i>IAM User Guide</i>.</p>
    #
    # @return [Types::SetDefaultPolicyVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_default_policy_version(
    #     policy_arn: 'PolicyArn', # required
    #     version_id: 'VersionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetDefaultPolicyVersionOutput
    #
    def set_default_policy_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetDefaultPolicyVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetDefaultPolicyVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetDefaultPolicyVersion
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::SetDefaultPolicyVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetDefaultPolicyVersion,
        stubs: @stubs,
        params_class: Params::SetDefaultPolicyVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_default_policy_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the specified version of the global endpoint token as the token version used for
    #             the Amazon Web Services account.</p>
    #         <p>By default, Security Token Service (STS) is available as a global service, and all STS requests
    #             go to a single endpoint at <code>https://sts.amazonaws.com</code>. Amazon Web Services recommends
    #             using Regional STS endpoints to reduce latency, build in redundancy, and increase
    #             session token availability. For information about Regional endpoints for STS, see
    #                 <a href="https://docs.aws.amazon.com/general/latest/gr/sts.html">Security Token Service
    #                 endpoints and quotas</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #         <p>If you make an STS call to the global endpoint, the resulting session tokens might
    #             be valid in some Regions but not others. It depends on the version that is set in this
    #             operation. Version 1 tokens are valid only in Amazon Web Services Regions that are
    #             available by default. These tokens do not work in manually enabled Regions, such as Asia
    #             Pacific (Hong Kong). Version 2 tokens are valid in all Regions. However, version 2
    #             tokens are longer and might affect systems where you temporarily store tokens. For
    #             information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and
    #                 deactivating STS in an Amazon Web Services Region</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #         <p>To view the current session token version, see the
    #                 <code>GlobalEndpointTokenVersion</code> entry in the response of the <a>GetAccountSummary</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::SetSecurityTokenServicePreferencesInput}.
    #
    # @option params [String] :global_endpoint_token_version
    #   <p>The version of the global endpoint token. Version 1 tokens are valid only in Amazon Web Services Regions that are available by default. These tokens do not work in
    #               manually enabled Regions, such as Asia Pacific (Hong Kong). Version 2 tokens are valid
    #               in all Regions. However, version 2 tokens are longer and might affect systems where you
    #               temporarily store tokens.</p>
    #           <p>For information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_temp_enable-regions.html">Activating and
    #                   deactivating STS in an Amazon Web Services Region</a> in the
    #                   <i>IAM User Guide</i>.</p>
    #
    # @return [Types::SetSecurityTokenServicePreferencesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.set_security_token_service_preferences(
    #     global_endpoint_token_version: 'v1Token' # required - accepts ["v1Token", "v2Token"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SetSecurityTokenServicePreferencesOutput
    #
    def set_security_token_service_preferences(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SetSecurityTokenServicePreferencesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SetSecurityTokenServicePreferencesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SetSecurityTokenServicePreferences
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceFailureException]),
        data_parser: Parsers::SetSecurityTokenServicePreferences
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SetSecurityTokenServicePreferences,
        stubs: @stubs,
        params_class: Params::SetSecurityTokenServicePreferencesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :set_security_token_service_preferences
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Simulate how a set of IAM policies and optionally a resource-based policy works with
    #             a list of API operations and Amazon Web Services resources to determine the policies' effective
    #             permissions. The policies are provided as strings.</p>
    #         <p>The simulation does not perform the API operations; it only checks the authorization
    #             to determine if the simulated policies allow or deny the operations. You can simulate
    #             resources that don't exist in your account.</p>
    #         <p>If you want to simulate existing policies that are attached to an IAM user, group,
    #             or role, use <a>SimulatePrincipalPolicy</a> instead.</p>
    #         <p>Context keys are variables that are maintained by Amazon Web Services and its services and which
    #             provide details about the context of an API query request. You can use the
    #                 <code>Condition</code> element of an IAM policy to evaluate context keys. To get
    #             the list of context keys that the policies require for correct simulation, use <a>GetContextKeysForCustomPolicy</a>.</p>
    #         <p>If the output is long, you can use <code>MaxItems</code> and <code>Marker</code>
    #             parameters to paginate the results.</p>
    #         <p>For more information about using the policy simulator, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.html">Testing IAM policies
    #                 with the IAM policy simulator </a>in the
    #             <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::SimulateCustomPolicyInput}.
    #
    # @option params [Array<String>] :policy_input_list
    #   <p>A list of policy documents to include in the simulation. Each document is specified as
    #               a string containing the complete, valid JSON text of an IAM policy. Do not include any
    #               resource-based policies in this parameter. Any resource-based policy must be submitted
    #               with the <code>ResourcePolicy</code> parameter. The policies cannot be "scope-down"
    #               policies, such as you could include in a call to <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_GetFederationToken.html">GetFederationToken</a> or one of
    #               the <a href="https://docs.aws.amazon.com/IAM/latest/APIReference/API_AssumeRole.html">AssumeRole</a> API operations. In other words, do not use policies designed to
    #               restrict what a user can do while using the temporary credentials.</p>
    #           <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :permissions_boundary_policy_input_list
    #   <p>The IAM permissions boundary policy to simulate. The permissions boundary sets the
    #               maximum permissions that an IAM entity can have. You can input only one permissions
    #               boundary when you pass a policy to this operation. For more information about
    #               permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries for IAM
    #                   entities</a> in the <i>IAM User Guide</i>. The policy input is
    #               specified as a string that contains the complete, valid JSON text of a permissions
    #               boundary policy.</p>
    #           <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :action_names
    #   <p>A list of names of API operations to evaluate in the simulation. Each operation is
    #               evaluated against each resource. Each operation must include the service identifier,
    #               such as <code>iam:CreateUser</code>. This operation does not support using wildcards (*)
    #               in an action name.</p>
    #
    # @option params [Array<String>] :resource_arns
    #   <p>A list of ARNs of Amazon Web Services resources to include in the simulation. If this parameter is
    #               not provided, then the value defaults to <code>*</code> (all resources). Each API in the
    #                   <code>ActionNames</code> parameter is evaluated for each resource in this list. The
    #               simulation determines the access result (allowed or denied) of each combination and
    #               reports it in the response. You can simulate resources that don't exist in your
    #               account.</p>
    #           <p>The simulation does not automatically retrieve policies for the specified resources.
    #               If you want to include a resource policy in the simulation, then you must include the
    #               policy as a string in the <code>ResourcePolicy</code> parameter.</p>
    #           <p>If you include a <code>ResourcePolicy</code>, then it must be applicable to all of the
    #               resources included in the simulation or you receive an invalid input error.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :resource_policy
    #   <p>A resource-based policy to include in the simulation provided as a string. Each
    #               resource in the simulation is treated as if it had this policy attached. You can include
    #               only one resource-based policy in a simulation.</p>
    #           <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :resource_owner
    #   <p>An ARN representing the Amazon Web Services account ID that specifies the owner of any simulated
    #               resource that does not identify its owner in the resource ARN. Examples of resource ARNs
    #               include an S3 bucket or object. If <code>ResourceOwner</code> is specified, it is also
    #               used as the account owner of any <code>ResourcePolicy</code> included in the simulation.
    #               If the <code>ResourceOwner</code> parameter is not specified, then the owner of the
    #               resources and the resource policy defaults to the account of the identity provided in
    #                   <code>CallerArn</code>. This parameter is required only if you specify a
    #               resource-based policy and account that owns the resource is different from the account
    #               that owns the simulated calling user <code>CallerArn</code>.</p>
    #           <p>The ARN for an account uses the following syntax:
    #                       <code>arn:aws:iam::<i>AWS-account-ID</i>:root</code>. For example,
    #               to represent the account with the 112233445566 ID, use the following ARN:
    #                   <code>arn:aws:iam::112233445566-ID:root</code>. </p>
    #
    # @option params [String] :caller_arn
    #   <p>The ARN of the IAM user that you want to use as the simulated caller of the API
    #               operations. <code>CallerArn</code> is required if you include a
    #                   <code>ResourcePolicy</code> so that the policy's <code>Principal</code> element has
    #               a value to use in evaluating the policy.</p>
    #           <p>You can specify only the ARN of an IAM user. You cannot specify the ARN of an
    #               assumed role, federated user, or a service principal.</p>
    #
    # @option params [Array<ContextEntry>] :context_entries
    #   <p>A list of context keys and corresponding values for the simulation to use. Whenever a
    #               context key is evaluated in one of the simulated IAM permissions policies, the
    #               corresponding value is supplied.</p>
    #
    # @option params [String] :resource_handling_option
    #   <p>Specifies the type of simulation to run. Different API operations that support
    #               resource-based policies require different combinations of resources. By specifying the
    #               type of simulation to run, you enable the policy simulator to enforce the presence of
    #               the required resources to ensure reliable simulation results. If your simulation does
    #               not match one of the following scenarios, then you can omit this parameter. The
    #               following list shows each of the supported scenario values and the resources that you
    #               must define to run the simulation.</p>
    #           <p>Each of the EC2 scenarios requires that you specify instance, image, and
    #               security-group resources. If your scenario includes an EBS volume, then you must specify
    #               that volume as a resource. If the EC2 scenario includes VPC, then you must supply the
    #               network-interface resource. If it includes an IP subnet, then you must specify the
    #               subnet resource. For more information on the EC2 scenario options, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported platforms</a> in the <i>Amazon EC2 User
    #               Guide</i>.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>EC2-Classic-InstanceStore</b>
    #                   </p>
    #                   <p>instance, image, security-group</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>EC2-Classic-EBS</b>
    #                   </p>
    #                   <p>instance, image, security-group, volume</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>EC2-VPC-InstanceStore</b>
    #                   </p>
    #                   <p>instance, image, security-group, network-interface</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>EC2-VPC-InstanceStore-Subnet</b>
    #                   </p>
    #                   <p>instance, image, security-group, network-interface, subnet</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>EC2-VPC-EBS</b>
    #                   </p>
    #                   <p>instance, image, security-group, network-interface, volume</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>EC2-VPC-EBS-Subnet</b>
    #                   </p>
    #                   <p>instance, image, security-group, network-interface, subnet, volume</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @return [Types::SimulateCustomPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.simulate_custom_policy(
    #     policy_input_list: [
    #       'member'
    #     ], # required
    #     action_names: [
    #       'member'
    #     ], # required
    #     resource_arns: [
    #       'member'
    #     ],
    #     resource_policy: 'ResourcePolicy',
    #     resource_owner: 'ResourceOwner',
    #     caller_arn: 'CallerArn',
    #     context_entries: [
    #       {
    #         context_key_name: 'ContextKeyName',
    #         context_key_values: [
    #           'member'
    #         ],
    #         context_key_type: 'string' # accepts ["string", "stringList", "numeric", "numericList", "boolean", "booleanList", "ip", "ipList", "binary", "binaryList", "date", "dateList"]
    #       }
    #     ],
    #     resource_handling_option: 'ResourceHandlingOption',
    #     max_items: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SimulateCustomPolicyOutput
    #   resp.data.evaluation_results #=> Array<EvaluationResult>
    #   resp.data.evaluation_results[0] #=> Types::EvaluationResult
    #   resp.data.evaluation_results[0].eval_action_name #=> String
    #   resp.data.evaluation_results[0].eval_resource_name #=> String
    #   resp.data.evaluation_results[0].eval_decision #=> String, one of ["allowed", "explicitDeny", "implicitDeny"]
    #   resp.data.evaluation_results[0].matched_statements #=> Array<Statement>
    #   resp.data.evaluation_results[0].matched_statements[0] #=> Types::Statement
    #   resp.data.evaluation_results[0].matched_statements[0].source_policy_id #=> String
    #   resp.data.evaluation_results[0].matched_statements[0].source_policy_type #=> String, one of ["user", "group", "role", "aws-managed", "user-managed", "resource", "none"]
    #   resp.data.evaluation_results[0].matched_statements[0].start_position #=> Types::Position
    #   resp.data.evaluation_results[0].matched_statements[0].start_position.line #=> Integer
    #   resp.data.evaluation_results[0].matched_statements[0].start_position.column #=> Integer
    #   resp.data.evaluation_results[0].matched_statements[0].end_position #=> Types::Position
    #   resp.data.evaluation_results[0].missing_context_values #=> Array<String>
    #   resp.data.evaluation_results[0].missing_context_values[0] #=> String
    #   resp.data.evaluation_results[0].organizations_decision_detail #=> Types::OrganizationsDecisionDetail
    #   resp.data.evaluation_results[0].organizations_decision_detail.allowed_by_organizations #=> Boolean
    #   resp.data.evaluation_results[0].permissions_boundary_decision_detail #=> Types::PermissionsBoundaryDecisionDetail
    #   resp.data.evaluation_results[0].permissions_boundary_decision_detail.allowed_by_permissions_boundary #=> Boolean
    #   resp.data.evaluation_results[0].eval_decision_details #=> Hash<String, String>
    #   resp.data.evaluation_results[0].eval_decision_details['key'] #=> String, one of ["allowed", "explicitDeny", "implicitDeny"]
    #   resp.data.evaluation_results[0].resource_specific_results #=> Array<ResourceSpecificResult>
    #   resp.data.evaluation_results[0].resource_specific_results[0] #=> Types::ResourceSpecificResult
    #   resp.data.evaluation_results[0].resource_specific_results[0].eval_resource_name #=> String
    #   resp.data.evaluation_results[0].resource_specific_results[0].eval_resource_decision #=> String, one of ["allowed", "explicitDeny", "implicitDeny"]
    #   resp.data.evaluation_results[0].resource_specific_results[0].matched_statements #=> Array<Statement>
    #   resp.data.evaluation_results[0].resource_specific_results[0].missing_context_values #=> Array<String>
    #   resp.data.evaluation_results[0].resource_specific_results[0].eval_decision_details #=> Hash<String, String>
    #   resp.data.evaluation_results[0].resource_specific_results[0].permissions_boundary_decision_detail #=> Types::PermissionsBoundaryDecisionDetail
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def simulate_custom_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SimulateCustomPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SimulateCustomPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SimulateCustomPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidInputException, Errors::PolicyEvaluationException]),
        data_parser: Parsers::SimulateCustomPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SimulateCustomPolicy,
        stubs: @stubs,
        params_class: Params::SimulateCustomPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :simulate_custom_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Simulate how a set of IAM policies attached to an IAM entity works with a list of
    #             API operations and Amazon Web Services resources to determine the policies' effective permissions. The
    #             entity can be an IAM user, group, or role. If you specify a user, then the simulation
    #             also includes all of the policies that are attached to groups that the user belongs to.
    #             You can simulate resources that don't exist in your account.</p>
    #         <p>You can optionally include a list of one or more additional policies specified as
    #             strings to include in the simulation. If you want to simulate only policies specified as
    #             strings, use <a>SimulateCustomPolicy</a> instead.</p>
    #         <p>You can also optionally include one resource-based policy to be evaluated with each of
    #             the resources included in the simulation.</p>
    #         <p>The simulation does not perform the API operations; it only checks the authorization
    #             to determine if the simulated policies allow or deny the operations.</p>
    #         <p>
    #             <b>Note:</b> This operation discloses information about the
    #             permissions granted to other users. If you do not want users to see other user's
    #             permissions, then consider allowing them to use <a>SimulateCustomPolicy</a>
    #             instead.</p>
    #         <p>Context keys are variables maintained by Amazon Web Services and its services that provide details
    #             about the context of an API query request. You can use the <code>Condition</code>
    #             element of an IAM policy to evaluate context keys. To get the list of context keys
    #             that the policies require for correct simulation, use <a>GetContextKeysForPrincipalPolicy</a>.</p>
    #         <p>If the output is long, you can use the <code>MaxItems</code> and <code>Marker</code>
    #             parameters to paginate the results.</p>
    #         <p>For more information about using the policy simulator, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_testing-policies.html">Testing IAM policies
    #                 with the IAM policy simulator </a>in the
    #             <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::SimulatePrincipalPolicyInput}.
    #
    # @option params [String] :policy_source_arn
    #   <p>The Amazon Resource Name (ARN) of a user, group, or role whose policies you want to
    #               include in the simulation. If you specify a user, group, or role, the simulation
    #               includes all policies that are associated with that entity. If you specify a user, the
    #               simulation also includes all policies that are attached to any groups the user belongs
    #               to.</p>
    #           <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [Array<String>] :policy_input_list
    #   <p>An optional list of additional policy documents to include in the simulation. Each
    #               document is specified as a string containing the complete, valid JSON text of an IAM
    #               policy.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :permissions_boundary_policy_input_list
    #   <p>The IAM permissions boundary policy to simulate. The permissions boundary sets the
    #               maximum permissions that the entity can have. You can input only one permissions
    #               boundary when you pass a policy to this operation. An IAM entity can only have one
    #               permissions boundary in effect at a time. For example, if a permissions boundary is
    #               attached to an entity and you pass in a different permissions boundary policy using this
    #               parameter, then the new permissions boundary policy is used for the simulation. For more
    #               information about permissions boundaries, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_boundaries.html">Permissions boundaries for IAM
    #                   entities</a> in the <i>IAM User Guide</i>. The policy input is
    #               specified as a string containing the complete, valid JSON text of a permissions boundary
    #               policy.</p>
    #           <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :action_names
    #   <p>A list of names of API operations to evaluate in the simulation. Each operation is
    #               evaluated for each resource. Each operation must include the service identifier, such as
    #                   <code>iam:CreateUser</code>.</p>
    #
    # @option params [Array<String>] :resource_arns
    #   <p>A list of ARNs of Amazon Web Services resources to include in the simulation. If this parameter is
    #               not provided, then the value defaults to <code>*</code> (all resources). Each API in the
    #                   <code>ActionNames</code> parameter is evaluated for each resource in this list. The
    #               simulation determines the access result (allowed or denied) of each combination and
    #               reports it in the response. You can simulate resources that don't exist in your
    #               account.</p>
    #           <p>The simulation does not automatically retrieve policies for the specified resources.
    #               If you want to include a resource policy in the simulation, then you must include the
    #               policy as a string in the <code>ResourcePolicy</code> parameter.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :resource_policy
    #   <p>A resource-based policy to include in the simulation provided as a string. Each
    #               resource in the simulation is treated as if it had this policy attached. You can include
    #               only one resource-based policy in a simulation.</p>
    #           <p>The maximum length of the policy document that you can pass in this operation,
    #               including whitespace, is listed below. To view the maximum character counts of a managed policy with no whitespaces, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html#reference_iam-quotas-entity-length">IAM and STS character quotas</a>.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :resource_owner
    #   <p>An Amazon Web Services account ID that specifies the owner of any simulated resource that does not
    #               identify its owner in the resource ARN. Examples of resource ARNs include an S3 bucket
    #               or object. If <code>ResourceOwner</code> is specified, it is also used as the account
    #               owner of any <code>ResourcePolicy</code> included in the simulation. If the
    #                   <code>ResourceOwner</code> parameter is not specified, then the owner of the
    #               resources and the resource policy defaults to the account of the identity provided in
    #                   <code>CallerArn</code>. This parameter is required only if you specify a
    #               resource-based policy and account that owns the resource is different from the account
    #               that owns the simulated calling user <code>CallerArn</code>.</p>
    #
    # @option params [String] :caller_arn
    #   <p>The ARN of the IAM user that you want to specify as the simulated caller of the API
    #               operations. If you do not specify a <code>CallerArn</code>, it defaults to the ARN of
    #               the user that you specify in <code>PolicySourceArn</code>, if you specified a user. If
    #               you include both a <code>PolicySourceArn</code> (for example,
    #                   <code>arn:aws:iam::123456789012:user/David</code>) and a <code>CallerArn</code> (for
    #               example, <code>arn:aws:iam::123456789012:user/Bob</code>), the result is that you
    #               simulate calling the API operations as Bob, as if Bob had David's policies.</p>
    #           <p>You can specify only the ARN of an IAM user. You cannot specify the ARN of an
    #               assumed role, federated user, or a service principal.</p>
    #           <p>
    #               <code>CallerArn</code> is required if you include a <code>ResourcePolicy</code> and
    #               the <code>PolicySourceArn</code> is not the ARN for an IAM user. This is required so
    #               that the resource-based policy's <code>Principal</code> element has a value to use in
    #               evaluating the policy.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [Array<ContextEntry>] :context_entries
    #   <p>A list of context keys and corresponding values for the simulation to use. Whenever a
    #               context key is evaluated in one of the simulated IAM permissions policies, the
    #               corresponding value is supplied.</p>
    #
    # @option params [String] :resource_handling_option
    #   <p>Specifies the type of simulation to run. Different API operations that support
    #               resource-based policies require different combinations of resources. By specifying the
    #               type of simulation to run, you enable the policy simulator to enforce the presence of
    #               the required resources to ensure reliable simulation results. If your simulation does
    #               not match one of the following scenarios, then you can omit this parameter. The
    #               following list shows each of the supported scenario values and the resources that you
    #               must define to run the simulation.</p>
    #           <p>Each of the EC2 scenarios requires that you specify instance, image, and security
    #               group resources. If your scenario includes an EBS volume, then you must specify that
    #               volume as a resource. If the EC2 scenario includes VPC, then you must supply the network
    #               interface resource. If it includes an IP subnet, then you must specify the subnet
    #               resource. For more information on the EC2 scenario options, see <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html">Supported platforms</a> in the <i>Amazon EC2 User
    #               Guide</i>.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                       <b>EC2-Classic-InstanceStore</b>
    #                   </p>
    #                   <p>instance, image, security group</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>EC2-Classic-EBS</b>
    #                   </p>
    #                   <p>instance, image, security group, volume</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>EC2-VPC-InstanceStore</b>
    #                   </p>
    #                   <p>instance, image, security group, network interface</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>EC2-VPC-InstanceStore-Subnet</b>
    #                   </p>
    #                   <p>instance, image, security group, network interface, subnet</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>EC2-VPC-EBS</b>
    #                   </p>
    #                   <p>instance, image, security group, network interface, volume</p>
    #               </li>
    #               <li>
    #                   <p>
    #                       <b>EC2-VPC-EBS-Subnet</b>
    #                   </p>
    #                   <p>instance, image, security group, network interface, subnet, volume</p>
    #               </li>
    #            </ul>
    #
    # @option params [Integer] :max_items
    #   <p>Use this only when paginating results to indicate the
    #       maximum number of items you want in the response. If additional items exist beyond the maximum
    #       you specify, the <code>IsTruncated</code> response element is <code>true</code>.</p>
    #            <p>If you do not include this parameter, the number of items defaults to 100. Note that
    #       IAM might return fewer results, even when there are more results available. In that case, the
    #       <code>IsTruncated</code> response element returns <code>true</code>, and <code>Marker</code>
    #       contains a value to include in the subsequent call that tells the service where to continue
    #       from.</p>
    #
    # @option params [String] :marker
    #   <p>Use this parameter only when paginating results and only after
    #       you receive a response indicating that the results are truncated. Set it to the value of the
    #       <code>Marker</code> element in the response that you received to indicate where the next call
    #       should start.</p>
    #
    # @return [Types::SimulatePrincipalPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.simulate_principal_policy(
    #     policy_source_arn: 'PolicySourceArn', # required
    #     policy_input_list: [
    #       'member'
    #     ],
    #     action_names: [
    #       'member'
    #     ], # required
    #     resource_arns: [
    #       'member'
    #     ],
    #     resource_policy: 'ResourcePolicy',
    #     resource_owner: 'ResourceOwner',
    #     caller_arn: 'CallerArn',
    #     context_entries: [
    #       {
    #         context_key_name: 'ContextKeyName',
    #         context_key_values: [
    #           'member'
    #         ],
    #         context_key_type: 'string' # accepts ["string", "stringList", "numeric", "numericList", "boolean", "booleanList", "ip", "ipList", "binary", "binaryList", "date", "dateList"]
    #       }
    #     ],
    #     resource_handling_option: 'ResourceHandlingOption',
    #     max_items: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::SimulatePrincipalPolicyOutput
    #   resp.data.evaluation_results #=> Array<EvaluationResult>
    #   resp.data.evaluation_results[0] #=> Types::EvaluationResult
    #   resp.data.evaluation_results[0].eval_action_name #=> String
    #   resp.data.evaluation_results[0].eval_resource_name #=> String
    #   resp.data.evaluation_results[0].eval_decision #=> String, one of ["allowed", "explicitDeny", "implicitDeny"]
    #   resp.data.evaluation_results[0].matched_statements #=> Array<Statement>
    #   resp.data.evaluation_results[0].matched_statements[0] #=> Types::Statement
    #   resp.data.evaluation_results[0].matched_statements[0].source_policy_id #=> String
    #   resp.data.evaluation_results[0].matched_statements[0].source_policy_type #=> String, one of ["user", "group", "role", "aws-managed", "user-managed", "resource", "none"]
    #   resp.data.evaluation_results[0].matched_statements[0].start_position #=> Types::Position
    #   resp.data.evaluation_results[0].matched_statements[0].start_position.line #=> Integer
    #   resp.data.evaluation_results[0].matched_statements[0].start_position.column #=> Integer
    #   resp.data.evaluation_results[0].matched_statements[0].end_position #=> Types::Position
    #   resp.data.evaluation_results[0].missing_context_values #=> Array<String>
    #   resp.data.evaluation_results[0].missing_context_values[0] #=> String
    #   resp.data.evaluation_results[0].organizations_decision_detail #=> Types::OrganizationsDecisionDetail
    #   resp.data.evaluation_results[0].organizations_decision_detail.allowed_by_organizations #=> Boolean
    #   resp.data.evaluation_results[0].permissions_boundary_decision_detail #=> Types::PermissionsBoundaryDecisionDetail
    #   resp.data.evaluation_results[0].permissions_boundary_decision_detail.allowed_by_permissions_boundary #=> Boolean
    #   resp.data.evaluation_results[0].eval_decision_details #=> Hash<String, String>
    #   resp.data.evaluation_results[0].eval_decision_details['key'] #=> String, one of ["allowed", "explicitDeny", "implicitDeny"]
    #   resp.data.evaluation_results[0].resource_specific_results #=> Array<ResourceSpecificResult>
    #   resp.data.evaluation_results[0].resource_specific_results[0] #=> Types::ResourceSpecificResult
    #   resp.data.evaluation_results[0].resource_specific_results[0].eval_resource_name #=> String
    #   resp.data.evaluation_results[0].resource_specific_results[0].eval_resource_decision #=> String, one of ["allowed", "explicitDeny", "implicitDeny"]
    #   resp.data.evaluation_results[0].resource_specific_results[0].matched_statements #=> Array<Statement>
    #   resp.data.evaluation_results[0].resource_specific_results[0].missing_context_values #=> Array<String>
    #   resp.data.evaluation_results[0].resource_specific_results[0].eval_decision_details #=> Hash<String, String>
    #   resp.data.evaluation_results[0].resource_specific_results[0].permissions_boundary_decision_detail #=> Types::PermissionsBoundaryDecisionDetail
    #   resp.data.is_truncated #=> Boolean
    #   resp.data.marker #=> String
    #
    def simulate_principal_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::SimulatePrincipalPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::SimulatePrincipalPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::SimulatePrincipalPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::PolicyEvaluationException]),
        data_parser: Parsers::SimulatePrincipalPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::SimulatePrincipalPolicy,
        stubs: @stubs,
        params_class: Params::SimulatePrincipalPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :simulate_principal_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to an IAM instance profile. If a tag with the same key name
    #       already exists, then that tag is overwritten with the new value.</p>
    #          <p>Each tag consists of a key name and an associated value. By assigning tags to your resources, you can do the
    #       following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Administrative grouping and discovery</b> - Attach
    #           tags to resources to aid in organization and search. For example, you could search for all
    #           resources with the key name <i>Project</i> and the value
    #             <i>MyImportantProject</i>. Or search for all resources with the key name
    #             <i>Cost Center</i> and the value <i>41200</i>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Access control</b> - Include tags in IAM user-based
    #           and resource-based policies. You can use tags to restrict access to only an IAM instance
    #           profile that has a specified tag attached. For examples of policies that show how to use
    #           tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Control access using IAM tags</a> in the
    #             <i>IAM User Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request
    #    fails and the resource is not created. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>Amazon Web Services always interprets the tag <code>Value</code> as a single string. If you
    #             need to store an array, you can store comma-separated values in the string. However, you
    #             must interpret the value in your code.</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::TagInstanceProfileInput}.
    #
    # @option params [String] :instance_profile_name
    #   <p>The name of the IAM instance profile to which you want to add tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The list of tags that you want to attach to the IAM instance profile.
    #         Each tag consists of a key name and an associated value.</p>
    #
    # @return [Types::TagInstanceProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_instance_profile(
    #     instance_profile_name: 'InstanceProfileName', # required
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
    #   resp.data #=> Types::TagInstanceProfileOutput
    #
    def tag_instance_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagInstanceProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagInstanceProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagInstanceProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::TagInstanceProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagInstanceProfile,
        stubs: @stubs,
        params_class: Params::TagInstanceProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_instance_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to an IAM virtual multi-factor authentication (MFA) device. If
    #       a tag with the same key name already exists, then that tag is overwritten with the new
    #       value.</p>
    #          <p>A tag consists of a key name and an associated value. By assigning tags to your
    #       resources, you can do the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Administrative grouping and discovery</b> - Attach
    #           tags to resources to aid in organization and search. For example, you could search for all
    #           resources with the key name <i>Project</i> and the value
    #             <i>MyImportantProject</i>. Or search for all resources with the key name
    #             <i>Cost Center</i> and the value <i>41200</i>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Access control</b> - Include tags in IAM user-based
    #           and resource-based policies. You can use tags to restrict access to only an IAM virtual
    #           MFA device that has a specified tag attached. For examples of policies that show how to
    #           use tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Control access using IAM tags</a> in the
    #             <i>IAM User Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request
    #    fails and the resource is not created. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>Amazon Web Services always interprets the tag <code>Value</code> as a single string. If you
    #             need to store an array, you can store comma-separated values in the string. However, you
    #             must interpret the value in your code.</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::TagMFADeviceInput}.
    #
    # @option params [String] :serial_number
    #   <p>The unique identifier for the IAM virtual MFA device to which you want to add tags.
    #         For virtual MFA devices, the serial number is the same as the ARN.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The list of tags that you want to attach to the IAM virtual MFA device.
    #         Each tag consists of a key name and an associated value.</p>
    #
    # @return [Types::TagMFADeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_mfa_device(
    #     serial_number: 'SerialNumber', # required
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
    #   resp.data #=> Types::TagMFADeviceOutput
    #
    def tag_mfa_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagMFADeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagMFADeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagMFADevice
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::TagMFADevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagMFADevice,
        stubs: @stubs,
        params_class: Params::TagMFADeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_mfa_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to an OpenID Connect (OIDC)-compatible identity provider. For
    #       more information about these providers, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html">About web identity federation</a>. If
    #       a tag with the same key name already exists, then that tag is overwritten with the new
    #       value.</p>
    #          <p>A tag consists of a key name and an associated value. By assigning tags to your
    #       resources, you can do the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Administrative grouping and discovery</b> - Attach
    #           tags to resources to aid in organization and search. For example, you could search for all
    #           resources with the key name <i>Project</i> and the value
    #             <i>MyImportantProject</i>. Or search for all resources with the key name
    #             <i>Cost Center</i> and the value <i>41200</i>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Access control</b> - Include tags in IAM user-based
    #           and resource-based policies. You can use tags to restrict access to only an OIDC provider
    #           that has a specified tag attached. For examples of policies that show how to use tags to
    #           control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Control access using IAM tags</a> in the
    #           <i>IAM User Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request
    #    fails and the resource is not created. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>Amazon Web Services always interprets the tag <code>Value</code> as a single string. If you
    #             need to store an array, you can store comma-separated values in the string. However, you
    #             must interpret the value in your code.</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::TagOpenIDConnectProviderInput}.
    #
    # @option params [String] :open_id_connect_provider_arn
    #   <p>The ARN of the OIDC identity provider in IAM to which you want to add tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The list of tags that you want to attach to the OIDC identity provider in IAM.
    #         Each tag consists of a key name and an associated value.</p>
    #
    # @return [Types::TagOpenIDConnectProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_open_id_connect_provider(
    #     open_id_connect_provider_arn: 'OpenIDConnectProviderArn', # required
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
    #   resp.data #=> Types::TagOpenIDConnectProviderOutput
    #
    def tag_open_id_connect_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagOpenIDConnectProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagOpenIDConnectProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagOpenIDConnectProvider
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::TagOpenIDConnectProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagOpenIDConnectProvider,
        stubs: @stubs,
        params_class: Params::TagOpenIDConnectProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_open_id_connect_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to an IAM customer managed policy. If a tag with the same key
    #       name already exists, then that tag is overwritten with the new value.</p>
    #          <p>A tag consists of a key name and an associated value. By assigning tags to your
    #       resources, you can do the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Administrative grouping and discovery</b> - Attach
    #           tags to resources to aid in organization and search. For example, you could search for all
    #           resources with the key name <i>Project</i> and the value
    #             <i>MyImportantProject</i>. Or search for all resources with the key name
    #             <i>Cost Center</i> and the value <i>41200</i>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Access control</b> - Include tags in IAM user-based
    #           and resource-based policies. You can use tags to restrict access to only an IAM customer
    #           managed policy that has a specified tag attached. For examples of policies that show how
    #           to use tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Control access using IAM tags</a> in the
    #             <i>IAM User Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request
    #    fails and the resource is not created. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>Amazon Web Services always interprets the tag <code>Value</code> as a single string. If you
    #             need to store an array, you can store comma-separated values in the string. However, you
    #             must interpret the value in your code.</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::TagPolicyInput}.
    #
    # @option params [String] :policy_arn
    #   <p>The ARN of the IAM customer managed policy to which you want to add tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The list of tags that you want to attach to the IAM customer managed policy.
    #         Each tag consists of a key name and an associated value.</p>
    #
    # @return [Types::TagPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_policy(
    #     policy_arn: 'PolicyArn', # required
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
    #   resp.data #=> Types::TagPolicyOutput
    #
    def tag_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::TagPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagPolicy,
        stubs: @stubs,
        params_class: Params::TagPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to an IAM role. The role can be a regular role or a
    #       service-linked role. If a tag with the same key name already exists, then that tag is
    #       overwritten with the new value.</p>
    #          <p>A tag consists of a key name and an associated value. By assigning tags to your
    #       resources, you can do the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Administrative grouping and discovery</b> - Attach
    #           tags to resources to aid in organization and search. For example, you could search for all
    #           resources with the key name <i>Project</i> and the value
    #             <i>MyImportantProject</i>. Or search for all resources with the key name
    #             <i>Cost Center</i> and the value <i>41200</i>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Access control</b> - Include tags in IAM user-based
    #           and resource-based policies. You can use tags to restrict access to only an IAM role
    #           that has a specified tag attached. You can also restrict access to only those resources
    #           that have a certain tag attached. For examples of policies that show how to use tags to
    #           control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Control access using IAM tags</a> in the
    #           <i>IAM User Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Cost allocation</b> - Use tags to help track which
    #           individuals and teams are using which Amazon Web Services resources.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request
    #    fails and the resource is not created. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>Amazon Web Services always interprets the tag <code>Value</code> as a single string. If you
    #             need to store an array, you can store comma-separated values in the string. However, you
    #             must interpret the value in your code.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM identities</a> in the
    #         <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagRoleInput}.
    #
    # @option params [String] :role_name
    #   <p>The name of the IAM role to which you want to add tags.</p>
    #            <p>This parameter accepts (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that consist of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The list of tags that you want to attach to the IAM role. Each tag consists of a key name and an associated value.</p>
    #
    # @return [Types::TagRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_role(
    #     role_name: 'RoleName', # required
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
    #   resp.data #=> Types::TagRoleOutput
    #
    def tag_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagRoleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagRoleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagRole
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::TagRole
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagRole,
        stubs: @stubs,
        params_class: Params::TagRoleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_role
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to a Security Assertion Markup Language (SAML) identity provider.
    #       For more information about these providers, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html">About SAML 2.0-based federation </a>.
    #       If a tag with the same key name already exists, then that tag is overwritten with the new
    #       value.</p>
    #          <p>A tag consists of a key name and an associated value. By assigning tags to your
    #       resources, you can do the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Administrative grouping and discovery</b> - Attach
    #           tags to resources to aid in organization and search. For example, you could search for all
    #           resources with the key name <i>Project</i> and the value
    #             <i>MyImportantProject</i>. Or search for all resources with the key name
    #             <i>Cost Center</i> and the value <i>41200</i>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Access control</b> - Include tags in IAM user-based
    #           and resource-based policies. You can use tags to restrict access to only a SAML identity
    #           provider that has a specified tag attached. For examples of policies that show how to use
    #           tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Control access using IAM tags</a> in the
    #             <i>IAM User Guide</i>.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request
    #    fails and the resource is not created. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>Amazon Web Services always interprets the tag <code>Value</code> as a single string. If you
    #             need to store an array, you can store comma-separated values in the string. However, you
    #             must interpret the value in your code.</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::TagSAMLProviderInput}.
    #
    # @option params [String] :saml_provider_arn
    #   <p>The ARN of the SAML identity provider in IAM to which you want to add tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The list of tags that you want to attach to the SAML identity provider in IAM.
    #         Each tag consists of a key name and an associated value.</p>
    #
    # @return [Types::TagSAMLProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_saml_provider(
    #     saml_provider_arn: 'SAMLProviderArn', # required
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
    #   resp.data #=> Types::TagSAMLProviderOutput
    #
    def tag_saml_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagSAMLProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagSAMLProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagSAMLProvider
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::TagSAMLProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagSAMLProvider,
        stubs: @stubs,
        params_class: Params::TagSAMLProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_saml_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to an IAM server certificate. If a tag with the same key name
    #       already exists, then that tag is overwritten with the new value.</p>
    #          <note>
    #             <p>For certificates in a Region supported by Certificate Manager (ACM), we
    #         recommend that you don't use IAM server certificates. Instead, use ACM to provision,
    #         manage, and deploy your server certificates. For more information about IAM server
    #         certificates, <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with server
    #           certificates</a> in the <i>IAM User Guide</i>.</p>
    #          </note>
    #          <p>A tag consists of a key name and an associated value. By assigning tags to your
    #       resources, you can do the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Administrative grouping and discovery</b> - Attach
    #           tags to resources to aid in organization and search. For example, you could search for all
    #           resources with the key name <i>Project</i> and the value
    #             <i>MyImportantProject</i>. Or search for all resources with the key name
    #             <i>Cost Center</i> and the value <i>41200</i>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Access control</b> - Include tags in IAM user-based
    #           and resource-based policies. You can use tags to restrict access to only a server
    #           certificate that has a specified tag attached. For examples of policies that show how to
    #           use tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Control access using IAM tags</a> in the
    #             <i>IAM User Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Cost allocation</b> - Use tags to help track which
    #           individuals and teams are using which Amazon Web Services resources.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request
    #    fails and the resource is not created. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>Amazon Web Services always interprets the tag <code>Value</code> as a single string. If you
    #             need to store an array, you can store comma-separated values in the string. However, you
    #             must interpret the value in your code.</p>
    #                </li>
    #             </ul>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::TagServerCertificateInput}.
    #
    # @option params [String] :server_certificate_name
    #   <p>The name of the IAM server certificate to which you want to add tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The list of tags that you want to attach to the IAM server certificate.
    #         Each tag consists of a key name and an associated value.</p>
    #
    # @return [Types::TagServerCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_server_certificate(
    #     server_certificate_name: 'ServerCertificateName', # required
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
    #   resp.data #=> Types::TagServerCertificateOutput
    #
    def tag_server_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagServerCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagServerCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagServerCertificate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::TagServerCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagServerCertificate,
        stubs: @stubs,
        params_class: Params::TagServerCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_server_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more tags to an IAM user. If a tag with the same key name already exists,
    #       then that tag is overwritten with the new value.</p>
    #          <p>A tag consists of a key name and an associated value. By assigning tags to your
    #       resources, you can do the following:</p>
    #          <ul>
    #             <li>
    #                <p>
    #                   <b>Administrative grouping and discovery</b> - Attach
    #           tags to resources to aid in organization and search. For example, you could search for all
    #           resources with the key name <i>Project</i> and the value
    #             <i>MyImportantProject</i>. Or search for all resources with the key name
    #             <i>Cost Center</i> and the value <i>41200</i>. </p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Access control</b> - Include tags in IAM user-based
    #           and resource-based policies. You can use tags to restrict access to only an IAM
    #           requesting user that has a specified tag attached. You can also restrict access to only
    #           those resources that have a certain tag attached. For examples of policies that show how
    #           to use tags to control access, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Control access using IAM tags</a> in the
    #             <i>IAM User Guide</i>.</p>
    #             </li>
    #             <li>
    #                <p>
    #                   <b>Cost allocation</b> - Use tags to help track which
    #           individuals and teams are using which Amazon Web Services resources.</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <ul>
    #                <li>
    #                   <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request
    #    fails and the resource is not created. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #                </li>
    #                <li>
    #                   <p>Amazon Web Services always interprets the tag <code>Value</code> as a single string. If you
    #             need to store an array, you can store comma-separated values in the string. However, you
    #             must interpret the value in your code.</p>
    #                </li>
    #             </ul>
    #          </note>
    #          <p>For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM identities</a> in the
    #         <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagUserInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the IAM user to which you want to add tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The list of tags that you want to attach to the IAM user. Each tag consists of a key name and an associated value.</p>
    #
    # @return [Types::TagUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_user(
    #     user_name: 'UserName', # required
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
    #   resp.data #=> Types::TagUserOutput
    #
    def tag_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::TagUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagUser,
        stubs: @stubs,
        params_class: Params::TagUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified tags from the IAM instance profile. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagInstanceProfileInput}.
    #
    # @option params [String] :instance_profile_name
    #   <p>The name of the IAM instance profile from which you want to remove tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified instance profile.</p>
    #
    # @return [Types::UntagInstanceProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_instance_profile(
    #     instance_profile_name: 'InstanceProfileName', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagInstanceProfileOutput
    #
    def untag_instance_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagInstanceProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagInstanceProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagInstanceProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::UntagInstanceProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagInstanceProfile,
        stubs: @stubs,
        params_class: Params::UntagInstanceProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_instance_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified tags from the IAM virtual multi-factor authentication (MFA)
    #       device. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagMFADeviceInput}.
    #
    # @option params [String] :serial_number
    #   <p>The unique identifier for the IAM virtual MFA device from which you want to remove
    #         tags. For virtual MFA devices, the serial number is the same as the ARN.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified instance profile.</p>
    #
    # @return [Types::UntagMFADeviceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_mfa_device(
    #     serial_number: 'SerialNumber', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagMFADeviceOutput
    #
    def untag_mfa_device(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagMFADeviceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagMFADeviceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagMFADevice
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::UntagMFADevice
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagMFADevice,
        stubs: @stubs,
        params_class: Params::UntagMFADeviceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_mfa_device
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified tags from the specified OpenID Connect (OIDC)-compatible identity
    #       provider in IAM. For more information about OIDC providers, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html">About web identity federation</a>.
    #       For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagOpenIDConnectProviderInput}.
    #
    # @option params [String] :open_id_connect_provider_arn
    #   <p>The ARN of the OIDC provider in IAM from which you want to remove tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified OIDC provider.</p>
    #
    # @return [Types::UntagOpenIDConnectProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_open_id_connect_provider(
    #     open_id_connect_provider_arn: 'OpenIDConnectProviderArn', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagOpenIDConnectProviderOutput
    #
    def untag_open_id_connect_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagOpenIDConnectProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagOpenIDConnectProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagOpenIDConnectProvider
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::UntagOpenIDConnectProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagOpenIDConnectProvider,
        stubs: @stubs,
        params_class: Params::UntagOpenIDConnectProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_open_id_connect_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified tags from the customer managed policy. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagPolicyInput}.
    #
    # @option params [String] :policy_arn
    #   <p>The ARN of the IAM customer managed policy from which you want to remove
    #         tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified policy.</p>
    #
    # @return [Types::UntagPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_policy(
    #     policy_arn: 'PolicyArn', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagPolicyOutput
    #
    def untag_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::UntagPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagPolicy,
        stubs: @stubs,
        params_class: Params::UntagPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified tags from the role. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagRoleInput}.
    #
    # @option params [String] :role_name
    #   <p>The name of the IAM role from which you want to remove tags.</p>
    #            <p>This parameter accepts (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that consist of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified role.</p>
    #
    # @return [Types::UntagRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_role(
    #     role_name: 'RoleName', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagRoleOutput
    #
    def untag_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagRoleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagRoleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagRole
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::UntagRole
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagRole,
        stubs: @stubs,
        params_class: Params::UntagRoleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_role
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified tags from the specified Security Assertion Markup Language (SAML)
    #       identity provider in IAM. For more information about these providers, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_oidc.html">About web identity
    #         federation</a>. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagSAMLProviderInput}.
    #
    # @option params [String] :saml_provider_arn
    #   <p>The ARN of the SAML identity provider in IAM from which you want to remove
    #         tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified SAML identity provider.</p>
    #
    # @return [Types::UntagSAMLProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_saml_provider(
    #     saml_provider_arn: 'SAMLProviderArn', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagSAMLProviderOutput
    #
    def untag_saml_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagSAMLProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagSAMLProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagSAMLProvider
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::UntagSAMLProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagSAMLProvider,
        stubs: @stubs,
        params_class: Params::UntagSAMLProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_saml_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified tags from the IAM server certificate.
    #       For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #          <note>
    #             <p>For certificates in a Region supported by Certificate Manager (ACM), we
    #         recommend that you don't use IAM server certificates. Instead, use ACM to provision,
    #         manage, and deploy your server certificates. For more information about IAM server
    #         certificates, <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working with server
    #           certificates</a> in the <i>IAM User Guide</i>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UntagServerCertificateInput}.
    #
    # @option params [String] :server_certificate_name
    #   <p>The name of the IAM server certificate from which you want to remove tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified IAM server certificate.</p>
    #
    # @return [Types::UntagServerCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_server_certificate(
    #     server_certificate_name: 'ServerCertificateName', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagServerCertificateOutput
    #
    def untag_server_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagServerCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagServerCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagServerCertificate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::UntagServerCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagServerCertificate,
        stubs: @stubs,
        params_class: Params::UntagServerCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_server_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the specified tags from the user. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #       <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagUserInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the IAM user from which you want to remove tags.</p>
    #            <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>A list of key names as a simple array of strings. The tags with matching keys are
    #         removed from the specified user.</p>
    #
    # @return [Types::UntagUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_user(
    #     user_name: 'UserName', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagUserOutput
    #
    def untag_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::UntagUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagUser,
        stubs: @stubs,
        params_class: Params::UntagUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the status of the specified access key from Active to Inactive, or vice versa.
    #             This operation can be used to disable a user's key as part of a key rotation
    #             workflow.</p>
    #         <p>If the <code>UserName</code> is not specified, the user name is determined implicitly
    #             based on the Amazon Web Services access key ID used to sign the request. This operation works for
    #             access keys under the Amazon Web Services account. Consequently, you can use this operation to manage
    #             Amazon Web Services account root user credentials even if the Amazon Web Services account has no associated
    #             users.</p>
    #         <p>For information about rotating keys, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/ManagingCredentials.html">Managing keys and certificates</a>
    #             in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAccessKeyInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user whose key you want to update.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :access_key_id
    #   <p>The access key ID of the secret access key you want to update.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can
    #       consist of any upper or lowercased letter or digit.</p>
    #
    # @option params [String] :status
    #   <p> The status you want to assign to the secret access key. <code>Active</code> means
    #               that the key can be used for programmatic calls to Amazon Web Services, while <code>Inactive</code>
    #               means that the key cannot be used.</p>
    #
    # @return [Types::UpdateAccessKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_access_key(
    #     user_name: 'UserName',
    #     access_key_id: 'AccessKeyId', # required
    #     status: 'Active' # required - accepts ["Active", "Inactive"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAccessKeyOutput
    #
    def update_access_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAccessKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAccessKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAccessKey
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::UpdateAccessKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAccessKey,
        stubs: @stubs,
        params_class: Params::UpdateAccessKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_access_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the password policy settings for the Amazon Web Services account.</p>
    #         <note>
    #             <p>This operation does not support partial updates. No parameters are required, but
    #                 if you do not specify a parameter, that parameter's value reverts to its default
    #                 value. See the <b>Request Parameters</b> section for each
    #                 parameter's default value. Also note that some parameters do not allow the default
    #                 parameter to be explicitly set. Instead, to invoke the default value, do not include
    #                 that parameter when you invoke the operation.</p>
    #         </note>
    #         <p> For more information about using a password policy, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingPasswordPolicies.html">Managing an IAM password
    #                 policy</a> in the <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAccountPasswordPolicyInput}.
    #
    # @option params [Integer] :minimum_password_length
    #   <p>The minimum number of characters allowed in an IAM user password.</p>
    #           <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>6</code>.</p>
    #
    # @option params [Boolean] :require_symbols
    #   <p>Specifies whether IAM user passwords must contain at least one of the following
    #               non-alphanumeric characters:</p>
    #           <p>! @ # $ % ^ & * ( ) _ + - = [ ] { } | '</p>
    #           <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>false</code>. The result is that passwords do not require at least one
    #               symbol character.</p>
    #
    # @option params [Boolean] :require_numbers
    #   <p>Specifies whether IAM user passwords must contain at least one numeric character (0
    #               to 9).</p>
    #           <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>false</code>. The result is that passwords do not require at least one
    #               numeric character.</p>
    #
    # @option params [Boolean] :require_uppercase_characters
    #   <p>Specifies whether IAM user passwords must contain at least one uppercase character
    #               from the ISO basic Latin alphabet (A to Z).</p>
    #           <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>false</code>. The result is that passwords do not require at least one
    #               uppercase character.</p>
    #
    # @option params [Boolean] :require_lowercase_characters
    #   <p>Specifies whether IAM user passwords must contain at least one lowercase character
    #               from the ISO basic Latin alphabet (a to z).</p>
    #           <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>false</code>. The result is that passwords do not require at least one
    #               lowercase character.</p>
    #
    # @option params [Boolean] :allow_users_to_change_password
    #   <p> Allows all IAM users in your account to use the Amazon Web Services Management Console to change their own
    #               passwords. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_passwords_enable-user-change.html">Permitting
    #                   IAM users to change their own passwords</a> in the
    #                   <i>IAM User Guide</i>.</p>
    #           <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>false</code>. The result is that IAM users in the account do not
    #               automatically have permissions to change their own password.</p>
    #
    # @option params [Integer] :max_password_age
    #   <p>The number of days that an IAM user password is valid.</p>
    #           <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>0</code>. The result is that IAM user passwords never expire.</p>
    #
    # @option params [Integer] :password_reuse_prevention
    #   <p>Specifies the number of previous passwords that IAM users are prevented from
    #               reusing.</p>
    #           <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>0</code>. The result is that IAM users are not prevented from reusing
    #               previous passwords.</p>
    #
    # @option params [Boolean] :hard_expiry
    #   <p> Prevents IAM users who are accessing the account via the Amazon Web Services Management Console from setting a
    #               new console password after their password has expired. The IAM user cannot access the
    #               console until an administrator resets the password.</p>
    #           <p>If you do not specify a value for this parameter, then the operation uses the default
    #               value of <code>false</code>. The result is that IAM users can change their passwords
    #               after they expire and continue to sign in as the user.</p>
    #           <note>
    #               <p> In the Amazon Web Services Management Console, the custom password policy option <b>Allow
    #                       users to change their own password</b> gives IAM users permissions to
    #                       <code>iam:ChangePassword</code> for only their user and to the
    #                       <code>iam:GetAccountPasswordPolicy</code> action. This option does not attach a
    #                   permissions policy to each user, rather the permissions are applied at the
    #                   account-level for all users by IAM. IAM users with
    #                       <code>iam:ChangePassword</code> permission and active access keys can reset
    #                   their own expired console password using the CLI or API.</p>
    #           </note>
    #
    # @return [Types::UpdateAccountPasswordPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_account_password_policy(
    #     minimum_password_length: 1,
    #     require_symbols: false,
    #     require_numbers: false,
    #     require_uppercase_characters: false,
    #     require_lowercase_characters: false,
    #     allow_users_to_change_password: false,
    #     max_password_age: 1,
    #     password_reuse_prevention: 1,
    #     hard_expiry: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAccountPasswordPolicyOutput
    #
    def update_account_password_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAccountPasswordPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAccountPasswordPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAccountPasswordPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::MalformedPolicyDocumentException, Errors::ServiceFailureException]),
        data_parser: Parsers::UpdateAccountPasswordPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAccountPasswordPolicy,
        stubs: @stubs,
        params_class: Params::UpdateAccountPasswordPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_account_password_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the policy that grants an IAM entity permission to assume a role. This is
    #             typically referred to as the "role trust policy". For more information about roles, see
    #                 <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-toplevel.html">Using roles to
    #                 delegate permissions and federate identities</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateAssumeRolePolicyInput}.
    #
    # @option params [String] :role_name
    #   <p>The name of the role to update with the new policy.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :policy_document
    #   <p>The policy that grants an entity permission to assume the role.</p>
    #           <p>You must provide policies in JSON format in IAM. However, for CloudFormation
    #               templates formatted in YAML, you can provide the policy in JSON or YAML format. CloudFormation always converts a YAML policy to JSON format before submitting it to
    #               IAM.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UpdateAssumeRolePolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_assume_role_policy(
    #     role_name: 'RoleName', # required
    #     policy_document: 'PolicyDocument' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateAssumeRolePolicyOutput
    #
    def update_assume_role_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateAssumeRolePolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateAssumeRolePolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateAssumeRolePolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnmodifiableEntityException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::MalformedPolicyDocumentException, Errors::ServiceFailureException]),
        data_parser: Parsers::UpdateAssumeRolePolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateAssumeRolePolicy,
        stubs: @stubs,
        params_class: Params::UpdateAssumeRolePolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_assume_role_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the name and/or the path of the specified IAM group.</p>
    #         <important>
    #             <p> You should understand the implications of changing a group's path or name. For
    #                 more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_WorkingWithGroupsAndUsers.html">Renaming users and
    #                     groups</a> in the <i>IAM User Guide</i>.</p>
    #         </important>
    #         <note>
    #             <p>The person making the request (the principal), must have permission to change the
    #                 role group with the old name and the new name. For example, to change the group
    #                 named <code>Managers</code> to <code>MGRs</code>, the principal must have a policy
    #                 that allows them to update both groups. If the principal has permission to update
    #                 the <code>Managers</code> group, but not the <code>MGRs</code> group, then the
    #                 update fails. For more information about permissions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access management</a>.
    #             </p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateGroupInput}.
    #
    # @option params [String] :group_name
    #   <p>Name of the IAM group to update. If you're changing the name of the group, this is
    #               the original name.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :new_path
    #   <p>New path for the IAM group. Only include this if changing the group's path.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #
    # @option params [String] :new_group_name
    #   <p>New name for the IAM group. Only include this if changing the group's name.</p>
    #           <p>IAM user, group, role, and policy names must be unique within the account. Names are
    #               not distinguished by case. For example, you cannot create resources named both
    #               "MyResource" and "myresource".</p>
    #
    # @return [Types::UpdateGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_group(
    #     group_name: 'GroupName', # required
    #     new_path: 'NewPath',
    #     new_group_name: 'NewGroupName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateGroupOutput
    #
    def update_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityAlreadyExistsException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::UpdateGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateGroup,
        stubs: @stubs,
        params_class: Params::UpdateGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the password for the specified IAM user. You can use the CLI,
    #             the Amazon Web Services API, or the <b>Users</b> page in the IAM console
    #             to change the password for any IAM user. Use <a>ChangePassword</a> to
    #             change your own password in the <b>My Security Credentials</b>
    #             page in the Amazon Web Services Management Console.</p>
    #         <p>For more information about modifying passwords, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_ManagingLogins.html">Managing passwords</a> in the
    #                 <i>IAM User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateLoginProfileInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user whose password you want to update.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :password
    #   <p>The new password for the specified IAM user.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #           <p>However, the format can be further restricted by the account administrator by setting
    #               a password policy on the Amazon Web Services account. For more information, see <a>UpdateAccountPasswordPolicy</a>.</p>
    #
    # @option params [Boolean] :password_reset_required
    #   <p>Allows this new password to be used only once by requiring the specified IAM user to
    #               set a new password on next sign-in.</p>
    #
    # @return [Types::UpdateLoginProfileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_login_profile(
    #     user_name: 'UserName', # required
    #     password: 'Password',
    #     password_reset_required: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateLoginProfileOutput
    #
    def update_login_profile(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateLoginProfileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateLoginProfileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateLoginProfile
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityTemporarilyUnmodifiableException, Errors::PasswordPolicyViolationException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::UpdateLoginProfile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateLoginProfile,
        stubs: @stubs,
        params_class: Params::UpdateLoginProfileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_login_profile
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Replaces the existing list of server certificate thumbprints associated with an OpenID
    #             Connect (OIDC) provider resource object with a new list of thumbprints.</p>
    #         <p>The list that you pass with this operation completely replaces the existing list of
    #             thumbprints. (The lists are not merged.)</p>
    #         <p>Typically, you need to update a thumbprint only when the identity provider certificate
    #             changes, which occurs rarely. However, if the provider's certificate
    #                 <i>does</i> change, any attempt to assume an IAM role that specifies
    #             the OIDC provider as a principal fails until the certificate thumbprint is
    #             updated.</p>
    #         <note>
    #             <p>Amazon Web Services secures communication with some OIDC identity providers (IdPs) through our
    #             library of trusted certificate authorities (CAs) instead of using a certificate
    #             thumbprint to verify your IdP server certificate. These OIDC IdPs include Google, and
    #             those that use an Amazon S3 bucket to host a JSON Web Key Set (JWKS) endpoint. In these
    #             cases, your legacy thumbprint remains in your configuration, but is no longer used for validation.</p>
    #          </note>
    #         <note>
    #             <p>Trust for the OIDC provider is derived from the provider certificate and is
    #                 validated by the thumbprint. Therefore, it is best to limit access to the
    #                     <code>UpdateOpenIDConnectProviderThumbprint</code> operation to highly
    #                 privileged users.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateOpenIDConnectProviderThumbprintInput}.
    #
    # @option params [String] :open_id_connect_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM OIDC provider resource object for which
    #               you want to update the thumbprint. You can get a list of OIDC provider ARNs by using the
    #                   <a>ListOpenIDConnectProviders</a> operation.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [Array<String>] :thumbprint_list
    #   <p>A list of certificate thumbprints that are associated with the specified IAM OpenID
    #               Connect provider. For more information, see <a>CreateOpenIDConnectProvider</a>. </p>
    #
    # @return [Types::UpdateOpenIDConnectProviderThumbprintOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_open_id_connect_provider_thumbprint(
    #     open_id_connect_provider_arn: 'OpenIDConnectProviderArn', # required
    #     thumbprint_list: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateOpenIDConnectProviderThumbprintOutput
    #
    def update_open_id_connect_provider_thumbprint(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateOpenIDConnectProviderThumbprintInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateOpenIDConnectProviderThumbprintInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateOpenIDConnectProviderThumbprint
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::UpdateOpenIDConnectProviderThumbprint
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateOpenIDConnectProviderThumbprint,
        stubs: @stubs,
        params_class: Params::UpdateOpenIDConnectProviderThumbprintOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_open_id_connect_provider_thumbprint
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the description or maximum session duration setting of a role.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRoleInput}.
    #
    # @option params [String] :role_name
    #   <p>The name of the role that you want to modify.</p>
    #
    # @option params [String] :description
    #   <p>The new description that you want to apply to the specified role.</p>
    #
    # @option params [Integer] :max_session_duration
    #   <p>The maximum session duration (in seconds) that you want to set for the specified role.
    #               If you do not specify a value for this setting, the default value of one hour is
    #               applied. This setting can have a value from 1 hour to 12 hours.</p>
    #           <p>Anyone who assumes the role from the CLI or API can use the
    #                   <code>DurationSeconds</code> API parameter or the <code>duration-seconds</code> CLI
    #               parameter to request a longer session. The <code>MaxSessionDuration</code> setting
    #               determines the maximum duration that can be requested using the
    #                   <code>DurationSeconds</code> parameter. If users don't specify a value for the
    #                   <code>DurationSeconds</code> parameter, their security credentials are valid for one
    #               hour by default. This applies when you use the <code>AssumeRole*</code> API operations
    #               or the <code>assume-role*</code> CLI operations but does not apply when you use those
    #               operations to create a console URL. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html">Using IAM
    #                   roles</a> in the <i>IAM User Guide</i>.</p>
    #
    # @return [Types::UpdateRoleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_role(
    #     role_name: 'RoleName', # required
    #     description: 'Description',
    #     max_session_duration: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRoleOutput
    #
    def update_role(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRoleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRoleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRole
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnmodifiableEntityException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::UpdateRole
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRole,
        stubs: @stubs,
        params_class: Params::UpdateRoleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_role
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Use <a>UpdateRole</a> instead.</p>
    #         <p>Modifies only the description of a role. This operation performs the same function as
    #             the <code>Description</code> parameter in the <code>UpdateRole</code> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRoleDescriptionInput}.
    #
    # @option params [String] :role_name
    #   <p>The name of the role that you want to modify.</p>
    #
    # @option params [String] :description
    #   <p>The new description that you want to apply to the specified role.</p>
    #
    # @return [Types::UpdateRoleDescriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_role_description(
    #     role_name: 'RoleName', # required
    #     description: 'Description' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRoleDescriptionOutput
    #   resp.data.role #=> Types::Role
    #   resp.data.role.path #=> String
    #   resp.data.role.role_name #=> String
    #   resp.data.role.role_id #=> String
    #   resp.data.role.arn #=> String
    #   resp.data.role.create_date #=> Time
    #   resp.data.role.assume_role_policy_document #=> String
    #   resp.data.role.description #=> String
    #   resp.data.role.max_session_duration #=> Integer
    #   resp.data.role.permissions_boundary #=> Types::AttachedPermissionsBoundary
    #   resp.data.role.permissions_boundary.permissions_boundary_type #=> String, one of ["PermissionsBoundaryPolicy"]
    #   resp.data.role.permissions_boundary.permissions_boundary_arn #=> String
    #   resp.data.role.tags #=> Array<Tag>
    #   resp.data.role.tags[0] #=> Types::Tag
    #   resp.data.role.tags[0].key #=> String
    #   resp.data.role.tags[0].value #=> String
    #   resp.data.role.role_last_used #=> Types::RoleLastUsed
    #   resp.data.role.role_last_used.last_used_date #=> Time
    #   resp.data.role.role_last_used.region #=> String
    #
    def update_role_description(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRoleDescriptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRoleDescriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRoleDescription
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnmodifiableEntityException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::UpdateRoleDescription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRoleDescription,
        stubs: @stubs,
        params_class: Params::UpdateRoleDescriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_role_description
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the metadata document for an existing SAML provider resource object.</p>
    #         <note>
    #             <p>This operation requires <a href="https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateSAMLProviderInput}.
    #
    # @option params [String] :saml_metadata_document
    #   <p>An XML document generated by an identity provider (IdP) that supports SAML 2.0. The
    #               document includes the issuer's name, expiration information, and keys that can be used
    #               to validate the SAML authentication response (assertions) that are received from the
    #               IdP. You must generate the metadata document using the identity management software that
    #               is used as your organization's IdP.</p>
    #
    # @option params [String] :saml_provider_arn
    #   <p>The Amazon Resource Name (ARN) of the SAML provider to update.</p>
    #           <p>For more information about ARNs, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @return [Types::UpdateSAMLProviderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_saml_provider(
    #     saml_metadata_document: 'SAMLMetadataDocument', # required
    #     saml_provider_arn: 'SAMLProviderArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSAMLProviderOutput
    #   resp.data.saml_provider_arn #=> String
    #
    def update_saml_provider(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSAMLProviderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSAMLProviderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSAMLProvider
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::UpdateSAMLProvider
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSAMLProvider,
        stubs: @stubs,
        params_class: Params::UpdateSAMLProviderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_saml_provider
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the status of an IAM user's SSH public key to active or inactive. SSH public
    #             keys that are inactive cannot be used for authentication. This operation can be used to
    #             disable a user's SSH public key as part of a key rotation work flow.</p>
    #         <p>The SSH public key affected by this operation is used only for authenticating the
    #             associated IAM user to an CodeCommit repository. For more information about using SSH keys
    #             to authenticate to an CodeCommit repository, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up CodeCommit for
    #                 SSH connections</a> in the <i>CodeCommit User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSSHPublicKeyInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the IAM user associated with the SSH public key.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :ssh_public_key_id
    #   <p>The unique identifier for the SSH public key.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can
    #       consist of any upper or lowercased letter or digit.</p>
    #
    # @option params [String] :status
    #   <p>The status to assign to the SSH public key. <code>Active</code> means that the key can
    #               be used for authentication with an CodeCommit repository. <code>Inactive</code> means that
    #               the key cannot be used.</p>
    #
    # @return [Types::UpdateSSHPublicKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_ssh_public_key(
    #     user_name: 'UserName', # required
    #     ssh_public_key_id: 'SSHPublicKeyId', # required
    #     status: 'Active' # required - accepts ["Active", "Inactive"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSSHPublicKeyOutput
    #
    def update_ssh_public_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSSHPublicKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSSHPublicKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSSHPublicKey
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException]),
        data_parser: Parsers::UpdateSSHPublicKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSSHPublicKey,
        stubs: @stubs,
        params_class: Params::UpdateSSHPublicKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_ssh_public_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the name and/or the path of the specified server certificate stored in
    #             IAM.</p>
    #         <p>For more information about working with server certificates, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working
    #                 with server certificates</a> in the <i>IAM User Guide</i>. This
    #             topic also includes a list of Amazon Web Services services that can use the server certificates that
    #             you manage with IAM.</p>
    #         <important>
    #             <p>You should understand the implications of changing a server certificate's path or
    #                 name. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs_manage.html#RenamingServerCerts">Renaming a server certificate</a> in the
    #                     <i>IAM User Guide</i>.</p>
    #         </important>
    #         <note>
    #             <p>The person making the request (the principal), must have permission to change the
    #                 server certificate with the old name and the new name. For example, to change the
    #                 certificate named <code>ProductionCert</code> to <code>ProdCert</code>, the
    #                 principal must have a policy that allows them to update both certificates. If the
    #                 principal has permission to update the <code>ProductionCert</code> group, but not
    #                 the <code>ProdCert</code> certificate, then the update fails. For more information
    #                 about permissions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access management</a> in the <i>IAM User Guide</i>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateServerCertificateInput}.
    #
    # @option params [String] :server_certificate_name
    #   <p>The name of the server certificate that you want to update.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :new_path
    #   <p>The new path for the server certificate. Include this only if you are updating the
    #               server certificate's path.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #
    # @option params [String] :new_server_certificate_name
    #   <p>The new name for the server certificate. Include this only if you are updating the
    #               server certificate's name. The name of the certificate cannot contain any spaces.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @return [Types::UpdateServerCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_server_certificate(
    #     server_certificate_name: 'ServerCertificateName', # required
    #     new_path: 'NewPath',
    #     new_server_certificate_name: 'NewServerCertificateName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServerCertificateOutput
    #
    def update_server_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateServerCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateServerCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateServerCertificate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityAlreadyExistsException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::UpdateServerCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateServerCertificate,
        stubs: @stubs,
        params_class: Params::UpdateServerCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_server_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets the status of a service-specific credential to <code>Active</code> or
    #                 <code>Inactive</code>. Service-specific credentials that are inactive cannot be used
    #             for authentication to the service. This operation can be used to disable a user's
    #             service-specific credential as part of a credential rotation work flow.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateServiceSpecificCredentialInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the IAM user associated with the service-specific credential. If you do
    #               not specify this value, then the operation assumes the user whose credentials are used
    #               to call the operation.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :service_specific_credential_id
    #   <p>The unique identifier of the service-specific credential.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can
    #       consist of any upper or lowercased letter or digit.</p>
    #
    # @option params [String] :status
    #   <p>The status to be assigned to the service-specific credential.</p>
    #
    # @return [Types::UpdateServiceSpecificCredentialOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_service_specific_credential(
    #     user_name: 'UserName',
    #     service_specific_credential_id: 'ServiceSpecificCredentialId', # required
    #     status: 'Active' # required - accepts ["Active", "Inactive"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateServiceSpecificCredentialOutput
    #
    def update_service_specific_credential(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateServiceSpecificCredentialInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateServiceSpecificCredentialInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateServiceSpecificCredential
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NoSuchEntityException]),
        data_parser: Parsers::UpdateServiceSpecificCredential
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateServiceSpecificCredential,
        stubs: @stubs,
        params_class: Params::UpdateServiceSpecificCredentialOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_service_specific_credential
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the status of the specified user signing certificate from active to disabled,
    #             or vice versa. This operation can be used to disable an IAM user's signing certificate
    #             as part of a certificate rotation work flow.</p>
    #         <p>If the <code>UserName</code> field is not specified, the user name is determined
    #             implicitly based on the Amazon Web Services access key ID used to sign the request. This operation
    #             works for access keys under the Amazon Web Services account. Consequently, you can use this operation
    #             to manage Amazon Web Services account root user credentials even if the Amazon Web Services account has no
    #             associated users.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateSigningCertificateInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the IAM user the signing certificate belongs to.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :certificate_id
    #   <p>The ID of the signing certificate you want to update.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters that can
    #       consist of any upper or lowercased letter or digit.</p>
    #
    # @option params [String] :status
    #   <p> The status you want to assign to the certificate. <code>Active</code> means that the
    #               certificate can be used for programmatic calls to Amazon Web Services <code>Inactive</code> means that
    #               the certificate cannot be used.</p>
    #
    # @return [Types::UpdateSigningCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_signing_certificate(
    #     user_name: 'UserName',
    #     certificate_id: 'CertificateId', # required
    #     status: 'Active' # required - accepts ["Active", "Inactive"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateSigningCertificateOutput
    #
    def update_signing_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateSigningCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateSigningCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateSigningCertificate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::UpdateSigningCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateSigningCertificate,
        stubs: @stubs,
        params_class: Params::UpdateSigningCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_signing_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the name and/or the path of the specified IAM user.</p>
    #         <important>
    #             <p> You should understand the implications of changing an IAM user's path or name.
    #                 For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_manage.html#id_users_renaming">Renaming an IAM
    #                     user</a> and <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_groups_manage_rename.html">Renaming an IAM
    #                     group</a> in the <i>IAM User Guide</i>.</p>
    #         </important>
    #         <note>
    #             <p> To change a user name, the requester must have appropriate permissions on both
    #                 the source object and the target object. For example, to change Bob to Robert, the
    #                 entity making the request must have permission on Bob and Robert, or must have
    #                 permission on all (*). For more information about permissions, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html">Permissions and policies</a>. </p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserInput}.
    #
    # @option params [String] :user_name
    #   <p>Name of the user to update. If you're changing the name of the user, this is the
    #               original user name.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :new_path
    #   <p>New path for the IAM user. Include this parameter only if you're changing the user's
    #               path.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #
    # @option params [String] :new_user_name
    #   <p>New name for the user. Include this parameter only if you're changing the user's
    #               name.</p>
    #           <p>IAM user, group, role, and policy names must be unique within the account. Names are
    #               not distinguished by case. For example, you cannot create resources named both
    #               "MyResource" and "myresource".</p>
    #
    # @return [Types::UpdateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user(
    #     user_name: 'UserName', # required
    #     new_path: 'NewPath',
    #     new_user_name: 'NewUserName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserOutput
    #
    def update_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::EntityTemporarilyUnmodifiableException, Errors::EntityAlreadyExistsException, Errors::LimitExceededException, Errors::NoSuchEntityException, Errors::ServiceFailureException]),
        data_parser: Parsers::UpdateUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUser,
        stubs: @stubs,
        params_class: Params::UpdateUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Uploads an SSH public key and associates it with the specified IAM user.</p>
    #         <p>The SSH public key uploaded by this operation can be used only for authenticating the
    #             associated IAM user to an CodeCommit repository. For more information about using SSH keys
    #             to authenticate to an CodeCommit repository, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html">Set up CodeCommit for
    #                 SSH connections</a> in the <i>CodeCommit User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UploadSSHPublicKeyInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the IAM user to associate the SSH public key with.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :ssh_public_key_body
    #   <p>The SSH public key. The public key must be encoded in ssh-rsa format or PEM format.
    #               The minimum bit-length of the public key is 2048 bits. For example, you can generate a
    #               2048-bit key, and the resulting PEM file is 1679 bytes long.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UploadSSHPublicKeyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_ssh_public_key(
    #     user_name: 'UserName', # required
    #     ssh_public_key_body: 'SSHPublicKeyBody' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UploadSSHPublicKeyOutput
    #   resp.data.ssh_public_key #=> Types::SSHPublicKey
    #   resp.data.ssh_public_key.user_name #=> String
    #   resp.data.ssh_public_key.ssh_public_key_id #=> String
    #   resp.data.ssh_public_key.fingerprint #=> String
    #   resp.data.ssh_public_key.ssh_public_key_body #=> String
    #   resp.data.ssh_public_key.status #=> String, one of ["Active", "Inactive"]
    #   resp.data.ssh_public_key.upload_date #=> Time
    #
    def upload_ssh_public_key(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UploadSSHPublicKeyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UploadSSHPublicKeyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UploadSSHPublicKey
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::LimitExceededException, Errors::InvalidPublicKeyException, Errors::NoSuchEntityException, Errors::DuplicateSSHPublicKeyException, Errors::UnrecognizedPublicKeyEncodingException]),
        data_parser: Parsers::UploadSSHPublicKey
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UploadSSHPublicKey,
        stubs: @stubs,
        params_class: Params::UploadSSHPublicKeyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :upload_ssh_public_key
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Uploads a server certificate entity for the Amazon Web Services account. The server certificate
    #             entity includes a public key certificate, a private key, and an optional certificate
    #             chain, which should all be PEM-encoded.</p>
    #         <p>We recommend that you use <a href="https://docs.aws.amazon.com/acm/">Certificate Manager</a> to
    #             provision, manage, and deploy your server certificates. With ACM you can request a
    #             certificate, deploy it to Amazon Web Services resources, and let ACM handle certificate renewals for
    #             you. Certificates provided by ACM are free. For more information about using ACM,
    #             see the <a href="https://docs.aws.amazon.com/acm/latest/userguide/">Certificate Manager User
    #                 Guide</a>.</p>
    #         <p>For more information about working with server certificates, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Working
    #                 with server certificates</a> in the <i>IAM User Guide</i>. This
    #             topic includes a list of Amazon Web Services services that can use the server certificates that you
    #             manage with IAM.</p>
    #         <p>For information about the number of server certificates you can upload, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_iam-quotas.html">IAM and STS
    #                 quotas</a> in the <i>IAM User Guide</i>.</p>
    #         <note>
    #             <p>Because the body of the public key certificate, private key, and the certificate
    #                 chain can be large, you should use POST rather than GET when calling
    #                     <code>UploadServerCertificate</code>. For information about setting up
    #                 signatures and authorization through the API, see <a href="https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html">Signing Amazon Web Services API
    #                     requests</a> in the <i>Amazon Web Services General Reference</i>. For general
    #                 information about using the Query API with IAM, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/programming.html">Calling the API by making HTTP query
    #                     requests</a> in the <i>IAM User Guide</i>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::UploadServerCertificateInput}.
    #
    # @option params [String] :path
    #   <p>The path for the server certificate. For more information about paths, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html">IAM
    #                   identifiers</a> in the <i>IAM User Guide</i>.</p>
    #           <p>This parameter is optional. If it is not included, it defaults to a slash (/).
    #               This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting
    #       of either a forward slash (/) by itself or a string that must begin and end with forward slashes.
    #       In addition, it can contain any ASCII character from the ! (<code>\u0021</code>) through the DEL character (<code>\u007F</code>), including
    #       most punctuation characters, digits, and upper and lowercased letters.</p>
    #           <note>
    #               <p> If you are uploading a server certificate specifically for use with Amazon
    #                   CloudFront distributions, you must specify a path using the <code>path</code>
    #                   parameter. The path must begin with <code>/cloudfront</code> and must include a
    #                   trailing slash (for example, <code>/cloudfront/test/</code>).</p>
    #           </note>
    #
    # @option params [String] :server_certificate_name
    #   <p>The name for the server certificate. Do not include the path in this value. The name
    #               of the certificate cannot contain any spaces.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :certificate_body
    #   <p>The contents of the public key certificate in PEM-encoded format.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :private_key
    #   <p>The contents of the private key in PEM-encoded format.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :certificate_chain
    #   <p>The contents of the certificate chain. This is typically a concatenation of the
    #               PEM-encoded public key certificates of the chain.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of tags that you want to attach to the new IAM server certificate resource.
    #         Each tag consists of a key name and an associated value. For more information about tagging, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_tags.html">Tagging IAM resources</a> in the
    #         <i>IAM User Guide</i>.</p>
    #            <note>
    #               <p>If any one of the tags is invalid or if you exceed the allowed maximum number of tags, then the entire request
    #      fails and the resource is not created.</p>
    #            </note>
    #
    # @return [Types::UploadServerCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_server_certificate(
    #     path: 'Path',
    #     server_certificate_name: 'ServerCertificateName', # required
    #     certificate_body: 'CertificateBody', # required
    #     private_key: 'PrivateKey', # required
    #     certificate_chain: 'CertificateChain',
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
    #   resp.data #=> Types::UploadServerCertificateOutput
    #   resp.data.server_certificate_metadata #=> Types::ServerCertificateMetadata
    #   resp.data.server_certificate_metadata.path #=> String
    #   resp.data.server_certificate_metadata.server_certificate_name #=> String
    #   resp.data.server_certificate_metadata.server_certificate_id #=> String
    #   resp.data.server_certificate_metadata.arn #=> String
    #   resp.data.server_certificate_metadata.upload_date #=> Time
    #   resp.data.server_certificate_metadata.expiration #=> Time
    #   resp.data.tags #=> Array<Tag>
    #   resp.data.tags[0] #=> Types::Tag
    #   resp.data.tags[0].key #=> String
    #   resp.data.tags[0].value #=> String
    #
    def upload_server_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UploadServerCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UploadServerCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UploadServerCertificate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentModificationException, Errors::KeyPairMismatchException, Errors::EntityAlreadyExistsException, Errors::LimitExceededException, Errors::MalformedCertificateException, Errors::InvalidInputException, Errors::ServiceFailureException]),
        data_parser: Parsers::UploadServerCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UploadServerCertificate,
        stubs: @stubs,
        params_class: Params::UploadServerCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :upload_server_certificate
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Uploads an X.509 signing certificate and associates it with the specified IAM user.
    #             Some Amazon Web Services services require you to use certificates to validate requests that are signed
    #             with a corresponding private key. When you upload the certificate, its default status is
    #                 <code>Active</code>.</p>
    #         <p>For information about when you would use an X.509 signing certificate, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_server-certs.html">Managing
    #                 server certificates in IAM</a> in the
    #             <i>IAM User Guide</i>.</p>
    #         <p>If the <code>UserName</code> is not specified, the IAM user name is determined
    #             implicitly based on the Amazon Web Services access key ID used to sign the request. This operation
    #             works for access keys under the Amazon Web Services account. Consequently, you can use this operation
    #             to manage Amazon Web Services account root user credentials even if the Amazon Web Services account has no
    #             associated users.</p>
    #         <note>
    #             <p>Because the body of an X.509 certificate can be large, you should use POST rather
    #                 than GET when calling <code>UploadSigningCertificate</code>. For information about
    #                 setting up signatures and authorization through the API, see <a href="https://docs.aws.amazon.com/general/latest/gr/signing_aws_api_requests.html">Signing
    #                     Amazon Web Services API requests</a> in the <i>Amazon Web Services General Reference</i>. For
    #                 general information about using the Query API with IAM, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/IAM_UsingQueryAPI.html">Making query
    #                     requests</a> in the <i>IAM User Guide</i>.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::UploadSigningCertificateInput}.
    #
    # @option params [String] :user_name
    #   <p>The name of the user the signing certificate is for.</p>
    #           <p>This parameter allows (through its <a href="http://wikipedia.org/wiki/regex">regex pattern</a>) a string of characters consisting of upper and lowercase alphanumeric
    #       characters with no spaces. You can also include any of the following characters: _+=,.@-</p>
    #
    # @option params [String] :certificate_body
    #   <p>The contents of the signing certificate.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       used to validate this parameter is a string of characters consisting of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Any printable ASCII
    #       character ranging from the space character (<code>\u0020</code>) through the end of the ASCII character range</p>
    #               </li>
    #               <li>
    #                  <p>The printable characters in the Basic Latin and  Latin-1 Supplement character set
    #       (through <code>\u00FF</code>)</p>
    #               </li>
    #               <li>
    #                  <p>The special characters tab (<code>\u0009</code>), line feed (<code>\u000A</code>), and
    #       carriage return (<code>\u000D</code>)</p>
    #               </li>
    #            </ul>
    #
    # @return [Types::UploadSigningCertificateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.upload_signing_certificate(
    #     user_name: 'UserName',
    #     certificate_body: 'CertificateBody' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UploadSigningCertificateOutput
    #   resp.data.certificate #=> Types::SigningCertificate
    #   resp.data.certificate.user_name #=> String
    #   resp.data.certificate.certificate_id #=> String
    #   resp.data.certificate.certificate_body #=> String
    #   resp.data.certificate.status #=> String, one of ["Active", "Inactive"]
    #   resp.data.certificate.upload_date #=> Time
    #
    def upload_signing_certificate(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UploadSigningCertificateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UploadSigningCertificateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UploadSigningCertificate
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidCertificateException, Errors::EntityAlreadyExistsException, Errors::LimitExceededException, Errors::MalformedCertificateException, Errors::NoSuchEntityException, Errors::DuplicateCertificateException, Errors::ServiceFailureException]),
        data_parser: Parsers::UploadSigningCertificate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UploadSigningCertificate,
        stubs: @stubs,
        params_class: Params::UploadSigningCertificateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :upload_signing_certificate
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
