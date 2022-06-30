# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::CodeGuruReviewer
  module Parsers

    # Operation Parser for AssociateRepository
    class AssociateRepository
      def self.parse(http_resp)
        data = Types::AssociateRepositoryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.repository_association = (Parsers::RepositoryAssociation.parse(map['RepositoryAssociation']) unless map['RepositoryAssociation'].nil?)
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
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

    class RepositoryAssociation
      def self.parse(map)
        data = Types::RepositoryAssociation.new
        data.association_id = map['AssociationId']
        data.association_arn = map['AssociationArn']
        data.connection_arn = map['ConnectionArn']
        data.name = map['Name']
        data.owner = map['Owner']
        data.provider_type = map['ProviderType']
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.last_updated_time_stamp = Time.at(map['LastUpdatedTimeStamp'].to_i) if map['LastUpdatedTimeStamp']
        data.created_time_stamp = Time.at(map['CreatedTimeStamp'].to_i) if map['CreatedTimeStamp']
        data.kms_key_details = (Parsers::KMSKeyDetails.parse(map['KMSKeyDetails']) unless map['KMSKeyDetails'].nil?)
        data.s3_repository_details = (Parsers::S3RepositoryDetails.parse(map['S3RepositoryDetails']) unless map['S3RepositoryDetails'].nil?)
        return data
      end
    end

    class S3RepositoryDetails
      def self.parse(map)
        data = Types::S3RepositoryDetails.new
        data.bucket_name = map['BucketName']
        data.code_artifacts = (Parsers::CodeArtifacts.parse(map['CodeArtifacts']) unless map['CodeArtifacts'].nil?)
        return data
      end
    end

    class CodeArtifacts
      def self.parse(map)
        data = Types::CodeArtifacts.new
        data.source_code_artifacts_object_key = map['SourceCodeArtifactsObjectKey']
        data.build_artifacts_object_key = map['BuildArtifactsObjectKey']
        return data
      end
    end

    class KMSKeyDetails
      def self.parse(map)
        data = Types::KMSKeyDetails.new
        data.kms_key_id = map['KMSKeyId']
        data.encryption_option = map['EncryptionOption']
        return data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
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

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateCodeReview
    class CreateCodeReview
      def self.parse(http_resp)
        data = Types::CreateCodeReviewOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.code_review = (Parsers::CodeReview.parse(map['CodeReview']) unless map['CodeReview'].nil?)
        data
      end
    end

    class CodeReview
      def self.parse(map)
        data = Types::CodeReview.new
        data.name = map['Name']
        data.code_review_arn = map['CodeReviewArn']
        data.repository_name = map['RepositoryName']
        data.owner = map['Owner']
        data.provider_type = map['ProviderType']
        data.state = map['State']
        data.state_reason = map['StateReason']
        data.created_time_stamp = Time.at(map['CreatedTimeStamp'].to_i) if map['CreatedTimeStamp']
        data.last_updated_time_stamp = Time.at(map['LastUpdatedTimeStamp'].to_i) if map['LastUpdatedTimeStamp']
        data.type = map['Type']
        data.pull_request_id = map['PullRequestId']
        data.source_code_type = (Parsers::SourceCodeType.parse(map['SourceCodeType']) unless map['SourceCodeType'].nil?)
        data.association_arn = map['AssociationArn']
        data.metrics = (Parsers::Metrics.parse(map['Metrics']) unless map['Metrics'].nil?)
        data.analysis_types = (Parsers::AnalysisTypes.parse(map['AnalysisTypes']) unless map['AnalysisTypes'].nil?)
        data.config_file_state = map['ConfigFileState']
        return data
      end
    end

    class AnalysisTypes
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class Metrics
      def self.parse(map)
        data = Types::Metrics.new
        data.metered_lines_of_code_count = map['MeteredLinesOfCodeCount']
        data.suppressed_lines_of_code_count = map['SuppressedLinesOfCodeCount']
        data.findings_count = map['FindingsCount']
        return data
      end
    end

    class SourceCodeType
      def self.parse(map)
        data = Types::SourceCodeType.new
        data.commit_diff = (Parsers::CommitDiffSourceCodeType.parse(map['CommitDiff']) unless map['CommitDiff'].nil?)
        data.repository_head = (Parsers::RepositoryHeadSourceCodeType.parse(map['RepositoryHead']) unless map['RepositoryHead'].nil?)
        data.branch_diff = (Parsers::BranchDiffSourceCodeType.parse(map['BranchDiff']) unless map['BranchDiff'].nil?)
        data.s3_bucket_repository = (Parsers::S3BucketRepository.parse(map['S3BucketRepository']) unless map['S3BucketRepository'].nil?)
        data.request_metadata = (Parsers::RequestMetadata.parse(map['RequestMetadata']) unless map['RequestMetadata'].nil?)
        return data
      end
    end

    class RequestMetadata
      def self.parse(map)
        data = Types::RequestMetadata.new
        data.request_id = map['RequestId']
        data.requester = map['Requester']
        data.event_info = (Parsers::EventInfo.parse(map['EventInfo']) unless map['EventInfo'].nil?)
        data.vendor_name = map['VendorName']
        return data
      end
    end

    class EventInfo
      def self.parse(map)
        data = Types::EventInfo.new
        data.name = map['Name']
        data.state = map['State']
        return data
      end
    end

    class S3BucketRepository
      def self.parse(map)
        data = Types::S3BucketRepository.new
        data.name = map['Name']
        data.details = (Parsers::S3RepositoryDetails.parse(map['Details']) unless map['Details'].nil?)
        return data
      end
    end

    class BranchDiffSourceCodeType
      def self.parse(map)
        data = Types::BranchDiffSourceCodeType.new
        data.source_branch_name = map['SourceBranchName']
        data.destination_branch_name = map['DestinationBranchName']
        return data
      end
    end

    class RepositoryHeadSourceCodeType
      def self.parse(map)
        data = Types::RepositoryHeadSourceCodeType.new
        data.branch_name = map['BranchName']
        return data
      end
    end

    class CommitDiffSourceCodeType
      def self.parse(map)
        data = Types::CommitDiffSourceCodeType.new
        data.source_commit = map['SourceCommit']
        data.destination_commit = map['DestinationCommit']
        data.merge_base_commit = map['MergeBaseCommit']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeCodeReview
    class DescribeCodeReview
      def self.parse(http_resp)
        data = Types::DescribeCodeReviewOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.code_review = (Parsers::CodeReview.parse(map['CodeReview']) unless map['CodeReview'].nil?)
        data
      end
    end

    # Operation Parser for DescribeRecommendationFeedback
    class DescribeRecommendationFeedback
      def self.parse(http_resp)
        data = Types::DescribeRecommendationFeedbackOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.recommendation_feedback = (Parsers::RecommendationFeedback.parse(map['RecommendationFeedback']) unless map['RecommendationFeedback'].nil?)
        data
      end
    end

    class RecommendationFeedback
      def self.parse(map)
        data = Types::RecommendationFeedback.new
        data.code_review_arn = map['CodeReviewArn']
        data.recommendation_id = map['RecommendationId']
        data.reactions = (Parsers::Reactions.parse(map['Reactions']) unless map['Reactions'].nil?)
        data.user_id = map['UserId']
        data.created_time_stamp = Time.at(map['CreatedTimeStamp'].to_i) if map['CreatedTimeStamp']
        data.last_updated_time_stamp = Time.at(map['LastUpdatedTimeStamp'].to_i) if map['LastUpdatedTimeStamp']
        return data
      end
    end

    class Reactions
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeRepositoryAssociation
    class DescribeRepositoryAssociation
      def self.parse(http_resp)
        data = Types::DescribeRepositoryAssociationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.repository_association = (Parsers::RepositoryAssociation.parse(map['RepositoryAssociation']) unless map['RepositoryAssociation'].nil?)
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DisassociateRepository
    class DisassociateRepository
      def self.parse(http_resp)
        data = Types::DisassociateRepositoryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.repository_association = (Parsers::RepositoryAssociation.parse(map['RepositoryAssociation']) unless map['RepositoryAssociation'].nil?)
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for ListCodeReviews
    class ListCodeReviews
      def self.parse(http_resp)
        data = Types::ListCodeReviewsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.code_review_summaries = (Parsers::CodeReviewSummaries.parse(map['CodeReviewSummaries']) unless map['CodeReviewSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class CodeReviewSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::CodeReviewSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class CodeReviewSummary
      def self.parse(map)
        data = Types::CodeReviewSummary.new
        data.name = map['Name']
        data.code_review_arn = map['CodeReviewArn']
        data.repository_name = map['RepositoryName']
        data.owner = map['Owner']
        data.provider_type = map['ProviderType']
        data.state = map['State']
        data.created_time_stamp = Time.at(map['CreatedTimeStamp'].to_i) if map['CreatedTimeStamp']
        data.last_updated_time_stamp = Time.at(map['LastUpdatedTimeStamp'].to_i) if map['LastUpdatedTimeStamp']
        data.type = map['Type']
        data.pull_request_id = map['PullRequestId']
        data.metrics_summary = (Parsers::MetricsSummary.parse(map['MetricsSummary']) unless map['MetricsSummary'].nil?)
        data.source_code_type = (Parsers::SourceCodeType.parse(map['SourceCodeType']) unless map['SourceCodeType'].nil?)
        return data
      end
    end

    class MetricsSummary
      def self.parse(map)
        data = Types::MetricsSummary.new
        data.metered_lines_of_code_count = map['MeteredLinesOfCodeCount']
        data.suppressed_lines_of_code_count = map['SuppressedLinesOfCodeCount']
        data.findings_count = map['FindingsCount']
        return data
      end
    end

    # Operation Parser for ListRecommendationFeedback
    class ListRecommendationFeedback
      def self.parse(http_resp)
        data = Types::ListRecommendationFeedbackOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.recommendation_feedback_summaries = (Parsers::RecommendationFeedbackSummaries.parse(map['RecommendationFeedbackSummaries']) unless map['RecommendationFeedbackSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RecommendationFeedbackSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecommendationFeedbackSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecommendationFeedbackSummary
      def self.parse(map)
        data = Types::RecommendationFeedbackSummary.new
        data.recommendation_id = map['RecommendationId']
        data.reactions = (Parsers::Reactions.parse(map['Reactions']) unless map['Reactions'].nil?)
        data.user_id = map['UserId']
        return data
      end
    end

    # Operation Parser for ListRecommendations
    class ListRecommendations
      def self.parse(http_resp)
        data = Types::ListRecommendationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.recommendation_summaries = (Parsers::RecommendationSummaries.parse(map['RecommendationSummaries']) unless map['RecommendationSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RecommendationSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecommendationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecommendationSummary
      def self.parse(map)
        data = Types::RecommendationSummary.new
        data.file_path = map['FilePath']
        data.recommendation_id = map['RecommendationId']
        data.start_line = map['StartLine']
        data.end_line = map['EndLine']
        data.description = map['Description']
        data.recommendation_category = map['RecommendationCategory']
        data.rule_metadata = (Parsers::RuleMetadata.parse(map['RuleMetadata']) unless map['RuleMetadata'].nil?)
        data.severity = map['Severity']
        return data
      end
    end

    class RuleMetadata
      def self.parse(map)
        data = Types::RuleMetadata.new
        data.rule_id = map['RuleId']
        data.rule_name = map['RuleName']
        data.short_description = map['ShortDescription']
        data.long_description = map['LongDescription']
        data.rule_tags = (Parsers::RuleTags.parse(map['RuleTags']) unless map['RuleTags'].nil?)
        return data
      end
    end

    class RuleTags
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListRepositoryAssociations
    class ListRepositoryAssociations
      def self.parse(http_resp)
        data = Types::ListRepositoryAssociationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.repository_association_summaries = (Parsers::RepositoryAssociationSummaries.parse(map['RepositoryAssociationSummaries']) unless map['RepositoryAssociationSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class RepositoryAssociationSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RepositoryAssociationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class RepositoryAssociationSummary
      def self.parse(map)
        data = Types::RepositoryAssociationSummary.new
        data.association_arn = map['AssociationArn']
        data.connection_arn = map['ConnectionArn']
        data.last_updated_time_stamp = Time.at(map['LastUpdatedTimeStamp'].to_i) if map['LastUpdatedTimeStamp']
        data.association_id = map['AssociationId']
        data.name = map['Name']
        data.owner = map['Owner']
        data.provider_type = map['ProviderType']
        data.state = map['State']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for PutRecommendationFeedback
    class PutRecommendationFeedback
      def self.parse(http_resp)
        data = Types::PutRecommendationFeedbackOutput.new
        map = Hearth::JSON.load(http_resp.body)
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
  end
end
