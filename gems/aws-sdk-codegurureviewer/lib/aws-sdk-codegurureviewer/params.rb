# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CodeGuruReviewer
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AnalysisTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AssociateRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateRepositoryInput, context: context)
        type = Types::AssociateRepositoryInput.new
        type.repository = Repository.build(params[:repository], context: "#{context}[:repository]") unless params[:repository].nil?
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.kms_key_details = KMSKeyDetails.build(params[:kms_key_details], context: "#{context}[:kms_key_details]") unless params[:kms_key_details].nil?
        type
      end
    end

    module AssociateRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateRepositoryOutput, context: context)
        type = Types::AssociateRepositoryOutput.new
        type.repository_association = RepositoryAssociation.build(params[:repository_association], context: "#{context}[:repository_association]") unless params[:repository_association].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module BranchDiffSourceCodeType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BranchDiffSourceCodeType, context: context)
        type = Types::BranchDiffSourceCodeType.new
        type.source_branch_name = params[:source_branch_name]
        type.destination_branch_name = params[:destination_branch_name]
        type
      end
    end

    module CodeArtifacts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeArtifacts, context: context)
        type = Types::CodeArtifacts.new
        type.source_code_artifacts_object_key = params[:source_code_artifacts_object_key]
        type.build_artifacts_object_key = params[:build_artifacts_object_key]
        type
      end
    end

    module CodeCommitRepository
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeCommitRepository, context: context)
        type = Types::CodeCommitRepository.new
        type.name = params[:name]
        type
      end
    end

    module CodeReview
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeReview, context: context)
        type = Types::CodeReview.new
        type.name = params[:name]
        type.code_review_arn = params[:code_review_arn]
        type.repository_name = params[:repository_name]
        type.owner = params[:owner]
        type.provider_type = params[:provider_type]
        type.state = params[:state]
        type.state_reason = params[:state_reason]
        type.created_time_stamp = params[:created_time_stamp]
        type.last_updated_time_stamp = params[:last_updated_time_stamp]
        type.type = params[:type]
        type.pull_request_id = params[:pull_request_id]
        type.source_code_type = SourceCodeType.build(params[:source_code_type], context: "#{context}[:source_code_type]") unless params[:source_code_type].nil?
        type.association_arn = params[:association_arn]
        type.metrics = Metrics.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type.analysis_types = AnalysisTypes.build(params[:analysis_types], context: "#{context}[:analysis_types]") unless params[:analysis_types].nil?
        type.config_file_state = params[:config_file_state]
        type
      end
    end

    module CodeReviewSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CodeReviewSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CodeReviewSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeReviewSummary, context: context)
        type = Types::CodeReviewSummary.new
        type.name = params[:name]
        type.code_review_arn = params[:code_review_arn]
        type.repository_name = params[:repository_name]
        type.owner = params[:owner]
        type.provider_type = params[:provider_type]
        type.state = params[:state]
        type.created_time_stamp = params[:created_time_stamp]
        type.last_updated_time_stamp = params[:last_updated_time_stamp]
        type.type = params[:type]
        type.pull_request_id = params[:pull_request_id]
        type.metrics_summary = MetricsSummary.build(params[:metrics_summary], context: "#{context}[:metrics_summary]") unless params[:metrics_summary].nil?
        type.source_code_type = SourceCodeType.build(params[:source_code_type], context: "#{context}[:source_code_type]") unless params[:source_code_type].nil?
        type
      end
    end

    module CodeReviewType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CodeReviewType, context: context)
        type = Types::CodeReviewType.new
        type.repository_analysis = RepositoryAnalysis.build(params[:repository_analysis], context: "#{context}[:repository_analysis]") unless params[:repository_analysis].nil?
        type.analysis_types = AnalysisTypes.build(params[:analysis_types], context: "#{context}[:analysis_types]") unless params[:analysis_types].nil?
        type
      end
    end

    module CommitDiffSourceCodeType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommitDiffSourceCodeType, context: context)
        type = Types::CommitDiffSourceCodeType.new
        type.source_commit = params[:source_commit]
        type.destination_commit = params[:destination_commit]
        type.merge_base_commit = params[:merge_base_commit]
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

    module CreateCodeReviewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCodeReviewInput, context: context)
        type = Types::CreateCodeReviewInput.new
        type.name = params[:name]
        type.repository_association_arn = params[:repository_association_arn]
        type.type = CodeReviewType.build(params[:type], context: "#{context}[:type]") unless params[:type].nil?
        type.client_request_token = params[:client_request_token] || SecureRandom.uuid
        type
      end
    end

    module CreateCodeReviewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCodeReviewOutput, context: context)
        type = Types::CreateCodeReviewOutput.new
        type.code_review = CodeReview.build(params[:code_review], context: "#{context}[:code_review]") unless params[:code_review].nil?
        type
      end
    end

    module DescribeCodeReviewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCodeReviewInput, context: context)
        type = Types::DescribeCodeReviewInput.new
        type.code_review_arn = params[:code_review_arn]
        type
      end
    end

    module DescribeCodeReviewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeCodeReviewOutput, context: context)
        type = Types::DescribeCodeReviewOutput.new
        type.code_review = CodeReview.build(params[:code_review], context: "#{context}[:code_review]") unless params[:code_review].nil?
        type
      end
    end

    module DescribeRecommendationFeedbackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecommendationFeedbackInput, context: context)
        type = Types::DescribeRecommendationFeedbackInput.new
        type.code_review_arn = params[:code_review_arn]
        type.recommendation_id = params[:recommendation_id]
        type.user_id = params[:user_id]
        type
      end
    end

    module DescribeRecommendationFeedbackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRecommendationFeedbackOutput, context: context)
        type = Types::DescribeRecommendationFeedbackOutput.new
        type.recommendation_feedback = RecommendationFeedback.build(params[:recommendation_feedback], context: "#{context}[:recommendation_feedback]") unless params[:recommendation_feedback].nil?
        type
      end
    end

    module DescribeRepositoryAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRepositoryAssociationInput, context: context)
        type = Types::DescribeRepositoryAssociationInput.new
        type.association_arn = params[:association_arn]
        type
      end
    end

    module DescribeRepositoryAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRepositoryAssociationOutput, context: context)
        type = Types::DescribeRepositoryAssociationOutput.new
        type.repository_association = RepositoryAssociation.build(params[:repository_association], context: "#{context}[:repository_association]") unless params[:repository_association].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module DisassociateRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateRepositoryInput, context: context)
        type = Types::DisassociateRepositoryInput.new
        type.association_arn = params[:association_arn]
        type
      end
    end

    module DisassociateRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateRepositoryOutput, context: context)
        type = Types::DisassociateRepositoryOutput.new
        type.repository_association = RepositoryAssociation.build(params[:repository_association], context: "#{context}[:repository_association]") unless params[:repository_association].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module EventInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventInfo, context: context)
        type = Types::EventInfo.new
        type.name = params[:name]
        type.state = params[:state]
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

    module JobStates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module KMSKeyDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSKeyDetails, context: context)
        type = Types::KMSKeyDetails.new
        type.kms_key_id = params[:kms_key_id]
        type.encryption_option = params[:encryption_option]
        type
      end
    end

    module ListCodeReviewsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCodeReviewsInput, context: context)
        type = Types::ListCodeReviewsInput.new
        type.provider_types = ProviderTypes.build(params[:provider_types], context: "#{context}[:provider_types]") unless params[:provider_types].nil?
        type.states = JobStates.build(params[:states], context: "#{context}[:states]") unless params[:states].nil?
        type.repository_names = RepositoryNames.build(params[:repository_names], context: "#{context}[:repository_names]") unless params[:repository_names].nil?
        type.type = params[:type]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCodeReviewsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCodeReviewsOutput, context: context)
        type = Types::ListCodeReviewsOutput.new
        type.code_review_summaries = CodeReviewSummaries.build(params[:code_review_summaries], context: "#{context}[:code_review_summaries]") unless params[:code_review_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRecommendationFeedbackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecommendationFeedbackInput, context: context)
        type = Types::ListRecommendationFeedbackInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.code_review_arn = params[:code_review_arn]
        type.user_ids = UserIds.build(params[:user_ids], context: "#{context}[:user_ids]") unless params[:user_ids].nil?
        type.recommendation_ids = RecommendationIds.build(params[:recommendation_ids], context: "#{context}[:recommendation_ids]") unless params[:recommendation_ids].nil?
        type
      end
    end

    module ListRecommendationFeedbackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecommendationFeedbackOutput, context: context)
        type = Types::ListRecommendationFeedbackOutput.new
        type.recommendation_feedback_summaries = RecommendationFeedbackSummaries.build(params[:recommendation_feedback_summaries], context: "#{context}[:recommendation_feedback_summaries]") unless params[:recommendation_feedback_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRecommendationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecommendationsInput, context: context)
        type = Types::ListRecommendationsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.code_review_arn = params[:code_review_arn]
        type
      end
    end

    module ListRecommendationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRecommendationsOutput, context: context)
        type = Types::ListRecommendationsOutput.new
        type.recommendation_summaries = RecommendationSummaries.build(params[:recommendation_summaries], context: "#{context}[:recommendation_summaries]") unless params[:recommendation_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRepositoryAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRepositoryAssociationsInput, context: context)
        type = Types::ListRepositoryAssociationsInput.new
        type.provider_types = ProviderTypes.build(params[:provider_types], context: "#{context}[:provider_types]") unless params[:provider_types].nil?
        type.states = RepositoryAssociationStates.build(params[:states], context: "#{context}[:states]") unless params[:states].nil?
        type.names = Names.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.owners = Owners.build(params[:owners], context: "#{context}[:owners]") unless params[:owners].nil?
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRepositoryAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRepositoryAssociationsOutput, context: context)
        type = Types::ListRepositoryAssociationsOutput.new
        type.repository_association_summaries = RepositoryAssociationSummaries.build(params[:repository_association_summaries], context: "#{context}[:repository_association_summaries]") unless params[:repository_association_summaries].nil?
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

    module Metrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Metrics, context: context)
        type = Types::Metrics.new
        type.metered_lines_of_code_count = params[:metered_lines_of_code_count]
        type.suppressed_lines_of_code_count = params[:suppressed_lines_of_code_count]
        type.findings_count = params[:findings_count]
        type
      end
    end

    module MetricsSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MetricsSummary, context: context)
        type = Types::MetricsSummary.new
        type.metered_lines_of_code_count = params[:metered_lines_of_code_count]
        type.suppressed_lines_of_code_count = params[:suppressed_lines_of_code_count]
        type.findings_count = params[:findings_count]
        type
      end
    end

    module Names
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module Owners
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProviderTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PutRecommendationFeedbackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRecommendationFeedbackInput, context: context)
        type = Types::PutRecommendationFeedbackInput.new
        type.code_review_arn = params[:code_review_arn]
        type.recommendation_id = params[:recommendation_id]
        type.reactions = Reactions.build(params[:reactions], context: "#{context}[:reactions]") unless params[:reactions].nil?
        type
      end
    end

    module PutRecommendationFeedbackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRecommendationFeedbackOutput, context: context)
        type = Types::PutRecommendationFeedbackOutput.new
        type
      end
    end

    module Reactions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RecommendationFeedback
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationFeedback, context: context)
        type = Types::RecommendationFeedback.new
        type.code_review_arn = params[:code_review_arn]
        type.recommendation_id = params[:recommendation_id]
        type.reactions = Reactions.build(params[:reactions], context: "#{context}[:reactions]") unless params[:reactions].nil?
        type.user_id = params[:user_id]
        type.created_time_stamp = params[:created_time_stamp]
        type.last_updated_time_stamp = params[:last_updated_time_stamp]
        type
      end
    end

    module RecommendationFeedbackSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommendationFeedbackSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecommendationFeedbackSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationFeedbackSummary, context: context)
        type = Types::RecommendationFeedbackSummary.new
        type.recommendation_id = params[:recommendation_id]
        type.reactions = Reactions.build(params[:reactions], context: "#{context}[:reactions]") unless params[:reactions].nil?
        type.user_id = params[:user_id]
        type
      end
    end

    module RecommendationIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RecommendationSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommendationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecommendationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationSummary, context: context)
        type = Types::RecommendationSummary.new
        type.file_path = params[:file_path]
        type.recommendation_id = params[:recommendation_id]
        type.start_line = params[:start_line]
        type.end_line = params[:end_line]
        type.description = params[:description]
        type.recommendation_category = params[:recommendation_category]
        type.rule_metadata = RuleMetadata.build(params[:rule_metadata], context: "#{context}[:rule_metadata]") unless params[:rule_metadata].nil?
        type.severity = params[:severity]
        type
      end
    end

    module Repository
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Repository, context: context)
        type = Types::Repository.new
        type.code_commit = CodeCommitRepository.build(params[:code_commit], context: "#{context}[:code_commit]") unless params[:code_commit].nil?
        type.bitbucket = ThirdPartySourceRepository.build(params[:bitbucket], context: "#{context}[:bitbucket]") unless params[:bitbucket].nil?
        type.git_hub_enterprise_server = ThirdPartySourceRepository.build(params[:git_hub_enterprise_server], context: "#{context}[:git_hub_enterprise_server]") unless params[:git_hub_enterprise_server].nil?
        type.s3_bucket = S3Repository.build(params[:s3_bucket], context: "#{context}[:s3_bucket]") unless params[:s3_bucket].nil?
        type
      end
    end

    module RepositoryAnalysis
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryAnalysis, context: context)
        type = Types::RepositoryAnalysis.new
        type.repository_head = RepositoryHeadSourceCodeType.build(params[:repository_head], context: "#{context}[:repository_head]") unless params[:repository_head].nil?
        type.source_code_type = SourceCodeType.build(params[:source_code_type], context: "#{context}[:source_code_type]") unless params[:source_code_type].nil?
        type
      end
    end

    module RepositoryAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryAssociation, context: context)
        type = Types::RepositoryAssociation.new
        type.association_id = params[:association_id]
        type.association_arn = params[:association_arn]
        type.connection_arn = params[:connection_arn]
        type.name = params[:name]
        type.owner = params[:owner]
        type.provider_type = params[:provider_type]
        type.state = params[:state]
        type.state_reason = params[:state_reason]
        type.last_updated_time_stamp = params[:last_updated_time_stamp]
        type.created_time_stamp = params[:created_time_stamp]
        type.kms_key_details = KMSKeyDetails.build(params[:kms_key_details], context: "#{context}[:kms_key_details]") unless params[:kms_key_details].nil?
        type.s3_repository_details = S3RepositoryDetails.build(params[:s3_repository_details], context: "#{context}[:s3_repository_details]") unless params[:s3_repository_details].nil?
        type
      end
    end

    module RepositoryAssociationStates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RepositoryAssociationSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RepositoryAssociationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RepositoryAssociationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryAssociationSummary, context: context)
        type = Types::RepositoryAssociationSummary.new
        type.association_arn = params[:association_arn]
        type.connection_arn = params[:connection_arn]
        type.last_updated_time_stamp = params[:last_updated_time_stamp]
        type.association_id = params[:association_id]
        type.name = params[:name]
        type.owner = params[:owner]
        type.provider_type = params[:provider_type]
        type.state = params[:state]
        type
      end
    end

    module RepositoryHeadSourceCodeType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryHeadSourceCodeType, context: context)
        type = Types::RepositoryHeadSourceCodeType.new
        type.branch_name = params[:branch_name]
        type
      end
    end

    module RepositoryNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RequestMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestMetadata, context: context)
        type = Types::RequestMetadata.new
        type.request_id = params[:request_id]
        type.requester = params[:requester]
        type.event_info = EventInfo.build(params[:event_info], context: "#{context}[:event_info]") unless params[:event_info].nil?
        type.vendor_name = params[:vendor_name]
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

    module RuleMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuleMetadata, context: context)
        type = Types::RuleMetadata.new
        type.rule_id = params[:rule_id]
        type.rule_name = params[:rule_name]
        type.short_description = params[:short_description]
        type.long_description = params[:long_description]
        type.rule_tags = RuleTags.build(params[:rule_tags], context: "#{context}[:rule_tags]") unless params[:rule_tags].nil?
        type
      end
    end

    module RuleTags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module S3BucketRepository
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3BucketRepository, context: context)
        type = Types::S3BucketRepository.new
        type.name = params[:name]
        type.details = S3RepositoryDetails.build(params[:details], context: "#{context}[:details]") unless params[:details].nil?
        type
      end
    end

    module S3Repository
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Repository, context: context)
        type = Types::S3Repository.new
        type.name = params[:name]
        type.bucket_name = params[:bucket_name]
        type
      end
    end

    module S3RepositoryDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3RepositoryDetails, context: context)
        type = Types::S3RepositoryDetails.new
        type.bucket_name = params[:bucket_name]
        type.code_artifacts = CodeArtifacts.build(params[:code_artifacts], context: "#{context}[:code_artifacts]") unless params[:code_artifacts].nil?
        type
      end
    end

    module SourceCodeType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceCodeType, context: context)
        type = Types::SourceCodeType.new
        type.commit_diff = CommitDiffSourceCodeType.build(params[:commit_diff], context: "#{context}[:commit_diff]") unless params[:commit_diff].nil?
        type.repository_head = RepositoryHeadSourceCodeType.build(params[:repository_head], context: "#{context}[:repository_head]") unless params[:repository_head].nil?
        type.branch_diff = BranchDiffSourceCodeType.build(params[:branch_diff], context: "#{context}[:branch_diff]") unless params[:branch_diff].nil?
        type.s3_bucket_repository = S3BucketRepository.build(params[:s3_bucket_repository], context: "#{context}[:s3_bucket_repository]") unless params[:s3_bucket_repository].nil?
        type.request_metadata = RequestMetadata.build(params[:request_metadata], context: "#{context}[:request_metadata]") unless params[:request_metadata].nil?
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

    module ThirdPartySourceRepository
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThirdPartySourceRepository, context: context)
        type = Types::ThirdPartySourceRepository.new
        type.name = params[:name]
        type.connection_arn = params[:connection_arn]
        type.owner = params[:owner]
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

    module UserIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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
