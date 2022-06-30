# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ManagedBlockchain
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module ApprovalThresholdPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApprovalThresholdPolicy, context: context)
        type = Types::ApprovalThresholdPolicy.new
        type.threshold_percentage = params[:threshold_percentage]
        type.proposal_duration_in_hours = params[:proposal_duration_in_hours]
        type.threshold_comparator = params[:threshold_comparator]
        type
      end
    end

    module CreateMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMemberInput, context: context)
        type = Types::CreateMemberInput.new
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.invitation_id = params[:invitation_id]
        type.network_id = params[:network_id]
        type.member_configuration = MemberConfiguration.build(params[:member_configuration], context: "#{context}[:member_configuration]") unless params[:member_configuration].nil?
        type
      end
    end

    module CreateMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMemberOutput, context: context)
        type = Types::CreateMemberOutput.new
        type.member_id = params[:member_id]
        type
      end
    end

    module CreateNetworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNetworkInput, context: context)
        type = Types::CreateNetworkInput.new
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.name = params[:name]
        type.description = params[:description]
        type.framework = params[:framework]
        type.framework_version = params[:framework_version]
        type.framework_configuration = NetworkFrameworkConfiguration.build(params[:framework_configuration], context: "#{context}[:framework_configuration]") unless params[:framework_configuration].nil?
        type.voting_policy = VotingPolicy.build(params[:voting_policy], context: "#{context}[:voting_policy]") unless params[:voting_policy].nil?
        type.member_configuration = MemberConfiguration.build(params[:member_configuration], context: "#{context}[:member_configuration]") unless params[:member_configuration].nil?
        type.tags = InputTagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateNetworkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNetworkOutput, context: context)
        type = Types::CreateNetworkOutput.new
        type.network_id = params[:network_id]
        type.member_id = params[:member_id]
        type
      end
    end

    module CreateNodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNodeInput, context: context)
        type = Types::CreateNodeInput.new
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.network_id = params[:network_id]
        type.member_id = params[:member_id]
        type.node_configuration = NodeConfiguration.build(params[:node_configuration], context: "#{context}[:node_configuration]") unless params[:node_configuration].nil?
        type.tags = InputTagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateNodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateNodeOutput, context: context)
        type = Types::CreateNodeOutput.new
        type.node_id = params[:node_id]
        type
      end
    end

    module CreateProposalInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProposalInput, context: context)
        type = Types::CreateProposalInput.new
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.network_id = params[:network_id]
        type.member_id = params[:member_id]
        type.actions = ProposalActions.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.description = params[:description]
        type.tags = InputTagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateProposalOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProposalOutput, context: context)
        type = Types::CreateProposalOutput.new
        type.proposal_id = params[:proposal_id]
        type
      end
    end

    module DeleteMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMemberInput, context: context)
        type = Types::DeleteMemberInput.new
        type.network_id = params[:network_id]
        type.member_id = params[:member_id]
        type
      end
    end

    module DeleteMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMemberOutput, context: context)
        type = Types::DeleteMemberOutput.new
        type
      end
    end

    module DeleteNodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNodeInput, context: context)
        type = Types::DeleteNodeInput.new
        type.network_id = params[:network_id]
        type.member_id = params[:member_id]
        type.node_id = params[:node_id]
        type
      end
    end

    module DeleteNodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteNodeOutput, context: context)
        type = Types::DeleteNodeOutput.new
        type
      end
    end

    module GetMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMemberInput, context: context)
        type = Types::GetMemberInput.new
        type.network_id = params[:network_id]
        type.member_id = params[:member_id]
        type
      end
    end

    module GetMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMemberOutput, context: context)
        type = Types::GetMemberOutput.new
        type.member = Member.build(params[:member], context: "#{context}[:member]") unless params[:member].nil?
        type
      end
    end

    module GetNetworkInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkInput, context: context)
        type = Types::GetNetworkInput.new
        type.network_id = params[:network_id]
        type
      end
    end

    module GetNetworkOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNetworkOutput, context: context)
        type = Types::GetNetworkOutput.new
        type.network = Network.build(params[:network], context: "#{context}[:network]") unless params[:network].nil?
        type
      end
    end

    module GetNodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNodeInput, context: context)
        type = Types::GetNodeInput.new
        type.network_id = params[:network_id]
        type.member_id = params[:member_id]
        type.node_id = params[:node_id]
        type
      end
    end

    module GetNodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetNodeOutput, context: context)
        type = Types::GetNodeOutput.new
        type.node = Node.build(params[:node], context: "#{context}[:node]") unless params[:node].nil?
        type
      end
    end

    module GetProposalInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProposalInput, context: context)
        type = Types::GetProposalInput.new
        type.network_id = params[:network_id]
        type.proposal_id = params[:proposal_id]
        type
      end
    end

    module GetProposalOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProposalOutput, context: context)
        type = Types::GetProposalOutput.new
        type.proposal = Proposal.build(params[:proposal], context: "#{context}[:proposal]") unless params[:proposal].nil?
        type
      end
    end

    module IllegalActionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IllegalActionException, context: context)
        type = Types::IllegalActionException.new
        type.message = params[:message]
        type
      end
    end

    module InputTagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module InternalServiceErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceErrorException, context: context)
        type = Types::InternalServiceErrorException.new
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module Invitation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Invitation, context: context)
        type = Types::Invitation.new
        type.invitation_id = params[:invitation_id]
        type.creation_date = params[:creation_date]
        type.expiration_date = params[:expiration_date]
        type.status = params[:status]
        type.network_summary = NetworkSummary.build(params[:network_summary], context: "#{context}[:network_summary]") unless params[:network_summary].nil?
        type.arn = params[:arn]
        type
      end
    end

    module InvitationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Invitation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InviteAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InviteAction, context: context)
        type = Types::InviteAction.new
        type.principal = params[:principal]
        type
      end
    end

    module InviteActionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InviteAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListInvitationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInvitationsInput, context: context)
        type = Types::ListInvitationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInvitationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInvitationsOutput, context: context)
        type = Types::ListInvitationsOutput.new
        type.invitations = InvitationList.build(params[:invitations], context: "#{context}[:invitations]") unless params[:invitations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMembersInput, context: context)
        type = Types::ListMembersInput.new
        type.network_id = params[:network_id]
        type.name = params[:name]
        type.status = params[:status]
        type.is_owned = params[:is_owned]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMembersOutput, context: context)
        type = Types::ListMembersOutput.new
        type.members = MemberSummaryList.build(params[:members], context: "#{context}[:members]") unless params[:members].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNetworksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNetworksInput, context: context)
        type = Types::ListNetworksInput.new
        type.name = params[:name]
        type.framework = params[:framework]
        type.status = params[:status]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNetworksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNetworksOutput, context: context)
        type = Types::ListNetworksOutput.new
        type.networks = NetworkSummaryList.build(params[:networks], context: "#{context}[:networks]") unless params[:networks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNodesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNodesInput, context: context)
        type = Types::ListNodesInput.new
        type.network_id = params[:network_id]
        type.member_id = params[:member_id]
        type.status = params[:status]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNodesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNodesOutput, context: context)
        type = Types::ListNodesOutput.new
        type.nodes = NodeSummaryList.build(params[:nodes], context: "#{context}[:nodes]") unless params[:nodes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProposalVotesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProposalVotesInput, context: context)
        type = Types::ListProposalVotesInput.new
        type.network_id = params[:network_id]
        type.proposal_id = params[:proposal_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProposalVotesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProposalVotesOutput, context: context)
        type = Types::ListProposalVotesOutput.new
        type.proposal_votes = ProposalVoteList.build(params[:proposal_votes], context: "#{context}[:proposal_votes]") unless params[:proposal_votes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProposalsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProposalsInput, context: context)
        type = Types::ListProposalsInput.new
        type.network_id = params[:network_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProposalsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProposalsOutput, context: context)
        type = Types::ListProposalsOutput.new
        type.proposals = ProposalSummaryList.build(params[:proposals], context: "#{context}[:proposals]") unless params[:proposals].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = OutputTagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LogConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogConfiguration, context: context)
        type = Types::LogConfiguration.new
        type.enabled = params[:enabled]
        type
      end
    end

    module LogConfigurations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LogConfigurations, context: context)
        type = Types::LogConfigurations.new
        type.cloudwatch = LogConfiguration.build(params[:cloudwatch], context: "#{context}[:cloudwatch]") unless params[:cloudwatch].nil?
        type
      end
    end

    module Member
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Member, context: context)
        type = Types::Member.new
        type.network_id = params[:network_id]
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.framework_attributes = MemberFrameworkAttributes.build(params[:framework_attributes], context: "#{context}[:framework_attributes]") unless params[:framework_attributes].nil?
        type.log_publishing_configuration = MemberLogPublishingConfiguration.build(params[:log_publishing_configuration], context: "#{context}[:log_publishing_configuration]") unless params[:log_publishing_configuration].nil?
        type.status = params[:status]
        type.creation_date = params[:creation_date]
        type.tags = OutputTagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.arn = params[:arn]
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module MemberConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemberConfiguration, context: context)
        type = Types::MemberConfiguration.new
        type.name = params[:name]
        type.description = params[:description]
        type.framework_configuration = MemberFrameworkConfiguration.build(params[:framework_configuration], context: "#{context}[:framework_configuration]") unless params[:framework_configuration].nil?
        type.log_publishing_configuration = MemberLogPublishingConfiguration.build(params[:log_publishing_configuration], context: "#{context}[:log_publishing_configuration]") unless params[:log_publishing_configuration].nil?
        type.tags = InputTagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module MemberFabricAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemberFabricAttributes, context: context)
        type = Types::MemberFabricAttributes.new
        type.admin_username = params[:admin_username]
        type.ca_endpoint = params[:ca_endpoint]
        type
      end
    end

    module MemberFabricConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemberFabricConfiguration, context: context)
        type = Types::MemberFabricConfiguration.new
        type.admin_username = params[:admin_username]
        type.admin_password = params[:admin_password]
        type
      end
    end

    module MemberFabricLogPublishingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemberFabricLogPublishingConfiguration, context: context)
        type = Types::MemberFabricLogPublishingConfiguration.new
        type.ca_logs = LogConfigurations.build(params[:ca_logs], context: "#{context}[:ca_logs]") unless params[:ca_logs].nil?
        type
      end
    end

    module MemberFrameworkAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemberFrameworkAttributes, context: context)
        type = Types::MemberFrameworkAttributes.new
        type.fabric = MemberFabricAttributes.build(params[:fabric], context: "#{context}[:fabric]") unless params[:fabric].nil?
        type
      end
    end

    module MemberFrameworkConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemberFrameworkConfiguration, context: context)
        type = Types::MemberFrameworkConfiguration.new
        type.fabric = MemberFabricConfiguration.build(params[:fabric], context: "#{context}[:fabric]") unless params[:fabric].nil?
        type
      end
    end

    module MemberLogPublishingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemberLogPublishingConfiguration, context: context)
        type = Types::MemberLogPublishingConfiguration.new
        type.fabric = MemberFabricLogPublishingConfiguration.build(params[:fabric], context: "#{context}[:fabric]") unless params[:fabric].nil?
        type
      end
    end

    module MemberSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemberSummary, context: context)
        type = Types::MemberSummary.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.status = params[:status]
        type.creation_date = params[:creation_date]
        type.is_owned = params[:is_owned]
        type.arn = params[:arn]
        type
      end
    end

    module MemberSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MemberSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Network
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Network, context: context)
        type = Types::Network.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.framework = params[:framework]
        type.framework_version = params[:framework_version]
        type.framework_attributes = NetworkFrameworkAttributes.build(params[:framework_attributes], context: "#{context}[:framework_attributes]") unless params[:framework_attributes].nil?
        type.vpc_endpoint_service_name = params[:vpc_endpoint_service_name]
        type.voting_policy = VotingPolicy.build(params[:voting_policy], context: "#{context}[:voting_policy]") unless params[:voting_policy].nil?
        type.status = params[:status]
        type.creation_date = params[:creation_date]
        type.tags = OutputTagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.arn = params[:arn]
        type
      end
    end

    module NetworkEthereumAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkEthereumAttributes, context: context)
        type = Types::NetworkEthereumAttributes.new
        type.chain_id = params[:chain_id]
        type
      end
    end

    module NetworkFabricAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkFabricAttributes, context: context)
        type = Types::NetworkFabricAttributes.new
        type.ordering_service_endpoint = params[:ordering_service_endpoint]
        type.edition = params[:edition]
        type
      end
    end

    module NetworkFabricConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkFabricConfiguration, context: context)
        type = Types::NetworkFabricConfiguration.new
        type.edition = params[:edition]
        type
      end
    end

    module NetworkFrameworkAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkFrameworkAttributes, context: context)
        type = Types::NetworkFrameworkAttributes.new
        type.fabric = NetworkFabricAttributes.build(params[:fabric], context: "#{context}[:fabric]") unless params[:fabric].nil?
        type.ethereum = NetworkEthereumAttributes.build(params[:ethereum], context: "#{context}[:ethereum]") unless params[:ethereum].nil?
        type
      end
    end

    module NetworkFrameworkConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkFrameworkConfiguration, context: context)
        type = Types::NetworkFrameworkConfiguration.new
        type.fabric = NetworkFabricConfiguration.build(params[:fabric], context: "#{context}[:fabric]") unless params[:fabric].nil?
        type
      end
    end

    module NetworkSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkSummary, context: context)
        type = Types::NetworkSummary.new
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.framework = params[:framework]
        type.framework_version = params[:framework_version]
        type.status = params[:status]
        type.creation_date = params[:creation_date]
        type.arn = params[:arn]
        type
      end
    end

    module NetworkSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NetworkSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Node
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Node, context: context)
        type = Types::Node.new
        type.network_id = params[:network_id]
        type.member_id = params[:member_id]
        type.id = params[:id]
        type.instance_type = params[:instance_type]
        type.availability_zone = params[:availability_zone]
        type.framework_attributes = NodeFrameworkAttributes.build(params[:framework_attributes], context: "#{context}[:framework_attributes]") unless params[:framework_attributes].nil?
        type.log_publishing_configuration = NodeLogPublishingConfiguration.build(params[:log_publishing_configuration], context: "#{context}[:log_publishing_configuration]") unless params[:log_publishing_configuration].nil?
        type.state_db = params[:state_db]
        type.status = params[:status]
        type.creation_date = params[:creation_date]
        type.tags = OutputTagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.arn = params[:arn]
        type.kms_key_arn = params[:kms_key_arn]
        type
      end
    end

    module NodeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeConfiguration, context: context)
        type = Types::NodeConfiguration.new
        type.instance_type = params[:instance_type]
        type.availability_zone = params[:availability_zone]
        type.log_publishing_configuration = NodeLogPublishingConfiguration.build(params[:log_publishing_configuration], context: "#{context}[:log_publishing_configuration]") unless params[:log_publishing_configuration].nil?
        type.state_db = params[:state_db]
        type
      end
    end

    module NodeEthereumAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeEthereumAttributes, context: context)
        type = Types::NodeEthereumAttributes.new
        type.http_endpoint = params[:http_endpoint]
        type.web_socket_endpoint = params[:web_socket_endpoint]
        type
      end
    end

    module NodeFabricAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeFabricAttributes, context: context)
        type = Types::NodeFabricAttributes.new
        type.peer_endpoint = params[:peer_endpoint]
        type.peer_event_endpoint = params[:peer_event_endpoint]
        type
      end
    end

    module NodeFabricLogPublishingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeFabricLogPublishingConfiguration, context: context)
        type = Types::NodeFabricLogPublishingConfiguration.new
        type.chaincode_logs = LogConfigurations.build(params[:chaincode_logs], context: "#{context}[:chaincode_logs]") unless params[:chaincode_logs].nil?
        type.peer_logs = LogConfigurations.build(params[:peer_logs], context: "#{context}[:peer_logs]") unless params[:peer_logs].nil?
        type
      end
    end

    module NodeFrameworkAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeFrameworkAttributes, context: context)
        type = Types::NodeFrameworkAttributes.new
        type.fabric = NodeFabricAttributes.build(params[:fabric], context: "#{context}[:fabric]") unless params[:fabric].nil?
        type.ethereum = NodeEthereumAttributes.build(params[:ethereum], context: "#{context}[:ethereum]") unless params[:ethereum].nil?
        type
      end
    end

    module NodeLogPublishingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeLogPublishingConfiguration, context: context)
        type = Types::NodeLogPublishingConfiguration.new
        type.fabric = NodeFabricLogPublishingConfiguration.build(params[:fabric], context: "#{context}[:fabric]") unless params[:fabric].nil?
        type
      end
    end

    module NodeSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NodeSummary, context: context)
        type = Types::NodeSummary.new
        type.id = params[:id]
        type.status = params[:status]
        type.creation_date = params[:creation_date]
        type.availability_zone = params[:availability_zone]
        type.instance_type = params[:instance_type]
        type.arn = params[:arn]
        type
      end
    end

    module NodeSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NodeSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OutputTagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Proposal
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Proposal, context: context)
        type = Types::Proposal.new
        type.proposal_id = params[:proposal_id]
        type.network_id = params[:network_id]
        type.description = params[:description]
        type.actions = ProposalActions.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.proposed_by_member_id = params[:proposed_by_member_id]
        type.proposed_by_member_name = params[:proposed_by_member_name]
        type.status = params[:status]
        type.creation_date = params[:creation_date]
        type.expiration_date = params[:expiration_date]
        type.yes_vote_count = params[:yes_vote_count]
        type.no_vote_count = params[:no_vote_count]
        type.outstanding_vote_count = params[:outstanding_vote_count]
        type.tags = OutputTagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.arn = params[:arn]
        type
      end
    end

    module ProposalActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProposalActions, context: context)
        type = Types::ProposalActions.new
        type.invitations = InviteActionList.build(params[:invitations], context: "#{context}[:invitations]") unless params[:invitations].nil?
        type.removals = RemoveActionList.build(params[:removals], context: "#{context}[:removals]") unless params[:removals].nil?
        type
      end
    end

    module ProposalSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProposalSummary, context: context)
        type = Types::ProposalSummary.new
        type.proposal_id = params[:proposal_id]
        type.description = params[:description]
        type.proposed_by_member_id = params[:proposed_by_member_id]
        type.proposed_by_member_name = params[:proposed_by_member_name]
        type.status = params[:status]
        type.creation_date = params[:creation_date]
        type.expiration_date = params[:expiration_date]
        type.arn = params[:arn]
        type
      end
    end

    module ProposalSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProposalSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProposalVoteList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VoteSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RejectInvitationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectInvitationInput, context: context)
        type = Types::RejectInvitationInput.new
        type.invitation_id = params[:invitation_id]
        type
      end
    end

    module RejectInvitationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectInvitationOutput, context: context)
        type = Types::RejectInvitationOutput.new
        type
      end
    end

    module RemoveAction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveAction, context: context)
        type = Types::RemoveAction.new
        type.member_id = params[:member_id]
        type
      end
    end

    module RemoveActionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RemoveAction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistsException, context: context)
        type = Types::ResourceAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceLimitExceededException, context: context)
        type = Types::ResourceLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module ResourceNotReadyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotReadyException, context: context)
        type = Types::ResourceNotReadyException.new
        type.message = params[:message]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = InputTagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMemberInput, context: context)
        type = Types::UpdateMemberInput.new
        type.network_id = params[:network_id]
        type.member_id = params[:member_id]
        type.log_publishing_configuration = MemberLogPublishingConfiguration.build(params[:log_publishing_configuration], context: "#{context}[:log_publishing_configuration]") unless params[:log_publishing_configuration].nil?
        type
      end
    end

    module UpdateMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMemberOutput, context: context)
        type = Types::UpdateMemberOutput.new
        type
      end
    end

    module UpdateNodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNodeInput, context: context)
        type = Types::UpdateNodeInput.new
        type.network_id = params[:network_id]
        type.member_id = params[:member_id]
        type.node_id = params[:node_id]
        type.log_publishing_configuration = NodeLogPublishingConfiguration.build(params[:log_publishing_configuration], context: "#{context}[:log_publishing_configuration]") unless params[:log_publishing_configuration].nil?
        type
      end
    end

    module UpdateNodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateNodeOutput, context: context)
        type = Types::UpdateNodeOutput.new
        type
      end
    end

    module VoteOnProposalInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VoteOnProposalInput, context: context)
        type = Types::VoteOnProposalInput.new
        type.network_id = params[:network_id]
        type.proposal_id = params[:proposal_id]
        type.voter_member_id = params[:voter_member_id]
        type.vote = params[:vote]
        type
      end
    end

    module VoteOnProposalOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VoteOnProposalOutput, context: context)
        type = Types::VoteOnProposalOutput.new
        type
      end
    end

    module VoteSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VoteSummary, context: context)
        type = Types::VoteSummary.new
        type.vote = params[:vote]
        type.member_name = params[:member_name]
        type.member_id = params[:member_id]
        type
      end
    end

    module VotingPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VotingPolicy, context: context)
        type = Types::VotingPolicy.new
        type.approval_threshold_policy = ApprovalThresholdPolicy.build(params[:approval_threshold_policy], context: "#{context}[:approval_threshold_policy]") unless params[:approval_threshold_policy].nil?
        type
      end
    end

  end
end
