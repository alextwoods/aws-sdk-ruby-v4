# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::RAM
  module Types

    # @!attribute resource_share_invitation_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the invitation that you want to accept.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #                value.</a>.</p>
    #                <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #
    #   @return [String]
    #
    AcceptResourceShareInvitationInput = ::Struct.new(
      :resource_share_invitation_arn,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_invitation
    #   <p>An object that contains information about the specified invitation.</p>
    #
    #   @return [ResourceShareInvitation]
    #
    # @!attribute client_token
    #   <p>The idempotency identifier associated with this request. If you
    #                want to repeat the same operation in an idempotent manner then you must include this
    #                value in the <code>clientToken</code> request parameter of that later call. All other
    #                parameters must also have the same values that you used in the first call.</p>
    #
    #   @return [String]
    #
    AcceptResourceShareInvitationOutput = ::Struct.new(
      :resource_share_invitation,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share that you want to add principals or resources
    #               to.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arns
    #   <p>Specifies a list of <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> of the resources that you want to share. This can be
    #                   <code>null</code> if you want to add only principals.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute principals
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
    #                For more information, see <a href="https://docs.aws.amazon.com/ram/latest/userguide/permissions.html permissions-rbp-supported-resource-types">Sharing with IAM roles and users</a> in the <i>Resource Access Manager User
    #                       Guide</i>.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #                value.</a>.</p>
    #                <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #
    #   @return [String]
    #
    AssociateResourceShareInput = ::Struct.new(
      :resource_share_arn,
      :resource_arns,
      :principals,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_associations
    #   <p>An array of objects that contain information about the associations.</p>
    #
    #   @return [Array<ResourceShareAssociation>]
    #
    # @!attribute client_token
    #   <p>The idempotency identifier associated with this request. If you
    #                want to repeat the same operation in an idempotent manner then you must include this
    #                value in the <code>clientToken</code> request parameter of that later call. All other
    #                parameters must also have the same values that you used in the first call.</p>
    #
    #   @return [String]
    #
    AssociateResourceShareOutput = ::Struct.new(
      :resource_share_associations,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share to which you want to add or replace
    #               permissions.</p>
    #
    #   @return [String]
    #
    # @!attribute permission_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the RAM permission to associate with the resource share.
    #               To find the ARN for a permission, use either the <a>ListPermissions</a> operation or go to the <a href="https://console.aws.amazon.com/ram/home Permissions:">Permissions library</a> page in the RAM console and
    #                then choose the name of the permission. The ARN is displayed on the detail page.</p>
    #
    #   @return [String]
    #
    # @!attribute replace
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
    #   @return [Boolean]
    #
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #                value.</a>.</p>
    #                <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #
    #   @return [String]
    #
    # @!attribute permission_version
    #   <p>Specifies the version of the RAM permission to associate with the resource share. If you don't
    #               specify this parameter, the operation uses the version designated as the default. You
    #               can use the <a>ListPermissionVersions</a> operation to discover the available
    #               versions of a permission.</p>
    #
    #   @return [Integer]
    #
    AssociateResourceSharePermissionInput = ::Struct.new(
      :resource_share_arn,
      :permission_arn,
      :replace,
      :client_token,
      :permission_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute return_value
    #   <p>A return value of <code>true</code> indicates that the request succeeded.
    #                A value of <code>false</code> indicates that the request failed.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute client_token
    #   <p>The idempotency identifier associated with this request. If you
    #                want to repeat the same operation in an idempotent manner then you must include this
    #                value in the <code>clientToken</code> request parameter of that later call. All other
    #                parameters must also have the same values that you used in the first call.</p>
    #
    #   @return [String]
    #
    AssociateResourceSharePermissionOutput = ::Struct.new(
      :return_value,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute name
    #   <p>Specifies the name of the resource share.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arns
    #   <p>Specifies a list of one or more ARNs of the resources to associate with the
    #               resource share.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute principals
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
    #                For more information, see <a href="https://docs.aws.amazon.com/ram/latest/userguide/permissions.html permissions-rbp-supported-resource-types">Sharing with IAM roles and users</a> in the <i>Resource Access Manager User
    #                       Guide</i>.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute tags
    #   <p>Specifies one or more tags to attach to the resource share itself. It doesn't attach the tags to
    #               the resources associated with the resource share.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute allow_external_principals
    #   <p>Specifies whether principals outside your organization in Organizations can be associated
    #               with a resource share. A value of <code>true</code> lets you share with individual Amazon Web Services accounts
    #               that are <i>not</i> in your organization. A value of <code>false</code>
    #               only has meaning if your account is a member of an Amazon Web Services Organization. The default value
    #               is <code>true</code>.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #                value.</a>.</p>
    #                <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #
    #   @return [String]
    #
    # @!attribute permission_arns
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> of the RAM permission to associate with the resource share. If you do
    #               not specify an ARN for the permission, RAM automatically attaches the default version
    #               of the permission for each resource type. You can associate only one permission with
    #               each resource type included in the resource share.</p>
    #
    #   @return [Array<String>]
    #
    CreateResourceShareInput = ::Struct.new(
      :name,
      :resource_arns,
      :principals,
      :tags,
      :allow_external_principals,
      :client_token,
      :permission_arns,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share
    #   <p>An object with information about the new resource share.</p>
    #
    #   @return [ResourceShare]
    #
    # @!attribute client_token
    #   <p>The idempotency identifier associated with this request. If you
    #                want to repeat the same operation in an idempotent manner then you must include this
    #                value in the <code>clientToken</code> request parameter of that later call. All other
    #                parameters must also have the same values that you used in the first call.</p>
    #
    #   @return [String]
    #
    CreateResourceShareOutput = ::Struct.new(
      :resource_share,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #                value.</a>.</p>
    #                <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #
    #   @return [String]
    #
    DeleteResourceShareInput = ::Struct.new(
      :resource_share_arn,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute return_value
    #   <p>A return value of <code>true</code> indicates that the request succeeded.
    #                A value of <code>false</code> indicates that the request failed.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute client_token
    #   <p>The idempotency identifier associated with this request. If you
    #                want to repeat the same operation in an idempotent manner then you must include this
    #                value in the <code>clientToken</code> request parameter of that later call. All other
    #                parameters must also have the same values that you used in the first call.</p>
    #
    #   @return [String]
    #
    DeleteResourceShareOutput = ::Struct.new(
      :return_value,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_arn
    #   <p>Specifies <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share that you want to remove resources from.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arns
    #   <p>Specifies a list of <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> for one or more resources that you want to remove from
    #               the resource share. After the operation runs, these resources are no longer shared with principals
    #               outside of the Amazon Web Services account that created the resources.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute principals
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
    #                For more information, see <a href="https://docs.aws.amazon.com/ram/latest/userguide/permissions.html permissions-rbp-supported-resource-types">Sharing with IAM roles and users</a> in the <i>Resource Access Manager User
    #                       Guide</i>.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #                value.</a>.</p>
    #                <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #
    #   @return [String]
    #
    DisassociateResourceShareInput = ::Struct.new(
      :resource_share_arn,
      :resource_arns,
      :principals,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_associations
    #   <p>An array of objects that contain information about the updated associations for this
    #               resource share.</p>
    #
    #   @return [Array<ResourceShareAssociation>]
    #
    # @!attribute client_token
    #   <p>The idempotency identifier associated with this request. If you
    #                want to repeat the same operation in an idempotent manner then you must include this
    #                value in the <code>clientToken</code> request parameter of that later call. All other
    #                parameters must also have the same values that you used in the first call.</p>
    #
    #   @return [String]
    #
    DisassociateResourceShareOutput = ::Struct.new(
      :resource_share_associations,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share from which you want to disassociate a permission.</p>
    #
    #   @return [String]
    #
    # @!attribute permission_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the permission to disassociate from the resource share. Changes to permissions
    #               take effect immediately.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #                value.</a>.</p>
    #                <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #
    #   @return [String]
    #
    DisassociateResourceSharePermissionInput = ::Struct.new(
      :resource_share_arn,
      :permission_arn,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute return_value
    #   <p>A return value of <code>true</code> indicates that the request succeeded.
    #                A value of <code>false</code> indicates that the request failed.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute client_token
    #   <p>The idempotency identifier associated with this request. If you
    #                want to repeat the same operation in an idempotent manner then you must include this
    #                value in the <code>clientToken</code> request parameter of that later call. All other
    #                parameters must also have the same values that you used in the first call.</p>
    #
    #   @return [String]
    #
    DisassociateResourceSharePermissionOutput = ::Struct.new(
      :return_value,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    EnableSharingWithAwsOrganizationInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute return_value
    #   <p>A return value of <code>true</code> indicates that the request succeeded.
    #                A value of <code>false</code> indicates that the request failed.</p>
    #
    #   @return [Boolean]
    #
    EnableSharingWithAwsOrganizationOutput = ::Struct.new(
      :return_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute permission_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the permission whose contents you want to retrieve.
    #               To find the ARN for a permission, use either the <a>ListPermissions</a> operation or go to the <a href="https://console.aws.amazon.com/ram/home Permissions:">Permissions library</a> page in the RAM console and
    #                then choose the name of the permission. The ARN is displayed on the detail page.</p>
    #
    #   @return [String]
    #
    # @!attribute permission_version
    #   <p>Specifies identifier for the version of the RAM permission to retrieve. If you don't
    #               specify this parameter, the operation retrieves the default version.</p>
    #
    #   @return [Integer]
    #
    GetPermissionInput = ::Struct.new(
      :permission_arn,
      :permission_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute permission
    #   <p>An object that contains information about the permission.</p>
    #
    #   @return [ResourceSharePermissionDetail]
    #
    GetPermissionOutput = ::Struct.new(
      :permission,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arns
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> of the resources whose policies you want to retrieve.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute principal
    #   <p>Specifies the principal.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
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
    #   @return [Integer]
    #
    GetResourcePoliciesInput = ::Struct.new(
      :resource_arns,
      :principal,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policies
    #   <p>An array of resource policy documents in JSON format.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>If present, this value indicates that more output is available than
    #                is included in the current response. Use this value in the <code>NextToken</code>
    #                request parameter in a subsequent call to the operation to get the next part of the
    #                output. You should repeat this until the <code>NextToken</code> response element comes
    #                back as <code>null</code>. This indicates that this is the last page of results.</p>
    #
    #   @return [String]
    #
    GetResourcePoliciesOutput = ::Struct.new(
      :policies,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute association_type
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
    #   Enum, one of: ["PRINCIPAL", "RESOURCE"]
    #
    #   @return [String]
    #
    # @!attribute resource_share_arns
    #   <p>Specifies a list of <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> of the resource share whose associations you want to
    #               retrieve.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource whose resource shares you want to retrieve.</p>
    #           <p>You cannot specify this parameter if the association type is
    #               <code>PRINCIPAL</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute principal
    #   <p>Specifies the ID of the principal whose resource shares you want to retrieve. This can be an
    #               Amazon Web Services account ID, an organization ID, an organizational unit ID, or the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of an
    #               individual IAM user or role.</p>
    #           <p>You cannot specify this parameter if the association type is
    #               <code>RESOURCE</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute association_status
    #   <p>Specifies that you want to retrieve only associations with this status.</p>
    #
    #   Enum, one of: ["ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
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
    #   @return [Integer]
    #
    GetResourceShareAssociationsInput = ::Struct.new(
      :association_type,
      :resource_share_arns,
      :resource_arn,
      :principal,
      :association_status,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_associations
    #   <p>An array of objects that contain the details about the associations.</p>
    #
    #   @return [Array<ResourceShareAssociation>]
    #
    # @!attribute next_token
    #   <p>If present, this value indicates that more output is available than
    #                is included in the current response. Use this value in the <code>NextToken</code>
    #                request parameter in a subsequent call to the operation to get the next part of the
    #                output. You should repeat this until the <code>NextToken</code> response element comes
    #                back as <code>null</code>. This indicates that this is the last page of results.</p>
    #
    #   @return [String]
    #
    GetResourceShareAssociationsOutput = ::Struct.new(
      :resource_share_associations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_invitation_arns
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> of the resource share invitations you want information about.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_share_arns
    #   <p>Specifies that you want details about invitations only for the resource shares described by this
    #               list of <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>
    #            </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
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
    #   @return [Integer]
    #
    GetResourceShareInvitationsInput = ::Struct.new(
      :resource_share_invitation_arns,
      :resource_share_arns,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_invitations
    #   <p>An array of objects that contain the details about the invitations.</p>
    #
    #   @return [Array<ResourceShareInvitation>]
    #
    # @!attribute next_token
    #   <p>If present, this value indicates that more output is available than
    #                is included in the current response. Use this value in the <code>NextToken</code>
    #                request parameter in a subsequent call to the operation to get the next part of the
    #                output. You should repeat this until the <code>NextToken</code> response element comes
    #                back as <code>null</code>. This indicates that this is the last page of results.</p>
    #
    #   @return [String]
    #
    GetResourceShareInvitationsOutput = ::Struct.new(
      :resource_share_invitations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_arns
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a> of individual resource shares that you want information about.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_share_status
    #   <p>Specifies that you want to retrieve details of only those resource shares that have this
    #               status.</p>
    #
    #   Enum, one of: ["PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute resource_owner
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
    #   Enum, one of: ["SELF", "OTHER-ACCOUNTS"]
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Specifies the name of an individual resource share that you want to retrieve details
    #               about.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_filters
    #   <p>Specifies that you want to retrieve details of only those resource shares that match the
    #               specified tag keys and values.</p>
    #
    #   @return [Array<TagFilter>]
    #
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
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
    #   @return [Integer]
    #
    # @!attribute permission_arn
    #   <p>Specifies that you want to retrieve details of only those resource shares that use the RAM
    #               permission with this <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a>.</p>
    #
    #   @return [String]
    #
    GetResourceSharesInput = ::Struct.new(
      :resource_share_arns,
      :resource_share_status,
      :resource_owner,
      :name,
      :tag_filters,
      :next_token,
      :max_results,
      :permission_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_shares
    #   <p>An array of objects that contain the information about the resource shares.</p>
    #
    #   @return [Array<ResourceShare>]
    #
    # @!attribute next_token
    #   <p>If present, this value indicates that more output is available than
    #                is included in the current response. Use this value in the <code>NextToken</code>
    #                request parameter in a subsequent call to the operation to get the next part of the
    #                output. You should repeat this until the <code>NextToken</code> response element comes
    #                back as <code>null</code>. This indicates that this is the last page of results.</p>
    #
    #   @return [String]
    #
    GetResourceSharesOutput = ::Struct.new(
      :resource_shares,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The client token input parameter was matched one used with a previous call to the
    #             operation, but at least one of the other input parameters is different from the previous
    #             call.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    IdempotentParameterMismatchException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The client token is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidClientTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified value for <code>MaxResults</code> is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidMaxResultsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified value for <code>NextToken</code> is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidNextTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A parameter is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidParameterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource type is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidResourceTypeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested state transition is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidStateTransitionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_invitation_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the invitation. You can use <a>GetResourceShareInvitations</a> to find the ARN of the invitation.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
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
    #   @return [Integer]
    #
    # @!attribute resource_region_scope
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
    #   Enum, one of: ["ALL", "REGIONAL", "GLOBAL"]
    #
    #   @return [String]
    #
    ListPendingInvitationResourcesInput = ::Struct.new(
      :resource_share_invitation_arn,
      :next_token,
      :max_results,
      :resource_region_scope,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resources
    #   <p>An array of objects that contain the information about the resources included the
    #               specified resource share.</p>
    #
    #   @return [Array<Resource>]
    #
    # @!attribute next_token
    #   <p>If present, this value indicates that more output is available than
    #                is included in the current response. Use this value in the <code>NextToken</code>
    #                request parameter in a subsequent call to the operation to get the next part of the
    #                output. You should repeat this until the <code>NextToken</code> response element comes
    #                back as <code>null</code>. This indicates that this is the last page of results.</p>
    #
    #   @return [String]
    #
    ListPendingInvitationResourcesOutput = ::Struct.new(
      :resources,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute permission_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the RAM permission whose versions you want to list. You
    #               can use the <code>permissionVersion</code> parameter on the <a>AssociateResourceSharePermission</a> operation to specify a non-default
    #               version to attach.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
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
    #   @return [Integer]
    #
    ListPermissionVersionsInput = ::Struct.new(
      :permission_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute permissions
    #   <p>An array of objects that contain details for each of the available versions.</p>
    #
    #   @return [Array<ResourceSharePermissionSummary>]
    #
    # @!attribute next_token
    #   <p>If present, this value indicates that more output is available than
    #                is included in the current response. Use this value in the <code>NextToken</code>
    #                request parameter in a subsequent call to the operation to get the next part of the
    #                output. You should repeat this until the <code>NextToken</code> response element comes
    #                back as <code>null</code>. This indicates that this is the last page of results.</p>
    #
    #   @return [String]
    #
    ListPermissionVersionsOutput = ::Struct.new(
      :permissions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_type
    #   <p>Specifies that you want to list permissions for only the specified resource type. For
    #               example, to list only permissions that apply to EC2 subnets, specify
    #                   <code>ec2:Subnet</code>. You can use the <a>ListResourceTypes</a>
    #               operation to get the specific string required.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
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
    #   @return [Integer]
    #
    ListPermissionsInput = ::Struct.new(
      :resource_type,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute permissions
    #   <p>An array of objects with information about the permissions.</p>
    #
    #   @return [Array<ResourceSharePermissionSummary>]
    #
    # @!attribute next_token
    #   <p>If present, this value indicates that more output is available than
    #                is included in the current response. Use this value in the <code>NextToken</code>
    #                request parameter in a subsequent call to the operation to get the next part of the
    #                output. You should repeat this until the <code>NextToken</code> response element comes
    #                back as <code>null</code>. This indicates that this is the last page of results.</p>
    #
    #   @return [String]
    #
    ListPermissionsOutput = ::Struct.new(
      :permissions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_owner
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
    #   Enum, one of: ["SELF", "OTHER-ACCOUNTS"]
    #
    #   @return [String]
    #
    # @!attribute resource_arn
    #   <p>Specifies that you want to list principal information for the resource share with the specified
    #               <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute principals
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
    #                For more information, see <a href="https://docs.aws.amazon.com/ram/latest/userguide/permissions.html permissions-rbp-supported-resource-types">Sharing with IAM roles and users</a> in the <i>Resource Access Manager User
    #                       Guide</i>.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_type
    #   <p>Specifies that you want to list information for only principals associated with resource shares
    #               that include the specified resource type.</p>
    #           <p>For a list of valid values, query the <a>ListResourceTypes</a>
    #               operation.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_share_arns
    #   <p>Specifies that you want to list information for only principals associated with the
    #               resource shares specified by a list the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
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
    #   @return [Integer]
    #
    ListPrincipalsInput = ::Struct.new(
      :resource_owner,
      :resource_arn,
      :principals,
      :resource_type,
      :resource_share_arns,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute principals
    #   <p>An array of objects that contain the details about the principals.</p>
    #
    #   @return [Array<Principal>]
    #
    # @!attribute next_token
    #   <p>If present, this value indicates that more output is available than
    #                is included in the current response. Use this value in the <code>NextToken</code>
    #                request parameter in a subsequent call to the operation to get the next part of the
    #                output. You should repeat this until the <code>NextToken</code> response element comes
    #                back as <code>null</code>. This indicates that this is the last page of results.</p>
    #
    #   @return [String]
    #
    ListPrincipalsOutput = ::Struct.new(
      :principals,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share for which you want to retrieve the associated
    #               permissions.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
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
    #   @return [Integer]
    #
    ListResourceSharePermissionsInput = ::Struct.new(
      :resource_share_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute permissions
    #   <p>An array of objects that describe the permissions associated with the resource share.</p>
    #
    #   @return [Array<ResourceSharePermissionSummary>]
    #
    # @!attribute next_token
    #   <p>If present, this value indicates that more output is available than
    #                is included in the current response. Use this value in the <code>NextToken</code>
    #                request parameter in a subsequent call to the operation to get the next part of the
    #                output. You should repeat this until the <code>NextToken</code> response element comes
    #                back as <code>null</code>. This indicates that this is the last page of results.</p>
    #
    #   @return [String]
    #
    ListResourceSharePermissionsOutput = ::Struct.new(
      :permissions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
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
    #   @return [Integer]
    #
    # @!attribute resource_region_scope
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
    #   Enum, one of: ["ALL", "REGIONAL", "GLOBAL"]
    #
    #   @return [String]
    #
    ListResourceTypesInput = ::Struct.new(
      :next_token,
      :max_results,
      :resource_region_scope,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_types
    #   <p>An array of objects that contain information about the resource types that can be
    #               shared using RAM.</p>
    #
    #   @return [Array<ServiceNameAndResourceType>]
    #
    # @!attribute next_token
    #   <p>If present, this value indicates that more output is available than
    #                is included in the current response. Use this value in the <code>NextToken</code>
    #                request parameter in a subsequent call to the operation to get the next part of the
    #                output. You should repeat this until the <code>NextToken</code> response element comes
    #                back as <code>null</code>. This indicates that this is the last page of results.</p>
    #
    #   @return [String]
    #
    ListResourceTypesOutput = ::Struct.new(
      :resource_types,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_owner
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
    #   Enum, one of: ["SELF", "OTHER-ACCOUNTS"]
    #
    #   @return [String]
    #
    # @!attribute principal
    #   <p>Specifies that you want to list only the resource shares that are associated with the specified
    #               principal.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>Specifies that you want to list only the resource shares that include resources of the specified
    #               resource type.</p>
    #           <p>For valid values, query the <a>ListResourceTypes</a> operation.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_arns
    #   <p>Specifies that you want to list only the resource shares that include resources with the
    #               specified <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute resource_share_arns
    #   <p>Specifies that you want to list only resources in the resource shares identified by the
    #               specified <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resource Names (ARNs)</a>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>Specifies that you want to receive the next page of results. Valid
    #                only if you received a <code>NextToken</code> response in the previous request. If you
    #                did, it indicates that more output is available. Set this parameter to the value
    #                provided by the previous call's <code>NextToken</code> response to request the
    #                next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
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
    #   @return [Integer]
    #
    # @!attribute resource_region_scope
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
    #   Enum, one of: ["ALL", "REGIONAL", "GLOBAL"]
    #
    #   @return [String]
    #
    ListResourcesInput = ::Struct.new(
      :resource_owner,
      :principal,
      :resource_type,
      :resource_arns,
      :resource_share_arns,
      :next_token,
      :max_results,
      :resource_region_scope,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resources
    #   <p>An array of objects that contain information about the resources.</p>
    #
    #   @return [Array<Resource>]
    #
    # @!attribute next_token
    #   <p>If present, this value indicates that more output is available than
    #                is included in the current response. Use this value in the <code>NextToken</code>
    #                request parameter in a subsequent call to the operation to get the next part of the
    #                output. You should repeat this until the <code>NextToken</code> response element comes
    #                back as <code>null</code>. This indicates that this is the last page of results.</p>
    #
    #   @return [String]
    #
    ListResourcesOutput = ::Struct.new(
      :resources,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The format of an Amazon Resource Name (ARN) is not valid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MalformedArnException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A required input parameter is missing.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MissingRequiredParameterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested operation is not permitted.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OperationNotPermittedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a principal for use with Resource Access Manager.</p>
    #
    # @!attribute id
    #   <p>The ID of the principal.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_share_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of a resource share the principal is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time when the principal was associated with the resource share.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The date and time when the association was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute external
    #   <p>Indicates whether the principal belongs to the same organization in Organizations as the
    #               Amazon Web Services account that owns the resource share.</p>
    #
    #   @return [Boolean]
    #
    Principal = ::Struct.new(
      :id,
      :resource_share_arn,
      :creation_time,
      :last_updated_time,
      :external,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share to promote.</p>
    #
    #   @return [String]
    #
    PromoteResourceShareCreatedFromPolicyInput = ::Struct.new(
      :resource_share_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute return_value
    #   <p>A return value of <code>true</code> indicates that the request succeeded.
    #                A value of <code>false</code> indicates that the request failed.</p>
    #
    #   @return [Boolean]
    #
    PromoteResourceShareCreatedFromPolicyOutput = ::Struct.new(
      :return_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_invitation_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the invitation that you want to reject.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #                value.</a>.</p>
    #                <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #
    #   @return [String]
    #
    RejectResourceShareInvitationInput = ::Struct.new(
      :resource_share_invitation_arn,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_invitation
    #   <p>An object that contains the details about the rejected invitation.</p>
    #
    #   @return [ResourceShareInvitation]
    #
    # @!attribute client_token
    #   <p>The idempotency identifier associated with this request. If you
    #                want to repeat the same operation in an idempotent manner then you must include this
    #                value in the <code>clientToken</code> request parameter of that later call. All other
    #                parameters must also have the same values that you used in the first call.</p>
    #
    #   @return [String]
    #
    RejectResourceShareInvitationOutput = ::Struct.new(
      :resource_share_invitation,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a resource associated with a resource share in RAM.</p>
    #
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The resource type. This takes the form of:
    #                   <code>service-code</code>:<code>resource-code</code>
    #            </p>
    #
    #   @return [String]
    #
    # @!attribute resource_share_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share this resource is associated with.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_group_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource group. This value is available only if the resource is
    #               part of a resource group.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the resource.</p>
    #
    #   Enum, one of: ["AVAILABLE", "ZONAL_RESOURCE_INACCESSIBLE", "LIMIT_EXCEEDED", "UNAVAILABLE", "PENDING"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A message about the status of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time when the resource was associated with the resource share.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The date an time when the association was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute resource_region_scope
    #   <p>Specifies the scope of visibility of this resource:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>REGIONAL</b> – The resource can be
    #                       accessed only by using requests that target the Amazon Web Services Region in which the
    #                       resource exists.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>GLOBAL</b> – The resource can be accessed
    #                       from any Amazon Web Services Region.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["REGIONAL", "GLOBAL"]
    #
    #   @return [String]
    #
    Resource = ::Struct.new(
      :arn,
      :type,
      :resource_share_arn,
      :resource_group_arn,
      :status,
      :status_message,
      :creation_time,
      :last_updated_time,
      :resource_region_scope,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified Amazon Resource Name (ARN) was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceArnNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceOwner
    #
    module ResourceOwner
      # No documentation available.
      #
      SELF = "SELF"

      # No documentation available.
      #
      OTHER_ACCOUNTS = "OTHER-ACCOUNTS"
    end

    # Includes enum constants for ResourceRegionScope
    #
    module ResourceRegionScope
      # No documentation available.
      #
      REGIONAL = "REGIONAL"

      # No documentation available.
      #
      GLOBAL = "GLOBAL"
    end

    # Includes enum constants for ResourceRegionScopeFilter
    #
    module ResourceRegionScopeFilter
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      REGIONAL = "REGIONAL"

      # No documentation available.
      #
      GLOBAL = "GLOBAL"
    end

    # <p>Describes a resource share in RAM.</p>
    #
    # @!attribute resource_share_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the resource share.</p>
    #
    #   @return [String]
    #
    # @!attribute owning_account_id
    #   <p>The ID of the Amazon Web Services account that owns the resource share.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_external_principals
    #   <p>Indicates whether principals outside your organization in Organizations can be associated
    #               with a resource share.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute status
    #   <p>The current status of the resource share.</p>
    #
    #   Enum, one of: ["PENDING", "ACTIVE", "FAILED", "DELETING", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A message about the status of the resource share.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tag key and value pairs attached to the resource share.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute creation_time
    #   <p>The date and time when the resource share was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The date and time when the resource share was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute feature_set
    #   <p>Indicates how the resource share was created. Possible values include:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>CREATED_FROM_POLICY</code> - Indicates that the resource share was created from an
    #                       Identity and Access Management (IAM) resource-based permission policy attached to the resource.
    #                       This type of resource share is visible only to the Amazon Web Services account that created it. You
    #                       can't modify it in RAM unless you promote it. For more information, see <a>PromoteResourceShareCreatedFromPolicy</a>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>PROMOTING_TO_STANDARD</code> - The resource share is in the process of being
    #                       promoted. For more information, see <a>PromoteResourceShareCreatedFromPolicy</a>.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>STANDARD</code> - Indicates that the resource share was created in RAM using the
    #                       console or APIs. These resource shares are visible to all principals you share the resource share
    #                       with. You can modify these resource shares in RAM using the console or APIs.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["CREATED_FROM_POLICY", "PROMOTING_TO_STANDARD", "STANDARD"]
    #
    #   @return [String]
    #
    ResourceShare = ::Struct.new(
      :resource_share_arn,
      :name,
      :owning_account_id,
      :allow_external_principals,
      :status,
      :status_message,
      :tags,
      :creation_time,
      :last_updated_time,
      :feature_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes an association with a resource share and either a principal or a resource.</p>
    #
    # @!attribute resource_share_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_share_name
    #   <p>The name of the resource share.</p>
    #
    #   @return [String]
    #
    # @!attribute associated_entity
    #   <p>The associated entity. This can be either of the following:</p>
    #           <ul>
    #               <li>
    #                   <p>For a resource association, this is the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource.</p>
    #               </li>
    #               <li>
    #                   <p>For principal associations, this is one of the following:</p>
    #                   <ul>
    #                     <li>
    #                           <p>The ID of an Amazon Web Services account</p>
    #                       </li>
    #                     <li>
    #                           <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of an organization in Organizations</p>
    #                       </li>
    #                     <li>
    #                           <p>The ARN of an organizational unit (OU) in Organizations</p>
    #                       </li>
    #                     <li>
    #                           <p>The ARN of an IAM role</p>
    #                       </li>
    #                     <li>
    #                           <p>The ARN of an IAM user</p>
    #                       </li>
    #                  </ul>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    # @!attribute association_type
    #   <p>The type of entity included in this association.</p>
    #
    #   Enum, one of: ["PRINCIPAL", "RESOURCE"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the association.</p>
    #
    #   Enum, one of: ["ASSOCIATING", "ASSOCIATED", "FAILED", "DISASSOCIATING", "DISASSOCIATED"]
    #
    #   @return [String]
    #
    # @!attribute status_message
    #   <p>A message about the status of the association.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time when the association was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The date and time when the association was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute external
    #   <p>Indicates whether the principal belongs to the same organization in Organizations as the
    #               Amazon Web Services account that owns the resource share.</p>
    #
    #   @return [Boolean]
    #
    ResourceShareAssociation = ::Struct.new(
      :resource_share_arn,
      :resource_share_name,
      :associated_entity,
      :association_type,
      :status,
      :status_message,
      :creation_time,
      :last_updated_time,
      :external,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceShareAssociationStatus
    #
    module ResourceShareAssociationStatus
      # No documentation available.
      #
      ASSOCIATING = "ASSOCIATING"

      # No documentation available.
      #
      ASSOCIATED = "ASSOCIATED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      DISASSOCIATING = "DISASSOCIATING"

      # No documentation available.
      #
      DISASSOCIATED = "DISASSOCIATED"
    end

    # Includes enum constants for ResourceShareAssociationType
    #
    module ResourceShareAssociationType
      # No documentation available.
      #
      PRINCIPAL = "PRINCIPAL"

      # No documentation available.
      #
      RESOURCE = "RESOURCE"
    end

    # Includes enum constants for ResourceShareFeatureSet
    #
    module ResourceShareFeatureSet
      # No documentation available.
      #
      CREATED_FROM_POLICY = "CREATED_FROM_POLICY"

      # No documentation available.
      #
      PROMOTING_TO_STANDARD = "PROMOTING_TO_STANDARD"

      # No documentation available.
      #
      STANDARD = "STANDARD"
    end

    # <p>Describes an invitation for an Amazon Web Services account to join a resource share.</p>
    #
    # @!attribute resource_share_invitation_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the invitation.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_share_name
    #   <p>The name of the resource share.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_share_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share</p>
    #
    #   @return [String]
    #
    # @!attribute sender_account_id
    #   <p>The ID of the Amazon Web Services account that sent the invitation.</p>
    #
    #   @return [String]
    #
    # @!attribute receiver_account_id
    #   <p>The ID of the Amazon Web Services account that received the invitation.</p>
    #
    #   @return [String]
    #
    # @!attribute invitation_timestamp
    #   <p>The date and time when the invitation was sent.</p>
    #
    #   @return [Time]
    #
    # @!attribute status
    #   <p>The current status of the invitation.</p>
    #
    #   Enum, one of: ["PENDING", "ACCEPTED", "REJECTED", "EXPIRED"]
    #
    #   @return [String]
    #
    # @!attribute resource_share_associations
    #   <p>To view the resources associated with a pending resource share invitation, use <a>ListPendingInvitationResources</a>.</p>
    #
    #   @deprecated
    #     This member has been deprecated. Use ListPendingInvitationResources.
    #
    #   @return [Array<ResourceShareAssociation>]
    #
    # @!attribute receiver_arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the IAM user or role that received the invitation.</p>
    #
    #   @return [String]
    #
    ResourceShareInvitation = ::Struct.new(
      :resource_share_invitation_arn,
      :resource_share_name,
      :resource_share_arn,
      :sender_account_id,
      :receiver_account_id,
      :invitation_timestamp,
      :status,
      :resource_share_associations,
      :receiver_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified invitation was already accepted.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceShareInvitationAlreadyAcceptedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified invitation was already rejected.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceShareInvitationAlreadyRejectedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified Amazon Resource Name (ARN) for an invitation was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceShareInvitationArnNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified invitation is expired.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceShareInvitationExpiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceShareInvitationStatus
    #
    module ResourceShareInvitationStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      ACCEPTED = "ACCEPTED"

      # No documentation available.
      #
      REJECTED = "REJECTED"

      # No documentation available.
      #
      EXPIRED = "EXPIRED"
    end

    # <p>This request would exceed the limit for resource shares for your account.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceShareLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an RAM permission.</p>
    #
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of this RAM permission.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the permission represented in this structure.</p>
    #
    #   @return [String]
    #
    # @!attribute default_version
    #   <p>Specifies whether the version of the permission represented in this structure is the
    #               default version for this permission.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute name
    #   <p>The name of this permission.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The resource type to which this permission applies.</p>
    #
    #   @return [String]
    #
    # @!attribute permission
    #   <p>The permission's effect and actions in JSON format. The <code>effect</code> indicates
    #               whether the specified actions are allowed or denied. The <code>actions</code> list the
    #               operations to which the principal is granted or denied access.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time when the permission was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The date and time when the permission was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute is_resource_type_default
    #   <p>Specifies whether the version of the permission represented in this structure is the
    #               default version for all resources of this resource type.</p>
    #
    #   @return [Boolean]
    #
    ResourceSharePermissionDetail = ::Struct.new(
      :arn,
      :version,
      :default_version,
      :name,
      :resource_type,
      :permission,
      :creation_time,
      :last_updated_time,
      :is_resource_type_default,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an RAM permission that is associated with a resource share and any of its
    #             resources of a specified type.</p>
    #
    # @!attribute arn
    #   <p>The <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the permission you want information about.</p>
    #
    #   @return [String]
    #
    # @!attribute version
    #   <p>The version of the permission represented in this structure.</p>
    #
    #   @return [String]
    #
    # @!attribute default_version
    #   <p>Specifies whether the version of the permission represented in this structure is the
    #               default version for this permission.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute name
    #   <p>The name of this permission.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_type
    #   <p>The type of resource to which this permission applies.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current status of the permission.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_time
    #   <p>The date and time when the permission was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_updated_time
    #   <p>The date and time when the permission was last updated.</p>
    #
    #   @return [Time]
    #
    # @!attribute is_resource_type_default
    #   <p>Specifies whether the version of the permission represented in this structure is the
    #               default version for all resources of this resource type.</p>
    #
    #   @return [Boolean]
    #
    ResourceSharePermissionSummary = ::Struct.new(
      :arn,
      :version,
      :default_version,
      :name,
      :resource_type,
      :status,
      :creation_time,
      :last_updated_time,
      :is_resource_type_default,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceShareStatus
    #
    module ResourceShareStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      DELETING = "DELETING"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # Includes enum constants for ResourceStatus
    #
    module ResourceStatus
      # No documentation available.
      #
      AVAILABLE = "AVAILABLE"

      # No documentation available.
      #
      ZONAL_RESOURCE_INACCESSIBLE = "ZONAL_RESOURCE_INACCESSIBLE"

      # No documentation available.
      #
      LIMIT_EXCEEDED = "LIMIT_EXCEEDED"

      # No documentation available.
      #
      UNAVAILABLE = "UNAVAILABLE"

      # No documentation available.
      #
      PENDING = "PENDING"
    end

    # <p>The service could not respond to the request due to an internal problem.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServerInternalException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a shareable resource type and the Amazon Web Services service to which resources
    #             of that type belong.</p>
    #
    # @!attribute resource_type
    #   <p>The type of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute service_name
    #   <p>The name of the Amazon Web Services service to which resources of this type belong.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_region_scope
    #   <p>Specifies the scope of visibility of resources of this type:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>REGIONAL</b> – The resource can be
    #                       accessed only by using requests that target the Amazon Web Services Region in which the
    #                       resource exists.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>GLOBAL</b> – The resource can be accessed
    #                       from any Amazon Web Services Region.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["REGIONAL", "GLOBAL"]
    #
    #   @return [String]
    #
    ServiceNameAndResourceType = ::Struct.new(
      :resource_type,
      :service_name,
      :resource_region_scope,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The service is not available.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure containing a tag. A tag is metadata that you can attach to your resources
    #             to help organize and categorize them. You can also use them to help you secure your
    #             resources. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access_tags.html">Controlling access to Amazon Web Services resources
    #                 using tags</a>.</p>
    #         <p>For more information about tags, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html">Tagging Amazon Web Services resources</a> in the
    #                 <i>Amazon Web Services General Reference Guide</i>.</p>
    #
    # @!attribute key
    #   <p>The key, or name, attached to the tag. Every tag must have a key. Key names are case
    #               sensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The string value attached to the tag. The value can be an empty string. Key values are
    #               case sensitive.</p>
    #
    #   @return [String]
    #
    Tag = ::Struct.new(
      :key,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A tag key and optional list of possible values that you can use to filter results for
    #             tagged resources.</p>
    #
    # @!attribute tag_key
    #   <p>The tag key. This must have a valid string value and can't be empty.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_values
    #   <p>A list of zero or more tag values. If no values are provided, then the filter matches
    #               any tag with the specified key, regardless of its value.</p>
    #
    #   @return [Array<String>]
    #
    TagFilter = ::Struct.new(
      :tag_key,
      :tag_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This request would exceed the limit for tags for your account.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TagLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified tag key is a reserved word and can't be used.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TagPolicyViolationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share that you want to add tags to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of one or more tag key and value pairs. The tag key must be present and not be
    #               an empty string. The tag value must be present but can be an empty string.</p>
    #
    #   @return [Array<Tag>]
    #
    TagResourceInput = ::Struct.new(
      :resource_share_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You exceeded the rate at which you are allowed to perform this operation. Please try
    #             again later.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ThrottlingException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A specified resource was not found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnknownResourceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share that you want to remove tags from. The tags are
    #               removed from the resource share, not the resources in the resource share.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>Specifies a list of one or more tag keys that you want to remove.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_share_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share_arn
    #   <p>Specifies the <a href="https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html">Amazon Resoure Name (ARN)</a> of the resource share that you want to modify.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>If specified, the new name that you want to attach to the resource share.</p>
    #
    #   @return [String]
    #
    # @!attribute allow_external_principals
    #   <p>Specifies whether principals outside your organization in Organizations can be associated
    #               with a resource share.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute client_token
    #   <p>Specifies a unique, case-sensitive identifier that you provide to
    #                ensure the idempotency of the request. This lets you safely retry the request without
    #                accidentally performing the same operation a second time. Passing the same value to a
    #                later call to an operation requires that you also pass the same value for all other
    #                parameters. We recommend that you use a <a href="https://wikipedia.org/wiki/Universally_unique_identifier">UUID type of
    #                value.</a>.</p>
    #                <p>If you don't provide this value, then Amazon Web Services generates a random one for
    #                you.</p>
    #
    #   @return [String]
    #
    UpdateResourceShareInput = ::Struct.new(
      :resource_share_arn,
      :name,
      :allow_external_principals,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_share
    #   <p>Information about the resource share.</p>
    #
    #   @return [ResourceShare]
    #
    # @!attribute client_token
    #   <p>The idempotency identifier associated with this request. If you
    #                want to repeat the same operation in an idempotent manner then you must include this
    #                value in the <code>clientToken</code> request parameter of that later call. All other
    #                parameters must also have the same values that you used in the first call.</p>
    #
    #   @return [String]
    #
    UpdateResourceShareOutput = ::Struct.new(
      :resource_share,
      :client_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
