# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::WorkMail
  # An API client for WorkMailService
  # See {#initialize} for a full list of supported configuration options
  # <p>Amazon WorkMail is a secure, managed business email and calendaring service with support for
  #          existing desktop and mobile email clients. You can access your email, contacts, and
  #          calendars using Microsoft Outlook, your browser, or other native iOS and Android email
  #          applications. You can integrate WorkMail with your existing corporate directory and control
  #          both the keys that encrypt your data and the location in which your data is
  #          stored.</p>
  #          <p>The WorkMail API is designed for the following scenarios:</p>
  #          <ul>
  #             <li>
  #                <p>Listing and describing organizations</p>
  #             </li>
  #          </ul>
  #          <ul>
  #             <li>
  #                <p>Managing users</p>
  #             </li>
  #          </ul>
  #          <ul>
  #             <li>
  #                <p>Managing groups</p>
  #             </li>
  #          </ul>
  #          <ul>
  #             <li>
  #                <p>Managing resources</p>
  #             </li>
  #          </ul>
  #          <p>All WorkMail API operations are Amazon-authenticated and certificate-signed. They not
  #          only require the use of the AWS SDK, but also allow for the exclusive use of AWS Identity and Access Management
  #          users and roles to help facilitate access, trust, and permission policies. By creating a
  #          role and allowing an IAM user to access the WorkMail site, the IAM user gains full
  #          administrative visibility into the entire WorkMail organization (or as set in the IAM
  #          policy). This includes, but is not limited to, the ability to create, update, and delete
  #          users, groups, and resources. This allows developers to perform the scenarios listed above,
  #          as well as give users the ability to grant access on a selective basis using the IAM
  #          model.</p>
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
    def initialize(config = AWS::SDK::WorkMail::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Adds a member (user or group) to the resource's set of delegates.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateDelegateToResourceInput}.
    #
    # @option params [String] :organization_id
    #   <p>The organization under which the resource exists.</p>
    #
    # @option params [String] :resource_id
    #   <p>The resource for which members (users or groups) are associated.</p>
    #
    # @option params [String] :entity_id
    #   <p>The member (user or group) to associate to the resource.</p>
    #
    # @return [Types::AssociateDelegateToResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_delegate_to_resource(
    #     organization_id: 'OrganizationId', # required
    #     resource_id: 'ResourceId', # required
    #     entity_id: 'EntityId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateDelegateToResourceOutput
    #
    def associate_delegate_to_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateDelegateToResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateDelegateToResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateDelegateToResource
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityStateException, Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::AssociateDelegateToResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateDelegateToResource,
        stubs: @stubs,
        params_class: Params::AssociateDelegateToResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_delegate_to_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a member (user or group) to the group's set.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateMemberToGroupInput}.
    #
    # @option params [String] :organization_id
    #   <p>The organization under which the group exists.</p>
    #
    # @option params [String] :group_id
    #   <p>The group to which the member (user or group) is associated.</p>
    #
    # @option params [String] :member_id
    #   <p>The member (user or group) to associate to the group.</p>
    #
    # @return [Types::AssociateMemberToGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_member_to_group(
    #     organization_id: 'OrganizationId', # required
    #     group_id: 'GroupId', # required
    #     member_id: 'MemberId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateMemberToGroupOutput
    #
    def associate_member_to_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateMemberToGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateMemberToGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateMemberToGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityStateException, Errors::InvalidParameterException, Errors::DirectoryUnavailableException, Errors::UnsupportedOperationException, Errors::DirectoryServiceAuthenticationFailedException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::AssociateMemberToGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateMemberToGroup,
        stubs: @stubs,
        params_class: Params::AssociateMemberToGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_member_to_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Cancels a mailbox export job.</p>
    #          <note>
    #             <p>If the mailbox export job is near completion, it might not be possible to cancel
    #             it.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CancelMailboxExportJobInput}.
    #
    # @option params [String] :client_token
    #   <p>The idempotency token for the client request.</p>
    #
    # @option params [String] :job_id
    #   <p>The job ID.</p>
    #
    # @option params [String] :organization_id
    #   <p>The organization ID.</p>
    #
    # @return [Types::CancelMailboxExportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.cancel_mailbox_export_job(
    #     client_token: 'ClientToken', # required
    #     job_id: 'JobId', # required
    #     organization_id: 'OrganizationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CancelMailboxExportJobOutput
    #
    def cancel_mailbox_export_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CancelMailboxExportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CancelMailboxExportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CancelMailboxExportJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::CancelMailboxExportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CancelMailboxExportJob,
        stubs: @stubs,
        params_class: Params::CancelMailboxExportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :cancel_mailbox_export_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds an alias to the set of a given member (user or group) of Amazon WorkMail.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateAliasInput}.
    #
    # @option params [String] :organization_id
    #   <p>The organization under which the member (user or group) exists.</p>
    #
    # @option params [String] :entity_id
    #   <p>The member (user or group) to which this alias is added.</p>
    #
    # @option params [String] :alias
    #   <p>The alias to add to the member set.</p>
    #
    # @return [Types::CreateAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_alias(
    #     organization_id: 'OrganizationId', # required
    #     entity_id: 'EntityId', # required
    #     alias: 'Alias' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateAliasOutput
    #
    def create_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateAlias
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EmailAddressInUseException, Errors::EntityStateException, Errors::InvalidParameterException, Errors::MailDomainNotFoundException, Errors::MailDomainStateException, Errors::LimitExceededException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::CreateAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateAlias,
        stubs: @stubs,
        params_class: Params::CreateAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a group that can be used in Amazon WorkMail by calling the <a>RegisterToWorkMail</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateGroupInput}.
    #
    # @option params [String] :organization_id
    #   <p>The organization under which the group is to be created.</p>
    #
    # @option params [String] :name
    #   <p>The name of the group.</p>
    #
    # @return [Types::CreateGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_group(
    #     organization_id: 'OrganizationId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateGroupOutput
    #   resp.data.group_id #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NameAvailabilityException, Errors::InvalidParameterException, Errors::DirectoryUnavailableException, Errors::UnsupportedOperationException, Errors::DirectoryServiceAuthenticationFailedException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException, Errors::ReservedNameException]),
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

    # <p>Creates a new mobile device access rule for the specified Amazon WorkMail organization.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateMobileDeviceAccessRuleInput}.
    #
    # @option params [String] :organization_id
    #   <p>The Amazon WorkMail organization under which the rule will be created.</p>
    #
    # @option params [String] :client_token
    #   <p>The idempotency token for the client request.</p>
    #
    # @option params [String] :name
    #   <p>The rule name.</p>
    #
    # @option params [String] :description
    #   <p>The rule description.</p>
    #
    # @option params [String] :effect
    #   <p>The effect of the rule when it matches. Allowed values are <code>ALLOW</code> or <code>DENY</code>.</p>
    #
    # @option params [Array<String>] :device_types
    #   <p>Device types that the rule will match.</p>
    #
    # @option params [Array<String>] :not_device_types
    #   <p>Device types that the rule <b>will not</b> match. All other device types will match.</p>
    #
    # @option params [Array<String>] :device_models
    #   <p>Device models that the rule will match.</p>
    #
    # @option params [Array<String>] :not_device_models
    #   <p>Device models that the rule <b>will not</b> match. All other device models will match.</p>
    #
    # @option params [Array<String>] :device_operating_systems
    #   <p>Device operating systems that the rule will match.</p>
    #
    # @option params [Array<String>] :not_device_operating_systems
    #   <p>Device operating systems that the rule <b>will not</b> match. All other device operating systems will match.</p>
    #
    # @option params [Array<String>] :device_user_agents
    #   <p>Device user agents that the rule will match.</p>
    #
    # @option params [Array<String>] :not_device_user_agents
    #   <p>Device user agents that the rule <b>will not</b> match. All other device user agents will match.</p>
    #
    # @return [Types::CreateMobileDeviceAccessRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_mobile_device_access_rule(
    #     organization_id: 'OrganizationId', # required
    #     client_token: 'ClientToken',
    #     name: 'Name', # required
    #     description: 'Description',
    #     effect: 'ALLOW', # required - accepts ["ALLOW", "DENY"]
    #     device_types: [
    #       'member'
    #     ],
    #     device_models: [
    #       'member'
    #     ],
    #     device_operating_systems: [
    #       'member'
    #     ],
    #     device_user_agents: [
    #       'member'
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateMobileDeviceAccessRuleOutput
    #   resp.data.mobile_device_access_rule_id #=> String
    #
    def create_mobile_device_access_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateMobileDeviceAccessRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateMobileDeviceAccessRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateMobileDeviceAccessRule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::LimitExceededException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::CreateMobileDeviceAccessRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateMobileDeviceAccessRule,
        stubs: @stubs,
        params_class: Params::CreateMobileDeviceAccessRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_mobile_device_access_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new Amazon WorkMail organization. Optionally, you can choose to associate an existing AWS Directory Service directory with your organization. If an AWS Directory Service directory ID is specified, the organization alias must match the directory alias. If you choose not to associate an existing directory with your organization, then we create a new Amazon WorkMail directory for you. For more information, see <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/add_new_organization.html">Adding an organization</a> in the <i>Amazon WorkMail Administrator Guide</i>.</p>
    #          <p>You can associate multiple email domains with an organization, then set your default email domain from the Amazon WorkMail console. You can also associate a domain that is managed in an Amazon Route 53 public hosted zone. For more information, see <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/add_domain.html">Adding a domain</a> and <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/default_domain.html">Choosing the default domain</a> in the <i>Amazon WorkMail Administrator Guide</i>.</p>
    #          <p>Optionally, you can use a customer managed master key from AWS Key Management Service
    #          (AWS KMS) to encrypt email for your organization. If you don't associate an AWS KMS key, Amazon WorkMail creates a
    #          default AWS managed master key for you.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateOrganizationInput}.
    #
    # @option params [String] :directory_id
    #   <p>The AWS Directory Service directory ID.</p>
    #
    # @option params [String] :alias
    #   <p>The organization alias.</p>
    #
    # @option params [String] :client_token
    #   <p>The idempotency token associated with the request.</p>
    #
    # @option params [Array<Domain>] :domains
    #   <p>The email domains to associate with the organization.</p>
    #
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of a customer managed master key from AWS
    #            KMS.</p>
    #
    # @option params [Boolean] :enable_interoperability
    #   <p>When <code>true</code>, allows organization interoperability between Amazon WorkMail and Microsoft Exchange. Can only be set to <code>true</code> if an AD Connector directory ID is included in the request.</p>
    #
    # @return [Types::CreateOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_organization(
    #     directory_id: 'DirectoryId',
    #     alias: 'Alias', # required
    #     client_token: 'ClientToken',
    #     domains: [
    #       {
    #         domain_name: 'DomainName',
    #         hosted_zone_id: 'HostedZoneId'
    #       }
    #     ],
    #     kms_key_arn: 'KmsKeyArn',
    #     enable_interoperability: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateOrganizationOutput
    #   resp.data.organization_id #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NameAvailabilityException, Errors::InvalidParameterException, Errors::DirectoryUnavailableException, Errors::LimitExceededException, Errors::DirectoryInUseException]),
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

    # <p>Creates a new Amazon WorkMail resource. </p>
    #
    # @param [Hash] params
    #   See {Types::CreateResourceInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier associated with the organization for which the resource is
    #            created.</p>
    #
    # @option params [String] :name
    #   <p>The name of the new resource.</p>
    #
    # @option params [String] :type
    #   <p>The type of the new resource. The available types are <code>equipment</code> and
    #               <code>room</code>.</p>
    #
    # @return [Types::CreateResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource(
    #     organization_id: 'OrganizationId', # required
    #     name: 'Name', # required
    #     type: 'ROOM' # required - accepts ["ROOM", "EQUIPMENT"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateResourceOutput
    #   resp.data.resource_id #=> String
    #
    def create_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateResource
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NameAvailabilityException, Errors::InvalidParameterException, Errors::DirectoryUnavailableException, Errors::DirectoryServiceAuthenticationFailedException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException, Errors::ReservedNameException]),
        data_parser: Parsers::CreateResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateResource,
        stubs: @stubs,
        params_class: Params::CreateResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a user who can be used in Amazon WorkMail by calling the <a>RegisterToWorkMail</a> operation.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier of the organization for which the user is created.</p>
    #
    # @option params [String] :name
    #   <p>The name for the new user. WorkMail directory user names have a maximum length of 64. All others have a maximum length of 20.</p>
    #
    # @option params [String] :display_name
    #   <p>The display name for the new user.</p>
    #
    # @option params [String] :password
    #   <p>The password for the new user.</p>
    #
    # @return [Types::CreateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user(
    #     organization_id: 'OrganizationId', # required
    #     name: 'Name', # required
    #     display_name: 'DisplayName', # required
    #     password: 'Password' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUserOutput
    #   resp.data.user_id #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NameAvailabilityException, Errors::InvalidParameterException, Errors::DirectoryUnavailableException, Errors::UnsupportedOperationException, Errors::DirectoryServiceAuthenticationFailedException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException, Errors::ReservedNameException, Errors::InvalidPasswordException]),
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

    # <p>Deletes an access control rule for the specified WorkMail organization.</p>
    #          <note>
    #             <p>Deleting already deleted and non-existing rules does not produce an error. In those cases, the service sends back an HTTP 200 response with an empty HTTP body.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteAccessControlRuleInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier for the organization.</p>
    #
    # @option params [String] :name
    #   <p>The name of the access control rule.</p>
    #
    # @return [Types::DeleteAccessControlRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_access_control_rule(
    #     organization_id: 'OrganizationId', # required
    #     name: 'Name' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAccessControlRuleOutput
    #
    def delete_access_control_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAccessControlRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAccessControlRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAccessControlRule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::DeleteAccessControlRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAccessControlRule,
        stubs: @stubs,
        params_class: Params::DeleteAccessControlRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_access_control_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Remove one or more specified aliases from a set of aliases for a given
    #          user.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteAliasInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the user exists.</p>
    #
    # @option params [String] :entity_id
    #   <p>The identifier for the member (user or group) from which to have the aliases
    #            removed.</p>
    #
    # @option params [String] :alias
    #   <p>The aliases to be removed from the user's set of aliases. Duplicate entries in the
    #            list are collapsed into single entries (the list is transformed into a set).</p>
    #
    # @return [Types::DeleteAliasOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_alias(
    #     organization_id: 'OrganizationId', # required
    #     entity_id: 'EntityId', # required
    #     alias: 'Alias' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteAliasOutput
    #
    def delete_alias(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteAliasInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteAliasInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteAlias
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityStateException, Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::DeleteAlias
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteAlias,
        stubs: @stubs,
        params_class: Params::DeleteAliasOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_alias
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the email monitoring configuration for a specified organization.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteEmailMonitoringConfigurationInput}.
    #
    # @option params [String] :organization_id
    #   <p>The ID of the organization from which the email monitoring configuration is deleted.</p>
    #
    # @return [Types::DeleteEmailMonitoringConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_email_monitoring_configuration(
    #     organization_id: 'OrganizationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteEmailMonitoringConfigurationOutput
    #
    def delete_email_monitoring_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteEmailMonitoringConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteEmailMonitoringConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteEmailMonitoringConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::DeleteEmailMonitoringConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteEmailMonitoringConfiguration,
        stubs: @stubs,
        params_class: Params::DeleteEmailMonitoringConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_email_monitoring_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a group from Amazon WorkMail.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteGroupInput}.
    #
    # @option params [String] :organization_id
    #   <p>The organization that contains the group.</p>
    #
    # @option params [String] :group_id
    #   <p>The identifier of the group to be deleted.</p>
    #
    # @return [Types::DeleteGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_group(
    #     organization_id: 'OrganizationId', # required
    #     group_id: 'GroupId' # required
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityStateException, Errors::InvalidParameterException, Errors::DirectoryUnavailableException, Errors::UnsupportedOperationException, Errors::DirectoryServiceAuthenticationFailedException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
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

    # <p>Deletes permissions granted to a member (user or group).</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteMailboxPermissionsInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier of the organization under which the member (user or group)
    #            exists.</p>
    #
    # @option params [String] :entity_id
    #   <p>The identifier of the member (user or group) that owns the mailbox.</p>
    #
    # @option params [String] :grantee_id
    #   <p>The identifier of the member (user or group) for which to delete granted
    #            permissions.</p>
    #
    # @return [Types::DeleteMailboxPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_mailbox_permissions(
    #     organization_id: 'OrganizationId', # required
    #     entity_id: 'EntityId', # required
    #     grantee_id: 'GranteeId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMailboxPermissionsOutput
    #
    def delete_mailbox_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMailboxPermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMailboxPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMailboxPermissions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityStateException, Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::DeleteMailboxPermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMailboxPermissions,
        stubs: @stubs,
        params_class: Params::DeleteMailboxPermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_mailbox_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the mobile device access override for the given WorkMail organization, user, and device.</p>
    #          <note>
    #             <p>Deleting already deleted and non-existing overrides does not produce an error. In those cases, the service sends back an HTTP 200 response with an empty HTTP body.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteMobileDeviceAccessOverrideInput}.
    #
    # @option params [String] :organization_id
    #   <p>The Amazon WorkMail organization for which the access override will be deleted.</p>
    #
    # @option params [String] :user_id
    #   <p>The WorkMail user for which you want to delete the override. Accepts the following types of user identities:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID:  <code>12345678-1234-1234-1234-123456789012</code> or <code>S-1-1-12-1234567890-123456789-123456789-1234</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Email address: <code>user@domain.tld</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>User name: <code>user</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :device_id
    #   <p>The mobile device for which you delete the override. <code>DeviceId</code> is case insensitive.</p>
    #
    # @return [Types::DeleteMobileDeviceAccessOverrideOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_mobile_device_access_override(
    #     organization_id: 'OrganizationId', # required
    #     user_id: 'UserId', # required
    #     device_id: 'DeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMobileDeviceAccessOverrideOutput
    #
    def delete_mobile_device_access_override(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMobileDeviceAccessOverrideInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMobileDeviceAccessOverrideInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMobileDeviceAccessOverride
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::DeleteMobileDeviceAccessOverride
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMobileDeviceAccessOverride,
        stubs: @stubs,
        params_class: Params::DeleteMobileDeviceAccessOverrideOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_mobile_device_access_override
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a mobile device access rule for the specified Amazon WorkMail organization.</p>
    #          <note>
    #             <p>Deleting already deleted and non-existing rules does not produce an error. In those cases, the service sends back an HTTP 200 response with an empty HTTP body.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::DeleteMobileDeviceAccessRuleInput}.
    #
    # @option params [String] :organization_id
    #   <p>The Amazon WorkMail organization under which the rule will be deleted.</p>
    #
    # @option params [String] :mobile_device_access_rule_id
    #   <p>The identifier of the rule to be deleted.</p>
    #
    # @return [Types::DeleteMobileDeviceAccessRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_mobile_device_access_rule(
    #     organization_id: 'OrganizationId', # required
    #     mobile_device_access_rule_id: 'MobileDeviceAccessRuleId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteMobileDeviceAccessRuleOutput
    #
    def delete_mobile_device_access_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteMobileDeviceAccessRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteMobileDeviceAccessRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteMobileDeviceAccessRule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::DeleteMobileDeviceAccessRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteMobileDeviceAccessRule,
        stubs: @stubs,
        params_class: Params::DeleteMobileDeviceAccessRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_mobile_device_access_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an Amazon WorkMail organization and all underlying AWS resources managed by Amazon WorkMail as part of the organization. You can choose whether to delete the associated directory. For more information, see <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/remove_organization.html">Removing an organization</a> in the <i>Amazon WorkMail Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteOrganizationInput}.
    #
    # @option params [String] :client_token
    #   <p>The idempotency token associated with the request.</p>
    #
    # @option params [String] :organization_id
    #   <p>The organization ID.</p>
    #
    # @option params [Boolean] :delete_directory
    #   <p>If true, deletes the AWS Directory Service directory associated with the organization.</p>
    #
    # @return [Types::DeleteOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_organization(
    #     client_token: 'ClientToken',
    #     organization_id: 'OrganizationId', # required
    #     delete_directory: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteOrganizationOutput
    #   resp.data.organization_id #=> String
    #   resp.data.state #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
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

    # <p>Deletes the specified resource. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourceInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier associated with the organization from which the resource is
    #            deleted.</p>
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the resource to be deleted.</p>
    #
    # @return [Types::DeleteResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource(
    #     organization_id: 'OrganizationId', # required
    #     resource_id: 'ResourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourceOutput
    #
    def delete_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResource
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityStateException, Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::DeleteResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResource,
        stubs: @stubs,
        params_class: Params::DeleteResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified retention policy from the specified organization.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteRetentionPolicyInput}.
    #
    # @option params [String] :organization_id
    #   <p>The organization ID.</p>
    #
    # @option params [String] :id
    #   <p>The retention policy ID.</p>
    #
    # @return [Types::DeleteRetentionPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_retention_policy(
    #     organization_id: 'OrganizationId', # required
    #     id: 'Id' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRetentionPolicyOutput
    #
    def delete_retention_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRetentionPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRetentionPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRetentionPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::DeleteRetentionPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRetentionPolicy,
        stubs: @stubs,
        params_class: Params::DeleteRetentionPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_retention_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a user from Amazon WorkMail and all subsequent systems. Before you can delete a
    #          user, the user state must be <code>DISABLED</code>. Use the <a>DescribeUser</a>
    #          action to confirm the user state.</p>
    #          <p>Deleting a user is permanent and cannot be undone. WorkMail archives user mailboxes for
    #          30 days before they are permanently removed.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserInput}.
    #
    # @option params [String] :organization_id
    #   <p>The organization that contains the user to be deleted.</p>
    #
    # @option params [String] :user_id
    #   <p>The identifier of the user to be deleted.</p>
    #
    # @return [Types::DeleteUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user(
    #     organization_id: 'OrganizationId', # required
    #     user_id: 'UserId' # required
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityStateException, Errors::InvalidParameterException, Errors::DirectoryUnavailableException, Errors::UnsupportedOperationException, Errors::DirectoryServiceAuthenticationFailedException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
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

    # <p>Mark a user, group, or resource as no longer used in Amazon WorkMail. This action
    #          disassociates the mailbox and schedules it for clean-up. WorkMail keeps mailboxes for 30 days
    #          before they are permanently removed. The functionality in the console is
    #             <i>Disable</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterFromWorkMailInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the Amazon WorkMail entity exists.</p>
    #
    # @option params [String] :entity_id
    #   <p>The identifier for the member (user or group) to be updated.</p>
    #
    # @return [Types::DeregisterFromWorkMailOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_from_work_mail(
    #     organization_id: 'OrganizationId', # required
    #     entity_id: 'EntityId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterFromWorkMailOutput
    #
    def deregister_from_work_mail(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterFromWorkMailInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterFromWorkMailInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterFromWorkMail
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityStateException, Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::DeregisterFromWorkMail
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterFromWorkMail,
        stubs: @stubs,
        params_class: Params::DeregisterFromWorkMailOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_from_work_mail
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a domain from Amazon WorkMail, stops email routing to WorkMail, and removes the authorization allowing WorkMail use. SES keeps the domain because other applications may use it. You must first
    #          remove any email address used by WorkMail entities before you remove the domain.</p>
    #
    # @param [Hash] params
    #   See {Types::DeregisterMailDomainInput}.
    #
    # @option params [String] :organization_id
    #   <p>The Amazon WorkMail organization for which the domain will be deregistered.</p>
    #
    # @option params [String] :domain_name
    #   <p>The domain to deregister in WorkMail and SES. </p>
    #
    # @return [Types::DeregisterMailDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deregister_mail_domain(
    #     organization_id: 'OrganizationId', # required
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeregisterMailDomainOutput
    #
    def deregister_mail_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeregisterMailDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeregisterMailDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeregisterMailDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::InvalidCustomSesConfigurationException, Errors::MailDomainInUseException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::DeregisterMailDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeregisterMailDomain,
        stubs: @stubs,
        params_class: Params::DeregisterMailDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deregister_mail_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the current email monitoring configuration for a specified organization.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeEmailMonitoringConfigurationInput}.
    #
    # @option params [String] :organization_id
    #   <p>The ID of the organization for which the email monitoring configuration is described.</p>
    #
    # @return [Types::DescribeEmailMonitoringConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_email_monitoring_configuration(
    #     organization_id: 'OrganizationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeEmailMonitoringConfigurationOutput
    #   resp.data.role_arn #=> String
    #   resp.data.log_group_arn #=> String
    #
    def describe_email_monitoring_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeEmailMonitoringConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeEmailMonitoringConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeEmailMonitoringConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::DescribeEmailMonitoringConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeEmailMonitoringConfiguration,
        stubs: @stubs,
        params_class: Params::DescribeEmailMonitoringConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_email_monitoring_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the data available for the group.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGroupInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the group exists.</p>
    #
    # @option params [String] :group_id
    #   <p>The identifier for the group to be described.</p>
    #
    # @return [Types::DescribeGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_group(
    #     organization_id: 'OrganizationId', # required
    #     group_id: 'GroupId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGroupOutput
    #   resp.data.group_id #=> String
    #   resp.data.name #=> String
    #   resp.data.email #=> String
    #   resp.data.state #=> String, one of ["ENABLED", "DISABLED", "DELETED"]
    #   resp.data.enabled_date #=> Time
    #   resp.data.disabled_date #=> Time
    #
    def describe_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::DescribeGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGroup,
        stubs: @stubs,
        params_class: Params::DescribeGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the settings in a DMARC policy for a specified organization.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeInboundDmarcSettingsInput}.
    #
    # @option params [String] :organization_id
    #   <p>Lists the ID of the given organization.</p>
    #
    # @return [Types::DescribeInboundDmarcSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_inbound_dmarc_settings(
    #     organization_id: 'OrganizationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeInboundDmarcSettingsOutput
    #   resp.data.enforced #=> Boolean
    #
    def describe_inbound_dmarc_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeInboundDmarcSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeInboundDmarcSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeInboundDmarcSettings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::DescribeInboundDmarcSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeInboundDmarcSettings,
        stubs: @stubs,
        params_class: Params::DescribeInboundDmarcSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_inbound_dmarc_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the current status of a mailbox export job.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMailboxExportJobInput}.
    #
    # @option params [String] :job_id
    #   <p>The mailbox export job ID.</p>
    #
    # @option params [String] :organization_id
    #   <p>The organization ID.</p>
    #
    # @return [Types::DescribeMailboxExportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_mailbox_export_job(
    #     job_id: 'JobId', # required
    #     organization_id: 'OrganizationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMailboxExportJobOutput
    #   resp.data.entity_id #=> String
    #   resp.data.description #=> String
    #   resp.data.role_arn #=> String
    #   resp.data.kms_key_arn #=> String
    #   resp.data.s3_bucket_name #=> String
    #   resp.data.s3_prefix #=> String
    #   resp.data.s3_path #=> String
    #   resp.data.estimated_progress #=> Integer
    #   resp.data.state #=> String, one of ["RUNNING", "COMPLETED", "FAILED", "CANCELLED"]
    #   resp.data.error_info #=> String
    #   resp.data.start_time #=> Time
    #   resp.data.end_time #=> Time
    #
    def describe_mailbox_export_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMailboxExportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMailboxExportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMailboxExportJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::DescribeMailboxExportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMailboxExportJob,
        stubs: @stubs,
        params_class: Params::DescribeMailboxExportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_mailbox_export_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides more information regarding a given organization based on its
    #          identifier.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeOrganizationInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier for the organization to be described.</p>
    #
    # @return [Types::DescribeOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_organization(
    #     organization_id: 'OrganizationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeOrganizationOutput
    #   resp.data.organization_id #=> String
    #   resp.data.alias #=> String
    #   resp.data.state #=> String
    #   resp.data.directory_id #=> String
    #   resp.data.directory_type #=> String
    #   resp.data.default_mail_domain #=> String
    #   resp.data.completed_date #=> Time
    #   resp.data.error_message #=> String
    #   resp.data.arn #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException]),
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

    # <p>Returns the data available for the resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeResourceInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier associated with the organization for which the resource is
    #            described.</p>
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the resource to be described.</p>
    #
    # @return [Types::DescribeResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource(
    #     organization_id: 'OrganizationId', # required
    #     resource_id: 'ResourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeResourceOutput
    #   resp.data.resource_id #=> String
    #   resp.data.email #=> String
    #   resp.data.name #=> String
    #   resp.data.type #=> String, one of ["ROOM", "EQUIPMENT"]
    #   resp.data.booking_options #=> Types::BookingOptions
    #   resp.data.booking_options.auto_accept_requests #=> Boolean
    #   resp.data.booking_options.auto_decline_recurring_requests #=> Boolean
    #   resp.data.booking_options.auto_decline_conflicting_requests #=> Boolean
    #   resp.data.state #=> String, one of ["ENABLED", "DISABLED", "DELETED"]
    #   resp.data.enabled_date #=> Time
    #   resp.data.disabled_date #=> Time
    #
    def describe_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeResource
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::DescribeResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeResource,
        stubs: @stubs,
        params_class: Params::DescribeResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Provides information regarding the user.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUserInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the user exists.</p>
    #
    # @option params [String] :user_id
    #   <p>The identifier for the user to be described.</p>
    #
    # @return [Types::DescribeUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_user(
    #     organization_id: 'OrganizationId', # required
    #     user_id: 'UserId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUserOutput
    #   resp.data.user_id #=> String
    #   resp.data.name #=> String
    #   resp.data.email #=> String
    #   resp.data.display_name #=> String
    #   resp.data.state #=> String, one of ["ENABLED", "DISABLED", "DELETED"]
    #   resp.data.user_role #=> String, one of ["USER", "RESOURCE", "SYSTEM_USER"]
    #   resp.data.enabled_date #=> Time
    #   resp.data.disabled_date #=> Time
    #
    def describe_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUser
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::DescribeUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUser,
        stubs: @stubs,
        params_class: Params::DescribeUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a member from the resource's set of delegates.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateDelegateFromResourceInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the resource exists.</p>
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the resource from which delegates' set members are removed.
    #         </p>
    #
    # @option params [String] :entity_id
    #   <p>The identifier for the member (user, group) to be removed from the resource's
    #            delegates.</p>
    #
    # @return [Types::DisassociateDelegateFromResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_delegate_from_resource(
    #     organization_id: 'OrganizationId', # required
    #     resource_id: 'ResourceId', # required
    #     entity_id: 'EntityId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateDelegateFromResourceOutput
    #
    def disassociate_delegate_from_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateDelegateFromResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateDelegateFromResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateDelegateFromResource
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityStateException, Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::DisassociateDelegateFromResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateDelegateFromResource,
        stubs: @stubs,
        params_class: Params::DisassociateDelegateFromResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_delegate_from_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes a member from a group.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateMemberFromGroupInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the group exists.</p>
    #
    # @option params [String] :group_id
    #   <p>The identifier for the group from which members are removed.</p>
    #
    # @option params [String] :member_id
    #   <p>The identifier for the member to be removed to the group.</p>
    #
    # @return [Types::DisassociateMemberFromGroupOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_member_from_group(
    #     organization_id: 'OrganizationId', # required
    #     group_id: 'GroupId', # required
    #     member_id: 'MemberId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateMemberFromGroupOutput
    #
    def disassociate_member_from_group(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateMemberFromGroupInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateMemberFromGroupInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateMemberFromGroup
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityStateException, Errors::InvalidParameterException, Errors::DirectoryUnavailableException, Errors::UnsupportedOperationException, Errors::DirectoryServiceAuthenticationFailedException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::DisassociateMemberFromGroup
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateMemberFromGroup,
        stubs: @stubs,
        params_class: Params::DisassociateMemberFromGroupOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_member_from_group
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the effects of an organization's access control rules as they apply to a
    #          specified IPv4 address, access protocol action, or user ID. </p>
    #
    # @param [Hash] params
    #   See {Types::GetAccessControlEffectInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier for the organization.</p>
    #
    # @option params [String] :ip_address
    #   <p>The IPv4 address.</p>
    #
    # @option params [String] :action
    #   <p>The access protocol action. Valid values include <code>ActiveSync</code>,
    #               <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>, <code>SMTP</code>,
    #               <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>
    #
    # @option params [String] :user_id
    #   <p>The user ID.</p>
    #
    # @return [Types::GetAccessControlEffectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_access_control_effect(
    #     organization_id: 'OrganizationId', # required
    #     ip_address: 'IpAddress', # required
    #     action: 'Action', # required
    #     user_id: 'UserId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetAccessControlEffectOutput
    #   resp.data.effect #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.matched_rules #=> Array<String>
    #   resp.data.matched_rules[0] #=> String
    #
    def get_access_control_effect(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetAccessControlEffectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetAccessControlEffectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetAccessControlEffect
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::GetAccessControlEffect
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetAccessControlEffect,
        stubs: @stubs,
        params_class: Params::GetAccessControlEffectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_access_control_effect
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the default retention policy details for the specified organization.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDefaultRetentionPolicyInput}.
    #
    # @option params [String] :organization_id
    #   <p>The organization ID.</p>
    #
    # @return [Types::GetDefaultRetentionPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_default_retention_policy(
    #     organization_id: 'OrganizationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDefaultRetentionPolicyOutput
    #   resp.data.id #=> String
    #   resp.data.name #=> String
    #   resp.data.description #=> String
    #   resp.data.folder_configurations #=> Array<FolderConfiguration>
    #   resp.data.folder_configurations[0] #=> Types::FolderConfiguration
    #   resp.data.folder_configurations[0].name #=> String, one of ["INBOX", "DELETED_ITEMS", "SENT_ITEMS", "DRAFTS", "JUNK_EMAIL"]
    #   resp.data.folder_configurations[0].action #=> String, one of ["NONE", "DELETE", "PERMANENTLY_DELETE"]
    #   resp.data.folder_configurations[0].period #=> Integer
    #
    def get_default_retention_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDefaultRetentionPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDefaultRetentionPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDefaultRetentionPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::GetDefaultRetentionPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDefaultRetentionPolicy,
        stubs: @stubs,
        params_class: Params::GetDefaultRetentionPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_default_retention_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets details for a mail domain, including domain records required to configure your domain with recommended security.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMailDomainInput}.
    #
    # @option params [String] :organization_id
    #   <p>The Amazon WorkMail organization for which the domain is retrieved.</p>
    #
    # @option params [String] :domain_name
    #   <p>The domain from which you want to retrieve details.</p>
    #
    # @return [Types::GetMailDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_mail_domain(
    #     organization_id: 'OrganizationId', # required
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMailDomainOutput
    #   resp.data.records #=> Array<DnsRecord>
    #   resp.data.records[0] #=> Types::DnsRecord
    #   resp.data.records[0].type #=> String
    #   resp.data.records[0].hostname #=> String
    #   resp.data.records[0].value #=> String
    #   resp.data.is_test_domain #=> Boolean
    #   resp.data.is_default #=> Boolean
    #   resp.data.ownership_verification_status #=> String, one of ["PENDING", "VERIFIED", "FAILED"]
    #   resp.data.dkim_verification_status #=> String, one of ["PENDING", "VERIFIED", "FAILED"]
    #
    def get_mail_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMailDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMailDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMailDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::MailDomainNotFoundException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::GetMailDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMailDomain,
        stubs: @stubs,
        params_class: Params::GetMailDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_mail_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Requests a user's mailbox details for a specified organization and user.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMailboxDetailsInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier for the organization that contains the user whose mailbox details are
    #            being requested.</p>
    #
    # @option params [String] :user_id
    #   <p>The identifier for the user whose mailbox details are being requested.</p>
    #
    # @return [Types::GetMailboxDetailsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_mailbox_details(
    #     organization_id: 'OrganizationId', # required
    #     user_id: 'UserId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMailboxDetailsOutput
    #   resp.data.mailbox_quota #=> Integer
    #   resp.data.mailbox_size #=> Float
    #
    def get_mailbox_details(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMailboxDetailsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMailboxDetailsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMailboxDetails
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::GetMailboxDetails
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMailboxDetails,
        stubs: @stubs,
        params_class: Params::GetMailboxDetailsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_mailbox_details
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Simulates the effect of the mobile device access rules for the given attributes of a sample access event. Use this method to test the effects of the current set of mobile device access
    #          rules for the Amazon WorkMail organization for a particular user's attributes.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMobileDeviceAccessEffectInput}.
    #
    # @option params [String] :organization_id
    #   <p>The Amazon WorkMail organization to simulate the access effect for.</p>
    #
    # @option params [String] :device_type
    #   <p>Device type the simulated user will report.</p>
    #
    # @option params [String] :device_model
    #   <p>Device model the simulated user will report.</p>
    #
    # @option params [String] :device_operating_system
    #   <p>Device operating system the simulated user will report.</p>
    #
    # @option params [String] :device_user_agent
    #   <p>Device user agent the simulated user will report.</p>
    #
    # @return [Types::GetMobileDeviceAccessEffectOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_mobile_device_access_effect(
    #     organization_id: 'OrganizationId', # required
    #     device_type: 'DeviceType',
    #     device_model: 'DeviceModel',
    #     device_operating_system: 'DeviceOperatingSystem',
    #     device_user_agent: 'DeviceUserAgent'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMobileDeviceAccessEffectOutput
    #   resp.data.effect #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.matched_rules #=> Array<MobileDeviceAccessMatchedRule>
    #   resp.data.matched_rules[0] #=> Types::MobileDeviceAccessMatchedRule
    #   resp.data.matched_rules[0].mobile_device_access_rule_id #=> String
    #   resp.data.matched_rules[0].name #=> String
    #
    def get_mobile_device_access_effect(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMobileDeviceAccessEffectInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMobileDeviceAccessEffectInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMobileDeviceAccessEffect
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::GetMobileDeviceAccessEffect
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMobileDeviceAccessEffect,
        stubs: @stubs,
        params_class: Params::GetMobileDeviceAccessEffectOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_mobile_device_access_effect
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the mobile device access override for the given WorkMail organization, user, and device.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMobileDeviceAccessOverrideInput}.
    #
    # @option params [String] :organization_id
    #   <p>The Amazon WorkMail organization to which you want to apply the override.</p>
    #
    # @option params [String] :user_id
    #   <p>Identifies the WorkMail user for the override. Accepts the following types of user identities: </p>
    #            <ul>
    #               <li>
    #                  <p>User ID: <code>12345678-1234-1234-1234-123456789012</code> or <code>S-1-1-12-1234567890-123456789-123456789-1234</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Email address: <code>user@domain.tld</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>User name: <code>user</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :device_id
    #   <p>The mobile device to which the override applies. <code>DeviceId</code> is case insensitive.</p>
    #
    # @return [Types::GetMobileDeviceAccessOverrideOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_mobile_device_access_override(
    #     organization_id: 'OrganizationId', # required
    #     user_id: 'UserId', # required
    #     device_id: 'DeviceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMobileDeviceAccessOverrideOutput
    #   resp.data.user_id #=> String
    #   resp.data.device_id #=> String
    #   resp.data.effect #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.description #=> String
    #   resp.data.date_created #=> Time
    #   resp.data.date_modified #=> Time
    #
    def get_mobile_device_access_override(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMobileDeviceAccessOverrideInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMobileDeviceAccessOverrideInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMobileDeviceAccessOverride
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::GetMobileDeviceAccessOverride
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMobileDeviceAccessOverride,
        stubs: @stubs,
        params_class: Params::GetMobileDeviceAccessOverrideOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_mobile_device_access_override
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the access control rules for the specified organization.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAccessControlRulesInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier for the organization.</p>
    #
    # @return [Types::ListAccessControlRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_access_control_rules(
    #     organization_id: 'OrganizationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAccessControlRulesOutput
    #   resp.data.rules #=> Array<AccessControlRule>
    #   resp.data.rules[0] #=> Types::AccessControlRule
    #   resp.data.rules[0].name #=> String
    #   resp.data.rules[0].effect #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.rules[0].description #=> String
    #   resp.data.rules[0].ip_ranges #=> Array<String>
    #   resp.data.rules[0].ip_ranges[0] #=> String
    #   resp.data.rules[0].not_ip_ranges #=> Array<String>
    #   resp.data.rules[0].actions #=> Array<String>
    #   resp.data.rules[0].actions[0] #=> String
    #   resp.data.rules[0].not_actions #=> Array<String>
    #   resp.data.rules[0].user_ids #=> Array<String>
    #   resp.data.rules[0].user_ids[0] #=> String
    #   resp.data.rules[0].not_user_ids #=> Array<String>
    #   resp.data.rules[0].date_created #=> Time
    #   resp.data.rules[0].date_modified #=> Time
    #
    def list_access_control_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAccessControlRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAccessControlRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAccessControlRules
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::ListAccessControlRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAccessControlRules,
        stubs: @stubs,
        params_class: Params::ListAccessControlRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_access_control_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a paginated call to list the aliases associated with a given
    #          entity.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAliasesInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the entity exists.</p>
    #
    # @option params [String] :entity_id
    #   <p>The identifier for the entity for which to list the aliases.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListAliasesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_aliases(
    #     organization_id: 'OrganizationId', # required
    #     entity_id: 'EntityId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAliasesOutput
    #   resp.data.aliases #=> Array<String>
    #   resp.data.aliases[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_aliases(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAliasesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAliasesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAliases
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityStateException, Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::ListAliases
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAliases,
        stubs: @stubs,
        params_class: Params::ListAliasesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_aliases
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns an overview of the members of a group. Users and groups can be members of a
    #          group.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGroupMembersInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the group exists.</p>
    #
    # @option params [String] :group_id
    #   <p>The identifier for the group to which the members (users or groups) are
    #            associated.</p>
    #
    # @option params [String] :next_token
    #   <p> The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListGroupMembersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_group_members(
    #     organization_id: 'OrganizationId', # required
    #     group_id: 'GroupId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGroupMembersOutput
    #   resp.data.members #=> Array<Member>
    #   resp.data.members[0] #=> Types::Member
    #   resp.data.members[0].id #=> String
    #   resp.data.members[0].name #=> String
    #   resp.data.members[0].type #=> String, one of ["GROUP", "USER"]
    #   resp.data.members[0].state #=> String, one of ["ENABLED", "DISABLED", "DELETED"]
    #   resp.data.members[0].enabled_date #=> Time
    #   resp.data.members[0].disabled_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_group_members(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListGroupMembersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListGroupMembersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListGroupMembers
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityStateException, Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::ListGroupMembers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListGroupMembers,
        stubs: @stubs,
        params_class: Params::ListGroupMembersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_group_members
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns summaries of the organization's groups.</p>
    #
    # @param [Hash] params
    #   See {Types::ListGroupsInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the groups exist.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_groups(
    #     organization_id: 'OrganizationId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListGroupsOutput
    #   resp.data.groups #=> Array<Group>
    #   resp.data.groups[0] #=> Types::Group
    #   resp.data.groups[0].id #=> String
    #   resp.data.groups[0].email #=> String
    #   resp.data.groups[0].name #=> String
    #   resp.data.groups[0].state #=> String, one of ["ENABLED", "DISABLED", "DELETED"]
    #   resp.data.groups[0].enabled_date #=> Time
    #   resp.data.groups[0].disabled_date #=> Time
    #   resp.data.next_token #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
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

    # <p>Lists the mail domains in a given Amazon WorkMail organization.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMailDomainsInput}.
    #
    # @option params [String] :organization_id
    #   <p>The Amazon WorkMail organization for which to list domains.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not require a token.</p>
    #
    # @return [Types::ListMailDomainsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_mail_domains(
    #     organization_id: 'OrganizationId', # required
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMailDomainsOutput
    #   resp.data.mail_domains #=> Array<MailDomainSummary>
    #   resp.data.mail_domains[0] #=> Types::MailDomainSummary
    #   resp.data.mail_domains[0].domain_name #=> String
    #   resp.data.mail_domains[0].default_domain #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_mail_domains(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMailDomainsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMailDomainsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMailDomains
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::ListMailDomains
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMailDomains,
        stubs: @stubs,
        params_class: Params::ListMailDomainsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_mail_domains
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the mailbox export jobs started for the specified organization within the last
    #          seven days.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMailboxExportJobsInput}.
    #
    # @option params [String] :organization_id
    #   <p>The organization ID.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListMailboxExportJobsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_mailbox_export_jobs(
    #     organization_id: 'OrganizationId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMailboxExportJobsOutput
    #   resp.data.jobs #=> Array<MailboxExportJob>
    #   resp.data.jobs[0] #=> Types::MailboxExportJob
    #   resp.data.jobs[0].job_id #=> String
    #   resp.data.jobs[0].entity_id #=> String
    #   resp.data.jobs[0].description #=> String
    #   resp.data.jobs[0].s3_bucket_name #=> String
    #   resp.data.jobs[0].s3_path #=> String
    #   resp.data.jobs[0].estimated_progress #=> Integer
    #   resp.data.jobs[0].state #=> String, one of ["RUNNING", "COMPLETED", "FAILED", "CANCELLED"]
    #   resp.data.jobs[0].start_time #=> Time
    #   resp.data.jobs[0].end_time #=> Time
    #   resp.data.next_token #=> String
    #
    def list_mailbox_export_jobs(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMailboxExportJobsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMailboxExportJobsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMailboxExportJobs
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::ListMailboxExportJobs
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMailboxExportJobs,
        stubs: @stubs,
        params_class: Params::ListMailboxExportJobsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_mailbox_export_jobs
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the mailbox permissions associated with a user, group, or resource
    #          mailbox.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMailboxPermissionsInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier of the organization under which the user, group, or resource
    #            exists.</p>
    #
    # @option params [String] :entity_id
    #   <p>The identifier of the user, group, or resource for which to list mailbox
    #            permissions.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListMailboxPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_mailbox_permissions(
    #     organization_id: 'OrganizationId', # required
    #     entity_id: 'EntityId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMailboxPermissionsOutput
    #   resp.data.permissions #=> Array<Permission>
    #   resp.data.permissions[0] #=> Types::Permission
    #   resp.data.permissions[0].grantee_id #=> String
    #   resp.data.permissions[0].grantee_type #=> String, one of ["GROUP", "USER"]
    #   resp.data.permissions[0].permission_values #=> Array<String>
    #   resp.data.permissions[0].permission_values[0] #=> String, one of ["FULL_ACCESS", "SEND_AS", "SEND_ON_BEHALF"]
    #   resp.data.next_token #=> String
    #
    def list_mailbox_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMailboxPermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMailboxPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMailboxPermissions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::ListMailboxPermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMailboxPermissions,
        stubs: @stubs,
        params_class: Params::ListMailboxPermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_mailbox_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all the mobile device access overrides for any given combination of WorkMail organization, user, or device.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMobileDeviceAccessOverridesInput}.
    #
    # @option params [String] :organization_id
    #   <p>The Amazon WorkMail organization under which to list mobile device access overrides.</p>
    #
    # @option params [String] :user_id
    #   <p>The WorkMail user under which you list the mobile device access overrides. Accepts the following types of user identities:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID: <code>12345678-1234-1234-1234-123456789012</code> or <code>S-1-1-12-1234567890-123456789-123456789-1234</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Email address: <code>user@domain.tld</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>User name: <code>user</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :device_id
    #   <p>The mobile device to which the access override applies.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not require a token.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListMobileDeviceAccessOverridesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_mobile_device_access_overrides(
    #     organization_id: 'OrganizationId', # required
    #     user_id: 'UserId',
    #     device_id: 'DeviceId',
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMobileDeviceAccessOverridesOutput
    #   resp.data.overrides #=> Array<MobileDeviceAccessOverride>
    #   resp.data.overrides[0] #=> Types::MobileDeviceAccessOverride
    #   resp.data.overrides[0].user_id #=> String
    #   resp.data.overrides[0].device_id #=> String
    #   resp.data.overrides[0].effect #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.overrides[0].description #=> String
    #   resp.data.overrides[0].date_created #=> Time
    #   resp.data.overrides[0].date_modified #=> Time
    #   resp.data.next_token #=> String
    #
    def list_mobile_device_access_overrides(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMobileDeviceAccessOverridesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMobileDeviceAccessOverridesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMobileDeviceAccessOverrides
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::ListMobileDeviceAccessOverrides
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMobileDeviceAccessOverrides,
        stubs: @stubs,
        params_class: Params::ListMobileDeviceAccessOverridesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_mobile_device_access_overrides
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the mobile device access rules for the specified Amazon WorkMail organization.</p>
    #
    # @param [Hash] params
    #   See {Types::ListMobileDeviceAccessRulesInput}.
    #
    # @option params [String] :organization_id
    #   <p>The Amazon WorkMail organization for which to list the rules.</p>
    #
    # @return [Types::ListMobileDeviceAccessRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_mobile_device_access_rules(
    #     organization_id: 'OrganizationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListMobileDeviceAccessRulesOutput
    #   resp.data.rules #=> Array<MobileDeviceAccessRule>
    #   resp.data.rules[0] #=> Types::MobileDeviceAccessRule
    #   resp.data.rules[0].mobile_device_access_rule_id #=> String
    #   resp.data.rules[0].name #=> String
    #   resp.data.rules[0].description #=> String
    #   resp.data.rules[0].effect #=> String, one of ["ALLOW", "DENY"]
    #   resp.data.rules[0].device_types #=> Array<String>
    #   resp.data.rules[0].device_types[0] #=> String
    #   resp.data.rules[0].not_device_types #=> Array<String>
    #   resp.data.rules[0].device_models #=> Array<String>
    #   resp.data.rules[0].device_models[0] #=> String
    #   resp.data.rules[0].not_device_models #=> Array<String>
    #   resp.data.rules[0].device_operating_systems #=> Array<String>
    #   resp.data.rules[0].device_operating_systems[0] #=> String
    #   resp.data.rules[0].not_device_operating_systems #=> Array<String>
    #   resp.data.rules[0].device_user_agents #=> Array<String>
    #   resp.data.rules[0].device_user_agents[0] #=> String
    #   resp.data.rules[0].not_device_user_agents #=> Array<String>
    #   resp.data.rules[0].date_created #=> Time
    #   resp.data.rules[0].date_modified #=> Time
    #
    def list_mobile_device_access_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListMobileDeviceAccessRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListMobileDeviceAccessRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListMobileDeviceAccessRules
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::ListMobileDeviceAccessRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListMobileDeviceAccessRules,
        stubs: @stubs,
        params_class: Params::ListMobileDeviceAccessRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_mobile_device_access_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns summaries of the customer's organizations.</p>
    #
    # @param [Hash] params
    #   See {Types::ListOrganizationsInput}.
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListOrganizationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_organizations(
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListOrganizationsOutput
    #   resp.data.organization_summaries #=> Array<OrganizationSummary>
    #   resp.data.organization_summaries[0] #=> Types::OrganizationSummary
    #   resp.data.organization_summaries[0].organization_id #=> String
    #   resp.data.organization_summaries[0].alias #=> String
    #   resp.data.organization_summaries[0].default_mail_domain #=> String
    #   resp.data.organization_summaries[0].error_message #=> String
    #   resp.data.organization_summaries[0].state #=> String
    #   resp.data.next_token #=> String
    #
    def list_organizations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListOrganizationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListOrganizationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListOrganizations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException]),
        data_parser: Parsers::ListOrganizations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListOrganizations,
        stubs: @stubs,
        params_class: Params::ListOrganizationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_organizations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the delegates associated with a resource. Users and groups can be resource
    #          delegates and answer requests on behalf of the resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResourceDelegatesInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier for the organization that contains the resource for which delegates
    #            are listed.</p>
    #
    # @option params [String] :resource_id
    #   <p>The identifier for the resource whose delegates are listed.</p>
    #
    # @option params [String] :next_token
    #   <p>The token used to paginate through the delegates associated with a
    #            resource.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The number of maximum results in a page.</p>
    #
    # @return [Types::ListResourceDelegatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_delegates(
    #     organization_id: 'OrganizationId', # required
    #     resource_id: 'ResourceId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourceDelegatesOutput
    #   resp.data.delegates #=> Array<Delegate>
    #   resp.data.delegates[0] #=> Types::Delegate
    #   resp.data.delegates[0].id #=> String
    #   resp.data.delegates[0].type #=> String, one of ["GROUP", "USER"]
    #   resp.data.next_token #=> String
    #
    def list_resource_delegates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourceDelegatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourceDelegatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResourceDelegates
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityStateException, Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::ListResourceDelegates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResourceDelegates,
        stubs: @stubs,
        params_class: Params::ListResourceDelegatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resource_delegates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns summaries of the organization's resources.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResourcesInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the resources exist.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources(
    #     organization_id: 'OrganizationId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourcesOutput
    #   resp.data.resources #=> Array<Resource>
    #   resp.data.resources[0] #=> Types::Resource
    #   resp.data.resources[0].id #=> String
    #   resp.data.resources[0].email #=> String
    #   resp.data.resources[0].name #=> String
    #   resp.data.resources[0].type #=> String, one of ["ROOM", "EQUIPMENT"]
    #   resp.data.resources[0].state #=> String, one of ["ENABLED", "DISABLED", "DELETED"]
    #   resp.data.resources[0].enabled_date #=> Time
    #   resp.data.resources[0].disabled_date #=> Time
    #   resp.data.next_token #=> String
    #
    def list_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResources
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::ListResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResources,
        stubs: @stubs,
        params_class: Params::ListResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the tags applied to an Amazon WorkMail organization resource.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
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

    # <p>Returns summaries of the organization's users.</p>
    #
    # @param [Hash] params
    #   See {Types::ListUsersInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the users exist.</p>
    #
    # @option params [String] :next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #
    # @option params [Integer] :max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    # @return [Types::ListUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_users(
    #     organization_id: 'OrganizationId', # required
    #     next_token: 'NextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListUsersOutput
    #   resp.data.users #=> Array<User>
    #   resp.data.users[0] #=> Types::User
    #   resp.data.users[0].id #=> String
    #   resp.data.users[0].email #=> String
    #   resp.data.users[0].name #=> String
    #   resp.data.users[0].display_name #=> String
    #   resp.data.users[0].state #=> String, one of ["ENABLED", "DISABLED", "DELETED"]
    #   resp.data.users[0].user_role #=> String, one of ["USER", "RESOURCE", "SYSTEM_USER"]
    #   resp.data.users[0].enabled_date #=> Time
    #   resp.data.users[0].disabled_date #=> Time
    #   resp.data.next_token #=> String
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
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
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

    # <p>Adds a new access control rule for the specified organization. The rule allows or
    #          denies access to the organization for the specified IPv4 addresses, access protocol
    #          actions, and user IDs. Adding a new rule with the same name as an existing rule replaces
    #          the older rule.</p>
    #
    # @param [Hash] params
    #   See {Types::PutAccessControlRuleInput}.
    #
    # @option params [String] :name
    #   <p>The rule name.</p>
    #
    # @option params [String] :effect
    #   <p>The rule effect.</p>
    #
    # @option params [String] :description
    #   <p>The rule description.</p>
    #
    # @option params [Array<String>] :ip_ranges
    #   <p>IPv4 CIDR ranges to include in the rule.</p>
    #
    # @option params [Array<String>] :not_ip_ranges
    #   <p>IPv4 CIDR ranges to exclude from the rule.</p>
    #
    # @option params [Array<String>] :actions
    #   <p>Access protocol actions to include in the rule. Valid values include
    #               <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>,
    #               <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>
    #
    # @option params [Array<String>] :not_actions
    #   <p>Access protocol actions to exclude from the rule. Valid values include
    #               <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>,
    #               <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>
    #
    # @option params [Array<String>] :user_ids
    #   <p>User IDs to include in the rule.</p>
    #
    # @option params [Array<String>] :not_user_ids
    #   <p>User IDs to exclude from the rule.</p>
    #
    # @option params [String] :organization_id
    #   <p>The identifier of the organization.</p>
    #
    # @return [Types::PutAccessControlRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_access_control_rule(
    #     name: 'Name', # required
    #     effect: 'ALLOW', # required - accepts ["ALLOW", "DENY"]
    #     description: 'Description', # required
    #     ip_ranges: [
    #       'member'
    #     ],
    #     actions: [
    #       'member'
    #     ],
    #     user_ids: [
    #       'member'
    #     ],
    #     organization_id: 'OrganizationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutAccessControlRuleOutput
    #
    def put_access_control_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutAccessControlRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutAccessControlRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutAccessControlRule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::LimitExceededException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::PutAccessControlRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutAccessControlRule,
        stubs: @stubs,
        params_class: Params::PutAccessControlRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_access_control_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates the email monitoring configuration for a specified organization.</p>
    #
    # @param [Hash] params
    #   See {Types::PutEmailMonitoringConfigurationInput}.
    #
    # @option params [String] :organization_id
    #   <p>The ID of the organization for which the email monitoring configuration is set.</p>
    #
    # @option params [String] :role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Role associated with the email monitoring configuration.</p>
    #
    # @option params [String] :log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch Log group associated with the email monitoring configuration.</p>
    #
    # @return [Types::PutEmailMonitoringConfigurationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_email_monitoring_configuration(
    #     organization_id: 'OrganizationId', # required
    #     role_arn: 'RoleArn', # required
    #     log_group_arn: 'LogGroupArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutEmailMonitoringConfigurationOutput
    #
    def put_email_monitoring_configuration(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutEmailMonitoringConfigurationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutEmailMonitoringConfigurationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutEmailMonitoringConfiguration
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ResourceNotFoundException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::PutEmailMonitoringConfiguration
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutEmailMonitoringConfiguration,
        stubs: @stubs,
        params_class: Params::PutEmailMonitoringConfigurationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_email_monitoring_configuration
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables or disables a DMARC policy for a given organization.</p>
    #
    # @param [Hash] params
    #   See {Types::PutInboundDmarcSettingsInput}.
    #
    # @option params [String] :organization_id
    #   <p>The ID of the organization that you are applying the DMARC policy to. </p>
    #
    # @option params [Boolean] :enforced
    #   <p>Enforces or suspends a policy after it's applied.</p>
    #
    # @return [Types::PutInboundDmarcSettingsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_inbound_dmarc_settings(
    #     organization_id: 'OrganizationId', # required
    #     enforced: false # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutInboundDmarcSettingsOutput
    #
    def put_inbound_dmarc_settings(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutInboundDmarcSettingsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutInboundDmarcSettingsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutInboundDmarcSettings
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::PutInboundDmarcSettings
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutInboundDmarcSettings,
        stubs: @stubs,
        params_class: Params::PutInboundDmarcSettingsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_inbound_dmarc_settings
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets permissions for a user, group, or resource. This replaces any pre-existing
    #          permissions.</p>
    #
    # @param [Hash] params
    #   See {Types::PutMailboxPermissionsInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier of the organization under which the user, group, or resource
    #            exists.</p>
    #
    # @option params [String] :entity_id
    #   <p>The identifier of the user, group, or resource for which to update mailbox
    #            permissions.</p>
    #
    # @option params [String] :grantee_id
    #   <p>The identifier of the user, group, or resource to which to grant the
    #            permissions.</p>
    #
    # @option params [Array<String>] :permission_values
    #   <p>The permissions granted to the grantee. SEND_AS allows the grantee to send email as
    #            the owner of the mailbox (the grantee is not mentioned on these emails). SEND_ON_BEHALF
    #            allows the grantee to send email on behalf of the owner of the mailbox (the grantee is not
    #            mentioned as the physical sender of these emails). FULL_ACCESS allows the grantee full
    #            access to the mailbox, irrespective of other folder-level permissions set on the
    #            mailbox.</p>
    #
    # @return [Types::PutMailboxPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_mailbox_permissions(
    #     organization_id: 'OrganizationId', # required
    #     entity_id: 'EntityId', # required
    #     grantee_id: 'GranteeId', # required
    #     permission_values: [
    #       'FULL_ACCESS' # accepts ["FULL_ACCESS", "SEND_AS", "SEND_ON_BEHALF"]
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutMailboxPermissionsOutput
    #
    def put_mailbox_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutMailboxPermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutMailboxPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutMailboxPermissions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityStateException, Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::PutMailboxPermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutMailboxPermissions,
        stubs: @stubs,
        params_class: Params::PutMailboxPermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_mailbox_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates or updates a mobile device access override for the given WorkMail organization, user, and device.</p>
    #
    # @param [Hash] params
    #   See {Types::PutMobileDeviceAccessOverrideInput}.
    #
    # @option params [String] :organization_id
    #   <p>Identifies the Amazon WorkMail organization for which you create the override.</p>
    #
    # @option params [String] :user_id
    #   <p>The WorkMail user for which you create the override. Accepts the following types of user identities:</p>
    #            <ul>
    #               <li>
    #                  <p>User ID: <code>12345678-1234-1234-1234-123456789012</code> or <code>S-1-1-12-1234567890-123456789-123456789-1234</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>Email address: <code>user@domain.tld</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>User name: <code>user</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :device_id
    #   <p>The mobile device for which you create the override. <code>DeviceId</code> is case insensitive.</p>
    #
    # @option params [String] :effect
    #   <p>The effect of the override, <code>ALLOW</code> or <code>DENY</code>.</p>
    #
    # @option params [String] :description
    #   <p>A description of the override.</p>
    #
    # @return [Types::PutMobileDeviceAccessOverrideOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_mobile_device_access_override(
    #     organization_id: 'OrganizationId', # required
    #     user_id: 'UserId', # required
    #     device_id: 'DeviceId', # required
    #     effect: 'ALLOW', # required - accepts ["ALLOW", "DENY"]
    #     description: 'Description'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutMobileDeviceAccessOverrideOutput
    #
    def put_mobile_device_access_override(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutMobileDeviceAccessOverrideInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutMobileDeviceAccessOverrideInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutMobileDeviceAccessOverride
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityStateException, Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::PutMobileDeviceAccessOverride
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutMobileDeviceAccessOverride,
        stubs: @stubs,
        params_class: Params::PutMobileDeviceAccessOverrideOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_mobile_device_access_override
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Puts a retention policy to the specified organization.</p>
    #
    # @param [Hash] params
    #   See {Types::PutRetentionPolicyInput}.
    #
    # @option params [String] :organization_id
    #   <p>The organization ID.</p>
    #
    # @option params [String] :id
    #   <p>The retention policy ID.</p>
    #
    # @option params [String] :name
    #   <p>The retention policy name.</p>
    #
    # @option params [String] :description
    #   <p>The retention policy description.</p>
    #
    # @option params [Array<FolderConfiguration>] :folder_configurations
    #   <p>The retention policy folder configurations.</p>
    #
    # @return [Types::PutRetentionPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_retention_policy(
    #     organization_id: 'OrganizationId', # required
    #     id: 'Id',
    #     name: 'Name', # required
    #     description: 'Description',
    #     folder_configurations: [
    #       {
    #         name: 'INBOX', # required - accepts ["INBOX", "DELETED_ITEMS", "SENT_ITEMS", "DRAFTS", "JUNK_EMAIL"]
    #         action: 'NONE', # required - accepts ["NONE", "DELETE", "PERMANENTLY_DELETE"]
    #         period: 1
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRetentionPolicyOutput
    #
    def put_retention_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRetentionPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRetentionPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRetentionPolicy
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::LimitExceededException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::PutRetentionPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRetentionPolicy,
        stubs: @stubs,
        params_class: Params::PutRetentionPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_retention_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers a new domain in Amazon WorkMail and SES, and configures it for use by WorkMail. Emails received by SES for this domain are routed to the specified WorkMail organization, and WorkMail has
    #          permanent permission to use the specified domain for sending your users' emails.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterMailDomainInput}.
    #
    # @option params [String] :client_token
    #   <p>Idempotency token used when retrying requests.</p>
    #
    # @option params [String] :organization_id
    #   <p>The Amazon WorkMail organization under which you're creating the domain.</p>
    #
    # @option params [String] :domain_name
    #   <p>The name of the mail domain to create in Amazon WorkMail and SES.</p>
    #
    # @return [Types::RegisterMailDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_mail_domain(
    #     client_token: 'ClientToken',
    #     organization_id: 'OrganizationId', # required
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterMailDomainOutput
    #
    def register_mail_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterMailDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterMailDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterMailDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::MailDomainInUseException, Errors::LimitExceededException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::RegisterMailDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterMailDomain,
        stubs: @stubs,
        params_class: Params::RegisterMailDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_mail_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Registers an existing and disabled user, group, or resource for Amazon WorkMail use by
    #          associating a mailbox and calendaring capabilities. It performs no change if the user,
    #          group, or resource is enabled and fails if the user, group, or resource is deleted. This
    #          operation results in the accumulation of costs. For more information, see <a href="https://aws.amazon.com/workmail/pricing">Pricing</a>. The equivalent console
    #          functionality for this operation is <i>Enable</i>. </p>
    #          <p>Users can either be created by calling the <a>CreateUser</a> API operation
    #          or they can be synchronized from your directory. For more information, see <a>DeregisterFromWorkMail</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::RegisterToWorkMailInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier for the organization under which the user, group, or resource
    #            exists.</p>
    #
    # @option params [String] :entity_id
    #   <p>The identifier for the user, group, or resource to be updated.</p>
    #
    # @option params [String] :email
    #   <p>The email for the user, group, or resource to be updated.</p>
    #
    # @return [Types::RegisterToWorkMailOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.register_to_work_mail(
    #     organization_id: 'OrganizationId', # required
    #     entity_id: 'EntityId', # required
    #     email: 'Email' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RegisterToWorkMailOutput
    #
    def register_to_work_mail(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RegisterToWorkMailInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RegisterToWorkMailInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RegisterToWorkMail
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityAlreadyRegisteredException, Errors::EmailAddressInUseException, Errors::EntityStateException, Errors::InvalidParameterException, Errors::DirectoryUnavailableException, Errors::MailDomainNotFoundException, Errors::MailDomainStateException, Errors::DirectoryServiceAuthenticationFailedException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::RegisterToWorkMail
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RegisterToWorkMail,
        stubs: @stubs,
        params_class: Params::RegisterToWorkMailOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :register_to_work_mail
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Allows the administrator to reset the password for a user.</p>
    #
    # @param [Hash] params
    #   See {Types::ResetPasswordInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier of the organization that contains the user for which the password is
    #            reset.</p>
    #
    # @option params [String] :user_id
    #   <p>The identifier of the user for whom the password is reset.</p>
    #
    # @option params [String] :password
    #   <p>The new password for the user.</p>
    #
    # @return [Types::ResetPasswordOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reset_password(
    #     organization_id: 'OrganizationId', # required
    #     user_id: 'UserId', # required
    #     password: 'Password' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ResetPasswordOutput
    #
    def reset_password(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ResetPasswordInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ResetPasswordInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ResetPassword
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityStateException, Errors::InvalidParameterException, Errors::DirectoryUnavailableException, Errors::UnsupportedOperationException, Errors::DirectoryServiceAuthenticationFailedException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException, Errors::InvalidPasswordException]),
        data_parser: Parsers::ResetPassword
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ResetPassword,
        stubs: @stubs,
        params_class: Params::ResetPasswordOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reset_password
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Starts a mailbox export job to export MIME-format email messages and calendar items
    #          from the specified mailbox to the specified Amazon Simple Storage Service (Amazon S3)
    #          bucket. For more information, see <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/mail-export.html">Exporting mailbox content</a> in
    #          the <i>Amazon WorkMail Administrator Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::StartMailboxExportJobInput}.
    #
    # @option params [String] :client_token
    #   <p>The idempotency token for the client request.</p>
    #
    # @option params [String] :organization_id
    #   <p>The identifier associated with the organization.</p>
    #
    # @option params [String] :entity_id
    #   <p>The identifier of the user or resource associated with the mailbox.</p>
    #
    # @option params [String] :description
    #   <p>The mailbox export job description.</p>
    #
    # @option params [String] :role_arn
    #   <p>The ARN of the AWS Identity and Access Management (IAM) role that grants write permission to the S3
    #            bucket.</p>
    #
    # @option params [String] :kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the symmetric AWS Key Management Service (AWS KMS)
    #            key that encrypts the exported mailbox content.</p>
    #
    # @option params [String] :s3_bucket_name
    #   <p>The name of the S3 bucket.</p>
    #
    # @option params [String] :s3_prefix
    #   <p>The S3 bucket prefix.</p>
    #
    # @return [Types::StartMailboxExportJobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.start_mailbox_export_job(
    #     client_token: 'ClientToken', # required
    #     organization_id: 'OrganizationId', # required
    #     entity_id: 'EntityId', # required
    #     description: 'Description',
    #     role_arn: 'RoleArn', # required
    #     kms_key_arn: 'KmsKeyArn', # required
    #     s3_bucket_name: 'S3BucketName', # required
    #     s3_prefix: 'S3Prefix' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::StartMailboxExportJobOutput
    #   resp.data.job_id #=> String
    #
    def start_mailbox_export_job(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::StartMailboxExportJobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::StartMailboxExportJobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::StartMailboxExportJob
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::LimitExceededException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::StartMailboxExportJob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::StartMailboxExportJob,
        stubs: @stubs,
        params_class: Params::StartMailboxExportJobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :start_mailbox_export_job
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Applies the specified tags to the specified Amazon WorkMail organization
    #          resource.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>The tag key-value pairs.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TooManyTagsException, Errors::ResourceNotFoundException, Errors::OrganizationStateException]),
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

    # <p>Untags the specified tags from the specified Amazon WorkMail organization
    #          resource.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The resource ARN.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag keys.</p>
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException]),
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

    # <p>Updates the default mail domain for an organization. The default mail domain is used by the WorkMail AWS Console to suggest an email address when enabling a mail user. You can only have one default domain.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDefaultMailDomainInput}.
    #
    # @option params [String] :organization_id
    #   <p>The Amazon WorkMail organization for which to list domains.</p>
    #
    # @option params [String] :domain_name
    #   <p>The domain name that will become the default domain.</p>
    #
    # @return [Types::UpdateDefaultMailDomainOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_default_mail_domain(
    #     organization_id: 'OrganizationId', # required
    #     domain_name: 'DomainName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDefaultMailDomainOutput
    #
    def update_default_mail_domain(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDefaultMailDomainInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDefaultMailDomainInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDefaultMailDomain
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::MailDomainNotFoundException, Errors::MailDomainStateException, Errors::OrganizationNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::UpdateDefaultMailDomain
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDefaultMailDomain,
        stubs: @stubs,
        params_class: Params::UpdateDefaultMailDomainOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_default_mail_domain
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a user's current mailbox quota for a specified organization and
    #          user.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMailboxQuotaInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier for the organization that contains the user for whom to update the
    #            mailbox quota.</p>
    #
    # @option params [String] :user_id
    #   <p>The identifer for the user for whom to update the mailbox quota.</p>
    #
    # @option params [Integer] :mailbox_quota
    #   <p>The updated mailbox quota, in MB, for the specified user.</p>
    #
    # @return [Types::UpdateMailboxQuotaOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_mailbox_quota(
    #     organization_id: 'OrganizationId', # required
    #     user_id: 'UserId', # required
    #     mailbox_quota: 1 # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMailboxQuotaOutput
    #
    def update_mailbox_quota(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMailboxQuotaInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMailboxQuotaInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMailboxQuota
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EntityStateException, Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::UpdateMailboxQuota
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMailboxQuota,
        stubs: @stubs,
        params_class: Params::UpdateMailboxQuotaOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_mailbox_quota
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates a mobile device access rule for the specified Amazon WorkMail organization.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateMobileDeviceAccessRuleInput}.
    #
    # @option params [String] :organization_id
    #   <p>The Amazon WorkMail organization under which the rule will be updated.</p>
    #
    # @option params [String] :mobile_device_access_rule_id
    #   <p>The identifier of the rule to be updated.</p>
    #
    # @option params [String] :name
    #   <p>The updated rule name.</p>
    #
    # @option params [String] :description
    #   <p>The updated rule description.</p>
    #
    # @option params [String] :effect
    #   <p>The effect of the rule when it matches. Allowed values are <code>ALLOW</code> or <code>DENY</code>.</p>
    #
    # @option params [Array<String>] :device_types
    #   <p>Device types that the updated rule will match.</p>
    #
    # @option params [Array<String>] :not_device_types
    #   <p>Device types that the updated rule <b>will not</b> match. All other device types will match.</p>
    #
    # @option params [Array<String>] :device_models
    #   <p>Device models that the updated rule will match.</p>
    #
    # @option params [Array<String>] :not_device_models
    #   <p>Device models that the updated rule <b>will not</b> match. All other device models will match.</p>
    #
    # @option params [Array<String>] :device_operating_systems
    #   <p>Device operating systems that the updated rule will match.</p>
    #
    # @option params [Array<String>] :not_device_operating_systems
    #   <p>Device operating systems that the updated rule <b>will not</b> match. All other device operating systems will match.</p>
    #
    # @option params [Array<String>] :device_user_agents
    #   <p>User agents that the updated rule will match.</p>
    #
    # @option params [Array<String>] :not_device_user_agents
    #   <p>User agents that the updated rule <b>will not</b> match. All other user agents will match.</p>
    #
    # @return [Types::UpdateMobileDeviceAccessRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_mobile_device_access_rule(
    #     organization_id: 'OrganizationId', # required
    #     mobile_device_access_rule_id: 'MobileDeviceAccessRuleId', # required
    #     name: 'Name', # required
    #     description: 'Description',
    #     effect: 'ALLOW', # required - accepts ["ALLOW", "DENY"]
    #     device_types: [
    #       'member'
    #     ],
    #     device_models: [
    #       'member'
    #     ],
    #     device_operating_systems: [
    #       'member'
    #     ],
    #     device_user_agents: [
    #       'member'
    #     ],
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateMobileDeviceAccessRuleOutput
    #
    def update_mobile_device_access_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateMobileDeviceAccessRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateMobileDeviceAccessRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateMobileDeviceAccessRule
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::UpdateMobileDeviceAccessRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateMobileDeviceAccessRule,
        stubs: @stubs,
        params_class: Params::UpdateMobileDeviceAccessRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_mobile_device_access_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the primary email for a user, group, or resource. The current email is moved
    #          into the list of aliases (or swapped between an existing alias and the current primary
    #          email), and the email provided in the input is promoted as the primary.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePrimaryEmailAddressInput}.
    #
    # @option params [String] :organization_id
    #   <p>The organization that contains the user, group, or resource to update.</p>
    #
    # @option params [String] :entity_id
    #   <p>The user, group, or resource to update.</p>
    #
    # @option params [String] :email
    #   <p>The value of the email to be updated as primary.</p>
    #
    # @return [Types::UpdatePrimaryEmailAddressOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_primary_email_address(
    #     organization_id: 'OrganizationId', # required
    #     entity_id: 'EntityId', # required
    #     email: 'Email' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePrimaryEmailAddressOutput
    #
    def update_primary_email_address(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePrimaryEmailAddressInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePrimaryEmailAddressInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePrimaryEmailAddress
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EmailAddressInUseException, Errors::EntityStateException, Errors::InvalidParameterException, Errors::DirectoryUnavailableException, Errors::UnsupportedOperationException, Errors::MailDomainNotFoundException, Errors::MailDomainStateException, Errors::DirectoryServiceAuthenticationFailedException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException]),
        data_parser: Parsers::UpdatePrimaryEmailAddress
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePrimaryEmailAddress,
        stubs: @stubs,
        params_class: Params::UpdatePrimaryEmailAddressOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_primary_email_address
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates data for the resource. To have the latest information, it must be preceded by
    #          a <a>DescribeResource</a> call. The dataset in the request should be the one
    #          expected when performing another <code>DescribeResource</code> call.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateResourceInput}.
    #
    # @option params [String] :organization_id
    #   <p>The identifier associated with the organization for which the resource is
    #            updated.</p>
    #
    # @option params [String] :resource_id
    #   <p>The identifier of the resource to be updated.</p>
    #
    # @option params [String] :name
    #   <p>The name of the resource to be updated.</p>
    #
    # @option params [BookingOptions] :booking_options
    #   <p>The resource's booking options to be updated.</p>
    #
    # @return [Types::UpdateResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource(
    #     organization_id: 'OrganizationId', # required
    #     resource_id: 'ResourceId', # required
    #     name: 'Name',
    #     booking_options: {
    #       auto_accept_requests: false,
    #       auto_decline_recurring_requests: false,
    #       auto_decline_conflicting_requests: false
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateResourceOutput
    #
    def update_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateResource
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::NameAvailabilityException, Errors::EmailAddressInUseException, Errors::EntityStateException, Errors::DirectoryUnavailableException, Errors::MailDomainNotFoundException, Errors::MailDomainStateException, Errors::OrganizationNotFoundException, Errors::EntityNotFoundException, Errors::OrganizationStateException, Errors::InvalidConfigurationException]),
        data_parser: Parsers::UpdateResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateResource,
        stubs: @stubs,
        params_class: Params::UpdateResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_resource
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
