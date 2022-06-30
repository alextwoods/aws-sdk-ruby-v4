# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Detective
  module Validators

    class AcceptInvitationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptInvitationInput, context: context)
        Hearth::Validator.validate!(input[:graph_arn], ::String, context: "#{context}[:graph_arn]")
      end
    end

    class AcceptInvitationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptInvitationOutput, context: context)
      end
    end

    class Account
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Account, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
      end
    end

    class AccountIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AccountList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Account.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Administrator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Administrator, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:graph_arn], ::String, context: "#{context}[:graph_arn]")
        Hearth::Validator.validate!(input[:delegation_time], ::Time, context: "#{context}[:delegation_time]")
      end
    end

    class AdministratorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Administrator.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateGraphInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGraphInput, context: context)
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateGraphOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGraphOutput, context: context)
        Hearth::Validator.validate!(input[:graph_arn], ::String, context: "#{context}[:graph_arn]")
      end
    end

    class CreateMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMembersInput, context: context)
        Hearth::Validator.validate!(input[:graph_arn], ::String, context: "#{context}[:graph_arn]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:disable_email_notification], ::TrueClass, ::FalseClass, context: "#{context}[:disable_email_notification]")
        Validators::AccountList.validate!(input[:accounts], context: "#{context}[:accounts]") unless input[:accounts].nil?
      end
    end

    class CreateMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMembersOutput, context: context)
        Validators::MemberDetailList.validate!(input[:members], context: "#{context}[:members]") unless input[:members].nil?
        Validators::UnprocessedAccountList.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class DeleteGraphInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGraphInput, context: context)
        Hearth::Validator.validate!(input[:graph_arn], ::String, context: "#{context}[:graph_arn]")
      end
    end

    class DeleteGraphOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGraphOutput, context: context)
      end
    end

    class DeleteMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMembersInput, context: context)
        Hearth::Validator.validate!(input[:graph_arn], ::String, context: "#{context}[:graph_arn]")
        Validators::AccountIdList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class DeleteMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMembersOutput, context: context)
        Validators::AccountIdList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Validators::UnprocessedAccountList.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class DescribeOrganizationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:graph_arn], ::String, context: "#{context}[:graph_arn]")
      end
    end

    class DescribeOrganizationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeOrganizationConfigurationOutput, context: context)
        Hearth::Validator.validate!(input[:auto_enable], ::TrueClass, ::FalseClass, context: "#{context}[:auto_enable]")
      end
    end

    class DisableOrganizationAdminAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableOrganizationAdminAccountInput, context: context)
      end
    end

    class DisableOrganizationAdminAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisableOrganizationAdminAccountOutput, context: context)
      end
    end

    class DisassociateMembershipInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateMembershipInput, context: context)
        Hearth::Validator.validate!(input[:graph_arn], ::String, context: "#{context}[:graph_arn]")
      end
    end

    class DisassociateMembershipOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateMembershipOutput, context: context)
      end
    end

    class EnableOrganizationAdminAccountInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableOrganizationAdminAccountInput, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class EnableOrganizationAdminAccountOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EnableOrganizationAdminAccountOutput, context: context)
      end
    end

    class GetMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMembersInput, context: context)
        Hearth::Validator.validate!(input[:graph_arn], ::String, context: "#{context}[:graph_arn]")
        Validators::AccountIdList.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
      end
    end

    class GetMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMembersOutput, context: context)
        Validators::MemberDetailList.validate!(input[:member_details], context: "#{context}[:member_details]") unless input[:member_details].nil?
        Validators::UnprocessedAccountList.validate!(input[:unprocessed_accounts], context: "#{context}[:unprocessed_accounts]") unless input[:unprocessed_accounts].nil?
      end
    end

    class Graph
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Graph, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:created_time], ::Time, context: "#{context}[:created_time]")
      end
    end

    class GraphList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Graph.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListGraphsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGraphsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListGraphsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGraphsOutput, context: context)
        Validators::GraphList.validate!(input[:graph_list], context: "#{context}[:graph_list]") unless input[:graph_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListInvitationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInvitationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListInvitationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListInvitationsOutput, context: context)
        Validators::MemberDetailList.validate!(input[:invitations], context: "#{context}[:invitations]") unless input[:invitations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMembersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMembersInput, context: context)
        Hearth::Validator.validate!(input[:graph_arn], ::String, context: "#{context}[:graph_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListMembersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMembersOutput, context: context)
        Validators::MemberDetailList.validate!(input[:member_details], context: "#{context}[:member_details]") unless input[:member_details].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOrganizationAdminAccountsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrganizationAdminAccountsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListOrganizationAdminAccountsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListOrganizationAdminAccountsOutput, context: context)
        Validators::AdministratorList.validate!(input[:administrators], context: "#{context}[:administrators]") unless input[:administrators].nil?
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
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class MemberDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemberDetail, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:graph_arn], ::String, context: "#{context}[:graph_arn]")
        Hearth::Validator.validate!(input[:master_id], ::String, context: "#{context}[:master_id]")
        Hearth::Validator.validate!(input[:administrator_id], ::String, context: "#{context}[:administrator_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:disabled_reason], ::String, context: "#{context}[:disabled_reason]")
        Hearth::Validator.validate!(input[:invited_time], ::Time, context: "#{context}[:invited_time]")
        Hearth::Validator.validate!(input[:updated_time], ::Time, context: "#{context}[:updated_time]")
        Hearth::Validator.validate!(input[:volume_usage_in_bytes], ::Integer, context: "#{context}[:volume_usage_in_bytes]")
        Hearth::Validator.validate!(input[:volume_usage_updated_time], ::Time, context: "#{context}[:volume_usage_updated_time]")
        Hearth::Validator.validate!(input[:percent_of_graph_utilization], ::Float, context: "#{context}[:percent_of_graph_utilization]")
        Hearth::Validator.validate!(input[:percent_of_graph_utilization_updated_time], ::Time, context: "#{context}[:percent_of_graph_utilization_updated_time]")
        Hearth::Validator.validate!(input[:invitation_type], ::String, context: "#{context}[:invitation_type]")
      end
    end

    class MemberDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MemberDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RejectInvitationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectInvitationInput, context: context)
        Hearth::Validator.validate!(input[:graph_arn], ::String, context: "#{context}[:graph_arn]")
      end
    end

    class RejectInvitationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RejectInvitationOutput, context: context)
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartMonitoringMemberInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMonitoringMemberInput, context: context)
        Hearth::Validator.validate!(input[:graph_arn], ::String, context: "#{context}[:graph_arn]")
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
      end
    end

    class StartMonitoringMemberOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMonitoringMemberOutput, context: context)
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

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TooManyRequestsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyRequestsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnprocessedAccount
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnprocessedAccount, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class UnprocessedAccountList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UnprocessedAccount.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateOrganizationConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOrganizationConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:graph_arn], ::String, context: "#{context}[:graph_arn]")
        Hearth::Validator.validate!(input[:auto_enable], ::TrueClass, ::FalseClass, context: "#{context}[:auto_enable]")
      end
    end

    class UpdateOrganizationConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateOrganizationConfigurationOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
