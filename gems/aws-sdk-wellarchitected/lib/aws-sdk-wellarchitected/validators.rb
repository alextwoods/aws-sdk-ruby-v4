# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WellArchitected
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Answer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Answer, context: context)
        Hearth::Validator.validate!(input[:question_id], ::String, context: "#{context}[:question_id]")
        Hearth::Validator.validate!(input[:pillar_id], ::String, context: "#{context}[:pillar_id]")
        Hearth::Validator.validate!(input[:question_title], ::String, context: "#{context}[:question_title]")
        Hearth::Validator.validate!(input[:question_description], ::String, context: "#{context}[:question_description]")
        Hearth::Validator.validate!(input[:improvement_plan_url], ::String, context: "#{context}[:improvement_plan_url]")
        Hearth::Validator.validate!(input[:helpful_resource_url], ::String, context: "#{context}[:helpful_resource_url]")
        Hearth::Validator.validate!(input[:helpful_resource_display_text], ::String, context: "#{context}[:helpful_resource_display_text]")
        Validators::Choices.validate!(input[:choices], context: "#{context}[:choices]") unless input[:choices].nil?
        Validators::SelectedChoices.validate!(input[:selected_choices], context: "#{context}[:selected_choices]") unless input[:selected_choices].nil?
        Validators::ChoiceAnswers.validate!(input[:choice_answers], context: "#{context}[:choice_answers]") unless input[:choice_answers].nil?
        Hearth::Validator.validate!(input[:is_applicable], ::TrueClass, ::FalseClass, context: "#{context}[:is_applicable]")
        Hearth::Validator.validate!(input[:risk], ::String, context: "#{context}[:risk]")
        Hearth::Validator.validate!(input[:notes], ::String, context: "#{context}[:notes]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class AnswerSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AnswerSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AnswerSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AnswerSummary, context: context)
        Hearth::Validator.validate!(input[:question_id], ::String, context: "#{context}[:question_id]")
        Hearth::Validator.validate!(input[:pillar_id], ::String, context: "#{context}[:pillar_id]")
        Hearth::Validator.validate!(input[:question_title], ::String, context: "#{context}[:question_title]")
        Validators::Choices.validate!(input[:choices], context: "#{context}[:choices]") unless input[:choices].nil?
        Validators::SelectedChoices.validate!(input[:selected_choices], context: "#{context}[:selected_choices]") unless input[:selected_choices].nil?
        Validators::ChoiceAnswerSummaries.validate!(input[:choice_answer_summaries], context: "#{context}[:choice_answer_summaries]") unless input[:choice_answer_summaries].nil?
        Hearth::Validator.validate!(input[:is_applicable], ::TrueClass, ::FalseClass, context: "#{context}[:is_applicable]")
        Hearth::Validator.validate!(input[:risk], ::String, context: "#{context}[:risk]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class AssociateLensesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateLensesInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Validators::LensAliases.validate!(input[:lens_aliases], context: "#{context}[:lens_aliases]") unless input[:lens_aliases].nil?
      end
    end

    class AssociateLensesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateLensesOutput, context: context)
      end
    end

    class Choice
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Choice, context: context)
        Hearth::Validator.validate!(input[:choice_id], ::String, context: "#{context}[:choice_id]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::ChoiceContent.validate!(input[:helpful_resource], context: "#{context}[:helpful_resource]") unless input[:helpful_resource].nil?
        Validators::ChoiceContent.validate!(input[:improvement_plan], context: "#{context}[:improvement_plan]") unless input[:improvement_plan].nil?
      end
    end

    class ChoiceAnswer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChoiceAnswer, context: context)
        Hearth::Validator.validate!(input[:choice_id], ::String, context: "#{context}[:choice_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:notes], ::String, context: "#{context}[:notes]")
      end
    end

    class ChoiceAnswerSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ChoiceAnswerSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChoiceAnswerSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChoiceAnswerSummary, context: context)
        Hearth::Validator.validate!(input[:choice_id], ::String, context: "#{context}[:choice_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class ChoiceAnswers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ChoiceAnswer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChoiceContent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChoiceContent, context: context)
        Hearth::Validator.validate!(input[:display_text], ::String, context: "#{context}[:display_text]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
      end
    end

    class ChoiceImprovementPlan
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChoiceImprovementPlan, context: context)
        Hearth::Validator.validate!(input[:choice_id], ::String, context: "#{context}[:choice_id]")
        Hearth::Validator.validate!(input[:display_text], ::String, context: "#{context}[:display_text]")
        Hearth::Validator.validate!(input[:improvement_plan_url], ::String, context: "#{context}[:improvement_plan_url]")
      end
    end

    class ChoiceImprovementPlans
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ChoiceImprovementPlan.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ChoiceUpdate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ChoiceUpdate, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Hearth::Validator.validate!(input[:notes], ::String, context: "#{context}[:notes]")
      end
    end

    class ChoiceUpdates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ChoiceUpdate.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class Choices
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Choice.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class CreateLensShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLensShareInput, context: context)
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:shared_with], ::String, context: "#{context}[:shared_with]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class CreateLensShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLensShareOutput, context: context)
        Hearth::Validator.validate!(input[:share_id], ::String, context: "#{context}[:share_id]")
      end
    end

    class CreateLensVersionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLensVersionInput, context: context)
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:lens_version], ::String, context: "#{context}[:lens_version]")
        Hearth::Validator.validate!(input[:is_major_version], ::TrueClass, ::FalseClass, context: "#{context}[:is_major_version]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class CreateLensVersionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLensVersionOutput, context: context)
        Hearth::Validator.validate!(input[:lens_arn], ::String, context: "#{context}[:lens_arn]")
        Hearth::Validator.validate!(input[:lens_version], ::String, context: "#{context}[:lens_version]")
      end
    end

    class CreateMilestoneInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMilestoneInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:milestone_name], ::String, context: "#{context}[:milestone_name]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class CreateMilestoneOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMilestoneOutput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:milestone_number], ::Integer, context: "#{context}[:milestone_number]")
      end
    end

    class CreateWorkloadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkloadInput, context: context)
        Hearth::Validator.validate!(input[:workload_name], ::String, context: "#{context}[:workload_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:environment], ::String, context: "#{context}[:environment]")
        Validators::WorkloadAccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Validators::WorkloadAwsRegions.validate!(input[:aws_regions], context: "#{context}[:aws_regions]") unless input[:aws_regions].nil?
        Validators::WorkloadNonAwsRegions.validate!(input[:non_aws_regions], context: "#{context}[:non_aws_regions]") unless input[:non_aws_regions].nil?
        Validators::WorkloadPillarPriorities.validate!(input[:pillar_priorities], context: "#{context}[:pillar_priorities]") unless input[:pillar_priorities].nil?
        Hearth::Validator.validate!(input[:architectural_design], ::String, context: "#{context}[:architectural_design]")
        Hearth::Validator.validate!(input[:review_owner], ::String, context: "#{context}[:review_owner]")
        Hearth::Validator.validate!(input[:industry_type], ::String, context: "#{context}[:industry_type]")
        Hearth::Validator.validate!(input[:industry], ::String, context: "#{context}[:industry]")
        Validators::WorkloadLenses.validate!(input[:lenses], context: "#{context}[:lenses]") unless input[:lenses].nil?
        Hearth::Validator.validate!(input[:notes], ::String, context: "#{context}[:notes]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateWorkloadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkloadOutput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:workload_arn], ::String, context: "#{context}[:workload_arn]")
      end
    end

    class CreateWorkloadShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkloadShareInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:shared_with], ::String, context: "#{context}[:shared_with]")
        Hearth::Validator.validate!(input[:permission_type], ::String, context: "#{context}[:permission_type]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class CreateWorkloadShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateWorkloadShareOutput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:share_id], ::String, context: "#{context}[:share_id]")
      end
    end

    class DeleteLensInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLensInput, context: context)
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:lens_status], ::String, context: "#{context}[:lens_status]")
      end
    end

    class DeleteLensOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLensOutput, context: context)
      end
    end

    class DeleteLensShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLensShareInput, context: context)
        Hearth::Validator.validate!(input[:share_id], ::String, context: "#{context}[:share_id]")
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class DeleteLensShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLensShareOutput, context: context)
      end
    end

    class DeleteWorkloadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkloadInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class DeleteWorkloadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkloadOutput, context: context)
      end
    end

    class DeleteWorkloadShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkloadShareInput, context: context)
        Hearth::Validator.validate!(input[:share_id], ::String, context: "#{context}[:share_id]")
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class DeleteWorkloadShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkloadShareOutput, context: context)
      end
    end

    class DisassociateLensesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateLensesInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Validators::LensAliases.validate!(input[:lens_aliases], context: "#{context}[:lens_aliases]") unless input[:lens_aliases].nil?
      end
    end

    class DisassociateLensesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateLensesOutput, context: context)
      end
    end

    class ExportLensInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportLensInput, context: context)
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:lens_version], ::String, context: "#{context}[:lens_version]")
      end
    end

    class ExportLensOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportLensOutput, context: context)
        Hearth::Validator.validate!(input[:lens_json], ::String, context: "#{context}[:lens_json]")
      end
    end

    class GetAnswerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAnswerInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:question_id], ::String, context: "#{context}[:question_id]")
        Hearth::Validator.validate!(input[:milestone_number], ::Integer, context: "#{context}[:milestone_number]")
      end
    end

    class GetAnswerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAnswerOutput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:milestone_number], ::Integer, context: "#{context}[:milestone_number]")
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:lens_arn], ::String, context: "#{context}[:lens_arn]")
        Validators::Answer.validate!(input[:answer], context: "#{context}[:answer]") unless input[:answer].nil?
      end
    end

    class GetLensInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLensInput, context: context)
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:lens_version], ::String, context: "#{context}[:lens_version]")
      end
    end

    class GetLensOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLensOutput, context: context)
        Validators::Lens.validate!(input[:lens], context: "#{context}[:lens]") unless input[:lens].nil?
      end
    end

    class GetLensReviewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLensReviewInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:milestone_number], ::Integer, context: "#{context}[:milestone_number]")
      end
    end

    class GetLensReviewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLensReviewOutput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:milestone_number], ::Integer, context: "#{context}[:milestone_number]")
        Validators::LensReview.validate!(input[:lens_review], context: "#{context}[:lens_review]") unless input[:lens_review].nil?
      end
    end

    class GetLensReviewReportInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLensReviewReportInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:milestone_number], ::Integer, context: "#{context}[:milestone_number]")
      end
    end

    class GetLensReviewReportOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLensReviewReportOutput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:milestone_number], ::Integer, context: "#{context}[:milestone_number]")
        Validators::LensReviewReport.validate!(input[:lens_review_report], context: "#{context}[:lens_review_report]") unless input[:lens_review_report].nil?
      end
    end

    class GetLensVersionDifferenceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLensVersionDifferenceInput, context: context)
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:base_lens_version], ::String, context: "#{context}[:base_lens_version]")
        Hearth::Validator.validate!(input[:target_lens_version], ::String, context: "#{context}[:target_lens_version]")
      end
    end

    class GetLensVersionDifferenceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetLensVersionDifferenceOutput, context: context)
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:lens_arn], ::String, context: "#{context}[:lens_arn]")
        Hearth::Validator.validate!(input[:base_lens_version], ::String, context: "#{context}[:base_lens_version]")
        Hearth::Validator.validate!(input[:target_lens_version], ::String, context: "#{context}[:target_lens_version]")
        Hearth::Validator.validate!(input[:latest_lens_version], ::String, context: "#{context}[:latest_lens_version]")
        Validators::VersionDifferences.validate!(input[:version_differences], context: "#{context}[:version_differences]") unless input[:version_differences].nil?
      end
    end

    class GetMilestoneInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMilestoneInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:milestone_number], ::Integer, context: "#{context}[:milestone_number]")
      end
    end

    class GetMilestoneOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMilestoneOutput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Validators::Milestone.validate!(input[:milestone], context: "#{context}[:milestone]") unless input[:milestone].nil?
      end
    end

    class GetWorkloadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkloadInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
      end
    end

    class GetWorkloadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkloadOutput, context: context)
        Validators::Workload.validate!(input[:workload], context: "#{context}[:workload]") unless input[:workload].nil?
      end
    end

    class ImportLensInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportLensInput, context: context)
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:json_string], ::String, context: "#{context}[:json_string]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ImportLensOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImportLensOutput, context: context)
        Hearth::Validator.validate!(input[:lens_arn], ::String, context: "#{context}[:lens_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ImprovementSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ImprovementSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ImprovementSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ImprovementSummary, context: context)
        Hearth::Validator.validate!(input[:question_id], ::String, context: "#{context}[:question_id]")
        Hearth::Validator.validate!(input[:pillar_id], ::String, context: "#{context}[:pillar_id]")
        Hearth::Validator.validate!(input[:question_title], ::String, context: "#{context}[:question_title]")
        Hearth::Validator.validate!(input[:risk], ::String, context: "#{context}[:risk]")
        Hearth::Validator.validate!(input[:improvement_plan_url], ::String, context: "#{context}[:improvement_plan_url]")
        Validators::ChoiceImprovementPlans.validate!(input[:improvement_plans], context: "#{context}[:improvement_plans]") unless input[:improvement_plans].nil?
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Lens
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Lens, context: context)
        Hearth::Validator.validate!(input[:lens_arn], ::String, context: "#{context}[:lens_arn]")
        Hearth::Validator.validate!(input[:lens_version], ::String, context: "#{context}[:lens_version]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:share_invitation_id], ::String, context: "#{context}[:share_invitation_id]")
      end
    end

    class LensAliases
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LensReview
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LensReview, context: context)
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:lens_arn], ::String, context: "#{context}[:lens_arn]")
        Hearth::Validator.validate!(input[:lens_version], ::String, context: "#{context}[:lens_version]")
        Hearth::Validator.validate!(input[:lens_name], ::String, context: "#{context}[:lens_name]")
        Hearth::Validator.validate!(input[:lens_status], ::String, context: "#{context}[:lens_status]")
        Validators::PillarReviewSummaries.validate!(input[:pillar_review_summaries], context: "#{context}[:pillar_review_summaries]") unless input[:pillar_review_summaries].nil?
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:notes], ::String, context: "#{context}[:notes]")
        Validators::RiskCounts.validate!(input[:risk_counts], context: "#{context}[:risk_counts]") unless input[:risk_counts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LensReviewReport
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LensReviewReport, context: context)
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:lens_arn], ::String, context: "#{context}[:lens_arn]")
        Hearth::Validator.validate!(input[:base64_string], ::String, context: "#{context}[:base64_string]")
      end
    end

    class LensReviewSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LensReviewSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LensReviewSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LensReviewSummary, context: context)
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:lens_arn], ::String, context: "#{context}[:lens_arn]")
        Hearth::Validator.validate!(input[:lens_version], ::String, context: "#{context}[:lens_version]")
        Hearth::Validator.validate!(input[:lens_name], ::String, context: "#{context}[:lens_name]")
        Hearth::Validator.validate!(input[:lens_status], ::String, context: "#{context}[:lens_status]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Validators::RiskCounts.validate!(input[:risk_counts], context: "#{context}[:risk_counts]") unless input[:risk_counts].nil?
      end
    end

    class LensShareSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LensShareSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LensShareSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LensShareSummary, context: context)
        Hearth::Validator.validate!(input[:share_id], ::String, context: "#{context}[:share_id]")
        Hearth::Validator.validate!(input[:shared_with], ::String, context: "#{context}[:shared_with]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class LensSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::LensSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LensSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LensSummary, context: context)
        Hearth::Validator.validate!(input[:lens_arn], ::String, context: "#{context}[:lens_arn]")
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:lens_name], ::String, context: "#{context}[:lens_name]")
        Hearth::Validator.validate!(input[:lens_type], ::String, context: "#{context}[:lens_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:lens_version], ::String, context: "#{context}[:lens_version]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:lens_status], ::String, context: "#{context}[:lens_status]")
      end
    end

    class LensUpgradeSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LensUpgradeSummary, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:workload_name], ::String, context: "#{context}[:workload_name]")
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:lens_arn], ::String, context: "#{context}[:lens_arn]")
        Hearth::Validator.validate!(input[:current_lens_version], ::String, context: "#{context}[:current_lens_version]")
        Hearth::Validator.validate!(input[:latest_lens_version], ::String, context: "#{context}[:latest_lens_version]")
      end
    end

    class ListAnswersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAnswersInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:pillar_id], ::String, context: "#{context}[:pillar_id]")
        Hearth::Validator.validate!(input[:milestone_number], ::Integer, context: "#{context}[:milestone_number]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAnswersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAnswersOutput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:milestone_number], ::Integer, context: "#{context}[:milestone_number]")
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:lens_arn], ::String, context: "#{context}[:lens_arn]")
        Validators::AnswerSummaries.validate!(input[:answer_summaries], context: "#{context}[:answer_summaries]") unless input[:answer_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLensReviewImprovementsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLensReviewImprovementsInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:pillar_id], ::String, context: "#{context}[:pillar_id]")
        Hearth::Validator.validate!(input[:milestone_number], ::Integer, context: "#{context}[:milestone_number]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListLensReviewImprovementsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLensReviewImprovementsOutput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:milestone_number], ::Integer, context: "#{context}[:milestone_number]")
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:lens_arn], ::String, context: "#{context}[:lens_arn]")
        Validators::ImprovementSummaries.validate!(input[:improvement_summaries], context: "#{context}[:improvement_summaries]") unless input[:improvement_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLensReviewsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLensReviewsInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:milestone_number], ::Integer, context: "#{context}[:milestone_number]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListLensReviewsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLensReviewsOutput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:milestone_number], ::Integer, context: "#{context}[:milestone_number]")
        Validators::LensReviewSummaries.validate!(input[:lens_review_summaries], context: "#{context}[:lens_review_summaries]") unless input[:lens_review_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLensSharesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLensSharesInput, context: context)
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:shared_with_prefix], ::String, context: "#{context}[:shared_with_prefix]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListLensSharesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLensSharesOutput, context: context)
        Validators::LensShareSummaries.validate!(input[:lens_share_summaries], context: "#{context}[:lens_share_summaries]") unless input[:lens_share_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLensesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLensesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:lens_type], ::String, context: "#{context}[:lens_type]")
        Hearth::Validator.validate!(input[:lens_status], ::String, context: "#{context}[:lens_status]")
        Hearth::Validator.validate!(input[:lens_name], ::String, context: "#{context}[:lens_name]")
      end
    end

    class ListLensesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLensesOutput, context: context)
        Validators::LensSummaries.validate!(input[:lens_summaries], context: "#{context}[:lens_summaries]") unless input[:lens_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListMilestonesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMilestonesInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListMilestonesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListMilestonesOutput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Validators::MilestoneSummaries.validate!(input[:milestone_summaries], context: "#{context}[:milestone_summaries]") unless input[:milestone_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListNotificationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNotificationsInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListNotificationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListNotificationsOutput, context: context)
        Validators::NotificationSummaries.validate!(input[:notification_summaries], context: "#{context}[:notification_summaries]") unless input[:notification_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListShareInvitationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListShareInvitationsInput, context: context)
        Hearth::Validator.validate!(input[:workload_name_prefix], ::String, context: "#{context}[:workload_name_prefix]")
        Hearth::Validator.validate!(input[:lens_name_prefix], ::String, context: "#{context}[:lens_name_prefix]")
        Hearth::Validator.validate!(input[:share_resource_type], ::String, context: "#{context}[:share_resource_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListShareInvitationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListShareInvitationsOutput, context: context)
        Validators::ShareInvitationSummaries.validate!(input[:share_invitation_summaries], context: "#{context}[:share_invitation_summaries]") unless input[:share_invitation_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:workload_arn], ::String, context: "#{context}[:workload_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListWorkloadSharesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkloadSharesInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:shared_with_prefix], ::String, context: "#{context}[:shared_with_prefix]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListWorkloadSharesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkloadSharesOutput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Validators::WorkloadShareSummaries.validate!(input[:workload_share_summaries], context: "#{context}[:workload_share_summaries]") unless input[:workload_share_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListWorkloadsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkloadsInput, context: context)
        Hearth::Validator.validate!(input[:workload_name_prefix], ::String, context: "#{context}[:workload_name_prefix]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListWorkloadsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkloadsOutput, context: context)
        Validators::WorkloadSummaries.validate!(input[:workload_summaries], context: "#{context}[:workload_summaries]") unless input[:workload_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class Milestone
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Milestone, context: context)
        Hearth::Validator.validate!(input[:milestone_number], ::Integer, context: "#{context}[:milestone_number]")
        Hearth::Validator.validate!(input[:milestone_name], ::String, context: "#{context}[:milestone_name]")
        Hearth::Validator.validate!(input[:recorded_at], ::Time, context: "#{context}[:recorded_at]")
        Validators::Workload.validate!(input[:workload], context: "#{context}[:workload]") unless input[:workload].nil?
      end
    end

    class MilestoneSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MilestoneSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MilestoneSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MilestoneSummary, context: context)
        Hearth::Validator.validate!(input[:milestone_number], ::Integer, context: "#{context}[:milestone_number]")
        Hearth::Validator.validate!(input[:milestone_name], ::String, context: "#{context}[:milestone_name]")
        Hearth::Validator.validate!(input[:recorded_at], ::Time, context: "#{context}[:recorded_at]")
        Validators::WorkloadSummary.validate!(input[:workload_summary], context: "#{context}[:workload_summary]") unless input[:workload_summary].nil?
      end
    end

    class NotificationSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::NotificationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotificationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotificationSummary, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::LensUpgradeSummary.validate!(input[:lens_upgrade_summary], context: "#{context}[:lens_upgrade_summary]") unless input[:lens_upgrade_summary].nil?
      end
    end

    class PillarDifference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PillarDifference, context: context)
        Hearth::Validator.validate!(input[:pillar_id], ::String, context: "#{context}[:pillar_id]")
        Hearth::Validator.validate!(input[:pillar_name], ::String, context: "#{context}[:pillar_name]")
        Hearth::Validator.validate!(input[:difference_status], ::String, context: "#{context}[:difference_status]")
        Validators::QuestionDifferences.validate!(input[:question_differences], context: "#{context}[:question_differences]") unless input[:question_differences].nil?
      end
    end

    class PillarDifferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PillarDifference.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PillarNotes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class PillarReviewSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PillarReviewSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PillarReviewSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PillarReviewSummary, context: context)
        Hearth::Validator.validate!(input[:pillar_id], ::String, context: "#{context}[:pillar_id]")
        Hearth::Validator.validate!(input[:pillar_name], ::String, context: "#{context}[:pillar_name]")
        Hearth::Validator.validate!(input[:notes], ::String, context: "#{context}[:notes]")
        Validators::RiskCounts.validate!(input[:risk_counts], context: "#{context}[:risk_counts]") unless input[:risk_counts].nil?
      end
    end

    class QuestionDifference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QuestionDifference, context: context)
        Hearth::Validator.validate!(input[:question_id], ::String, context: "#{context}[:question_id]")
        Hearth::Validator.validate!(input[:question_title], ::String, context: "#{context}[:question_title]")
        Hearth::Validator.validate!(input[:difference_status], ::String, context: "#{context}[:difference_status]")
      end
    end

    class QuestionDifferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::QuestionDifference.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class RiskCounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

    class SelectedChoices
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
      end
    end

    class ShareInvitation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShareInvitation, context: context)
        Hearth::Validator.validate!(input[:share_invitation_id], ::String, context: "#{context}[:share_invitation_id]")
        Hearth::Validator.validate!(input[:share_resource_type], ::String, context: "#{context}[:share_resource_type]")
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:lens_arn], ::String, context: "#{context}[:lens_arn]")
      end
    end

    class ShareInvitationSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ShareInvitationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ShareInvitationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShareInvitationSummary, context: context)
        Hearth::Validator.validate!(input[:share_invitation_id], ::String, context: "#{context}[:share_invitation_id]")
        Hearth::Validator.validate!(input[:shared_by], ::String, context: "#{context}[:shared_by]")
        Hearth::Validator.validate!(input[:shared_with], ::String, context: "#{context}[:shared_with]")
        Hearth::Validator.validate!(input[:permission_type], ::String, context: "#{context}[:permission_type]")
        Hearth::Validator.validate!(input[:share_resource_type], ::String, context: "#{context}[:share_resource_type]")
        Hearth::Validator.validate!(input[:workload_name], ::String, context: "#{context}[:workload_name]")
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:lens_name], ::String, context: "#{context}[:lens_name]")
        Hearth::Validator.validate!(input[:lens_arn], ::String, context: "#{context}[:lens_arn]")
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
        Hearth::Validator.validate!(input[:workload_arn], ::String, context: "#{context}[:workload_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
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
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:quota_code], ::String, context: "#{context}[:quota_code]")
        Hearth::Validator.validate!(input[:service_code], ::String, context: "#{context}[:service_code]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:workload_arn], ::String, context: "#{context}[:workload_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAnswerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAnswerInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:question_id], ::String, context: "#{context}[:question_id]")
        Validators::SelectedChoices.validate!(input[:selected_choices], context: "#{context}[:selected_choices]") unless input[:selected_choices].nil?
        Validators::ChoiceUpdates.validate!(input[:choice_updates], context: "#{context}[:choice_updates]") unless input[:choice_updates].nil?
        Hearth::Validator.validate!(input[:notes], ::String, context: "#{context}[:notes]")
        Hearth::Validator.validate!(input[:is_applicable], ::TrueClass, ::FalseClass, context: "#{context}[:is_applicable]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
      end
    end

    class UpdateAnswerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAnswerOutput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:lens_arn], ::String, context: "#{context}[:lens_arn]")
        Validators::Answer.validate!(input[:answer], context: "#{context}[:answer]") unless input[:answer].nil?
      end
    end

    class UpdateLensReviewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLensReviewInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:lens_notes], ::String, context: "#{context}[:lens_notes]")
        Validators::PillarNotes.validate!(input[:pillar_notes], context: "#{context}[:pillar_notes]") unless input[:pillar_notes].nil?
      end
    end

    class UpdateLensReviewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLensReviewOutput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Validators::LensReview.validate!(input[:lens_review], context: "#{context}[:lens_review]") unless input[:lens_review].nil?
      end
    end

    class UpdateShareInvitationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateShareInvitationInput, context: context)
        Hearth::Validator.validate!(input[:share_invitation_id], ::String, context: "#{context}[:share_invitation_id]")
        Hearth::Validator.validate!(input[:share_invitation_action], ::String, context: "#{context}[:share_invitation_action]")
      end
    end

    class UpdateShareInvitationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateShareInvitationOutput, context: context)
        Validators::ShareInvitation.validate!(input[:share_invitation], context: "#{context}[:share_invitation]") unless input[:share_invitation].nil?
      end
    end

    class UpdateWorkloadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkloadInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:workload_name], ::String, context: "#{context}[:workload_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:environment], ::String, context: "#{context}[:environment]")
        Validators::WorkloadAccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Validators::WorkloadAwsRegions.validate!(input[:aws_regions], context: "#{context}[:aws_regions]") unless input[:aws_regions].nil?
        Validators::WorkloadNonAwsRegions.validate!(input[:non_aws_regions], context: "#{context}[:non_aws_regions]") unless input[:non_aws_regions].nil?
        Validators::WorkloadPillarPriorities.validate!(input[:pillar_priorities], context: "#{context}[:pillar_priorities]") unless input[:pillar_priorities].nil?
        Hearth::Validator.validate!(input[:architectural_design], ::String, context: "#{context}[:architectural_design]")
        Hearth::Validator.validate!(input[:review_owner], ::String, context: "#{context}[:review_owner]")
        Hearth::Validator.validate!(input[:is_review_owner_update_acknowledged], ::TrueClass, ::FalseClass, context: "#{context}[:is_review_owner_update_acknowledged]")
        Hearth::Validator.validate!(input[:industry_type], ::String, context: "#{context}[:industry_type]")
        Hearth::Validator.validate!(input[:industry], ::String, context: "#{context}[:industry]")
        Hearth::Validator.validate!(input[:notes], ::String, context: "#{context}[:notes]")
        Hearth::Validator.validate!(input[:improvement_status], ::String, context: "#{context}[:improvement_status]")
      end
    end

    class UpdateWorkloadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkloadOutput, context: context)
        Validators::Workload.validate!(input[:workload], context: "#{context}[:workload]") unless input[:workload].nil?
      end
    end

    class UpdateWorkloadShareInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkloadShareInput, context: context)
        Hearth::Validator.validate!(input[:share_id], ::String, context: "#{context}[:share_id]")
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:permission_type], ::String, context: "#{context}[:permission_type]")
      end
    end

    class UpdateWorkloadShareOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateWorkloadShareOutput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Validators::WorkloadShare.validate!(input[:workload_share], context: "#{context}[:workload_share]") unless input[:workload_share].nil?
      end
    end

    class UpgradeLensReviewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpgradeLensReviewInput, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:lens_alias], ::String, context: "#{context}[:lens_alias]")
        Hearth::Validator.validate!(input[:milestone_name], ::String, context: "#{context}[:milestone_name]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class UpgradeLensReviewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpgradeLensReviewOutput, context: context)
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:reason], ::String, context: "#{context}[:reason]")
        Validators::ValidationExceptionFieldList.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
      end
    end

    class ValidationExceptionField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationExceptionField, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValidationExceptionFieldList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ValidationExceptionField.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VersionDifferences
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VersionDifferences, context: context)
        Validators::PillarDifferences.validate!(input[:pillar_differences], context: "#{context}[:pillar_differences]") unless input[:pillar_differences].nil?
      end
    end

    class Workload
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Workload, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:workload_arn], ::String, context: "#{context}[:workload_arn]")
        Hearth::Validator.validate!(input[:workload_name], ::String, context: "#{context}[:workload_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:environment], ::String, context: "#{context}[:environment]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Validators::WorkloadAccountIds.validate!(input[:account_ids], context: "#{context}[:account_ids]") unless input[:account_ids].nil?
        Validators::WorkloadAwsRegions.validate!(input[:aws_regions], context: "#{context}[:aws_regions]") unless input[:aws_regions].nil?
        Validators::WorkloadNonAwsRegions.validate!(input[:non_aws_regions], context: "#{context}[:non_aws_regions]") unless input[:non_aws_regions].nil?
        Hearth::Validator.validate!(input[:architectural_design], ::String, context: "#{context}[:architectural_design]")
        Hearth::Validator.validate!(input[:review_owner], ::String, context: "#{context}[:review_owner]")
        Hearth::Validator.validate!(input[:review_restriction_date], ::Time, context: "#{context}[:review_restriction_date]")
        Hearth::Validator.validate!(input[:is_review_owner_update_acknowledged], ::TrueClass, ::FalseClass, context: "#{context}[:is_review_owner_update_acknowledged]")
        Hearth::Validator.validate!(input[:industry_type], ::String, context: "#{context}[:industry_type]")
        Hearth::Validator.validate!(input[:industry], ::String, context: "#{context}[:industry]")
        Hearth::Validator.validate!(input[:notes], ::String, context: "#{context}[:notes]")
        Hearth::Validator.validate!(input[:improvement_status], ::String, context: "#{context}[:improvement_status]")
        Validators::RiskCounts.validate!(input[:risk_counts], context: "#{context}[:risk_counts]") unless input[:risk_counts].nil?
        Validators::WorkloadPillarPriorities.validate!(input[:pillar_priorities], context: "#{context}[:pillar_priorities]") unless input[:pillar_priorities].nil?
        Validators::WorkloadLenses.validate!(input[:lenses], context: "#{context}[:lenses]") unless input[:lenses].nil?
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:share_invitation_id], ::String, context: "#{context}[:share_invitation_id]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class WorkloadAccountIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class WorkloadAwsRegions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class WorkloadLenses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class WorkloadNonAwsRegions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class WorkloadPillarPriorities
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class WorkloadShare
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkloadShare, context: context)
        Hearth::Validator.validate!(input[:share_id], ::String, context: "#{context}[:share_id]")
        Hearth::Validator.validate!(input[:shared_by], ::String, context: "#{context}[:shared_by]")
        Hearth::Validator.validate!(input[:shared_with], ::String, context: "#{context}[:shared_with]")
        Hearth::Validator.validate!(input[:permission_type], ::String, context: "#{context}[:permission_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:workload_name], ::String, context: "#{context}[:workload_name]")
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
      end
    end

    class WorkloadShareSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WorkloadShareSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorkloadShareSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkloadShareSummary, context: context)
        Hearth::Validator.validate!(input[:share_id], ::String, context: "#{context}[:share_id]")
        Hearth::Validator.validate!(input[:shared_with], ::String, context: "#{context}[:shared_with]")
        Hearth::Validator.validate!(input[:permission_type], ::String, context: "#{context}[:permission_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class WorkloadSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WorkloadSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorkloadSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkloadSummary, context: context)
        Hearth::Validator.validate!(input[:workload_id], ::String, context: "#{context}[:workload_id]")
        Hearth::Validator.validate!(input[:workload_arn], ::String, context: "#{context}[:workload_arn]")
        Hearth::Validator.validate!(input[:workload_name], ::String, context: "#{context}[:workload_name]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Validators::WorkloadLenses.validate!(input[:lenses], context: "#{context}[:lenses]") unless input[:lenses].nil?
        Validators::RiskCounts.validate!(input[:risk_counts], context: "#{context}[:risk_counts]") unless input[:risk_counts].nil?
        Hearth::Validator.validate!(input[:improvement_status], ::String, context: "#{context}[:improvement_status]")
      end
    end

  end
end
