# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Organizations
  module Types

    # <p>Your account isn't a member of an organization. To make this request, you must use the
    #             credentials of an account that belongs to an organization.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AWSOrganizationsNotInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute handshake_id
    #   <p>The unique identifier (ID) of the handshake that you want to accept.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-"
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    #
    #   @return [String]
    #
    AcceptHandshakeInput = ::Struct.new(
      :handshake_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute handshake
    #   <p>A structure that contains details about the accepted handshake.</p>
    #
    #   @return [Handshake]
    #
    AcceptHandshakeOutput = ::Struct.new(
      :handshake,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You don't have permissions to perform the requested operation. The user or role that
    #             is making the request must have at least one IAM permissions policy attached that
    #             grants the required permissions. For more information, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access Management</a> in the
    #                 <i>IAM User Guide.</i>
    #          </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The operation that you attempted requires you to have the
    #                 <code>iam:CreateServiceLinkedRole</code> for
    #                 <code>organizations.amazonaws.com</code> permission so that Organizations can create the
    #             required service-linked role. You don't have that permission.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   Enum, one of: ["ACCESS_DENIED_DURING_CREATE_SERVICE_LINKED_ROLE"]
    #
    #   @return [String]
    #
    AccessDeniedForDependencyException = ::Struct.new(
      :message,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AccessDeniedForDependencyExceptionReason
    #
    module AccessDeniedForDependencyExceptionReason
      # No documentation available.
      #
      ACCESS_DENIED_DURING_CREATE_SERVICE_LINKED_ROLE = "ACCESS_DENIED_DURING_CREATE_SERVICE_LINKED_ROLE"
    end

    # <p>Contains information about an Amazon Web Services account that is a member of an
    #             organization.</p>
    #
    # @!attribute id
    #   <p>The unique identifier (ID) of the account.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12
    #       digits.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the account.</p>
    #           <p>For more information about ARNs in Organizations, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html awsorganizations-resources-for-iam-policies">ARN
    #       Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address associated with the Amazon Web Services account.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for this parameter is a string of characters that represents a
    #               standard internet email address.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The friendly name of the account.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       that is used to validate this parameter is a string of any of the characters in the ASCII
    #       character range.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the account in the organization.</p>
    #
    #   Enum, one of: ["ACTIVE", "SUSPENDED", "PENDING_CLOSURE"]
    #
    #   @return [String]
    #
    # @!attribute joined_method
    #   <p>The method by which the account joined the organization.</p>
    #
    #   Enum, one of: ["INVITED", "CREATED"]
    #
    #   @return [String]
    #
    # @!attribute joined_timestamp
    #   <p>The date the account became a part of the organization.</p>
    #
    #   @return [Time]
    #
    Account = ::Struct.new(
      :id,
      :arn,
      :email,
      :name,
      :status,
      :joined_method,
      :joined_timestamp,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Organizations::Types::Account "\
          "id=#{id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "email=\"[SENSITIVE]\", "\
          "name=\"[SENSITIVE]\", "\
          "status=#{status || 'nil'}, "\
          "joined_method=#{joined_method || 'nil'}, "\
          "joined_timestamp=#{joined_timestamp || 'nil'}>"
      end
    end

    # <p>You attempted to close an account that is already closed.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccountAlreadyClosedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified account is already a delegated administrator for this Amazon Web Services
    #             service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccountAlreadyRegisteredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AccountJoinedMethod
    #
    module AccountJoinedMethod
      # No documentation available.
      #
      INVITED = "INVITED"

      # No documentation available.
      #
      CREATED = "CREATED"
    end

    # <p> We can't find an Amazon Web Services account with the <code>AccountId</code> that you specified, or
    #             the account whose credentials you used to make this request isn't a member of an
    #             organization.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccountNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified account is not a delegated administrator for this Amazon Web Services service. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccountNotRegisteredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can't invite an existing account to your organization until you verify that you
    #             own the email address associated with the management account. For more information, see
    #                 <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_create.html#about-email-verification">Email Address
    #                 Verification</a> in the <i>Organizations User Guide.</i>
    #          </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccountOwnerNotVerifiedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AccountStatus
    #
    module AccountStatus
      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      SUSPENDED = "SUSPENDED"

      # No documentation available.
      #
      PENDING_CLOSURE = "PENDING_CLOSURE"
    end

    # Includes enum constants for ActionType
    #
    module ActionType
      # No documentation available.
      #
      INVITE_ACCOUNT_TO_ORGANIZATION = "INVITE"

      # No documentation available.
      #
      ENABLE_ALL_FEATURES = "ENABLE_ALL_FEATURES"

      # No documentation available.
      #
      APPROVE_ALL_FEATURES = "APPROVE_ALL_FEATURES"

      # No documentation available.
      #
      ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE = "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"
    end

    # <p>This account is already a member of an organization. An account can belong to only one
    #             organization at a time.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AlreadyInOrganizationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_id
    #   <p>The unique identifier (ID) of the policy that you want to attach to the target. You
    #               can get the ID for the policy by calling the <a>ListPolicies</a>
    #               operation.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #
    #   @return [String]
    #
    # @!attribute target_id
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
    #   @return [String]
    #
    AttachPolicyInput = ::Struct.new(
      :policy_id,
      :target_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AttachPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute handshake_id
    #   <p>The unique identifier (ID) of the handshake that you want to cancel. You can get the
    #               ID from the <a>ListHandshakesForOrganization</a> operation.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-"
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    #
    #   @return [String]
    #
    CancelHandshakeInput = ::Struct.new(
      :handshake_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute handshake
    #   <p>A structure that contains details about the handshake that you canceled.</p>
    #
    #   @return [Handshake]
    #
    CancelHandshakeOutput = ::Struct.new(
      :handshake,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains a list of child entities, either OUs or accounts.</p>
    #
    # @!attribute id
    #   <p>The unique identifier (ID) of this child entity.</p>
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
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of this child entity.</p>
    #
    #   Enum, one of: ["ACCOUNT", "ORGANIZATIONAL_UNIT"]
    #
    #   @return [String]
    #
    Child = ::Struct.new(
      :id,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>We can't find an organizational unit (OU) or Amazon Web Services account with the
    #                 <code>ChildId</code> that you specified.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ChildNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChildType
    #
    module ChildType
      # No documentation available.
      #
      ACCOUNT = "ACCOUNT"

      # No documentation available.
      #
      ORGANIZATIONAL_UNIT = "ORGANIZATIONAL_UNIT"
    end

    # @!attribute account_id
    #   <p>Retrieves the Amazon Web Services account Id for the current <code>CloseAccount</code> API request.
    #           </p>
    #
    #   @return [String]
    #
    CloseAccountInput = ::Struct.new(
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CloseAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The target of the operation is currently being modified by a different request. Try
    #             again later.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConcurrentModificationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request failed because it conflicts with the current state of the specified
    #             resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Performing this operation violates a minimum or maximum value limit. For example,
    #             attempting to remove the last service control policy (SCP) from an OU or root, inviting
    #             or creating too many accounts to the organization, or attaching too many policies to an
    #             account, OU, or root. This exception includes a reason that contains additional
    #             information about the violated limit:</p>
    #         <note>
    #             <p>Some of the reasons in the following list might not be applicable to this specific
    #                 API or operation.</p>
    #         </note>
    #         <ul>
    #             <li>
    #                 <p>ACCOUNT_CANNOT_LEAVE_ORGANIZATION: You attempted to remove the management
    #                     account from the organization. You can't remove the management account. Instead,
    #                     after you remove all member accounts, delete the organization itself.</p>
    #             </li>
    #             <li>
    #                 <p>ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION: You attempted to remove an
    #                     account from the organization that doesn't yet have enough information to exist
    #                     as a standalone account. This account requires you to first complete phone
    #                     verification. Follow the steps at <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#orgs_manage_accounts_remove-from-master">Removing a member account from your organization</a> in the
    #                         <i>Organizations User Guide.</i>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of
    #                     accounts that you can create in one day.</p>
    #             </li>
    #             <li>
    #                 <p>ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number
    #                     of accounts in an organization. If you need more accounts, contact <a href="https://docs.aws.amazon.com/support/home#/">Amazon Web Services Support</a> to
    #                     request an increase in your limit. </p>
    #                 <p>Or the number of invitations that you tried to send would cause you to exceed
    #                     the limit of accounts in your organization. Send fewer invitations or contact
    #                     Amazon Web Services Support to request an increase in the number of accounts.</p>
    #                 <note>
    #                     <p>Deleted and closed accounts still count toward your limit.</p>
    #                 </note>
    #                 <important>
    #                     <p>If you get this exception when running a command immediately after
    #                         creating the organization, wait one hour and try again. After an hour, if
    #                         the command continues to fail with this error, contact <a href="https://docs.aws.amazon.com/support/home#/">Amazon Web Services
    #                         Support</a>.</p>
    #                 </important>
    #             </li>
    #             <li>
    #                 <p>CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR: You attempted to register
    #                     the management account of the organization as a delegated administrator for an
    #                     Amazon Web Services service integrated with Organizations. You can designate only a member account as a
    #                     delegated administrator.</p>
    #             </li>
    #             <li>
    #                 <p>CANNOT_CLOSE_MANAGEMENT_ACCOUNT: You attempted to close the management
    #                     account. To close the management account for the organization, you must first
    #                     either remove or close all member accounts in the organization. Follow standard
    #                     account closure process using root credentials.​ </p>
    #             </li>
    #             <li>
    #                 <p>CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG: You attempted to remove an
    #                     account that is registered as a delegated administrator for a service integrated
    #                     with your organization. To complete this operation, you must first deregister
    #                     this account as a delegated administrator. </p>
    #             </li>
    #             <li>
    #                 <p>CLOSE_ACCOUNT_QUOTA_EXCEEDED: You have exceeded close account quota for the
    #                     past 30 days. </p>
    #             </li>
    #             <li>
    #                 <p>CLOSE_ACCOUNT_REQUESTS_LIMIT_EXCEEDED: You attempted to exceed the number of
    #                     accounts that you can close at a time. ​ </p>
    #             </li>
    #             <li>
    #                 <p>CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION: To create an
    #                     organization in the specified region, you must enable all features mode.</p>
    #             </li>
    #             <li>
    #                 <p>DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE: You attempted to register an
    #                     Amazon Web Services account as a delegated administrator for an Amazon Web Services service that already has
    #                     a delegated administrator. To complete this operation, you must first deregister
    #                     any existing delegated administrators for this service.</p>
    #             </li>
    #             <li>
    #                 <p>EMAIL_VERIFICATION_CODE_EXPIRED: The email verification code is only valid for
    #                     a limited period of time. You must resubmit the request and generate a new
    #                     verfication code.</p>
    #             </li>
    #             <li>
    #                 <p>HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of
    #                     handshakes that you can send in one day.</p>
    #             </li>
    #             <li>
    #                 <p>INVALID_PAYMENT_INSTRUMENT: You cannot remove an account because no supported
    #                     payment method is associated with the account. Amazon Web Services does not support cards
    #                     issued by financial institutions in Russia or Belarus. For more information, see
    #                         <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/manage-general.html">Managing your
    #                         Amazon Web Services payments</a>.</p>
    #             </li>
    #             <li>
    #                 <p>MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE: To create an account in
    #                     this organization, you first must migrate the organization's management account
    #                     to the marketplace that corresponds to the management account's address. For
    #                     example, accounts with India addresses must be associated with the AISPL
    #                     marketplace. All accounts in an organization must be associated with the same
    #                     marketplace.</p>
    #             </li>
    #             <li>
    #                 <p>MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE: Applies only to the Amazon Web Services /> Regions
    #                     in China. To create an organization, the master must have a valid business
    #                     license. For more information, contact customer support.</p>
    #             </li>
    #             <li>
    #                 <p>MASTER_ACCOUNT_MISSING_CONTACT_INFO: To complete this operation, you must
    #                     first provide a valid contact address and phone number for the management
    #                     account. Then try the operation again.</p>
    #             </li>
    #             <li>
    #                 <p>MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED: To complete this operation, the
    #                     management account must have an associated account in the Amazon Web Services GovCloud
    #                     (US-West) Region. For more information, see <a href="https://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html">Organizations</a>
    #                     in the
    #                     <i>Amazon Web Services GovCloud User Guide.</i>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To create an organization with
    #                     this management account, you first must associate a valid payment instrument,
    #                     such as a credit card, with the account. Follow the steps at <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info">To leave an organization when all required account information has not yet
    #                         been provided</a> in the <i>Organizations User Guide.</i>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED: You attempted to
    #                     register more delegated administrators than allowed for the service principal.
    #                 </p>
    #             </li>
    #             <li>
    #                 <p>MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to exceed the number
    #                     of policies of a certain type that can be attached to an entity at one
    #                     time.</p>
    #             </li>
    #             <li>
    #                 <p>MAX_TAG_LIMIT_EXCEEDED: You have exceeded the number of tags allowed on this
    #                     resource. </p>
    #             </li>
    #             <li>
    #                 <p>MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To complete this operation with
    #                     this member account, you first must associate a valid payment instrument, such
    #                     as a credit card, with the account. Follow the steps at <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info">To leave an organization when all required account information has not yet
    #                         been provided</a> in the <i>Organizations User Guide.</i>
    #                </p>
    #             </li>
    #             <li>
    #                 <p>MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to detach a policy
    #                     from an entity that would cause the entity to have fewer than the minimum number
    #                     of policies of a certain type required.</p>
    #             </li>
    #             <li>
    #                 <p>ORGANIZATION_NOT_IN_ALL_FEATURES_MODE: You attempted to perform an operation
    #                     that requires the organization to be configured to support all features. An
    #                     organization that supports only consolidated billing features can't perform this
    #                     operation.</p>
    #             </li>
    #             <li>
    #                 <p>OU_DEPTH_LIMIT_EXCEEDED: You attempted to create an OU tree that is too many
    #                     levels deep.</p>
    #             </li>
    #             <li>
    #                 <p>OU_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the number of OUs that you
    #                     can have in an organization.</p>
    #             </li>
    #             <li>
    #                 <p>POLICY_CONTENT_LIMIT_EXCEEDED: You attempted to create a policy that is larger
    #                     than the maximum size.</p>
    #             </li>
    #             <li>
    #                 <p>POLICY_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the number of policies
    #                     that you can have in an organization.</p>
    #             </li>
    #             <li>
    #                 <p>SERVICE_ACCESS_NOT_ENABLED: You attempted to register a delegated
    #                     administrator before you enabled service access. Call the
    #                         <code>EnableAWSServiceAccess</code> API first.</p>
    #             </li>
    #             <li>
    #                 <p>TAG_POLICY_VIOLATION: You attempted to create or update a resource with tags
    #                     that are not compliant with the tag policy requirements for this account.</p>
    #             </li>
    #             <li>
    #                 <p>WAIT_PERIOD_ACTIVE: After you create an Amazon Web Services account, there is a waiting
    #                     period before you can remove it from the organization. If you get an error that
    #                     indicates that a wait period is required, try again in a few days.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   Enum, one of: ["ACCOUNT_NUMBER_LIMIT_EXCEEDED", "HANDSHAKE_RATE_LIMIT_EXCEEDED", "OU_NUMBER_LIMIT_EXCEEDED", "OU_DEPTH_LIMIT_EXCEEDED", "POLICY_NUMBER_LIMIT_EXCEEDED", "POLICY_CONTENT_LIMIT_EXCEEDED", "MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED", "MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED", "ACCOUNT_CANNOT_LEAVE_ORGANIZATION", "ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA", "ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION", "MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED", "MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED", "ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED", "MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE", "MASTER_ACCOUNT_MISSING_CONTACT_INFO", "MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED", "ORGANIZATION_NOT_IN_ALL_FEATURES_MODE", "CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION", "EMAIL_VERIFICATION_CODE_EXPIRED", "WAIT_PERIOD_ACTIVE", "MAX_TAG_LIMIT_EXCEEDED", "TAG_POLICY_VIOLATION", "MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED", "CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR", "CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG", "DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE", "MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE", "CANNOT_CLOSE_MANAGEMENT_ACCOUNT", "CLOSE_ACCOUNT_QUOTA_EXCEEDED", "CLOSE_ACCOUNT_REQUESTS_LIMIT_EXCEEDED", "SERVICE_ACCESS_NOT_ENABLED", "INVALID_PAYMENT_INSTRUMENT"]
    #
    #   @return [String]
    #
    ConstraintViolationException = ::Struct.new(
      :message,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConstraintViolationExceptionReason
    #
    module ConstraintViolationExceptionReason
      # No documentation available.
      #
      ACCOUNT_NUMBER_LIMIT_EXCEEDED = "ACCOUNT_NUMBER_LIMIT_EXCEEDED"

      # No documentation available.
      #
      HANDSHAKE_RATE_LIMIT_EXCEEDED = "HANDSHAKE_RATE_LIMIT_EXCEEDED"

      # No documentation available.
      #
      OU_NUMBER_LIMIT_EXCEEDED = "OU_NUMBER_LIMIT_EXCEEDED"

      # No documentation available.
      #
      OU_DEPTH_LIMIT_EXCEEDED = "OU_DEPTH_LIMIT_EXCEEDED"

      # No documentation available.
      #
      POLICY_NUMBER_LIMIT_EXCEEDED = "POLICY_NUMBER_LIMIT_EXCEEDED"

      # No documentation available.
      #
      POLICY_CONTENT_LIMIT_EXCEEDED = "POLICY_CONTENT_LIMIT_EXCEEDED"

      # No documentation available.
      #
      MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED = "MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED"

      # No documentation available.
      #
      MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED = "MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED"

      # No documentation available.
      #
      ACCOUNT_CANNOT_LEAVE_ORGANIZATION = "ACCOUNT_CANNOT_LEAVE_ORGANIZATION"

      # No documentation available.
      #
      ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA = "ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA"

      # No documentation available.
      #
      ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION = "ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION"

      # No documentation available.
      #
      MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED = "MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED"

      # No documentation available.
      #
      MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED = "MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED"

      # No documentation available.
      #
      ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED = "ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED"

      # No documentation available.
      #
      MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE = "MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE"

      # No documentation available.
      #
      MASTER_ACCOUNT_MISSING_CONTACT_INFO = "MASTER_ACCOUNT_MISSING_CONTACT_INFO"

      # No documentation available.
      #
      MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED = "MASTER_ACCOUNT_NOT_GOVCLOUD_ENABLED"

      # No documentation available.
      #
      ORGANIZATION_NOT_IN_ALL_FEATURES_MODE = "ORGANIZATION_NOT_IN_ALL_FEATURES_MODE"

      # No documentation available.
      #
      CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION = "CREATE_ORGANIZATION_IN_BILLING_MODE_UNSUPPORTED_REGION"

      # No documentation available.
      #
      EMAIL_VERIFICATION_CODE_EXPIRED = "EMAIL_VERIFICATION_CODE_EXPIRED"

      # No documentation available.
      #
      WAIT_PERIOD_ACTIVE = "WAIT_PERIOD_ACTIVE"

      # No documentation available.
      #
      MAX_TAG_LIMIT_EXCEEDED = "MAX_TAG_LIMIT_EXCEEDED"

      # No documentation available.
      #
      TAG_POLICY_VIOLATION = "TAG_POLICY_VIOLATION"

      # No documentation available.
      #
      MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED = "MAX_DELEGATED_ADMINISTRATORS_FOR_SERVICE_LIMIT_EXCEEDED"

      # No documentation available.
      #
      CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR = "CANNOT_REGISTER_MASTER_AS_DELEGATED_ADMINISTRATOR"

      # No documentation available.
      #
      CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG = "CANNOT_REMOVE_DELEGATED_ADMINISTRATOR_FROM_ORG"

      # No documentation available.
      #
      DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE = "DELEGATED_ADMINISTRATOR_EXISTS_FOR_THIS_SERVICE"

      # No documentation available.
      #
      MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE = "MASTER_ACCOUNT_MISSING_BUSINESS_LICENSE"

      # No documentation available.
      #
      CANNOT_CLOSE_MANAGEMENT_ACCOUNT = "CANNOT_CLOSE_MANAGEMENT_ACCOUNT"

      # No documentation available.
      #
      CLOSE_ACCOUNT_QUOTA_EXCEEDED = "CLOSE_ACCOUNT_QUOTA_EXCEEDED"

      # No documentation available.
      #
      CLOSE_ACCOUNT_REQUESTS_LIMIT_EXCEEDED = "CLOSE_ACCOUNT_REQUESTS_LIMIT_EXCEEDED"

      # No documentation available.
      #
      SERVICE_ACCESS_NOT_ENABLED = "SERVICE_ACCESS_NOT_ENABLED"

      # No documentation available.
      #
      INVALID_PAYMENT_INSTRUMENT = "INVALID_PAYMENT_INSTRUMENT"
    end

    # Includes enum constants for CreateAccountFailureReason
    #
    module CreateAccountFailureReason
      # No documentation available.
      #
      ACCOUNT_LIMIT_EXCEEDED = "ACCOUNT_LIMIT_EXCEEDED"

      # No documentation available.
      #
      EMAIL_ALREADY_EXISTS = "EMAIL_ALREADY_EXISTS"

      # No documentation available.
      #
      INVALID_ADDRESS = "INVALID_ADDRESS"

      # No documentation available.
      #
      INVALID_EMAIL = "INVALID_EMAIL"

      # No documentation available.
      #
      CONCURRENT_ACCOUNT_MODIFICATION = "CONCURRENT_ACCOUNT_MODIFICATION"

      # No documentation available.
      #
      INTERNAL_FAILURE = "INTERNAL_FAILURE"

      # No documentation available.
      #
      GOVCLOUD_ACCOUNT_ALREADY_EXISTS = "GOVCLOUD_ACCOUNT_ALREADY_EXISTS"

      # No documentation available.
      #
      MISSING_BUSINESS_VALIDATION = "MISSING_BUSINESS_VALIDATION"

      # No documentation available.
      #
      FAILED_BUSINESS_VALIDATION = "FAILED_BUSINESS_VALIDATION"

      # No documentation available.
      #
      PENDING_BUSINESS_VALIDATIONv = "PENDING_BUSINESS_VALIDATION"

      # No documentation available.
      #
      INVALID_IDENTITY_FOR_BUSINESS_VALIDATION = "INVALID_IDENTITY_FOR_BUSINESS_VALIDATION"

      # No documentation available.
      #
      UNKNOWN_BUSINESS_VALIDATION = "UNKNOWN_BUSINESS_VALIDATION"

      # No documentation available.
      #
      MISSING_PAYMENT_INSTRUMENT = "MISSING_PAYMENT_INSTRUMENT"

      # No documentation available.
      #
      INVALID_PAYMENT_INSTRUMENT = "INVALID_PAYMENT_INSTRUMENT"
    end

    # @!attribute email
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
    #   @return [String]
    #
    # @!attribute account_name
    #   <p>The friendly name of the member account.</p>
    #
    #   @return [String]
    #
    # @!attribute role_name
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
    #                     <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html orgs_manage_accounts_create-cross-account-role">Accessing and Administering the Member Accounts in Your
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
    #   @return [String]
    #
    # @!attribute iam_user_access_to_billing
    #   <p>If set to <code>ALLOW</code>, the new account enables IAM users to access account
    #               billing information <i>if</i> they have the required permissions. If set
    #               to <code>DENY</code>, only the root user of the new account can access account billing
    #               information. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html ControllingAccessWebsite-Activate">Activating
    #                   Access to the Billing and Cost Management Console</a> in the
    #               <i>Amazon Web Services Billing and Cost Management User Guide</i>.</p>
    #           <p>If you don't specify this parameter, the value defaults to <code>ALLOW</code>, and
    #               IAM users and roles with the required permissions can access billing information for
    #               the new account.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute tags
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
    #   @return [Array<Tag>]
    #
    CreateAccountInput = ::Struct.new(
      :email,
      :account_name,
      :role_name,
      :iam_user_access_to_billing,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Organizations::Types::CreateAccountInput "\
          "email=\"[SENSITIVE]\", "\
          "account_name=\"[SENSITIVE]\", "\
          "role_name=#{role_name || 'nil'}, "\
          "iam_user_access_to_billing=#{iam_user_access_to_billing || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute create_account_status
    #   <p>A structure that contains details about the request to create an account. This
    #               response structure might not be fully populated when you first receive it because
    #               account creation is an asynchronous process. You can pass the returned
    #                   <code>CreateAccountStatus</code> ID as a parameter to <a>DescribeCreateAccountStatus</a> to get status about the progress of the
    #               request at later times. You can also check the CloudTrail log for the
    #                   <code>CreateAccountResult</code> event. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html">Monitoring the
    #                   Activity in Your Organization</a> in the
    #               <i>Organizations User Guide</i>.</p>
    #
    #   @return [CreateAccountStatus]
    #
    CreateAccountOutput = ::Struct.new(
      :create_account_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for CreateAccountState
    #
    module CreateAccountState
      # No documentation available.
      #
      IN_PROGRESS = "IN_PROGRESS"

      # No documentation available.
      #
      SUCCEEDED = "SUCCEEDED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>Contains the status about a <a>CreateAccount</a> or <a>CreateGovCloudAccount</a> request to create an Amazon Web Services account or an Amazon Web Services
    #             GovCloud (US) account in an organization.</p>
    #
    # @!attribute id
    #   <p>The unique identifier (ID) that references this request. You get this value from the
    #               response of the initial <a>CreateAccount</a> request to create the
    #               account.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a create account request ID string
    #       requires "car-" followed by from 8 to 32 lowercase letters or digits.</p>
    #
    #   @return [String]
    #
    # @!attribute account_name
    #   <p>The account name given to the account when it was created.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The status of the asynchronous request to create an Amazon Web Services account.</p>
    #
    #   Enum, one of: ["IN_PROGRESS", "SUCCEEDED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute requested_timestamp
    #   <p>The date and time that the request was made for the account creation.</p>
    #
    #   @return [Time]
    #
    # @!attribute completed_timestamp
    #   <p>The date and time that the account was created and the request completed.</p>
    #
    #   @return [Time]
    #
    # @!attribute account_id
    #   <p>If the account was created successfully, the unique identifier (ID) of the new
    #               account.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12
    #       digits.</p>
    #
    #   @return [String]
    #
    # @!attribute gov_cloud_account_id
    #   <p>If the account was created successfully, the unique identifier (ID) of the new account
    #               in the Amazon Web Services GovCloud (US) Region.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_reason
    #   <p>If the request failed, a description of the reason for the failure.</p>
    #           <ul>
    #               <li>
    #                   <p>ACCOUNT_LIMIT_EXCEEDED: The account couldn't be created because you reached
    #                       the limit on the number of accounts in your organization.</p>
    #               </li>
    #               <li>
    #                   <p>CONCURRENT_ACCOUNT_MODIFICATION: You already submitted a request with the same
    #                       information.</p>
    #               </li>
    #               <li>
    #                   <p>EMAIL_ALREADY_EXISTS: The account could not be created because another Amazon Web Services
    #                       account with that email address already exists.</p>
    #               </li>
    #               <li>
    #                   <p>FAILED_BUSINESS_VALIDATION: The Amazon Web Services account that owns your organization
    #                       failed to receive business license validation.</p>
    #               </li>
    #               <li>
    #                   <p>GOVCLOUD_ACCOUNT_ALREADY_EXISTS: The account in the Amazon Web Services GovCloud (US) Region
    #                       could not be created because this Region already includes an account with that
    #                       email address.</p>
    #               </li>
    #               <li>
    #                   <p>IDENTITY_INVALID_BUSINESS_VALIDATION: The Amazon Web Services account that owns your
    #                       organization can't complete business license validation because it doesn't have
    #                       valid identity data.</p>
    #               </li>
    #               <li>
    #                   <p>INVALID_ADDRESS: The account could not be created because the address you
    #                       provided is not valid.</p>
    #               </li>
    #               <li>
    #                   <p>INVALID_EMAIL: The account could not be created because the email address you
    #                       provided is not valid.</p>
    #               </li>
    #               <li>
    #                   <p>INVALID_PAYMENT_INSTRUMENT: The Amazon Web Services account that owns your organization does
    #                       not have a supported payment method associated with the account. Amazon Web Services does not
    #                       support cards issued by financial institutions in Russia or Belarus. For more
    #                       information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/manage-general.html">Managing your
    #                           Amazon Web Services payments</a>.</p>
    #               </li>
    #               <li>
    #                   <p>INTERNAL_FAILURE: The account could not be created because of an internal
    #                       failure. Try again later. If the problem persists, contact Amazon Web Services Customer
    #                       Support.</p>
    #               </li>
    #               <li>
    #                   <p>MISSING_BUSINESS_VALIDATION: The Amazon Web Services account that owns your organization has
    #                       not received Business Validation.</p>
    #               </li>
    #               <li>
    #                   <p> MISSING_PAYMENT_INSTRUMENT: You must configure the management account with a
    #                       valid payment method, such as a credit card.</p>
    #               </li>
    #               <li>
    #                   <p>PENDING_BUSINESS_VALIDATION: The Amazon Web Services account that owns your organization is
    #                       still in the process of completing business license validation.</p>
    #               </li>
    #               <li>
    #                   <p>UNKNOWN_BUSINESS_VALIDATION: The Amazon Web Services account that owns your organization has
    #                       an unknown issue with business license validation.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ACCOUNT_LIMIT_EXCEEDED", "EMAIL_ALREADY_EXISTS", "INVALID_ADDRESS", "INVALID_EMAIL", "CONCURRENT_ACCOUNT_MODIFICATION", "INTERNAL_FAILURE", "GOVCLOUD_ACCOUNT_ALREADY_EXISTS", "MISSING_BUSINESS_VALIDATION", "FAILED_BUSINESS_VALIDATION", "PENDING_BUSINESS_VALIDATION", "INVALID_IDENTITY_FOR_BUSINESS_VALIDATION", "UNKNOWN_BUSINESS_VALIDATION", "MISSING_PAYMENT_INSTRUMENT", "INVALID_PAYMENT_INSTRUMENT"]
    #
    #   @return [String]
    #
    CreateAccountStatus = ::Struct.new(
      :id,
      :account_name,
      :state,
      :requested_timestamp,
      :completed_timestamp,
      :account_id,
      :gov_cloud_account_id,
      :failure_reason,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Organizations::Types::CreateAccountStatus "\
          "id=#{id || 'nil'}, "\
          "account_name=\"[SENSITIVE]\", "\
          "state=#{state || 'nil'}, "\
          "requested_timestamp=#{requested_timestamp || 'nil'}, "\
          "completed_timestamp=#{completed_timestamp || 'nil'}, "\
          "account_id=#{account_id || 'nil'}, "\
          "gov_cloud_account_id=#{gov_cloud_account_id || 'nil'}, "\
          "failure_reason=#{failure_reason || 'nil'}>"
      end
    end

    # <p>We can't find an create account request with the <code>CreateAccountRequestId</code>
    #             that you specified.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    CreateAccountStatusNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute email
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
    #   @return [String]
    #
    # @!attribute account_name
    #   <p>The friendly name of the member account. </p>
    #           <p>The account name can consist of only the characters [a-z],[A-Z],[0-9], hyphen (-), or
    #               dot (.) You can't separate characters with a dash (–).</p>
    #
    #   @return [String]
    #
    # @!attribute role_name
    #   <p>(Optional)</p>
    #           <p>The name of an IAM role that Organizations automatically preconfigures in the new member
    #               accounts in both the Amazon Web Services GovCloud (US) Region and in the commercial Region. This role
    #               trusts the management account, allowing users in the management account to assume the
    #               role, as permitted by the management account administrator. The role has administrator
    #               permissions in the new member account.</p>
    #           <p>If you don't specify this parameter, the role name defaults to
    #                   <code>OrganizationAccountAccessRole</code>.</p>
    #           <p>For more information about how to use this role to access the member account, see
    #                   <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html orgs_manage_accounts_create-cross-account-role">Accessing and Administering the Member Accounts in Your Organization</a> in the
    #                   <i>Organizations User Guide</i> and steps 2 and 3 in <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html">Tutorial: Delegate Access Across Amazon Web Services accounts Using IAM Roles</a> in the
    #                   <i>IAM User Guide.</i>
    #            </p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> that
    #       is used to validate this parameter. The pattern can include uppercase
    #       letters, lowercase letters, digits with no spaces, and any of the following characters: =,.@-</p>
    #
    #   @return [String]
    #
    # @!attribute iam_user_access_to_billing
    #   <p>If set to <code>ALLOW</code>, the new linked account in the commercial Region enables
    #               IAM users to access account billing information <i>if</i> they have the
    #               required permissions. If set to <code>DENY</code>, only the root user of the new account
    #               can access account billing information. For more information, see <a href="https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html ControllingAccessWebsite-Activate">Activating
    #                   Access to the Billing and Cost Management Console</a> in the
    #               <i>Amazon Web Services Billing and Cost Management User Guide.</i>
    #            </p>
    #           <p>If you don't specify this parameter, the value defaults to <code>ALLOW</code>, and
    #               IAM users and roles with the required permissions can access billing information for
    #               the new account.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute tags
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
    #   @return [Array<Tag>]
    #
    CreateGovCloudAccountInput = ::Struct.new(
      :email,
      :account_name,
      :role_name,
      :iam_user_access_to_billing,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Organizations::Types::CreateGovCloudAccountInput "\
          "email=\"[SENSITIVE]\", "\
          "account_name=\"[SENSITIVE]\", "\
          "role_name=#{role_name || 'nil'}, "\
          "iam_user_access_to_billing=#{iam_user_access_to_billing || 'nil'}, "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute create_account_status
    #   <p>Contains the status about a <a>CreateAccount</a> or <a>CreateGovCloudAccount</a> request to create an Amazon Web Services account or an Amazon Web Services
    #               GovCloud (US) account in an organization.</p>
    #
    #   @return [CreateAccountStatus]
    #
    CreateGovCloudAccountOutput = ::Struct.new(
      :create_account_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute feature_set
    #   <p>Specifies the feature set supported by the new organization. Each feature set supports
    #               different levels of functionality.</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>CONSOLIDATED_BILLING</code>: All member accounts have their bills
    #                       consolidated to and paid by the management account. For more information, see
    #                           <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html feature-set-cb-only">Consolidated billing</a> in the
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
    #                           <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html feature-set-all">All
    #                           features</a> in the <i>Organizations User Guide.</i>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ALL", "CONSOLIDATED_BILLING"]
    #
    #   @return [String]
    #
    CreateOrganizationInput = ::Struct.new(
      :feature_set,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization
    #   <p>A structure that contains details about the newly created organization.</p>
    #
    #   @return [Organization]
    #
    CreateOrganizationOutput = ::Struct.new(
      :organization,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parent_id
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
    #   @return [String]
    #
    # @!attribute name
    #   <p>The friendly name to assign to the new OU.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
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
    #   @return [Array<Tag>]
    #
    CreateOrganizationalUnitInput = ::Struct.new(
      :parent_id,
      :name,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organizational_unit
    #   <p>A structure that contains details about the newly created OU.</p>
    #
    #   @return [OrganizationalUnit]
    #
    CreateOrganizationalUnitOutput = ::Struct.new(
      :organizational_unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content
    #   <p>The policy text content to add to the new policy. The text that you supply must adhere
    #               to the rules of the policy type you specify in the <code>Type</code> parameter.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>An optional description to assign to the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The friendly name to assign to the policy.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       that is used to validate this parameter is a string of any of the characters in the ASCII
    #       character range.</p>
    #
    #   @return [String]
    #
    # @!attribute type
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
    #   Enum, one of: ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #
    #   @return [String]
    #
    # @!attribute tags
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
    #   @return [Array<Tag>]
    #
    CreatePolicyInput = ::Struct.new(
      :content,
      :description,
      :name,
      :type,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>A structure that contains details about the newly created policy.</p>
    #
    #   @return [Policy]
    #
    CreatePolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute handshake_id
    #   <p>The unique identifier (ID) of the handshake that you want to decline. You can get the
    #               ID from the <a>ListHandshakesForAccount</a> operation.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-"
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    #
    #   @return [String]
    #
    DeclineHandshakeInput = ::Struct.new(
      :handshake_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute handshake
    #   <p>A structure that contains details about the declined handshake. The state is updated
    #               to show the value <code>DECLINED</code>.</p>
    #
    #   @return [Handshake]
    #
    DeclineHandshakeOutput = ::Struct.new(
      :handshake,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about the delegated administrator.</p>
    #
    # @!attribute id
    #   <p>The unique identifier (ID) of the delegated administrator's account.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the delegated administrator's account.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address that is associated with the delegated administrator's Amazon Web Services
    #               account.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The friendly name of the delegated administrator's account.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the delegated administrator's account in the organization.</p>
    #
    #   Enum, one of: ["ACTIVE", "SUSPENDED", "PENDING_CLOSURE"]
    #
    #   @return [String]
    #
    # @!attribute joined_method
    #   <p>The method by which the delegated administrator's account joined the
    #               organization.</p>
    #
    #   Enum, one of: ["INVITED", "CREATED"]
    #
    #   @return [String]
    #
    # @!attribute joined_timestamp
    #   <p>The date when the delegated administrator's account became a part of the
    #               organization.</p>
    #
    #   @return [Time]
    #
    # @!attribute delegation_enabled_date
    #   <p>The date when the account was made a delegated administrator.</p>
    #
    #   @return [Time]
    #
    DelegatedAdministrator = ::Struct.new(
      :id,
      :arn,
      :email,
      :name,
      :status,
      :joined_method,
      :joined_timestamp,
      :delegation_enabled_date,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Organizations::Types::DelegatedAdministrator "\
          "id=#{id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "email=\"[SENSITIVE]\", "\
          "name=\"[SENSITIVE]\", "\
          "status=#{status || 'nil'}, "\
          "joined_method=#{joined_method || 'nil'}, "\
          "joined_timestamp=#{joined_timestamp || 'nil'}, "\
          "delegation_enabled_date=#{delegation_enabled_date || 'nil'}>"
      end
    end

    # <p>Contains information about the Amazon Web Services service for which the account is a delegated
    #             administrator.</p>
    #
    # @!attribute service_principal
    #   <p>The name of an Amazon Web Services service that can request an operation for the specified service.
    #               This is typically in the form of a URL, such as:
    #                   <code>
    #                  <i>servicename</i>.amazonaws.com</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute delegation_enabled_date
    #   <p>The date that the account became a delegated administrator for this service. </p>
    #
    #   @return [Time]
    #
    DelegatedService = ::Struct.new(
      :service_principal,
      :delegation_enabled_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteOrganizationInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteOrganizationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organizational_unit_id
    #   <p>The unique identifier (ID) of the organizational unit that you want to delete. You can
    #               get the ID from the <a>ListOrganizationalUnitsForParent</a> operation.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires
    #       "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the
    #       OU). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters
    #       or digits.</p>
    #
    #   @return [String]
    #
    DeleteOrganizationalUnitInput = ::Struct.new(
      :organizational_unit_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteOrganizationalUnitOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_id
    #   <p>The unique identifier (ID) of the policy that you want to delete. You can get the ID
    #               from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a>
    #               operations.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #
    #   @return [String]
    #
    DeletePolicyInput = ::Struct.new(
      :policy_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeletePolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID number of the member account in the organization that you want to
    #               deregister as a delegated administrator.</p>
    #
    #   @return [String]
    #
    # @!attribute service_principal
    #   <p>The service principal name of an Amazon Web Services service for which the account is a delegated
    #               administrator.</p>
    #           <p>Delegated administrator privileges are revoked for only the specified Amazon Web Services service
    #               from the member account. If the specified service is the only service for which the
    #               member account is a delegated administrator, the operation also revokes Organizations read action
    #               permissions.</p>
    #
    #   @return [String]
    #
    DeregisterDelegatedAdministratorInput = ::Struct.new(
      :account_id,
      :service_principal,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeregisterDelegatedAdministratorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The unique identifier (ID) of the Amazon Web Services account that you want information about. You
    #               can get the ID from the <a>ListAccounts</a> or <a>ListAccountsForParent</a> operations.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12
    #       digits.</p>
    #
    #   @return [String]
    #
    DescribeAccountInput = ::Struct.new(
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account
    #   <p>A structure that contains information about the requested account.</p>
    #
    #   @return [Account]
    #
    DescribeAccountOutput = ::Struct.new(
      :account,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute create_account_request_id
    #   <p>Specifies the <code>Id</code> value that uniquely identifies the
    #                   <code>CreateAccount</code> request. You can get the value from the
    #                   <code>CreateAccountStatus.Id</code> response in an earlier <a>CreateAccount</a> request, or from the <a>ListCreateAccountStatus</a> operation.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a create account request ID string
    #       requires "car-" followed by from 8 to 32 lowercase letters or digits.</p>
    #
    #   @return [String]
    #
    DescribeCreateAccountStatusInput = ::Struct.new(
      :create_account_request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute create_account_status
    #   <p>A structure that contains the current status of an account creation request.</p>
    #
    #   @return [CreateAccountStatus]
    #
    DescribeCreateAccountStatusOutput = ::Struct.new(
      :create_account_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_type
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
    #   Enum, one of: ["TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #
    #   @return [String]
    #
    # @!attribute target_id
    #   <p>When you're signed in as the management account, specify the ID of the account that
    #               you want details about. Specifying an organization root or organizational unit (OU) as
    #               the target is not supported.</p>
    #
    #   @return [String]
    #
    DescribeEffectivePolicyInput = ::Struct.new(
      :policy_type,
      :target_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute effective_policy
    #   <p>The contents of the effective policy.</p>
    #
    #   @return [EffectivePolicy]
    #
    DescribeEffectivePolicyOutput = ::Struct.new(
      :effective_policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute handshake_id
    #   <p>The unique identifier (ID) of the handshake that you want information about. You can
    #               get the ID from the original call to <a>InviteAccountToOrganization</a>, or
    #               from a call to <a>ListHandshakesForAccount</a> or <a>ListHandshakesForOrganization</a>.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-"
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    #
    #   @return [String]
    #
    DescribeHandshakeInput = ::Struct.new(
      :handshake_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute handshake
    #   <p>A structure that contains information about the specified handshake.</p>
    #
    #   @return [Handshake]
    #
    DescribeHandshakeOutput = ::Struct.new(
      :handshake,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DescribeOrganizationInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization
    #   <p>A structure that contains information about the organization.</p>
    #           <important>
    #               <p>The <code>AvailablePolicyTypes</code> part of the response is deprecated, and you
    #                   shouldn't use it in your apps. It doesn't include any policy type supported by Organizations
    #                   other than SCPs. To determine which policy types are enabled in your organization,
    #                   use the <code>
    #                     <a>ListRoots</a>
    #                  </code> operation.</p>
    #           </important>
    #
    #   @return [Organization]
    #
    DescribeOrganizationOutput = ::Struct.new(
      :organization,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organizational_unit_id
    #   <p>The unique identifier (ID) of the organizational unit that you want details about. You
    #               can get the ID from the <a>ListOrganizationalUnitsForParent</a>
    #               operation.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires
    #       "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the
    #       OU). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters
    #       or digits.</p>
    #
    #   @return [String]
    #
    DescribeOrganizationalUnitInput = ::Struct.new(
      :organizational_unit_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organizational_unit
    #   <p>A structure that contains details about the specified OU.</p>
    #
    #   @return [OrganizationalUnit]
    #
    DescribeOrganizationalUnitOutput = ::Struct.new(
      :organizational_unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_id
    #   <p>The unique identifier (ID) of the policy that you want details about. You can get the
    #               ID from the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a>
    #               operations.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #
    #   @return [String]
    #
    DescribePolicyInput = ::Struct.new(
      :policy_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>A structure that contains details about the specified policy.</p>
    #
    #   @return [Policy]
    #
    DescribePolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>We can't find the destination container (a root or OU) with the <code>ParentId</code>
    #             that you specified.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DestinationParentNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_id
    #   <p>The unique identifier (ID) of the policy you want to detach. You can get the ID from
    #               the <a>ListPolicies</a> or <a>ListPoliciesForTarget</a>
    #               operations.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #
    #   @return [String]
    #
    # @!attribute target_id
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
    #   @return [String]
    #
    DetachPolicyInput = ::Struct.new(
      :policy_id,
      :target_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DetachPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_principal
    #   <p>The service principal name of the Amazon Web Services service for which you want to disable
    #               integration with your organization. This is typically in the form of a URL, such as
    #                       <code>
    #                  <i>service-abbreviation</i>.amazonaws.com</code>.</p>
    #
    #   @return [String]
    #
    DisableAWSServiceAccessInput = ::Struct.new(
      :service_principal,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisableAWSServiceAccessOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute root_id
    #   <p>The unique identifier (ID) of the root in which you want to disable a policy type. You
    #               can get the ID from the <a>ListRoots</a> operation.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a root ID string requires "r-" followed by
    #       from 4 to 32 lowercase letters or digits.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_type
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
    #   Enum, one of: ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #
    #   @return [String]
    #
    DisablePolicyTypeInput = ::Struct.new(
      :root_id,
      :policy_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute root
    #   <p>A structure that shows the root with the updated list of enabled policy types.</p>
    #
    #   @return [Root]
    #
    DisablePolicyTypeOutput = ::Struct.new(
      :root,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>That account is already present in the specified destination.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DuplicateAccountException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A handshake with the same action and target already exists. For example, if you
    #             invited an account to join your organization, the invited account might already have a
    #             pending invitation from this organization. If you intend to resend an invitation to an
    #             account, ensure that existing handshakes that might be considered duplicates are
    #             canceled or declined.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DuplicateHandshakeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An OU with the same name already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DuplicateOrganizationalUnitException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The selected policy is already attached to the specified target.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DuplicatePolicyAttachmentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A policy with the same name already exists.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DuplicatePolicyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains rules to be applied to the affected accounts. The effective policy is the
    #             aggregation of any policies the account inherits, plus any policy directly attached to
    #             the account.</p>
    #
    # @!attribute policy_content
    #   <p>The text content of the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute last_updated_timestamp
    #   <p>The time of the last update to this policy.</p>
    #
    #   @return [Time]
    #
    # @!attribute target_id
    #   <p>The account ID of the policy target. </p>
    #
    #   @return [String]
    #
    # @!attribute policy_type
    #   <p>The policy type.</p>
    #
    #   Enum, one of: ["TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #
    #   @return [String]
    #
    EffectivePolicy = ::Struct.new(
      :policy_content,
      :last_updated_timestamp,
      :target_id,
      :policy_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>If you ran this action on the management account, this policy type is not enabled. If
    #             you ran the action on a member account, the account doesn't have an effective policy of
    #             this type. Contact the administrator of your organization about attaching a policy of
    #             this type to the account. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EffectivePolicyNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EffectivePolicyType
    #
    module EffectivePolicyType
      # No documentation available.
      #
      TAG_POLICY = "TAG_POLICY"

      # No documentation available.
      #
      BACKUP_POLICY = "BACKUP_POLICY"

      # No documentation available.
      #
      AISERVICES_OPT_OUT_POLICY = "AISERVICES_OPT_OUT_POLICY"
    end

    # @!attribute service_principal
    #   <p>The service principal name of the Amazon Web Services service for which you want to enable
    #               integration with your organization. This is typically in the form of a URL, such as
    #                       <code>
    #                  <i>service-abbreviation</i>.amazonaws.com</code>.</p>
    #
    #   @return [String]
    #
    EnableAWSServiceAccessInput = ::Struct.new(
      :service_principal,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    EnableAWSServiceAccessOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    EnableAllFeaturesInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute handshake
    #   <p>A structure that contains details about the handshake created to support this request
    #               to enable all features in the organization.</p>
    #
    #   @return [Handshake]
    #
    EnableAllFeaturesOutput = ::Struct.new(
      :handshake,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute root_id
    #   <p>The unique identifier (ID) of the root in which you want to enable a policy type. You
    #               can get the ID from the <a>ListRoots</a> operation.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a root ID string requires "r-" followed by
    #       from 4 to 32 lowercase letters or digits.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_type
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
    #   Enum, one of: ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #
    #   @return [String]
    #
    EnablePolicyTypeInput = ::Struct.new(
      :root_id,
      :policy_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute root
    #   <p>A structure that shows the root with the updated list of enabled policy types.</p>
    #
    #   @return [Root]
    #
    EnablePolicyTypeOutput = ::Struct.new(
      :root,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A structure that contains details of a service principal that represents an Amazon Web Services
    #             service that is enabled to integrate with Organizations.</p>
    #
    # @!attribute service_principal
    #   <p>The name of the service principal. This is typically in the form of a URL, such as:
    #                       <code>
    #                  <i>servicename</i>.amazonaws.com</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute date_enabled
    #   <p>The date that the service principal was enabled for integration with Organizations.</p>
    #
    #   @return [Time]
    #
    EnabledServicePrincipal = ::Struct.new(
      :service_principal,
      :date_enabled,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Organizations couldn't perform the operation because your organization hasn't finished
    #             initializing. This can take up to an hour. Try again later. If after one hour you
    #             continue to receive this error, contact <a href="https://console.aws.amazon.com/support/home#/">Amazon Web Services Support</a>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    FinalizingOrganizationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information that must be exchanged to securely establish a relationship
    #             between two accounts (an <i>originator</i> and a
    #                 <i>recipient</i>). For example, when a management account (the
    #             originator) invites another account (the recipient) to join its organization, the two
    #             accounts exchange information as a series of handshake requests and responses.</p>
    #         <p>
    #             <b>Note:</b> Handshakes that are <code>CANCELED</code>,
    #                 <code>ACCEPTED</code>, <code>DECLINED</code>, or <code>EXPIRED</code> show up in
    #             lists for only 30 days after entering that state After that they are deleted.</p>
    #
    # @!attribute id
    #   <p>The unique identifier (ID) of a handshake. The originating account creates the ID when
    #               it initiates the handshake.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-"
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of a handshake.</p>
    #           <p>For more information about ARNs in Organizations, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html awsorganizations-resources-for-iam-policies">ARN
    #       Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute parties
    #   <p>Information about the two accounts that are participating in the handshake.</p>
    #
    #   @return [Array<HandshakeParty>]
    #
    # @!attribute state
    #   <p>The current state of the handshake. Use the state to trace the flow of the handshake
    #               through the process from its creation to its acceptance. The meaning of each of the
    #               valid values is as follows:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>REQUESTED</b>: This handshake was sent to
    #                       multiple recipients (applicable to only some handshake types) and not all
    #                       recipients have responded yet. The request stays in this state until all
    #                       recipients respond.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>OPEN</b>: This handshake was sent to multiple
    #                       recipients (applicable to only some policy types) and all recipients have
    #                       responded, allowing the originator to complete the handshake action.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>CANCELED</b>: This handshake is no longer active
    #                       because it was canceled by the originating account.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>ACCEPTED</b>: This handshake is complete because
    #                       it has been accepted by the recipient.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>DECLINED</b>: This handshake is no longer active
    #                       because it was declined by the recipient account.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>EXPIRED</b>: This handshake is no longer active
    #                       because the originator did not receive a response of any kind from the recipient
    #                       before the expiration time (15 days).</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["REQUESTED", "OPEN", "CANCELED", "ACCEPTED", "DECLINED", "EXPIRED"]
    #
    #   @return [String]
    #
    # @!attribute requested_timestamp
    #   <p>The date and time that the handshake request was made.</p>
    #
    #   @return [Time]
    #
    # @!attribute expiration_timestamp
    #   <p>The date and time that the handshake expires. If the recipient of the handshake
    #               request fails to respond before the specified date and time, the handshake becomes
    #               inactive and is no longer valid.</p>
    #
    #   @return [Time]
    #
    # @!attribute action
    #   <p>The type of handshake, indicating what action occurs when the recipient accepts the
    #               handshake. The following handshake types are supported:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <b>INVITE</b>: This type of handshake represents a
    #                       request to join an organization. It is always sent from the management account
    #                       to only non-member accounts.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>ENABLE_ALL_FEATURES</b>: This type of handshake
    #                       represents a request to enable all features in an organization. It is always
    #                       sent from the management account to only <i>invited</i> member
    #                       accounts. Created accounts do not receive this because those accounts were
    #                       created by the organization's management account and approval is
    #                       inferred.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <b>APPROVE_ALL_FEATURES</b>: This type of handshake
    #                       is sent from the Organizations service when all member accounts have approved the
    #                           <code>ENABLE_ALL_FEATURES</code> invitation. It is sent only to the
    #                       management account and signals the master that it can finalize the process to
    #                       enable all features.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"]
    #
    #   @return [String]
    #
    # @!attribute resources
    #   <p>Additional information that is needed to process the handshake.</p>
    #
    #   @return [Array<HandshakeResource>]
    #
    Handshake = ::Struct.new(
      :id,
      :arn,
      :parties,
      :state,
      :requested_timestamp,
      :expiration_timestamp,
      :action,
      :resources,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified handshake is already in the requested state. For example, you can't
    #             accept a handshake that was already accepted.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    HandshakeAlreadyInStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested operation would violate the constraint identified in the reason
    #             code.</p>
    #         <note>
    #             <p>Some of the reasons in the following list might not be applicable to this specific
    #                 API or operation:</p>
    #         </note>
    #         <ul>
    #             <li>
    #                 <p>ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number
    #                     of accounts in an organization. Note that deleted and closed accounts still
    #                     count toward your limit.</p>
    #                 <important>
    #                     <p>If you get this exception immediately after creating the organization,
    #                         wait one hour and try again. If after an hour it continues to fail with this
    #                         error, contact <a href="https://docs.aws.amazon.com/support/home#/">Amazon Web Services Support</a>.</p>
    #                 </important>
    #             </li>
    #             <li>
    #                 <p>ALREADY_IN_AN_ORGANIZATION: The handshake request is invalid because the
    #                     invited account is already a member of an organization.</p>
    #             </li>
    #             <li>
    #                 <p>HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of
    #                     handshakes that you can send in one day.</p>
    #             </li>
    #             <li>
    #                 <p>INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES: You can't issue new invitations to
    #                     join an organization while it's in the process of enabling all features. You can
    #                     resume inviting accounts after you finalize the process when all accounts have
    #                     agreed to the change.</p>
    #             </li>
    #             <li>
    #                 <p>ORGANIZATION_ALREADY_HAS_ALL_FEATURES: The handshake request is invalid
    #                     because the organization has already enabled all features.</p>
    #             </li>
    #             <li>
    #                 <p>ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION: The handshake request
    #                     is invalid because the organization has already started the process to enable
    #                     all features.</p>
    #             </li>
    #             <li>
    #                 <p>ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD: The request failed because the
    #                     account is from a different marketplace than the accounts in the organization.
    #                     For example, accounts with India addresses must be associated with the AISPL
    #                     marketplace. All accounts in an organization must be from the same
    #                     marketplace.</p>
    #             </li>
    #             <li>
    #                 <p>ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED: You attempted to change
    #                     the membership of an account too quickly after its previous change.</p>
    #             </li>
    #             <li>
    #                 <p>PAYMENT_INSTRUMENT_REQUIRED: You can't complete the operation with an account
    #                     that doesn't have a payment instrument, such as a credit card, associated with
    #                     it.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   Enum, one of: ["ACCOUNT_NUMBER_LIMIT_EXCEEDED", "HANDSHAKE_RATE_LIMIT_EXCEEDED", "ALREADY_IN_AN_ORGANIZATION", "ORGANIZATION_ALREADY_HAS_ALL_FEATURES", "ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION", "INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES", "PAYMENT_INSTRUMENT_REQUIRED", "ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD", "ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED", "MANAGEMENT_ACCOUNT_EMAIL_NOT_VERIFIED"]
    #
    #   @return [String]
    #
    HandshakeConstraintViolationException = ::Struct.new(
      :message,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for HandshakeConstraintViolationExceptionReason
    #
    module HandshakeConstraintViolationExceptionReason
      # No documentation available.
      #
      ACCOUNT_NUMBER_LIMIT_EXCEEDED = "ACCOUNT_NUMBER_LIMIT_EXCEEDED"

      # No documentation available.
      #
      HANDSHAKE_RATE_LIMIT_EXCEEDED = "HANDSHAKE_RATE_LIMIT_EXCEEDED"

      # No documentation available.
      #
      ALREADY_IN_AN_ORGANIZATION = "ALREADY_IN_AN_ORGANIZATION"

      # No documentation available.
      #
      ORGANIZATION_ALREADY_HAS_ALL_FEATURES = "ORGANIZATION_ALREADY_HAS_ALL_FEATURES"

      # No documentation available.
      #
      ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION = "ORGANIZATION_IS_ALREADY_PENDING_ALL_FEATURES_MIGRATION"

      # No documentation available.
      #
      INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES = "INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES"

      # No documentation available.
      #
      PAYMENT_INSTRUMENT_REQUIRED = "PAYMENT_INSTRUMENT_REQUIRED"

      # No documentation available.
      #
      ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD = "ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD"

      # No documentation available.
      #
      ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED = "ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED"

      # No documentation available.
      #
      MANAGEMENT_ACCOUNT_EMAIL_NOT_VERIFIED = "MANAGEMENT_ACCOUNT_EMAIL_NOT_VERIFIED"
    end

    # <p>Specifies the criteria that are used to select the handshakes for the
    #             operation.</p>
    #
    # @!attribute action_type
    #   <p>Specifies the type of handshake action.</p>
    #           <p>If you specify <code>ActionType</code>, you cannot also specify
    #                   <code>ParentHandshakeId</code>.</p>
    #
    #   Enum, one of: ["INVITE", "ENABLE_ALL_FEATURES", "APPROVE_ALL_FEATURES", "ADD_ORGANIZATIONS_SERVICE_LINKED_ROLE"]
    #
    #   @return [String]
    #
    # @!attribute parent_handshake_id
    #   <p>Specifies the parent handshake. Only used for handshake types that are a child of
    #               another type.</p>
    #           <p>If you specify <code>ParentHandshakeId</code>, you cannot also specify
    #                   <code>ActionType</code>.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-"
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    #
    #   @return [String]
    #
    HandshakeFilter = ::Struct.new(
      :action_type,
      :parent_handshake_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>We can't find a handshake with the <code>HandshakeId</code> that you specified.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    HandshakeNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Identifies a participant in a handshake.</p>
    #
    # @!attribute id
    #   <p>The unique identifier (ID) for the party.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for  handshake ID string requires "h-"
    #       followed by from 8 to 32 lowercase letters or digits.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of party.</p>
    #
    #   Enum, one of: ["ACCOUNT", "ORGANIZATION", "EMAIL"]
    #
    #   @return [String]
    #
    HandshakeParty = ::Struct.new(
      :id,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Organizations::Types::HandshakeParty "\
          "id=\"[SENSITIVE]\", "\
          "type=#{type || 'nil'}>"
      end
    end

    # Includes enum constants for HandshakePartyType
    #
    module HandshakePartyType
      # No documentation available.
      #
      ACCOUNT = "ACCOUNT"

      # No documentation available.
      #
      ORGANIZATION = "ORGANIZATION"

      # No documentation available.
      #
      EMAIL = "EMAIL"
    end

    # <p>Contains additional data that is needed to process a handshake.</p>
    #
    # @!attribute value
    #   <p>The information that is passed to the other party in the handshake. The format of the
    #               value string must match the requirements of the specified type.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of information being passed, specifying how the value is to be interpreted by
    #               the other party:</p>
    #           <ul>
    #               <li>
    #                   <p>
    #                     <code>ACCOUNT</code> - Specifies an Amazon Web Services account ID number.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>ORGANIZATION</code> - Specifies an organization ID number.</p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>EMAIL</code> - Specifies the email address that is associated with the
    #                       account that receives the handshake. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>OWNER_EMAIL</code> - Specifies the email address associated with the
    #                       management account. Included as information about an organization. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>OWNER_NAME</code> - Specifies the name associated with the management
    #                       account. Included as information about an organization. </p>
    #               </li>
    #               <li>
    #                   <p>
    #                     <code>NOTES</code> - Additional text provided by the handshake initiator and
    #                       intended for the recipient to read.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ACCOUNT", "ORGANIZATION", "ORGANIZATION_FEATURE_SET", "EMAIL", "MASTER_EMAIL", "MASTER_NAME", "NOTES", "PARENT_HANDSHAKE"]
    #
    #   @return [String]
    #
    # @!attribute resources
    #   <p>When needed, contains an additional array of <code>HandshakeResource</code>
    #               objects.</p>
    #
    #   @return [Array<HandshakeResource>]
    #
    HandshakeResource = ::Struct.new(
      :value,
      :type,
      :resources,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Organizations::Types::HandshakeResource "\
          "value=\"[SENSITIVE]\", "\
          "type=#{type || 'nil'}, "\
          "resources=#{resources || 'nil'}>"
      end
    end

    # Includes enum constants for HandshakeResourceType
    #
    module HandshakeResourceType
      # No documentation available.
      #
      ACCOUNT = "ACCOUNT"

      # No documentation available.
      #
      ORGANIZATION = "ORGANIZATION"

      # No documentation available.
      #
      ORGANIZATION_FEATURE_SET = "ORGANIZATION_FEATURE_SET"

      # No documentation available.
      #
      EMAIL = "EMAIL"

      # No documentation available.
      #
      MASTER_EMAIL = "MASTER_EMAIL"

      # No documentation available.
      #
      MASTER_NAME = "MASTER_NAME"

      # No documentation available.
      #
      NOTES = "NOTES"

      # No documentation available.
      #
      PARENT_HANDSHAKE = "PARENT_HANDSHAKE"
    end

    # Includes enum constants for HandshakeState
    #
    module HandshakeState
      # No documentation available.
      #
      REQUESTED = "REQUESTED"

      # No documentation available.
      #
      OPEN = "OPEN"

      # No documentation available.
      #
      CANCELED = "CANCELED"

      # No documentation available.
      #
      ACCEPTED = "ACCEPTED"

      # No documentation available.
      #
      DECLINED = "DECLINED"

      # No documentation available.
      #
      EXPIRED = "EXPIRED"
    end

    # Includes enum constants for IAMUserAccessToBilling
    #
    module IAMUserAccessToBilling
      # No documentation available.
      #
      ALLOW = "ALLOW"

      # No documentation available.
      #
      DENY = "DENY"
    end

    # <p>You can't perform the operation on the handshake in its current state. For example,
    #             you can't cancel a handshake that was already accepted or accept a handshake that was
    #             already declined.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidHandshakeTransitionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The requested operation failed because you provided invalid values for one or more of
    #             the request parameters. This exception includes a reason that contains additional
    #             information about the violated limit:</p>
    #         <note>
    #             <p>Some of the reasons in the following list might not be applicable to this specific
    #                 API or operation.</p>
    #         </note>
    #         <ul>
    #             <li>
    #                 <p>DUPLICATE_TAG_KEY: Tag keys must be unique among the tags attached to the same
    #                     entity.</p>
    #             </li>
    #             <li>
    #                 <p>IMMUTABLE_POLICY: You specified a policy that is managed by Amazon Web Services and can't be
    #                     modified.</p>
    #             </li>
    #             <li>
    #                 <p>INPUT_REQUIRED: You must include a value for all required parameters.</p>
    #             </li>
    #             <li>
    #                 <p>INVALID_EMAIL_ADDRESS_TARGET: You specified an invalid email address for the
    #                     invited account owner.</p>
    #             </li>
    #             <li>
    #                 <p>INVALID_ENUM: You specified an invalid value.</p>
    #             </li>
    #             <li>
    #                 <p>INVALID_ENUM_POLICY_TYPE: You specified an invalid policy type string.</p>
    #             </li>
    #             <li>
    #                 <p>INVALID_FULL_NAME_TARGET: You specified a full name that contains invalid
    #                     characters.</p>
    #             </li>
    #             <li>
    #                 <p>INVALID_LIST_MEMBER: You provided a list to a parameter that contains at least
    #                     one invalid value.</p>
    #             </li>
    #             <li>
    #                 <p>INVALID_PAGINATION_TOKEN: Get the value for the <code>NextToken</code>
    #                     parameter from the response to a previous call of the operation.</p>
    #             </li>
    #             <li>
    #                 <p>INVALID_PARTY_TYPE_TARGET: You specified the wrong type of entity (account,
    #                     organization, or email) as a party.</p>
    #             </li>
    #             <li>
    #                 <p>INVALID_PATTERN: You provided a value that doesn't match the required
    #                     pattern.</p>
    #             </li>
    #             <li>
    #                 <p>INVALID_PATTERN_TARGET_ID: You specified a policy target ID that doesn't match
    #                     the required pattern.</p>
    #             </li>
    #             <li>
    #                 <p>INVALID_ROLE_NAME: You provided a role name that isn't valid. A role name
    #                     can't begin with the reserved prefix <code>AWSServiceRoleFor</code>.</p>
    #             </li>
    #             <li>
    #                 <p>INVALID_SYNTAX_ORGANIZATION_ARN: You specified an invalid Amazon Resource Name
    #                     (ARN) for the organization.</p>
    #             </li>
    #             <li>
    #                 <p>INVALID_SYNTAX_POLICY_ID: You specified an invalid policy ID. </p>
    #             </li>
    #             <li>
    #                 <p>INVALID_SYSTEM_TAGS_PARAMETER: You specified a tag key that is a system tag.
    #                     You can’t add, edit, or delete system tag keys because they're reserved for
    #                     Amazon Web Services use. System tags don’t count against your tags per resource limit.</p>
    #             </li>
    #             <li>
    #                 <p>MAX_FILTER_LIMIT_EXCEEDED: You can specify only one filter parameter for the
    #                     operation.</p>
    #             </li>
    #             <li>
    #                 <p>MAX_LENGTH_EXCEEDED: You provided a string parameter that is longer than
    #                     allowed.</p>
    #             </li>
    #             <li>
    #                 <p>MAX_VALUE_EXCEEDED: You provided a numeric parameter that has a larger value
    #                     than allowed.</p>
    #             </li>
    #             <li>
    #                 <p>MIN_LENGTH_EXCEEDED: You provided a string parameter that is shorter than
    #                     allowed.</p>
    #             </li>
    #             <li>
    #                 <p>MIN_VALUE_EXCEEDED: You provided a numeric parameter that has a smaller value
    #                     than allowed.</p>
    #             </li>
    #             <li>
    #                 <p>MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS: You can move an account only between
    #                     entities in the same root.</p>
    #             </li>
    #             <li>
    #                 <p>TARGET_NOT_SUPPORTED: You can't perform the specified operation on that target
    #                     entity.</p>
    #             </li>
    #             <li>
    #                 <p>UNRECOGNIZED_SERVICE_PRINCIPAL: You specified a service principal that isn't
    #                     recognized.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute reason
    #   Enum, one of: ["INVALID_PARTY_TYPE_TARGET", "INVALID_SYNTAX_ORGANIZATION_ARN", "INVALID_SYNTAX_POLICY_ID", "INVALID_ENUM", "INVALID_ENUM_POLICY_TYPE", "INVALID_LIST_MEMBER", "MAX_LENGTH_EXCEEDED", "MAX_VALUE_EXCEEDED", "MIN_LENGTH_EXCEEDED", "MIN_VALUE_EXCEEDED", "IMMUTABLE_POLICY", "INVALID_PATTERN", "INVALID_PATTERN_TARGET_ID", "INPUT_REQUIRED", "INVALID_NEXT_TOKEN", "MAX_LIMIT_EXCEEDED_FILTER", "MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS", "INVALID_FULL_NAME_TARGET", "UNRECOGNIZED_SERVICE_PRINCIPAL", "INVALID_ROLE_NAME", "INVALID_SYSTEM_TAGS_PARAMETER", "DUPLICATE_TAG_KEY", "TARGET_NOT_SUPPORTED", "INVALID_EMAIL_ADDRESS_TARGET"]
    #
    #   @return [String]
    #
    InvalidInputException = ::Struct.new(
      :message,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InvalidInputExceptionReason
    #
    module InvalidInputExceptionReason
      # No documentation available.
      #
      INVALID_PARTY_TYPE_TARGET = "INVALID_PARTY_TYPE_TARGET"

      # No documentation available.
      #
      INVALID_SYNTAX_ORGANIZATION = "INVALID_SYNTAX_ORGANIZATION_ARN"

      # No documentation available.
      #
      INVALID_SYNTAX_POLICY = "INVALID_SYNTAX_POLICY_ID"

      # No documentation available.
      #
      INVALID_ENUM = "INVALID_ENUM"

      # No documentation available.
      #
      INVALID_ENUM_POLICY_TYPE = "INVALID_ENUM_POLICY_TYPE"

      # No documentation available.
      #
      INVALID_LIST_MEMBER = "INVALID_LIST_MEMBER"

      # No documentation available.
      #
      MAX_LENGTH_EXCEEDED = "MAX_LENGTH_EXCEEDED"

      # No documentation available.
      #
      MAX_VALUE_EXCEEDED = "MAX_VALUE_EXCEEDED"

      # No documentation available.
      #
      MIN_LENGTH_EXCEEDED = "MIN_LENGTH_EXCEEDED"

      # No documentation available.
      #
      MIN_VALUE_EXCEEDED = "MIN_VALUE_EXCEEDED"

      # No documentation available.
      #
      IMMUTABLE_POLICY = "IMMUTABLE_POLICY"

      # No documentation available.
      #
      INVALID_PATTERN = "INVALID_PATTERN"

      # No documentation available.
      #
      INVALID_PATTERN_TARGET_ID = "INVALID_PATTERN_TARGET_ID"

      # No documentation available.
      #
      INPUT_REQUIRED = "INPUT_REQUIRED"

      # No documentation available.
      #
      INVALID_PAGINATION_TOKEN = "INVALID_NEXT_TOKEN"

      # No documentation available.
      #
      MAX_FILTER_LIMIT_EXCEEDED = "MAX_LIMIT_EXCEEDED_FILTER"

      # No documentation available.
      #
      MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS = "MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS"

      # No documentation available.
      #
      INVALID_FULL_NAME_TARGET = "INVALID_FULL_NAME_TARGET"

      # No documentation available.
      #
      UNRECOGNIZED_SERVICE_PRINCIPAL = "UNRECOGNIZED_SERVICE_PRINCIPAL"

      # No documentation available.
      #
      INVALID_ROLE_NAME = "INVALID_ROLE_NAME"

      # No documentation available.
      #
      INVALID_SYSTEM_TAGS_PARAMETER = "INVALID_SYSTEM_TAGS_PARAMETER"

      # No documentation available.
      #
      DUPLICATE_TAG_KEY = "DUPLICATE_TAG_KEY"

      # No documentation available.
      #
      TARGET_NOT_SUPPORTED = "TARGET_NOT_SUPPORTED"

      # No documentation available.
      #
      INVALID_EMAIL_ADDRESS_TARGET = "INVALID_EMAIL_ADDRESS_TARGET"
    end

    # @!attribute target
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
    #   @return [HandshakeParty]
    #
    # @!attribute notes
    #   <p>Additional information that you want to include in the generated email to the
    #               recipient account owner.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
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
    #   @return [Array<Tag>]
    #
    InviteAccountToOrganizationInput = ::Struct.new(
      :target,
      :notes,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Organizations::Types::InviteAccountToOrganizationInput "\
          "target=#{target || 'nil'}, "\
          "notes=\"[SENSITIVE]\", "\
          "tags=#{tags || 'nil'}>"
      end
    end

    # @!attribute handshake
    #   <p>A structure that contains details about the handshake that is created to support this
    #               invitation request.</p>
    #
    #   @return [Handshake]
    #
    InviteAccountToOrganizationOutput = ::Struct.new(
      :handshake,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    LeaveOrganizationInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    LeaveOrganizationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    #   @return [Integer]
    #
    ListAWSServiceAccessForOrganizationInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute enabled_service_principals
    #   <p>A list of the service principals for the services that are enabled to integrate with
    #               your organization. Each principal is a structure that includes the name and the date
    #               that it was enabled for integration with Organizations.</p>
    #
    #   @return [Array<EnabledServicePrincipal>]
    #
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListAWSServiceAccessForOrganizationOutput = ::Struct.new(
      :enabled_service_principals,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parent_id
    #   <p>The unique identifier (ID) for the parent root or organization unit (OU) whose
    #               accounts you want to list.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    #   @return [Integer]
    #
    ListAccountsForParentInput = ::Struct.new(
      :parent_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accounts
    #   <p>A list of the accounts in the specified root or OU.</p>
    #
    #   @return [Array<Account>]
    #
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListAccountsForParentOutput = ::Struct.new(
      :accounts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    #   @return [Integer]
    #
    ListAccountsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute accounts
    #   <p>A list of objects in the organization.</p>
    #
    #   @return [Array<Account>]
    #
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListAccountsOutput = ::Struct.new(
      :accounts,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parent_id
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
    #   @return [String]
    #
    # @!attribute child_type
    #   <p>Filters the output to include only the specified child type.</p>
    #
    #   Enum, one of: ["ACCOUNT", "ORGANIZATIONAL_UNIT"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    #   @return [Integer]
    #
    ListChildrenInput = ::Struct.new(
      :parent_id,
      :child_type,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute children
    #   <p>The list of children of the specified parent container.</p>
    #
    #   @return [Array<Child>]
    #
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListChildrenOutput = ::Struct.new(
      :children,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute states
    #   <p>A list of one or more states that you want included in the response. If this parameter
    #               isn't present, all requests are included in the response.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    #   @return [Integer]
    #
    ListCreateAccountStatusInput = ::Struct.new(
      :states,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute create_account_statuses
    #   <p>A list of objects with details about the requests. Certain elements, such as the
    #               accountId number, are present in the output only after the account has been successfully
    #               created.</p>
    #
    #   @return [Array<CreateAccountStatus>]
    #
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListCreateAccountStatusOutput = ::Struct.new(
      :create_account_statuses,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute service_principal
    #   <p>Specifies a service principal name. If specified, then the operation lists the
    #               delegated administrators only for the specified service.</p>
    #           <p>If you don't specify a service principal, the operation lists all delegated
    #               administrators for all services in your organization.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    #   @return [Integer]
    #
    ListDelegatedAdministratorsInput = ::Struct.new(
      :service_principal,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delegated_administrators
    #   <p>The list of delegated administrators in your organization.</p>
    #
    #   @return [Array<DelegatedAdministrator>]
    #
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListDelegatedAdministratorsOutput = ::Struct.new(
      :delegated_administrators,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID number of a delegated administrator account in the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    #   @return [Integer]
    #
    ListDelegatedServicesForAccountInput = ::Struct.new(
      :account_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delegated_services
    #   <p>The services for which the account is a delegated administrator.</p>
    #
    #   @return [Array<DelegatedService>]
    #
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListDelegatedServicesForAccountOutput = ::Struct.new(
      :delegated_services,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>Filters the handshakes that you want included in the response. The default is all
    #               types. Use the <code>ActionType</code> element to limit the output to only a specified
    #               type, such as <code>INVITE</code>, <code>ENABLE_ALL_FEATURES</code>, or
    #                   <code>APPROVE_ALL_FEATURES</code>. Alternatively, for the
    #                   <code>ENABLE_ALL_FEATURES</code> handshake that generates a separate child handshake
    #               for each member account, you can specify <code>ParentHandshakeId</code> to see only the
    #               handshakes that were generated by that parent request.</p>
    #
    #   @return [HandshakeFilter]
    #
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    #   @return [Integer]
    #
    ListHandshakesForAccountInput = ::Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute handshakes
    #   <p>A list of <a>Handshake</a> objects with details about each of the
    #               handshakes that is associated with the specified account.</p>
    #
    #   @return [Array<Handshake>]
    #
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListHandshakesForAccountOutput = ::Struct.new(
      :handshakes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
    #   <p>A filter of the handshakes that you want included in the response. The default is all
    #               types. Use the <code>ActionType</code> element to limit the output to only a specified
    #               type, such as <code>INVITE</code>, <code>ENABLE-ALL-FEATURES</code>, or
    #                   <code>APPROVE-ALL-FEATURES</code>. Alternatively, for the
    #                   <code>ENABLE-ALL-FEATURES</code> handshake that generates a separate child handshake
    #               for each member account, you can specify the <code>ParentHandshakeId</code> to see only
    #               the handshakes that were generated by that parent request.</p>
    #
    #   @return [HandshakeFilter]
    #
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    #   @return [Integer]
    #
    ListHandshakesForOrganizationInput = ::Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute handshakes
    #   <p>A list of <a>Handshake</a> objects with details about each of the
    #               handshakes that are associated with an organization.</p>
    #
    #   @return [Array<Handshake>]
    #
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListHandshakesForOrganizationOutput = ::Struct.new(
      :handshakes,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parent_id
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
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    #   @return [Integer]
    #
    ListOrganizationalUnitsForParentInput = ::Struct.new(
      :parent_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organizational_units
    #   <p>A list of the OUs in the specified root or parent OU.</p>
    #
    #   @return [Array<OrganizationalUnit>]
    #
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListOrganizationalUnitsForParentOutput = ::Struct.new(
      :organizational_units,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute child_id
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
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    #   @return [Integer]
    #
    ListParentsInput = ::Struct.new(
      :child_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute parents
    #   <p>A list of parents for the specified child account or OU.</p>
    #
    #   @return [Array<Parent>]
    #
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListParentsOutput = ::Struct.new(
      :parents,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute target_id
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
    #   @return [String]
    #
    # @!attribute filter
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
    #   Enum, one of: ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    #   @return [Integer]
    #
    ListPoliciesForTargetInput = ::Struct.new(
      :target_id,
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policies
    #   <p>The list of policies that match the criteria in the request.</p>
    #
    #   @return [Array<PolicySummary>]
    #
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListPoliciesForTargetOutput = ::Struct.new(
      :policies,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute filter
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
    #   Enum, one of: ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    #   @return [Integer]
    #
    ListPoliciesInput = ::Struct.new(
      :filter,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policies
    #   <p>A list of policies that match the filter criteria in the request. The output list
    #               doesn't include the policy contents. To see the content for a policy, see <a>DescribePolicy</a>.</p>
    #
    #   @return [Array<PolicySummary>]
    #
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListPoliciesOutput = ::Struct.new(
      :policies,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    #   @return [Integer]
    #
    ListRootsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute roots
    #   <p>A list of roots that are defined in an organization.</p>
    #
    #   @return [Array<Root>]
    #
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListRootsOutput = ::Struct.new(
      :roots,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
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
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_id,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags that are assigned to the resource.</p>
    #
    #   @return [Array<Tag>]
    #
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_id
    #   <p>The unique identifier (ID) of the policy whose attachments you want to know.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The parameter for receiving additional results if you receive a
    #       <code>NextToken</code> response in a previous request. A <code>NextToken</code> response
    #       indicates that more output is available. Set this parameter to the value of the previous
    #       call's <code>NextToken</code> response to indicate where the output should continue
    #       from.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The total number of results that you want included on each page of the
    #       response. If you do not include this parameter, it defaults to a value that is specific to the
    #       operation. If additional items exist beyond the maximum you specify, the <code>NextToken</code>
    #       response element is present and has a value (is not null). Include that value as the
    #       <code>NextToken</code> request parameter in the next call to the operation to get the next part
    #       of the results. Note that Organizations might return fewer results than the maximum even when there are
    #       more results available. You should check <code>NextToken</code> after every operation to ensure
    #       that you receive all of the results.</p>
    #
    #   @return [Integer]
    #
    ListTargetsForPolicyInput = ::Struct.new(
      :policy_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute targets
    #   <p>A list of structures, each of which contains details about one of the entities to
    #               which the specified policy is attached.</p>
    #
    #   @return [Array<PolicyTargetSummary>]
    #
    # @!attribute next_token
    #   <p>If present, indicates that more output is available than is
    #       included in the current response. Use this value in the <code>NextToken</code> request parameter
    #       in a subsequent call to the operation to get the next part of the output. You should repeat this
    #       until the <code>NextToken</code> response element comes back as <code>null</code>.</p>
    #
    #   @return [String]
    #
    ListTargetsForPolicyOutput = ::Struct.new(
      :targets,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The provided policy document doesn't meet the requirements of the specified policy
    #             type. For example, the syntax might be incorrect. For details about service control
    #             policy syntax, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html">Service Control Policy
    #                 Syntax</a> in the <i>Organizations User Guide.</i>
    #          </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MalformedPolicyDocumentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can't remove a management account from an organization. If you want the management
    #             account to become a member account in another organization, you must first delete the
    #             current organization of the management account.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MasterCannotLeaveOrganizationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The unique identifier (ID) of the account that you want to move.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12
    #       digits.</p>
    #
    #   @return [String]
    #
    # @!attribute source_parent_id
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
    #   @return [String]
    #
    # @!attribute destination_parent_id
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
    #   @return [String]
    #
    MoveAccountInput = ::Struct.new(
      :account_id,
      :source_parent_id,
      :destination_parent_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    MoveAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about an organization. An organization is a collection of accounts
    #             that are centrally managed together using consolidated billing, organized hierarchically
    #             with organizational units (OUs), and controlled with policies .</p>
    #
    # @!attribute id
    #   <p>The unique identifier (ID) of an organization.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organization ID string requires "o-"
    #       followed by from 10 to 32 lowercase letters or digits.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of an organization.</p>
    #           <p>For more information about ARNs in Organizations, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html awsorganizations-resources-for-iam-policies">ARN
    #       Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute feature_set
    #   <p>Specifies the functionality that currently is available to the organization. If set to
    #               "ALL", then all features are enabled and policies can be applied to accounts in the
    #               organization. If set to "CONSOLIDATED_BILLING", then only consolidated billing
    #               functionality is available. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling All Features
    #                   in Your Organization</a> in the <i>Organizations User Guide</i>.</p>
    #
    #   Enum, one of: ["ALL", "CONSOLIDATED_BILLING"]
    #
    #   @return [String]
    #
    # @!attribute master_account_arn
    #   <p>The Amazon Resource Name (ARN) of the account that is designated as the management
    #               account for the organization.</p>
    #           <p>For more information about ARNs in Organizations, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html awsorganizations-resources-for-iam-policies">ARN
    #       Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute master_account_id
    #   <p>The unique identifier (ID) of the management account of an organization.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12
    #       digits.</p>
    #
    #   @return [String]
    #
    # @!attribute master_account_email
    #   <p>The email address that is associated with the Amazon Web Services account that is designated as the
    #               management account for the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute available_policy_types
    #   <important>
    #               <p>Do not use. This field is deprecated and doesn't provide complete information
    #                   about the policies in your organization.</p>
    #           </important>
    #           <p>To determine the policies that are enabled and available for use in your organization,
    #               use the <a>ListRoots</a> operation instead.</p>
    #
    #   @return [Array<PolicyTypeSummary>]
    #
    Organization = ::Struct.new(
      :id,
      :arn,
      :feature_set,
      :master_account_arn,
      :master_account_id,
      :master_account_email,
      :available_policy_types,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Organizations::Types::Organization "\
          "id=#{id || 'nil'}, "\
          "arn=#{arn || 'nil'}, "\
          "feature_set=#{feature_set || 'nil'}, "\
          "master_account_arn=#{master_account_arn || 'nil'}, "\
          "master_account_id=#{master_account_id || 'nil'}, "\
          "master_account_email=\"[SENSITIVE]\", "\
          "available_policy_types=#{available_policy_types || 'nil'}>"
      end
    end

    # Includes enum constants for OrganizationFeatureSet
    #
    module OrganizationFeatureSet
      # No documentation available.
      #
      ALL = "ALL"

      # No documentation available.
      #
      CONSOLIDATED_BILLING = "CONSOLIDATED_BILLING"
    end

    # <p>The organization isn't empty. To delete an organization, you must first remove all
    #             accounts except the management account, delete all OUs, and delete all policies.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OrganizationNotEmptyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about an organizational unit (OU). An OU is a container of Amazon Web Services
    #             accounts within a root of an organization. Policies that are attached to an OU apply to
    #             all accounts contained in that OU and in any child OUs.</p>
    #
    # @!attribute id
    #   <p>The unique identifier (ID) associated with this OU.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires
    #       "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the
    #       OU). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters
    #       or digits.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of this OU.</p>
    #           <p>For more information about ARNs in Organizations, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html awsorganizations-resources-for-iam-policies">ARN
    #       Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The friendly name of this OU.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       that is used to validate this parameter is a string of any of the characters in the ASCII
    #       character range.</p>
    #
    #   @return [String]
    #
    OrganizationalUnit = ::Struct.new(
      :id,
      :arn,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified OU is not empty. Move all accounts to another root or to other OUs,
    #             remove all child OUs, and try the operation again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OrganizationalUnitNotEmptyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>We can't find an OU with the <code>OrganizationalUnitId</code> that you
    #             specified.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OrganizationalUnitNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about either a root or an organizational unit (OU) that can
    #             contain OUs or accounts in an organization.</p>
    #
    # @!attribute id
    #   <p>The unique identifier (ID) of the parent entity.</p>
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
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the parent entity.</p>
    #
    #   Enum, one of: ["ROOT", "ORGANIZATIONAL_UNIT"]
    #
    #   @return [String]
    #
    Parent = ::Struct.new(
      :id,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>We can't find a root or OU with the <code>ParentId</code> that you specified.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ParentNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ParentType
    #
    module ParentType
      # No documentation available.
      #
      ROOT = "ROOT"

      # No documentation available.
      #
      ORGANIZATIONAL_UNIT = "ORGANIZATIONAL_UNIT"
    end

    # <p>Contains rules to be applied to the affected accounts. Policies can be attached
    #             directly to accounts, or to roots and OUs to affect all accounts in those
    #             hierarchies.</p>
    #
    # @!attribute policy_summary
    #   <p>A structure that contains additional details about the policy.</p>
    #
    #   @return [PolicySummary]
    #
    # @!attribute content
    #   <p>The text content of the policy.</p>
    #
    #   @return [String]
    #
    Policy = ::Struct.new(
      :policy_summary,
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Changes to the effective policy are in progress, and its contents can't be returned.
    #             Try the operation again later. </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PolicyChangesInProgressException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The policy is attached to one or more entities. You must detach it from all roots,
    #             OUs, and accounts before performing this operation.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PolicyInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The policy isn't attached to the specified target in the specified root.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PolicyNotAttachedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>We can't find a policy with the <code>PolicyId</code> that you specified.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PolicyNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains information about a policy, but does not include the content. To see the
    #             content of a policy, see <a>DescribePolicy</a>.</p>
    #
    # @!attribute id
    #   <p>The unique identifier (ID) of the policy.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the policy.</p>
    #           <p>For more information about ARNs in Organizations, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html awsorganizations-resources-for-iam-policies">ARN
    #       Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The friendly name of the policy.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       that is used to validate this parameter is a string of any of the characters in the ASCII
    #       character range.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of policy.</p>
    #
    #   Enum, one of: ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #
    #   @return [String]
    #
    # @!attribute aws_managed
    #   <p>A boolean value that indicates whether the specified policy is an Amazon Web Services managed
    #               policy. If true, then you can attach the policy to roots, OUs, or accounts, but you
    #               cannot edit it.</p>
    #
    #   @return [Boolean]
    #
    PolicySummary = ::Struct.new(
      :id,
      :arn,
      :name,
      :description,
      :type,
      :aws_managed,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.aws_managed ||= false
      end

    end

    # <p>Contains information about a root, OU, or account that a policy is attached to.</p>
    #
    # @!attribute target_id
    #   <p>The unique identifier (ID) of the policy target.</p>
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
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the policy target.</p>
    #           <p>For more information about ARNs in Organizations, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html awsorganizations-resources-for-iam-policies">ARN
    #       Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The friendly name of the policy target.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       that is used to validate this parameter is a string of any of the characters in the ASCII
    #       character range.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the policy target.</p>
    #
    #   Enum, one of: ["ACCOUNT", "ORGANIZATIONAL_UNIT", "ROOT"]
    #
    #   @return [String]
    #
    PolicyTargetSummary = ::Struct.new(
      :target_id,
      :arn,
      :name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PolicyType
    #
    module PolicyType
      # No documentation available.
      #
      SERVICE_CONTROL_POLICY = "SERVICE_CONTROL_POLICY"

      # No documentation available.
      #
      TAG_POLICY = "TAG_POLICY"

      # No documentation available.
      #
      BACKUP_POLICY = "BACKUP_POLICY"

      # No documentation available.
      #
      AISERVICES_OPT_OUT_POLICY = "AISERVICES_OPT_OUT_POLICY"
    end

    # <p>The specified policy type is already enabled in the specified root.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PolicyTypeAlreadyEnabledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can't use the specified policy type with the feature set currently enabled for
    #             this organization. For example, you can enable SCPs only after you enable all features
    #             in the organization. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html#enable_policies_on_root">Managing
    #                 Organizations Policies</a>in the <i>Organizations User Guide.</i>
    #          </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PolicyTypeNotAvailableForOrganizationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified policy type isn't currently enabled in this root. You can't attach
    #             policies of the specified type to entities in a root until you enable that type in the
    #             root. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling All Features
    #                 in Your Organization</a> in the <i>Organizations User Guide.</i>
    #          </p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PolicyTypeNotEnabledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PolicyTypeStatus
    #
    module PolicyTypeStatus
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      PENDING_ENABLE = "PENDING_ENABLE"

      # No documentation available.
      #
      PENDING_DISABLE = "PENDING_DISABLE"
    end

    # <p>Contains information about a policy type and its status in the associated root.</p>
    #
    # @!attribute type
    #   <p>The name of the policy type.</p>
    #
    #   Enum, one of: ["SERVICE_CONTROL_POLICY", "TAG_POLICY", "BACKUP_POLICY", "AISERVICES_OPT_OUT_POLICY"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the policy type as it relates to the associated root. To attach a policy
    #               of the specified type to a root or to an OU or account in that root, it must be
    #               available in the organization and enabled for that root.</p>
    #
    #   Enum, one of: ["ENABLED", "PENDING_ENABLE", "PENDING_DISABLE"]
    #
    #   @return [String]
    #
    PolicyTypeSummary = ::Struct.new(
      :type,
      :status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The account ID number of the member account in the organization to register as a
    #               delegated administrator.</p>
    #
    #   @return [String]
    #
    # @!attribute service_principal
    #   <p>The service principal of the Amazon Web Services service for which you want to make the member
    #               account a delegated administrator.</p>
    #
    #   @return [String]
    #
    RegisterDelegatedAdministratorInput = ::Struct.new(
      :account_id,
      :service_principal,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RegisterDelegatedAdministratorOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The unique identifier (ID) of the member account that you want to remove from the
    #               organization.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an account ID string requires exactly 12
    #       digits.</p>
    #
    #   @return [String]
    #
    RemoveAccountFromOrganizationInput = ::Struct.new(
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RemoveAccountFromOrganizationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Contains details about a root. A root is a top-level parent node in the hierarchy of
    #             an organization that can contain organizational units (OUs) and accounts.
    #             The root contains every Amazon Web Services account in the
    #             organization.</p>
    #
    # @!attribute id
    #   <p>The unique identifier (ID) for the root.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a root ID string requires "r-" followed by
    #       from 4 to 32 lowercase letters or digits.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the root.</p>
    #           <p>For more information about ARNs in Organizations, see <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsorganizations.html awsorganizations-resources-for-iam-policies">ARN
    #       Formats Supported by Organizations</a> in the <i>Amazon Web Services Service Authorization Reference</i>.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The friendly name of the root.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       that is used to validate this parameter is a string of any of the characters in the ASCII
    #       character range.</p>
    #
    #   @return [String]
    #
    # @!attribute policy_types
    #   <p>The types of policies that are currently enabled for the root and therefore can be
    #               attached to the root or to its OUs or accounts.</p>
    #           <note>
    #               <p>Even if a policy type is shown as available in the organization, you can
    #                   separately enable and disable them at the root level by using <a>EnablePolicyType</a> and <a>DisablePolicyType</a>. Use <a>DescribeOrganization</a> to see the availability of the policy types in
    #                   that organization.</p>
    #           </note>
    #
    #   @return [Array<PolicyTypeSummary>]
    #
    Root = ::Struct.new(
      :id,
      :arn,
      :name,
      :policy_types,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>We can't find a root with the <code>RootId</code> that you specified.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    RootNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Organizations can't complete your request because of an internal service error. Try again
    #             later.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>We can't find a source root or OU with the <code>ParentId</code> that you
    #             specified.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    SourceParentNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A custom key-value pair associated with a resource within your organization.</p>
    #         <p>You can attach tags to any of the following organization resources.</p>
    #         <ul>
    #             <li>
    #                 <p>Amazon Web Services account</p>
    #             </li>
    #             <li>
    #                 <p>Organizational unit (OU)</p>
    #             </li>
    #             <li>
    #                 <p>Organization root</p>
    #             </li>
    #             <li>
    #                 <p>Policy</p>
    #             </li>
    #          </ul>
    #
    # @!attribute key
    #   <p>The key identifier, or name, of the tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The string value that's associated with the key of the tag. You can set the value of a
    #               tag to an empty string, but you can't set the value of a tag to null.</p>
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

    # @!attribute resource_id
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
    #   @return [String]
    #
    # @!attribute tags
    #   <p>A list of tags to add to the specified resource.</p>
    #           <p>For each tag in the list, you must specify both a tag key and a value. The value can
    #               be an empty string, but you can't set it to <code>null</code>.</p>
    #           <note>
    #               <p>If any one of the tags is invalid or if you exceed the maximum allowed number of
    #                   tags for a resource, then the entire request fails.</p>
    #           </note>
    #
    #   @return [Array<Tag>]
    #
    TagResourceInput = ::Struct.new(
      :resource_id,
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

    # <p>We can't find a root, OU, account, or policy with the <code>TargetId</code> that you
    #             specified.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TargetNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for TargetType
    #
    module TargetType
      # No documentation available.
      #
      ACCOUNT = "ACCOUNT"

      # No documentation available.
      #
      ORGANIZATIONAL_UNIT = "ORGANIZATIONAL_UNIT"

      # No documentation available.
      #
      ROOT = "ROOT"
    end

    # <p>You have sent too many requests in too short a period of time. The quota helps protect
    #             against denial-of-service attacks. Try again later.</p>
    #         <p>For information about quotas that affect Organizations, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_limits.html">Quotas for Organizations</a>in the
    #                 <i>Organizations User Guide.</i>
    #          </p>
    #
    # @!attribute type
    #
    #   @return [String]
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :type,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This action isn't available in the current Amazon Web Services Region.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedAPIEndpointException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
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
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The list of keys for tags to remove from the specified resource.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_id,
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

    # @!attribute organizational_unit_id
    #   <p>The unique identifier (ID) of the OU that you want to rename. You can get the ID from
    #               the <a>ListOrganizationalUnitsForParent</a> operation.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for an organizational unit ID string requires
    #       "ou-" followed by from 4 to 32 lowercase letters or digits (the ID of the root that contains the
    #       OU). This string is followed by a second "-" dash and from 8 to 32 additional lowercase letters
    #       or digits.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The new name that you want to assign to the OU.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       that is used to validate this parameter is a string of any of the characters in the ASCII
    #       character range.</p>
    #
    #   @return [String]
    #
    UpdateOrganizationalUnitInput = ::Struct.new(
      :organizational_unit_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organizational_unit
    #   <p>A structure that contains the details about the specified OU, including its new
    #               name.</p>
    #
    #   @return [OrganizationalUnit]
    #
    UpdateOrganizationalUnitOutput = ::Struct.new(
      :organizational_unit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy_id
    #   <p>The unique identifier (ID) of the policy that you want to update.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a> for a policy ID string requires "p-" followed
    #       by from 8 to 128 lowercase or uppercase letters, digits, or the underscore character (_).</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>If provided, the new name for the policy.</p>
    #           <p>The <a href="http://wikipedia.org/wiki/regex">regex pattern</a>
    #       that is used to validate this parameter is a string of any of the characters in the ASCII
    #       character range.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>If provided, the new description for the policy.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>If provided, the new content for the policy. The text must be correctly formatted JSON
    #               that complies with the syntax for the policy's type. For more information, see <a href="https://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html">Service
    #                   Control Policy Syntax</a> in the <i>Organizations User Guide.</i>
    #            </p>
    #
    #   @return [String]
    #
    UpdatePolicyInput = ::Struct.new(
      :policy_id,
      :name,
      :description,
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute policy
    #   <p>A structure that contains details about the updated policy, showing the requested
    #               changes.</p>
    #
    #   @return [Policy]
    #
    UpdatePolicyOutput = ::Struct.new(
      :policy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
