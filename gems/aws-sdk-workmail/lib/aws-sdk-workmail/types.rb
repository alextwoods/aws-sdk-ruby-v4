# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WorkMail
  module Types

    # <p>A rule that controls access to an Amazon WorkMail organization.</p>
    #
    # @!attribute name
    #   <p>The rule name.</p>
    #
    #   @return [String]
    #
    # @!attribute effect
    #   <p>The rule effect.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The rule description.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_ranges
    #   <p>IPv4 CIDR ranges to include in the rule.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_ip_ranges
    #   <p>IPv4 CIDR ranges to exclude from the rule.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute actions
    #   <p>Access protocol actions to include in the rule. Valid values include
    #               <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>,
    #               <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_actions
    #   <p>Access protocol actions to exclude from the rule. Valid values include
    #               <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>,
    #               <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute user_ids
    #   <p>User IDs to include in the rule.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_user_ids
    #   <p>User IDs to exclude from the rule.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute date_created
    #   <p>The date that the rule was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute date_modified
    #   <p>The date that the rule was modified.</p>
    #
    #   @return [Time]
    #
    AccessControlRule = ::Struct.new(
      :name,
      :effect,
      :description,
      :ip_ranges,
      :not_ip_ranges,
      :actions,
      :not_actions,
      :user_ids,
      :not_user_ids,
      :date_created,
      :date_modified,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AccessControlRuleEffect
    #
    module AccessControlRuleEffect
      # No documentation available.
      #
      ALLOW = "ALLOW"

      # No documentation available.
      #
      DENY = "DENY"
    end

    # @!attribute organization_id
    #   <p>The organization under which the resource exists.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The resource for which members (users or groups) are associated.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The member (user or group) to associate to the resource.</p>
    #
    #   @return [String]
    #
    AssociateDelegateToResourceInput = ::Struct.new(
      :organization_id,
      :resource_id,
      :entity_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateDelegateToResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The organization under which the group exists.</p>
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   <p>The group to which the member (user or group) is associated.</p>
    #
    #   @return [String]
    #
    # @!attribute member_id
    #   <p>The member (user or group) to associate to the group.</p>
    #
    #   @return [String]
    #
    AssociateMemberToGroupInput = ::Struct.new(
      :organization_id,
      :group_id,
      :member_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateMemberToGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>At least one delegate must be associated to the resource to disable automatic replies
    #          from the resource.</p>
    #
    # @!attribute auto_accept_requests
    #   <p>The resource's ability to automatically reply to requests. If disabled, delegates
    #            must be associated to the resource.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute auto_decline_recurring_requests
    #   <p>The resource's ability to automatically decline any recurring requests.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute auto_decline_conflicting_requests
    #   <p>The resource's ability to automatically decline any conflicting requests.</p>
    #
    #   @return [Boolean]
    #
    BookingOptions = ::Struct.new(
      :auto_accept_requests,
      :auto_decline_recurring_requests,
      :auto_decline_conflicting_requests,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.auto_accept_requests ||= false
        self.auto_decline_recurring_requests ||= false
        self.auto_decline_conflicting_requests ||= false
      end
    end

    # @!attribute client_token
    #   <p>The idempotency token for the client request.</p>
    #
    #   @return [String]
    #
    # @!attribute job_id
    #   <p>The job ID.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_id
    #   <p>The organization ID.</p>
    #
    #   @return [String]
    #
    CancelMailboxExportJobInput = ::Struct.new(
      :client_token,
      :job_id,
      :organization_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CancelMailboxExportJobOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The organization under which the member (user or group) exists.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The member (user or group) to which this alias is added.</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>The alias to add to the member set.</p>
    #
    #   @return [String]
    #
    CreateAliasInput = ::Struct.new(
      :organization_id,
      :entity_id,
      :alias,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateAliasOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The organization under which the group is to be created.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the group.</p>
    #
    #   @return [String]
    #
    CreateGroupInput = ::Struct.new(
      :organization_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_id
    #   <p>The identifier of the group.</p>
    #
    #   @return [String]
    #
    CreateGroupOutput = ::Struct.new(
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The Amazon WorkMail organization under which the rule will be created.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The idempotency token for the client request.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The rule name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The rule description.</p>
    #
    #   @return [String]
    #
    # @!attribute effect
    #   <p>The effect of the rule when it matches. Allowed values are <code>ALLOW</code> or <code>DENY</code>.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute device_types
    #   <p>Device types that the rule will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_device_types
    #   <p>Device types that the rule <b>will not</b> match. All other device types will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute device_models
    #   <p>Device models that the rule will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_device_models
    #   <p>Device models that the rule <b>will not</b> match. All other device models will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute device_operating_systems
    #   <p>Device operating systems that the rule will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_device_operating_systems
    #   <p>Device operating systems that the rule <b>will not</b> match. All other device operating systems will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute device_user_agents
    #   <p>Device user agents that the rule will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_device_user_agents
    #   <p>Device user agents that the rule <b>will not</b> match. All other device user agents will match.</p>
    #
    #   @return [Array<String>]
    #
    CreateMobileDeviceAccessRuleInput = ::Struct.new(
      :organization_id,
      :client_token,
      :name,
      :description,
      :effect,
      :device_types,
      :not_device_types,
      :device_models,
      :not_device_models,
      :device_operating_systems,
      :not_device_operating_systems,
      :device_user_agents,
      :not_device_user_agents,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute mobile_device_access_rule_id
    #   <p>The identifier for the newly created mobile device access rule.</p>
    #
    #   @return [String]
    #
    CreateMobileDeviceAccessRuleOutput = ::Struct.new(
      :mobile_device_access_rule_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute directory_id
    #   <p>The AWS Directory Service directory ID.</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>The organization alias.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>The idempotency token associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute domains
    #   <p>The email domains to associate with the organization.</p>
    #
    #   @return [Array<Domain>]
    #
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of a customer managed master key from AWS
    #            KMS.</p>
    #
    #   @return [String]
    #
    # @!attribute enable_interoperability
    #   <p>When <code>true</code>, allows organization interoperability between Amazon WorkMail and Microsoft Exchange. Can only be set to <code>true</code> if an AD Connector directory ID is included in the request.</p>
    #
    #   @return [Boolean]
    #
    CreateOrganizationInput = ::Struct.new(
      :directory_id,
      :alias,
      :client_token,
      :domains,
      :kms_key_arn,
      :enable_interoperability,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enable_interoperability ||= false
      end
    end

    # @!attribute organization_id
    #   <p>The organization ID.</p>
    #
    #   @return [String]
    #
    CreateOrganizationOutput = ::Struct.new(
      :organization_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier associated with the organization for which the resource is
    #            created.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the new resource.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the new resource. The available types are <code>equipment</code> and
    #               <code>room</code>.</p>
    #
    #   Enum, one of: ["ROOM", "EQUIPMENT"]
    #
    #   @return [String]
    #
    CreateResourceInput = ::Struct.new(
      :organization_id,
      :name,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The identifier of the new resource.</p>
    #
    #   @return [String]
    #
    CreateResourceOutput = ::Struct.new(
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier of the organization for which the user is created.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name for the new user. WorkMail directory user names have a maximum length of 64. All others have a maximum length of 20.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The display name for the new user.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The password for the new user.</p>
    #
    #   @return [String]
    #
    CreateUserInput = ::Struct.new(
      :organization_id,
      :name,
      :display_name,
      :password,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkMail::Types::CreateUserInput "\
          "organization_id=#{organization_id || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "display_name=#{display_name || 'nil'}, "\
          "password=\"[SENSITIVE]\">"
      end
    end

    # @!attribute user_id
    #   <p>The identifier for the new user.</p>
    #
    #   @return [String]
    #
    CreateUserOutput = ::Struct.new(
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The name of the attribute, which is one of the values defined in the UserAttribute
    #          enumeration.</p>
    #
    # @!attribute id
    #   <p>The identifier for the user or group associated as the resource's delegate.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the delegate: user or group.</p>
    #
    #   Enum, one of: ["GROUP", "USER"]
    #
    #   @return [String]
    #
    Delegate = ::Struct.new(
      :id,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the access control rule.</p>
    #
    #   @return [String]
    #
    DeleteAccessControlRuleInput = ::Struct.new(
      :organization_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAccessControlRuleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the user exists.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The identifier for the member (user or group) from which to have the aliases
    #            removed.</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>The aliases to be removed from the user's set of aliases. Duplicate entries in the
    #            list are collapsed into single entries (the list is transformed into a set).</p>
    #
    #   @return [String]
    #
    DeleteAliasInput = ::Struct.new(
      :organization_id,
      :entity_id,
      :alias,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAliasOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The ID of the organization from which the email monitoring configuration is deleted.</p>
    #
    #   @return [String]
    #
    DeleteEmailMonitoringConfigurationInput = ::Struct.new(
      :organization_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteEmailMonitoringConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The organization that contains the group.</p>
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   <p>The identifier of the group to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteGroupInput = ::Struct.new(
      :organization_id,
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier of the organization under which the member (user or group)
    #            exists.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The identifier of the member (user or group) that owns the mailbox.</p>
    #
    #   @return [String]
    #
    # @!attribute grantee_id
    #   <p>The identifier of the member (user or group) for which to delete granted
    #            permissions.</p>
    #
    #   @return [String]
    #
    DeleteMailboxPermissionsInput = ::Struct.new(
      :organization_id,
      :entity_id,
      :grantee_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteMailboxPermissionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The Amazon WorkMail organization for which the access override will be deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
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
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The mobile device for which you delete the override. <code>DeviceId</code> is case insensitive.</p>
    #
    #   @return [String]
    #
    DeleteMobileDeviceAccessOverrideInput = ::Struct.new(
      :organization_id,
      :user_id,
      :device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteMobileDeviceAccessOverrideOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The Amazon WorkMail organization under which the rule will be deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute mobile_device_access_rule_id
    #   <p>The identifier of the rule to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteMobileDeviceAccessRuleInput = ::Struct.new(
      :organization_id,
      :mobile_device_access_rule_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteMobileDeviceAccessRuleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>The idempotency token associated with the request.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_id
    #   <p>The organization ID.</p>
    #
    #   @return [String]
    #
    # @!attribute delete_directory
    #   <p>If true, deletes the AWS Directory Service directory associated with the organization.</p>
    #
    #   @return [Boolean]
    #
    DeleteOrganizationInput = ::Struct.new(
      :client_token,
      :organization_id,
      :delete_directory,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.delete_directory ||= false
      end
    end

    # @!attribute organization_id
    #   <p>The organization ID.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the organization.</p>
    #
    #   @return [String]
    #
    DeleteOrganizationOutput = ::Struct.new(
      :organization_id,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier associated with the organization from which the resource is
    #            deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The identifier of the resource to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteResourceInput = ::Struct.new(
      :organization_id,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The organization ID.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The retention policy ID.</p>
    #
    #   @return [String]
    #
    DeleteRetentionPolicyInput = ::Struct.new(
      :organization_id,
      :id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteRetentionPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The organization that contains the user to be deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The identifier of the user to be deleted.</p>
    #
    #   @return [String]
    #
    DeleteUserInput = ::Struct.new(
      :organization_id,
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteUserOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the Amazon WorkMail entity exists.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The identifier for the member (user or group) to be updated.</p>
    #
    #   @return [String]
    #
    DeregisterFromWorkMailInput = ::Struct.new(
      :organization_id,
      :entity_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeregisterFromWorkMailOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The Amazon WorkMail organization for which the domain will be deregistered.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The domain to deregister in WorkMail and SES. </p>
    #
    #   @return [String]
    #
    DeregisterMailDomainInput = ::Struct.new(
      :organization_id,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeregisterMailDomainOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The ID of the organization for which the email monitoring configuration is described.</p>
    #
    #   @return [String]
    #
    DescribeEmailMonitoringConfigurationInput = ::Struct.new(
      :organization_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Role associated with the email monitoring configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch Log group associated with the email monitoring configuration.</p>
    #
    #   @return [String]
    #
    DescribeEmailMonitoringConfigurationOutput = ::Struct.new(
      :role_arn,
      :log_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the group exists.</p>
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   <p>The identifier for the group to be described.</p>
    #
    #   @return [String]
    #
    DescribeGroupInput = ::Struct.new(
      :organization_id,
      :group_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute group_id
    #   <p>The identifier of the described group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the described group.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email of the described group.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the user: enabled (registered to Amazon WorkMail) or disabled (deregistered or
    #            never registered to WorkMail).</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute enabled_date
    #   <p>The date and time when a user was registered to WorkMail, in UNIX epoch time
    #            format.</p>
    #
    #   @return [Time]
    #
    # @!attribute disabled_date
    #   <p>The date and time when a user was deregistered from WorkMail, in UNIX epoch time
    #            format.</p>
    #
    #   @return [Time]
    #
    DescribeGroupOutput = ::Struct.new(
      :group_id,
      :name,
      :email,
      :state,
      :enabled_date,
      :disabled_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>Lists the ID of the given organization.</p>
    #
    #   @return [String]
    #
    DescribeInboundDmarcSettingsInput = ::Struct.new(
      :organization_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute enforced
    #   <p>Lists the enforcement setting of the applied policy.</p>
    #
    #   @return [Boolean]
    #
    DescribeInboundDmarcSettingsOutput = ::Struct.new(
      :enforced,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.enforced ||= false
      end
    end

    # @!attribute job_id
    #   <p>The mailbox export job ID.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_id
    #   <p>The organization ID.</p>
    #
    #   @return [String]
    #
    DescribeMailboxExportJobInput = ::Struct.new(
      :job_id,
      :organization_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute entity_id
    #   <p>The identifier of the user or resource associated with the mailbox.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The mailbox export job description.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the AWS Identity and Access Management (IAM) role that grants write permission to the Amazon Simple
    #            Storage Service (Amazon S3) bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the symmetric AWS Key Management Service (AWS KMS)
    #            key that encrypts the exported mailbox content.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>The name of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_prefix
    #   <p>The S3 bucket prefix.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_path
    #   <p>The path to the S3 bucket and file that the mailbox export job is exporting
    #            to.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_progress
    #   <p>The estimated progress of the mailbox export job, in percentage points.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   <p>The state of the mailbox export job.</p>
    #
    #   Enum, one of: ["RUNNING", "COMPLETED", "FAILED", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute error_info
    #   <p>Error information for failed mailbox export jobs.</p>
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The mailbox export job start timestamp.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The mailbox export job end timestamp.</p>
    #
    #   @return [Time]
    #
    DescribeMailboxExportJobOutput = ::Struct.new(
      :entity_id,
      :description,
      :role_arn,
      :kms_key_arn,
      :s3_bucket_name,
      :s3_prefix,
      :s3_path,
      :estimated_progress,
      :state,
      :error_info,
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.estimated_progress ||= 0
      end
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization to be described.</p>
    #
    #   @return [String]
    #
    DescribeOrganizationInput = ::Struct.new(
      :organization_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier of an organization.</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>The alias for an organization.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of an organization.</p>
    #
    #   @return [String]
    #
    # @!attribute directory_id
    #   <p>The identifier for the directory associated with an Amazon WorkMail organization.</p>
    #
    #   @return [String]
    #
    # @!attribute directory_type
    #   <p>The type of directory associated with the WorkMail organization.</p>
    #
    #   @return [String]
    #
    # @!attribute default_mail_domain
    #   <p>The default mail domain associated with the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute completed_date
    #   <p>The date at which the organization became usable in the WorkMail context, in UNIX epoch
    #            time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute error_message
    #   <p>(Optional) The error message indicating if unexpected behavior was encountered with
    #            regards to the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the organization.</p>
    #
    #   @return [String]
    #
    DescribeOrganizationOutput = ::Struct.new(
      :organization_id,
      :alias,
      :state,
      :directory_id,
      :directory_type,
      :default_mail_domain,
      :completed_date,
      :error_message,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier associated with the organization for which the resource is
    #            described.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The identifier of the resource to be described.</p>
    #
    #   @return [String]
    #
    DescribeResourceInput = ::Struct.new(
      :organization_id,
      :resource_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_id
    #   <p>The identifier of the described resource.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email of the described resource.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the described resource.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the described resource.</p>
    #
    #   Enum, one of: ["ROOM", "EQUIPMENT"]
    #
    #   @return [String]
    #
    # @!attribute booking_options
    #   <p>The booking options for the described resource.</p>
    #
    #   @return [BookingOptions]
    #
    # @!attribute state
    #   <p>The state of the resource: enabled (registered to Amazon WorkMail), disabled (deregistered
    #            or never registered to WorkMail), or deleted.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute enabled_date
    #   <p>The date and time when a resource was enabled for WorkMail, in UNIX epoch time
    #            format.</p>
    #
    #   @return [Time]
    #
    # @!attribute disabled_date
    #   <p>The date and time when a resource was disabled from WorkMail, in UNIX epoch time
    #            format.</p>
    #
    #   @return [Time]
    #
    DescribeResourceOutput = ::Struct.new(
      :resource_id,
      :email,
      :name,
      :type,
      :booking_options,
      :state,
      :enabled_date,
      :disabled_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the user exists.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The identifier for the user to be described.</p>
    #
    #   @return [String]
    #
    DescribeUserInput = ::Struct.new(
      :organization_id,
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_id
    #   <p>The identifier for the described user.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name for the user.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The display name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of a user: enabled (registered to Amazon WorkMail) or disabled (deregistered or
    #            never registered to WorkMail).</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute user_role
    #   <p>In certain cases, other entities are modeled as users. If interoperability is
    #            enabled, resources are imported into Amazon WorkMail as users. Because different WorkMail
    #            organizations rely on different directory types, administrators can distinguish between an
    #            unregistered user (account is disabled and has a user role) and the directory
    #            administrators. The values are USER, RESOURCE, and SYSTEM_USER.</p>
    #
    #   Enum, one of: ["USER", "RESOURCE", "SYSTEM_USER"]
    #
    #   @return [String]
    #
    # @!attribute enabled_date
    #   <p>The date and time at which the user was enabled for Amazon WorkMail usage, in UNIX epoch
    #            time format.</p>
    #
    #   @return [Time]
    #
    # @!attribute disabled_date
    #   <p>The date and time at which the user was disabled for Amazon WorkMail usage, in UNIX epoch
    #            time format.</p>
    #
    #   @return [Time]
    #
    DescribeUserOutput = ::Struct.new(
      :user_id,
      :name,
      :email,
      :display_name,
      :state,
      :user_role,
      :enabled_date,
      :disabled_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The directory is already in use by another WorkMail organization in the same account and Region.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DirectoryInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The directory service doesn't recognize the credentials supplied by WorkMail.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DirectoryServiceAuthenticationFailedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The directory is unavailable. It might be located in another Region or deleted.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    DirectoryUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the resource exists.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The identifier of the resource from which delegates' set members are removed.
    #         </p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The identifier for the member (user, group) to be removed from the resource's
    #            delegates.</p>
    #
    #   @return [String]
    #
    DisassociateDelegateFromResourceInput = ::Struct.new(
      :organization_id,
      :resource_id,
      :entity_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateDelegateFromResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the group exists.</p>
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   <p>The identifier for the group from which members are removed.</p>
    #
    #   @return [String]
    #
    # @!attribute member_id
    #   <p>The identifier for the member to be removed to the group.</p>
    #
    #   @return [String]
    #
    DisassociateMemberFromGroupInput = ::Struct.new(
      :organization_id,
      :group_id,
      :member_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateMemberFromGroupOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A DNS record uploaded to your DNS provider.</p>
    #
    # @!attribute type
    #   <p>The RFC 1035 record type. Possible values: <code>CNAME</code>, <code>A</code>, <code>MX</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute hostname
    #   <p>The DNS hostname.- For example, <code>domain.example.com</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value returned by the DNS for a query to that hostname and record type.</p>
    #
    #   @return [String]
    #
    DnsRecord = ::Struct.new(
      :type,
      :hostname,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for DnsRecordVerificationStatus
    #
    module DnsRecordVerificationStatus
      # No documentation available.
      #
      PENDING = "PENDING"

      # No documentation available.
      #
      VERIFIED = "VERIFIED"

      # No documentation available.
      #
      FAILED = "FAILED"
    end

    # <p>The domain to associate with an Amazon WorkMail organization.</p>
    #          <p>When you configure a domain hosted in Amazon Route 53 (Route 53), all recommended DNS records are added to the organization when you create it. For more information, see <a href="https://docs.aws.amazon.com/workmail/latest/adminguide/add_domain.html">Adding a domain</a> in the <i>Amazon WorkMail Administrator Guide</i>.</p>
    #
    # @!attribute domain_name
    #   <p>The fully qualified domain name.</p>
    #
    #   @return [String]
    #
    # @!attribute hosted_zone_id
    #   <p>The hosted zone ID for a domain hosted in Route 53. Required when configuring a domain hosted in Route 53.</p>
    #
    #   @return [String]
    #
    Domain = ::Struct.new(
      :domain_name,
      :hosted_zone_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The email address that you're trying to assign is already created for a different
    #          user, group, or resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EmailAddressInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The user, group, or resource that you're trying to register is already
    #          registered.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EntityAlreadyRegisteredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The identifier supplied for the user, group, or resource does not exist in your
    #          organization.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EntityNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for EntityState
    #
    module EntityState
      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      DISABLED = "DISABLED"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>You are performing an operation on a user, group, or resource that isn't in the
    #          expected state, such as trying to delete an active user.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    EntityStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration applied to an organization's folders by its retention
    #          policy.</p>
    #
    # @!attribute name
    #   <p>The folder name.</p>
    #
    #   Enum, one of: ["INBOX", "DELETED_ITEMS", "SENT_ITEMS", "DRAFTS", "JUNK_EMAIL"]
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>The action to take on the folder contents at the end of the folder configuration
    #            period.</p>
    #
    #   Enum, one of: ["NONE", "DELETE", "PERMANENTLY_DELETE"]
    #
    #   @return [String]
    #
    # @!attribute period
    #   <p>The number of days for which the folder-configuration action applies.</p>
    #
    #   @return [Integer]
    #
    FolderConfiguration = ::Struct.new(
      :name,
      :action,
      :period,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FolderName
    #
    module FolderName
      # No documentation available.
      #
      INBOX = "INBOX"

      # No documentation available.
      #
      DELETED_ITEMS = "DELETED_ITEMS"

      # No documentation available.
      #
      SENT_ITEMS = "SENT_ITEMS"

      # No documentation available.
      #
      DRAFTS = "DRAFTS"

      # No documentation available.
      #
      JUNK_EMAIL = "JUNK_EMAIL"
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_address
    #   <p>The IPv4 address.</p>
    #
    #   @return [String]
    #
    # @!attribute action
    #   <p>The access protocol action. Valid values include <code>ActiveSync</code>,
    #               <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>, <code>SMTP</code>,
    #               <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The user ID.</p>
    #
    #   @return [String]
    #
    GetAccessControlEffectInput = ::Struct.new(
      :organization_id,
      :ip_address,
      :action,
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute effect
    #   <p>The rule effect.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute matched_rules
    #   <p>The rules that match the given parameters, resulting in an effect.</p>
    #
    #   @return [Array<String>]
    #
    GetAccessControlEffectOutput = ::Struct.new(
      :effect,
      :matched_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The organization ID.</p>
    #
    #   @return [String]
    #
    GetDefaultRetentionPolicyInput = ::Struct.new(
      :organization_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute id
    #   <p>The retention policy ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The retention policy name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The retention policy description.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_configurations
    #   <p>The retention policy folder configurations.</p>
    #
    #   @return [Array<FolderConfiguration>]
    #
    GetDefaultRetentionPolicyOutput = ::Struct.new(
      :id,
      :name,
      :description,
      :folder_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The Amazon WorkMail organization for which the domain is retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The domain from which you want to retrieve details.</p>
    #
    #   @return [String]
    #
    GetMailDomainInput = ::Struct.new(
      :organization_id,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute records
    #   <p>A list of the DNS records that Amazon WorkMail recommends adding in your DNS provider for the best user experience. The records configure your domain with DMARC, SPF, DKIM, and direct incoming
    #            email traffic to SES. See admin guide for more details.</p>
    #
    #   @return [Array<DnsRecord>]
    #
    # @!attribute is_test_domain
    #   <p>Specifies whether the domain is a test domain provided by WorkMail, or a custom domain.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute is_default
    #   <p>Specifies whether the domain is the default domain for your organization.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute ownership_verification_status
    #   <p> Indicates the status of the domain ownership verification.</p>
    #
    #   Enum, one of: ["PENDING", "VERIFIED", "FAILED"]
    #
    #   @return [String]
    #
    # @!attribute dkim_verification_status
    #   <p>Indicates the status of a DKIM verification.</p>
    #
    #   Enum, one of: ["PENDING", "VERIFIED", "FAILED"]
    #
    #   @return [String]
    #
    GetMailDomainOutput = ::Struct.new(
      :records,
      :is_test_domain,
      :is_default,
      :ownership_verification_status,
      :dkim_verification_status,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.is_test_domain ||= false
        self.is_default ||= false
      end
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization that contains the user whose mailbox details are
    #            being requested.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The identifier for the user whose mailbox details are being requested.</p>
    #
    #   @return [String]
    #
    GetMailboxDetailsInput = ::Struct.new(
      :organization_id,
      :user_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute mailbox_quota
    #   <p>The maximum allowed mailbox size, in MB, for the specified user.</p>
    #
    #   @return [Integer]
    #
    # @!attribute mailbox_size
    #   <p>The current mailbox size, in MB, for the specified user.</p>
    #
    #   @return [Float]
    #
    GetMailboxDetailsOutput = ::Struct.new(
      :mailbox_quota,
      :mailbox_size,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.mailbox_size ||= 0
      end
    end

    # @!attribute organization_id
    #   <p>The Amazon WorkMail organization to simulate the access effect for.</p>
    #
    #   @return [String]
    #
    # @!attribute device_type
    #   <p>Device type the simulated user will report.</p>
    #
    #   @return [String]
    #
    # @!attribute device_model
    #   <p>Device model the simulated user will report.</p>
    #
    #   @return [String]
    #
    # @!attribute device_operating_system
    #   <p>Device operating system the simulated user will report.</p>
    #
    #   @return [String]
    #
    # @!attribute device_user_agent
    #   <p>Device user agent the simulated user will report.</p>
    #
    #   @return [String]
    #
    GetMobileDeviceAccessEffectInput = ::Struct.new(
      :organization_id,
      :device_type,
      :device_model,
      :device_operating_system,
      :device_user_agent,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute effect
    #   <p>The effect of the simulated access, <code>ALLOW</code> or <code>DENY</code>, after evaluating mobile device access rules in the Amazon WorkMail organization for the simulated
    #            user parameters.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute matched_rules
    #   <p>A list of the rules which matched the simulated user input and produced the effect.</p>
    #
    #   @return [Array<MobileDeviceAccessMatchedRule>]
    #
    GetMobileDeviceAccessEffectOutput = ::Struct.new(
      :effect,
      :matched_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The Amazon WorkMail organization to which you want to apply the override.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
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
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The mobile device to which the override applies. <code>DeviceId</code> is case insensitive.</p>
    #
    #   @return [String]
    #
    GetMobileDeviceAccessOverrideInput = ::Struct.new(
      :organization_id,
      :user_id,
      :device_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute user_id
    #   <p>The WorkMail user to which the access override applies.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The device to which the access override applies.</p>
    #
    #   @return [String]
    #
    # @!attribute effect
    #   <p>The effect of the override, <code>ALLOW</code> or <code>DENY</code>.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the override.</p>
    #
    #   @return [String]
    #
    # @!attribute date_created
    #   <p>The date the override was first created.</p>
    #
    #   @return [Time]
    #
    # @!attribute date_modified
    #   <p>The date the description was last modified.</p>
    #
    #   @return [Time]
    #
    GetMobileDeviceAccessOverrideOutput = ::Struct.new(
      :user_id,
      :device_id,
      :effect,
      :description,
      :date_created,
      :date_modified,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The representation of an Amazon WorkMail group.</p>
    #
    # @!attribute id
    #   <p>The identifier of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the group.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the group, which can be ENABLED, DISABLED, or DELETED.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute enabled_date
    #   <p>The date indicating when the group was enabled for Amazon WorkMail use.</p>
    #
    #   @return [Time]
    #
    # @!attribute disabled_date
    #   <p>The date indicating when the group was disabled from Amazon WorkMail use.</p>
    #
    #   @return [Time]
    #
    Group = ::Struct.new(
      :id,
      :email,
      :name,
      :state,
      :enabled_date,
      :disabled_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The configuration for a resource isn't valid. A resource must either be able to
    #          auto-respond to requests or have at least one delegate associated that can do so on its
    #          behalf.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidConfigurationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You SES configuration has customizations that Amazon WorkMail cannot save. The error message lists the invalid setting. For examples of invalid settings, refer to
    #          <a href="https://docs.aws.amazon.com/ses/latest/APIReference/API_CreateReceiptRule.html">CreateReceiptRule</a>.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidCustomSesConfigurationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more of the input parameters don't match the service's restrictions.</p>
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

    # <p>The supplied password doesn't match the minimum security constraints, such as length
    #          or use of special characters.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidPasswordException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request exceeds the limit of the resource.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization.</p>
    #
    #   @return [String]
    #
    ListAccessControlRulesInput = ::Struct.new(
      :organization_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rules
    #   <p>The access control rules.</p>
    #
    #   @return [Array<AccessControlRule>]
    #
    ListAccessControlRulesOutput = ::Struct.new(
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the entity exists.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The identifier for the entity for which to list the aliases.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    ListAliasesInput = ::Struct.new(
      :organization_id,
      :entity_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute aliases
    #   <p>The entity's paginated aliases.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The value is "null" when there
    #            are no more results to return.</p>
    #
    #   @return [String]
    #
    ListAliasesOutput = ::Struct.new(
      :aliases,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the group exists.</p>
    #
    #   @return [String]
    #
    # @!attribute group_id
    #   <p>The identifier for the group to which the members (users or groups) are
    #            associated.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p> The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    ListGroupMembersInput = ::Struct.new(
      :organization_id,
      :group_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute members
    #   <p>The members associated to the group.</p>
    #
    #   @return [Array<Member>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #
    #   @return [String]
    #
    ListGroupMembersOutput = ::Struct.new(
      :members,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the groups exist.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    ListGroupsInput = ::Struct.new(
      :organization_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute groups
    #   <p>The overview of groups for an organization.</p>
    #
    #   @return [Array<Group>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The value is "null" when there
    #            are no more results to return.</p>
    #
    #   @return [String]
    #
    ListGroupsOutput = ::Struct.new(
      :groups,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The Amazon WorkMail organization for which to list domains.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not require a token.</p>
    #
    #   @return [String]
    #
    ListMailDomainsInput = ::Struct.new(
      :organization_id,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute mail_domains
    #   <p>The list of mail domain summaries, specifying domains that exist in the specified Amazon WorkMail  organization, along with the information about whether the domain is or isn't the default.</p>
    #
    #   @return [Array<MailDomainSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The value becomes <code>null</code> when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListMailDomainsOutput = ::Struct.new(
      :mail_domains,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The organization ID.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    ListMailboxExportJobsInput = ::Struct.new(
      :organization_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute jobs
    #   <p>The mailbox export job details.</p>
    #
    #   @return [Array<MailboxExportJob>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results.</p>
    #
    #   @return [String]
    #
    ListMailboxExportJobsOutput = ::Struct.new(
      :jobs,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier of the organization under which the user, group, or resource
    #            exists.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The identifier of the user, group, or resource for which to list mailbox
    #            permissions.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    ListMailboxPermissionsInput = ::Struct.new(
      :organization_id,
      :entity_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute permissions
    #   <p>One page of the user, group, or resource mailbox permissions.</p>
    #
    #   @return [Array<Permission>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The value is "null" when there
    #            are no more results to return.</p>
    #
    #   @return [String]
    #
    ListMailboxPermissionsOutput = ::Struct.new(
      :permissions,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The Amazon WorkMail organization under which to list mobile device access overrides.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
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
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The mobile device to which the access override applies.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not require a token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    ListMobileDeviceAccessOverridesInput = ::Struct.new(
      :organization_id,
      :user_id,
      :device_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute overrides
    #   <p>The list of mobile device access overrides that exist for the specified Amazon WorkMail organization and user.</p>
    #
    #   @return [Array<MobileDeviceAccessOverride>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The value is “null” when there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListMobileDeviceAccessOverridesOutput = ::Struct.new(
      :overrides,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The Amazon WorkMail organization for which to list the rules.</p>
    #
    #   @return [String]
    #
    ListMobileDeviceAccessRulesInput = ::Struct.new(
      :organization_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute rules
    #   <p>The list of mobile device access rules that exist under the specified Amazon WorkMail organization.</p>
    #
    #   @return [Array<MobileDeviceAccessRule>]
    #
    ListMobileDeviceAccessRulesOutput = ::Struct.new(
      :rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    ListOrganizationsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_summaries
    #   <p>The overview of owned organizations presented as a list of organization
    #            summaries.</p>
    #
    #   @return [Array<OrganizationSummary>]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The value is "null" when there
    #            are no more results to return.</p>
    #
    #   @return [String]
    #
    ListOrganizationsOutput = ::Struct.new(
      :organization_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization that contains the resource for which delegates
    #            are listed.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The identifier for the resource whose delegates are listed.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token used to paginate through the delegates associated with a
    #            resource.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The number of maximum results in a page.</p>
    #
    #   @return [Integer]
    #
    ListResourceDelegatesInput = ::Struct.new(
      :organization_id,
      :resource_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute delegates
    #   <p>One page of the resource's delegates.</p>
    #
    #   @return [Array<Delegate>]
    #
    # @!attribute next_token
    #   <p>The token used to paginate through the delegates associated with a resource. While
    #            results are still available, it has an associated value. When the last page is reached, the
    #            token is empty. </p>
    #
    #   @return [String]
    #
    ListResourceDelegatesOutput = ::Struct.new(
      :delegates,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the resources exist.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    ListResourcesInput = ::Struct.new(
      :organization_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resources
    #   <p>One page of the organization's resource representation.</p>
    #
    #   @return [Array<Resource>]
    #
    # @!attribute next_token
    #   <p> The token used to paginate through all the organization's resources. While results
    #            are still available, it has an associated value. When the last page is reached, the token
    #            is empty.</p>
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

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>A list of tag key-value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the users exist.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token to use to retrieve the next page of results. The first call does not
    #            contain any tokens.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return in a single call.</p>
    #
    #   @return [Integer]
    #
    ListUsersInput = ::Struct.new(
      :organization_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute users
    #   <p>The overview of users for an organization.</p>
    #
    #   @return [Array<User>]
    #
    # @!attribute next_token
    #   <p> The token to use to retrieve the next page of results. This value is `null` when
    #            there are no more results to return.</p>
    #
    #   @return [String]
    #
    ListUsersOutput = ::Struct.new(
      :users,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The domain you're trying to change is in use by another user or organization in your account. See the error message for details.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MailDomainInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The domain specified is not found in your organization.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MailDomainNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>After a domain has been added to the organization, it must be verified. The domain is
    #          not yet verified.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    MailDomainStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The data for a given domain.</p>
    #
    # @!attribute domain_name
    #   <p>The domain name.</p>
    #
    #   @return [String]
    #
    # @!attribute default_domain
    #   <p>Whether the domain is default or not.</p>
    #
    #   @return [Boolean]
    #
    MailDomainSummary = ::Struct.new(
      :domain_name,
      :default_domain,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.default_domain ||= false
      end
    end

    # <p>The details of a mailbox export job, including the user or resource ID associated
    #          with the mailbox and the S3 bucket that the mailbox contents are exported to.</p>
    #
    # @!attribute job_id
    #   <p>The identifier of the mailbox export job.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The identifier of the user or resource associated with the mailbox.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The mailbox export job description.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>The name of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_path
    #   <p>The path to the S3 bucket and file that the mailbox export job exports to.</p>
    #
    #   @return [String]
    #
    # @!attribute estimated_progress
    #   <p>The estimated progress of the mailbox export job, in percentage points.</p>
    #
    #   @return [Integer]
    #
    # @!attribute state
    #   <p>The state of the mailbox export job.</p>
    #
    #   Enum, one of: ["RUNNING", "COMPLETED", "FAILED", "CANCELLED"]
    #
    #   @return [String]
    #
    # @!attribute start_time
    #   <p>The mailbox export job start timestamp.</p>
    #
    #   @return [Time]
    #
    # @!attribute end_time
    #   <p>The mailbox export job end timestamp.</p>
    #
    #   @return [Time]
    #
    MailboxExportJob = ::Struct.new(
      :job_id,
      :entity_id,
      :description,
      :s3_bucket_name,
      :s3_path,
      :estimated_progress,
      :state,
      :start_time,
      :end_time,
      keyword_init: true
    ) do
      include Hearth::Structure

      def initialize(*)
        super
        self.estimated_progress ||= 0
      end
    end

    # Includes enum constants for MailboxExportJobState
    #
    module MailboxExportJobState
      # No documentation available.
      #
      RUNNING = "RUNNING"

      # No documentation available.
      #
      COMPLETED = "COMPLETED"

      # No documentation available.
      #
      FAILED = "FAILED"

      # No documentation available.
      #
      CANCELLED = "CANCELLED"
    end

    # <p>The representation of a user or group.</p>
    #
    # @!attribute id
    #   <p>The identifier of the member.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the member.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>A member can be a user or group.</p>
    #
    #   Enum, one of: ["GROUP", "USER"]
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the member, which can be ENABLED, DISABLED, or DELETED.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute enabled_date
    #   <p>The date indicating when the member was enabled for Amazon WorkMail use.</p>
    #
    #   @return [Time]
    #
    # @!attribute disabled_date
    #   <p>The date indicating when the member was disabled from Amazon WorkMail use.</p>
    #
    #   @return [Time]
    #
    Member = ::Struct.new(
      :id,
      :name,
      :type,
      :state,
      :enabled_date,
      :disabled_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MemberType
    #
    module MemberType
      # No documentation available.
      #
      GROUP = "GROUP"

      # No documentation available.
      #
      USER = "USER"
    end

    # <p>The rule that a simulated user matches.</p>
    #
    # @!attribute mobile_device_access_rule_id
    #   <p>Identifier of the rule that a simulated user matches.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>Name of a rule that a simulated user matches.</p>
    #
    #   @return [String]
    #
    MobileDeviceAccessMatchedRule = ::Struct.new(
      :mobile_device_access_rule_id,
      :name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The override object.</p>
    #
    # @!attribute user_id
    #   <p>The WorkMail user to which the access override applies.</p>
    #
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The device to which the override applies.</p>
    #
    #   @return [String]
    #
    # @!attribute effect
    #   <p>The effect of the override, <code>ALLOW</code> or <code>DENY</code>.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the override.</p>
    #
    #   @return [String]
    #
    # @!attribute date_created
    #   <p>The date the override was first created.</p>
    #
    #   @return [Time]
    #
    # @!attribute date_modified
    #   <p>The date the override was last modified.</p>
    #
    #   @return [Time]
    #
    MobileDeviceAccessOverride = ::Struct.new(
      :user_id,
      :device_id,
      :effect,
      :description,
      :date_created,
      :date_modified,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A rule that controls access to mobile devices for an Amazon WorkMail group.</p>
    #
    # @!attribute mobile_device_access_rule_id
    #   <p>The ID assigned to a mobile access rule. </p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of a mobile access rule.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of a mobile access rule.</p>
    #
    #   @return [String]
    #
    # @!attribute effect
    #   <p>The effect of the rule when it matches. Allowed values are <code>ALLOW</code> or <code>DENY</code>.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute device_types
    #   <p>Device types that a rule will match. </p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_device_types
    #   <p>Device types that a rule <b>will not</b> match. All other device types will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute device_models
    #   <p>Device models that a rule will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_device_models
    #   <p>Device models that a rule <b>will not</b> match. All other device models will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute device_operating_systems
    #   <p>Device operating systems that a rule will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_device_operating_systems
    #   <p>Device operating systems that a rule <b>will not</b> match. All other device types will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute device_user_agents
    #   <p>Device user agents that a rule will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_device_user_agents
    #   <p>Device user agents that a rule <b>will not</b> match. All other device user agents will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute date_created
    #   <p>The date and time at which an access rule was created.</p>
    #
    #   @return [Time]
    #
    # @!attribute date_modified
    #   <p>The date and time at which an access rule was modified.</p>
    #
    #   @return [Time]
    #
    MobileDeviceAccessRule = ::Struct.new(
      :mobile_device_access_rule_id,
      :name,
      :description,
      :effect,
      :device_types,
      :not_device_types,
      :device_models,
      :not_device_models,
      :device_operating_systems,
      :not_device_operating_systems,
      :device_user_agents,
      :not_device_user_agents,
      :date_created,
      :date_modified,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MobileDeviceAccessRuleEffect
    #
    module MobileDeviceAccessRuleEffect
      # No documentation available.
      #
      ALLOW = "ALLOW"

      # No documentation available.
      #
      DENY = "DENY"
    end

    # <p>The user, group, or resource name isn't unique in Amazon WorkMail.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    NameAvailabilityException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An operation received a valid organization identifier that either doesn't belong or
    #          exist in the system.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OrganizationNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The organization must have a valid state to perform certain
    #          operations on the organization or its members.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    OrganizationStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The representation of an organization.</p>
    #
    # @!attribute organization_id
    #   <p>The identifier associated with the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute alias
    #   <p>The alias associated with the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute default_mail_domain
    #   <p>The default email domain associated with the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>The error message associated with the organization. It is only present if unexpected
    #            behavior has occurred with regards to the organization. It provides insight or solutions
    #            regarding unexpected behavior.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state associated with the organization.</p>
    #
    #   @return [String]
    #
    OrganizationSummary = ::Struct.new(
      :organization_id,
      :alias,
      :default_mail_domain,
      :error_message,
      :state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Permission granted to a user, group, or resource to access a certain aspect of
    #          another user, group, or resource mailbox.</p>
    #
    # @!attribute grantee_id
    #   <p>The identifier of the user, group, or resource to which the permissions are
    #            granted.</p>
    #
    #   @return [String]
    #
    # @!attribute grantee_type
    #   <p>The type of user, group, or resource referred to in GranteeId.</p>
    #
    #   Enum, one of: ["GROUP", "USER"]
    #
    #   @return [String]
    #
    # @!attribute permission_values
    #   <p>The permissions granted to the grantee. SEND_AS allows the grantee to send email as
    #            the owner of the mailbox (the grantee is not mentioned on these emails). SEND_ON_BEHALF
    #            allows the grantee to send email on behalf of the owner of the mailbox (the grantee is not
    #            mentioned as the physical sender of these emails). FULL_ACCESS allows the grantee full
    #            access to the mailbox, irrespective of other folder-level permissions set on the
    #            mailbox.</p>
    #
    #   @return [Array<String>]
    #
    Permission = ::Struct.new(
      :grantee_id,
      :grantee_type,
      :permission_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PermissionType
    #
    module PermissionType
      # No documentation available.
      #
      FULL_ACCESS = "FULL_ACCESS"

      # No documentation available.
      #
      SEND_AS = "SEND_AS"

      # No documentation available.
      #
      SEND_ON_BEHALF = "SEND_ON_BEHALF"
    end

    # @!attribute name
    #   <p>The rule name.</p>
    #
    #   @return [String]
    #
    # @!attribute effect
    #   <p>The rule effect.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The rule description.</p>
    #
    #   @return [String]
    #
    # @!attribute ip_ranges
    #   <p>IPv4 CIDR ranges to include in the rule.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_ip_ranges
    #   <p>IPv4 CIDR ranges to exclude from the rule.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute actions
    #   <p>Access protocol actions to include in the rule. Valid values include
    #               <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>,
    #               <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_actions
    #   <p>Access protocol actions to exclude from the rule. Valid values include
    #               <code>ActiveSync</code>, <code>AutoDiscover</code>, <code>EWS</code>, <code>IMAP</code>,
    #               <code>SMTP</code>, <code>WindowsOutlook</code>, and <code>WebMail</code>.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute user_ids
    #   <p>User IDs to include in the rule.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_user_ids
    #   <p>User IDs to exclude from the rule.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute organization_id
    #   <p>The identifier of the organization.</p>
    #
    #   @return [String]
    #
    PutAccessControlRuleInput = ::Struct.new(
      :name,
      :effect,
      :description,
      :ip_ranges,
      :not_ip_ranges,
      :actions,
      :not_actions,
      :user_ids,
      :not_user_ids,
      :organization_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutAccessControlRuleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The ID of the organization for which the email monitoring configuration is set.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The Amazon Resource Name (ARN) of the IAM Role associated with the email monitoring configuration.</p>
    #
    #   @return [String]
    #
    # @!attribute log_group_arn
    #   <p>The Amazon Resource Name (ARN) of the CloudWatch Log group associated with the email monitoring configuration.</p>
    #
    #   @return [String]
    #
    PutEmailMonitoringConfigurationInput = ::Struct.new(
      :organization_id,
      :role_arn,
      :log_group_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutEmailMonitoringConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The ID of the organization that you are applying the DMARC policy to. </p>
    #
    #   @return [String]
    #
    # @!attribute enforced
    #   <p>Enforces or suspends a policy after it's applied.</p>
    #
    #   @return [Boolean]
    #
    PutInboundDmarcSettingsInput = ::Struct.new(
      :organization_id,
      :enforced,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutInboundDmarcSettingsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier of the organization under which the user, group, or resource
    #            exists.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The identifier of the user, group, or resource for which to update mailbox
    #            permissions.</p>
    #
    #   @return [String]
    #
    # @!attribute grantee_id
    #   <p>The identifier of the user, group, or resource to which to grant the
    #            permissions.</p>
    #
    #   @return [String]
    #
    # @!attribute permission_values
    #   <p>The permissions granted to the grantee. SEND_AS allows the grantee to send email as
    #            the owner of the mailbox (the grantee is not mentioned on these emails). SEND_ON_BEHALF
    #            allows the grantee to send email on behalf of the owner of the mailbox (the grantee is not
    #            mentioned as the physical sender of these emails). FULL_ACCESS allows the grantee full
    #            access to the mailbox, irrespective of other folder-level permissions set on the
    #            mailbox.</p>
    #
    #   @return [Array<String>]
    #
    PutMailboxPermissionsInput = ::Struct.new(
      :organization_id,
      :entity_id,
      :grantee_id,
      :permission_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutMailboxPermissionsOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>Identifies the Amazon WorkMail organization for which you create the override.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
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
    #   @return [String]
    #
    # @!attribute device_id
    #   <p>The mobile device for which you create the override. <code>DeviceId</code> is case insensitive.</p>
    #
    #   @return [String]
    #
    # @!attribute effect
    #   <p>The effect of the override, <code>ALLOW</code> or <code>DENY</code>.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the override.</p>
    #
    #   @return [String]
    #
    PutMobileDeviceAccessOverrideInput = ::Struct.new(
      :organization_id,
      :user_id,
      :device_id,
      :effect,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutMobileDeviceAccessOverrideOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The organization ID.</p>
    #
    #   @return [String]
    #
    # @!attribute id
    #   <p>The retention policy ID.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The retention policy name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The retention policy description.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_configurations
    #   <p>The retention policy folder configurations.</p>
    #
    #   @return [Array<FolderConfiguration>]
    #
    PutRetentionPolicyInput = ::Struct.new(
      :organization_id,
      :id,
      :name,
      :description,
      :folder_configurations,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkMail::Types::PutRetentionPolicyInput "\
          "organization_id=#{organization_id || 'nil'}, "\
          "id=#{id || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "description=\"[SENSITIVE]\", "\
          "folder_configurations=#{folder_configurations || 'nil'}>"
      end
    end

    PutRetentionPolicyOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>Idempotency token used when retrying requests.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_id
    #   <p>The Amazon WorkMail organization under which you're creating the domain.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The name of the mail domain to create in Amazon WorkMail and SES.</p>
    #
    #   @return [String]
    #
    RegisterMailDomainInput = ::Struct.new(
      :client_token,
      :organization_id,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RegisterMailDomainOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization under which the user, group, or resource
    #            exists.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The identifier for the user, group, or resource to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email for the user, group, or resource to be updated.</p>
    #
    #   @return [String]
    #
    RegisterToWorkMailInput = ::Struct.new(
      :organization_id,
      :entity_id,
      :email,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RegisterToWorkMailOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This user, group, or resource name is not allowed in Amazon WorkMail.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ReservedNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier of the organization that contains the user for which the password is
    #            reset.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The identifier of the user for whom the password is reset.</p>
    #
    #   @return [String]
    #
    # @!attribute password
    #   <p>The new password for the user.</p>
    #
    #   @return [String]
    #
    ResetPasswordInput = ::Struct.new(
      :organization_id,
      :user_id,
      :password,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::WorkMail::Types::ResetPasswordInput "\
          "organization_id=#{organization_id || 'nil'}, "\
          "user_id=#{user_id || 'nil'}, "\
          "password=\"[SENSITIVE]\">"
      end
    end

    ResetPasswordOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The representation of a resource.</p>
    #
    # @!attribute id
    #   <p>The identifier of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the resource: equipment or room.</p>
    #
    #   Enum, one of: ["ROOM", "EQUIPMENT"]
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the resource, which can be ENABLED, DISABLED, or DELETED.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute enabled_date
    #   <p>The date indicating when the resource was enabled for Amazon WorkMail use.</p>
    #
    #   @return [Time]
    #
    # @!attribute disabled_date
    #   <p>The date indicating when the resource was disabled from Amazon WorkMail use.</p>
    #
    #   @return [Time]
    #
    Resource = ::Struct.new(
      :id,
      :email,
      :name,
      :type,
      :state,
      :enabled_date,
      :disabled_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The resource cannot be found.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ResourceType
    #
    module ResourceType
      # No documentation available.
      #
      ROOM = "ROOM"

      # No documentation available.
      #
      EQUIPMENT = "EQUIPMENT"
    end

    # Includes enum constants for RetentionAction
    #
    module RetentionAction
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      DELETE = "DELETE"

      # No documentation available.
      #
      PERMANENTLY_DELETE = "PERMANENTLY_DELETE"
    end

    # @!attribute client_token
    #   <p>The idempotency token for the client request.</p>
    #
    #   @return [String]
    #
    # @!attribute organization_id
    #   <p>The identifier associated with the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The identifier of the user or resource associated with the mailbox.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The mailbox export job description.</p>
    #
    #   @return [String]
    #
    # @!attribute role_arn
    #   <p>The ARN of the AWS Identity and Access Management (IAM) role that grants write permission to the S3
    #            bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute kms_key_arn
    #   <p>The Amazon Resource Name (ARN) of the symmetric AWS Key Management Service (AWS KMS)
    #            key that encrypts the exported mailbox content.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_bucket_name
    #   <p>The name of the S3 bucket.</p>
    #
    #   @return [String]
    #
    # @!attribute s3_prefix
    #   <p>The S3 bucket prefix.</p>
    #
    #   @return [String]
    #
    StartMailboxExportJobInput = ::Struct.new(
      :client_token,
      :organization_id,
      :entity_id,
      :description,
      :role_arn,
      :kms_key_arn,
      :s3_bucket_name,
      :s3_prefix,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute job_id
    #   <p>The job ID.</p>
    #
    #   @return [String]
    #
    StartMailboxExportJobOutput = ::Struct.new(
      :job_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Describes a tag applied to a resource.</p>
    #
    # @!attribute key
    #   <p>The key of the tag.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The value of the tag.</p>
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

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tag key-value pairs.</p>
    #
    #   @return [Array<Tag>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
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

    # <p>The resource can have up to 50 user-applied tags.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyTagsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You can't perform a write operation against a read-only directory.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    UnsupportedOperationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
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

    # @!attribute organization_id
    #   <p>The Amazon WorkMail organization for which to list domains.</p>
    #
    #   @return [String]
    #
    # @!attribute domain_name
    #   <p>The domain name that will become the default domain.</p>
    #
    #   @return [String]
    #
    UpdateDefaultMailDomainInput = ::Struct.new(
      :organization_id,
      :domain_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDefaultMailDomainOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier for the organization that contains the user for whom to update the
    #            mailbox quota.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The identifer for the user for whom to update the mailbox quota.</p>
    #
    #   @return [String]
    #
    # @!attribute mailbox_quota
    #   <p>The updated mailbox quota, in MB, for the specified user.</p>
    #
    #   @return [Integer]
    #
    UpdateMailboxQuotaInput = ::Struct.new(
      :organization_id,
      :user_id,
      :mailbox_quota,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateMailboxQuotaOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The Amazon WorkMail organization under which the rule will be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute mobile_device_access_rule_id
    #   <p>The identifier of the rule to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The updated rule name.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated rule description.</p>
    #
    #   @return [String]
    #
    # @!attribute effect
    #   <p>The effect of the rule when it matches. Allowed values are <code>ALLOW</code> or <code>DENY</code>.</p>
    #
    #   Enum, one of: ["ALLOW", "DENY"]
    #
    #   @return [String]
    #
    # @!attribute device_types
    #   <p>Device types that the updated rule will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_device_types
    #   <p>Device types that the updated rule <b>will not</b> match. All other device types will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute device_models
    #   <p>Device models that the updated rule will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_device_models
    #   <p>Device models that the updated rule <b>will not</b> match. All other device models will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute device_operating_systems
    #   <p>Device operating systems that the updated rule will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_device_operating_systems
    #   <p>Device operating systems that the updated rule <b>will not</b> match. All other device operating systems will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute device_user_agents
    #   <p>User agents that the updated rule will match.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute not_device_user_agents
    #   <p>User agents that the updated rule <b>will not</b> match. All other user agents will match.</p>
    #
    #   @return [Array<String>]
    #
    UpdateMobileDeviceAccessRuleInput = ::Struct.new(
      :organization_id,
      :mobile_device_access_rule_id,
      :name,
      :description,
      :effect,
      :device_types,
      :not_device_types,
      :device_models,
      :not_device_models,
      :device_operating_systems,
      :not_device_operating_systems,
      :device_user_agents,
      :not_device_user_agents,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateMobileDeviceAccessRuleOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The organization that contains the user, group, or resource to update.</p>
    #
    #   @return [String]
    #
    # @!attribute entity_id
    #   <p>The user, group, or resource to update.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The value of the email to be updated as primary.</p>
    #
    #   @return [String]
    #
    UpdatePrimaryEmailAddressInput = ::Struct.new(
      :organization_id,
      :entity_id,
      :email,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdatePrimaryEmailAddressOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute organization_id
    #   <p>The identifier associated with the organization for which the resource is
    #            updated.</p>
    #
    #   @return [String]
    #
    # @!attribute resource_id
    #   <p>The identifier of the resource to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the resource to be updated.</p>
    #
    #   @return [String]
    #
    # @!attribute booking_options
    #   <p>The resource's booking options to be updated.</p>
    #
    #   @return [BookingOptions]
    #
    UpdateResourceInput = ::Struct.new(
      :organization_id,
      :resource_id,
      :name,
      :booking_options,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The representation of an Amazon WorkMail user.</p>
    #
    # @!attribute id
    #   <p>The identifier of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute display_name
    #   <p>The display name of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute state
    #   <p>The state of the user, which can be ENABLED, DISABLED, or DELETED.</p>
    #
    #   Enum, one of: ["ENABLED", "DISABLED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute user_role
    #   <p>The role of the user.</p>
    #
    #   Enum, one of: ["USER", "RESOURCE", "SYSTEM_USER"]
    #
    #   @return [String]
    #
    # @!attribute enabled_date
    #   <p>The date indicating when the user was enabled for Amazon WorkMail use.</p>
    #
    #   @return [Time]
    #
    # @!attribute disabled_date
    #   <p>The date indicating when the user was disabled from Amazon WorkMail use.</p>
    #
    #   @return [Time]
    #
    User = ::Struct.new(
      :id,
      :email,
      :name,
      :display_name,
      :state,
      :user_role,
      :enabled_date,
      :disabled_date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for UserRole
    #
    module UserRole
      # No documentation available.
      #
      USER = "USER"

      # No documentation available.
      #
      RESOURCE = "RESOURCE"

      # No documentation available.
      #
      SYSTEM_USER = "SYSTEM_USER"
    end

  end
end
