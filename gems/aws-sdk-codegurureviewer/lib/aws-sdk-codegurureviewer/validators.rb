# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::CodeGuruReviewer
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AnalysisTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AssociateRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateRepositoryInput, context: context)
        Repository.validate!(input[:repository], context: "#{context}[:repository]") unless input[:repository].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        KMSKeyDetails.validate!(input[:kms_key_details], context: "#{context}[:kms_key_details]") unless input[:kms_key_details].nil?
      end
    end

    class AssociateRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateRepositoryOutput, context: context)
        RepositoryAssociation.validate!(input[:repository_association], context: "#{context}[:repository_association]") unless input[:repository_association].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class BranchDiffSourceCodeType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BranchDiffSourceCodeType, context: context)
        Hearth::Validator.validate!(input[:source_branch_name], ::String, context: "#{context}[:source_branch_name]")
        Hearth::Validator.validate!(input[:destination_branch_name], ::String, context: "#{context}[:destination_branch_name]")
      end
    end

    class CodeArtifacts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeArtifacts, context: context)
        Hearth::Validator.validate!(input[:source_code_artifacts_object_key], ::String, context: "#{context}[:source_code_artifacts_object_key]")
        Hearth::Validator.validate!(input[:build_artifacts_object_key], ::String, context: "#{context}[:build_artifacts_object_key]")
      end
    end

    class CodeCommitRepository
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeCommitRepository, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CodeReview
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeReview, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:code_review_arn], ::String, context: "#{context}[:code_review_arn]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:provider_type], ::String, context: "#{context}[:provider_type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:created_time_stamp], ::Time, context: "#{context}[:created_time_stamp]")
        Hearth::Validator.validate!(input[:last_updated_time_stamp], ::Time, context: "#{context}[:last_updated_time_stamp]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        SourceCodeType.validate!(input[:source_code_type], context: "#{context}[:source_code_type]") unless input[:source_code_type].nil?
        Hearth::Validator.validate!(input[:association_arn], ::String, context: "#{context}[:association_arn]")
        Metrics.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
        AnalysisTypes.validate!(input[:analysis_types], context: "#{context}[:analysis_types]") unless input[:analysis_types].nil?
        Hearth::Validator.validate!(input[:config_file_state], ::String, context: "#{context}[:config_file_state]")
      end
    end

    class CodeReviewSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CodeReviewSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CodeReviewSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeReviewSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:code_review_arn], ::String, context: "#{context}[:code_review_arn]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:provider_type], ::String, context: "#{context}[:provider_type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:created_time_stamp], ::Time, context: "#{context}[:created_time_stamp]")
        Hearth::Validator.validate!(input[:last_updated_time_stamp], ::Time, context: "#{context}[:last_updated_time_stamp]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        MetricsSummary.validate!(input[:metrics_summary], context: "#{context}[:metrics_summary]") unless input[:metrics_summary].nil?
        SourceCodeType.validate!(input[:source_code_type], context: "#{context}[:source_code_type]") unless input[:source_code_type].nil?
      end
    end

    class CodeReviewType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CodeReviewType, context: context)
        RepositoryAnalysis.validate!(input[:repository_analysis], context: "#{context}[:repository_analysis]") unless input[:repository_analysis].nil?
        AnalysisTypes.validate!(input[:analysis_types], context: "#{context}[:analysis_types]") unless input[:analysis_types].nil?
      end
    end

    class CommitDiffSourceCodeType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommitDiffSourceCodeType, context: context)
        Hearth::Validator.validate!(input[:source_commit], ::String, context: "#{context}[:source_commit]")
        Hearth::Validator.validate!(input[:destination_commit], ::String, context: "#{context}[:destination_commit]")
        Hearth::Validator.validate!(input[:merge_base_commit], ::String, context: "#{context}[:merge_base_commit]")
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateCodeReviewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCodeReviewInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:repository_association_arn], ::String, context: "#{context}[:repository_association_arn]")
        CodeReviewType.validate!(input[:type], context: "#{context}[:type]") unless input[:type].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class CreateCodeReviewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCodeReviewOutput, context: context)
        CodeReview.validate!(input[:code_review], context: "#{context}[:code_review]") unless input[:code_review].nil?
      end
    end

    class DescribeCodeReviewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCodeReviewInput, context: context)
        Hearth::Validator.validate!(input[:code_review_arn], ::String, context: "#{context}[:code_review_arn]")
      end
    end

    class DescribeCodeReviewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeCodeReviewOutput, context: context)
        CodeReview.validate!(input[:code_review], context: "#{context}[:code_review]") unless input[:code_review].nil?
      end
    end

    class DescribeRecommendationFeedbackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecommendationFeedbackInput, context: context)
        Hearth::Validator.validate!(input[:code_review_arn], ::String, context: "#{context}[:code_review_arn]")
        Hearth::Validator.validate!(input[:recommendation_id], ::String, context: "#{context}[:recommendation_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class DescribeRecommendationFeedbackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRecommendationFeedbackOutput, context: context)
        RecommendationFeedback.validate!(input[:recommendation_feedback], context: "#{context}[:recommendation_feedback]") unless input[:recommendation_feedback].nil?
      end
    end

    class DescribeRepositoryAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRepositoryAssociationInput, context: context)
        Hearth::Validator.validate!(input[:association_arn], ::String, context: "#{context}[:association_arn]")
      end
    end

    class DescribeRepositoryAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRepositoryAssociationOutput, context: context)
        RepositoryAssociation.validate!(input[:repository_association], context: "#{context}[:repository_association]") unless input[:repository_association].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class DisassociateRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:association_arn], ::String, context: "#{context}[:association_arn]")
      end
    end

    class DisassociateRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateRepositoryOutput, context: context)
        RepositoryAssociation.validate!(input[:repository_association], context: "#{context}[:repository_association]") unless input[:repository_association].nil?
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class EventInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventInfo, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JobStates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class KMSKeyDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSKeyDetails, context: context)
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
        Hearth::Validator.validate!(input[:encryption_option], ::String, context: "#{context}[:encryption_option]")
      end
    end

    class ListCodeReviewsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCodeReviewsInput, context: context)
        ProviderTypes.validate!(input[:provider_types], context: "#{context}[:provider_types]") unless input[:provider_types].nil?
        JobStates.validate!(input[:states], context: "#{context}[:states]") unless input[:states].nil?
        RepositoryNames.validate!(input[:repository_names], context: "#{context}[:repository_names]") unless input[:repository_names].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCodeReviewsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCodeReviewsOutput, context: context)
        CodeReviewSummaries.validate!(input[:code_review_summaries], context: "#{context}[:code_review_summaries]") unless input[:code_review_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRecommendationFeedbackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecommendationFeedbackInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:code_review_arn], ::String, context: "#{context}[:code_review_arn]")
        UserIds.validate!(input[:user_ids], context: "#{context}[:user_ids]") unless input[:user_ids].nil?
        RecommendationIds.validate!(input[:recommendation_ids], context: "#{context}[:recommendation_ids]") unless input[:recommendation_ids].nil?
      end
    end

    class ListRecommendationFeedbackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecommendationFeedbackOutput, context: context)
        RecommendationFeedbackSummaries.validate!(input[:recommendation_feedback_summaries], context: "#{context}[:recommendation_feedback_summaries]") unless input[:recommendation_feedback_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRecommendationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecommendationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:code_review_arn], ::String, context: "#{context}[:code_review_arn]")
      end
    end

    class ListRecommendationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRecommendationsOutput, context: context)
        RecommendationSummaries.validate!(input[:recommendation_summaries], context: "#{context}[:recommendation_summaries]") unless input[:recommendation_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRepositoryAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRepositoryAssociationsInput, context: context)
        ProviderTypes.validate!(input[:provider_types], context: "#{context}[:provider_types]") unless input[:provider_types].nil?
        RepositoryAssociationStates.validate!(input[:states], context: "#{context}[:states]") unless input[:states].nil?
        Names.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Owners.validate!(input[:owners], context: "#{context}[:owners]") unless input[:owners].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRepositoryAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRepositoryAssociationsOutput, context: context)
        RepositoryAssociationSummaries.validate!(input[:repository_association_summaries], context: "#{context}[:repository_association_summaries]") unless input[:repository_association_summaries].nil?
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
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class Metrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Metrics, context: context)
        Hearth::Validator.validate!(input[:metered_lines_of_code_count], ::Integer, context: "#{context}[:metered_lines_of_code_count]")
        Hearth::Validator.validate!(input[:suppressed_lines_of_code_count], ::Integer, context: "#{context}[:suppressed_lines_of_code_count]")
        Hearth::Validator.validate!(input[:findings_count], ::Integer, context: "#{context}[:findings_count]")
      end
    end

    class MetricsSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MetricsSummary, context: context)
        Hearth::Validator.validate!(input[:metered_lines_of_code_count], ::Integer, context: "#{context}[:metered_lines_of_code_count]")
        Hearth::Validator.validate!(input[:suppressed_lines_of_code_count], ::Integer, context: "#{context}[:suppressed_lines_of_code_count]")
        Hearth::Validator.validate!(input[:findings_count], ::Integer, context: "#{context}[:findings_count]")
      end
    end

    class Names
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Owners
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProviderTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PutRecommendationFeedbackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRecommendationFeedbackInput, context: context)
        Hearth::Validator.validate!(input[:code_review_arn], ::String, context: "#{context}[:code_review_arn]")
        Hearth::Validator.validate!(input[:recommendation_id], ::String, context: "#{context}[:recommendation_id]")
        Reactions.validate!(input[:reactions], context: "#{context}[:reactions]") unless input[:reactions].nil?
      end
    end

    class PutRecommendationFeedbackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRecommendationFeedbackOutput, context: context)
      end
    end

    class Reactions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RecommendationFeedback
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationFeedback, context: context)
        Hearth::Validator.validate!(input[:code_review_arn], ::String, context: "#{context}[:code_review_arn]")
        Hearth::Validator.validate!(input[:recommendation_id], ::String, context: "#{context}[:recommendation_id]")
        Reactions.validate!(input[:reactions], context: "#{context}[:reactions]") unless input[:reactions].nil?
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:created_time_stamp], ::Time, context: "#{context}[:created_time_stamp]")
        Hearth::Validator.validate!(input[:last_updated_time_stamp], ::Time, context: "#{context}[:last_updated_time_stamp]")
      end
    end

    class RecommendationFeedbackSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecommendationFeedbackSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecommendationFeedbackSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationFeedbackSummary, context: context)
        Hearth::Validator.validate!(input[:recommendation_id], ::String, context: "#{context}[:recommendation_id]")
        Reactions.validate!(input[:reactions], context: "#{context}[:reactions]") unless input[:reactions].nil?
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class RecommendationIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RecommendationSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecommendationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecommendationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationSummary, context: context)
        Hearth::Validator.validate!(input[:file_path], ::String, context: "#{context}[:file_path]")
        Hearth::Validator.validate!(input[:recommendation_id], ::String, context: "#{context}[:recommendation_id]")
        Hearth::Validator.validate!(input[:start_line], ::Integer, context: "#{context}[:start_line]")
        Hearth::Validator.validate!(input[:end_line], ::Integer, context: "#{context}[:end_line]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:recommendation_category], ::String, context: "#{context}[:recommendation_category]")
        RuleMetadata.validate!(input[:rule_metadata], context: "#{context}[:rule_metadata]") unless input[:rule_metadata].nil?
        Hearth::Validator.validate!(input[:severity], ::String, context: "#{context}[:severity]")
      end
    end

    class Repository
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Repository, context: context)
        CodeCommitRepository.validate!(input[:code_commit], context: "#{context}[:code_commit]") unless input[:code_commit].nil?
        ThirdPartySourceRepository.validate!(input[:bitbucket], context: "#{context}[:bitbucket]") unless input[:bitbucket].nil?
        ThirdPartySourceRepository.validate!(input[:git_hub_enterprise_server], context: "#{context}[:git_hub_enterprise_server]") unless input[:git_hub_enterprise_server].nil?
        S3Repository.validate!(input[:s3_bucket], context: "#{context}[:s3_bucket]") unless input[:s3_bucket].nil?
      end
    end

    class RepositoryAnalysis
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryAnalysis, context: context)
        RepositoryHeadSourceCodeType.validate!(input[:repository_head], context: "#{context}[:repository_head]") unless input[:repository_head].nil?
        SourceCodeType.validate!(input[:source_code_type], context: "#{context}[:source_code_type]") unless input[:source_code_type].nil?
      end
    end

    class RepositoryAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryAssociation, context: context)
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:association_arn], ::String, context: "#{context}[:association_arn]")
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:provider_type], ::String, context: "#{context}[:provider_type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_reason], ::String, context: "#{context}[:state_reason]")
        Hearth::Validator.validate!(input[:last_updated_time_stamp], ::Time, context: "#{context}[:last_updated_time_stamp]")
        Hearth::Validator.validate!(input[:created_time_stamp], ::Time, context: "#{context}[:created_time_stamp]")
        KMSKeyDetails.validate!(input[:kms_key_details], context: "#{context}[:kms_key_details]") unless input[:kms_key_details].nil?
        S3RepositoryDetails.validate!(input[:s3_repository_details], context: "#{context}[:s3_repository_details]") unless input[:s3_repository_details].nil?
      end
    end

    class RepositoryAssociationStates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RepositoryAssociationSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RepositoryAssociationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RepositoryAssociationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryAssociationSummary, context: context)
        Hearth::Validator.validate!(input[:association_arn], ::String, context: "#{context}[:association_arn]")
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:last_updated_time_stamp], ::Time, context: "#{context}[:last_updated_time_stamp]")
        Hearth::Validator.validate!(input[:association_id], ::String, context: "#{context}[:association_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
        Hearth::Validator.validate!(input[:provider_type], ::String, context: "#{context}[:provider_type]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class RepositoryHeadSourceCodeType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryHeadSourceCodeType, context: context)
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
      end
    end

    class RepositoryNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RequestMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestMetadata, context: context)
        Hearth::Validator.validate!(input[:request_id], ::String, context: "#{context}[:request_id]")
        Hearth::Validator.validate!(input[:requester], ::String, context: "#{context}[:requester]")
        EventInfo.validate!(input[:event_info], context: "#{context}[:event_info]") unless input[:event_info].nil?
        Hearth::Validator.validate!(input[:vendor_name], ::String, context: "#{context}[:vendor_name]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RuleMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuleMetadata, context: context)
        Hearth::Validator.validate!(input[:rule_id], ::String, context: "#{context}[:rule_id]")
        Hearth::Validator.validate!(input[:rule_name], ::String, context: "#{context}[:rule_name]")
        Hearth::Validator.validate!(input[:short_description], ::String, context: "#{context}[:short_description]")
        Hearth::Validator.validate!(input[:long_description], ::String, context: "#{context}[:long_description]")
        RuleTags.validate!(input[:rule_tags], context: "#{context}[:rule_tags]") unless input[:rule_tags].nil?
      end
    end

    class RuleTags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class S3BucketRepository
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3BucketRepository, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        S3RepositoryDetails.validate!(input[:details], context: "#{context}[:details]") unless input[:details].nil?
      end
    end

    class S3Repository
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Repository, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
      end
    end

    class S3RepositoryDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3RepositoryDetails, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        CodeArtifacts.validate!(input[:code_artifacts], context: "#{context}[:code_artifacts]") unless input[:code_artifacts].nil?
      end
    end

    class SourceCodeType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceCodeType, context: context)
        CommitDiffSourceCodeType.validate!(input[:commit_diff], context: "#{context}[:commit_diff]") unless input[:commit_diff].nil?
        RepositoryHeadSourceCodeType.validate!(input[:repository_head], context: "#{context}[:repository_head]") unless input[:repository_head].nil?
        BranchDiffSourceCodeType.validate!(input[:branch_diff], context: "#{context}[:branch_diff]") unless input[:branch_diff].nil?
        S3BucketRepository.validate!(input[:s3_bucket_repository], context: "#{context}[:s3_bucket_repository]") unless input[:s3_bucket_repository].nil?
        RequestMetadata.validate!(input[:request_metadata], context: "#{context}[:request_metadata]") unless input[:request_metadata].nil?
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
        TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThirdPartySourceRepository
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThirdPartySourceRepository, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:connection_arn], ::String, context: "#{context}[:connection_arn]")
        Hearth::Validator.validate!(input[:owner], ::String, context: "#{context}[:owner]")
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
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UserIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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
