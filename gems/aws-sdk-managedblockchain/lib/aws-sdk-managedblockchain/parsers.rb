# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ManagedBlockchain
  module Parsers

    # Operation Parser for CreateMember
    class CreateMember
      def self.parse(http_resp)
        data = Types::CreateMemberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.member_id = map['MemberId']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_name = map['ResourceName']
        data
      end
    end

    # Error Parser for ResourceLimitExceededException
    class ResourceLimitExceededException
      def self.parse(http_resp)
        data = Types::ResourceLimitExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServiceErrorException
    class InternalServiceErrorException
      def self.parse(http_resp)
        data = Types::InternalServiceErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotReadyException
    class ResourceNotReadyException
      def self.parse(http_resp)
        data = Types::ResourceNotReadyException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_name = map['ResourceName']
        data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateNetwork
    class CreateNetwork
      def self.parse(http_resp)
        data = Types::CreateNetworkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.network_id = map['NetworkId']
        data.member_id = map['MemberId']
        data
      end
    end

    # Operation Parser for CreateNode
    class CreateNode
      def self.parse(http_resp)
        data = Types::CreateNodeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.node_id = map['NodeId']
        data
      end
    end

    # Operation Parser for CreateProposal
    class CreateProposal
      def self.parse(http_resp)
        data = Types::CreateProposalOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.proposal_id = map['ProposalId']
        data
      end
    end

    # Operation Parser for DeleteMember
    class DeleteMember
      def self.parse(http_resp)
        data = Types::DeleteMemberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteNode
    class DeleteNode
      def self.parse(http_resp)
        data = Types::DeleteNodeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetMember
    class GetMember
      def self.parse(http_resp)
        data = Types::GetMemberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.member = (Member.parse(map['Member']) unless map['Member'].nil?)
        data
      end
    end

    class Member
      def self.parse(map)
        data = Types::Member.new
        data.network_id = map['NetworkId']
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.framework_attributes = (MemberFrameworkAttributes.parse(map['FrameworkAttributes']) unless map['FrameworkAttributes'].nil?)
        data.log_publishing_configuration = (MemberLogPublishingConfiguration.parse(map['LogPublishingConfiguration']) unless map['LogPublishingConfiguration'].nil?)
        data.status = map['Status']
        data.creation_date = Time.parse(map['CreationDate']) if map['CreationDate']
        data.tags = (OutputTagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.arn = map['Arn']
        data.kms_key_arn = map['KmsKeyArn']
        return data
      end
    end

    class OutputTagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class MemberLogPublishingConfiguration
      def self.parse(map)
        data = Types::MemberLogPublishingConfiguration.new
        data.fabric = (MemberFabricLogPublishingConfiguration.parse(map['Fabric']) unless map['Fabric'].nil?)
        return data
      end
    end

    class MemberFabricLogPublishingConfiguration
      def self.parse(map)
        data = Types::MemberFabricLogPublishingConfiguration.new
        data.ca_logs = (LogConfigurations.parse(map['CaLogs']) unless map['CaLogs'].nil?)
        return data
      end
    end

    class LogConfigurations
      def self.parse(map)
        data = Types::LogConfigurations.new
        data.cloudwatch = (LogConfiguration.parse(map['Cloudwatch']) unless map['Cloudwatch'].nil?)
        return data
      end
    end

    class LogConfiguration
      def self.parse(map)
        data = Types::LogConfiguration.new
        data.enabled = map['Enabled']
        return data
      end
    end

    class MemberFrameworkAttributes
      def self.parse(map)
        data = Types::MemberFrameworkAttributes.new
        data.fabric = (MemberFabricAttributes.parse(map['Fabric']) unless map['Fabric'].nil?)
        return data
      end
    end

    class MemberFabricAttributes
      def self.parse(map)
        data = Types::MemberFabricAttributes.new
        data.admin_username = map['AdminUsername']
        data.ca_endpoint = map['CaEndpoint']
        return data
      end
    end

    # Operation Parser for GetNetwork
    class GetNetwork
      def self.parse(http_resp)
        data = Types::GetNetworkOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.network = (Network.parse(map['Network']) unless map['Network'].nil?)
        data
      end
    end

    class Network
      def self.parse(map)
        data = Types::Network.new
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.framework = map['Framework']
        data.framework_version = map['FrameworkVersion']
        data.framework_attributes = (NetworkFrameworkAttributes.parse(map['FrameworkAttributes']) unless map['FrameworkAttributes'].nil?)
        data.vpc_endpoint_service_name = map['VpcEndpointServiceName']
        data.voting_policy = (VotingPolicy.parse(map['VotingPolicy']) unless map['VotingPolicy'].nil?)
        data.status = map['Status']
        data.creation_date = Time.parse(map['CreationDate']) if map['CreationDate']
        data.tags = (OutputTagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.arn = map['Arn']
        return data
      end
    end

    class VotingPolicy
      def self.parse(map)
        data = Types::VotingPolicy.new
        data.approval_threshold_policy = (ApprovalThresholdPolicy.parse(map['ApprovalThresholdPolicy']) unless map['ApprovalThresholdPolicy'].nil?)
        return data
      end
    end

    class ApprovalThresholdPolicy
      def self.parse(map)
        data = Types::ApprovalThresholdPolicy.new
        data.threshold_percentage = map['ThresholdPercentage']
        data.proposal_duration_in_hours = map['ProposalDurationInHours']
        data.threshold_comparator = map['ThresholdComparator']
        return data
      end
    end

    class NetworkFrameworkAttributes
      def self.parse(map)
        data = Types::NetworkFrameworkAttributes.new
        data.fabric = (NetworkFabricAttributes.parse(map['Fabric']) unless map['Fabric'].nil?)
        data.ethereum = (NetworkEthereumAttributes.parse(map['Ethereum']) unless map['Ethereum'].nil?)
        return data
      end
    end

    class NetworkEthereumAttributes
      def self.parse(map)
        data = Types::NetworkEthereumAttributes.new
        data.chain_id = map['ChainId']
        return data
      end
    end

    class NetworkFabricAttributes
      def self.parse(map)
        data = Types::NetworkFabricAttributes.new
        data.ordering_service_endpoint = map['OrderingServiceEndpoint']
        data.edition = map['Edition']
        return data
      end
    end

    # Operation Parser for GetNode
    class GetNode
      def self.parse(http_resp)
        data = Types::GetNodeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.node = (Node.parse(map['Node']) unless map['Node'].nil?)
        data
      end
    end

    class Node
      def self.parse(map)
        data = Types::Node.new
        data.network_id = map['NetworkId']
        data.member_id = map['MemberId']
        data.id = map['Id']
        data.instance_type = map['InstanceType']
        data.availability_zone = map['AvailabilityZone']
        data.framework_attributes = (NodeFrameworkAttributes.parse(map['FrameworkAttributes']) unless map['FrameworkAttributes'].nil?)
        data.log_publishing_configuration = (NodeLogPublishingConfiguration.parse(map['LogPublishingConfiguration']) unless map['LogPublishingConfiguration'].nil?)
        data.state_db = map['StateDB']
        data.status = map['Status']
        data.creation_date = Time.parse(map['CreationDate']) if map['CreationDate']
        data.tags = (OutputTagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.arn = map['Arn']
        data.kms_key_arn = map['KmsKeyArn']
        return data
      end
    end

    class NodeLogPublishingConfiguration
      def self.parse(map)
        data = Types::NodeLogPublishingConfiguration.new
        data.fabric = (NodeFabricLogPublishingConfiguration.parse(map['Fabric']) unless map['Fabric'].nil?)
        return data
      end
    end

    class NodeFabricLogPublishingConfiguration
      def self.parse(map)
        data = Types::NodeFabricLogPublishingConfiguration.new
        data.chaincode_logs = (LogConfigurations.parse(map['ChaincodeLogs']) unless map['ChaincodeLogs'].nil?)
        data.peer_logs = (LogConfigurations.parse(map['PeerLogs']) unless map['PeerLogs'].nil?)
        return data
      end
    end

    class NodeFrameworkAttributes
      def self.parse(map)
        data = Types::NodeFrameworkAttributes.new
        data.fabric = (NodeFabricAttributes.parse(map['Fabric']) unless map['Fabric'].nil?)
        data.ethereum = (NodeEthereumAttributes.parse(map['Ethereum']) unless map['Ethereum'].nil?)
        return data
      end
    end

    class NodeEthereumAttributes
      def self.parse(map)
        data = Types::NodeEthereumAttributes.new
        data.http_endpoint = map['HttpEndpoint']
        data.web_socket_endpoint = map['WebSocketEndpoint']
        return data
      end
    end

    class NodeFabricAttributes
      def self.parse(map)
        data = Types::NodeFabricAttributes.new
        data.peer_endpoint = map['PeerEndpoint']
        data.peer_event_endpoint = map['PeerEventEndpoint']
        return data
      end
    end

    # Operation Parser for GetProposal
    class GetProposal
      def self.parse(http_resp)
        data = Types::GetProposalOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.proposal = (Proposal.parse(map['Proposal']) unless map['Proposal'].nil?)
        data
      end
    end

    class Proposal
      def self.parse(map)
        data = Types::Proposal.new
        data.proposal_id = map['ProposalId']
        data.network_id = map['NetworkId']
        data.description = map['Description']
        data.actions = (ProposalActions.parse(map['Actions']) unless map['Actions'].nil?)
        data.proposed_by_member_id = map['ProposedByMemberId']
        data.proposed_by_member_name = map['ProposedByMemberName']
        data.status = map['Status']
        data.creation_date = Time.parse(map['CreationDate']) if map['CreationDate']
        data.expiration_date = Time.parse(map['ExpirationDate']) if map['ExpirationDate']
        data.yes_vote_count = map['YesVoteCount']
        data.no_vote_count = map['NoVoteCount']
        data.outstanding_vote_count = map['OutstandingVoteCount']
        data.tags = (OutputTagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.arn = map['Arn']
        return data
      end
    end

    class ProposalActions
      def self.parse(map)
        data = Types::ProposalActions.new
        data.invitations = (InviteActionList.parse(map['Invitations']) unless map['Invitations'].nil?)
        data.removals = (RemoveActionList.parse(map['Removals']) unless map['Removals'].nil?)
        return data
      end
    end

    class RemoveActionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << RemoveAction.parse(value) unless value.nil?
        end
        data
      end
    end

    class RemoveAction
      def self.parse(map)
        data = Types::RemoveAction.new
        data.member_id = map['MemberId']
        return data
      end
    end

    class InviteActionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << InviteAction.parse(value) unless value.nil?
        end
        data
      end
    end

    class InviteAction
      def self.parse(map)
        data = Types::InviteAction.new
        data.principal = map['Principal']
        return data
      end
    end

    # Operation Parser for ListInvitations
    class ListInvitations
      def self.parse(http_resp)
        data = Types::ListInvitationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.invitations = (InvitationList.parse(map['Invitations']) unless map['Invitations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InvitationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Invitation.parse(value) unless value.nil?
        end
        data
      end
    end

    class Invitation
      def self.parse(map)
        data = Types::Invitation.new
        data.invitation_id = map['InvitationId']
        data.creation_date = Time.parse(map['CreationDate']) if map['CreationDate']
        data.expiration_date = Time.parse(map['ExpirationDate']) if map['ExpirationDate']
        data.status = map['Status']
        data.network_summary = (NetworkSummary.parse(map['NetworkSummary']) unless map['NetworkSummary'].nil?)
        data.arn = map['Arn']
        return data
      end
    end

    class NetworkSummary
      def self.parse(map)
        data = Types::NetworkSummary.new
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.framework = map['Framework']
        data.framework_version = map['FrameworkVersion']
        data.status = map['Status']
        data.creation_date = Time.parse(map['CreationDate']) if map['CreationDate']
        data.arn = map['Arn']
        return data
      end
    end

    # Operation Parser for ListMembers
    class ListMembers
      def self.parse(http_resp)
        data = Types::ListMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.members = (MemberSummaryList.parse(map['Members']) unless map['Members'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MemberSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << MemberSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class MemberSummary
      def self.parse(map)
        data = Types::MemberSummary.new
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.status = map['Status']
        data.creation_date = Time.parse(map['CreationDate']) if map['CreationDate']
        data.is_owned = map['IsOwned']
        data.arn = map['Arn']
        return data
      end
    end

    # Operation Parser for ListNetworks
    class ListNetworks
      def self.parse(http_resp)
        data = Types::ListNetworksOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.networks = (NetworkSummaryList.parse(map['Networks']) unless map['Networks'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class NetworkSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << NetworkSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListNodes
    class ListNodes
      def self.parse(http_resp)
        data = Types::ListNodesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.nodes = (NodeSummaryList.parse(map['Nodes']) unless map['Nodes'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class NodeSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << NodeSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class NodeSummary
      def self.parse(map)
        data = Types::NodeSummary.new
        data.id = map['Id']
        data.status = map['Status']
        data.creation_date = Time.parse(map['CreationDate']) if map['CreationDate']
        data.availability_zone = map['AvailabilityZone']
        data.instance_type = map['InstanceType']
        data.arn = map['Arn']
        return data
      end
    end

    # Operation Parser for ListProposalVotes
    class ListProposalVotes
      def self.parse(http_resp)
        data = Types::ListProposalVotesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.proposal_votes = (ProposalVoteList.parse(map['ProposalVotes']) unless map['ProposalVotes'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProposalVoteList
      def self.parse(list)
        data = []
        list.map do |value|
          data << VoteSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class VoteSummary
      def self.parse(map)
        data = Types::VoteSummary.new
        data.vote = map['Vote']
        data.member_name = map['MemberName']
        data.member_id = map['MemberId']
        return data
      end
    end

    # Operation Parser for ListProposals
    class ListProposals
      def self.parse(http_resp)
        data = Types::ListProposalsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.proposals = (ProposalSummaryList.parse(map['Proposals']) unless map['Proposals'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ProposalSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ProposalSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ProposalSummary
      def self.parse(map)
        data = Types::ProposalSummary.new
        data.proposal_id = map['ProposalId']
        data.description = map['Description']
        data.proposed_by_member_id = map['ProposedByMemberId']
        data.proposed_by_member_name = map['ProposedByMemberName']
        data.status = map['Status']
        data.creation_date = Time.parse(map['CreationDate']) if map['CreationDate']
        data.expiration_date = Time.parse(map['ExpirationDate']) if map['ExpirationDate']
        data.arn = map['Arn']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (OutputTagMap.parse(map['Tags']) unless map['Tags'].nil?)
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

    # Error Parser for IllegalActionException
    class IllegalActionException
      def self.parse(http_resp)
        data = Types::IllegalActionException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
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

    # Operation Parser for UpdateMember
    class UpdateMember
      def self.parse(http_resp)
        data = Types::UpdateMemberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateNode
    class UpdateNode
      def self.parse(http_resp)
        data = Types::UpdateNodeOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for VoteOnProposal
    class VoteOnProposal
      def self.parse(http_resp)
        data = Types::VoteOnProposalOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
