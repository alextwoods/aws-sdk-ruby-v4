# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Detective
  module Stubs

    # Operation Stubber for AcceptInvitation
    class AcceptInvitation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateGraph
    class CreateGraph
      def self.default(visited=[])
        {
          graph_arn: 'graph_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GraphArn'] = stub[:graph_arn] unless stub[:graph_arn].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateMembers
    class CreateMembers
      def self.default(visited=[])
        {
          members: MemberDetailList.default(visited),
          unprocessed_accounts: UnprocessedAccountList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Members'] = Stubs::MemberDetailList.stub(stub[:members]) unless stub[:members].nil?
        data['UnprocessedAccounts'] = Stubs::UnprocessedAccountList.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for UnprocessedAccountList
    class UnprocessedAccountList
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedAccountList')
        visited = visited + ['UnprocessedAccountList']
        [
          UnprocessedAccount.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UnprocessedAccount.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UnprocessedAccount
    class UnprocessedAccount
      def self.default(visited=[])
        return nil if visited.include?('UnprocessedAccount')
        visited = visited + ['UnprocessedAccount']
        {
          account_id: 'account_id',
          reason: 'reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::UnprocessedAccount.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['Reason'] = stub[:reason] unless stub[:reason].nil?
        data
      end
    end

    # List Stubber for MemberDetailList
    class MemberDetailList
      def self.default(visited=[])
        return nil if visited.include?('MemberDetailList')
        visited = visited + ['MemberDetailList']
        [
          MemberDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MemberDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MemberDetail
    class MemberDetail
      def self.default(visited=[])
        return nil if visited.include?('MemberDetail')
        visited = visited + ['MemberDetail']
        {
          account_id: 'account_id',
          email_address: 'email_address',
          graph_arn: 'graph_arn',
          master_id: 'master_id',
          administrator_id: 'administrator_id',
          status: 'status',
          disabled_reason: 'disabled_reason',
          invited_time: Time.now,
          updated_time: Time.now,
          volume_usage_in_bytes: 1,
          volume_usage_updated_time: Time.now,
          percent_of_graph_utilization: 1.0,
          percent_of_graph_utilization_updated_time: Time.now,
          invitation_type: 'invitation_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::MemberDetail.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['EmailAddress'] = stub[:email_address] unless stub[:email_address].nil?
        data['GraphArn'] = stub[:graph_arn] unless stub[:graph_arn].nil?
        data['MasterId'] = stub[:master_id] unless stub[:master_id].nil?
        data['AdministratorId'] = stub[:administrator_id] unless stub[:administrator_id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['DisabledReason'] = stub[:disabled_reason] unless stub[:disabled_reason].nil?
        data['InvitedTime'] = Hearth::TimeHelper.to_date_time(stub[:invited_time]) unless stub[:invited_time].nil?
        data['UpdatedTime'] = Hearth::TimeHelper.to_date_time(stub[:updated_time]) unless stub[:updated_time].nil?
        data['VolumeUsageInBytes'] = stub[:volume_usage_in_bytes] unless stub[:volume_usage_in_bytes].nil?
        data['VolumeUsageUpdatedTime'] = Hearth::TimeHelper.to_date_time(stub[:volume_usage_updated_time]) unless stub[:volume_usage_updated_time].nil?
        data['PercentOfGraphUtilization'] = Hearth::NumberHelper.serialize(stub[:percent_of_graph_utilization])
        data['PercentOfGraphUtilizationUpdatedTime'] = Hearth::TimeHelper.to_date_time(stub[:percent_of_graph_utilization_updated_time]) unless stub[:percent_of_graph_utilization_updated_time].nil?
        data['InvitationType'] = stub[:invitation_type] unless stub[:invitation_type].nil?
        data
      end
    end

    # Operation Stubber for DeleteGraph
    class DeleteGraph
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteMembers
    class DeleteMembers
      def self.default(visited=[])
        {
          account_ids: AccountIdList.default(visited),
          unprocessed_accounts: UnprocessedAccountList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AccountIds'] = Stubs::AccountIdList.stub(stub[:account_ids]) unless stub[:account_ids].nil?
        data['UnprocessedAccounts'] = Stubs::UnprocessedAccountList.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AccountIdList
    class AccountIdList
      def self.default(visited=[])
        return nil if visited.include?('AccountIdList')
        visited = visited + ['AccountIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeOrganizationConfiguration
    class DescribeOrganizationConfiguration
      def self.default(visited=[])
        {
          auto_enable: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AutoEnable'] = stub[:auto_enable] unless stub[:auto_enable].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisableOrganizationAdminAccount
    class DisableOrganizationAdminAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateMembership
    class DisassociateMembership
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for EnableOrganizationAdminAccount
    class EnableOrganizationAdminAccount
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetMembers
    class GetMembers
      def self.default(visited=[])
        {
          member_details: MemberDetailList.default(visited),
          unprocessed_accounts: UnprocessedAccountList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['MemberDetails'] = Stubs::MemberDetailList.stub(stub[:member_details]) unless stub[:member_details].nil?
        data['UnprocessedAccounts'] = Stubs::UnprocessedAccountList.stub(stub[:unprocessed_accounts]) unless stub[:unprocessed_accounts].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListGraphs
    class ListGraphs
      def self.default(visited=[])
        {
          graph_list: GraphList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['GraphList'] = Stubs::GraphList.stub(stub[:graph_list]) unless stub[:graph_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for GraphList
    class GraphList
      def self.default(visited=[])
        return nil if visited.include?('GraphList')
        visited = visited + ['GraphList']
        [
          Graph.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Graph.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Graph
    class Graph
      def self.default(visited=[])
        return nil if visited.include?('Graph')
        visited = visited + ['Graph']
        {
          arn: 'arn',
          created_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Graph.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_date_time(stub[:created_time]) unless stub[:created_time].nil?
        data
      end
    end

    # Operation Stubber for ListInvitations
    class ListInvitations
      def self.default(visited=[])
        {
          invitations: MemberDetailList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Invitations'] = Stubs::MemberDetailList.stub(stub[:invitations]) unless stub[:invitations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListMembers
    class ListMembers
      def self.default(visited=[])
        {
          member_details: MemberDetailList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['MemberDetails'] = Stubs::MemberDetailList.stub(stub[:member_details]) unless stub[:member_details].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListOrganizationAdminAccounts
    class ListOrganizationAdminAccounts
      def self.default(visited=[])
        {
          administrators: AdministratorList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Administrators'] = Stubs::AdministratorList.stub(stub[:administrators]) unless stub[:administrators].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AdministratorList
    class AdministratorList
      def self.default(visited=[])
        return nil if visited.include?('AdministratorList')
        visited = visited + ['AdministratorList']
        [
          Administrator.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Administrator.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Administrator
    class Administrator
      def self.default(visited=[])
        return nil if visited.include?('Administrator')
        visited = visited + ['Administrator']
        {
          account_id: 'account_id',
          graph_arn: 'graph_arn',
          delegation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Administrator.new
        data = {}
        data['AccountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['GraphArn'] = stub[:graph_arn] unless stub[:graph_arn].nil?
        data['DelegationTime'] = Hearth::TimeHelper.to_date_time(stub[:delegation_time]) unless stub[:delegation_time].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for RejectInvitation
    class RejectInvitation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartMonitoringMember
    class StartMonitoringMember
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateOrganizationConfiguration
    class UpdateOrganizationConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
