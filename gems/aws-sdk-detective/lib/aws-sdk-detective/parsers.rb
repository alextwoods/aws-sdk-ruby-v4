# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Detective
  module Parsers

    # Operation Parser for AcceptInvitation
    class AcceptInvitation
      def self.parse(http_resp)
        data = Types::AcceptInvitationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateGraph
    class CreateGraph
      def self.parse(http_resp)
        data = Types::CreateGraphOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.graph_arn = map['GraphArn']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateMembers
    class CreateMembers
      def self.parse(http_resp)
        data = Types::CreateMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.members = (Parsers::MemberDetailList.parse(map['Members']) unless map['Members'].nil?)
        data.unprocessed_accounts = (Parsers::UnprocessedAccountList.parse(map['UnprocessedAccounts']) unless map['UnprocessedAccounts'].nil?)
        data
      end
    end

    class UnprocessedAccountList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::UnprocessedAccount.parse(value) unless value.nil?
        end
        data
      end
    end

    class UnprocessedAccount
      def self.parse(map)
        data = Types::UnprocessedAccount.new
        data.account_id = map['AccountId']
        data.reason = map['Reason']
        return data
      end
    end

    class MemberDetailList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::MemberDetail.parse(value) unless value.nil?
        end
        data
      end
    end

    class MemberDetail
      def self.parse(map)
        data = Types::MemberDetail.new
        data.account_id = map['AccountId']
        data.email_address = map['EmailAddress']
        data.graph_arn = map['GraphArn']
        data.master_id = map['MasterId']
        data.administrator_id = map['AdministratorId']
        data.status = map['Status']
        data.disabled_reason = map['DisabledReason']
        data.invited_time = Time.parse(map['InvitedTime']) if map['InvitedTime']
        data.updated_time = Time.parse(map['UpdatedTime']) if map['UpdatedTime']
        data.volume_usage_in_bytes = map['VolumeUsageInBytes']
        data.volume_usage_updated_time = Time.parse(map['VolumeUsageUpdatedTime']) if map['VolumeUsageUpdatedTime']
        data.percent_of_graph_utilization = Hearth::NumberHelper.deserialize(map['PercentOfGraphUtilization'])
        data.percent_of_graph_utilization_updated_time = Time.parse(map['PercentOfGraphUtilizationUpdatedTime']) if map['PercentOfGraphUtilizationUpdatedTime']
        data.invitation_type = map['InvitationType']
        return data
      end
    end

    # Operation Parser for DeleteGraph
    class DeleteGraph
      def self.parse(http_resp)
        data = Types::DeleteGraphOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteMembers
    class DeleteMembers
      def self.parse(http_resp)
        data = Types::DeleteMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.account_ids = (Parsers::AccountIdList.parse(map['AccountIds']) unless map['AccountIds'].nil?)
        data.unprocessed_accounts = (Parsers::UnprocessedAccountList.parse(map['UnprocessedAccounts']) unless map['UnprocessedAccounts'].nil?)
        data
      end
    end

    class AccountIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeOrganizationConfiguration
    class DescribeOrganizationConfiguration
      def self.parse(http_resp)
        data = Types::DescribeOrganizationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.auto_enable = map['AutoEnable']
        data
      end
    end

    # Error Parser for TooManyRequestsException
    class TooManyRequestsException
      def self.parse(http_resp)
        data = Types::TooManyRequestsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DisableOrganizationAdminAccount
    class DisableOrganizationAdminAccount
      def self.parse(http_resp)
        data = Types::DisableOrganizationAdminAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateMembership
    class DisassociateMembership
      def self.parse(http_resp)
        data = Types::DisassociateMembershipOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for EnableOrganizationAdminAccount
    class EnableOrganizationAdminAccount
      def self.parse(http_resp)
        data = Types::EnableOrganizationAdminAccountOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetMembers
    class GetMembers
      def self.parse(http_resp)
        data = Types::GetMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.member_details = (Parsers::MemberDetailList.parse(map['MemberDetails']) unless map['MemberDetails'].nil?)
        data.unprocessed_accounts = (Parsers::UnprocessedAccountList.parse(map['UnprocessedAccounts']) unless map['UnprocessedAccounts'].nil?)
        data
      end
    end

    # Operation Parser for ListGraphs
    class ListGraphs
      def self.parse(http_resp)
        data = Types::ListGraphsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.graph_list = (Parsers::GraphList.parse(map['GraphList']) unless map['GraphList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GraphList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Graph.parse(value) unless value.nil?
        end
        data
      end
    end

    class Graph
      def self.parse(map)
        data = Types::Graph.new
        data.arn = map['Arn']
        data.created_time = Time.parse(map['CreatedTime']) if map['CreatedTime']
        return data
      end
    end

    # Operation Parser for ListInvitations
    class ListInvitations
      def self.parse(http_resp)
        data = Types::ListInvitationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.invitations = (Parsers::MemberDetailList.parse(map['Invitations']) unless map['Invitations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListMembers
    class ListMembers
      def self.parse(http_resp)
        data = Types::ListMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.member_details = (Parsers::MemberDetailList.parse(map['MemberDetails']) unless map['MemberDetails'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListOrganizationAdminAccounts
    class ListOrganizationAdminAccounts
      def self.parse(http_resp)
        data = Types::ListOrganizationAdminAccountsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.administrators = (Parsers::AdministratorList.parse(map['Administrators']) unless map['Administrators'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AdministratorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Administrator.parse(value) unless value.nil?
        end
        data
      end
    end

    class Administrator
      def self.parse(map)
        data = Types::Administrator.new
        data.account_id = map['AccountId']
        data.graph_arn = map['GraphArn']
        data.delegation_time = Time.parse(map['DelegationTime']) if map['DelegationTime']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for RejectInvitation
    class RejectInvitation
      def self.parse(http_resp)
        data = Types::RejectInvitationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for StartMonitoringMember
    class StartMonitoringMember
      def self.parse(http_resp)
        data = Types::StartMonitoringMemberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateOrganizationConfiguration
    class UpdateOrganizationConfiguration
      def self.parse(http_resp)
        data = Types::UpdateOrganizationConfigurationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
