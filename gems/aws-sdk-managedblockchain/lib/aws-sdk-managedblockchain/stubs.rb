# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ManagedBlockchain
  module Stubs

    # Operation Stubber for CreateMember
    class CreateMember
      def self.default(visited=[])
        {
          member_id: 'member_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['MemberId'] = stub[:member_id] unless stub[:member_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateNetwork
    class CreateNetwork
      def self.default(visited=[])
        {
          network_id: 'network_id',
          member_id: 'member_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NetworkId'] = stub[:network_id] unless stub[:network_id].nil?
        data['MemberId'] = stub[:member_id] unless stub[:member_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateNode
    class CreateNode
      def self.default(visited=[])
        {
          node_id: 'node_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['NodeId'] = stub[:node_id] unless stub[:node_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for CreateProposal
    class CreateProposal
      def self.default(visited=[])
        {
          proposal_id: 'proposal_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProposalId'] = stub[:proposal_id] unless stub[:proposal_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteMember
    class DeleteMember
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteNode
    class DeleteNode
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetMember
    class GetMember
      def self.default(visited=[])
        {
          member: Stubs::Member.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Member'] = Stubs::Member.stub(stub[:member]) unless stub[:member].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Member
    class Member
      def self.default(visited=[])
        return nil if visited.include?('Member')
        visited = visited + ['Member']
        {
          network_id: 'network_id',
          id: 'id',
          name: 'name',
          description: 'description',
          framework_attributes: Stubs::MemberFrameworkAttributes.default(visited),
          log_publishing_configuration: Stubs::MemberLogPublishingConfiguration.default(visited),
          status: 'status',
          creation_date: Time.now,
          tags: Stubs::OutputTagMap.default(visited),
          arn: 'arn',
          kms_key_arn: 'kms_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Member.new
        data = {}
        data['NetworkId'] = stub[:network_id] unless stub[:network_id].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['FrameworkAttributes'] = Stubs::MemberFrameworkAttributes.stub(stub[:framework_attributes]) unless stub[:framework_attributes].nil?
        data['LogPublishingConfiguration'] = Stubs::MemberLogPublishingConfiguration.stub(stub[:log_publishing_configuration]) unless stub[:log_publishing_configuration].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_date_time(stub[:creation_date]) unless stub[:creation_date].nil?
        data['Tags'] = Stubs::OutputTagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['KmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data
      end
    end

    # Map Stubber for OutputTagMap
    class OutputTagMap
      def self.default(visited=[])
        return nil if visited.include?('OutputTagMap')
        visited = visited + ['OutputTagMap']
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

    # Structure Stubber for MemberLogPublishingConfiguration
    class MemberLogPublishingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('MemberLogPublishingConfiguration')
        visited = visited + ['MemberLogPublishingConfiguration']
        {
          fabric: Stubs::MemberFabricLogPublishingConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MemberLogPublishingConfiguration.new
        data = {}
        data['Fabric'] = Stubs::MemberFabricLogPublishingConfiguration.stub(stub[:fabric]) unless stub[:fabric].nil?
        data
      end
    end

    # Structure Stubber for MemberFabricLogPublishingConfiguration
    class MemberFabricLogPublishingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('MemberFabricLogPublishingConfiguration')
        visited = visited + ['MemberFabricLogPublishingConfiguration']
        {
          ca_logs: Stubs::LogConfigurations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MemberFabricLogPublishingConfiguration.new
        data = {}
        data['CaLogs'] = Stubs::LogConfigurations.stub(stub[:ca_logs]) unless stub[:ca_logs].nil?
        data
      end
    end

    # Structure Stubber for LogConfigurations
    class LogConfigurations
      def self.default(visited=[])
        return nil if visited.include?('LogConfigurations')
        visited = visited + ['LogConfigurations']
        {
          cloudwatch: Stubs::LogConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LogConfigurations.new
        data = {}
        data['Cloudwatch'] = Stubs::LogConfiguration.stub(stub[:cloudwatch]) unless stub[:cloudwatch].nil?
        data
      end
    end

    # Structure Stubber for LogConfiguration
    class LogConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LogConfiguration')
        visited = visited + ['LogConfiguration']
        {
          enabled: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::LogConfiguration.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data
      end
    end

    # Structure Stubber for MemberFrameworkAttributes
    class MemberFrameworkAttributes
      def self.default(visited=[])
        return nil if visited.include?('MemberFrameworkAttributes')
        visited = visited + ['MemberFrameworkAttributes']
        {
          fabric: Stubs::MemberFabricAttributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MemberFrameworkAttributes.new
        data = {}
        data['Fabric'] = Stubs::MemberFabricAttributes.stub(stub[:fabric]) unless stub[:fabric].nil?
        data
      end
    end

    # Structure Stubber for MemberFabricAttributes
    class MemberFabricAttributes
      def self.default(visited=[])
        return nil if visited.include?('MemberFabricAttributes')
        visited = visited + ['MemberFabricAttributes']
        {
          admin_username: 'admin_username',
          ca_endpoint: 'ca_endpoint',
        }
      end

      def self.stub(stub)
        stub ||= Types::MemberFabricAttributes.new
        data = {}
        data['AdminUsername'] = stub[:admin_username] unless stub[:admin_username].nil?
        data['CaEndpoint'] = stub[:ca_endpoint] unless stub[:ca_endpoint].nil?
        data
      end
    end

    # Operation Stubber for GetNetwork
    class GetNetwork
      def self.default(visited=[])
        {
          network: Stubs::Network.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Network'] = Stubs::Network.stub(stub[:network]) unless stub[:network].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Network
    class Network
      def self.default(visited=[])
        return nil if visited.include?('Network')
        visited = visited + ['Network']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          framework: 'framework',
          framework_version: 'framework_version',
          framework_attributes: Stubs::NetworkFrameworkAttributes.default(visited),
          vpc_endpoint_service_name: 'vpc_endpoint_service_name',
          voting_policy: Stubs::VotingPolicy.default(visited),
          status: 'status',
          creation_date: Time.now,
          tags: Stubs::OutputTagMap.default(visited),
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Network.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Framework'] = stub[:framework] unless stub[:framework].nil?
        data['FrameworkVersion'] = stub[:framework_version] unless stub[:framework_version].nil?
        data['FrameworkAttributes'] = Stubs::NetworkFrameworkAttributes.stub(stub[:framework_attributes]) unless stub[:framework_attributes].nil?
        data['VpcEndpointServiceName'] = stub[:vpc_endpoint_service_name] unless stub[:vpc_endpoint_service_name].nil?
        data['VotingPolicy'] = Stubs::VotingPolicy.stub(stub[:voting_policy]) unless stub[:voting_policy].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_date_time(stub[:creation_date]) unless stub[:creation_date].nil?
        data['Tags'] = Stubs::OutputTagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for VotingPolicy
    class VotingPolicy
      def self.default(visited=[])
        return nil if visited.include?('VotingPolicy')
        visited = visited + ['VotingPolicy']
        {
          approval_threshold_policy: Stubs::ApprovalThresholdPolicy.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VotingPolicy.new
        data = {}
        data['ApprovalThresholdPolicy'] = Stubs::ApprovalThresholdPolicy.stub(stub[:approval_threshold_policy]) unless stub[:approval_threshold_policy].nil?
        data
      end
    end

    # Structure Stubber for ApprovalThresholdPolicy
    class ApprovalThresholdPolicy
      def self.default(visited=[])
        return nil if visited.include?('ApprovalThresholdPolicy')
        visited = visited + ['ApprovalThresholdPolicy']
        {
          threshold_percentage: 1,
          proposal_duration_in_hours: 1,
          threshold_comparator: 'threshold_comparator',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApprovalThresholdPolicy.new
        data = {}
        data['ThresholdPercentage'] = stub[:threshold_percentage] unless stub[:threshold_percentage].nil?
        data['ProposalDurationInHours'] = stub[:proposal_duration_in_hours] unless stub[:proposal_duration_in_hours].nil?
        data['ThresholdComparator'] = stub[:threshold_comparator] unless stub[:threshold_comparator].nil?
        data
      end
    end

    # Structure Stubber for NetworkFrameworkAttributes
    class NetworkFrameworkAttributes
      def self.default(visited=[])
        return nil if visited.include?('NetworkFrameworkAttributes')
        visited = visited + ['NetworkFrameworkAttributes']
        {
          fabric: Stubs::NetworkFabricAttributes.default(visited),
          ethereum: Stubs::NetworkEthereumAttributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkFrameworkAttributes.new
        data = {}
        data['Fabric'] = Stubs::NetworkFabricAttributes.stub(stub[:fabric]) unless stub[:fabric].nil?
        data['Ethereum'] = Stubs::NetworkEthereumAttributes.stub(stub[:ethereum]) unless stub[:ethereum].nil?
        data
      end
    end

    # Structure Stubber for NetworkEthereumAttributes
    class NetworkEthereumAttributes
      def self.default(visited=[])
        return nil if visited.include?('NetworkEthereumAttributes')
        visited = visited + ['NetworkEthereumAttributes']
        {
          chain_id: 'chain_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkEthereumAttributes.new
        data = {}
        data['ChainId'] = stub[:chain_id] unless stub[:chain_id].nil?
        data
      end
    end

    # Structure Stubber for NetworkFabricAttributes
    class NetworkFabricAttributes
      def self.default(visited=[])
        return nil if visited.include?('NetworkFabricAttributes')
        visited = visited + ['NetworkFabricAttributes']
        {
          ordering_service_endpoint: 'ordering_service_endpoint',
          edition: 'edition',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkFabricAttributes.new
        data = {}
        data['OrderingServiceEndpoint'] = stub[:ordering_service_endpoint] unless stub[:ordering_service_endpoint].nil?
        data['Edition'] = stub[:edition] unless stub[:edition].nil?
        data
      end
    end

    # Operation Stubber for GetNode
    class GetNode
      def self.default(visited=[])
        {
          node: Stubs::Node.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Node'] = Stubs::Node.stub(stub[:node]) unless stub[:node].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Node
    class Node
      def self.default(visited=[])
        return nil if visited.include?('Node')
        visited = visited + ['Node']
        {
          network_id: 'network_id',
          member_id: 'member_id',
          id: 'id',
          instance_type: 'instance_type',
          availability_zone: 'availability_zone',
          framework_attributes: Stubs::NodeFrameworkAttributes.default(visited),
          log_publishing_configuration: Stubs::NodeLogPublishingConfiguration.default(visited),
          state_db: 'state_db',
          status: 'status',
          creation_date: Time.now,
          tags: Stubs::OutputTagMap.default(visited),
          arn: 'arn',
          kms_key_arn: 'kms_key_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Node.new
        data = {}
        data['NetworkId'] = stub[:network_id] unless stub[:network_id].nil?
        data['MemberId'] = stub[:member_id] unless stub[:member_id].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['FrameworkAttributes'] = Stubs::NodeFrameworkAttributes.stub(stub[:framework_attributes]) unless stub[:framework_attributes].nil?
        data['LogPublishingConfiguration'] = Stubs::NodeLogPublishingConfiguration.stub(stub[:log_publishing_configuration]) unless stub[:log_publishing_configuration].nil?
        data['StateDB'] = stub[:state_db] unless stub[:state_db].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_date_time(stub[:creation_date]) unless stub[:creation_date].nil?
        data['Tags'] = Stubs::OutputTagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['KmsKeyArn'] = stub[:kms_key_arn] unless stub[:kms_key_arn].nil?
        data
      end
    end

    # Structure Stubber for NodeLogPublishingConfiguration
    class NodeLogPublishingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NodeLogPublishingConfiguration')
        visited = visited + ['NodeLogPublishingConfiguration']
        {
          fabric: Stubs::NodeFabricLogPublishingConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeLogPublishingConfiguration.new
        data = {}
        data['Fabric'] = Stubs::NodeFabricLogPublishingConfiguration.stub(stub[:fabric]) unless stub[:fabric].nil?
        data
      end
    end

    # Structure Stubber for NodeFabricLogPublishingConfiguration
    class NodeFabricLogPublishingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NodeFabricLogPublishingConfiguration')
        visited = visited + ['NodeFabricLogPublishingConfiguration']
        {
          chaincode_logs: Stubs::LogConfigurations.default(visited),
          peer_logs: Stubs::LogConfigurations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeFabricLogPublishingConfiguration.new
        data = {}
        data['ChaincodeLogs'] = Stubs::LogConfigurations.stub(stub[:chaincode_logs]) unless stub[:chaincode_logs].nil?
        data['PeerLogs'] = Stubs::LogConfigurations.stub(stub[:peer_logs]) unless stub[:peer_logs].nil?
        data
      end
    end

    # Structure Stubber for NodeFrameworkAttributes
    class NodeFrameworkAttributes
      def self.default(visited=[])
        return nil if visited.include?('NodeFrameworkAttributes')
        visited = visited + ['NodeFrameworkAttributes']
        {
          fabric: Stubs::NodeFabricAttributes.default(visited),
          ethereum: Stubs::NodeEthereumAttributes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeFrameworkAttributes.new
        data = {}
        data['Fabric'] = Stubs::NodeFabricAttributes.stub(stub[:fabric]) unless stub[:fabric].nil?
        data['Ethereum'] = Stubs::NodeEthereumAttributes.stub(stub[:ethereum]) unless stub[:ethereum].nil?
        data
      end
    end

    # Structure Stubber for NodeEthereumAttributes
    class NodeEthereumAttributes
      def self.default(visited=[])
        return nil if visited.include?('NodeEthereumAttributes')
        visited = visited + ['NodeEthereumAttributes']
        {
          http_endpoint: 'http_endpoint',
          web_socket_endpoint: 'web_socket_endpoint',
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeEthereumAttributes.new
        data = {}
        data['HttpEndpoint'] = stub[:http_endpoint] unless stub[:http_endpoint].nil?
        data['WebSocketEndpoint'] = stub[:web_socket_endpoint] unless stub[:web_socket_endpoint].nil?
        data
      end
    end

    # Structure Stubber for NodeFabricAttributes
    class NodeFabricAttributes
      def self.default(visited=[])
        return nil if visited.include?('NodeFabricAttributes')
        visited = visited + ['NodeFabricAttributes']
        {
          peer_endpoint: 'peer_endpoint',
          peer_event_endpoint: 'peer_event_endpoint',
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeFabricAttributes.new
        data = {}
        data['PeerEndpoint'] = stub[:peer_endpoint] unless stub[:peer_endpoint].nil?
        data['PeerEventEndpoint'] = stub[:peer_event_endpoint] unless stub[:peer_event_endpoint].nil?
        data
      end
    end

    # Operation Stubber for GetProposal
    class GetProposal
      def self.default(visited=[])
        {
          proposal: Stubs::Proposal.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Proposal'] = Stubs::Proposal.stub(stub[:proposal]) unless stub[:proposal].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Proposal
    class Proposal
      def self.default(visited=[])
        return nil if visited.include?('Proposal')
        visited = visited + ['Proposal']
        {
          proposal_id: 'proposal_id',
          network_id: 'network_id',
          description: 'description',
          actions: Stubs::ProposalActions.default(visited),
          proposed_by_member_id: 'proposed_by_member_id',
          proposed_by_member_name: 'proposed_by_member_name',
          status: 'status',
          creation_date: Time.now,
          expiration_date: Time.now,
          yes_vote_count: 1,
          no_vote_count: 1,
          outstanding_vote_count: 1,
          tags: Stubs::OutputTagMap.default(visited),
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Proposal.new
        data = {}
        data['ProposalId'] = stub[:proposal_id] unless stub[:proposal_id].nil?
        data['NetworkId'] = stub[:network_id] unless stub[:network_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Actions'] = Stubs::ProposalActions.stub(stub[:actions]) unless stub[:actions].nil?
        data['ProposedByMemberId'] = stub[:proposed_by_member_id] unless stub[:proposed_by_member_id].nil?
        data['ProposedByMemberName'] = stub[:proposed_by_member_name] unless stub[:proposed_by_member_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_date_time(stub[:creation_date]) unless stub[:creation_date].nil?
        data['ExpirationDate'] = Hearth::TimeHelper.to_date_time(stub[:expiration_date]) unless stub[:expiration_date].nil?
        data['YesVoteCount'] = stub[:yes_vote_count] unless stub[:yes_vote_count].nil?
        data['NoVoteCount'] = stub[:no_vote_count] unless stub[:no_vote_count].nil?
        data['OutstandingVoteCount'] = stub[:outstanding_vote_count] unless stub[:outstanding_vote_count].nil?
        data['Tags'] = Stubs::OutputTagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for ProposalActions
    class ProposalActions
      def self.default(visited=[])
        return nil if visited.include?('ProposalActions')
        visited = visited + ['ProposalActions']
        {
          invitations: Stubs::InviteActionList.default(visited),
          removals: Stubs::RemoveActionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ProposalActions.new
        data = {}
        data['Invitations'] = Stubs::InviteActionList.stub(stub[:invitations]) unless stub[:invitations].nil?
        data['Removals'] = Stubs::RemoveActionList.stub(stub[:removals]) unless stub[:removals].nil?
        data
      end
    end

    # List Stubber for RemoveActionList
    class RemoveActionList
      def self.default(visited=[])
        return nil if visited.include?('RemoveActionList')
        visited = visited + ['RemoveActionList']
        [
          Stubs::RemoveAction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RemoveAction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RemoveAction
    class RemoveAction
      def self.default(visited=[])
        return nil if visited.include?('RemoveAction')
        visited = visited + ['RemoveAction']
        {
          member_id: 'member_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RemoveAction.new
        data = {}
        data['MemberId'] = stub[:member_id] unless stub[:member_id].nil?
        data
      end
    end

    # List Stubber for InviteActionList
    class InviteActionList
      def self.default(visited=[])
        return nil if visited.include?('InviteActionList')
        visited = visited + ['InviteActionList']
        [
          Stubs::InviteAction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::InviteAction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InviteAction
    class InviteAction
      def self.default(visited=[])
        return nil if visited.include?('InviteAction')
        visited = visited + ['InviteAction']
        {
          principal: 'principal',
        }
      end

      def self.stub(stub)
        stub ||= Types::InviteAction.new
        data = {}
        data['Principal'] = stub[:principal] unless stub[:principal].nil?
        data
      end
    end

    # Operation Stubber for ListInvitations
    class ListInvitations
      def self.default(visited=[])
        {
          invitations: Stubs::InvitationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Invitations'] = Stubs::InvitationList.stub(stub[:invitations]) unless stub[:invitations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for InvitationList
    class InvitationList
      def self.default(visited=[])
        return nil if visited.include?('InvitationList')
        visited = visited + ['InvitationList']
        [
          Stubs::Invitation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Invitation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Invitation
    class Invitation
      def self.default(visited=[])
        return nil if visited.include?('Invitation')
        visited = visited + ['Invitation']
        {
          invitation_id: 'invitation_id',
          creation_date: Time.now,
          expiration_date: Time.now,
          status: 'status',
          network_summary: Stubs::NetworkSummary.default(visited),
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Invitation.new
        data = {}
        data['InvitationId'] = stub[:invitation_id] unless stub[:invitation_id].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_date_time(stub[:creation_date]) unless stub[:creation_date].nil?
        data['ExpirationDate'] = Hearth::TimeHelper.to_date_time(stub[:expiration_date]) unless stub[:expiration_date].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['NetworkSummary'] = Stubs::NetworkSummary.stub(stub[:network_summary]) unless stub[:network_summary].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Structure Stubber for NetworkSummary
    class NetworkSummary
      def self.default(visited=[])
        return nil if visited.include?('NetworkSummary')
        visited = visited + ['NetworkSummary']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          framework: 'framework',
          framework_version: 'framework_version',
          status: 'status',
          creation_date: Time.now,
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Framework'] = stub[:framework] unless stub[:framework].nil?
        data['FrameworkVersion'] = stub[:framework_version] unless stub[:framework_version].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_date_time(stub[:creation_date]) unless stub[:creation_date].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for ListMembers
    class ListMembers
      def self.default(visited=[])
        {
          members: Stubs::MemberSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Members'] = Stubs::MemberSummaryList.stub(stub[:members]) unless stub[:members].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for MemberSummaryList
    class MemberSummaryList
      def self.default(visited=[])
        return nil if visited.include?('MemberSummaryList')
        visited = visited + ['MemberSummaryList']
        [
          Stubs::MemberSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::MemberSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MemberSummary
    class MemberSummary
      def self.default(visited=[])
        return nil if visited.include?('MemberSummary')
        visited = visited + ['MemberSummary']
        {
          id: 'id',
          name: 'name',
          description: 'description',
          status: 'status',
          creation_date: Time.now,
          is_owned: false,
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::MemberSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_date_time(stub[:creation_date]) unless stub[:creation_date].nil?
        data['IsOwned'] = stub[:is_owned] unless stub[:is_owned].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for ListNetworks
    class ListNetworks
      def self.default(visited=[])
        {
          networks: Stubs::NetworkSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Networks'] = Stubs::NetworkSummaryList.stub(stub[:networks]) unless stub[:networks].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for NetworkSummaryList
    class NetworkSummaryList
      def self.default(visited=[])
        return nil if visited.include?('NetworkSummaryList')
        visited = visited + ['NetworkSummaryList']
        [
          Stubs::NetworkSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NetworkSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListNodes
    class ListNodes
      def self.default(visited=[])
        {
          nodes: Stubs::NodeSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Nodes'] = Stubs::NodeSummaryList.stub(stub[:nodes]) unless stub[:nodes].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for NodeSummaryList
    class NodeSummaryList
      def self.default(visited=[])
        return nil if visited.include?('NodeSummaryList')
        visited = visited + ['NodeSummaryList']
        [
          Stubs::NodeSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NodeSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NodeSummary
    class NodeSummary
      def self.default(visited=[])
        return nil if visited.include?('NodeSummary')
        visited = visited + ['NodeSummary']
        {
          id: 'id',
          status: 'status',
          creation_date: Time.now,
          availability_zone: 'availability_zone',
          instance_type: 'instance_type',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::NodeSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_date_time(stub[:creation_date]) unless stub[:creation_date].nil?
        data['AvailabilityZone'] = stub[:availability_zone] unless stub[:availability_zone].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for ListProposalVotes
    class ListProposalVotes
      def self.default(visited=[])
        {
          proposal_votes: Stubs::ProposalVoteList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['ProposalVotes'] = Stubs::ProposalVoteList.stub(stub[:proposal_votes]) unless stub[:proposal_votes].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProposalVoteList
    class ProposalVoteList
      def self.default(visited=[])
        return nil if visited.include?('ProposalVoteList')
        visited = visited + ['ProposalVoteList']
        [
          Stubs::VoteSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::VoteSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VoteSummary
    class VoteSummary
      def self.default(visited=[])
        return nil if visited.include?('VoteSummary')
        visited = visited + ['VoteSummary']
        {
          vote: 'vote',
          member_name: 'member_name',
          member_id: 'member_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::VoteSummary.new
        data = {}
        data['Vote'] = stub[:vote] unless stub[:vote].nil?
        data['MemberName'] = stub[:member_name] unless stub[:member_name].nil?
        data['MemberId'] = stub[:member_id] unless stub[:member_id].nil?
        data
      end
    end

    # Operation Stubber for ListProposals
    class ListProposals
      def self.default(visited=[])
        {
          proposals: Stubs::ProposalSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Proposals'] = Stubs::ProposalSummaryList.stub(stub[:proposals]) unless stub[:proposals].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ProposalSummaryList
    class ProposalSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ProposalSummaryList')
        visited = visited + ['ProposalSummaryList']
        [
          Stubs::ProposalSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ProposalSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ProposalSummary
    class ProposalSummary
      def self.default(visited=[])
        return nil if visited.include?('ProposalSummary')
        visited = visited + ['ProposalSummary']
        {
          proposal_id: 'proposal_id',
          description: 'description',
          proposed_by_member_id: 'proposed_by_member_id',
          proposed_by_member_name: 'proposed_by_member_name',
          status: 'status',
          creation_date: Time.now,
          expiration_date: Time.now,
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProposalSummary.new
        data = {}
        data['ProposalId'] = stub[:proposal_id] unless stub[:proposal_id].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ProposedByMemberId'] = stub[:proposed_by_member_id] unless stub[:proposed_by_member_id].nil?
        data['ProposedByMemberName'] = stub[:proposed_by_member_name] unless stub[:proposed_by_member_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationDate'] = Hearth::TimeHelper.to_date_time(stub[:creation_date]) unless stub[:creation_date].nil?
        data['ExpirationDate'] = Hearth::TimeHelper.to_date_time(stub[:expiration_date]) unless stub[:expiration_date].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::OutputTagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::OutputTagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
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
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateMember
    class UpdateMember
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateNode
    class UpdateNode
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for VoteOnProposal
    class VoteOnProposal
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
