# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::RAM
  # An API client for AmazonResourceSharing
  # See {#initialize} for a full list of supported configuration options
  # <p>This is the <i>Resource Access Manager API Reference</i>. This documentation provides
  #             descriptions and syntax for each of the actions and data types in RAM. RAM is a
  #             service that helps you securely share your Amazon Web Services resources across Amazon Web Services accounts. If you
  #             have multiple Amazon Web Services accounts, you can use RAM to share those resources with other
  #             accounts. If you use Organizations to manage your accounts, then you share your resources
  #             with your organization or organizational units (OUs). For supported resource types, you
  #             can also share resources with individual Identity and Access Management (IAM) roles an users. </p>
  #
  #         <p>To learn more about RAM, see the following resources:</p>
  #         <ul>
  #             <li>
  #                 <p>
  #                     <a href="http://aws.amazon.com/ram">Resource Access Manager product page</a>
  #                </p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a href="https://docs.aws.amazon.com/ram/latest/userguide/">Resource Access Manager User
  #                         Guide</a>
  #                </p>
  #             </li>
  #          </ul>
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
    def initialize(config = AWS::SDK::RAM::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Accepts an invitation to a resource share from another Amazon Web Services account. After you accept the
    #             invitation, the resources included in the resource share are available to interact with in the
    #             relevant Amazon Web Services Management Consoles and tools.</p>
    #
    # @param [Hash] params
    #   See {Types::AcceptResourceShareInvitationInput}.
    #
    # @option params [String] :resource_share_invitation_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the invitation that you want to accept.</p>
    #
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #                value.</a>.</p>
    #                <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #
    # @return [Types::AcceptResourceShareInvitationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.accept_resource_share_invitation(
    #     resource_share_invitation_arn: 'resourceShareInvitationArn', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AcceptResourceShareInvitationOutput
    #   resp.data.resource_share_invitation #=> Types::ResourceShareInvitation
    #   resp.data.resource_share_invitation.resource_share_invitation_arn #=> String
    #   resp.data.resource_share_invitation.resource_share_name #=> String
    #   resp.data.resource_share_invitation.resource_share_arn #=> String
    #   resp.data.resource_share_invitation.sender_account_id #=> String
    #   resp.data.resource_share_invitation.receiver_account_id #=> String
    #   resp.data.resource_share_invitation.invitation_timestamp #=> Time
    #   resp.data.resource_share_invitation.status #=> String, one of ["PENDING", "ACCEPTED", "REJECTED", "EXPIRED"]
    #   resp.data.resource_share_invitation.resource_share_associations #=> Array<ResourceShareAssociation>
    #   resp.data.resource_share_invitation.resource_share_associations[0] #=> Types::ResourceShareAssociation
    #   resp.data.resource_share_invitation.resource_share_associations[0].resource_share_arn #=> String
    #   resp.data.resource_share_invitation.resource_share_associations[0].resource_share_name #=> String
    #   resp.data.resource_share_invitation.resource_share_associations[0].associated_entity #=> String
    #   resp.data.resource_share_invitation.resource_share_associations[0].association_type #=> String, one of ["PRINCIPAL", "RESOURCE"]
    #   resp.data.resource_share_invitation.resource_share_associations[0].status #=> String, one of ["ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"]
    #   resp.data.resource_share_invitation.resource_share_associations[0].status_message #=> String
    #   resp.data.resource_share_invitation.resource_share_associations[0].creation_time #=> Time
    #   resp.data.resource_share_invitation.resource_share_associations[0].last_updated_time #=> Time
    #   resp.data.resource_share_invitation.resource_share_associations[0].external #=> Boolean
    #   resp.data.resource_share_invitation.receiver_arn #=> String
    #   resp.data.client_token #=> String
    #
    def accept_resource_share_invitation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AcceptResourceShareInvitationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AcceptResourceShareInvitationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AcceptResourceShareInvitation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IdempotentParameterMismatchException, Errors::MalformedArnException, Errors::ResourceShareInvitationAlreadyAcceptedException, Errors::OperationNotPermittedException, Errors::ResourceShareInvitationArnNotFoundException, Errors::ResourceShareInvitationAlreadyRejectedException, Errors::ResourceShareInvitationExpiredException, Errors::ServerInternalException, Errors::InvalidClientTokenException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::AcceptResourceShareInvitation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AcceptResourceShareInvitation,
        stubs: @stubs,
        params_class: Params::AcceptResourceShareInvitationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :accept_resource_share_invitation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds the specified list of principals and list of resources to a resource share. Principals that
    #             already have access to this resource share immediately receive access to the added resources.
    #             Newly added principals immediately receive access to the resources shared in this resource share. </p>
    #
    # @param [Hash] params
    #   See {Types::AssociateResourceShareInput}.
    #
    # @option params [String] :resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share that you want to add principals or resources
    #               to.</p>
    #
    # @option params [Array<String>] :resource_arns
    #   <p>Specifies a list of <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> of the resources that you want to share. This can be
    #                   <code>null</code> if you want to add only principals.</p>
    #
    # @option params [Array<String>] :principals
    #   <p>Specifies a list of principals to whom you want to the resource share. This can be
    #                   <code>null</code> if you want to add only resources.</p>
    #           <p>What the principals can do with the resources in the share is determined by the RAM
    #               permissions that you associate with the resource share. See <a>AssociateResourceSharePermission</a>.</p>
    #           <p>You can include the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>An Amazon Web Services account ID, for example: <code>123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>An <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of an organization in Organizations, for example:
    #                           <code>organizations::123456789012:organization/o-exampleorgid</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>An ARN of an organizational unit (OU) in Organizations, for example:
    #                           <code>organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>An ARN of an IAM role, for example:
    #                           <code>iam::123456789012:role/rolename</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>An ARN of an IAM user, for example:
    #                           <code>iam::123456789012user/username</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>Not all resource types can be shared with IAM roles and users.
    #                For more information, see <a href="https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types">Sharing with IAM roles and users</a> in the <i>Resource Access Manager User
    #                       Guide</i>.</p>
    #            </note>
    #
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #                value.</a>.</p>
    #                <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #
    # @return [Types::AssociateResourceShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_resource_share(
    #     resource_share_arn: 'resourceShareArn', # required
    #     resource_arns: [
    #       'member'
    #     ],
    #     principals: [
    #       'member'
    #     ],
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateResourceShareOutput
    #   resp.data.resource_share_associations #=> Array<ResourceShareAssociation>
    #   resp.data.resource_share_associations[0] #=> Types::ResourceShareAssociation
    #   resp.data.resource_share_associations[0].resource_share_arn #=> String
    #   resp.data.resource_share_associations[0].resource_share_name #=> String
    #   resp.data.resource_share_associations[0].associated_entity #=> String
    #   resp.data.resource_share_associations[0].association_type #=> String, one of ["PRINCIPAL", "RESOURCE"]
    #   resp.data.resource_share_associations[0].status #=> String, one of ["ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"]
    #   resp.data.resource_share_associations[0].status_message #=> String
    #   resp.data.resource_share_associations[0].creation_time #=> Time
    #   resp.data.resource_share_associations[0].last_updated_time #=> Time
    #   resp.data.resource_share_associations[0].external #=> Boolean
    #   resp.data.client_token #=> String
    #
    def associate_resource_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateResourceShareInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateResourceShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateResourceShare
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IdempotentParameterMismatchException, Errors::ResourceShareLimitExceededException, Errors::MalformedArnException, Errors::OperationNotPermittedException, Errors::UnknownResourceException, Errors::InvalidStateTransitionException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::ThrottlingException, Errors::InvalidClientTokenException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::AssociateResourceShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateResourceShare,
        stubs: @stubs,
        params_class: Params::AssociateResourceShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_resource_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or replaces the RAM permission for a resource type included in a resource share. You can
    #             have exactly one permission associated with each resource type in the resource share. You can add
    #             a new RAM permission only if there are currently no resources of that resource type
    #             currently in the resource share.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateResourceSharePermissionInput}.
    #
    # @option params [String] :resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share to which you want to add or replace
    #               permissions.</p>
    #
    # @option params [String] :permission_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the RAM permission to associate with the resource share.
    #               To find the ARN for a permission, use either the <a>ListPermissions</a> operation or go to the <a href="https://console.aws.amazon.com/ram/home#Permissions:">Permissions library</a> page in the RAM console and
    #                then choose the name of the permission. The ARN is displayed on the detail page.</p>
    #
    # @option params [Boolean] :replace
    #   <p>Specifies whether the specified permission should replace or add to the existing
    #               permission associated with the resource share. Use <code>true</code> to replace the current
    #               permissions. Use <code>false</code> to add the permission to the current permission. The
    #               default value is <code>false</code>.</p>
    #           <note>
    #               <p>A resource share can have only one permission per resource type. If a resource share already has a
    #                   permission for the specified resource type and you don't set <code>replace</code> to
    #                       <code>true</code> then the operation returns an error. This helps prevent
    #                   accidental overwriting of a permission.</p>
    #           </note>
    #
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #                value.</a>.</p>
    #                <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #
    # @option params [Integer] :permission_version
    #   <p>Specifies the version of the RAM permission to associate with the resource share. If you don't
    #               specify this parameter, the operation uses the version designated as the default. You
    #               can use the <a>ListPermissionVersions</a> operation to discover the available
    #               versions of a permission.</p>
    #
    # @return [Types::AssociateResourceSharePermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_resource_share_permission(
    #     resource_share_arn: 'resourceShareArn', # required
    #     permission_arn: 'permissionArn', # required
    #     replace: false,
    #     client_token: 'clientToken',
    #     permission_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateResourceSharePermissionOutput
    #   resp.data.return_value #=> Boolean
    #   resp.data.client_token #=> String
    #
    def associate_resource_share_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateResourceSharePermissionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateResourceSharePermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateResourceSharePermission
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MalformedArnException, Errors::OperationNotPermittedException, Errors::UnknownResourceException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::InvalidClientTokenException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::AssociateResourceSharePermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateResourceSharePermission,
        stubs: @stubs,
        params_class: Params::AssociateResourceSharePermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_resource_share_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a resource share. You can provide a list of the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> for the resources that you
    #             want to share, a list of principals you want to share the resources with, and the
    #             permissions to grant those principals.</p>
    #         <note>
    #             <p>Sharing a resource makes it available for use by principals outside of the
    #                 Amazon Web Services account that created the resource. Sharing doesn't change any permissions or
    #                 quotas that apply to the resource in the account that created it.</p>
    #         </note>
    #
    # @param [Hash] params
    #   See {Types::CreateResourceShareInput}.
    #
    # @option params [String] :name
    #   <p>Specifies the name of the resource share.</p>
    #
    # @option params [Array<String>] :resource_arns
    #   <p>Specifies a list of one or more ARNs of the resources to associate with the
    #               resource share.</p>
    #
    # @option params [Array<String>] :principals
    #   <p>Specifies a list of one or more principals to associate with the resource share.</p>
    #           <p>You can include the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>An Amazon Web Services account ID, for example: <code>123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>An <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of an organization in Organizations, for example:
    #                           <code>organizations::123456789012:organization/o-exampleorgid</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>An ARN of an organizational unit (OU) in Organizations, for example:
    #                           <code>organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>An ARN of an IAM role, for example:
    #                           <code>iam::123456789012:role/rolename</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>An ARN of an IAM user, for example:
    #                           <code>iam::123456789012user/username</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>Not all resource types can be shared with IAM roles and users.
    #                For more information, see <a href="https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types">Sharing with IAM roles and users</a> in the <i>Resource Access Manager User
    #                       Guide</i>.</p>
    #            </note>
    #
    # @option params [Array<Tag>] :tags
    #   <p>Specifies one or more tags to attach to the resource share itself. It doesn't attach the tags to
    #               the resources associated with the resource share.</p>
    #
    # @option params [Boolean] :allow_external_principals
    #   <p>Specifies whether principals outside your organization in Organizations can be associated
    #               with a resource share. A value of <code>true</code> lets you share with individual Amazon Web Services accounts
    #               that are <i>not</i> in your organization. A value of <code>false</code>
    #               only has meaning if your account is a member of an Amazon Web Services Organization. The default value
    #               is <code>true</code>.</p>
    #
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #                value.</a>.</p>
    #                <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #
    # @option params [Array<String>] :permission_arns
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> of the RAM permission to associate with the resource share. If you do
    #               not specify an ARN for the permission, RAM automatically attaches the default version
    #               of the permission for each resource type. You can associate only one permission with
    #               each resource type included in the resource share.</p>
    #
    # @return [Types::CreateResourceShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_resource_share(
    #     name: 'name', # required
    #     resource_arns: [
    #       'member'
    #     ],
    #     principals: [
    #       'member'
    #     ],
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
    #       }
    #     ],
    #     allow_external_principals: false,
    #     client_token: 'clientToken',
    #     permission_arns: [
    #       'member'
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateResourceShareOutput
    #   resp.data.resource_share #=> Types::ResourceShare
    #   resp.data.resource_share.resource_share_arn #=> String
    #   resp.data.resource_share.name #=> String
    #   resp.data.resource_share.owning_account_id #=> String
    #   resp.data.resource_share.allow_external_principals #=> Boolean
    #   resp.data.resource_share.status #=> String, one of ["PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED"]
    #   resp.data.resource_share.status_message #=> String
    #   resp.data.resource_share.tags #=> Array<Tag>
    #   resp.data.resource_share.tags[0] #=> Types::Tag
    #   resp.data.resource_share.tags[0].key #=> String
    #   resp.data.resource_share.tags[0].value #=> String
    #   resp.data.resource_share.creation_time #=> Time
    #   resp.data.resource_share.last_updated_time #=> Time
    #   resp.data.resource_share.feature_set #=> String, one of ["CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"]
    #   resp.data.client_token #=> String
    #
    def create_resource_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateResourceShareInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateResourceShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateResourceShare
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IdempotentParameterMismatchException, Errors::TagPolicyViolationException, Errors::ResourceShareLimitExceededException, Errors::MalformedArnException, Errors::OperationNotPermittedException, Errors::UnknownResourceException, Errors::InvalidStateTransitionException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::InvalidClientTokenException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CreateResourceShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateResourceShare,
        stubs: @stubs,
        params_class: Params::CreateResourceShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_resource_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified resource share. This doesn't delete any of the resources that were
    #             associated with the resource share; it only stops the sharing of those resources outside of the
    #             Amazon Web Services account that created them.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteResourceShareInput}.
    #
    # @option params [String] :resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share to delete.</p>
    #
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #                value.</a>.</p>
    #                <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #
    # @return [Types::DeleteResourceShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_resource_share(
    #     resource_share_arn: 'resourceShareArn', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteResourceShareOutput
    #   resp.data.return_value #=> Boolean
    #   resp.data.client_token #=> String
    #
    def delete_resource_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteResourceShareInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteResourceShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteResourceShare
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IdempotentParameterMismatchException, Errors::MalformedArnException, Errors::OperationNotPermittedException, Errors::UnknownResourceException, Errors::InvalidStateTransitionException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::InvalidClientTokenException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteResourceShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteResourceShare,
        stubs: @stubs,
        params_class: Params::DeleteResourceShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_resource_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates the specified principals or resources from the specified resource share.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateResourceShareInput}.
    #
    # @option params [String] :resource_share_arn
    #   <p>Specifies <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share that you want to remove resources from.</p>
    #
    # @option params [Array<String>] :resource_arns
    #   <p>Specifies a list of <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> for one or more resources that you want to remove from
    #               the resource share. After the operation runs, these resources are no longer shared with principals
    #               outside of the Amazon Web Services account that created the resources.</p>
    #
    # @option params [Array<String>] :principals
    #   <p>Specifies a list of one or more principals that no longer are to have access to the
    #               resources in this resource share.</p>
    #           <p>You can include the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>An Amazon Web Services account ID, for example: <code>123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>An <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of an organization in Organizations, for example:
    #                           <code>organizations::123456789012:organization/o-exampleorgid</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>An ARN of an organizational unit (OU) in Organizations, for example:
    #                           <code>organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>An ARN of an IAM role, for example:
    #                           <code>iam::123456789012:role/rolename</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>An ARN of an IAM user, for example:
    #                           <code>iam::123456789012user/username</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>Not all resource types can be shared with IAM roles and users.
    #                For more information, see <a href="https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types">Sharing with IAM roles and users</a> in the <i>Resource Access Manager User
    #                       Guide</i>.</p>
    #            </note>
    #
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #                value.</a>.</p>
    #                <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #
    # @return [Types::DisassociateResourceShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_resource_share(
    #     resource_share_arn: 'resourceShareArn', # required
    #     resource_arns: [
    #       'member'
    #     ],
    #     principals: [
    #       'member'
    #     ],
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateResourceShareOutput
    #   resp.data.resource_share_associations #=> Array<ResourceShareAssociation>
    #   resp.data.resource_share_associations[0] #=> Types::ResourceShareAssociation
    #   resp.data.resource_share_associations[0].resource_share_arn #=> String
    #   resp.data.resource_share_associations[0].resource_share_name #=> String
    #   resp.data.resource_share_associations[0].associated_entity #=> String
    #   resp.data.resource_share_associations[0].association_type #=> String, one of ["PRINCIPAL", "RESOURCE"]
    #   resp.data.resource_share_associations[0].status #=> String, one of ["ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"]
    #   resp.data.resource_share_associations[0].status_message #=> String
    #   resp.data.resource_share_associations[0].creation_time #=> Time
    #   resp.data.resource_share_associations[0].last_updated_time #=> Time
    #   resp.data.resource_share_associations[0].external #=> Boolean
    #   resp.data.client_token #=> String
    #
    def disassociate_resource_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateResourceShareInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateResourceShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateResourceShare
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IdempotentParameterMismatchException, Errors::ResourceShareLimitExceededException, Errors::MalformedArnException, Errors::OperationNotPermittedException, Errors::UnknownResourceException, Errors::InvalidStateTransitionException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::InvalidClientTokenException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DisassociateResourceShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateResourceShare,
        stubs: @stubs,
        params_class: Params::DisassociateResourceShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_resource_share
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Disassociates an RAM permission from a resource share. Permission changes take effect
    #             immediately. You can remove a RAM permission from a resource share only if there are currently
    #             no resources of the relevant resource type currently attached to the resource share.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateResourceSharePermissionInput}.
    #
    # @option params [String] :resource_share_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share from which you want to disassociate a permission.</p>
    #
    # @option params [String] :permission_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the permission to disassociate from the resource share. Changes to permissions
    #               take effect immediately.</p>
    #
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #                value.</a>.</p>
    #                <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #
    # @return [Types::DisassociateResourceSharePermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_resource_share_permission(
    #     resource_share_arn: 'resourceShareArn', # required
    #     permission_arn: 'permissionArn', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateResourceSharePermissionOutput
    #   resp.data.return_value #=> Boolean
    #   resp.data.client_token #=> String
    #
    def disassociate_resource_share_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateResourceSharePermissionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateResourceSharePermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateResourceSharePermission
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MalformedArnException, Errors::OperationNotPermittedException, Errors::UnknownResourceException, Errors::InvalidStateTransitionException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::InvalidClientTokenException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DisassociateResourceSharePermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateResourceSharePermission,
        stubs: @stubs,
        params_class: Params::DisassociateResourceSharePermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_resource_share_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Enables resource sharing within your organization in Organizations. Calling this operation
    #             enables RAM to retrieve information about the organization and its structure. This
    #             lets you share resources with all of the accounts in an organization by specifying the
    #             organization's ID, or all of the accounts in an organizational unit (OU) by specifying
    #             the OU's ID. Until you enable sharing within the organization, you can specify only
    #             individual Amazon Web Services accounts, or for supported resource types, IAM users and
    #             roles.</p>
    #         <p>You must call this operation from an IAM user or role in the organization's
    #             management account.</p>
    #
    # @param [Hash] params
    #   See {Types::EnableSharingWithAwsOrganizationInput}.
    #
    # @return [Types::EnableSharingWithAwsOrganizationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.enable_sharing_with_aws_organization()
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EnableSharingWithAwsOrganizationOutput
    #   resp.data.return_value #=> Boolean
    #
    def enable_sharing_with_aws_organization(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EnableSharingWithAwsOrganizationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EnableSharingWithAwsOrganizationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EnableSharingWithAwsOrganization
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::OperationNotPermittedException, Errors::ServerInternalException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::EnableSharingWithAwsOrganization
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EnableSharingWithAwsOrganization,
        stubs: @stubs,
        params_class: Params::EnableSharingWithAwsOrganizationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :enable_sharing_with_aws_organization
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets the contents of an RAM permission in JSON format.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPermissionInput}.
    #
    # @option params [String] :permission_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the permission whose contents you want to retrieve.
    #               To find the ARN for a permission, use either the <a>ListPermissions</a> operation or go to the <a href="https://console.aws.amazon.com/ram/home#Permissions:">Permissions library</a> page in the RAM console and
    #                then choose the name of the permission. The ARN is displayed on the detail page.</p>
    #
    # @option params [Integer] :permission_version
    #   <p>Specifies identifier for the version of the RAM permission to retrieve. If you don't
    #               specify this parameter, the operation retrieves the default version.</p>
    #
    # @return [Types::GetPermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_permission(
    #     permission_arn: 'permissionArn', # required
    #     permission_version: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPermissionOutput
    #   resp.data.permission #=> Types::ResourceSharePermissionDetail
    #   resp.data.permission.arn #=> String
    #   resp.data.permission.version #=> String
    #   resp.data.permission.default_version #=> Boolean
    #   resp.data.permission.name #=> String
    #   resp.data.permission.resource_type #=> String
    #   resp.data.permission.permission #=> String
    #   resp.data.permission.creation_time #=> Time
    #   resp.data.permission.last_updated_time #=> Time
    #   resp.data.permission.is_resource_type_default #=> Boolean
    #
    def get_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPermissionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPermission
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MalformedArnException, Errors::OperationNotPermittedException, Errors::UnknownResourceException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetPermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPermission,
        stubs: @stubs,
        params_class: Params::GetPermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the resource policies for the specified resources that you own and have
    #             shared.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResourcePoliciesInput}.
    #
    # @option params [Array<String>] :resource_arns
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> of the resources whose policies you want to retrieve.</p>
    #
    # @option params [String] :principal
    #   <p>Specifies the principal.</p>
    #
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page
    #                of the response. If you do not include this parameter, it defaults to a value that is
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next
    #                call to the operation to get the next part of the results. Note that the service might
    #                return fewer results than the maximum even when there are more results available. You
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    #
    # @return [Types::GetResourcePoliciesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_policies(
    #     resource_arns: [
    #       'member'
    #     ], # required
    #     principal: 'principal',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourcePoliciesOutput
    #   resp.data.policies #=> Array<String>
    #   resp.data.policies[0] #=> String
    #   resp.data.next_token #=> String
    #
    def get_resource_policies(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourcePoliciesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourcePoliciesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourcePolicies
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::MalformedArnException, Errors::ResourceArnNotFoundException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetResourcePolicies
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourcePolicies,
        stubs: @stubs,
        params_class: Params::GetResourcePoliciesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_policies
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the resource and principal associations for resource shares that you own.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResourceShareAssociationsInput}.
    #
    # @option params [String] :association_type
    #   <p>Specifies whether you want to retrieve the associations that involve a specified
    #               resource or principal.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>PRINCIPAL</code> – list the principals that are associated with
    #                       the specified resource share.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>RESOURCE</code> – list the resources that are associated with the
    #                       specified resource share.</p>
    #               </li>
    #            </ul>
    #
    # @option params [Array<String>] :resource_share_arns
    #   <p>Specifies a list of <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> of the resource share whose associations you want to
    #               retrieve.</p>
    #
    # @option params [String] :resource_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource whose resource shares you want to retrieve.</p>
    #           <p>You cannot specify this parameter if the association type is
    #               <code>PRINCIPAL</code>.</p>
    #
    # @option params [String] :principal
    #   <p>Specifies the ID of the principal whose resource shares you want to retrieve. This can be an
    #               Amazon Web Services account ID, an organization ID, an organizational unit ID, or the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of an
    #               individual IAM user or role.</p>
    #           <p>You cannot specify this parameter if the association type is
    #               <code>RESOURCE</code>.</p>
    #
    # @option params [String] :association_status
    #   <p>Specifies that you want to retrieve only associations with this status.</p>
    #
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page
    #                of the response. If you do not include this parameter, it defaults to a value that is
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next
    #                call to the operation to get the next part of the results. Note that the service might
    #                return fewer results than the maximum even when there are more results available. You
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    #
    # @return [Types::GetResourceShareAssociationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_share_associations(
    #     association_type: 'PRINCIPAL', # required - accepts ["PRINCIPAL", "RESOURCE"]
    #     resource_share_arns: [
    #       'member'
    #     ],
    #     resource_arn: 'resourceArn',
    #     principal: 'principal',
    #     association_status: 'ASSOCIATING', # accepts ["ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourceShareAssociationsOutput
    #   resp.data.resource_share_associations #=> Array<ResourceShareAssociation>
    #   resp.data.resource_share_associations[0] #=> Types::ResourceShareAssociation
    #   resp.data.resource_share_associations[0].resource_share_arn #=> String
    #   resp.data.resource_share_associations[0].resource_share_name #=> String
    #   resp.data.resource_share_associations[0].associated_entity #=> String
    #   resp.data.resource_share_associations[0].association_type #=> String, one of ["PRINCIPAL", "RESOURCE"]
    #   resp.data.resource_share_associations[0].status #=> String, one of ["ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"]
    #   resp.data.resource_share_associations[0].status_message #=> String
    #   resp.data.resource_share_associations[0].creation_time #=> Time
    #   resp.data.resource_share_associations[0].last_updated_time #=> Time
    #   resp.data.resource_share_associations[0].external #=> Boolean
    #   resp.data.next_token #=> String
    #
    def get_resource_share_associations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourceShareAssociationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourceShareAssociationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourceShareAssociations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::MalformedArnException, Errors::OperationNotPermittedException, Errors::UnknownResourceException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetResourceShareAssociations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourceShareAssociations,
        stubs: @stubs,
        params_class: Params::GetResourceShareAssociationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_share_associations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves details about invitations that you have received for resource shares.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResourceShareInvitationsInput}.
    #
    # @option params [Array<String>] :resource_share_invitation_arns
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> of the resource share invitations you want information about.</p>
    #
    # @option params [Array<String>] :resource_share_arns
    #   <p>Specifies that you want details about invitations only for the resource shares described by this
    #               list of <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>
    #            </p>
    #
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page
    #                of the response. If you do not include this parameter, it defaults to a value that is
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next
    #                call to the operation to get the next part of the results. Note that the service might
    #                return fewer results than the maximum even when there are more results available. You
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    #
    # @return [Types::GetResourceShareInvitationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_share_invitations(
    #     resource_share_invitation_arns: [
    #       'member'
    #     ],
    #     resource_share_arns: [
    #       'member'
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourceShareInvitationsOutput
    #   resp.data.resource_share_invitations #=> Array<ResourceShareInvitation>
    #   resp.data.resource_share_invitations[0] #=> Types::ResourceShareInvitation
    #   resp.data.resource_share_invitations[0].resource_share_invitation_arn #=> String
    #   resp.data.resource_share_invitations[0].resource_share_name #=> String
    #   resp.data.resource_share_invitations[0].resource_share_arn #=> String
    #   resp.data.resource_share_invitations[0].sender_account_id #=> String
    #   resp.data.resource_share_invitations[0].receiver_account_id #=> String
    #   resp.data.resource_share_invitations[0].invitation_timestamp #=> Time
    #   resp.data.resource_share_invitations[0].status #=> String, one of ["PENDING", "ACCEPTED", "REJECTED", "EXPIRED"]
    #   resp.data.resource_share_invitations[0].resource_share_associations #=> Array<ResourceShareAssociation>
    #   resp.data.resource_share_invitations[0].resource_share_associations[0] #=> Types::ResourceShareAssociation
    #   resp.data.resource_share_invitations[0].resource_share_associations[0].resource_share_arn #=> String
    #   resp.data.resource_share_invitations[0].resource_share_associations[0].resource_share_name #=> String
    #   resp.data.resource_share_invitations[0].resource_share_associations[0].associated_entity #=> String
    #   resp.data.resource_share_invitations[0].resource_share_associations[0].association_type #=> String, one of ["PRINCIPAL", "RESOURCE"]
    #   resp.data.resource_share_invitations[0].resource_share_associations[0].status #=> String, one of ["ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"]
    #   resp.data.resource_share_invitations[0].resource_share_associations[0].status_message #=> String
    #   resp.data.resource_share_invitations[0].resource_share_associations[0].creation_time #=> Time
    #   resp.data.resource_share_invitations[0].resource_share_associations[0].last_updated_time #=> Time
    #   resp.data.resource_share_invitations[0].resource_share_associations[0].external #=> Boolean
    #   resp.data.resource_share_invitations[0].receiver_arn #=> String
    #   resp.data.next_token #=> String
    #
    def get_resource_share_invitations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourceShareInvitationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourceShareInvitationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourceShareInvitations
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidMaxResultsException, Errors::InvalidNextTokenException, Errors::MalformedArnException, Errors::ResourceShareInvitationArnNotFoundException, Errors::UnknownResourceException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetResourceShareInvitations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourceShareInvitations,
        stubs: @stubs,
        params_class: Params::GetResourceShareInvitationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_share_invitations
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves details about the resource shares that you own or that are shared with you.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResourceSharesInput}.
    #
    # @option params [Array<String>] :resource_share_arns
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> of individual resource shares that you want information about.</p>
    #
    # @option params [String] :resource_share_status
    #   <p>Specifies that you want to retrieve details of only those resource shares that have this
    #               status.</p>
    #
    # @option params [String] :resource_owner
    #   <p>Specifies that you want to retrieve details of only those resource shares that match the
    #               following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>SELF</code>
    #                     </b> – resource shares that your
    #                       account shares with other accounts</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>OTHER-ACCOUNTS</code>
    #                     </b> – resource shares
    #                       that other accounts share with your account</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :name
    #   <p>Specifies the name of an individual resource share that you want to retrieve details
    #               about.</p>
    #
    # @option params [Array<TagFilter>] :tag_filters
    #   <p>Specifies that you want to retrieve details of only those resource shares that match the
    #               specified tag keys and values.</p>
    #
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page
    #                of the response. If you do not include this parameter, it defaults to a value that is
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next
    #                call to the operation to get the next part of the results. Note that the service might
    #                return fewer results than the maximum even when there are more results available. You
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    #
    # @option params [String] :permission_arn
    #   <p>Specifies that you want to retrieve details of only those resource shares that use the RAM
    #               permission with this <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a>.</p>
    #
    # @return [Types::GetResourceSharesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resource_shares(
    #     resource_share_arns: [
    #       'member'
    #     ],
    #     resource_share_status: 'PENDING', # accepts ["PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED"]
    #     resource_owner: 'SELF', # required - accepts ["SELF", "OTHER-ACCOUNTS"]
    #     name: 'name',
    #     tag_filters: [
    #       {
    #         tag_key: 'tagKey',
    #         tag_values: [
    #           'member'
    #         ]
    #       }
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     permission_arn: 'permissionArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourceSharesOutput
    #   resp.data.resource_shares #=> Array<ResourceShare>
    #   resp.data.resource_shares[0] #=> Types::ResourceShare
    #   resp.data.resource_shares[0].resource_share_arn #=> String
    #   resp.data.resource_shares[0].name #=> String
    #   resp.data.resource_shares[0].owning_account_id #=> String
    #   resp.data.resource_shares[0].allow_external_principals #=> Boolean
    #   resp.data.resource_shares[0].status #=> String, one of ["PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED"]
    #   resp.data.resource_shares[0].status_message #=> String
    #   resp.data.resource_shares[0].tags #=> Array<Tag>
    #   resp.data.resource_shares[0].tags[0] #=> Types::Tag
    #   resp.data.resource_shares[0].tags[0].key #=> String
    #   resp.data.resource_shares[0].tags[0].value #=> String
    #   resp.data.resource_shares[0].creation_time #=> Time
    #   resp.data.resource_shares[0].last_updated_time #=> Time
    #   resp.data.resource_shares[0].feature_set #=> String, one of ["CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"]
    #   resp.data.next_token #=> String
    #
    def get_resource_shares(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourceSharesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourceSharesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResourceShares
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::MalformedArnException, Errors::UnknownResourceException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetResourceShares
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResourceShares,
        stubs: @stubs,
        params_class: Params::GetResourceSharesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resource_shares
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the resources in a resource share that is shared with you but for which the invitation is
    #             still <code>PENDING</code>. That means that you haven't accepted or rejected the
    #             invitation and the invitation hasn't expired.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPendingInvitationResourcesInput}.
    #
    # @option params [String] :resource_share_invitation_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the invitation. You can use <a>GetResourceShareInvitations</a> to find the ARN of the invitation.</p>
    #
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page
    #                of the response. If you do not include this parameter, it defaults to a value that is
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next
    #                call to the operation to get the next part of the results. Note that the service might
    #                return fewer results than the maximum even when there are more results available. You
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    #
    # @option params [String] :resource_region_scope
    #   <p>Specifies that you want the results to include only
    #               resources that have the specified scope.</p>
    #               <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – the results include both global and
    #                       regional resources or resource types.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GLOBAL</code> – the results include only global
    #                       resources or resource types.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGIONAL</code> – the results include only regional
    #                       resources or resource types.</p>
    #               </li>
    #            </ul>
    #               <p>The default value is <code>ALL</code>.</p>
    #
    # @return [Types::ListPendingInvitationResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pending_invitation_resources(
    #     resource_share_invitation_arn: 'resourceShareInvitationArn', # required
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     resource_region_scope: 'ALL' # accepts ["ALL", "REGIONAL", "GLOBAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPendingInvitationResourcesOutput
    #   resp.data.resources #=> Array<Resource>
    #   resp.data.resources[0] #=> Types::Resource
    #   resp.data.resources[0].arn #=> String
    #   resp.data.resources[0].type #=> String
    #   resp.data.resources[0].resource_share_arn #=> String
    #   resp.data.resources[0].resource_group_arn #=> String
    #   resp.data.resources[0].status #=> String, one of ["AVAILABLE", "ZONAL_RESOURCE_INACCESSIBLE", "LIMIT_EXCEEDED", "UNAVAILABLE", "PENDING"]
    #   resp.data.resources[0].status_message #=> String
    #   resp.data.resources[0].creation_time #=> Time
    #   resp.data.resources[0].last_updated_time #=> Time
    #   resp.data.resources[0].resource_region_scope #=> String, one of ["REGIONAL", "GLOBAL"]
    #   resp.data.next_token #=> String
    #
    def list_pending_invitation_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPendingInvitationResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPendingInvitationResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPendingInvitationResources
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MissingRequiredParameterException, Errors::InvalidNextTokenException, Errors::MalformedArnException, Errors::ResourceShareInvitationArnNotFoundException, Errors::ResourceShareInvitationAlreadyRejectedException, Errors::InvalidParameterException, Errors::ResourceShareInvitationExpiredException, Errors::ServerInternalException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListPendingInvitationResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPendingInvitationResources,
        stubs: @stubs,
        params_class: Params::ListPendingInvitationResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_pending_invitation_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the available versions of the specified RAM permission.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPermissionVersionsInput}.
    #
    # @option params [String] :permission_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the RAM permission whose versions you want to list. You
    #               can use the <code>permissionVersion</code> parameter on the <a>AssociateResourceSharePermission</a> operation to specify a non-default
    #               version to attach.</p>
    #
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page
    #                of the response. If you do not include this parameter, it defaults to a value that is
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next
    #                call to the operation to get the next part of the results. Note that the service might
    #                return fewer results than the maximum even when there are more results available. You
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    #
    # @return [Types::ListPermissionVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permission_versions(
    #     permission_arn: 'permissionArn', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPermissionVersionsOutput
    #   resp.data.permissions #=> Array<ResourceSharePermissionSummary>
    #   resp.data.permissions[0] #=> Types::ResourceSharePermissionSummary
    #   resp.data.permissions[0].arn #=> String
    #   resp.data.permissions[0].version #=> String
    #   resp.data.permissions[0].default_version #=> Boolean
    #   resp.data.permissions[0].name #=> String
    #   resp.data.permissions[0].resource_type #=> String
    #   resp.data.permissions[0].status #=> String
    #   resp.data.permissions[0].creation_time #=> Time
    #   resp.data.permissions[0].last_updated_time #=> Time
    #   resp.data.permissions[0].is_resource_type_default #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_permission_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPermissionVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPermissionVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPermissionVersions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::MalformedArnException, Errors::OperationNotPermittedException, Errors::UnknownResourceException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListPermissionVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPermissionVersions,
        stubs: @stubs,
        params_class: Params::ListPermissionVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_permission_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a list of available RAM permissions that you can use for the supported
    #             resource types. </p>
    #
    # @param [Hash] params
    #   See {Types::ListPermissionsInput}.
    #
    # @option params [String] :resource_type
    #   <p>Specifies that you want to list permissions for only the specified resource type. For
    #               example, to list only permissions that apply to EC2 subnets, specify
    #                   <code>ec2:Subnet</code>. You can use the <a>ListResourceTypes</a>
    #               operation to get the specific string required.</p>
    #
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page
    #                of the response. If you do not include this parameter, it defaults to a value that is
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next
    #                call to the operation to get the next part of the results. Note that the service might
    #                return fewer results than the maximum even when there are more results available. You
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    #
    # @return [Types::ListPermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_permissions(
    #     resource_type: 'resourceType',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPermissionsOutput
    #   resp.data.permissions #=> Array<ResourceSharePermissionSummary>
    #   resp.data.permissions[0] #=> Types::ResourceSharePermissionSummary
    #   resp.data.permissions[0].arn #=> String
    #   resp.data.permissions[0].version #=> String
    #   resp.data.permissions[0].default_version #=> Boolean
    #   resp.data.permissions[0].name #=> String
    #   resp.data.permissions[0].resource_type #=> String
    #   resp.data.permissions[0].status #=> String
    #   resp.data.permissions[0].creation_time #=> Time
    #   resp.data.permissions[0].last_updated_time #=> Time
    #   resp.data.permissions[0].is_resource_type_default #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPermissions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::OperationNotPermittedException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListPermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPermissions,
        stubs: @stubs,
        params_class: Params::ListPermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the principals that you are sharing resources with or that are sharing resources
    #             with you.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPrincipalsInput}.
    #
    # @option params [String] :resource_owner
    #   <p>Specifies that you want to list information for only resource shares that match the
    #               following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>SELF</code>
    #                     </b> – principals that
    #                       your account is sharing resources with</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>OTHER-ACCOUNTS</code>
    #                     </b> –
    #                       principals that are sharing resources with your account</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :resource_arn
    #   <p>Specifies that you want to list principal information for the resource share with the specified
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a>.</p>
    #
    # @option params [Array<String>] :principals
    #   <p>Specifies that you want to list information for only the listed principals.</p>
    #           <p>You can include the following values:</p>
    #           <ul>
    #               <li>
    #                   <p>An Amazon Web Services account ID, for example: <code>123456789012</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>An <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of an organization in Organizations, for example:
    #                           <code>organizations::123456789012:organization/o-exampleorgid</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>An ARN of an organizational unit (OU) in Organizations, for example:
    #                           <code>organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>An ARN of an IAM role, for example:
    #                           <code>iam::123456789012:role/rolename</code>
    #                  </p>
    #               </li>
    #               <li>
    #                   <p>An ARN of an IAM user, for example:
    #                           <code>iam::123456789012user/username</code>
    #                  </p>
    #               </li>
    #            </ul>
    #           <note>
    #               <p>Not all resource types can be shared with IAM roles and users.
    #                For more information, see <a href="https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types">Sharing with IAM roles and users</a> in the <i>Resource Access Manager User
    #                       Guide</i>.</p>
    #            </note>
    #
    # @option params [String] :resource_type
    #   <p>Specifies that you want to list information for only principals associated with resource shares
    #               that include the specified resource type.</p>
    #           <p>For a list of valid values, query the <a>ListResourceTypes</a>
    #               operation.</p>
    #
    # @option params [Array<String>] :resource_share_arns
    #   <p>Specifies that you want to list information for only principals associated with the
    #               resource shares specified by a list the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page
    #                of the response. If you do not include this parameter, it defaults to a value that is
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next
    #                call to the operation to get the next part of the results. Note that the service might
    #                return fewer results than the maximum even when there are more results available. You
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    #
    # @return [Types::ListPrincipalsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_principals(
    #     resource_owner: 'SELF', # required - accepts ["SELF", "OTHER-ACCOUNTS"]
    #     resource_arn: 'resourceArn',
    #     principals: [
    #       'member'
    #     ],
    #     resource_type: 'resourceType',
    #     resource_share_arns: [
    #       'member'
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPrincipalsOutput
    #   resp.data.principals #=> Array<Principal>
    #   resp.data.principals[0] #=> Types::Principal
    #   resp.data.principals[0].id #=> String
    #   resp.data.principals[0].resource_share_arn #=> String
    #   resp.data.principals[0].creation_time #=> Time
    #   resp.data.principals[0].last_updated_time #=> Time
    #   resp.data.principals[0].external #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_principals(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPrincipalsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPrincipalsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPrincipals
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::MalformedArnException, Errors::UnknownResourceException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListPrincipals
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPrincipals,
        stubs: @stubs,
        params_class: Params::ListPrincipalsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_principals
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the RAM permissions that are associated with a resource share.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResourceSharePermissionsInput}.
    #
    # @option params [String] :resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share for which you want to retrieve the associated
    #               permissions.</p>
    #
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page
    #                of the response. If you do not include this parameter, it defaults to a value that is
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next
    #                call to the operation to get the next part of the results. Note that the service might
    #                return fewer results than the maximum even when there are more results available. You
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    #
    # @return [Types::ListResourceSharePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_share_permissions(
    #     resource_share_arn: 'resourceShareArn', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourceSharePermissionsOutput
    #   resp.data.permissions #=> Array<ResourceSharePermissionSummary>
    #   resp.data.permissions[0] #=> Types::ResourceSharePermissionSummary
    #   resp.data.permissions[0].arn #=> String
    #   resp.data.permissions[0].version #=> String
    #   resp.data.permissions[0].default_version #=> Boolean
    #   resp.data.permissions[0].name #=> String
    #   resp.data.permissions[0].resource_type #=> String
    #   resp.data.permissions[0].status #=> String
    #   resp.data.permissions[0].creation_time #=> Time
    #   resp.data.permissions[0].last_updated_time #=> Time
    #   resp.data.permissions[0].is_resource_type_default #=> Boolean
    #   resp.data.next_token #=> String
    #
    def list_resource_share_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourceSharePermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourceSharePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResourceSharePermissions
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::MalformedArnException, Errors::OperationNotPermittedException, Errors::UnknownResourceException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListResourceSharePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResourceSharePermissions,
        stubs: @stubs,
        params_class: Params::ListResourceSharePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resource_share_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the resource types that can be shared by RAM.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResourceTypesInput}.
    #
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page
    #                of the response. If you do not include this parameter, it defaults to a value that is
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next
    #                call to the operation to get the next part of the results. Note that the service might
    #                return fewer results than the maximum even when there are more results available. You
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    #
    # @option params [String] :resource_region_scope
    #   <p>Specifies that you want the results to include only
    #               resources that have the specified scope.</p>
    #               <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – the results include both global and
    #                       regional resources or resource types.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GLOBAL</code> – the results include only global
    #                       resources or resource types.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGIONAL</code> – the results include only regional
    #                       resources or resource types.</p>
    #               </li>
    #            </ul>
    #               <p>The default value is <code>ALL</code>.</p>
    #
    # @return [Types::ListResourceTypesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resource_types(
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     resource_region_scope: 'ALL' # accepts ["ALL", "REGIONAL", "GLOBAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourceTypesOutput
    #   resp.data.resource_types #=> Array<ServiceNameAndResourceType>
    #   resp.data.resource_types[0] #=> Types::ServiceNameAndResourceType
    #   resp.data.resource_types[0].resource_type #=> String
    #   resp.data.resource_types[0].service_name #=> String
    #   resp.data.resource_types[0].resource_region_scope #=> String, one of ["REGIONAL", "GLOBAL"]
    #   resp.data.next_token #=> String
    #
    def list_resource_types(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListResourceTypesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListResourceTypesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListResourceTypes
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ListResourceTypes
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListResourceTypes,
        stubs: @stubs,
        params_class: Params::ListResourceTypesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_resource_types
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the resources that you added to a resource share or the resources that are shared with
    #             you.</p>
    #
    # @param [Hash] params
    #   See {Types::ListResourcesInput}.
    #
    # @option params [String] :resource_owner
    #   <p>Specifies that you want to list only the resource shares that match the following:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>SELF</code>
    #                     </b> – resources that
    #                       your account shares with other accounts</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>
    #                        <code>OTHER-ACCOUNTS</code>
    #                     </b> –
    #                       resources that other accounts share with your account</p>
    #               </li>
    #            </ul>
    #
    # @option params [String] :principal
    #   <p>Specifies that you want to list only the resource shares that are associated with the specified
    #               principal.</p>
    #
    # @option params [String] :resource_type
    #   <p>Specifies that you want to list only the resource shares that include resources of the specified
    #               resource type.</p>
    #           <p>For valid values, query the <a>ListResourceTypes</a> operation.</p>
    #
    # @option params [Array<String>] :resource_arns
    #   <p>Specifies that you want to list only the resource shares that include resources with the
    #               specified <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    # @option params [Array<String>] :resource_share_arns
    #   <p>Specifies that you want to list only resources in the resource shares identified by the
    #               specified <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    # @option params [String] :next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>Specifies the total number of results that you want included on each page
    #                of the response. If you do not include this parameter, it defaults to a value that is
    #                specific to the operation. If additional items exist beyond the number you specify, the
    #                <code>NextToken</code> response element is returned with a value (not null).
    #                Include the specified value as the <code>NextToken</code> request parameter in the next
    #                call to the operation to get the next part of the results. Note that the service might
    #                return fewer results than the maximum even when there are more results available. You
    #                should check <code>NextToken</code> after every operation to ensure that you receive all
    #                of the results.</p>
    #
    # @option params [String] :resource_region_scope
    #   <p>Specifies that you want the results to include only
    #               resources that have the specified scope.</p>
    #               <ul>
    #               <li>
    #                  <p>
    #                     <code>ALL</code> – the results include both global and
    #                       regional resources or resource types.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>GLOBAL</code> – the results include only global
    #                       resources or resource types.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>REGIONAL</code> – the results include only regional
    #                       resources or resource types.</p>
    #               </li>
    #            </ul>
    #               <p>The default value is <code>ALL</code>.</p>
    #
    # @return [Types::ListResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_resources(
    #     resource_owner: 'SELF', # required - accepts ["SELF", "OTHER-ACCOUNTS"]
    #     principal: 'principal',
    #     resource_type: 'resourceType',
    #     resource_arns: [
    #       'member'
    #     ],
    #     resource_share_arns: [
    #       'member'
    #     ],
    #     next_token: 'nextToken',
    #     max_results: 1,
    #     resource_region_scope: 'ALL' # accepts ["ALL", "REGIONAL", "GLOBAL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListResourcesOutput
    #   resp.data.resources #=> Array<Resource>
    #   resp.data.resources[0] #=> Types::Resource
    #   resp.data.resources[0].arn #=> String
    #   resp.data.resources[0].type #=> String
    #   resp.data.resources[0].resource_share_arn #=> String
    #   resp.data.resources[0].resource_group_arn #=> String
    #   resp.data.resources[0].status #=> String, one of ["AVAILABLE", "ZONAL_RESOURCE_INACCESSIBLE", "LIMIT_EXCEEDED", "UNAVAILABLE", "PENDING"]
    #   resp.data.resources[0].status_message #=> String
    #   resp.data.resources[0].creation_time #=> Time
    #   resp.data.resources[0].last_updated_time #=> Time
    #   resp.data.resources[0].resource_region_scope #=> String, one of ["REGIONAL", "GLOBAL"]
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidNextTokenException, Errors::MalformedArnException, Errors::InvalidResourceTypeException, Errors::UnknownResourceException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::ServiceUnavailableException]),
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

    # <p>When you attach a resource-based permission policy to a resource, it automatically
    #             creates a resource share. However, resource shares created this way are visible only to the resource share owner, and
    #             the resource share can't be modified in RAM.</p>
    #         <p>You can use this operation to promote the resource share to a full RAM resource share. When you promote
    #             a resource share, you can then manage the resource share in RAM and it becomes visible to all of the
    #             principals you shared it with.</p>
    #
    # @param [Hash] params
    #   See {Types::PromoteResourceShareCreatedFromPolicyInput}.
    #
    # @option params [String] :resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share to promote.</p>
    #
    # @return [Types::PromoteResourceShareCreatedFromPolicyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.promote_resource_share_created_from_policy(
    #     resource_share_arn: 'resourceShareArn' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PromoteResourceShareCreatedFromPolicyOutput
    #   resp.data.return_value #=> Boolean
    #
    def promote_resource_share_created_from_policy(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PromoteResourceShareCreatedFromPolicyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PromoteResourceShareCreatedFromPolicyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PromoteResourceShareCreatedFromPolicy
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MissingRequiredParameterException, Errors::ResourceShareLimitExceededException, Errors::MalformedArnException, Errors::OperationNotPermittedException, Errors::UnknownResourceException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::PromoteResourceShareCreatedFromPolicy
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PromoteResourceShareCreatedFromPolicy,
        stubs: @stubs,
        params_class: Params::PromoteResourceShareCreatedFromPolicyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :promote_resource_share_created_from_policy
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Rejects an invitation to a resource share from another Amazon Web Services account.</p>
    #
    # @param [Hash] params
    #   See {Types::RejectResourceShareInvitationInput}.
    #
    # @option params [String] :resource_share_invitation_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the invitation that you want to reject.</p>
    #
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #                value.</a>.</p>
    #                <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #
    # @return [Types::RejectResourceShareInvitationOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.reject_resource_share_invitation(
    #     resource_share_invitation_arn: 'resourceShareInvitationArn', # required
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RejectResourceShareInvitationOutput
    #   resp.data.resource_share_invitation #=> Types::ResourceShareInvitation
    #   resp.data.resource_share_invitation.resource_share_invitation_arn #=> String
    #   resp.data.resource_share_invitation.resource_share_name #=> String
    #   resp.data.resource_share_invitation.resource_share_arn #=> String
    #   resp.data.resource_share_invitation.sender_account_id #=> String
    #   resp.data.resource_share_invitation.receiver_account_id #=> String
    #   resp.data.resource_share_invitation.invitation_timestamp #=> Time
    #   resp.data.resource_share_invitation.status #=> String, one of ["PENDING", "ACCEPTED", "REJECTED", "EXPIRED"]
    #   resp.data.resource_share_invitation.resource_share_associations #=> Array<ResourceShareAssociation>
    #   resp.data.resource_share_invitation.resource_share_associations[0] #=> Types::ResourceShareAssociation
    #   resp.data.resource_share_invitation.resource_share_associations[0].resource_share_arn #=> String
    #   resp.data.resource_share_invitation.resource_share_associations[0].resource_share_name #=> String
    #   resp.data.resource_share_invitation.resource_share_associations[0].associated_entity #=> String
    #   resp.data.resource_share_invitation.resource_share_associations[0].association_type #=> String, one of ["PRINCIPAL", "RESOURCE"]
    #   resp.data.resource_share_invitation.resource_share_associations[0].status #=> String, one of ["ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"]
    #   resp.data.resource_share_invitation.resource_share_associations[0].status_message #=> String
    #   resp.data.resource_share_invitation.resource_share_associations[0].creation_time #=> Time
    #   resp.data.resource_share_invitation.resource_share_associations[0].last_updated_time #=> Time
    #   resp.data.resource_share_invitation.resource_share_associations[0].external #=> Boolean
    #   resp.data.resource_share_invitation.receiver_arn #=> String
    #   resp.data.client_token #=> String
    #
    def reject_resource_share_invitation(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RejectResourceShareInvitationInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RejectResourceShareInvitationInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RejectResourceShareInvitation
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IdempotentParameterMismatchException, Errors::MalformedArnException, Errors::ResourceShareInvitationAlreadyAcceptedException, Errors::OperationNotPermittedException, Errors::ResourceShareInvitationArnNotFoundException, Errors::ResourceShareInvitationAlreadyRejectedException, Errors::ResourceShareInvitationExpiredException, Errors::ServerInternalException, Errors::InvalidClientTokenException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::RejectResourceShareInvitation
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RejectResourceShareInvitation,
        stubs: @stubs,
        params_class: Params::RejectResourceShareInvitationOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :reject_resource_share_invitation
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds the specified tag keys and values to the specified resource share. The tags are attached
    #             only to the resource share, not to the resources that are in the resource share.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share that you want to add tags to.</p>
    #
    # @option params [Array<Tag>] :tags
    #   <p>A list of one or more tag key and value pairs. The tag key must be present and not be
    #               an empty string. The tag value must be present but can be an empty string.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_share_arn: 'resourceShareArn', # required
    #     tags: [
    #       {
    #         key: 'key',
    #         value: 'value'
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::TagPolicyViolationException, Errors::MalformedArnException, Errors::ResourceArnNotFoundException, Errors::UnknownResourceException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::TagLimitExceededException, Errors::ServiceUnavailableException]),
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

    # <p>Removes the specified tag key and value pairs from the specified resource share.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share that you want to remove tags from. The tags are
    #               removed from the resource share, not the resources in the resource share.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>Specifies a list of one or more tag keys that you want to remove.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_share_arn: 'resourceShareArn', # required
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidParameterException, Errors::ServerInternalException, Errors::ServiceUnavailableException]),
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

    # <p>Modifies some of the properties of the specified resource share.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateResourceShareInput}.
    #
    # @option params [String] :resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share that you want to modify.</p>
    #
    # @option params [String] :name
    #   <p>If specified, the new name that you want to attach to the resource share.</p>
    #
    # @option params [Boolean] :allow_external_principals
    #   <p>Specifies whether principals outside your organization in Organizations can be associated
    #               with a resource share.</p>
    #
    # @option params [String] :client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #                value.</a>.</p>
    #                <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #
    # @return [Types::UpdateResourceShareOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_resource_share(
    #     resource_share_arn: 'resourceShareArn', # required
    #     name: 'name',
    #     allow_external_principals: false,
    #     client_token: 'clientToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateResourceShareOutput
    #   resp.data.resource_share #=> Types::ResourceShare
    #   resp.data.resource_share.resource_share_arn #=> String
    #   resp.data.resource_share.name #=> String
    #   resp.data.resource_share.owning_account_id #=> String
    #   resp.data.resource_share.allow_external_principals #=> Boolean
    #   resp.data.resource_share.status #=> String, one of ["PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED"]
    #   resp.data.resource_share.status_message #=> String
    #   resp.data.resource_share.tags #=> Array<Tag>
    #   resp.data.resource_share.tags[0] #=> Types::Tag
    #   resp.data.resource_share.tags[0].key #=> String
    #   resp.data.resource_share.tags[0].value #=> String
    #   resp.data.resource_share.creation_time #=> Time
    #   resp.data.resource_share.last_updated_time #=> Time
    #   resp.data.resource_share.feature_set #=> String, one of ["CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"]
    #   resp.data.client_token #=> String
    #
    def update_resource_share(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateResourceShareInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateResourceShareInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateResourceShare
      )
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
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::MissingRequiredParameterException, Errors::IdempotentParameterMismatchException, Errors::MalformedArnException, Errors::OperationNotPermittedException, Errors::UnknownResourceException, Errors::InvalidParameterException, Errors::ServerInternalException, Errors::InvalidClientTokenException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::UpdateResourceShare
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateResourceShare,
        stubs: @stubs,
        params_class: Params::UpdateResourceShareOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_resource_share
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
