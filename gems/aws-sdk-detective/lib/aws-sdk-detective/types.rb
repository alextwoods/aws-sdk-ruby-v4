# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Detective
  module Types

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph that the member account is accepting the invitation
    #            for.</p>
    #            <p>The member account status in the behavior graph must be <code>INVITED</code>.</p>
    #
    #   @return [String]
    #
    AcceptInvitationInput = ::Struct.new(
      :graph_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AcceptInvitationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An Amazon Web Services account that is the administrator account of or a member of a
    #          behavior graph.</p>
    #
    # @!attribute account_id
    #   <p>The account identifier of the Amazon Web Services account.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The Amazon Web Services account root user email address for the Amazon Web Services
    #            account.</p>
    #
    #   @return [String]
    #
    Account = ::Struct.new(
      :account_id,
      :email_address,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the Detective administrator account for an
    #          organization.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account identifier of the Detective administrator
    #            account for the organization.</p>
    #
    #   @return [String]
    #
    # @!attribute graph_arn
    #   <p>The ARN of the organization behavior graph.</p>
    #
    #   @return [String]
    #
    # @!attribute delegation_time
    #   <p>The date and time when the Detective administrator account was enabled. The
    #            value is an ISO8601 formatted string. For example,
    #            <code>2021-08-18T16:35:56.284Z</code>.</p>
    #
    #   @return [Time]
    #
    Administrator = ::Struct.new(
      :account_id,
      :graph_arn,
      :delegation_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request attempted an invalid action.</p>
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

    # @!attribute tags
    #   <p>The tags to assign to the new behavior graph. You can add up to 50 tags. For each tag,
    #            you provide the tag key and the tag value. Each tag key can contain up to 128 characters.
    #            Each tag value can contain up to 256 characters.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateGraphInput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the new behavior graph.</p>
    #
    #   @return [String]
    #
    CreateGraphOutput = ::Struct.new(
      :graph_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>Customized message text to include in the invitation email message to the invited member
    #            accounts.</p>
    #
    #   @return [String]
    #
    # @!attribute disable_email_notification
    #   <p>if set to <code>true</code>, then the invited accounts do not receive email
    #            notifications. By default, this is set to <code>false</code>, and the invited accounts
    #            receive email notifications.</p>
    #            <p>Organization accounts in the organization behavior graph do not receive email
    #            notifications.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute accounts
    #   <p>The list of Amazon Web Services accounts to invite or to enable. You can invite or enable
    #            up to 50 accounts at a time. For each invited account, the account list contains the
    #            account identifier and the Amazon Web Services account root user email address. For
    #            organization accounts in the organization behavior graph, the email address is not
    #            required.</p>
    #
    #   @return [Array<Account>]
    #
    CreateMembersInput = ::Struct.new(
      :graph_arn,
      :message,
      :disable_email_notification,
      :accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.disable_email_notification ||= false
      end

    end

    # @!attribute members
    #   <p>The set of member account invitation or enablement requests that Detective was
    #            able to process. This includes accounts that are being verified, that failed verification,
    #            and that passed verification and are being sent an invitation or are being enabled.</p>
    #
    #   @return [Array<MemberDetail>]
    #
    # @!attribute unprocessed_accounts
    #   <p>The list of accounts for which Detective was unable to process the invitation
    #            or enablement request. For each account, the list provides the reason why the request could
    #            not be processed. The list includes accounts that are already member accounts in the
    #            behavior graph.</p>
    #
    #   @return [Array<UnprocessedAccount>]
    #
    CreateMembersOutput = ::Struct.new(
      :members,
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph to disable.</p>
    #
    #   @return [String]
    #
    DeleteGraphInput = ::Struct.new(
      :graph_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteGraphOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph to remove members from.</p>
    #
    #   @return [String]
    #
    # @!attribute account_ids
    #   <p>The list of Amazon Web Services account identifiers for the member accounts to remove
    #            from the behavior graph. You can remove up to 50 member accounts at a time.</p>
    #
    #   @return [Array<String>]
    #
    DeleteMembersInput = ::Struct.new(
      :graph_arn,
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_ids
    #   <p>The list of Amazon Web Services account identifiers for the member accounts that Detective successfully removed from the behavior graph.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute unprocessed_accounts
    #   <p>The list of member accounts that Detective was not able to remove from the
    #            behavior graph. For each member account, provides the reason that the deletion could not be
    #            processed.</p>
    #
    #   @return [Array<UnprocessedAccount>]
    #
    DeleteMembersOutput = ::Struct.new(
      :account_ids,
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the organization behavior graph.</p>
    #
    #   @return [String]
    #
    DescribeOrganizationConfigurationInput = ::Struct.new(
      :graph_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute auto_enable
    #   <p>Indicates whether to automatically enable new organization accounts as member accounts
    #            in the organization behavior graph.</p>
    #
    #   @return [Boolean]
    #
    DescribeOrganizationConfigurationOutput = ::Struct.new(
      :auto_enable,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.auto_enable ||= false
      end

    end

    DisableOrganizationAdminAccountInput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisableOrganizationAdminAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph to remove the member account from.</p>
    #            <p>The member account's member status in the behavior graph must be
    #            <code>ENABLED</code>.</p>
    #
    #   @return [String]
    #
    DisassociateMembershipInput = ::Struct.new(
      :graph_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateMembershipOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute account_id
    #   <p>The Amazon Web Services account identifier of the account to designate as the Detective administrator account for the organization.</p>
    #
    #   @return [String]
    #
    EnableOrganizationAdminAccountInput = ::Struct.new(
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    EnableOrganizationAdminAccountOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph for which to request the member details.</p>
    #
    #   @return [String]
    #
    # @!attribute account_ids
    #   <p>The list of Amazon Web Services account identifiers for the member account for which to
    #            return member details. You can request details for up to 50 member accounts at a
    #            time.</p>
    #            <p>You cannot use <code>GetMembers</code> to retrieve information about member accounts
    #            that were removed from the behavior graph.</p>
    #
    #   @return [Array<String>]
    #
    GetMembersInput = ::Struct.new(
      :graph_arn,
      :account_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute member_details
    #   <p>The member account details that Detective is returning in response to the
    #            request.</p>
    #
    #   @return [Array<MemberDetail>]
    #
    # @!attribute unprocessed_accounts
    #   <p>The requested member accounts for which Detective was unable to return member
    #            details.</p>
    #            <p>For each account, provides the reason why the request could not be processed.</p>
    #
    #   @return [Array<UnprocessedAccount>]
    #
    GetMembersOutput = ::Struct.new(
      :member_details,
      :unprocessed_accounts,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A behavior graph in Detective.</p>
    #
    # @!attribute arn
    #   <p>The ARN of the behavior graph.</p>
    #
    #   @return [String]
    #
    # @!attribute created_time
    #   <p>The date and time that the behavior graph was created. The value is an ISO8601 formatted
    #            string. For example, <code>2021-08-18T16:35:56.284Z</code>.</p>
    #
    #   @return [Time]
    #
    Graph = ::Struct.new(
      :arn,
      :created_time,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request was valid but failed because of a problem with the service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InternalServerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for InvitationType
    #
    module InvitationType
      # No documentation available.
      #
      INVITATION = "INVITATION"

      # No documentation available.
      #
      ORGANIZATION = "ORGANIZATION"
    end

    # @!attribute next_token
    #   <p>For requests to get the next page of results, the pagination token that was returned
    #            with the previous set of results. The initial request does not include a pagination
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of graphs to return at a time. The total must be less than the
    #            overall limit on the number of results to return, which is currently 200.</p>
    #
    #   @return [Integer]
    #
    ListGraphsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute graph_list
    #   <p>A list of behavior graphs that the account is an administrator account for.</p>
    #
    #   @return [Array<Graph>]
    #
    # @!attribute next_token
    #   <p>If there are more behavior graphs remaining in the results, then this is the pagination
    #            token to use to request the next page of behavior graphs.</p>
    #
    #   @return [String]
    #
    ListGraphsOutput = ::Struct.new(
      :graph_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>For requests to retrieve the next page of results, the pagination token that was
    #            returned with the previous page of results. The initial request does not include a
    #            pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of behavior graph invitations to return in the response. The total
    #            must be less than the overall limit on the number of results to return, which is currently
    #            200.</p>
    #
    #   @return [Integer]
    #
    ListInvitationsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute invitations
    #   <p>The list of behavior graphs for which the member account has open or accepted
    #            invitations.</p>
    #
    #   @return [Array<MemberDetail>]
    #
    # @!attribute next_token
    #   <p>If there are more behavior graphs remaining in the results, then this is the pagination
    #            token to use to request the next page of behavior graphs.</p>
    #
    #   @return [String]
    #
    ListInvitationsOutput = ::Struct.new(
      :invitations,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph for which to retrieve the list of member accounts.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>For requests to retrieve the next page of member account results, the pagination token
    #            that was returned with the previous page of results. The initial request does not include a
    #            pagination token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of member accounts to include in the response. The total must be less
    #            than the overall limit on the number of results to return, which is currently 200.</p>
    #
    #   @return [Integer]
    #
    ListMembersInput = ::Struct.new(
      :graph_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute member_details
    #   <p>The list of member accounts in the behavior graph.</p>
    #            <p>For invited accounts, the results include member accounts that did not pass verification
    #            and member accounts that have not yet accepted the invitation to the behavior graph. The
    #            results do not include member accounts that were removed from the behavior graph.</p>
    #            <p>For the organization behavior graph, the results do not include organization accounts
    #            that the Detective administrator account has not enabled as member
    #            accounts.</p>
    #
    #   @return [Array<MemberDetail>]
    #
    # @!attribute next_token
    #   <p>If there are more member accounts remaining in the results, then use this pagination
    #            token to request the next page of member accounts.</p>
    #
    #   @return [String]
    #
    ListMembersOutput = ::Struct.new(
      :member_details,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>For requests to get the next page of results, the pagination token that was returned
    #            with the previous set of results. The initial request does not include a pagination
    #            token.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return.</p>
    #
    #   @return [Integer]
    #
    ListOrganizationAdminAccountsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute administrators
    #   <p>The list of delegated administrator accounts.</p>
    #
    #   @return [Array<Administrator>]
    #
    # @!attribute next_token
    #   <p>If there are more accounts remaining in the results, then this is the pagination token
    #            to use to request the next page of accounts.</p>
    #
    #   @return [String]
    #
    ListOrganizationAdminAccountsOutput = ::Struct.new(
      :administrators,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the behavior graph for which to retrieve the tag values.</p>
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
    #   <p>The tag values that are assigned to the behavior graph. The request returns up to 50 tag
    #            values.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Details about a member account in a behavior graph.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account identifier for the member account.</p>
    #
    #   @return [String]
    #
    # @!attribute email_address
    #   <p>The Amazon Web Services account root user email address for the member account.</p>
    #
    #   @return [String]
    #
    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph.</p>
    #
    #   @return [String]
    #
    # @!attribute master_id
    #   <p>The Amazon Web Services account identifier of the administrator account for the behavior
    #            graph.</p>
    #
    #   @deprecated
    #     This property is deprecated. Use AdministratorId instead.
    #
    #   @return [String]
    #
    # @!attribute administrator_id
    #   <p>The Amazon Web Services account identifier of the administrator account for the behavior
    #            graph.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The current membership status of the member account. The status can have one of the
    #            following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>INVITED</code> - For invited accounts only. Indicates that the member was
    #                  sent an invitation but has not yet responded.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VERIFICATION_IN_PROGRESS</code> - For invited accounts only, indicates that
    #                     Detective is verifying that the account identifier and email address
    #                  provided for the member account match. If they do match, then Detective
    #                  sends the invitation. If the email address and account identifier don't match, then
    #                  the member cannot be added to the behavior graph.</p>
    #                  <p>For organization accounts in the organization behavior graph, indicates that
    #                     Detective is verifying that the account belongs to the
    #                  organization.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VERIFICATION_FAILED</code> - For invited accounts only. Indicates that the
    #                  account and email address provided for the member account do not match, and Detective did not send an invitation to the account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ENABLED</code> - Indicates that the member account currently contributes
    #                  data to the behavior graph. For invited accounts, the member account accepted the
    #                  invitation. For organization accounts in the organization behavior graph, the Detective administrator account enabled the organization account as a member
    #                  account.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ACCEPTED_BUT_DISABLED</code> - The account accepted the invitation, or was
    #                  enabled by the Detective administrator account, but is prevented from
    #                  contributing data to the behavior graph. <code>DisabledReason</code> provides the
    #                  reason why the member account is not enabled.</p>
    #               </li>
    #            </ul>
    #            <p>Invited accounts that declined an invitation or that were removed from the behavior
    #            graph are not included. In the organization behavior graph, organization accounts that the
    #               Detective administrator account did not enable are not included.</p>
    #
    #   Enum, one of: ["INVITED", "VERIFICATION_IN_PROGRESS", "VERIFICATION_FAILED", "ENABLED", "ACCEPTED_BUT_DISABLED"]
    #
    #   @return [String]
    #
    # @!attribute disabled_reason
    #   <p>For member accounts with a status of <code>ACCEPTED_BUT_DISABLED</code>, the reason that
    #            the member account is not enabled.</p>
    #            <p>The reason can have one of the following values:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>VOLUME_TOO_HIGH</code> - Indicates that adding the member account would
    #                  cause the data volume for the behavior graph to be too high.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>VOLUME_UNKNOWN</code> - Indicates that Detective is unable to
    #                  verify the data volume for the member account. This is usually because the member
    #                  account is not enrolled in Amazon GuardDuty. </p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["VOLUME_TOO_HIGH", "VOLUME_UNKNOWN"]
    #
    #   @return [String]
    #
    # @!attribute invited_time
    #   <p>For invited accounts, the date and time that Detective sent the invitation to
    #            the account. The value is an ISO8601 formatted string. For example,
    #               <code>2021-08-18T16:35:56.284Z</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute updated_time
    #   <p>The date and time that the member account was last updated. The value is an ISO8601
    #            formatted string. For example, <code>2021-08-18T16:35:56.284Z</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute volume_usage_in_bytes
    #   <p>The data volume in bytes per day for the member account.</p>
    #
    #   @return [Integer]
    #
    # @!attribute volume_usage_updated_time
    #   <p>The data and time when the member account data volume was last updated. The value is an
    #            ISO8601 formatted string. For example, <code>2021-08-18T16:35:56.284Z</code>.</p>
    #
    #   @return [Time]
    #
    # @!attribute percent_of_graph_utilization
    #   <p>The member account data volume as a percentage of the maximum allowed data volume. 0
    #            indicates 0 percent, and 100 indicates 100 percent.</p>
    #            <p>Note that this is not the percentage of the behavior graph data volume.</p>
    #            <p>For example, the data volume for the behavior graph is 80 GB per day. The maximum data
    #            volume is 160 GB per day. If the data volume for the member account is 40 GB per day, then
    #               <code>PercentOfGraphUtilization</code> is 25. It represents 25% of the maximum allowed
    #            data volume. </p>
    #
    #   @deprecated
    #     This property is deprecated. Use VolumeUsageInBytes instead.
    #
    #   @return [Float]
    #
    # @!attribute percent_of_graph_utilization_updated_time
    #   <p>The date and time when the graph utilization percentage was last updated. The value is
    #            an ISO8601 formatted string. For example, <code>2021-08-18T16:35:56.284Z</code>.</p>
    #
    #   @deprecated
    #     This property is deprecated. Use VolumeUsageUpdatedTime instead.
    #
    #   @return [Time]
    #
    # @!attribute invitation_type
    #   <p>The type of behavior graph membership.</p>
    #            <p>For an organization account in the organization behavior graph, the type is
    #               <code>ORGANIZATION</code>.</p>
    #            <p>For an account that was invited to a behavior graph, the type is
    #            <code>INVITATION</code>. </p>
    #
    #   Enum, one of: ["INVITATION", "ORGANIZATION"]
    #
    #   @return [String]
    #
    MemberDetail = ::Struct.new(
      :account_id,
      :email_address,
      :graph_arn,
      :master_id,
      :administrator_id,
      :status,
      :disabled_reason,
      :invited_time,
      :updated_time,
      :volume_usage_in_bytes,
      :volume_usage_updated_time,
      :percent_of_graph_utilization,
      :percent_of_graph_utilization_updated_time,
      :invitation_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MemberDisabledReason
    #
    module MemberDisabledReason
      # No documentation available.
      #
      VOLUME_TOO_HIGH = "VOLUME_TOO_HIGH"

      # No documentation available.
      #
      VOLUME_UNKNOWN = "VOLUME_UNKNOWN"
    end

    # Includes enum constants for MemberStatus
    #
    module MemberStatus
      # No documentation available.
      #
      INVITED = "INVITED"

      # No documentation available.
      #
      VERIFICATION_IN_PROGRESS = "VERIFICATION_IN_PROGRESS"

      # No documentation available.
      #
      VERIFICATION_FAILED = "VERIFICATION_FAILED"

      # No documentation available.
      #
      ENABLED = "ENABLED"

      # No documentation available.
      #
      ACCEPTED_BUT_DISABLED = "ACCEPTED_BUT_DISABLED"
    end

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph to reject the invitation to.</p>
    #            <p>The member account's current member status in the behavior graph must be
    #               <code>INVITED</code>.</p>
    #
    #   @return [String]
    #
    RejectInvitationInput = ::Struct.new(
      :graph_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RejectInvitationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request refers to a nonexistent resource.</p>
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

    # <p>This request cannot be completed for one of the following reasons.</p>
    #          <ul>
    #             <li>
    #                <p>The request would cause the number of member accounts in the behavior graph to
    #                exceed the maximum allowed. A behavior graph cannot have more than 1200 member
    #                accounts.</p>
    #             </li>
    #             <li>
    #                <p>The request would cause the data rate for the behavior graph to exceed the maximum
    #                allowed.</p>
    #             </li>
    #             <li>
    #                <p>Detective is unable to verify the data rate for the member account. This
    #                is usually because the member account is not enrolled in Amazon GuardDuty.</p>
    #             </li>
    #          </ul>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute graph_arn
    #   <p>The ARN of the behavior graph.</p>
    #
    #   @return [String]
    #
    # @!attribute account_id
    #   <p>The account ID of the member account to try to enable.</p>
    #            <p>The account must be an invited member account with a status of
    #               <code>ACCEPTED_BUT_DISABLED</code>. </p>
    #
    #   @return [String]
    #
    StartMonitoringMemberInput = ::Struct.new(
      :graph_arn,
      :account_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    StartMonitoringMemberOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the behavior graph to assign the tags to.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags to assign to the behavior graph. You can add up to 50 tags. For each tag, you
    #            provide the tag key and the tag value. Each tag key can contain up to 128 characters. Each
    #            tag value can contain up to 256 characters.</p>
    #
    #   @return [Hash<String, String>]
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

    # <p>The request cannot be completed because too many other requests are occurring at the
    #          same time.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    TooManyRequestsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A member account that was included in a request but for which the request could not be
    #          processed.</p>
    #
    # @!attribute account_id
    #   <p>The Amazon Web Services account identifier of the member account that was not
    #            processed.</p>
    #
    #   @return [String]
    #
    # @!attribute reason
    #   <p>The reason that the member account request could not be processed.</p>
    #
    #   @return [String]
    #
    UnprocessedAccount = ::Struct.new(
      :account_id,
      :reason,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The ARN of the behavior graph to remove the tags from.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys of the tags to remove from the behavior graph. You can remove up to 50 tags
    #            at a time.</p>
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

    # @!attribute graph_arn
    #   <p>The ARN of the organization behavior graph.</p>
    #
    #   @return [String]
    #
    # @!attribute auto_enable
    #   <p>Indicates whether to automatically enable new organization accounts as member accounts
    #            in the organization behavior graph.</p>
    #
    #   @return [Boolean]
    #
    UpdateOrganizationConfigurationInput = ::Struct.new(
      :graph_arn,
      :auto_enable,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.auto_enable ||= false
      end

    end

    UpdateOrganizationConfigurationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The request parameters are invalid.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
