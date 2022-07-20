# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::WellArchitected
  module Parsers

    # Operation Parser for AssociateLenses
    class AssociateLenses
      def self.parse(http_resp)
        data = Types::AssociateLensesOutput.new
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

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.quota_code = map['QuotaCode']
        data.service_code = map['ServiceCode']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.reason = map['Reason']
        data.fields = (ValidationExceptionFieldList.parse(map['Fields']) unless map['Fields'].nil?)
        data
      end
    end

    class ValidationExceptionFieldList
      def self.parse(list)
        data = []
        list.map do |value|
          data << ValidationExceptionField.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationExceptionField
      def self.parse(map)
        data = Types::ValidationExceptionField.new
        data.name = map['Name']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for CreateLensShare
    class CreateLensShare
      def self.parse(http_resp)
        data = Types::CreateLensShareOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.share_id = map['ShareId']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data.resource_id = map['ResourceId']
        data.resource_type = map['ResourceType']
        data.quota_code = map['QuotaCode']
        data.service_code = map['ServiceCode']
        data
      end
    end

    # Operation Parser for CreateLensVersion
    class CreateLensVersion
      def self.parse(http_resp)
        data = Types::CreateLensVersionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.lens_arn = map['LensArn']
        data.lens_version = map['LensVersion']
        data
      end
    end

    # Operation Parser for CreateMilestone
    class CreateMilestone
      def self.parse(http_resp)
        data = Types::CreateMilestoneOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workload_id = map['WorkloadId']
        data.milestone_number = map['MilestoneNumber']
        data
      end
    end

    # Operation Parser for CreateWorkload
    class CreateWorkload
      def self.parse(http_resp)
        data = Types::CreateWorkloadOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workload_id = map['WorkloadId']
        data.workload_arn = map['WorkloadArn']
        data
      end
    end

    # Operation Parser for CreateWorkloadShare
    class CreateWorkloadShare
      def self.parse(http_resp)
        data = Types::CreateWorkloadShareOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workload_id = map['WorkloadId']
        data.share_id = map['ShareId']
        data
      end
    end

    # Operation Parser for DeleteLens
    class DeleteLens
      def self.parse(http_resp)
        data = Types::DeleteLensOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteLensShare
    class DeleteLensShare
      def self.parse(http_resp)
        data = Types::DeleteLensShareOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteWorkload
    class DeleteWorkload
      def self.parse(http_resp)
        data = Types::DeleteWorkloadOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteWorkloadShare
    class DeleteWorkloadShare
      def self.parse(http_resp)
        data = Types::DeleteWorkloadShareOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DisassociateLenses
    class DisassociateLenses
      def self.parse(http_resp)
        data = Types::DisassociateLensesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for ExportLens
    class ExportLens
      def self.parse(http_resp)
        data = Types::ExportLensOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.lens_json = map['LensJSON']
        data
      end
    end

    # Operation Parser for GetAnswer
    class GetAnswer
      def self.parse(http_resp)
        data = Types::GetAnswerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workload_id = map['WorkloadId']
        data.milestone_number = map['MilestoneNumber']
        data.lens_alias = map['LensAlias']
        data.lens_arn = map['LensArn']
        data.answer = (Answer.parse(map['Answer']) unless map['Answer'].nil?)
        data
      end
    end

    class Answer
      def self.parse(map)
        data = Types::Answer.new
        data.question_id = map['QuestionId']
        data.pillar_id = map['PillarId']
        data.question_title = map['QuestionTitle']
        data.question_description = map['QuestionDescription']
        data.improvement_plan_url = map['ImprovementPlanUrl']
        data.helpful_resource_url = map['HelpfulResourceUrl']
        data.helpful_resource_display_text = map['HelpfulResourceDisplayText']
        data.choices = (Choices.parse(map['Choices']) unless map['Choices'].nil?)
        data.selected_choices = (SelectedChoices.parse(map['SelectedChoices']) unless map['SelectedChoices'].nil?)
        data.choice_answers = (ChoiceAnswers.parse(map['ChoiceAnswers']) unless map['ChoiceAnswers'].nil?)
        data.is_applicable = map['IsApplicable']
        data.risk = map['Risk']
        data.notes = map['Notes']
        data.reason = map['Reason']
        return data
      end
    end

    class ChoiceAnswers
      def self.parse(list)
        data = []
        list.map do |value|
          data << ChoiceAnswer.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChoiceAnswer
      def self.parse(map)
        data = Types::ChoiceAnswer.new
        data.choice_id = map['ChoiceId']
        data.status = map['Status']
        data.reason = map['Reason']
        data.notes = map['Notes']
        return data
      end
    end

    class SelectedChoices
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Choices
      def self.parse(list)
        data = []
        list.map do |value|
          data << Choice.parse(value) unless value.nil?
        end
        data
      end
    end

    class Choice
      def self.parse(map)
        data = Types::Choice.new
        data.choice_id = map['ChoiceId']
        data.title = map['Title']
        data.description = map['Description']
        data.helpful_resource = (ChoiceContent.parse(map['HelpfulResource']) unless map['HelpfulResource'].nil?)
        data.improvement_plan = (ChoiceContent.parse(map['ImprovementPlan']) unless map['ImprovementPlan'].nil?)
        return data
      end
    end

    class ChoiceContent
      def self.parse(map)
        data = Types::ChoiceContent.new
        data.display_text = map['DisplayText']
        data.url = map['Url']
        return data
      end
    end

    # Operation Parser for GetLens
    class GetLens
      def self.parse(http_resp)
        data = Types::GetLensOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.lens = (Lens.parse(map['Lens']) unless map['Lens'].nil?)
        data
      end
    end

    class Lens
      def self.parse(map)
        data = Types::Lens.new
        data.lens_arn = map['LensArn']
        data.lens_version = map['LensVersion']
        data.name = map['Name']
        data.description = map['Description']
        data.owner = map['Owner']
        data.share_invitation_id = map['ShareInvitationId']
        return data
      end
    end

    # Operation Parser for GetLensReview
    class GetLensReview
      def self.parse(http_resp)
        data = Types::GetLensReviewOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workload_id = map['WorkloadId']
        data.milestone_number = map['MilestoneNumber']
        data.lens_review = (LensReview.parse(map['LensReview']) unless map['LensReview'].nil?)
        data
      end
    end

    class LensReview
      def self.parse(map)
        data = Types::LensReview.new
        data.lens_alias = map['LensAlias']
        data.lens_arn = map['LensArn']
        data.lens_version = map['LensVersion']
        data.lens_name = map['LensName']
        data.lens_status = map['LensStatus']
        data.pillar_review_summaries = (PillarReviewSummaries.parse(map['PillarReviewSummaries']) unless map['PillarReviewSummaries'].nil?)
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.notes = map['Notes']
        data.risk_counts = (RiskCounts.parse(map['RiskCounts']) unless map['RiskCounts'].nil?)
        data.next_token = map['NextToken']
        return data
      end
    end

    class RiskCounts
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class PillarReviewSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << PillarReviewSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class PillarReviewSummary
      def self.parse(map)
        data = Types::PillarReviewSummary.new
        data.pillar_id = map['PillarId']
        data.pillar_name = map['PillarName']
        data.notes = map['Notes']
        data.risk_counts = (RiskCounts.parse(map['RiskCounts']) unless map['RiskCounts'].nil?)
        return data
      end
    end

    # Operation Parser for GetLensReviewReport
    class GetLensReviewReport
      def self.parse(http_resp)
        data = Types::GetLensReviewReportOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workload_id = map['WorkloadId']
        data.milestone_number = map['MilestoneNumber']
        data.lens_review_report = (LensReviewReport.parse(map['LensReviewReport']) unless map['LensReviewReport'].nil?)
        data
      end
    end

    class LensReviewReport
      def self.parse(map)
        data = Types::LensReviewReport.new
        data.lens_alias = map['LensAlias']
        data.lens_arn = map['LensArn']
        data.base64_string = map['Base64String']
        return data
      end
    end

    # Operation Parser for GetLensVersionDifference
    class GetLensVersionDifference
      def self.parse(http_resp)
        data = Types::GetLensVersionDifferenceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.lens_alias = map['LensAlias']
        data.lens_arn = map['LensArn']
        data.base_lens_version = map['BaseLensVersion']
        data.target_lens_version = map['TargetLensVersion']
        data.latest_lens_version = map['LatestLensVersion']
        data.version_differences = (VersionDifferences.parse(map['VersionDifferences']) unless map['VersionDifferences'].nil?)
        data
      end
    end

    class VersionDifferences
      def self.parse(map)
        data = Types::VersionDifferences.new
        data.pillar_differences = (PillarDifferences.parse(map['PillarDifferences']) unless map['PillarDifferences'].nil?)
        return data
      end
    end

    class PillarDifferences
      def self.parse(list)
        data = []
        list.map do |value|
          data << PillarDifference.parse(value) unless value.nil?
        end
        data
      end
    end

    class PillarDifference
      def self.parse(map)
        data = Types::PillarDifference.new
        data.pillar_id = map['PillarId']
        data.pillar_name = map['PillarName']
        data.difference_status = map['DifferenceStatus']
        data.question_differences = (QuestionDifferences.parse(map['QuestionDifferences']) unless map['QuestionDifferences'].nil?)
        return data
      end
    end

    class QuestionDifferences
      def self.parse(list)
        data = []
        list.map do |value|
          data << QuestionDifference.parse(value) unless value.nil?
        end
        data
      end
    end

    class QuestionDifference
      def self.parse(map)
        data = Types::QuestionDifference.new
        data.question_id = map['QuestionId']
        data.question_title = map['QuestionTitle']
        data.difference_status = map['DifferenceStatus']
        return data
      end
    end

    # Operation Parser for GetMilestone
    class GetMilestone
      def self.parse(http_resp)
        data = Types::GetMilestoneOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workload_id = map['WorkloadId']
        data.milestone = (Milestone.parse(map['Milestone']) unless map['Milestone'].nil?)
        data
      end
    end

    class Milestone
      def self.parse(map)
        data = Types::Milestone.new
        data.milestone_number = map['MilestoneNumber']
        data.milestone_name = map['MilestoneName']
        data.recorded_at = Time.at(map['RecordedAt'].to_i) if map['RecordedAt']
        data.workload = (Workload.parse(map['Workload']) unless map['Workload'].nil?)
        return data
      end
    end

    class Workload
      def self.parse(map)
        data = Types::Workload.new
        data.workload_id = map['WorkloadId']
        data.workload_arn = map['WorkloadArn']
        data.workload_name = map['WorkloadName']
        data.description = map['Description']
        data.environment = map['Environment']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.account_ids = (WorkloadAccountIds.parse(map['AccountIds']) unless map['AccountIds'].nil?)
        data.aws_regions = (WorkloadAwsRegions.parse(map['AwsRegions']) unless map['AwsRegions'].nil?)
        data.non_aws_regions = (WorkloadNonAwsRegions.parse(map['NonAwsRegions']) unless map['NonAwsRegions'].nil?)
        data.architectural_design = map['ArchitecturalDesign']
        data.review_owner = map['ReviewOwner']
        data.review_restriction_date = Time.at(map['ReviewRestrictionDate'].to_i) if map['ReviewRestrictionDate']
        data.is_review_owner_update_acknowledged = map['IsReviewOwnerUpdateAcknowledged']
        data.industry_type = map['IndustryType']
        data.industry = map['Industry']
        data.notes = map['Notes']
        data.improvement_status = map['ImprovementStatus']
        data.risk_counts = (RiskCounts.parse(map['RiskCounts']) unless map['RiskCounts'].nil?)
        data.pillar_priorities = (WorkloadPillarPriorities.parse(map['PillarPriorities']) unless map['PillarPriorities'].nil?)
        data.lenses = (WorkloadLenses.parse(map['Lenses']) unless map['Lenses'].nil?)
        data.owner = map['Owner']
        data.share_invitation_id = map['ShareInvitationId']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class WorkloadLenses
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class WorkloadPillarPriorities
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class WorkloadNonAwsRegions
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class WorkloadAwsRegions
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class WorkloadAccountIds
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetWorkload
    class GetWorkload
      def self.parse(http_resp)
        data = Types::GetWorkloadOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workload = (Workload.parse(map['Workload']) unless map['Workload'].nil?)
        data
      end
    end

    # Operation Parser for ImportLens
    class ImportLens
      def self.parse(http_resp)
        data = Types::ImportLensOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.lens_arn = map['LensArn']
        data.status = map['Status']
        data
      end
    end

    # Operation Parser for ListAnswers
    class ListAnswers
      def self.parse(http_resp)
        data = Types::ListAnswersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workload_id = map['WorkloadId']
        data.milestone_number = map['MilestoneNumber']
        data.lens_alias = map['LensAlias']
        data.lens_arn = map['LensArn']
        data.answer_summaries = (AnswerSummaries.parse(map['AnswerSummaries']) unless map['AnswerSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AnswerSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << AnswerSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AnswerSummary
      def self.parse(map)
        data = Types::AnswerSummary.new
        data.question_id = map['QuestionId']
        data.pillar_id = map['PillarId']
        data.question_title = map['QuestionTitle']
        data.choices = (Choices.parse(map['Choices']) unless map['Choices'].nil?)
        data.selected_choices = (SelectedChoices.parse(map['SelectedChoices']) unless map['SelectedChoices'].nil?)
        data.choice_answer_summaries = (ChoiceAnswerSummaries.parse(map['ChoiceAnswerSummaries']) unless map['ChoiceAnswerSummaries'].nil?)
        data.is_applicable = map['IsApplicable']
        data.risk = map['Risk']
        data.reason = map['Reason']
        return data
      end
    end

    class ChoiceAnswerSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << ChoiceAnswerSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChoiceAnswerSummary
      def self.parse(map)
        data = Types::ChoiceAnswerSummary.new
        data.choice_id = map['ChoiceId']
        data.status = map['Status']
        data.reason = map['Reason']
        return data
      end
    end

    # Operation Parser for ListLensReviewImprovements
    class ListLensReviewImprovements
      def self.parse(http_resp)
        data = Types::ListLensReviewImprovementsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workload_id = map['WorkloadId']
        data.milestone_number = map['MilestoneNumber']
        data.lens_alias = map['LensAlias']
        data.lens_arn = map['LensArn']
        data.improvement_summaries = (ImprovementSummaries.parse(map['ImprovementSummaries']) unless map['ImprovementSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ImprovementSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << ImprovementSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ImprovementSummary
      def self.parse(map)
        data = Types::ImprovementSummary.new
        data.question_id = map['QuestionId']
        data.pillar_id = map['PillarId']
        data.question_title = map['QuestionTitle']
        data.risk = map['Risk']
        data.improvement_plan_url = map['ImprovementPlanUrl']
        data.improvement_plans = (ChoiceImprovementPlans.parse(map['ImprovementPlans']) unless map['ImprovementPlans'].nil?)
        return data
      end
    end

    class ChoiceImprovementPlans
      def self.parse(list)
        data = []
        list.map do |value|
          data << ChoiceImprovementPlan.parse(value) unless value.nil?
        end
        data
      end
    end

    class ChoiceImprovementPlan
      def self.parse(map)
        data = Types::ChoiceImprovementPlan.new
        data.choice_id = map['ChoiceId']
        data.display_text = map['DisplayText']
        data.improvement_plan_url = map['ImprovementPlanUrl']
        return data
      end
    end

    # Operation Parser for ListLensReviews
    class ListLensReviews
      def self.parse(http_resp)
        data = Types::ListLensReviewsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workload_id = map['WorkloadId']
        data.milestone_number = map['MilestoneNumber']
        data.lens_review_summaries = (LensReviewSummaries.parse(map['LensReviewSummaries']) unless map['LensReviewSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LensReviewSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << LensReviewSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class LensReviewSummary
      def self.parse(map)
        data = Types::LensReviewSummary.new
        data.lens_alias = map['LensAlias']
        data.lens_arn = map['LensArn']
        data.lens_version = map['LensVersion']
        data.lens_name = map['LensName']
        data.lens_status = map['LensStatus']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.risk_counts = (RiskCounts.parse(map['RiskCounts']) unless map['RiskCounts'].nil?)
        return data
      end
    end

    # Operation Parser for ListLensShares
    class ListLensShares
      def self.parse(http_resp)
        data = Types::ListLensSharesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.lens_share_summaries = (LensShareSummaries.parse(map['LensShareSummaries']) unless map['LensShareSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LensShareSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << LensShareSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class LensShareSummary
      def self.parse(map)
        data = Types::LensShareSummary.new
        data.share_id = map['ShareId']
        data.shared_with = map['SharedWith']
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for ListLenses
    class ListLenses
      def self.parse(http_resp)
        data = Types::ListLensesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.lens_summaries = (LensSummaries.parse(map['LensSummaries']) unless map['LensSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LensSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << LensSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class LensSummary
      def self.parse(map)
        data = Types::LensSummary.new
        data.lens_arn = map['LensArn']
        data.lens_alias = map['LensAlias']
        data.lens_name = map['LensName']
        data.lens_type = map['LensType']
        data.description = map['Description']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.lens_version = map['LensVersion']
        data.owner = map['Owner']
        data.lens_status = map['LensStatus']
        return data
      end
    end

    # Operation Parser for ListMilestones
    class ListMilestones
      def self.parse(http_resp)
        data = Types::ListMilestonesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workload_id = map['WorkloadId']
        data.milestone_summaries = (MilestoneSummaries.parse(map['MilestoneSummaries']) unless map['MilestoneSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MilestoneSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << MilestoneSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class MilestoneSummary
      def self.parse(map)
        data = Types::MilestoneSummary.new
        data.milestone_number = map['MilestoneNumber']
        data.milestone_name = map['MilestoneName']
        data.recorded_at = Time.at(map['RecordedAt'].to_i) if map['RecordedAt']
        data.workload_summary = (WorkloadSummary.parse(map['WorkloadSummary']) unless map['WorkloadSummary'].nil?)
        return data
      end
    end

    class WorkloadSummary
      def self.parse(map)
        data = Types::WorkloadSummary.new
        data.workload_id = map['WorkloadId']
        data.workload_arn = map['WorkloadArn']
        data.workload_name = map['WorkloadName']
        data.owner = map['Owner']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.lenses = (WorkloadLenses.parse(map['Lenses']) unless map['Lenses'].nil?)
        data.risk_counts = (RiskCounts.parse(map['RiskCounts']) unless map['RiskCounts'].nil?)
        data.improvement_status = map['ImprovementStatus']
        return data
      end
    end

    # Operation Parser for ListNotifications
    class ListNotifications
      def self.parse(http_resp)
        data = Types::ListNotificationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.notification_summaries = (NotificationSummaries.parse(map['NotificationSummaries']) unless map['NotificationSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class NotificationSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << NotificationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class NotificationSummary
      def self.parse(map)
        data = Types::NotificationSummary.new
        data.type = map['Type']
        data.lens_upgrade_summary = (LensUpgradeSummary.parse(map['LensUpgradeSummary']) unless map['LensUpgradeSummary'].nil?)
        return data
      end
    end

    class LensUpgradeSummary
      def self.parse(map)
        data = Types::LensUpgradeSummary.new
        data.workload_id = map['WorkloadId']
        data.workload_name = map['WorkloadName']
        data.lens_alias = map['LensAlias']
        data.lens_arn = map['LensArn']
        data.current_lens_version = map['CurrentLensVersion']
        data.latest_lens_version = map['LatestLensVersion']
        return data
      end
    end

    # Operation Parser for ListShareInvitations
    class ListShareInvitations
      def self.parse(http_resp)
        data = Types::ListShareInvitationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.share_invitation_summaries = (ShareInvitationSummaries.parse(map['ShareInvitationSummaries']) unless map['ShareInvitationSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ShareInvitationSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << ShareInvitationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class ShareInvitationSummary
      def self.parse(map)
        data = Types::ShareInvitationSummary.new
        data.share_invitation_id = map['ShareInvitationId']
        data.shared_by = map['SharedBy']
        data.shared_with = map['SharedWith']
        data.permission_type = map['PermissionType']
        data.share_resource_type = map['ShareResourceType']
        data.workload_name = map['WorkloadName']
        data.workload_id = map['WorkloadId']
        data.lens_name = map['LensName']
        data.lens_arn = map['LensArn']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for ListWorkloadShares
    class ListWorkloadShares
      def self.parse(http_resp)
        data = Types::ListWorkloadSharesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workload_id = map['WorkloadId']
        data.workload_share_summaries = (WorkloadShareSummaries.parse(map['WorkloadShareSummaries']) unless map['WorkloadShareSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class WorkloadShareSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << WorkloadShareSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class WorkloadShareSummary
      def self.parse(map)
        data = Types::WorkloadShareSummary.new
        data.share_id = map['ShareId']
        data.shared_with = map['SharedWith']
        data.permission_type = map['PermissionType']
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for ListWorkloads
    class ListWorkloads
      def self.parse(http_resp)
        data = Types::ListWorkloadsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workload_summaries = (WorkloadSummaries.parse(map['WorkloadSummaries']) unless map['WorkloadSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class WorkloadSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << WorkloadSummary.parse(value) unless value.nil?
        end
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

    # Operation Parser for UpdateAnswer
    class UpdateAnswer
      def self.parse(http_resp)
        data = Types::UpdateAnswerOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workload_id = map['WorkloadId']
        data.lens_alias = map['LensAlias']
        data.lens_arn = map['LensArn']
        data.answer = (Answer.parse(map['Answer']) unless map['Answer'].nil?)
        data
      end
    end

    # Operation Parser for UpdateLensReview
    class UpdateLensReview
      def self.parse(http_resp)
        data = Types::UpdateLensReviewOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workload_id = map['WorkloadId']
        data.lens_review = (LensReview.parse(map['LensReview']) unless map['LensReview'].nil?)
        data
      end
    end

    # Operation Parser for UpdateShareInvitation
    class UpdateShareInvitation
      def self.parse(http_resp)
        data = Types::UpdateShareInvitationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.share_invitation = (ShareInvitation.parse(map['ShareInvitation']) unless map['ShareInvitation'].nil?)
        data
      end
    end

    class ShareInvitation
      def self.parse(map)
        data = Types::ShareInvitation.new
        data.share_invitation_id = map['ShareInvitationId']
        data.share_resource_type = map['ShareResourceType']
        data.workload_id = map['WorkloadId']
        data.lens_alias = map['LensAlias']
        data.lens_arn = map['LensArn']
        return data
      end
    end

    # Operation Parser for UpdateWorkload
    class UpdateWorkload
      def self.parse(http_resp)
        data = Types::UpdateWorkloadOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workload = (Workload.parse(map['Workload']) unless map['Workload'].nil?)
        data
      end
    end

    # Operation Parser for UpdateWorkloadShare
    class UpdateWorkloadShare
      def self.parse(http_resp)
        data = Types::UpdateWorkloadShareOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.workload_id = map['WorkloadId']
        data.workload_share = (WorkloadShare.parse(map['WorkloadShare']) unless map['WorkloadShare'].nil?)
        data
      end
    end

    class WorkloadShare
      def self.parse(map)
        data = Types::WorkloadShare.new
        data.share_id = map['ShareId']
        data.shared_by = map['SharedBy']
        data.shared_with = map['SharedWith']
        data.permission_type = map['PermissionType']
        data.status = map['Status']
        data.workload_name = map['WorkloadName']
        data.workload_id = map['WorkloadId']
        return data
      end
    end

    # Operation Parser for UpgradeLensReview
    class UpgradeLensReview
      def self.parse(http_resp)
        data = Types::UpgradeLensReviewOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
