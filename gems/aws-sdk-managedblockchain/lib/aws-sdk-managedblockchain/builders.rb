# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ManagedBlockchain
  module Builders

    # Operation Builder for CreateMember
    class CreateMember
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:network_id].to_s.empty?
          raise ArgumentError, "HTTP label :network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/networks/%<NetworkId>s/members',
            NetworkId: Hearth::HTTP.uri_escape(input[:network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['InvitationId'] = input[:invitation_id] unless input[:invitation_id].nil?
        data['MemberConfiguration'] = Builders::MemberConfiguration.build(input[:member_configuration]) unless input[:member_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for MemberConfiguration
    class MemberConfiguration
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['FrameworkConfiguration'] = Builders::MemberFrameworkConfiguration.build(input[:framework_configuration]) unless input[:framework_configuration].nil?
        data['LogPublishingConfiguration'] = Builders::MemberLogPublishingConfiguration.build(input[:log_publishing_configuration]) unless input[:log_publishing_configuration].nil?
        data['Tags'] = Builders::InputTagMap.build(input[:tags]) unless input[:tags].nil?
        data['KmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data
      end
    end

    # Map Builder for InputTagMap
    class InputTagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for MemberLogPublishingConfiguration
    class MemberLogPublishingConfiguration
      def self.build(input)
        data = {}
        data['Fabric'] = Builders::MemberFabricLogPublishingConfiguration.build(input[:fabric]) unless input[:fabric].nil?
        data
      end
    end

    # Structure Builder for MemberFabricLogPublishingConfiguration
    class MemberFabricLogPublishingConfiguration
      def self.build(input)
        data = {}
        data['CaLogs'] = Builders::LogConfigurations.build(input[:ca_logs]) unless input[:ca_logs].nil?
        data
      end
    end

    # Structure Builder for LogConfigurations
    class LogConfigurations
      def self.build(input)
        data = {}
        data['Cloudwatch'] = Builders::LogConfiguration.build(input[:cloudwatch]) unless input[:cloudwatch].nil?
        data
      end
    end

    # Structure Builder for LogConfiguration
    class LogConfiguration
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data
      end
    end

    # Structure Builder for MemberFrameworkConfiguration
    class MemberFrameworkConfiguration
      def self.build(input)
        data = {}
        data['Fabric'] = Builders::MemberFabricConfiguration.build(input[:fabric]) unless input[:fabric].nil?
        data
      end
    end

    # Structure Builder for MemberFabricConfiguration
    class MemberFabricConfiguration
      def self.build(input)
        data = {}
        data['AdminUsername'] = input[:admin_username] unless input[:admin_username].nil?
        data['AdminPassword'] = input[:admin_password] unless input[:admin_password].nil?
        data
      end
    end

    # Operation Builder for CreateNetwork
    class CreateNetwork
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/networks')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Framework'] = input[:framework] unless input[:framework].nil?
        data['FrameworkVersion'] = input[:framework_version] unless input[:framework_version].nil?
        data['FrameworkConfiguration'] = Builders::NetworkFrameworkConfiguration.build(input[:framework_configuration]) unless input[:framework_configuration].nil?
        data['VotingPolicy'] = Builders::VotingPolicy.build(input[:voting_policy]) unless input[:voting_policy].nil?
        data['MemberConfiguration'] = Builders::MemberConfiguration.build(input[:member_configuration]) unless input[:member_configuration].nil?
        data['Tags'] = Builders::InputTagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for VotingPolicy
    class VotingPolicy
      def self.build(input)
        data = {}
        data['ApprovalThresholdPolicy'] = Builders::ApprovalThresholdPolicy.build(input[:approval_threshold_policy]) unless input[:approval_threshold_policy].nil?
        data
      end
    end

    # Structure Builder for ApprovalThresholdPolicy
    class ApprovalThresholdPolicy
      def self.build(input)
        data = {}
        data['ThresholdPercentage'] = input[:threshold_percentage] unless input[:threshold_percentage].nil?
        data['ProposalDurationInHours'] = input[:proposal_duration_in_hours] unless input[:proposal_duration_in_hours].nil?
        data['ThresholdComparator'] = input[:threshold_comparator] unless input[:threshold_comparator].nil?
        data
      end
    end

    # Structure Builder for NetworkFrameworkConfiguration
    class NetworkFrameworkConfiguration
      def self.build(input)
        data = {}
        data['Fabric'] = Builders::NetworkFabricConfiguration.build(input[:fabric]) unless input[:fabric].nil?
        data
      end
    end

    # Structure Builder for NetworkFabricConfiguration
    class NetworkFabricConfiguration
      def self.build(input)
        data = {}
        data['Edition'] = input[:edition] unless input[:edition].nil?
        data
      end
    end

    # Operation Builder for CreateNode
    class CreateNode
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:network_id].to_s.empty?
          raise ArgumentError, "HTTP label :network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/networks/%<NetworkId>s/nodes',
            NetworkId: Hearth::HTTP.uri_escape(input[:network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['MemberId'] = input[:member_id] unless input[:member_id].nil?
        data['NodeConfiguration'] = Builders::NodeConfiguration.build(input[:node_configuration]) unless input[:node_configuration].nil?
        data['Tags'] = Builders::InputTagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for NodeConfiguration
    class NodeConfiguration
      def self.build(input)
        data = {}
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['AvailabilityZone'] = input[:availability_zone] unless input[:availability_zone].nil?
        data['LogPublishingConfiguration'] = Builders::NodeLogPublishingConfiguration.build(input[:log_publishing_configuration]) unless input[:log_publishing_configuration].nil?
        data['StateDB'] = input[:state_db] unless input[:state_db].nil?
        data
      end
    end

    # Structure Builder for NodeLogPublishingConfiguration
    class NodeLogPublishingConfiguration
      def self.build(input)
        data = {}
        data['Fabric'] = Builders::NodeFabricLogPublishingConfiguration.build(input[:fabric]) unless input[:fabric].nil?
        data
      end
    end

    # Structure Builder for NodeFabricLogPublishingConfiguration
    class NodeFabricLogPublishingConfiguration
      def self.build(input)
        data = {}
        data['ChaincodeLogs'] = Builders::LogConfigurations.build(input[:chaincode_logs]) unless input[:chaincode_logs].nil?
        data['PeerLogs'] = Builders::LogConfigurations.build(input[:peer_logs]) unless input[:peer_logs].nil?
        data
      end
    end

    # Operation Builder for CreateProposal
    class CreateProposal
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:network_id].to_s.empty?
          raise ArgumentError, "HTTP label :network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/networks/%<NetworkId>s/proposals',
            NetworkId: Hearth::HTTP.uri_escape(input[:network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['MemberId'] = input[:member_id] unless input[:member_id].nil?
        data['Actions'] = Builders::ProposalActions.build(input[:actions]) unless input[:actions].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = Builders::InputTagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ProposalActions
    class ProposalActions
      def self.build(input)
        data = {}
        data['Invitations'] = Builders::InviteActionList.build(input[:invitations]) unless input[:invitations].nil?
        data['Removals'] = Builders::RemoveActionList.build(input[:removals]) unless input[:removals].nil?
        data
      end
    end

    # List Builder for RemoveActionList
    class RemoveActionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RemoveAction.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RemoveAction
    class RemoveAction
      def self.build(input)
        data = {}
        data['MemberId'] = input[:member_id] unless input[:member_id].nil?
        data
      end
    end

    # List Builder for InviteActionList
    class InviteActionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InviteAction.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InviteAction
    class InviteAction
      def self.build(input)
        data = {}
        data['Principal'] = input[:principal] unless input[:principal].nil?
        data
      end
    end

    # Operation Builder for DeleteMember
    class DeleteMember
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:network_id].to_s.empty?
          raise ArgumentError, "HTTP label :network_id cannot be nil or empty."
        end
        if input[:member_id].to_s.empty?
          raise ArgumentError, "HTTP label :member_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/networks/%<NetworkId>s/members/%<MemberId>s',
            NetworkId: Hearth::HTTP.uri_escape(input[:network_id].to_s),
            MemberId: Hearth::HTTP.uri_escape(input[:member_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteNode
    class DeleteNode
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:network_id].to_s.empty?
          raise ArgumentError, "HTTP label :network_id cannot be nil or empty."
        end
        if input[:node_id].to_s.empty?
          raise ArgumentError, "HTTP label :node_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/networks/%<NetworkId>s/nodes/%<NodeId>s',
            NetworkId: Hearth::HTTP.uri_escape(input[:network_id].to_s),
            NodeId: Hearth::HTTP.uri_escape(input[:node_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['memberId'] = input[:member_id].to_s unless input[:member_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetMember
    class GetMember
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:network_id].to_s.empty?
          raise ArgumentError, "HTTP label :network_id cannot be nil or empty."
        end
        if input[:member_id].to_s.empty?
          raise ArgumentError, "HTTP label :member_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/networks/%<NetworkId>s/members/%<MemberId>s',
            NetworkId: Hearth::HTTP.uri_escape(input[:network_id].to_s),
            MemberId: Hearth::HTTP.uri_escape(input[:member_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetNetwork
    class GetNetwork
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:network_id].to_s.empty?
          raise ArgumentError, "HTTP label :network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/networks/%<NetworkId>s',
            NetworkId: Hearth::HTTP.uri_escape(input[:network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetNode
    class GetNode
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:network_id].to_s.empty?
          raise ArgumentError, "HTTP label :network_id cannot be nil or empty."
        end
        if input[:node_id].to_s.empty?
          raise ArgumentError, "HTTP label :node_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/networks/%<NetworkId>s/nodes/%<NodeId>s',
            NetworkId: Hearth::HTTP.uri_escape(input[:network_id].to_s),
            NodeId: Hearth::HTTP.uri_escape(input[:node_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['memberId'] = input[:member_id].to_s unless input[:member_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetProposal
    class GetProposal
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:network_id].to_s.empty?
          raise ArgumentError, "HTTP label :network_id cannot be nil or empty."
        end
        if input[:proposal_id].to_s.empty?
          raise ArgumentError, "HTTP label :proposal_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/networks/%<NetworkId>s/proposals/%<ProposalId>s',
            NetworkId: Hearth::HTTP.uri_escape(input[:network_id].to_s),
            ProposalId: Hearth::HTTP.uri_escape(input[:proposal_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListInvitations
    class ListInvitations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/invitations')
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListMembers
    class ListMembers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:network_id].to_s.empty?
          raise ArgumentError, "HTTP label :network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/networks/%<NetworkId>s/members',
            NetworkId: Hearth::HTTP.uri_escape(input[:network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['name'] = input[:name].to_s unless input[:name].nil?
        params['status'] = input[:status].to_s unless input[:status].nil?
        params['isOwned'] = input[:is_owned].to_s unless input[:is_owned].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListNetworks
    class ListNetworks
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/networks')
        params = Hearth::Query::ParamList.new
        params['name'] = input[:name].to_s unless input[:name].nil?
        params['framework'] = input[:framework].to_s unless input[:framework].nil?
        params['status'] = input[:status].to_s unless input[:status].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListNodes
    class ListNodes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:network_id].to_s.empty?
          raise ArgumentError, "HTTP label :network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/networks/%<NetworkId>s/nodes',
            NetworkId: Hearth::HTTP.uri_escape(input[:network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['memberId'] = input[:member_id].to_s unless input[:member_id].nil?
        params['status'] = input[:status].to_s unless input[:status].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListProposalVotes
    class ListProposalVotes
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:network_id].to_s.empty?
          raise ArgumentError, "HTTP label :network_id cannot be nil or empty."
        end
        if input[:proposal_id].to_s.empty?
          raise ArgumentError, "HTTP label :proposal_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/networks/%<NetworkId>s/proposals/%<ProposalId>s/votes',
            NetworkId: Hearth::HTTP.uri_escape(input[:network_id].to_s),
            ProposalId: Hearth::HTTP.uri_escape(input[:proposal_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListProposals
    class ListProposals
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:network_id].to_s.empty?
          raise ArgumentError, "HTTP label :network_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/networks/%<NetworkId>s/proposals',
            NetworkId: Hearth::HTTP.uri_escape(input[:network_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for RejectInvitation
    class RejectInvitation
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:invitation_id].to_s.empty?
          raise ArgumentError, "HTTP label :invitation_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/invitations/%<InvitationId>s',
            InvitationId: Hearth::HTTP.uri_escape(input[:invitation_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = Builders::InputTagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<ResourceArn>s',
            ResourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateMember
    class UpdateMember
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:network_id].to_s.empty?
          raise ArgumentError, "HTTP label :network_id cannot be nil or empty."
        end
        if input[:member_id].to_s.empty?
          raise ArgumentError, "HTTP label :member_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/networks/%<NetworkId>s/members/%<MemberId>s',
            NetworkId: Hearth::HTTP.uri_escape(input[:network_id].to_s),
            MemberId: Hearth::HTTP.uri_escape(input[:member_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['LogPublishingConfiguration'] = Builders::MemberLogPublishingConfiguration.build(input[:log_publishing_configuration]) unless input[:log_publishing_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateNode
    class UpdateNode
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:network_id].to_s.empty?
          raise ArgumentError, "HTTP label :network_id cannot be nil or empty."
        end
        if input[:node_id].to_s.empty?
          raise ArgumentError, "HTTP label :node_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/networks/%<NetworkId>s/nodes/%<NodeId>s',
            NetworkId: Hearth::HTTP.uri_escape(input[:network_id].to_s),
            NodeId: Hearth::HTTP.uri_escape(input[:node_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['MemberId'] = input[:member_id] unless input[:member_id].nil?
        data['LogPublishingConfiguration'] = Builders::NodeLogPublishingConfiguration.build(input[:log_publishing_configuration]) unless input[:log_publishing_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for VoteOnProposal
    class VoteOnProposal
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:network_id].to_s.empty?
          raise ArgumentError, "HTTP label :network_id cannot be nil or empty."
        end
        if input[:proposal_id].to_s.empty?
          raise ArgumentError, "HTTP label :proposal_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/networks/%<NetworkId>s/proposals/%<ProposalId>s/votes',
            NetworkId: Hearth::HTTP.uri_escape(input[:network_id].to_s),
            ProposalId: Hearth::HTTP.uri_escape(input[:proposal_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['VoterMemberId'] = input[:voter_member_id] unless input[:voter_member_id].nil?
        data['Vote'] = input[:vote] unless input[:vote].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
