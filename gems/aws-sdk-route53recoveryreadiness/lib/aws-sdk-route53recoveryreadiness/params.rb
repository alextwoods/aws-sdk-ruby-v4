# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53RecoveryReadiness
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module CellOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CellOutput, context: context)
        type = Types::CellOutput.new
        type.cell_arn = params[:cell_arn]
        type.cell_name = params[:cell_name]
        type.cells = List____listOf__string.build(params[:cells], context: "#{context}[:cells]") unless params[:cells].nil?
        type.parent_readiness_scopes = List____listOf__string.build(params[:parent_readiness_scopes], context: "#{context}[:parent_readiness_scopes]") unless params[:parent_readiness_scopes].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
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

    module CreateCellInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCellInput, context: context)
        type = Types::CreateCellInput.new
        type.cell_name = params[:cell_name]
        type.cells = List____listOf__string.build(params[:cells], context: "#{context}[:cells]") unless params[:cells].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCellOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCellOutput, context: context)
        type = Types::CreateCellOutput.new
        type.cell_arn = params[:cell_arn]
        type.cell_name = params[:cell_name]
        type.cells = List____listOf__string.build(params[:cells], context: "#{context}[:cells]") unless params[:cells].nil?
        type.parent_readiness_scopes = List____listOf__string.build(params[:parent_readiness_scopes], context: "#{context}[:parent_readiness_scopes]") unless params[:parent_readiness_scopes].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateCrossAccountAuthorizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCrossAccountAuthorizationInput, context: context)
        type = Types::CreateCrossAccountAuthorizationInput.new
        type.cross_account_authorization = params[:cross_account_authorization]
        type
      end
    end

    module CreateCrossAccountAuthorizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCrossAccountAuthorizationOutput, context: context)
        type = Types::CreateCrossAccountAuthorizationOutput.new
        type.cross_account_authorization = params[:cross_account_authorization]
        type
      end
    end

    module CreateReadinessCheckInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReadinessCheckInput, context: context)
        type = Types::CreateReadinessCheckInput.new
        type.readiness_check_name = params[:readiness_check_name]
        type.resource_set_name = params[:resource_set_name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateReadinessCheckOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReadinessCheckOutput, context: context)
        type = Types::CreateReadinessCheckOutput.new
        type.readiness_check_arn = params[:readiness_check_arn]
        type.readiness_check_name = params[:readiness_check_name]
        type.resource_set = params[:resource_set]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRecoveryGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRecoveryGroupInput, context: context)
        type = Types::CreateRecoveryGroupInput.new
        type.cells = List____listOf__string.build(params[:cells], context: "#{context}[:cells]") unless params[:cells].nil?
        type.recovery_group_name = params[:recovery_group_name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRecoveryGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRecoveryGroupOutput, context: context)
        type = Types::CreateRecoveryGroupOutput.new
        type.cells = List____listOf__string.build(params[:cells], context: "#{context}[:cells]") unless params[:cells].nil?
        type.recovery_group_arn = params[:recovery_group_arn]
        type.recovery_group_name = params[:recovery_group_name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateResourceSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceSetInput, context: context)
        type = Types::CreateResourceSetInput.new
        type.resource_set_name = params[:resource_set_name]
        type.resource_set_type = params[:resource_set_type]
        type.resources = List____listOfResource.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateResourceSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceSetOutput, context: context)
        type = Types::CreateResourceSetOutput.new
        type.resource_set_arn = params[:resource_set_arn]
        type.resource_set_name = params[:resource_set_name]
        type.resource_set_type = params[:resource_set_type]
        type.resources = List____listOfResource.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DNSTargetResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DNSTargetResource, context: context)
        type = Types::DNSTargetResource.new
        type.domain_name = params[:domain_name]
        type.hosted_zone_arn = params[:hosted_zone_arn]
        type.record_set_id = params[:record_set_id]
        type.record_type = params[:record_type]
        type.target_resource = TargetResource.build(params[:target_resource], context: "#{context}[:target_resource]") unless params[:target_resource].nil?
        type
      end
    end

    module DeleteCellInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCellInput, context: context)
        type = Types::DeleteCellInput.new
        type.cell_name = params[:cell_name]
        type
      end
    end

    module DeleteCellOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCellOutput, context: context)
        type = Types::DeleteCellOutput.new
        type
      end
    end

    module DeleteCrossAccountAuthorizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCrossAccountAuthorizationInput, context: context)
        type = Types::DeleteCrossAccountAuthorizationInput.new
        type.cross_account_authorization = params[:cross_account_authorization]
        type
      end
    end

    module DeleteCrossAccountAuthorizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCrossAccountAuthorizationOutput, context: context)
        type = Types::DeleteCrossAccountAuthorizationOutput.new
        type
      end
    end

    module DeleteReadinessCheckInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReadinessCheckInput, context: context)
        type = Types::DeleteReadinessCheckInput.new
        type.readiness_check_name = params[:readiness_check_name]
        type
      end
    end

    module DeleteReadinessCheckOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteReadinessCheckOutput, context: context)
        type = Types::DeleteReadinessCheckOutput.new
        type
      end
    end

    module DeleteRecoveryGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecoveryGroupInput, context: context)
        type = Types::DeleteRecoveryGroupInput.new
        type.recovery_group_name = params[:recovery_group_name]
        type
      end
    end

    module DeleteRecoveryGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRecoveryGroupOutput, context: context)
        type = Types::DeleteRecoveryGroupOutput.new
        type
      end
    end

    module DeleteResourceSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceSetInput, context: context)
        type = Types::DeleteResourceSetInput.new
        type.resource_set_name = params[:resource_set_name]
        type
      end
    end

    module DeleteResourceSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceSetOutput, context: context)
        type = Types::DeleteResourceSetOutput.new
        type
      end
    end

    module GetArchitectureRecommendationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetArchitectureRecommendationsInput, context: context)
        type = Types::GetArchitectureRecommendationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.recovery_group_name = params[:recovery_group_name]
        type
      end
    end

    module GetArchitectureRecommendationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetArchitectureRecommendationsOutput, context: context)
        type = Types::GetArchitectureRecommendationsOutput.new
        type.last_audit_timestamp = params[:last_audit_timestamp]
        type.next_token = params[:next_token]
        type.recommendations = List____listOfRecommendation.build(params[:recommendations], context: "#{context}[:recommendations]") unless params[:recommendations].nil?
        type
      end
    end

    module GetCellInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCellInput, context: context)
        type = Types::GetCellInput.new
        type.cell_name = params[:cell_name]
        type
      end
    end

    module GetCellOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCellOutput, context: context)
        type = Types::GetCellOutput.new
        type.cell_arn = params[:cell_arn]
        type.cell_name = params[:cell_name]
        type.cells = List____listOf__string.build(params[:cells], context: "#{context}[:cells]") unless params[:cells].nil?
        type.parent_readiness_scopes = List____listOf__string.build(params[:parent_readiness_scopes], context: "#{context}[:parent_readiness_scopes]") unless params[:parent_readiness_scopes].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetCellReadinessSummaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCellReadinessSummaryInput, context: context)
        type = Types::GetCellReadinessSummaryInput.new
        type.cell_name = params[:cell_name]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetCellReadinessSummaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCellReadinessSummaryOutput, context: context)
        type = Types::GetCellReadinessSummaryOutput.new
        type.next_token = params[:next_token]
        type.readiness = params[:readiness]
        type.readiness_checks = List____listOfReadinessCheckSummary.build(params[:readiness_checks], context: "#{context}[:readiness_checks]") unless params[:readiness_checks].nil?
        type
      end
    end

    module GetReadinessCheckInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReadinessCheckInput, context: context)
        type = Types::GetReadinessCheckInput.new
        type.readiness_check_name = params[:readiness_check_name]
        type
      end
    end

    module GetReadinessCheckOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReadinessCheckOutput, context: context)
        type = Types::GetReadinessCheckOutput.new
        type.readiness_check_arn = params[:readiness_check_arn]
        type.readiness_check_name = params[:readiness_check_name]
        type.resource_set = params[:resource_set]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetReadinessCheckResourceStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReadinessCheckResourceStatusInput, context: context)
        type = Types::GetReadinessCheckResourceStatusInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.readiness_check_name = params[:readiness_check_name]
        type.resource_identifier = params[:resource_identifier]
        type
      end
    end

    module GetReadinessCheckResourceStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReadinessCheckResourceStatusOutput, context: context)
        type = Types::GetReadinessCheckResourceStatusOutput.new
        type.next_token = params[:next_token]
        type.readiness = params[:readiness]
        type.rules = List____listOfRuleResult.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module GetReadinessCheckStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReadinessCheckStatusInput, context: context)
        type = Types::GetReadinessCheckStatusInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.readiness_check_name = params[:readiness_check_name]
        type
      end
    end

    module GetReadinessCheckStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetReadinessCheckStatusOutput, context: context)
        type = Types::GetReadinessCheckStatusOutput.new
        type.messages = List____listOfMessage.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type.next_token = params[:next_token]
        type.readiness = params[:readiness]
        type.resources = List____listOfResourceResult.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type
      end
    end

    module GetRecoveryGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecoveryGroupInput, context: context)
        type = Types::GetRecoveryGroupInput.new
        type.recovery_group_name = params[:recovery_group_name]
        type
      end
    end

    module GetRecoveryGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecoveryGroupOutput, context: context)
        type = Types::GetRecoveryGroupOutput.new
        type.cells = List____listOf__string.build(params[:cells], context: "#{context}[:cells]") unless params[:cells].nil?
        type.recovery_group_arn = params[:recovery_group_arn]
        type.recovery_group_name = params[:recovery_group_name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetRecoveryGroupReadinessSummaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecoveryGroupReadinessSummaryInput, context: context)
        type = Types::GetRecoveryGroupReadinessSummaryInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.recovery_group_name = params[:recovery_group_name]
        type
      end
    end

    module GetRecoveryGroupReadinessSummaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecoveryGroupReadinessSummaryOutput, context: context)
        type = Types::GetRecoveryGroupReadinessSummaryOutput.new
        type.next_token = params[:next_token]
        type.readiness = params[:readiness]
        type.readiness_checks = List____listOfReadinessCheckSummary.build(params[:readiness_checks], context: "#{context}[:readiness_checks]") unless params[:readiness_checks].nil?
        type
      end
    end

    module GetResourceSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceSetInput, context: context)
        type = Types::GetResourceSetInput.new
        type.resource_set_name = params[:resource_set_name]
        type
      end
    end

    module GetResourceSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceSetOutput, context: context)
        type = Types::GetResourceSetOutput.new
        type.resource_set_arn = params[:resource_set_arn]
        type.resource_set_name = params[:resource_set_name]
        type.resource_set_type = params[:resource_set_type]
        type.resources = List____listOfResource.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
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

    module ListCellsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCellsInput, context: context)
        type = Types::ListCellsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCellsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCellsOutput, context: context)
        type = Types::ListCellsOutput.new
        type.cells = List____listOfCellOutput.build(params[:cells], context: "#{context}[:cells]") unless params[:cells].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCrossAccountAuthorizationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCrossAccountAuthorizationsInput, context: context)
        type = Types::ListCrossAccountAuthorizationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCrossAccountAuthorizationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCrossAccountAuthorizationsOutput, context: context)
        type = Types::ListCrossAccountAuthorizationsOutput.new
        type.cross_account_authorizations = List____listOfCrossAccountAuthorization.build(params[:cross_account_authorizations], context: "#{context}[:cross_account_authorizations]") unless params[:cross_account_authorizations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListReadinessChecksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReadinessChecksInput, context: context)
        type = Types::ListReadinessChecksInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListReadinessChecksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListReadinessChecksOutput, context: context)
        type = Types::ListReadinessChecksOutput.new
        type.next_token = params[:next_token]
        type.readiness_checks = List____listOfReadinessCheckOutput.build(params[:readiness_checks], context: "#{context}[:readiness_checks]") unless params[:readiness_checks].nil?
        type
      end
    end

    module ListRecoveryGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecoveryGroupsInput, context: context)
        type = Types::ListRecoveryGroupsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRecoveryGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecoveryGroupsOutput, context: context)
        type = Types::ListRecoveryGroupsOutput.new
        type.next_token = params[:next_token]
        type.recovery_groups = List____listOfRecoveryGroupOutput.build(params[:recovery_groups], context: "#{context}[:recovery_groups]") unless params[:recovery_groups].nil?
        type
      end
    end

    module ListResourceSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceSetsInput, context: context)
        type = Types::ListResourceSetsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourceSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceSetsOutput, context: context)
        type = Types::ListResourceSetsOutput.new
        type.next_token = params[:next_token]
        type.resource_sets = List____listOfResourceSetOutput.build(params[:resource_sets], context: "#{context}[:resource_sets]") unless params[:resource_sets].nil?
        type
      end
    end

    module ListRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRulesInput, context: context)
        type = Types::ListRulesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module ListRulesOperationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRulesOperationOutput, context: context)
        type = Types::ListRulesOperationOutput.new
        type.next_token = params[:next_token]
        type.rules = List____listOfListRulesOutput.build(params[:rules], context: "#{context}[:rules]") unless params[:rules].nil?
        type
      end
    end

    module ListRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRulesOutput, context: context)
        type = Types::ListRulesOutput.new
        type.resource_type = params[:resource_type]
        type.rule_description = params[:rule_description]
        type.rule_id = params[:rule_id]
        type
      end
    end

    module ListTagsForResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourcesInput, context: context)
        type = Types::ListTagsForResourcesInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourcesOutput, context: context)
        type = Types::ListTagsForResourcesOutput.new
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Message
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Message, context: context)
        type = Types::Message.new
        type.message_text = params[:message_text]
        type
      end
    end

    module NLBResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NLBResource, context: context)
        type = Types::NLBResource.new
        type.arn = params[:arn]
        type
      end
    end

    module R53ResourceRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::R53ResourceRecord, context: context)
        type = Types::R53ResourceRecord.new
        type.domain_name = params[:domain_name]
        type.record_set_id = params[:record_set_id]
        type
      end
    end

    module ReadinessCheckOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReadinessCheckOutput, context: context)
        type = Types::ReadinessCheckOutput.new
        type.readiness_check_arn = params[:readiness_check_arn]
        type.readiness_check_name = params[:readiness_check_name]
        type.resource_set = params[:resource_set]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ReadinessCheckSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReadinessCheckSummary, context: context)
        type = Types::ReadinessCheckSummary.new
        type.readiness = params[:readiness]
        type.readiness_check_name = params[:readiness_check_name]
        type
      end
    end

    module Recommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Recommendation, context: context)
        type = Types::Recommendation.new
        type.recommendation_text = params[:recommendation_text]
        type
      end
    end

    module RecoveryGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecoveryGroupOutput, context: context)
        type = Types::RecoveryGroupOutput.new
        type.cells = List____listOf__string.build(params[:cells], context: "#{context}[:cells]") unless params[:cells].nil?
        type.recovery_group_arn = params[:recovery_group_arn]
        type.recovery_group_name = params[:recovery_group_name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Resource, context: context)
        type = Types::Resource.new
        type.component_id = params[:component_id]
        type.dns_target_resource = DNSTargetResource.build(params[:dns_target_resource], context: "#{context}[:dns_target_resource]") unless params[:dns_target_resource].nil?
        type.readiness_scopes = List____listOf__string.build(params[:readiness_scopes], context: "#{context}[:readiness_scopes]") unless params[:readiness_scopes].nil?
        type.resource_arn = params[:resource_arn]
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

    module ResourceResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceResult, context: context)
        type = Types::ResourceResult.new
        type.component_id = params[:component_id]
        type.last_checked_timestamp = params[:last_checked_timestamp]
        type.readiness = params[:readiness]
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ResourceSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceSetOutput, context: context)
        type = Types::ResourceSetOutput.new
        type.resource_set_arn = params[:resource_set_arn]
        type.resource_set_name = params[:resource_set_name]
        type.resource_set_type = params[:resource_set_type]
        type.resources = List____listOfResource.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module RuleResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleResult, context: context)
        type = Types::RuleResult.new
        type.last_checked_timestamp = params[:last_checked_timestamp]
        type.messages = List____listOfMessage.build(params[:messages], context: "#{context}[:messages]") unless params[:messages].nil?
        type.readiness = params[:readiness]
        type.rule_id = params[:rule_id]
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TargetResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetResource, context: context)
        type = Types::TargetResource.new
        type.nlb_resource = NLBResource.build(params[:nlb_resource], context: "#{context}[:nlb_resource]") unless params[:nlb_resource].nil?
        type.r53_resource = R53ResourceRecord.build(params[:r53_resource], context: "#{context}[:r53_resource]") unless params[:r53_resource].nil?
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = List____listOf__string.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateCellInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCellInput, context: context)
        type = Types::UpdateCellInput.new
        type.cell_name = params[:cell_name]
        type.cells = List____listOf__string.build(params[:cells], context: "#{context}[:cells]") unless params[:cells].nil?
        type
      end
    end

    module UpdateCellOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCellOutput, context: context)
        type = Types::UpdateCellOutput.new
        type.cell_arn = params[:cell_arn]
        type.cell_name = params[:cell_name]
        type.cells = List____listOf__string.build(params[:cells], context: "#{context}[:cells]") unless params[:cells].nil?
        type.parent_readiness_scopes = List____listOf__string.build(params[:parent_readiness_scopes], context: "#{context}[:parent_readiness_scopes]") unless params[:parent_readiness_scopes].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateReadinessCheckInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReadinessCheckInput, context: context)
        type = Types::UpdateReadinessCheckInput.new
        type.readiness_check_name = params[:readiness_check_name]
        type.resource_set_name = params[:resource_set_name]
        type
      end
    end

    module UpdateReadinessCheckOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateReadinessCheckOutput, context: context)
        type = Types::UpdateReadinessCheckOutput.new
        type.readiness_check_arn = params[:readiness_check_arn]
        type.readiness_check_name = params[:readiness_check_name]
        type.resource_set = params[:resource_set]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateRecoveryGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRecoveryGroupInput, context: context)
        type = Types::UpdateRecoveryGroupInput.new
        type.cells = List____listOf__string.build(params[:cells], context: "#{context}[:cells]") unless params[:cells].nil?
        type.recovery_group_name = params[:recovery_group_name]
        type
      end
    end

    module UpdateRecoveryGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRecoveryGroupOutput, context: context)
        type = Types::UpdateRecoveryGroupOutput.new
        type.cells = List____listOf__string.build(params[:cells], context: "#{context}[:cells]") unless params[:cells].nil?
        type.recovery_group_arn = params[:recovery_group_arn]
        type.recovery_group_name = params[:recovery_group_name]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateResourceSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceSetInput, context: context)
        type = Types::UpdateResourceSetInput.new
        type.resource_set_name = params[:resource_set_name]
        type.resource_set_type = params[:resource_set_type]
        type.resources = List____listOfResource.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type
      end
    end

    module UpdateResourceSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceSetOutput, context: context)
        type = Types::UpdateResourceSetOutput.new
        type.resource_set_arn = params[:resource_set_arn]
        type.resource_set_name = params[:resource_set_name]
        type.resource_set_type = params[:resource_set_type]
        type.resources = List____listOfResource.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module List____listOfCellOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CellOutput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfCrossAccountAuthorization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module List____listOfListRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListRulesOutput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfMessage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Message.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfReadinessCheckOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReadinessCheckOutput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfReadinessCheckSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReadinessCheckSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfRecommendation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Recommendation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfRecoveryGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecoveryGroupOutput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Resource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfResourceResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfResourceSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceSetOutput.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOfRuleResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RuleResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module List____listOf__string
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

  end
end
