# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::CodeGuruReviewer
  module Builders

    # Operation Builder for AssociateRepository
    class AssociateRepository
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/associations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Repository'] = Repository.build(input[:repository]) unless input[:repository].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        data['KMSKeyDetails'] = KMSKeyDetails.build(input[:kms_key_details]) unless input[:kms_key_details].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for KMSKeyDetails
    class KMSKeyDetails
      def self.build(input)
        data = {}
        data['KMSKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data['EncryptionOption'] = input[:encryption_option] unless input[:encryption_option].nil?
        data
      end
    end

    # Map Builder for TagMap
    class TagMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for Repository
    class Repository
      def self.build(input)
        data = {}
        data['CodeCommit'] = CodeCommitRepository.build(input[:code_commit]) unless input[:code_commit].nil?
        data['Bitbucket'] = ThirdPartySourceRepository.build(input[:bitbucket]) unless input[:bitbucket].nil?
        data['GitHubEnterpriseServer'] = ThirdPartySourceRepository.build(input[:git_hub_enterprise_server]) unless input[:git_hub_enterprise_server].nil?
        data['S3Bucket'] = S3Repository.build(input[:s3_bucket]) unless input[:s3_bucket].nil?
        data
      end
    end

    # Structure Builder for S3Repository
    class S3Repository
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['BucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data
      end
    end

    # Structure Builder for ThirdPartySourceRepository
    class ThirdPartySourceRepository
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ConnectionArn'] = input[:connection_arn] unless input[:connection_arn].nil?
        data['Owner'] = input[:owner] unless input[:owner].nil?
        data
      end
    end

    # Structure Builder for CodeCommitRepository
    class CodeCommitRepository
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data
      end
    end

    # Operation Builder for CreateCodeReview
    class CreateCodeReview
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/codereviews')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['RepositoryAssociationArn'] = input[:repository_association_arn] unless input[:repository_association_arn].nil?
        data['Type'] = CodeReviewType.build(input[:type]) unless input[:type].nil?
        data['ClientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CodeReviewType
    class CodeReviewType
      def self.build(input)
        data = {}
        data['RepositoryAnalysis'] = RepositoryAnalysis.build(input[:repository_analysis]) unless input[:repository_analysis].nil?
        data['AnalysisTypes'] = AnalysisTypes.build(input[:analysis_types]) unless input[:analysis_types].nil?
        data
      end
    end

    # List Builder for AnalysisTypes
    class AnalysisTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RepositoryAnalysis
    class RepositoryAnalysis
      def self.build(input)
        data = {}
        data['RepositoryHead'] = RepositoryHeadSourceCodeType.build(input[:repository_head]) unless input[:repository_head].nil?
        data['SourceCodeType'] = SourceCodeType.build(input[:source_code_type]) unless input[:source_code_type].nil?
        data
      end
    end

    # Structure Builder for SourceCodeType
    class SourceCodeType
      def self.build(input)
        data = {}
        data['CommitDiff'] = CommitDiffSourceCodeType.build(input[:commit_diff]) unless input[:commit_diff].nil?
        data['RepositoryHead'] = RepositoryHeadSourceCodeType.build(input[:repository_head]) unless input[:repository_head].nil?
        data['BranchDiff'] = BranchDiffSourceCodeType.build(input[:branch_diff]) unless input[:branch_diff].nil?
        data['S3BucketRepository'] = S3BucketRepository.build(input[:s3_bucket_repository]) unless input[:s3_bucket_repository].nil?
        data['RequestMetadata'] = RequestMetadata.build(input[:request_metadata]) unless input[:request_metadata].nil?
        data
      end
    end

    # Structure Builder for RequestMetadata
    class RequestMetadata
      def self.build(input)
        data = {}
        data['RequestId'] = input[:request_id] unless input[:request_id].nil?
        data['Requester'] = input[:requester] unless input[:requester].nil?
        data['EventInfo'] = EventInfo.build(input[:event_info]) unless input[:event_info].nil?
        data['VendorName'] = input[:vendor_name] unless input[:vendor_name].nil?
        data
      end
    end

    # Structure Builder for EventInfo
    class EventInfo
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['State'] = input[:state] unless input[:state].nil?
        data
      end
    end

    # Structure Builder for S3BucketRepository
    class S3BucketRepository
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Details'] = S3RepositoryDetails.build(input[:details]) unless input[:details].nil?
        data
      end
    end

    # Structure Builder for S3RepositoryDetails
    class S3RepositoryDetails
      def self.build(input)
        data = {}
        data['BucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['CodeArtifacts'] = CodeArtifacts.build(input[:code_artifacts]) unless input[:code_artifacts].nil?
        data
      end
    end

    # Structure Builder for CodeArtifacts
    class CodeArtifacts
      def self.build(input)
        data = {}
        data['SourceCodeArtifactsObjectKey'] = input[:source_code_artifacts_object_key] unless input[:source_code_artifacts_object_key].nil?
        data['BuildArtifactsObjectKey'] = input[:build_artifacts_object_key] unless input[:build_artifacts_object_key].nil?
        data
      end
    end

    # Structure Builder for BranchDiffSourceCodeType
    class BranchDiffSourceCodeType
      def self.build(input)
        data = {}
        data['SourceBranchName'] = input[:source_branch_name] unless input[:source_branch_name].nil?
        data['DestinationBranchName'] = input[:destination_branch_name] unless input[:destination_branch_name].nil?
        data
      end
    end

    # Structure Builder for RepositoryHeadSourceCodeType
    class RepositoryHeadSourceCodeType
      def self.build(input)
        data = {}
        data['BranchName'] = input[:branch_name] unless input[:branch_name].nil?
        data
      end
    end

    # Structure Builder for CommitDiffSourceCodeType
    class CommitDiffSourceCodeType
      def self.build(input)
        data = {}
        data['SourceCommit'] = input[:source_commit] unless input[:source_commit].nil?
        data['DestinationCommit'] = input[:destination_commit] unless input[:destination_commit].nil?
        data['MergeBaseCommit'] = input[:merge_base_commit] unless input[:merge_base_commit].nil?
        data
      end
    end

    # Operation Builder for DescribeCodeReview
    class DescribeCodeReview
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:code_review_arn].to_s.empty?
          raise ArgumentError, "HTTP label :code_review_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/codereviews/%<CodeReviewArn>s',
            CodeReviewArn: Hearth::HTTP.uri_escape(input[:code_review_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeRecommendationFeedback
    class DescribeRecommendationFeedback
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:code_review_arn].to_s.empty?
          raise ArgumentError, "HTTP label :code_review_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/feedback/%<CodeReviewArn>s',
            CodeReviewArn: Hearth::HTTP.uri_escape(input[:code_review_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['RecommendationId'] = input[:recommendation_id].to_s unless input[:recommendation_id].nil?
        params['UserId'] = input[:user_id].to_s unless input[:user_id].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DescribeRepositoryAssociation
    class DescribeRepositoryAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:association_arn].to_s.empty?
          raise ArgumentError, "HTTP label :association_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/associations/%<AssociationArn>s',
            AssociationArn: Hearth::HTTP.uri_escape(input[:association_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DisassociateRepository
    class DisassociateRepository
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:association_arn].to_s.empty?
          raise ArgumentError, "HTTP label :association_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/associations/%<AssociationArn>s',
            AssociationArn: Hearth::HTTP.uri_escape(input[:association_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListCodeReviews
    class ListCodeReviews
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/codereviews')
        params = Hearth::Query::ParamList.new
        unless input[:provider_types].nil? || input[:provider_types].empty?
          params['ProviderTypes'] = input[:provider_types].map do |value|
            value.to_s unless value.nil?
          end
        end
        unless input[:states].nil? || input[:states].empty?
          params['States'] = input[:states].map do |value|
            value.to_s unless value.nil?
          end
        end
        unless input[:repository_names].nil? || input[:repository_names].empty?
          params['RepositoryNames'] = input[:repository_names].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['Type'] = input[:type].to_s unless input[:type].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for RepositoryNames
    class RepositoryNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for JobStates
    class JobStates
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ProviderTypes
    class ProviderTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListRecommendationFeedback
    class ListRecommendationFeedback
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:code_review_arn].to_s.empty?
          raise ArgumentError, "HTTP label :code_review_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/feedback/%<CodeReviewArn>s/RecommendationFeedback',
            CodeReviewArn: Hearth::HTTP.uri_escape(input[:code_review_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        unless input[:user_ids].nil? || input[:user_ids].empty?
          params['UserIds'] = input[:user_ids].map do |value|
            value.to_s unless value.nil?
          end
        end
        unless input[:recommendation_ids].nil? || input[:recommendation_ids].empty?
          params['RecommendationIds'] = input[:recommendation_ids].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for RecommendationIds
    class RecommendationIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for UserIds
    class UserIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListRecommendations
    class ListRecommendations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:code_review_arn].to_s.empty?
          raise ArgumentError, "HTTP label :code_review_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/codereviews/%<CodeReviewArn>s/Recommendations',
            CodeReviewArn: Hearth::HTTP.uri_escape(input[:code_review_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListRepositoryAssociations
    class ListRepositoryAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/associations')
        params = Hearth::Query::ParamList.new
        unless input[:provider_types].nil? || input[:provider_types].empty?
          params['ProviderType'] = input[:provider_types].map do |value|
            value.to_s unless value.nil?
          end
        end
        unless input[:states].nil? || input[:states].empty?
          params['State'] = input[:states].map do |value|
            value.to_s unless value.nil?
          end
        end
        unless input[:names].nil? || input[:names].empty?
          params['Name'] = input[:names].map do |value|
            value.to_s unless value.nil?
          end
        end
        unless input[:owners].nil? || input[:owners].empty?
          params['Owner'] = input[:owners].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['MaxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['NextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # List Builder for Owners
    class Owners
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for Names
    class Names
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for RepositoryAssociationStates
    class RepositoryAssociationStates
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutRecommendationFeedback
    class PutRecommendationFeedback
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        http_req.append_path('/feedback')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['CodeReviewArn'] = input[:code_review_arn] unless input[:code_review_arn].nil?
        data['RecommendationId'] = input[:recommendation_id] unless input[:recommendation_id].nil?
        data['Reactions'] = Reactions.build(input[:reactions]) unless input[:reactions].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Reactions
    class Reactions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Tags'] = TagMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end
  end
end
