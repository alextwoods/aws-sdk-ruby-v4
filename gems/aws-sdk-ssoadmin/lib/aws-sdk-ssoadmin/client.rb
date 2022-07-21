# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::SSOAdmin
  # An API client for SWBExternalService
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon Web Services Single Sign On (SSO) is a cloud SSO service that makes it easy to centrally manage SSO
  #       access to multiple Amazon Web Services accounts and business applications. This guide provides information on
  #       SSO operations which could be used for access management of Amazon Web Services accounts. For information about
  #       Amazon Web Services SSO features, see the <a href="https://docs.aws.amazon.com/singlesignon/latest/userguide/what-is.html">Amazon Web Services Single Sign-On User Guide</a>.</p>
  #          <p>Many operations in the SSO APIs rely on identifiers for users and groups, known as
  #       principals. For more information about how to work with principals and principal IDs in Amazon Web Services SSO,
  #       see the <a href="https://docs.aws.amazon.com/singlesignon/latest/IdentityStoreAPIReference/welcome.html">Amazon Web Services SSO Identity Store API
  #         Reference</a>.</p>
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
    def initialize(config = AWS::SDK::SSOAdmin::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Attaches an IAM managed policy ARN to a permission set.</p>
    #          <note>
    #             <p>If the permission set is already referenced by one or more account assignments, you will
    #         need to call <code>
    #                   <a>ProvisionPermissionSet</a>
    #                </code> after this operation.
    #         Calling <code>ProvisionPermissionSet</code> applies the corresponding IAM policy updates to
    #         all assigned accounts.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::AttachManagedPolicyToPermissionSetInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the <a>PermissionSet</a> that the managed policy should be attached
    #         to.</p>
    #
    # @option params [String] :managed_policy_arn
    #   <p>The IAM managed policy ARN to be attached to a permission set.</p>
    #
    # @return [Types::AttachManagedPolicyToPermissionSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.attach_managed_policy_to_permission_set(
    #     instance_arn: 'InstanceArn', # required
    #     permission_set_arn: 'PermissionSetArn', # required
    #     managed_policy_arn: 'ManagedPolicyArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AttachManagedPolicyToPermissionSetOutput
    #
    def attach_managed_policy_to_permission_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AttachManagedPolicyToPermissionSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AttachManagedPolicyToPermissionSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AttachManagedPolicyToPermissionSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::AttachManagedPolicyToPermissionSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AttachManagedPolicyToPermissionSet,
        stubs: @stubs,
        params_class: Params::AttachManagedPolicyToPermissionSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :attach_managed_policy_to_permission_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Assigns access to a principal for a specified Amazon Web Services account using a specified permission
    #       set.</p>
    #          <note>
    #             <p>The term <i>principal</i> here refers to a user or group that is defined
    #         in Amazon Web Services SSO.</p>
    #          </note>
    #          <note>
    #             <p>As part of a successful <code>CreateAccountAssignment</code> call, the specified
    #         permission set will automatically be provisioned to the account in the form of an IAM
    #         policy. That policy is attached to the SSO-created IAM role. If the permission set is
    #         subsequently updated, the corresponding IAM policies attached to roles in your accounts will
    #         not be updated automatically. In this case, you must call <code>
    #                   <a>ProvisionPermissionSet</a>
    #                </code> to make these updates.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateAccountAssignmentInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :target_id
    #   <p>TargetID is an Amazon Web Services account identifier, typically a 10-12 digit string (For example, 123456789012).</p>
    #
    # @option params [String] :target_type
    #   <p>The entity type for which the assignment will be created.</p>
    #
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set that the admin wants to grant the principal access
    #         to.</p>
    #
    # @option params [String] :principal_type
    #   <p>The entity type for which the assignment will be created.</p>
    #
    # @option params [String] :principal_id
    #   <p>An identifier for an object in Amazon Web Services SSO, such as a user or group. PrincipalIds are GUIDs (For example, f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about PrincipalIds in Amazon Web Services SSO, see the <a href="/singlesignon/latest/IdentityStoreAPIReference/welcome.html">Amazon Web Services SSO Identity Store API Reference</a>.</p>
    #
    # @return [Types::CreateAccountAssignmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_account_assignment(
    #     instance_arn: 'InstanceArn', # required
    #     target_id: 'TargetId', # required
    #     target_type: 'AWS_ACCOUNT', # required - accepts ["AWS_ACCOUNT"]
    #     permission_set_arn: 'PermissionSetArn', # required
    #     principal_type: 'USER', # required - accepts ["USER", "GROUP"]
    #     principal_id: 'PrincipalId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAccountAssignmentOutput
    #   resp.data.account_assignment_creation_status #=> Types::AccountAssignmentOperationStatus
    #   resp.data.account_assignment_creation_status.status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #   resp.data.account_assignment_creation_status.request_id #=> String
    #   resp.data.account_assignment_creation_status.failure_reason #=> String
    #   resp.data.account_assignment_creation_status.target_id #=> String
    #   resp.data.account_assignment_creation_status.target_type #=> String, one of ["AWS_ACCOUNT"]
    #   resp.data.account_assignment_creation_status.permission_set_arn #=> String
    #   resp.data.account_assignment_creation_status.principal_type #=> String, one of ["USER", "GROUP"]
    #   resp.data.account_assignment_creation_status.principal_id #=> String
    #   resp.data.account_assignment_creation_status.created_date #=> Time
    #
    def create_account_assignment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAccountAssignmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAccountAssignmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAccountAssignment
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateAccountAssignment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAccountAssignment,
        stubs: @stubs,
        params_class: Params::CreateAccountAssignmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_account_assignment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables the attributes-based access control (ABAC) feature for the specified Amazon Web Services SSO
    #       instance. You can also specify new attributes to add to your ABAC configuration during the
    #       enabling process. For more information about ABAC, see <a href="/singlesignon/latest/userguide/abac.html">Attribute-Based Access Control</a> in the <i>Amazon Web Services SSO User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateInstanceAccessControlAttributeConfigurationInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed.</p>
    #
    # @option params [InstanceAccessControlAttributeConfiguration] :instance_access_control_attribute_configuration
    #   <p>Specifies the Amazon Web Services SSO identity store attributes to add to your ABAC configuration.
    #         When using an external identity provider as an identity source, you can pass attributes
    #         through the SAML assertion. Doing so provides an alternative to configuring attributes from
    #         the Amazon Web Services SSO identity store. If a SAML assertion passes any of these attributes, Amazon Web Services
    #         SSO will replace the attribute value with the value from the Amazon Web Services SSO identity
    #         store.</p>
    #
    # @return [Types::CreateInstanceAccessControlAttributeConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_instance_access_control_attribute_configuration(
    #     instance_arn: 'InstanceArn', # required
    #     instance_access_control_attribute_configuration: {
    #       access_control_attributes: [
    #         {
    #           key: 'Key', # required
    #           value: {
    #             source: [
    #               'member'
    #             ] # required
    #           } # required
    #         }
    #       ] # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateInstanceAccessControlAttributeConfigurationOutput
    #
    def create_instance_access_control_attribute_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateInstanceAccessControlAttributeConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateInstanceAccessControlAttributeConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateInstanceAccessControlAttributeConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreateInstanceAccessControlAttributeConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateInstanceAccessControlAttributeConfiguration,
        stubs: @stubs,
        params_class: Params::CreateInstanceAccessControlAttributeConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_instance_access_control_attribute_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a permission set within a specified SSO instance.</p>
    #          <note>
    #             <p>To grant users and groups access to Amazon Web Services account resources, use <code>
    #                   <a>CreateAccountAssignment</a>
    #                </code>.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreatePermissionSetInput}.
    #
    # @option params [String] :name
    #   <p>The name of the <a>PermissionSet</a>.</p>
    #
    # @option params [String] :description
    #   <p>The description of the <a>PermissionSet</a>.</p>
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :session_duration
    #   <p>The length of time that the application user sessions are valid in the ISO-8601
    #         standard.</p>
    #
    # @option params [String] :relay_state
    #   <p>Used to redirect users within the application during the federation authentication
    #         process.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tags to attach to the new <a>PermissionSet</a>.</p>
    #
    # @return [Types::CreatePermissionSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_permission_set(
    #     name: 'Name', # required
    #     description: 'Description',
    #     instance_arn: 'InstanceArn', # required
    #     session_duration: 'SessionDuration',
    #     relay_state: 'RelayState',
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePermissionSetOutput
    #   resp.data.permission_set #=> Types::PermissionSet
    #   resp.data.permission_set.name #=> String
    #   resp.data.permission_set.permission_set_arn #=> String
    #   resp.data.permission_set.description #=> String
    #   resp.data.permission_set.created_date #=> Time
    #   resp.data.permission_set.session_duration #=> String
    #   resp.data.permission_set.relay_state #=> String
    #
    def create_permission_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePermissionSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePermissionSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePermissionSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::CreatePermissionSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePermissionSet,
        stubs: @stubs,
        params_class: Params::CreatePermissionSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_permission_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a principal's access from a specified Amazon Web Services account using a specified permission
    #       set.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAccountAssignmentInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :target_id
    #   <p>TargetID is an Amazon Web Services account identifier, typically a 10-12 digit string (For example, 123456789012).</p>
    #
    # @option params [String] :target_type
    #   <p>The entity type for which the assignment will be deleted.</p>
    #
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set that will be used to remove access.</p>
    #
    # @option params [String] :principal_type
    #   <p>The entity type for which the assignment will be deleted.</p>
    #
    # @option params [String] :principal_id
    #   <p>An identifier for an object in Amazon Web Services SSO, such as a user or group. PrincipalIds are GUIDs (For example, f81d4fae-7dec-11d0-a765-00a0c91e6bf6). For more information about PrincipalIds in Amazon Web Services SSO, see the <a href="/singlesignon/latest/IdentityStoreAPIReference/welcome.html">Amazon Web Services SSO Identity Store API Reference</a>.</p>
    #
    # @return [Types::DeleteAccountAssignmentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_account_assignment(
    #     instance_arn: 'InstanceArn', # required
    #     target_id: 'TargetId', # required
    #     target_type: 'AWS_ACCOUNT', # required - accepts ["AWS_ACCOUNT"]
    #     permission_set_arn: 'PermissionSetArn', # required
    #     principal_type: 'USER', # required - accepts ["USER", "GROUP"]
    #     principal_id: 'PrincipalId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAccountAssignmentOutput
    #   resp.data.account_assignment_deletion_status #=> Types::AccountAssignmentOperationStatus
    #   resp.data.account_assignment_deletion_status.status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #   resp.data.account_assignment_deletion_status.request_id #=> String
    #   resp.data.account_assignment_deletion_status.failure_reason #=> String
    #   resp.data.account_assignment_deletion_status.target_id #=> String
    #   resp.data.account_assignment_deletion_status.target_type #=> String, one of ["AWS_ACCOUNT"]
    #   resp.data.account_assignment_deletion_status.permission_set_arn #=> String
    #   resp.data.account_assignment_deletion_status.principal_type #=> String, one of ["USER", "GROUP"]
    #   resp.data.account_assignment_deletion_status.principal_id #=> String
    #   resp.data.account_assignment_deletion_status.created_date #=> Time
    #
    def delete_account_assignment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAccountAssignmentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAccountAssignmentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAccountAssignment
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteAccountAssignment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAccountAssignment,
        stubs: @stubs,
        params_class: Params::DeleteAccountAssignmentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_account_assignment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the inline policy from a specified permission set.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteInlinePolicyFromPermissionSetInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set that will be used to remove access.</p>
    #
    # @return [Types::DeleteInlinePolicyFromPermissionSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_inline_policy_from_permission_set(
    #     instance_arn: 'InstanceArn', # required
    #     permission_set_arn: 'PermissionSetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteInlinePolicyFromPermissionSetOutput
    #
    def delete_inline_policy_from_permission_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInlinePolicyFromPermissionSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteInlinePolicyFromPermissionSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteInlinePolicyFromPermissionSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteInlinePolicyFromPermissionSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteInlinePolicyFromPermissionSet,
        stubs: @stubs,
        params_class: Params::DeleteInlinePolicyFromPermissionSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_inline_policy_from_permission_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disables the attributes-based access control (ABAC) feature for the specified Amazon Web Services SSO
    #       instance and deletes all of the attribute mappings that have been configured. Once deleted,
    #       any attributes that are received from an identity source and any custom attributes you have
    #       previously configured will not be passed. For more information about ABAC, see <a href="/singlesignon/latest/userguide/abac.html">Attribute-Based Access Control</a> in the <i>Amazon Web Services SSO User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteInstanceAccessControlAttributeConfigurationInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed.</p>
    #
    # @return [Types::DeleteInstanceAccessControlAttributeConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_instance_access_control_attribute_configuration(
    #     instance_arn: 'InstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteInstanceAccessControlAttributeConfigurationOutput
    #
    def delete_instance_access_control_attribute_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteInstanceAccessControlAttributeConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteInstanceAccessControlAttributeConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteInstanceAccessControlAttributeConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeleteInstanceAccessControlAttributeConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteInstanceAccessControlAttributeConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteInstanceAccessControlAttributeConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_instance_access_control_attribute_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified permission set.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePermissionSetInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set that should be deleted.</p>
    #
    # @return [Types::DeletePermissionSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_permission_set(
    #     instance_arn: 'InstanceArn', # required
    #     permission_set_arn: 'PermissionSetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePermissionSetOutput
    #
    def delete_permission_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePermissionSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePermissionSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePermissionSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DeletePermissionSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePermissionSet,
        stubs: @stubs,
        params_class: Params::DeletePermissionSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_permission_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the status of the assignment creation request.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountAssignmentCreationStatusInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :account_assignment_creation_request_id
    #   <p>The identifier that is used to track the request operation progress.</p>
    #
    # @return [Types::DescribeAccountAssignmentCreationStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_assignment_creation_status(
    #     instance_arn: 'InstanceArn', # required
    #     account_assignment_creation_request_id: 'AccountAssignmentCreationRequestId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccountAssignmentCreationStatusOutput
    #   resp.data.account_assignment_creation_status #=> Types::AccountAssignmentOperationStatus
    #   resp.data.account_assignment_creation_status.status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #   resp.data.account_assignment_creation_status.request_id #=> String
    #   resp.data.account_assignment_creation_status.failure_reason #=> String
    #   resp.data.account_assignment_creation_status.target_id #=> String
    #   resp.data.account_assignment_creation_status.target_type #=> String, one of ["AWS_ACCOUNT"]
    #   resp.data.account_assignment_creation_status.permission_set_arn #=> String
    #   resp.data.account_assignment_creation_status.principal_type #=> String, one of ["USER", "GROUP"]
    #   resp.data.account_assignment_creation_status.principal_id #=> String
    #   resp.data.account_assignment_creation_status.created_date #=> Time
    #
    def describe_account_assignment_creation_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccountAssignmentCreationStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccountAssignmentCreationStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccountAssignmentCreationStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeAccountAssignmentCreationStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccountAssignmentCreationStatus,
        stubs: @stubs,
        params_class: Params::DescribeAccountAssignmentCreationStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_account_assignment_creation_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the status of the assignment deletion request.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeAccountAssignmentDeletionStatusInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :account_assignment_deletion_request_id
    #   <p>The identifier that is used to track the request operation progress.</p>
    #
    # @return [Types::DescribeAccountAssignmentDeletionStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_account_assignment_deletion_status(
    #     instance_arn: 'InstanceArn', # required
    #     account_assignment_deletion_request_id: 'AccountAssignmentDeletionRequestId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeAccountAssignmentDeletionStatusOutput
    #   resp.data.account_assignment_deletion_status #=> Types::AccountAssignmentOperationStatus
    #   resp.data.account_assignment_deletion_status.status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #   resp.data.account_assignment_deletion_status.request_id #=> String
    #   resp.data.account_assignment_deletion_status.failure_reason #=> String
    #   resp.data.account_assignment_deletion_status.target_id #=> String
    #   resp.data.account_assignment_deletion_status.target_type #=> String, one of ["AWS_ACCOUNT"]
    #   resp.data.account_assignment_deletion_status.permission_set_arn #=> String
    #   resp.data.account_assignment_deletion_status.principal_type #=> String, one of ["USER", "GROUP"]
    #   resp.data.account_assignment_deletion_status.principal_id #=> String
    #   resp.data.account_assignment_deletion_status.created_date #=> Time
    #
    def describe_account_assignment_deletion_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeAccountAssignmentDeletionStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeAccountAssignmentDeletionStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeAccountAssignmentDeletionStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeAccountAssignmentDeletionStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeAccountAssignmentDeletionStatus,
        stubs: @stubs,
        params_class: Params::DescribeAccountAssignmentDeletionStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_account_assignment_deletion_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the list of Amazon Web Services SSO identity store attributes that have been configured to
    #       work with attributes-based access control (ABAC) for the specified Amazon Web Services SSO instance. This
    #       will not return attributes configured and sent by an external identity provider.
    #       For more information about ABAC, see <a href="/singlesignon/latest/userguide/abac.html">Attribute-Based Access Control</a> in the <i>Amazon Web Services SSO User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInstanceAccessControlAttributeConfigurationInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed.</p>
    #
    # @return [Types::DescribeInstanceAccessControlAttributeConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_instance_access_control_attribute_configuration(
    #     instance_arn: 'InstanceArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInstanceAccessControlAttributeConfigurationOutput
    #   resp.data.status #=> String, one of ["ENABLED", "CREATION_IN_PROGRESS", "CREATION_FAILED"]
    #   resp.data.status_reason #=> String
    #   resp.data.instance_access_control_attribute_configuration #=> Types::InstanceAccessControlAttributeConfiguration
    #   resp.data.instance_access_control_attribute_configuration.access_control_attributes #=> Array<AccessControlAttribute>
    #   resp.data.instance_access_control_attribute_configuration.access_control_attributes[0] #=> Types::AccessControlAttribute
    #   resp.data.instance_access_control_attribute_configuration.access_control_attributes[0].key #=> String
    #   resp.data.instance_access_control_attribute_configuration.access_control_attributes[0].value #=> Types::AccessControlAttributeValue
    #   resp.data.instance_access_control_attribute_configuration.access_control_attributes[0].value.source #=> Array<String>
    #   resp.data.instance_access_control_attribute_configuration.access_control_attributes[0].value.source[0] #=> String
    #
    def describe_instance_access_control_attribute_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInstanceAccessControlAttributeConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInstanceAccessControlAttributeConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInstanceAccessControlAttributeConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribeInstanceAccessControlAttributeConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInstanceAccessControlAttributeConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeInstanceAccessControlAttributeConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_instance_access_control_attribute_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the details of the permission set.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePermissionSetInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set.</p>
    #
    # @return [Types::DescribePermissionSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_permission_set(
    #     instance_arn: 'InstanceArn', # required
    #     permission_set_arn: 'PermissionSetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePermissionSetOutput
    #   resp.data.permission_set #=> Types::PermissionSet
    #   resp.data.permission_set.name #=> String
    #   resp.data.permission_set.permission_set_arn #=> String
    #   resp.data.permission_set.description #=> String
    #   resp.data.permission_set.created_date #=> Time
    #   resp.data.permission_set.session_duration #=> String
    #   resp.data.permission_set.relay_state #=> String
    #
    def describe_permission_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePermissionSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePermissionSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePermissionSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribePermissionSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePermissionSet,
        stubs: @stubs,
        params_class: Params::DescribePermissionSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_permission_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the status for the given permission set provisioning request.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePermissionSetProvisioningStatusInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :provision_permission_set_request_id
    #   <p>The identifier that is provided by the <a>ProvisionPermissionSet</a> call to
    #         retrieve the current status of the provisioning workflow.</p>
    #
    # @return [Types::DescribePermissionSetProvisioningStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_permission_set_provisioning_status(
    #     instance_arn: 'InstanceArn', # required
    #     provision_permission_set_request_id: 'ProvisionPermissionSetRequestId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePermissionSetProvisioningStatusOutput
    #   resp.data.permission_set_provisioning_status #=> Types::PermissionSetProvisioningStatus
    #   resp.data.permission_set_provisioning_status.status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #   resp.data.permission_set_provisioning_status.request_id #=> String
    #   resp.data.permission_set_provisioning_status.account_id #=> String
    #   resp.data.permission_set_provisioning_status.permission_set_arn #=> String
    #   resp.data.permission_set_provisioning_status.failure_reason #=> String
    #   resp.data.permission_set_provisioning_status.created_date #=> Time
    #
    def describe_permission_set_provisioning_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePermissionSetProvisioningStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePermissionSetProvisioningStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePermissionSetProvisioningStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DescribePermissionSetProvisioningStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePermissionSetProvisioningStatus,
        stubs: @stubs,
        params_class: Params::DescribePermissionSetProvisioningStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_permission_set_provisioning_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Detaches the attached IAM managed policy ARN from the specified permission set.</p>
    #
    # @param [Hash] params
    #   See {Types::DetachManagedPolicyFromPermissionSetInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the <a>PermissionSet</a> from which the policy should be
    #         detached.</p>
    #
    # @option params [String] :managed_policy_arn
    #   <p>The IAM managed policy ARN to be attached to a permission set.</p>
    #
    # @return [Types::DetachManagedPolicyFromPermissionSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.detach_managed_policy_from_permission_set(
    #     instance_arn: 'InstanceArn', # required
    #     permission_set_arn: 'PermissionSetArn', # required
    #     managed_policy_arn: 'ManagedPolicyArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DetachManagedPolicyFromPermissionSetOutput
    #
    def detach_managed_policy_from_permission_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DetachManagedPolicyFromPermissionSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DetachManagedPolicyFromPermissionSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DetachManagedPolicyFromPermissionSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::DetachManagedPolicyFromPermissionSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DetachManagedPolicyFromPermissionSet,
        stubs: @stubs,
        params_class: Params::DetachManagedPolicyFromPermissionSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :detach_managed_policy_from_permission_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Obtains the inline policy assigned to the permission set.</p>
    #
    # @param [Hash] params
    #   See {Types::GetInlinePolicyForPermissionSetInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set.</p>
    #
    # @return [Types::GetInlinePolicyForPermissionSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_inline_policy_for_permission_set(
    #     instance_arn: 'InstanceArn', # required
    #     permission_set_arn: 'PermissionSetArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetInlinePolicyForPermissionSetOutput
    #   resp.data.inline_policy #=> String
    #
    def get_inline_policy_for_permission_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetInlinePolicyForPermissionSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetInlinePolicyForPermissionSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetInlinePolicyForPermissionSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::GetInlinePolicyForPermissionSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetInlinePolicyForPermissionSet,
        stubs: @stubs,
        params_class: Params::GetInlinePolicyForPermissionSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_inline_policy_for_permission_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the status of the Amazon Web Services account assignment creation requests for a specified SSO
    #       instance.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAccountAssignmentCreationStatusInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display for the assignment.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    #
    # @option params [OperationStatusFilter] :filter
    #   <p>Filters results based on the passed attribute value.</p>
    #
    # @return [Types::ListAccountAssignmentCreationStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_assignment_creation_status(
    #     instance_arn: 'InstanceArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filter: {
    #       status: 'IN_PROGRESS' # accepts ["IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccountAssignmentCreationStatusOutput
    #   resp.data.account_assignments_creation_status #=> Array<AccountAssignmentOperationStatusMetadata>
    #   resp.data.account_assignments_creation_status[0] #=> Types::AccountAssignmentOperationStatusMetadata
    #   resp.data.account_assignments_creation_status[0].status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #   resp.data.account_assignments_creation_status[0].request_id #=> String
    #   resp.data.account_assignments_creation_status[0].created_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_account_assignment_creation_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccountAssignmentCreationStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccountAssignmentCreationStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccountAssignmentCreationStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListAccountAssignmentCreationStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccountAssignmentCreationStatus,
        stubs: @stubs,
        params_class: Params::ListAccountAssignmentCreationStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_account_assignment_creation_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the status of the Amazon Web Services account assignment deletion requests for a specified SSO
    #       instance.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAccountAssignmentDeletionStatusInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display for the assignment.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    #
    # @option params [OperationStatusFilter] :filter
    #   <p>Filters results based on the passed attribute value.</p>
    #
    # @return [Types::ListAccountAssignmentDeletionStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_assignment_deletion_status(
    #     instance_arn: 'InstanceArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filter: {
    #       status: 'IN_PROGRESS' # accepts ["IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccountAssignmentDeletionStatusOutput
    #   resp.data.account_assignments_deletion_status #=> Array<AccountAssignmentOperationStatusMetadata>
    #   resp.data.account_assignments_deletion_status[0] #=> Types::AccountAssignmentOperationStatusMetadata
    #   resp.data.account_assignments_deletion_status[0].status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #   resp.data.account_assignments_deletion_status[0].request_id #=> String
    #   resp.data.account_assignments_deletion_status[0].created_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_account_assignment_deletion_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccountAssignmentDeletionStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccountAssignmentDeletionStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccountAssignmentDeletionStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListAccountAssignmentDeletionStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccountAssignmentDeletionStatus,
        stubs: @stubs,
        params_class: Params::ListAccountAssignmentDeletionStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_account_assignment_deletion_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the assignee of the specified Amazon Web Services account with the specified permission
    #       set.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAccountAssignmentsInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :account_id
    #   <p>The identifier of the Amazon Web Services account from which to list the assignments.</p>
    #
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set from which to list assignments.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display for the assignment.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    #
    # @return [Types::ListAccountAssignmentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_account_assignments(
    #     instance_arn: 'InstanceArn', # required
    #     account_id: 'AccountId', # required
    #     permission_set_arn: 'PermissionSetArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccountAssignmentsOutput
    #   resp.data.account_assignments #=> Array<AccountAssignment>
    #   resp.data.account_assignments[0] #=> Types::AccountAssignment
    #   resp.data.account_assignments[0].account_id #=> String
    #   resp.data.account_assignments[0].permission_set_arn #=> String
    #   resp.data.account_assignments[0].principal_type #=> String, one of ["USER", "GROUP"]
    #   resp.data.account_assignments[0].principal_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_account_assignments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccountAssignmentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccountAssignmentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccountAssignments
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListAccountAssignments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccountAssignments,
        stubs: @stubs,
        params_class: Params::ListAccountAssignmentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_account_assignments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the Amazon Web Services accounts where the specified permission set is provisioned.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAccountsForProvisionedPermissionSetInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the <a>PermissionSet</a> from which the associated Amazon Web Services accounts
    #         will be listed.</p>
    #
    # @option params [String] :provisioning_status
    #   <p>The permission set provisioning status for an Amazon Web Services account.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display for the <a>PermissionSet</a>.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    #
    # @return [Types::ListAccountsForProvisionedPermissionSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_accounts_for_provisioned_permission_set(
    #     instance_arn: 'InstanceArn', # required
    #     permission_set_arn: 'PermissionSetArn', # required
    #     provisioning_status: 'LATEST_PERMISSION_SET_PROVISIONED', # accepts ["LATEST_PERMISSION_SET_PROVISIONED", "LATEST_PERMISSION_SET_NOT_PROVISIONED"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccountsForProvisionedPermissionSetOutput
    #   resp.data.account_ids #=> Array<String>
    #   resp.data.account_ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_accounts_for_provisioned_permission_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccountsForProvisionedPermissionSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccountsForProvisionedPermissionSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccountsForProvisionedPermissionSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListAccountsForProvisionedPermissionSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccountsForProvisionedPermissionSet,
        stubs: @stubs,
        params_class: Params::ListAccountsForProvisionedPermissionSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_accounts_for_provisioned_permission_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the SSO instances that the caller has access to.</p>
    #
    # @param [Hash] params
    #   See {Types::ListInstancesInput}.
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display for the instance.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    #
    # @return [Types::ListInstancesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_instances(
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListInstancesOutput
    #   resp.data.instances #=> Array<InstanceMetadata>
    #   resp.data.instances[0] #=> Types::InstanceMetadata
    #   resp.data.instances[0].instance_arn #=> String
    #   resp.data.instances[0].identity_store_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_instances(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListInstancesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListInstancesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListInstances
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListInstances
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListInstances,
        stubs: @stubs,
        params_class: Params::ListInstancesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_instances
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the IAM managed policy that is attached to a specified permission set.</p>
    #
    # @param [Hash] params
    #   See {Types::ListManagedPoliciesInPermissionSetInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the <a>PermissionSet</a> whose managed policies will be
    #         listed.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display for the <a>PermissionSet</a>.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    #
    # @return [Types::ListManagedPoliciesInPermissionSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_managed_policies_in_permission_set(
    #     instance_arn: 'InstanceArn', # required
    #     permission_set_arn: 'PermissionSetArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListManagedPoliciesInPermissionSetOutput
    #   resp.data.attached_managed_policies #=> Array<AttachedManagedPolicy>
    #   resp.data.attached_managed_policies[0] #=> Types::AttachedManagedPolicy
    #   resp.data.attached_managed_policies[0].name #=> String
    #   resp.data.attached_managed_policies[0].arn #=> String
    #   resp.data.next_token #=> String
    #
    def list_managed_policies_in_permission_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListManagedPoliciesInPermissionSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListManagedPoliciesInPermissionSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListManagedPoliciesInPermissionSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListManagedPoliciesInPermissionSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListManagedPoliciesInPermissionSet,
        stubs: @stubs,
        params_class: Params::ListManagedPoliciesInPermissionSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_managed_policies_in_permission_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the status of the permission set provisioning requests for a specified SSO
    #       instance.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPermissionSetProvisioningStatusInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display for the assignment.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    #
    # @option params [OperationStatusFilter] :filter
    #   <p>Filters results based on the passed attribute value.</p>
    #
    # @return [Types::ListPermissionSetProvisioningStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permission_set_provisioning_status(
    #     instance_arn: 'InstanceArn', # required
    #     max_results: 1,
    #     next_token: 'NextToken',
    #     filter: {
    #       status: 'IN_PROGRESS' # accepts ["IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPermissionSetProvisioningStatusOutput
    #   resp.data.permission_sets_provisioning_status #=> Array<PermissionSetProvisioningStatusMetadata>
    #   resp.data.permission_sets_provisioning_status[0] #=> Types::PermissionSetProvisioningStatusMetadata
    #   resp.data.permission_sets_provisioning_status[0].status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #   resp.data.permission_sets_provisioning_status[0].request_id #=> String
    #   resp.data.permission_sets_provisioning_status[0].created_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_permission_set_provisioning_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPermissionSetProvisioningStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPermissionSetProvisioningStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPermissionSetProvisioningStatus
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPermissionSetProvisioningStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPermissionSetProvisioningStatus,
        stubs: @stubs,
        params_class: Params::ListPermissionSetProvisioningStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_permission_set_provisioning_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the <a>PermissionSet</a>s in an SSO instance.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPermissionSetsInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display for the assignment.</p>
    #
    # @return [Types::ListPermissionSetsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permission_sets(
    #     instance_arn: 'InstanceArn', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPermissionSetsOutput
    #   resp.data.permission_sets #=> Array<String>
    #   resp.data.permission_sets[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_permission_sets(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPermissionSetsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPermissionSetsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPermissionSets
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPermissionSets
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPermissionSets,
        stubs: @stubs,
        params_class: Params::ListPermissionSetsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_permission_sets
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the permission sets that are provisioned to a specified Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPermissionSetsProvisionedToAccountInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :account_id
    #   <p>The identifier of the Amazon Web Services account from which to list the assignments.</p>
    #
    # @option params [String] :provisioning_status
    #   <p>The status object for the permission set provisioning operation.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to display for the assignment.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    #
    # @return [Types::ListPermissionSetsProvisionedToAccountOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permission_sets_provisioned_to_account(
    #     instance_arn: 'InstanceArn', # required
    #     account_id: 'AccountId', # required
    #     provisioning_status: 'LATEST_PERMISSION_SET_PROVISIONED', # accepts ["LATEST_PERMISSION_SET_PROVISIONED", "LATEST_PERMISSION_SET_NOT_PROVISIONED"]
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPermissionSetsProvisionedToAccountOutput
    #   resp.data.next_token #=> String
    #   resp.data.permission_sets #=> Array<String>
    #   resp.data.permission_sets[0] #=> String
    #
    def list_permission_sets_provisioned_to_account(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPermissionSetsProvisionedToAccountInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPermissionSetsProvisionedToAccountInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPermissionSetsProvisionedToAccount
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ListPermissionSetsProvisionedToAccount
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPermissionSetsProvisionedToAccount,
        stubs: @stubs,
        params_class: Params::ListPermissionSetsProvisionedToAccountOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_permission_sets_provisioned_to_account
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags that are attached to a specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource with the tags to be listed.</p>
    #
    # @option params [String] :next_token
    #   <p>The pagination token for the list API. Initially the value is null. Use the output of previous API calls to make subsequent calls.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     instance_arn: 'InstanceArn', # required
    #     resource_arn: 'ResourceArn', # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # <p>The process by which a specified permission set is provisioned to the specified
    #       target.</p>
    #
    # @param [Hash] params
    #   See {Types::ProvisionPermissionSetInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set.</p>
    #
    # @option params [String] :target_id
    #   <p>TargetID is an Amazon Web Services account identifier, typically a 10-12 digit string (For example, 123456789012).</p>
    #
    # @option params [String] :target_type
    #   <p>The entity type for which the assignment will be created.</p>
    #
    # @return [Types::ProvisionPermissionSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.provision_permission_set(
    #     instance_arn: 'InstanceArn', # required
    #     permission_set_arn: 'PermissionSetArn', # required
    #     target_id: 'TargetId',
    #     target_type: 'AWS_ACCOUNT' # required - accepts ["AWS_ACCOUNT", "ALL_PROVISIONED_ACCOUNTS"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ProvisionPermissionSetOutput
    #   resp.data.permission_set_provisioning_status #=> Types::PermissionSetProvisioningStatus
    #   resp.data.permission_set_provisioning_status.status #=> String, one of ["IN_PROGRESS", "FAILED", "SUCCEEDED"]
    #   resp.data.permission_set_provisioning_status.request_id #=> String
    #   resp.data.permission_set_provisioning_status.account_id #=> String
    #   resp.data.permission_set_provisioning_status.permission_set_arn #=> String
    #   resp.data.permission_set_provisioning_status.failure_reason #=> String
    #   resp.data.permission_set_provisioning_status.created_date #=> Time
    #
    def provision_permission_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ProvisionPermissionSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ProvisionPermissionSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ProvisionPermissionSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::ProvisionPermissionSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ProvisionPermissionSet,
        stubs: @stubs,
        params_class: Params::ProvisionPermissionSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :provision_permission_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attaches an IAM inline policy to a permission set.</p>
    #          <note>
    #             <p>If the permission set is already referenced by one or more account assignments, you will
    #         need to call <code>
    #                   <a>ProvisionPermissionSet</a>
    #                </code> after this action to
    #         apply the corresponding IAM policy updates to all assigned accounts.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::PutInlinePolicyToPermissionSetInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set.</p>
    #
    # @option params [String] :inline_policy
    #   <p>The IAM inline policy to attach to a <a>PermissionSet</a>.</p>
    #
    # @return [Types::PutInlinePolicyToPermissionSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_inline_policy_to_permission_set(
    #     instance_arn: 'InstanceArn', # required
    #     permission_set_arn: 'PermissionSetArn', # required
    #     inline_policy: 'InlinePolicy' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutInlinePolicyToPermissionSetOutput
    #
    def put_inline_policy_to_permission_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutInlinePolicyToPermissionSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutInlinePolicyToPermissionSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutInlinePolicyToPermissionSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::PutInlinePolicyToPermissionSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutInlinePolicyToPermissionSet,
        stubs: @stubs,
        params_class: Params::PutInlinePolicyToPermissionSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_inline_policy_to_permission_set
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Associates a set of tags with a specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource with the tags to be listed.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A set of key-value pairs that are used to manage the resource.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     instance_arn: 'InstanceArn', # required
    #     resource_arn: 'ResourceArn', # required
    #     tags: [
    #       {
    #         key: 'Key',
    #         value: 'Value'
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ServiceQuotaExceededException, Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # <p>Disassociates a set of tags from a specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :resource_arn
    #   <p>The ARN of the resource with the tags to be listed.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The keys of tags that are attached to the resource.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     instance_arn: 'InstanceArn', # required
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
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

    # <p>Updates the Amazon Web Services SSO identity store attributes that you can use with the Amazon Web Services SSO
    #       instance for attributes-based access control (ABAC). When using an external identity provider
    #       as an identity source, you can pass attributes through the SAML assertion as an alternative to
    #       configuring attributes from the Amazon Web Services SSO identity store. If a SAML assertion passes any of
    #       these attributes, Amazon Web Services SSO replaces the attribute value with the value from the Amazon Web Services SSO
    #       identity store. For more information about ABAC, see <a href="/singlesignon/latest/userguide/abac.html">Attribute-Based Access Control</a> in the <i>Amazon Web Services SSO User Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateInstanceAccessControlAttributeConfigurationInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed.</p>
    #
    # @option params [InstanceAccessControlAttributeConfiguration] :instance_access_control_attribute_configuration
    #   <p>Updates the attributes for your ABAC configuration.</p>
    #
    # @return [Types::UpdateInstanceAccessControlAttributeConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_instance_access_control_attribute_configuration(
    #     instance_arn: 'InstanceArn', # required
    #     instance_access_control_attribute_configuration: {
    #       access_control_attributes: [
    #         {
    #           key: 'Key', # required
    #           value: {
    #             source: [
    #               'member'
    #             ] # required
    #           } # required
    #         }
    #       ] # required
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateInstanceAccessControlAttributeConfigurationOutput
    #
    def update_instance_access_control_attribute_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateInstanceAccessControlAttributeConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateInstanceAccessControlAttributeConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateInstanceAccessControlAttributeConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdateInstanceAccessControlAttributeConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateInstanceAccessControlAttributeConfiguration,
        stubs: @stubs,
        params_class: Params::UpdateInstanceAccessControlAttributeConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_instance_access_control_attribute_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates an existing permission set.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePermissionSetInput}.
    #
    # @option params [String] :instance_arn
    #   <p>The ARN of the SSO instance under which the operation will be executed. For more information about ARNs, see <a href="/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource
    #   Names (ARNs) and Amazon Web Services Service Namespaces</a> in the <i>Amazon Web Services General Reference</i>.</p>
    #
    # @option params [String] :permission_set_arn
    #   <p>The ARN of the permission set.</p>
    #
    # @option params [String] :description
    #   <p>The description of the <a>PermissionSet</a>.</p>
    #
    # @option params [String] :session_duration
    #   <p>The length of time that the application user sessions are valid for in the ISO-8601
    #         standard.</p>
    #
    # @option params [String] :relay_state
    #   <p>Used to redirect users within the application during the federation authentication
    #         process.</p>
    #
    # @return [Types::UpdatePermissionSetOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_permission_set(
    #     instance_arn: 'InstanceArn', # required
    #     permission_set_arn: 'PermissionSetArn', # required
    #     description: 'Description',
    #     session_duration: 'SessionDuration',
    #     relay_state: 'RelayState'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePermissionSetOutput
    #
    def update_permission_set(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePermissionSetInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePermissionSetInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePermissionSet
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::ConflictException, Errors::ValidationException, Errors::InternalServerException, Errors::ThrottlingException, Errors::AccessDeniedException]),
        data_parser: Parsers::UpdatePermissionSet
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePermissionSet,
        stubs: @stubs,
        params_class: Params::UpdatePermissionSetOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_permission_set
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
