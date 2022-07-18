# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Route53RecoveryReadiness
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CellOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CellOutput, context: context)
        Hearth::Validator.validate!(input[:cell_arn], ::String, context: "#{context}[:cell_arn]")
        Hearth::Validator.validate!(input[:cell_name], ::String, context: "#{context}[:cell_name]")
        List____listOf__string.validate!(input[:cells], context: "#{context}[:cells]") unless input[:cells].nil?
        List____listOf__string.validate!(input[:parent_readiness_scopes], context: "#{context}[:parent_readiness_scopes]") unless input[:parent_readiness_scopes].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateCellInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCellInput, context: context)
        Hearth::Validator.validate!(input[:cell_name], ::String, context: "#{context}[:cell_name]")
        List____listOf__string.validate!(input[:cells], context: "#{context}[:cells]") unless input[:cells].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCellOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCellOutput, context: context)
        Hearth::Validator.validate!(input[:cell_arn], ::String, context: "#{context}[:cell_arn]")
        Hearth::Validator.validate!(input[:cell_name], ::String, context: "#{context}[:cell_name]")
        List____listOf__string.validate!(input[:cells], context: "#{context}[:cells]") unless input[:cells].nil?
        List____listOf__string.validate!(input[:parent_readiness_scopes], context: "#{context}[:parent_readiness_scopes]") unless input[:parent_readiness_scopes].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateCrossAccountAuthorizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCrossAccountAuthorizationInput, context: context)
        Hearth::Validator.validate!(input[:cross_account_authorization], ::String, context: "#{context}[:cross_account_authorization]")
      end
    end

    class CreateCrossAccountAuthorizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCrossAccountAuthorizationOutput, context: context)
        Hearth::Validator.validate!(input[:cross_account_authorization], ::String, context: "#{context}[:cross_account_authorization]")
      end
    end

    class CreateReadinessCheckInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReadinessCheckInput, context: context)
        Hearth::Validator.validate!(input[:readiness_check_name], ::String, context: "#{context}[:readiness_check_name]")
        Hearth::Validator.validate!(input[:resource_set_name], ::String, context: "#{context}[:resource_set_name]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateReadinessCheckOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReadinessCheckOutput, context: context)
        Hearth::Validator.validate!(input[:readiness_check_arn], ::String, context: "#{context}[:readiness_check_arn]")
        Hearth::Validator.validate!(input[:readiness_check_name], ::String, context: "#{context}[:readiness_check_name]")
        Hearth::Validator.validate!(input[:resource_set], ::String, context: "#{context}[:resource_set]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRecoveryGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRecoveryGroupInput, context: context)
        List____listOf__string.validate!(input[:cells], context: "#{context}[:cells]") unless input[:cells].nil?
        Hearth::Validator.validate!(input[:recovery_group_name], ::String, context: "#{context}[:recovery_group_name]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRecoveryGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRecoveryGroupOutput, context: context)
        List____listOf__string.validate!(input[:cells], context: "#{context}[:cells]") unless input[:cells].nil?
        Hearth::Validator.validate!(input[:recovery_group_arn], ::String, context: "#{context}[:recovery_group_arn]")
        Hearth::Validator.validate!(input[:recovery_group_name], ::String, context: "#{context}[:recovery_group_name]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateResourceSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceSetInput, context: context)
        Hearth::Validator.validate!(input[:resource_set_name], ::String, context: "#{context}[:resource_set_name]")
        Hearth::Validator.validate!(input[:resource_set_type], ::String, context: "#{context}[:resource_set_type]")
        List____listOfResource.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateResourceSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceSetOutput, context: context)
        Hearth::Validator.validate!(input[:resource_set_arn], ::String, context: "#{context}[:resource_set_arn]")
        Hearth::Validator.validate!(input[:resource_set_name], ::String, context: "#{context}[:resource_set_name]")
        Hearth::Validator.validate!(input[:resource_set_type], ::String, context: "#{context}[:resource_set_type]")
        List____listOfResource.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DNSTargetResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DNSTargetResource, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:hosted_zone_arn], ::String, context: "#{context}[:hosted_zone_arn]")
        Hearth::Validator.validate!(input[:record_set_id], ::String, context: "#{context}[:record_set_id]")
        Hearth::Validator.validate!(input[:record_type], ::String, context: "#{context}[:record_type]")
        TargetResource.validate!(input[:target_resource], context: "#{context}[:target_resource]") unless input[:target_resource].nil?
      end
    end

    class DeleteCellInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCellInput, context: context)
        Hearth::Validator.validate!(input[:cell_name], ::String, context: "#{context}[:cell_name]")
      end
    end

    class DeleteCellOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCellOutput, context: context)
      end
    end

    class DeleteCrossAccountAuthorizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCrossAccountAuthorizationInput, context: context)
        Hearth::Validator.validate!(input[:cross_account_authorization], ::String, context: "#{context}[:cross_account_authorization]")
      end
    end

    class DeleteCrossAccountAuthorizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCrossAccountAuthorizationOutput, context: context)
      end
    end

    class DeleteReadinessCheckInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReadinessCheckInput, context: context)
        Hearth::Validator.validate!(input[:readiness_check_name], ::String, context: "#{context}[:readiness_check_name]")
      end
    end

    class DeleteReadinessCheckOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteReadinessCheckOutput, context: context)
      end
    end

    class DeleteRecoveryGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecoveryGroupInput, context: context)
        Hearth::Validator.validate!(input[:recovery_group_name], ::String, context: "#{context}[:recovery_group_name]")
      end
    end

    class DeleteRecoveryGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRecoveryGroupOutput, context: context)
      end
    end

    class DeleteResourceSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceSetInput, context: context)
        Hearth::Validator.validate!(input[:resource_set_name], ::String, context: "#{context}[:resource_set_name]")
      end
    end

    class DeleteResourceSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceSetOutput, context: context)
      end
    end

    class GetArchitectureRecommendationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetArchitectureRecommendationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:recovery_group_name], ::String, context: "#{context}[:recovery_group_name]")
      end
    end

    class GetArchitectureRecommendationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetArchitectureRecommendationsOutput, context: context)
        Hearth::Validator.validate!(input[:last_audit_timestamp], ::Time, context: "#{context}[:last_audit_timestamp]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfRecommendation.validate!(input[:recommendations], context: "#{context}[:recommendations]") unless input[:recommendations].nil?
      end
    end

    class GetCellInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCellInput, context: context)
        Hearth::Validator.validate!(input[:cell_name], ::String, context: "#{context}[:cell_name]")
      end
    end

    class GetCellOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCellOutput, context: context)
        Hearth::Validator.validate!(input[:cell_arn], ::String, context: "#{context}[:cell_arn]")
        Hearth::Validator.validate!(input[:cell_name], ::String, context: "#{context}[:cell_name]")
        List____listOf__string.validate!(input[:cells], context: "#{context}[:cells]") unless input[:cells].nil?
        List____listOf__string.validate!(input[:parent_readiness_scopes], context: "#{context}[:parent_readiness_scopes]") unless input[:parent_readiness_scopes].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetCellReadinessSummaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCellReadinessSummaryInput, context: context)
        Hearth::Validator.validate!(input[:cell_name], ::String, context: "#{context}[:cell_name]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetCellReadinessSummaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCellReadinessSummaryOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:readiness], ::String, context: "#{context}[:readiness]")
        List____listOfReadinessCheckSummary.validate!(input[:readiness_checks], context: "#{context}[:readiness_checks]") unless input[:readiness_checks].nil?
      end
    end

    class GetReadinessCheckInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReadinessCheckInput, context: context)
        Hearth::Validator.validate!(input[:readiness_check_name], ::String, context: "#{context}[:readiness_check_name]")
      end
    end

    class GetReadinessCheckOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReadinessCheckOutput, context: context)
        Hearth::Validator.validate!(input[:readiness_check_arn], ::String, context: "#{context}[:readiness_check_arn]")
        Hearth::Validator.validate!(input[:readiness_check_name], ::String, context: "#{context}[:readiness_check_name]")
        Hearth::Validator.validate!(input[:resource_set], ::String, context: "#{context}[:resource_set]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetReadinessCheckResourceStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReadinessCheckResourceStatusInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:readiness_check_name], ::String, context: "#{context}[:readiness_check_name]")
        Hearth::Validator.validate!(input[:resource_identifier], ::String, context: "#{context}[:resource_identifier]")
      end
    end

    class GetReadinessCheckResourceStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReadinessCheckResourceStatusOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:readiness], ::String, context: "#{context}[:readiness]")
        List____listOfRuleResult.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class GetReadinessCheckStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReadinessCheckStatusInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:readiness_check_name], ::String, context: "#{context}[:readiness_check_name]")
      end
    end

    class GetReadinessCheckStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetReadinessCheckStatusOutput, context: context)
        List____listOfMessage.validate!(input[:messages], context: "#{context}[:messages]") unless input[:messages].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:readiness], ::String, context: "#{context}[:readiness]")
        List____listOfResourceResult.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
      end
    end

    class GetRecoveryGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecoveryGroupInput, context: context)
        Hearth::Validator.validate!(input[:recovery_group_name], ::String, context: "#{context}[:recovery_group_name]")
      end
    end

    class GetRecoveryGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecoveryGroupOutput, context: context)
        List____listOf__string.validate!(input[:cells], context: "#{context}[:cells]") unless input[:cells].nil?
        Hearth::Validator.validate!(input[:recovery_group_arn], ::String, context: "#{context}[:recovery_group_arn]")
        Hearth::Validator.validate!(input[:recovery_group_name], ::String, context: "#{context}[:recovery_group_name]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetRecoveryGroupReadinessSummaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecoveryGroupReadinessSummaryInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:recovery_group_name], ::String, context: "#{context}[:recovery_group_name]")
      end
    end

    class GetRecoveryGroupReadinessSummaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecoveryGroupReadinessSummaryOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:readiness], ::String, context: "#{context}[:readiness]")
        List____listOfReadinessCheckSummary.validate!(input[:readiness_checks], context: "#{context}[:readiness_checks]") unless input[:readiness_checks].nil?
      end
    end

    class GetResourceSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceSetInput, context: context)
        Hearth::Validator.validate!(input[:resource_set_name], ::String, context: "#{context}[:resource_set_name]")
      end
    end

    class GetResourceSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceSetOutput, context: context)
        Hearth::Validator.validate!(input[:resource_set_arn], ::String, context: "#{context}[:resource_set_arn]")
        Hearth::Validator.validate!(input[:resource_set_name], ::String, context: "#{context}[:resource_set_name]")
        Hearth::Validator.validate!(input[:resource_set_type], ::String, context: "#{context}[:resource_set_type]")
        List____listOfResource.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListCellsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCellsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCellsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCellsOutput, context: context)
        List____listOfCellOutput.validate!(input[:cells], context: "#{context}[:cells]") unless input[:cells].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCrossAccountAuthorizationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCrossAccountAuthorizationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCrossAccountAuthorizationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCrossAccountAuthorizationsOutput, context: context)
        List____listOfCrossAccountAuthorization.validate!(input[:cross_account_authorizations], context: "#{context}[:cross_account_authorizations]") unless input[:cross_account_authorizations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListReadinessChecksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReadinessChecksInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListReadinessChecksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListReadinessChecksOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfReadinessCheckOutput.validate!(input[:readiness_checks], context: "#{context}[:readiness_checks]") unless input[:readiness_checks].nil?
      end
    end

    class ListRecoveryGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecoveryGroupsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRecoveryGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecoveryGroupsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfRecoveryGroupOutput.validate!(input[:recovery_groups], context: "#{context}[:recovery_groups]") unless input[:recovery_groups].nil?
      end
    end

    class ListResourceSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceSetsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourceSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceSetsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfResourceSetOutput.validate!(input[:resource_sets], context: "#{context}[:resource_sets]") unless input[:resource_sets].nil?
      end
    end

    class ListRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRulesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class ListRulesOperationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRulesOperationOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        List____listOfListRulesOutput.validate!(input[:rules], context: "#{context}[:rules]") unless input[:rules].nil?
      end
    end

    class ListRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRulesOutput, context: context)
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:rule_description], ::String, context: "#{context}[:rule_description]")
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
      end
    end

    class ListTagsForResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourcesInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourcesOutput, context: context)
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Message
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Message, context: context)
        Hearth::Validator.validate!(input[:message_text], ::String, context: "#{context}[:message_text]")
      end
    end

    class NLBResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NLBResource, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class R53ResourceRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::R53ResourceRecord, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:record_set_id], ::String, context: "#{context}[:record_set_id]")
      end
    end

    class ReadinessCheckOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReadinessCheckOutput, context: context)
        Hearth::Validator.validate!(input[:readiness_check_arn], ::String, context: "#{context}[:readiness_check_arn]")
        Hearth::Validator.validate!(input[:readiness_check_name], ::String, context: "#{context}[:readiness_check_name]")
        Hearth::Validator.validate!(input[:resource_set], ::String, context: "#{context}[:resource_set]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ReadinessCheckSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReadinessCheckSummary, context: context)
        Hearth::Validator.validate!(input[:readiness], ::String, context: "#{context}[:readiness]")
        Hearth::Validator.validate!(input[:readiness_check_name], ::String, context: "#{context}[:readiness_check_name]")
      end
    end

    class Recommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Recommendation, context: context)
        Hearth::Validator.validate!(input[:recommendation_text], ::String, context: "#{context}[:recommendation_text]")
      end
    end

    class RecoveryGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecoveryGroupOutput, context: context)
        List____listOf__string.validate!(input[:cells], context: "#{context}[:cells]") unless input[:cells].nil?
        Hearth::Validator.validate!(input[:recovery_group_arn], ::String, context: "#{context}[:recovery_group_arn]")
        Hearth::Validator.validate!(input[:recovery_group_name], ::String, context: "#{context}[:recovery_group_name]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Resource, context: context)
        Hearth::Validator.validate!(input[:component_id], ::String, context: "#{context}[:component_id]")
        DNSTargetResource.validate!(input[:dns_target_resource], context: "#{context}[:dns_target_resource]") unless input[:dns_target_resource].nil?
        List____listOf__string.validate!(input[:readiness_scopes], context: "#{context}[:readiness_scopes]") unless input[:readiness_scopes].nil?
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceResult, context: context)
        Hearth::Validator.validate!(input[:component_id], ::String, context: "#{context}[:component_id]")
        Hearth::Validator.validate!(input[:last_checked_timestamp], ::Time, context: "#{context}[:last_checked_timestamp]")
        Hearth::Validator.validate!(input[:readiness], ::String, context: "#{context}[:readiness]")
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ResourceSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceSetOutput, context: context)
        Hearth::Validator.validate!(input[:resource_set_arn], ::String, context: "#{context}[:resource_set_arn]")
        Hearth::Validator.validate!(input[:resource_set_name], ::String, context: "#{context}[:resource_set_name]")
        Hearth::Validator.validate!(input[:resource_set_type], ::String, context: "#{context}[:resource_set_type]")
        List____listOfResource.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class RuleResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleResult, context: context)
        Hearth::Validator.validate!(input[:last_checked_timestamp], ::Time, context: "#{context}[:last_checked_timestamp]")
        List____listOfMessage.validate!(input[:messages], context: "#{context}[:messages]") unless input[:messages].nil?
        Hearth::Validator.validate!(input[:readiness], ::String, context: "#{context}[:readiness]")
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TargetResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetResource, context: context)
        NLBResource.validate!(input[:nlb_resource], context: "#{context}[:nlb_resource]") unless input[:nlb_resource].nil?
        R53ResourceRecord.validate!(input[:r53_resource], context: "#{context}[:r53_resource]") unless input[:r53_resource].nil?
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        List____listOf__string.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateCellInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCellInput, context: context)
        Hearth::Validator.validate!(input[:cell_name], ::String, context: "#{context}[:cell_name]")
        List____listOf__string.validate!(input[:cells], context: "#{context}[:cells]") unless input[:cells].nil?
      end
    end

    class UpdateCellOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCellOutput, context: context)
        Hearth::Validator.validate!(input[:cell_arn], ::String, context: "#{context}[:cell_arn]")
        Hearth::Validator.validate!(input[:cell_name], ::String, context: "#{context}[:cell_name]")
        List____listOf__string.validate!(input[:cells], context: "#{context}[:cells]") unless input[:cells].nil?
        List____listOf__string.validate!(input[:parent_readiness_scopes], context: "#{context}[:parent_readiness_scopes]") unless input[:parent_readiness_scopes].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateReadinessCheckInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReadinessCheckInput, context: context)
        Hearth::Validator.validate!(input[:readiness_check_name], ::String, context: "#{context}[:readiness_check_name]")
        Hearth::Validator.validate!(input[:resource_set_name], ::String, context: "#{context}[:resource_set_name]")
      end
    end

    class UpdateReadinessCheckOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateReadinessCheckOutput, context: context)
        Hearth::Validator.validate!(input[:readiness_check_arn], ::String, context: "#{context}[:readiness_check_arn]")
        Hearth::Validator.validate!(input[:readiness_check_name], ::String, context: "#{context}[:readiness_check_name]")
        Hearth::Validator.validate!(input[:resource_set], ::String, context: "#{context}[:resource_set]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateRecoveryGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRecoveryGroupInput, context: context)
        List____listOf__string.validate!(input[:cells], context: "#{context}[:cells]") unless input[:cells].nil?
        Hearth::Validator.validate!(input[:recovery_group_name], ::String, context: "#{context}[:recovery_group_name]")
      end
    end

    class UpdateRecoveryGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRecoveryGroupOutput, context: context)
        List____listOf__string.validate!(input[:cells], context: "#{context}[:cells]") unless input[:cells].nil?
        Hearth::Validator.validate!(input[:recovery_group_arn], ::String, context: "#{context}[:recovery_group_arn]")
        Hearth::Validator.validate!(input[:recovery_group_name], ::String, context: "#{context}[:recovery_group_name]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateResourceSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceSetInput, context: context)
        Hearth::Validator.validate!(input[:resource_set_name], ::String, context: "#{context}[:resource_set_name]")
        Hearth::Validator.validate!(input[:resource_set_type], ::String, context: "#{context}[:resource_set_type]")
        List____listOfResource.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
      end
    end

    class UpdateResourceSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceSetOutput, context: context)
        Hearth::Validator.validate!(input[:resource_set_arn], ::String, context: "#{context}[:resource_set_arn]")
        Hearth::Validator.validate!(input[:resource_set_name], ::String, context: "#{context}[:resource_set_name]")
        Hearth::Validator.validate!(input[:resource_set_type], ::String, context: "#{context}[:resource_set_type]")
        List____listOfResource.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class List____listOfCellOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CellOutput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfCrossAccountAuthorization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class List____listOfListRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ListRulesOutput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfMessage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Message.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfReadinessCheckOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReadinessCheckOutput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfReadinessCheckSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ReadinessCheckSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfRecommendation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Recommendation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfRecoveryGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecoveryGroupOutput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Resource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfResourceResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfResourceSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceSetOutput.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOfRuleResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RuleResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class List____listOf__string
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
