# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::ManagedBlockchain
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApprovalThresholdPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApprovalThresholdPolicy, context: context)
        Hearth::Validator.validate!(input[:threshold_percentage], ::Integer, context: "#{context}[:threshold_percentage]")
        Hearth::Validator.validate!(input[:proposal_duration_in_hours], ::Integer, context: "#{context}[:proposal_duration_in_hours]")
        Hearth::Validator.validate!(input[:threshold_comparator], ::String, context: "#{context}[:threshold_comparator]")
      end
    end

    class CreateMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMemberInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:invitation_id], ::String, context: "#{context}[:invitation_id]")
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        MemberConfiguration.validate!(input[:member_configuration], context: "#{context}[:member_configuration]") unless input[:member_configuration].nil?
      end
    end

    class CreateMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMemberOutput, context: context)
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
      end
    end

    class CreateNetworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNetworkInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:framework], ::String, context: "#{context}[:framework]")
        Hearth::Validator.validate!(input[:framework_version], ::String, context: "#{context}[:framework_version]")
        NetworkFrameworkConfiguration.validate!(input[:framework_configuration], context: "#{context}[:framework_configuration]") unless input[:framework_configuration].nil?
        VotingPolicy.validate!(input[:voting_policy], context: "#{context}[:voting_policy]") unless input[:voting_policy].nil?
        MemberConfiguration.validate!(input[:member_configuration], context: "#{context}[:member_configuration]") unless input[:member_configuration].nil?
        InputTagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateNetworkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNetworkOutput, context: context)
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
      end
    end

    class CreateNodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNodeInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
        NodeConfiguration.validate!(input[:node_configuration], context: "#{context}[:node_configuration]") unless input[:node_configuration].nil?
        InputTagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateNodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateNodeOutput, context: context)
        Hearth::Validator.validate!(input[:node_id], ::String, context: "#{context}[:node_id]")
      end
    end

    class CreateProposalInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProposalInput, context: context)
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
        ProposalActions.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        InputTagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateProposalOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProposalOutput, context: context)
        Hearth::Validator.validate!(input[:proposal_id], ::String, context: "#{context}[:proposal_id]")
      end
    end

    class DeleteMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMemberInput, context: context)
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
      end
    end

    class DeleteMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMemberOutput, context: context)
      end
    end

    class DeleteNodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNodeInput, context: context)
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
        Hearth::Validator.validate!(input[:node_id], ::String, context: "#{context}[:node_id]")
      end
    end

    class DeleteNodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteNodeOutput, context: context)
      end
    end

    class GetMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMemberInput, context: context)
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
      end
    end

    class GetMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMemberOutput, context: context)
        Member.validate!(input[:member], context: "#{context}[:member]") unless input[:member].nil?
      end
    end

    class GetNetworkInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkInput, context: context)
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
      end
    end

    class GetNetworkOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNetworkOutput, context: context)
        Network.validate!(input[:network], context: "#{context}[:network]") unless input[:network].nil?
      end
    end

    class GetNodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNodeInput, context: context)
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
        Hearth::Validator.validate!(input[:node_id], ::String, context: "#{context}[:node_id]")
      end
    end

    class GetNodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetNodeOutput, context: context)
        Node.validate!(input[:node], context: "#{context}[:node]") unless input[:node].nil?
      end
    end

    class GetProposalInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProposalInput, context: context)
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:proposal_id], ::String, context: "#{context}[:proposal_id]")
      end
    end

    class GetProposalOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProposalOutput, context: context)
        Proposal.validate!(input[:proposal], context: "#{context}[:proposal]") unless input[:proposal].nil?
      end
    end

    class IllegalActionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IllegalActionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InputTagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class InternalServiceErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceErrorException, context: context)
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Invitation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Invitation, context: context)
        Hearth::Validator.validate!(input[:invitation_id], ::String, context: "#{context}[:invitation_id]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:expiration_date], ::Time, context: "#{context}[:expiration_date]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        NetworkSummary.validate!(input[:network_summary], context: "#{context}[:network_summary]") unless input[:network_summary].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class InvitationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Invitation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InviteAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InviteAction, context: context)
        Hearth::Validator.validate!(input[:principal], ::String, context: "#{context}[:principal]")
      end
    end

    class InviteActionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InviteAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListInvitationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInvitationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInvitationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInvitationsOutput, context: context)
        InvitationList.validate!(input[:invitations], context: "#{context}[:invitations]") unless input[:invitations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMembersInput, context: context)
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:is_owned], ::TrueClass, ::FalseClass, context: "#{context}[:is_owned]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMembersOutput, context: context)
        MemberSummaryList.validate!(input[:members], context: "#{context}[:members]") unless input[:members].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNetworksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNetworksInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:framework], ::String, context: "#{context}[:framework]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNetworksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNetworksOutput, context: context)
        NetworkSummaryList.validate!(input[:networks], context: "#{context}[:networks]") unless input[:networks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNodesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNodesInput, context: context)
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNodesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNodesOutput, context: context)
        NodeSummaryList.validate!(input[:nodes], context: "#{context}[:nodes]") unless input[:nodes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProposalVotesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProposalVotesInput, context: context)
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:proposal_id], ::String, context: "#{context}[:proposal_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProposalVotesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProposalVotesOutput, context: context)
        ProposalVoteList.validate!(input[:proposal_votes], context: "#{context}[:proposal_votes]") unless input[:proposal_votes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProposalsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProposalsInput, context: context)
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProposalsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProposalsOutput, context: context)
        ProposalSummaryList.validate!(input[:proposals], context: "#{context}[:proposals]") unless input[:proposals].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        OutputTagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LogConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogConfiguration, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
      end
    end

    class LogConfigurations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LogConfigurations, context: context)
        LogConfiguration.validate!(input[:cloudwatch], context: "#{context}[:cloudwatch]") unless input[:cloudwatch].nil?
      end
    end

    class Member
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Member, context: context)
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        MemberFrameworkAttributes.validate!(input[:framework_attributes], context: "#{context}[:framework_attributes]") unless input[:framework_attributes].nil?
        MemberLogPublishingConfiguration.validate!(input[:log_publishing_configuration], context: "#{context}[:log_publishing_configuration]") unless input[:log_publishing_configuration].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        OutputTagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
      end
    end

    class MemberConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemberConfiguration, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        MemberFrameworkConfiguration.validate!(input[:framework_configuration], context: "#{context}[:framework_configuration]") unless input[:framework_configuration].nil?
        MemberLogPublishingConfiguration.validate!(input[:log_publishing_configuration], context: "#{context}[:log_publishing_configuration]") unless input[:log_publishing_configuration].nil?
        InputTagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
      end
    end

    class MemberFabricAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemberFabricAttributes, context: context)
        Hearth::Validator.validate!(input[:admin_username], ::String, context: "#{context}[:admin_username]")
        Hearth::Validator.validate!(input[:ca_endpoint], ::String, context: "#{context}[:ca_endpoint]")
      end
    end

    class MemberFabricConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemberFabricConfiguration, context: context)
        Hearth::Validator.validate!(input[:admin_username], ::String, context: "#{context}[:admin_username]")
        Hearth::Validator.validate!(input[:admin_password], ::String, context: "#{context}[:admin_password]")
      end
    end

    class MemberFabricLogPublishingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemberFabricLogPublishingConfiguration, context: context)
        LogConfigurations.validate!(input[:ca_logs], context: "#{context}[:ca_logs]") unless input[:ca_logs].nil?
      end
    end

    class MemberFrameworkAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemberFrameworkAttributes, context: context)
        MemberFabricAttributes.validate!(input[:fabric], context: "#{context}[:fabric]") unless input[:fabric].nil?
      end
    end

    class MemberFrameworkConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemberFrameworkConfiguration, context: context)
        MemberFabricConfiguration.validate!(input[:fabric], context: "#{context}[:fabric]") unless input[:fabric].nil?
      end
    end

    class MemberLogPublishingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemberLogPublishingConfiguration, context: context)
        MemberFabricLogPublishingConfiguration.validate!(input[:fabric], context: "#{context}[:fabric]") unless input[:fabric].nil?
      end
    end

    class MemberSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemberSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:is_owned], ::TrueClass, ::FalseClass, context: "#{context}[:is_owned]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class MemberSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MemberSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Network
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Network, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:framework], ::String, context: "#{context}[:framework]")
        Hearth::Validator.validate!(input[:framework_version], ::String, context: "#{context}[:framework_version]")
        NetworkFrameworkAttributes.validate!(input[:framework_attributes], context: "#{context}[:framework_attributes]") unless input[:framework_attributes].nil?
        Hearth::Validator.validate!(input[:vpc_endpoint_service_name], ::String, context: "#{context}[:vpc_endpoint_service_name]")
        VotingPolicy.validate!(input[:voting_policy], context: "#{context}[:voting_policy]") unless input[:voting_policy].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        OutputTagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class NetworkEthereumAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkEthereumAttributes, context: context)
        Hearth::Validator.validate!(input[:chain_id], ::String, context: "#{context}[:chain_id]")
      end
    end

    class NetworkFabricAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkFabricAttributes, context: context)
        Hearth::Validator.validate!(input[:ordering_service_endpoint], ::String, context: "#{context}[:ordering_service_endpoint]")
        Hearth::Validator.validate!(input[:edition], ::String, context: "#{context}[:edition]")
      end
    end

    class NetworkFabricConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkFabricConfiguration, context: context)
        Hearth::Validator.validate!(input[:edition], ::String, context: "#{context}[:edition]")
      end
    end

    class NetworkFrameworkAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkFrameworkAttributes, context: context)
        NetworkFabricAttributes.validate!(input[:fabric], context: "#{context}[:fabric]") unless input[:fabric].nil?
        NetworkEthereumAttributes.validate!(input[:ethereum], context: "#{context}[:ethereum]") unless input[:ethereum].nil?
      end
    end

    class NetworkFrameworkConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkFrameworkConfiguration, context: context)
        NetworkFabricConfiguration.validate!(input[:fabric], context: "#{context}[:fabric]") unless input[:fabric].nil?
      end
    end

    class NetworkSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:framework], ::String, context: "#{context}[:framework]")
        Hearth::Validator.validate!(input[:framework_version], ::String, context: "#{context}[:framework_version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class NetworkSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NetworkSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Node
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Node, context: context)
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        NodeFrameworkAttributes.validate!(input[:framework_attributes], context: "#{context}[:framework_attributes]") unless input[:framework_attributes].nil?
        NodeLogPublishingConfiguration.validate!(input[:log_publishing_configuration], context: "#{context}[:log_publishing_configuration]") unless input[:log_publishing_configuration].nil?
        Hearth::Validator.validate!(input[:state_db], ::String, context: "#{context}[:state_db]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        OutputTagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
      end
    end

    class NodeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeConfiguration, context: context)
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        NodeLogPublishingConfiguration.validate!(input[:log_publishing_configuration], context: "#{context}[:log_publishing_configuration]") unless input[:log_publishing_configuration].nil?
        Hearth::Validator.validate!(input[:state_db], ::String, context: "#{context}[:state_db]")
      end
    end

    class NodeEthereumAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeEthereumAttributes, context: context)
        Hearth::Validator.validate!(input[:http_endpoint], ::String, context: "#{context}[:http_endpoint]")
        Hearth::Validator.validate!(input[:web_socket_endpoint], ::String, context: "#{context}[:web_socket_endpoint]")
      end
    end

    class NodeFabricAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeFabricAttributes, context: context)
        Hearth::Validator.validate!(input[:peer_endpoint], ::String, context: "#{context}[:peer_endpoint]")
        Hearth::Validator.validate!(input[:peer_event_endpoint], ::String, context: "#{context}[:peer_event_endpoint]")
      end
    end

    class NodeFabricLogPublishingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeFabricLogPublishingConfiguration, context: context)
        LogConfigurations.validate!(input[:chaincode_logs], context: "#{context}[:chaincode_logs]") unless input[:chaincode_logs].nil?
        LogConfigurations.validate!(input[:peer_logs], context: "#{context}[:peer_logs]") unless input[:peer_logs].nil?
      end
    end

    class NodeFrameworkAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeFrameworkAttributes, context: context)
        NodeFabricAttributes.validate!(input[:fabric], context: "#{context}[:fabric]") unless input[:fabric].nil?
        NodeEthereumAttributes.validate!(input[:ethereum], context: "#{context}[:ethereum]") unless input[:ethereum].nil?
      end
    end

    class NodeLogPublishingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeLogPublishingConfiguration, context: context)
        NodeFabricLogPublishingConfiguration.validate!(input[:fabric], context: "#{context}[:fabric]") unless input[:fabric].nil?
      end
    end

    class NodeSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NodeSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class NodeSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NodeSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OutputTagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Proposal
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Proposal, context: context)
        Hearth::Validator.validate!(input[:proposal_id], ::String, context: "#{context}[:proposal_id]")
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        ProposalActions.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Hearth::Validator.validate!(input[:proposed_by_member_id], ::String, context: "#{context}[:proposed_by_member_id]")
        Hearth::Validator.validate!(input[:proposed_by_member_name], ::String, context: "#{context}[:proposed_by_member_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:expiration_date], ::Time, context: "#{context}[:expiration_date]")
        Hearth::Validator.validate!(input[:yes_vote_count], ::Integer, context: "#{context}[:yes_vote_count]")
        Hearth::Validator.validate!(input[:no_vote_count], ::Integer, context: "#{context}[:no_vote_count]")
        Hearth::Validator.validate!(input[:outstanding_vote_count], ::Integer, context: "#{context}[:outstanding_vote_count]")
        OutputTagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ProposalActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProposalActions, context: context)
        InviteActionList.validate!(input[:invitations], context: "#{context}[:invitations]") unless input[:invitations].nil?
        RemoveActionList.validate!(input[:removals], context: "#{context}[:removals]") unless input[:removals].nil?
      end
    end

    class ProposalSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProposalSummary, context: context)
        Hearth::Validator.validate!(input[:proposal_id], ::String, context: "#{context}[:proposal_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:proposed_by_member_id], ::String, context: "#{context}[:proposed_by_member_id]")
        Hearth::Validator.validate!(input[:proposed_by_member_name], ::String, context: "#{context}[:proposed_by_member_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:expiration_date], ::Time, context: "#{context}[:expiration_date]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class ProposalSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProposalSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProposalVoteList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VoteSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RejectInvitationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectInvitationInput, context: context)
        Hearth::Validator.validate!(input[:invitation_id], ::String, context: "#{context}[:invitation_id]")
      end
    end

    class RejectInvitationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectInvitationOutput, context: context)
      end
    end

    class RemoveAction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveAction, context: context)
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
      end
    end

    class RemoveActionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RemoveAction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class ResourceNotReadyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotReadyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        InputTagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMemberInput, context: context)
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
        MemberLogPublishingConfiguration.validate!(input[:log_publishing_configuration], context: "#{context}[:log_publishing_configuration]") unless input[:log_publishing_configuration].nil?
      end
    end

    class UpdateMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMemberOutput, context: context)
      end
    end

    class UpdateNodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNodeInput, context: context)
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
        Hearth::Validator.validate!(input[:node_id], ::String, context: "#{context}[:node_id]")
        NodeLogPublishingConfiguration.validate!(input[:log_publishing_configuration], context: "#{context}[:log_publishing_configuration]") unless input[:log_publishing_configuration].nil?
      end
    end

    class UpdateNodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateNodeOutput, context: context)
      end
    end

    class VoteOnProposalInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VoteOnProposalInput, context: context)
        Hearth::Validator.validate!(input[:network_id], ::String, context: "#{context}[:network_id]")
        Hearth::Validator.validate!(input[:proposal_id], ::String, context: "#{context}[:proposal_id]")
        Hearth::Validator.validate!(input[:voter_member_id], ::String, context: "#{context}[:voter_member_id]")
        Hearth::Validator.validate!(input[:vote], ::String, context: "#{context}[:vote]")
      end
    end

    class VoteOnProposalOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VoteOnProposalOutput, context: context)
      end
    end

    class VoteSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VoteSummary, context: context)
        Hearth::Validator.validate!(input[:vote], ::String, context: "#{context}[:vote]")
        Hearth::Validator.validate!(input[:member_name], ::String, context: "#{context}[:member_name]")
        Hearth::Validator.validate!(input[:member_id], ::String, context: "#{context}[:member_id]")
      end
    end

    class VotingPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VotingPolicy, context: context)
        ApprovalThresholdPolicy.validate!(input[:approval_threshold_policy], context: "#{context}[:approval_threshold_policy]") unless input[:approval_threshold_policy].nil?
      end
    end

  end
end
