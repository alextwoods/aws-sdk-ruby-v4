# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::WellArchitected
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module Answer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Answer, context: context)
        type = Types::Answer.new
        type.question_id = params[:question_id]
        type.pillar_id = params[:pillar_id]
        type.question_title = params[:question_title]
        type.question_description = params[:question_description]
        type.improvement_plan_url = params[:improvement_plan_url]
        type.helpful_resource_url = params[:helpful_resource_url]
        type.helpful_resource_display_text = params[:helpful_resource_display_text]
        type.choices = Choices.build(params[:choices], context: "#{context}[:choices]") unless params[:choices].nil?
        type.selected_choices = SelectedChoices.build(params[:selected_choices], context: "#{context}[:selected_choices]") unless params[:selected_choices].nil?
        type.choice_answers = ChoiceAnswers.build(params[:choice_answers], context: "#{context}[:choice_answers]") unless params[:choice_answers].nil?
        type.is_applicable = params[:is_applicable]
        type.risk = params[:risk]
        type.notes = params[:notes]
        type.reason = params[:reason]
        type
      end
    end

    module AnswerSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AnswerSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AnswerSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AnswerSummary, context: context)
        type = Types::AnswerSummary.new
        type.question_id = params[:question_id]
        type.pillar_id = params[:pillar_id]
        type.question_title = params[:question_title]
        type.choices = Choices.build(params[:choices], context: "#{context}[:choices]") unless params[:choices].nil?
        type.selected_choices = SelectedChoices.build(params[:selected_choices], context: "#{context}[:selected_choices]") unless params[:selected_choices].nil?
        type.choice_answer_summaries = ChoiceAnswerSummaries.build(params[:choice_answer_summaries], context: "#{context}[:choice_answer_summaries]") unless params[:choice_answer_summaries].nil?
        type.is_applicable = params[:is_applicable]
        type.risk = params[:risk]
        type.reason = params[:reason]
        type
      end
    end

    module AssociateLensesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateLensesInput, context: context)
        type = Types::AssociateLensesInput.new
        type.workload_id = params[:workload_id]
        type.lens_aliases = LensAliases.build(params[:lens_aliases], context: "#{context}[:lens_aliases]") unless params[:lens_aliases].nil?
        type
      end
    end

    module AssociateLensesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateLensesOutput, context: context)
        type = Types::AssociateLensesOutput.new
        type
      end
    end

    module Choice
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Choice, context: context)
        type = Types::Choice.new
        type.choice_id = params[:choice_id]
        type.title = params[:title]
        type.description = params[:description]
        type.helpful_resource = ChoiceContent.build(params[:helpful_resource], context: "#{context}[:helpful_resource]") unless params[:helpful_resource].nil?
        type.improvement_plan = ChoiceContent.build(params[:improvement_plan], context: "#{context}[:improvement_plan]") unless params[:improvement_plan].nil?
        type
      end
    end

    module ChoiceAnswer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChoiceAnswer, context: context)
        type = Types::ChoiceAnswer.new
        type.choice_id = params[:choice_id]
        type.status = params[:status]
        type.reason = params[:reason]
        type.notes = params[:notes]
        type
      end
    end

    module ChoiceAnswerSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChoiceAnswerSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChoiceAnswerSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChoiceAnswerSummary, context: context)
        type = Types::ChoiceAnswerSummary.new
        type.choice_id = params[:choice_id]
        type.status = params[:status]
        type.reason = params[:reason]
        type
      end
    end

    module ChoiceAnswers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChoiceAnswer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChoiceContent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChoiceContent, context: context)
        type = Types::ChoiceContent.new
        type.display_text = params[:display_text]
        type.url = params[:url]
        type
      end
    end

    module ChoiceImprovementPlan
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChoiceImprovementPlan, context: context)
        type = Types::ChoiceImprovementPlan.new
        type.choice_id = params[:choice_id]
        type.display_text = params[:display_text]
        type.improvement_plan_url = params[:improvement_plan_url]
        type
      end
    end

    module ChoiceImprovementPlans
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ChoiceImprovementPlan.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ChoiceUpdate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ChoiceUpdate, context: context)
        type = Types::ChoiceUpdate.new
        type.status = params[:status]
        type.reason = params[:reason]
        type.notes = params[:notes]
        type
      end
    end

    module ChoiceUpdates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ChoiceUpdate.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module Choices
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Choice.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module CreateLensShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLensShareInput, context: context)
        type = Types::CreateLensShareInput.new
        type.lens_alias = params[:lens_alias]
        type.shared_with = params[:shared_with]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module CreateLensShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLensShareOutput, context: context)
        type = Types::CreateLensShareOutput.new
        type.share_id = params[:share_id]
        type
      end
    end

    module CreateLensVersionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLensVersionInput, context: context)
        type = Types::CreateLensVersionInput.new
        type.lens_alias = params[:lens_alias]
        type.lens_version = params[:lens_version]
        type.is_major_version = params[:is_major_version]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module CreateLensVersionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLensVersionOutput, context: context)
        type = Types::CreateLensVersionOutput.new
        type.lens_arn = params[:lens_arn]
        type.lens_version = params[:lens_version]
        type
      end
    end

    module CreateMilestoneInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMilestoneInput, context: context)
        type = Types::CreateMilestoneInput.new
        type.workload_id = params[:workload_id]
        type.milestone_name = params[:milestone_name]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module CreateMilestoneOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMilestoneOutput, context: context)
        type = Types::CreateMilestoneOutput.new
        type.workload_id = params[:workload_id]
        type.milestone_number = params[:milestone_number]
        type
      end
    end

    module CreateWorkloadInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkloadInput, context: context)
        type = Types::CreateWorkloadInput.new
        type.workload_name = params[:workload_name]
        type.description = params[:description]
        type.environment = params[:environment]
        type.account_ids = WorkloadAccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.aws_regions = WorkloadAwsRegions.build(params[:aws_regions], context: "#{context}[:aws_regions]") unless params[:aws_regions].nil?
        type.non_aws_regions = WorkloadNonAwsRegions.build(params[:non_aws_regions], context: "#{context}[:non_aws_regions]") unless params[:non_aws_regions].nil?
        type.pillar_priorities = WorkloadPillarPriorities.build(params[:pillar_priorities], context: "#{context}[:pillar_priorities]") unless params[:pillar_priorities].nil?
        type.architectural_design = params[:architectural_design]
        type.review_owner = params[:review_owner]
        type.industry_type = params[:industry_type]
        type.industry = params[:industry]
        type.lenses = WorkloadLenses.build(params[:lenses], context: "#{context}[:lenses]") unless params[:lenses].nil?
        type.notes = params[:notes]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateWorkloadOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkloadOutput, context: context)
        type = Types::CreateWorkloadOutput.new
        type.workload_id = params[:workload_id]
        type.workload_arn = params[:workload_arn]
        type
      end
    end

    module CreateWorkloadShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkloadShareInput, context: context)
        type = Types::CreateWorkloadShareInput.new
        type.workload_id = params[:workload_id]
        type.shared_with = params[:shared_with]
        type.permission_type = params[:permission_type]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module CreateWorkloadShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateWorkloadShareOutput, context: context)
        type = Types::CreateWorkloadShareOutput.new
        type.workload_id = params[:workload_id]
        type.share_id = params[:share_id]
        type
      end
    end

    module DeleteLensInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLensInput, context: context)
        type = Types::DeleteLensInput.new
        type.lens_alias = params[:lens_alias]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.lens_status = params[:lens_status]
        type
      end
    end

    module DeleteLensOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLensOutput, context: context)
        type = Types::DeleteLensOutput.new
        type
      end
    end

    module DeleteLensShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLensShareInput, context: context)
        type = Types::DeleteLensShareInput.new
        type.share_id = params[:share_id]
        type.lens_alias = params[:lens_alias]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module DeleteLensShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLensShareOutput, context: context)
        type = Types::DeleteLensShareOutput.new
        type
      end
    end

    module DeleteWorkloadInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkloadInput, context: context)
        type = Types::DeleteWorkloadInput.new
        type.workload_id = params[:workload_id]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module DeleteWorkloadOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkloadOutput, context: context)
        type = Types::DeleteWorkloadOutput.new
        type
      end
    end

    module DeleteWorkloadShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkloadShareInput, context: context)
        type = Types::DeleteWorkloadShareInput.new
        type.share_id = params[:share_id]
        type.workload_id = params[:workload_id]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module DeleteWorkloadShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkloadShareOutput, context: context)
        type = Types::DeleteWorkloadShareOutput.new
        type
      end
    end

    module DisassociateLensesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateLensesInput, context: context)
        type = Types::DisassociateLensesInput.new
        type.workload_id = params[:workload_id]
        type.lens_aliases = LensAliases.build(params[:lens_aliases], context: "#{context}[:lens_aliases]") unless params[:lens_aliases].nil?
        type
      end
    end

    module DisassociateLensesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateLensesOutput, context: context)
        type = Types::DisassociateLensesOutput.new
        type
      end
    end

    module ExportLensInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportLensInput, context: context)
        type = Types::ExportLensInput.new
        type.lens_alias = params[:lens_alias]
        type.lens_version = params[:lens_version]
        type
      end
    end

    module ExportLensOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportLensOutput, context: context)
        type = Types::ExportLensOutput.new
        type.lens_json = params[:lens_json]
        type
      end
    end

    module GetAnswerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAnswerInput, context: context)
        type = Types::GetAnswerInput.new
        type.workload_id = params[:workload_id]
        type.lens_alias = params[:lens_alias]
        type.question_id = params[:question_id]
        type.milestone_number = params[:milestone_number]
        type
      end
    end

    module GetAnswerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAnswerOutput, context: context)
        type = Types::GetAnswerOutput.new
        type.workload_id = params[:workload_id]
        type.milestone_number = params[:milestone_number]
        type.lens_alias = params[:lens_alias]
        type.lens_arn = params[:lens_arn]
        type.answer = Answer.build(params[:answer], context: "#{context}[:answer]") unless params[:answer].nil?
        type
      end
    end

    module GetLensInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLensInput, context: context)
        type = Types::GetLensInput.new
        type.lens_alias = params[:lens_alias]
        type.lens_version = params[:lens_version]
        type
      end
    end

    module GetLensOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLensOutput, context: context)
        type = Types::GetLensOutput.new
        type.lens = Lens.build(params[:lens], context: "#{context}[:lens]") unless params[:lens].nil?
        type
      end
    end

    module GetLensReviewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLensReviewInput, context: context)
        type = Types::GetLensReviewInput.new
        type.workload_id = params[:workload_id]
        type.lens_alias = params[:lens_alias]
        type.milestone_number = params[:milestone_number]
        type
      end
    end

    module GetLensReviewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLensReviewOutput, context: context)
        type = Types::GetLensReviewOutput.new
        type.workload_id = params[:workload_id]
        type.milestone_number = params[:milestone_number]
        type.lens_review = LensReview.build(params[:lens_review], context: "#{context}[:lens_review]") unless params[:lens_review].nil?
        type
      end
    end

    module GetLensReviewReportInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLensReviewReportInput, context: context)
        type = Types::GetLensReviewReportInput.new
        type.workload_id = params[:workload_id]
        type.lens_alias = params[:lens_alias]
        type.milestone_number = params[:milestone_number]
        type
      end
    end

    module GetLensReviewReportOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLensReviewReportOutput, context: context)
        type = Types::GetLensReviewReportOutput.new
        type.workload_id = params[:workload_id]
        type.milestone_number = params[:milestone_number]
        type.lens_review_report = LensReviewReport.build(params[:lens_review_report], context: "#{context}[:lens_review_report]") unless params[:lens_review_report].nil?
        type
      end
    end

    module GetLensVersionDifferenceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLensVersionDifferenceInput, context: context)
        type = Types::GetLensVersionDifferenceInput.new
        type.lens_alias = params[:lens_alias]
        type.base_lens_version = params[:base_lens_version]
        type.target_lens_version = params[:target_lens_version]
        type
      end
    end

    module GetLensVersionDifferenceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetLensVersionDifferenceOutput, context: context)
        type = Types::GetLensVersionDifferenceOutput.new
        type.lens_alias = params[:lens_alias]
        type.lens_arn = params[:lens_arn]
        type.base_lens_version = params[:base_lens_version]
        type.target_lens_version = params[:target_lens_version]
        type.latest_lens_version = params[:latest_lens_version]
        type.version_differences = VersionDifferences.build(params[:version_differences], context: "#{context}[:version_differences]") unless params[:version_differences].nil?
        type
      end
    end

    module GetMilestoneInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMilestoneInput, context: context)
        type = Types::GetMilestoneInput.new
        type.workload_id = params[:workload_id]
        type.milestone_number = params[:milestone_number]
        type
      end
    end

    module GetMilestoneOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMilestoneOutput, context: context)
        type = Types::GetMilestoneOutput.new
        type.workload_id = params[:workload_id]
        type.milestone = Milestone.build(params[:milestone], context: "#{context}[:milestone]") unless params[:milestone].nil?
        type
      end
    end

    module GetWorkloadInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkloadInput, context: context)
        type = Types::GetWorkloadInput.new
        type.workload_id = params[:workload_id]
        type
      end
    end

    module GetWorkloadOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkloadOutput, context: context)
        type = Types::GetWorkloadOutput.new
        type.workload = Workload.build(params[:workload], context: "#{context}[:workload]") unless params[:workload].nil?
        type
      end
    end

    module ImportLensInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportLensInput, context: context)
        type = Types::ImportLensInput.new
        type.lens_alias = params[:lens_alias]
        type.json_string = params[:json_string]
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ImportLensOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImportLensOutput, context: context)
        type = Types::ImportLensOutput.new
        type.lens_arn = params[:lens_arn]
        type.status = params[:status]
        type
      end
    end

    module ImprovementSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ImprovementSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ImprovementSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ImprovementSummary, context: context)
        type = Types::ImprovementSummary.new
        type.question_id = params[:question_id]
        type.pillar_id = params[:pillar_id]
        type.question_title = params[:question_title]
        type.risk = params[:risk]
        type.improvement_plan_url = params[:improvement_plan_url]
        type.improvement_plans = ChoiceImprovementPlans.build(params[:improvement_plans], context: "#{context}[:improvement_plans]") unless params[:improvement_plans].nil?
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

    module Lens
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Lens, context: context)
        type = Types::Lens.new
        type.lens_arn = params[:lens_arn]
        type.lens_version = params[:lens_version]
        type.name = params[:name]
        type.description = params[:description]
        type.owner = params[:owner]
        type.share_invitation_id = params[:share_invitation_id]
        type
      end
    end

    module LensAliases
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LensReview
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LensReview, context: context)
        type = Types::LensReview.new
        type.lens_alias = params[:lens_alias]
        type.lens_arn = params[:lens_arn]
        type.lens_version = params[:lens_version]
        type.lens_name = params[:lens_name]
        type.lens_status = params[:lens_status]
        type.pillar_review_summaries = PillarReviewSummaries.build(params[:pillar_review_summaries], context: "#{context}[:pillar_review_summaries]") unless params[:pillar_review_summaries].nil?
        type.updated_at = params[:updated_at]
        type.notes = params[:notes]
        type.risk_counts = RiskCounts.build(params[:risk_counts], context: "#{context}[:risk_counts]") unless params[:risk_counts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LensReviewReport
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LensReviewReport, context: context)
        type = Types::LensReviewReport.new
        type.lens_alias = params[:lens_alias]
        type.lens_arn = params[:lens_arn]
        type.base64_string = params[:base64_string]
        type
      end
    end

    module LensReviewSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LensReviewSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LensReviewSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LensReviewSummary, context: context)
        type = Types::LensReviewSummary.new
        type.lens_alias = params[:lens_alias]
        type.lens_arn = params[:lens_arn]
        type.lens_version = params[:lens_version]
        type.lens_name = params[:lens_name]
        type.lens_status = params[:lens_status]
        type.updated_at = params[:updated_at]
        type.risk_counts = RiskCounts.build(params[:risk_counts], context: "#{context}[:risk_counts]") unless params[:risk_counts].nil?
        type
      end
    end

    module LensShareSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LensShareSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LensShareSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LensShareSummary, context: context)
        type = Types::LensShareSummary.new
        type.share_id = params[:share_id]
        type.shared_with = params[:shared_with]
        type.status = params[:status]
        type
      end
    end

    module LensSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LensSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LensSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LensSummary, context: context)
        type = Types::LensSummary.new
        type.lens_arn = params[:lens_arn]
        type.lens_alias = params[:lens_alias]
        type.lens_name = params[:lens_name]
        type.lens_type = params[:lens_type]
        type.description = params[:description]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.lens_version = params[:lens_version]
        type.owner = params[:owner]
        type.lens_status = params[:lens_status]
        type
      end
    end

    module LensUpgradeSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LensUpgradeSummary, context: context)
        type = Types::LensUpgradeSummary.new
        type.workload_id = params[:workload_id]
        type.workload_name = params[:workload_name]
        type.lens_alias = params[:lens_alias]
        type.lens_arn = params[:lens_arn]
        type.current_lens_version = params[:current_lens_version]
        type.latest_lens_version = params[:latest_lens_version]
        type
      end
    end

    module ListAnswersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAnswersInput, context: context)
        type = Types::ListAnswersInput.new
        type.workload_id = params[:workload_id]
        type.lens_alias = params[:lens_alias]
        type.pillar_id = params[:pillar_id]
        type.milestone_number = params[:milestone_number]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAnswersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAnswersOutput, context: context)
        type = Types::ListAnswersOutput.new
        type.workload_id = params[:workload_id]
        type.milestone_number = params[:milestone_number]
        type.lens_alias = params[:lens_alias]
        type.lens_arn = params[:lens_arn]
        type.answer_summaries = AnswerSummaries.build(params[:answer_summaries], context: "#{context}[:answer_summaries]") unless params[:answer_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLensReviewImprovementsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLensReviewImprovementsInput, context: context)
        type = Types::ListLensReviewImprovementsInput.new
        type.workload_id = params[:workload_id]
        type.lens_alias = params[:lens_alias]
        type.pillar_id = params[:pillar_id]
        type.milestone_number = params[:milestone_number]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListLensReviewImprovementsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLensReviewImprovementsOutput, context: context)
        type = Types::ListLensReviewImprovementsOutput.new
        type.workload_id = params[:workload_id]
        type.milestone_number = params[:milestone_number]
        type.lens_alias = params[:lens_alias]
        type.lens_arn = params[:lens_arn]
        type.improvement_summaries = ImprovementSummaries.build(params[:improvement_summaries], context: "#{context}[:improvement_summaries]") unless params[:improvement_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLensReviewsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLensReviewsInput, context: context)
        type = Types::ListLensReviewsInput.new
        type.workload_id = params[:workload_id]
        type.milestone_number = params[:milestone_number]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListLensReviewsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLensReviewsOutput, context: context)
        type = Types::ListLensReviewsOutput.new
        type.workload_id = params[:workload_id]
        type.milestone_number = params[:milestone_number]
        type.lens_review_summaries = LensReviewSummaries.build(params[:lens_review_summaries], context: "#{context}[:lens_review_summaries]") unless params[:lens_review_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLensSharesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLensSharesInput, context: context)
        type = Types::ListLensSharesInput.new
        type.lens_alias = params[:lens_alias]
        type.shared_with_prefix = params[:shared_with_prefix]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListLensSharesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLensSharesOutput, context: context)
        type = Types::ListLensSharesOutput.new
        type.lens_share_summaries = LensShareSummaries.build(params[:lens_share_summaries], context: "#{context}[:lens_share_summaries]") unless params[:lens_share_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLensesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLensesInput, context: context)
        type = Types::ListLensesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.lens_type = params[:lens_type]
        type.lens_status = params[:lens_status]
        type.lens_name = params[:lens_name]
        type
      end
    end

    module ListLensesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLensesOutput, context: context)
        type = Types::ListLensesOutput.new
        type.lens_summaries = LensSummaries.build(params[:lens_summaries], context: "#{context}[:lens_summaries]") unless params[:lens_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListMilestonesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMilestonesInput, context: context)
        type = Types::ListMilestonesInput.new
        type.workload_id = params[:workload_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListMilestonesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListMilestonesOutput, context: context)
        type = Types::ListMilestonesOutput.new
        type.workload_id = params[:workload_id]
        type.milestone_summaries = MilestoneSummaries.build(params[:milestone_summaries], context: "#{context}[:milestone_summaries]") unless params[:milestone_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListNotificationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNotificationsInput, context: context)
        type = Types::ListNotificationsInput.new
        type.workload_id = params[:workload_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListNotificationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListNotificationsOutput, context: context)
        type = Types::ListNotificationsOutput.new
        type.notification_summaries = NotificationSummaries.build(params[:notification_summaries], context: "#{context}[:notification_summaries]") unless params[:notification_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListShareInvitationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListShareInvitationsInput, context: context)
        type = Types::ListShareInvitationsInput.new
        type.workload_name_prefix = params[:workload_name_prefix]
        type.lens_name_prefix = params[:lens_name_prefix]
        type.share_resource_type = params[:share_resource_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListShareInvitationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListShareInvitationsOutput, context: context)
        type = Types::ListShareInvitationsOutput.new
        type.share_invitation_summaries = ShareInvitationSummaries.build(params[:share_invitation_summaries], context: "#{context}[:share_invitation_summaries]") unless params[:share_invitation_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.workload_arn = params[:workload_arn]
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

    module ListWorkloadSharesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkloadSharesInput, context: context)
        type = Types::ListWorkloadSharesInput.new
        type.workload_id = params[:workload_id]
        type.shared_with_prefix = params[:shared_with_prefix]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListWorkloadSharesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkloadSharesOutput, context: context)
        type = Types::ListWorkloadSharesOutput.new
        type.workload_id = params[:workload_id]
        type.workload_share_summaries = WorkloadShareSummaries.build(params[:workload_share_summaries], context: "#{context}[:workload_share_summaries]") unless params[:workload_share_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListWorkloadsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkloadsInput, context: context)
        type = Types::ListWorkloadsInput.new
        type.workload_name_prefix = params[:workload_name_prefix]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListWorkloadsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkloadsOutput, context: context)
        type = Types::ListWorkloadsOutput.new
        type.workload_summaries = WorkloadSummaries.build(params[:workload_summaries], context: "#{context}[:workload_summaries]") unless params[:workload_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module Milestone
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Milestone, context: context)
        type = Types::Milestone.new
        type.milestone_number = params[:milestone_number]
        type.milestone_name = params[:milestone_name]
        type.recorded_at = params[:recorded_at]
        type.workload = Workload.build(params[:workload], context: "#{context}[:workload]") unless params[:workload].nil?
        type
      end
    end

    module MilestoneSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MilestoneSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MilestoneSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MilestoneSummary, context: context)
        type = Types::MilestoneSummary.new
        type.milestone_number = params[:milestone_number]
        type.milestone_name = params[:milestone_name]
        type.recorded_at = params[:recorded_at]
        type.workload_summary = WorkloadSummary.build(params[:workload_summary], context: "#{context}[:workload_summary]") unless params[:workload_summary].nil?
        type
      end
    end

    module NotificationSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NotificationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotificationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotificationSummary, context: context)
        type = Types::NotificationSummary.new
        type.type = params[:type]
        type.lens_upgrade_summary = LensUpgradeSummary.build(params[:lens_upgrade_summary], context: "#{context}[:lens_upgrade_summary]") unless params[:lens_upgrade_summary].nil?
        type
      end
    end

    module PillarDifference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PillarDifference, context: context)
        type = Types::PillarDifference.new
        type.pillar_id = params[:pillar_id]
        type.pillar_name = params[:pillar_name]
        type.difference_status = params[:difference_status]
        type.question_differences = QuestionDifferences.build(params[:question_differences], context: "#{context}[:question_differences]") unless params[:question_differences].nil?
        type
      end
    end

    module PillarDifferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PillarDifference.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PillarNotes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module PillarReviewSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PillarReviewSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PillarReviewSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PillarReviewSummary, context: context)
        type = Types::PillarReviewSummary.new
        type.pillar_id = params[:pillar_id]
        type.pillar_name = params[:pillar_name]
        type.notes = params[:notes]
        type.risk_counts = RiskCounts.build(params[:risk_counts], context: "#{context}[:risk_counts]") unless params[:risk_counts].nil?
        type
      end
    end

    module QuestionDifference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QuestionDifference, context: context)
        type = Types::QuestionDifference.new
        type.question_id = params[:question_id]
        type.question_title = params[:question_title]
        type.difference_status = params[:difference_status]
        type
      end
    end

    module QuestionDifferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QuestionDifference.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module RiskCounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module SelectedChoices
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type.resource_id = params[:resource_id]
        type.resource_type = params[:resource_type]
        type.quota_code = params[:quota_code]
        type.service_code = params[:service_code]
        type
      end
    end

    module ShareInvitation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShareInvitation, context: context)
        type = Types::ShareInvitation.new
        type.share_invitation_id = params[:share_invitation_id]
        type.share_resource_type = params[:share_resource_type]
        type.workload_id = params[:workload_id]
        type.lens_alias = params[:lens_alias]
        type.lens_arn = params[:lens_arn]
        type
      end
    end

    module ShareInvitationSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ShareInvitationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ShareInvitationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShareInvitationSummary, context: context)
        type = Types::ShareInvitationSummary.new
        type.share_invitation_id = params[:share_invitation_id]
        type.shared_by = params[:shared_by]
        type.shared_with = params[:shared_with]
        type.permission_type = params[:permission_type]
        type.share_resource_type = params[:share_resource_type]
        type.workload_name = params[:workload_name]
        type.workload_id = params[:workload_id]
        type.lens_name = params[:lens_name]
        type.lens_arn = params[:lens_arn]
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
        type.workload_arn = params[:workload_arn]
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

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type.quota_code = params[:quota_code]
        type.service_code = params[:service_code]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.workload_arn = params[:workload_arn]
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

    module UpdateAnswerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAnswerInput, context: context)
        type = Types::UpdateAnswerInput.new
        type.workload_id = params[:workload_id]
        type.lens_alias = params[:lens_alias]
        type.question_id = params[:question_id]
        type.selected_choices = SelectedChoices.build(params[:selected_choices], context: "#{context}[:selected_choices]") unless params[:selected_choices].nil?
        type.choice_updates = ChoiceUpdates.build(params[:choice_updates], context: "#{context}[:choice_updates]") unless params[:choice_updates].nil?
        type.notes = params[:notes]
        type.is_applicable = params[:is_applicable]
        type.reason = params[:reason]
        type
      end
    end

    module UpdateAnswerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAnswerOutput, context: context)
        type = Types::UpdateAnswerOutput.new
        type.workload_id = params[:workload_id]
        type.lens_alias = params[:lens_alias]
        type.lens_arn = params[:lens_arn]
        type.answer = Answer.build(params[:answer], context: "#{context}[:answer]") unless params[:answer].nil?
        type
      end
    end

    module UpdateLensReviewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLensReviewInput, context: context)
        type = Types::UpdateLensReviewInput.new
        type.workload_id = params[:workload_id]
        type.lens_alias = params[:lens_alias]
        type.lens_notes = params[:lens_notes]
        type.pillar_notes = PillarNotes.build(params[:pillar_notes], context: "#{context}[:pillar_notes]") unless params[:pillar_notes].nil?
        type
      end
    end

    module UpdateLensReviewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLensReviewOutput, context: context)
        type = Types::UpdateLensReviewOutput.new
        type.workload_id = params[:workload_id]
        type.lens_review = LensReview.build(params[:lens_review], context: "#{context}[:lens_review]") unless params[:lens_review].nil?
        type
      end
    end

    module UpdateShareInvitationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateShareInvitationInput, context: context)
        type = Types::UpdateShareInvitationInput.new
        type.share_invitation_id = params[:share_invitation_id]
        type.share_invitation_action = params[:share_invitation_action]
        type
      end
    end

    module UpdateShareInvitationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateShareInvitationOutput, context: context)
        type = Types::UpdateShareInvitationOutput.new
        type.share_invitation = ShareInvitation.build(params[:share_invitation], context: "#{context}[:share_invitation]") unless params[:share_invitation].nil?
        type
      end
    end

    module UpdateWorkloadInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkloadInput, context: context)
        type = Types::UpdateWorkloadInput.new
        type.workload_id = params[:workload_id]
        type.workload_name = params[:workload_name]
        type.description = params[:description]
        type.environment = params[:environment]
        type.account_ids = WorkloadAccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.aws_regions = WorkloadAwsRegions.build(params[:aws_regions], context: "#{context}[:aws_regions]") unless params[:aws_regions].nil?
        type.non_aws_regions = WorkloadNonAwsRegions.build(params[:non_aws_regions], context: "#{context}[:non_aws_regions]") unless params[:non_aws_regions].nil?
        type.pillar_priorities = WorkloadPillarPriorities.build(params[:pillar_priorities], context: "#{context}[:pillar_priorities]") unless params[:pillar_priorities].nil?
        type.architectural_design = params[:architectural_design]
        type.review_owner = params[:review_owner]
        type.is_review_owner_update_acknowledged = params[:is_review_owner_update_acknowledged]
        type.industry_type = params[:industry_type]
        type.industry = params[:industry]
        type.notes = params[:notes]
        type.improvement_status = params[:improvement_status]
        type
      end
    end

    module UpdateWorkloadOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkloadOutput, context: context)
        type = Types::UpdateWorkloadOutput.new
        type.workload = Workload.build(params[:workload], context: "#{context}[:workload]") unless params[:workload].nil?
        type
      end
    end

    module UpdateWorkloadShareInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkloadShareInput, context: context)
        type = Types::UpdateWorkloadShareInput.new
        type.share_id = params[:share_id]
        type.workload_id = params[:workload_id]
        type.permission_type = params[:permission_type]
        type
      end
    end

    module UpdateWorkloadShareOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateWorkloadShareOutput, context: context)
        type = Types::UpdateWorkloadShareOutput.new
        type.workload_id = params[:workload_id]
        type.workload_share = WorkloadShare.build(params[:workload_share], context: "#{context}[:workload_share]") unless params[:workload_share].nil?
        type
      end
    end

    module UpgradeLensReviewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpgradeLensReviewInput, context: context)
        type = Types::UpgradeLensReviewInput.new
        type.workload_id = params[:workload_id]
        type.lens_alias = params[:lens_alias]
        type.milestone_name = params[:milestone_name]
        type.client_request_token = params[:client_request_token]
        type
      end
    end

    module UpgradeLensReviewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpgradeLensReviewOutput, context: context)
        type = Types::UpgradeLensReviewOutput.new
        type
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type.reason = params[:reason]
        type.fields = ValidationExceptionFieldList.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type
      end
    end

    module ValidationExceptionField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationExceptionField, context: context)
        type = Types::ValidationExceptionField.new
        type.name = params[:name]
        type.message = params[:message]
        type
      end
    end

    module ValidationExceptionFieldList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ValidationExceptionField.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VersionDifferences
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VersionDifferences, context: context)
        type = Types::VersionDifferences.new
        type.pillar_differences = PillarDifferences.build(params[:pillar_differences], context: "#{context}[:pillar_differences]") unless params[:pillar_differences].nil?
        type
      end
    end

    module Workload
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Workload, context: context)
        type = Types::Workload.new
        type.workload_id = params[:workload_id]
        type.workload_arn = params[:workload_arn]
        type.workload_name = params[:workload_name]
        type.description = params[:description]
        type.environment = params[:environment]
        type.updated_at = params[:updated_at]
        type.account_ids = WorkloadAccountIds.build(params[:account_ids], context: "#{context}[:account_ids]") unless params[:account_ids].nil?
        type.aws_regions = WorkloadAwsRegions.build(params[:aws_regions], context: "#{context}[:aws_regions]") unless params[:aws_regions].nil?
        type.non_aws_regions = WorkloadNonAwsRegions.build(params[:non_aws_regions], context: "#{context}[:non_aws_regions]") unless params[:non_aws_regions].nil?
        type.architectural_design = params[:architectural_design]
        type.review_owner = params[:review_owner]
        type.review_restriction_date = params[:review_restriction_date]
        type.is_review_owner_update_acknowledged = params[:is_review_owner_update_acknowledged]
        type.industry_type = params[:industry_type]
        type.industry = params[:industry]
        type.notes = params[:notes]
        type.improvement_status = params[:improvement_status]
        type.risk_counts = RiskCounts.build(params[:risk_counts], context: "#{context}[:risk_counts]") unless params[:risk_counts].nil?
        type.pillar_priorities = WorkloadPillarPriorities.build(params[:pillar_priorities], context: "#{context}[:pillar_priorities]") unless params[:pillar_priorities].nil?
        type.lenses = WorkloadLenses.build(params[:lenses], context: "#{context}[:lenses]") unless params[:lenses].nil?
        type.owner = params[:owner]
        type.share_invitation_id = params[:share_invitation_id]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module WorkloadAccountIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module WorkloadAwsRegions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module WorkloadLenses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module WorkloadNonAwsRegions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module WorkloadPillarPriorities
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module WorkloadShare
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkloadShare, context: context)
        type = Types::WorkloadShare.new
        type.share_id = params[:share_id]
        type.shared_by = params[:shared_by]
        type.shared_with = params[:shared_with]
        type.permission_type = params[:permission_type]
        type.status = params[:status]
        type.workload_name = params[:workload_name]
        type.workload_id = params[:workload_id]
        type
      end
    end

    module WorkloadShareSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkloadShareSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WorkloadShareSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkloadShareSummary, context: context)
        type = Types::WorkloadShareSummary.new
        type.share_id = params[:share_id]
        type.shared_with = params[:shared_with]
        type.permission_type = params[:permission_type]
        type.status = params[:status]
        type
      end
    end

    module WorkloadSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkloadSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WorkloadSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkloadSummary, context: context)
        type = Types::WorkloadSummary.new
        type.workload_id = params[:workload_id]
        type.workload_arn = params[:workload_arn]
        type.workload_name = params[:workload_name]
        type.owner = params[:owner]
        type.updated_at = params[:updated_at]
        type.lenses = WorkloadLenses.build(params[:lenses], context: "#{context}[:lenses]") unless params[:lenses].nil?
        type.risk_counts = RiskCounts.build(params[:risk_counts], context: "#{context}[:risk_counts]") unless params[:risk_counts].nil?
        type.improvement_status = params[:improvement_status]
        type
      end
    end

  end
end
