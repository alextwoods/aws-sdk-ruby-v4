# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Detective
  module Params

    module AcceptInvitationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptInvitationInput, context: context)
        type = Types::AcceptInvitationInput.new
        type.graph_arn = params[:graph_arn]
        type
      end
    end

    module AcceptInvitationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptInvitationOutput, context: context)
        type = Types::AcceptInvitationOutput.new
        type
      end
    end

    module Account
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Account, context: context)
        type = Types::Account.new
        type.account_id = params[:account_id]
        type.email_address = params[:email_address]
        type
      end
    end

    module AccountIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AccountList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Account.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Administrator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Administrator, context: context)
        type = Types::Administrator.new
        type.account_id = params[:account_id]
        type.graph_arn = params[:graph_arn]
        type.delegation_time = params[:delegation_time]
        type
      end
    end

    module AdministratorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Administrator.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateGraphInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGraphInput, context: context)
        type = Types::CreateGraphInput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateGraphOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGraphOutput, context: context)
        type = Types::CreateGraphOutput.new
        type.graph_arn = params[:graph_arn]
        type
      end
    end

    module CreateMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMembersInput, context: context)
        type = Types::CreateMembersInput.new
        type.graph_arn = params[:graph_arn]
        type.message = params[:message]
        type.disable_email_notification = params[:disable_email_notification]
        type.accounts = AccountList.build(params[:accounts], context: "#{context}[:accounts]") unless params[:accounts].nil?
        type
      end
    end

    module CreateMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMembersOutput, context: context)
        type = Types::CreateMembersOutput.new
        type.members = MemberDetailList.build(params[:members], context: "#{context}[:members]") unless params[:members].nil?
        type.unprocessed_accounts = UnprocessedAccountList.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module DeleteGraphInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGraphInput, context: context)
        type = Types::DeleteGraphInput.new
        type.graph_arn = params[:graph_arn]
        type
      end
    end

    module DeleteGraphOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGraphOutput, context: context)
        type = Types::DeleteGraphOutput.new
        type
      end
    end

    module DeleteMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMembersInput, context: context)
        type = Types::DeleteMembersInput.new
        type.graph_arn = params[:graph_arn]
        type.account_ids = AccountIdList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module DeleteMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMembersOutput, context: context)
        type = Types::DeleteMembersOutput.new
        type.account_ids = AccountIdList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.unprocessed_accounts = UnprocessedAccountList.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module DescribeOrganizationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationConfigurationInput, context: context)
        type = Types::DescribeOrganizationConfigurationInput.new
        type.graph_arn = params[:graph_arn]
        type
      end
    end

    module DescribeOrganizationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeOrganizationConfigurationOutput, context: context)
        type = Types::DescribeOrganizationConfigurationOutput.new
        type.auto_enable = params[:auto_enable]
        type
      end
    end

    module DisableOrganizationAdminAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableOrganizationAdminAccountInput, context: context)
        type = Types::DisableOrganizationAdminAccountInput.new
        type
      end
    end

    module DisableOrganizationAdminAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisableOrganizationAdminAccountOutput, context: context)
        type = Types::DisableOrganizationAdminAccountOutput.new
        type
      end
    end

    module DisassociateMembershipInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateMembershipInput, context: context)
        type = Types::DisassociateMembershipInput.new
        type.graph_arn = params[:graph_arn]
        type
      end
    end

    module DisassociateMembershipOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateMembershipOutput, context: context)
        type = Types::DisassociateMembershipOutput.new
        type
      end
    end

    module EnableOrganizationAdminAccountInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableOrganizationAdminAccountInput, context: context)
        type = Types::EnableOrganizationAdminAccountInput.new
        type.account_id = params[:account_id]
        type
      end
    end

    module EnableOrganizationAdminAccountOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EnableOrganizationAdminAccountOutput, context: context)
        type = Types::EnableOrganizationAdminAccountOutput.new
        type
      end
    end

    module GetMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMembersInput, context: context)
        type = Types::GetMembersInput.new
        type.graph_arn = params[:graph_arn]
        type.account_ids = AccountIdList.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type
      end
    end

    module GetMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMembersOutput, context: context)
        type = Types::GetMembersOutput.new
        type.member_details = MemberDetailList.build(params[:member_details], context: "#{context}[:member_details]") unless params[:member_details].nil?
        type.unprocessed_accounts = UnprocessedAccountList.build(params[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless params[:unprocessed_accounts].nil?
        type
      end
    end

    module Graph
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Graph, context: context)
        type = Types::Graph.new
        type.arn = params[:arn]
        type.created_time = params[:created_time]
        type
      end
    end

    module GraphList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Graph.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module ListGraphsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGraphsInput, context: context)
        type = Types::ListGraphsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListGraphsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGraphsOutput, context: context)
        type = Types::ListGraphsOutput.new
        type.graph_list = GraphList.build(params[:graph_list], context: "#{context}[:graph_list]") unless params[:graph_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListInvitationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInvitationsInput, context: context)
        type = Types::ListInvitationsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListInvitationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListInvitationsOutput, context: context)
        type = Types::ListInvitationsOutput.new
        type.invitations = MemberDetailList.build(params[:invitations], context: "#{context}[:invitations]") unless params[:invitations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMembersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMembersInput, context: context)
        type = Types::ListMembersInput.new
        type.graph_arn = params[:graph_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListMembersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMembersOutput, context: context)
        type = Types::ListMembersOutput.new
        type.member_details = MemberDetailList.build(params[:member_details], context: "#{context}[:member_details]") unless params[:member_details].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOrganizationAdminAccountsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrganizationAdminAccountsInput, context: context)
        type = Types::ListOrganizationAdminAccountsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListOrganizationAdminAccountsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListOrganizationAdminAccountsOutput, context: context)
        type = Types::ListOrganizationAdminAccountsOutput.new
        type.administrators = AdministratorList.build(params[:administrators], context: "#{context}[:administrators]") unless params[:administrators].nil?
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
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module MemberDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemberDetail, context: context)
        type = Types::MemberDetail.new
        type.account_id = params[:account_id]
        type.email_address = params[:email_address]
        type.graph_arn = params[:graph_arn]
        type.master_id = params[:master_id]
        type.administrator_id = params[:administrator_id]
        type.status = params[:status]
        type.disabled_reason = params[:disabled_reason]
        type.invited_time = params[:invited_time]
        type.updated_time = params[:updated_time]
        type.volume_usage_in_bytes = params[:volume_usage_in_bytes]
        type.volume_usage_updated_time = params[:volume_usage_updated_time]
        type.percent_of_graph_utilization = params[:percent_of_graph_utilization]
        type.percent_of_graph_utilization_updated_time = params[:percent_of_graph_utilization_updated_time]
        type.invitation_type = params[:invitation_type]
        type
      end
    end

    module MemberDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MemberDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RejectInvitationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RejectInvitationInput, context: context)
        type = Types::RejectInvitationInput.new
        type.graph_arn = params[:graph_arn]
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

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module StartMonitoringMemberInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMonitoringMemberInput, context: context)
        type = Types::StartMonitoringMemberInput.new
        type.graph_arn = params[:graph_arn]
        type.account_id = params[:account_id]
        type
      end
    end

    module StartMonitoringMemberOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMonitoringMemberOutput, context: context)
        type = Types::StartMonitoringMemberOutput.new
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

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TooManyRequestsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyRequestsException, context: context)
        type = Types::TooManyRequestsException.new
        type.message = params[:message]
        type
      end
    end

    module UnprocessedAccount
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnprocessedAccount, context: context)
        type = Types::UnprocessedAccount.new
        type.account_id = params[:account_id]
        type.reason = params[:reason]
        type
      end
    end

    module UnprocessedAccountList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UnprocessedAccount.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module UpdateOrganizationConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOrganizationConfigurationInput, context: context)
        type = Types::UpdateOrganizationConfigurationInput.new
        type.graph_arn = params[:graph_arn]
        type.auto_enable = params[:auto_enable]
        type
      end
    end

    module UpdateOrganizationConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateOrganizationConfigurationOutput, context: context)
        type = Types::UpdateOrganizationConfigurationOutput.new
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

  end
end
