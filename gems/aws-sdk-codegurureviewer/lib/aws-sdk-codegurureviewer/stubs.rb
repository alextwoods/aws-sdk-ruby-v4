# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeGuruReviewer
  module Stubs

    # Operation Stubber for AssociateRepository
    class AssociateRepository
      def self.default(visited=[])
        {
          repository_association: RepositoryAssociation.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RepositoryAssociation'] = Stubs::RepositoryAssociation.stub(stub[:repository_association]) unless stub[:repository_association].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for RepositoryAssociation
    class RepositoryAssociation
      def self.default(visited=[])
        return nil if visited.include?('RepositoryAssociation')
        visited = visited + ['RepositoryAssociation']
        {
          association_id: 'association_id',
          association_arn: 'association_arn',
          connection_arn: 'connection_arn',
          name: 'name',
          owner: 'owner',
          provider_type: 'provider_type',
          state: 'state',
          state_reason: 'state_reason',
          last_updated_time_stamp: Time.now,
          created_time_stamp: Time.now,
          kms_key_details: KMSKeyDetails.default(visited),
          s3_repository_details: S3RepositoryDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositoryAssociation.new
        data = {}
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['AssociationArn'] = stub[:association_arn] unless stub[:association_arn].nil?
        data['ConnectionArn'] = stub[:connection_arn] unless stub[:connection_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Owner'] = stub[:owner] unless stub[:owner].nil?
        data['ProviderType'] = stub[:provider_type] unless stub[:provider_type].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['LastUpdatedTimeStamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time_stamp]).to_i unless stub[:last_updated_time_stamp].nil?
        data['CreatedTimeStamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time_stamp]).to_i unless stub[:created_time_stamp].nil?
        data['KMSKeyDetails'] = Stubs::KMSKeyDetails.stub(stub[:kms_key_details]) unless stub[:kms_key_details].nil?
        data['S3RepositoryDetails'] = Stubs::S3RepositoryDetails.stub(stub[:s3_repository_details]) unless stub[:s3_repository_details].nil?
        data
      end
    end

    # Structure Stubber for S3RepositoryDetails
    class S3RepositoryDetails
      def self.default(visited=[])
        return nil if visited.include?('S3RepositoryDetails')
        visited = visited + ['S3RepositoryDetails']
        {
          bucket_name: 'bucket_name',
          code_artifacts: CodeArtifacts.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3RepositoryDetails.new
        data = {}
        data['BucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['CodeArtifacts'] = Stubs::CodeArtifacts.stub(stub[:code_artifacts]) unless stub[:code_artifacts].nil?
        data
      end
    end

    # Structure Stubber for CodeArtifacts
    class CodeArtifacts
      def self.default(visited=[])
        return nil if visited.include?('CodeArtifacts')
        visited = visited + ['CodeArtifacts']
        {
          source_code_artifacts_object_key: 'source_code_artifacts_object_key',
          build_artifacts_object_key: 'build_artifacts_object_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeArtifacts.new
        data = {}
        data['SourceCodeArtifactsObjectKey'] = stub[:source_code_artifacts_object_key] unless stub[:source_code_artifacts_object_key].nil?
        data['BuildArtifactsObjectKey'] = stub[:build_artifacts_object_key] unless stub[:build_artifacts_object_key].nil?
        data
      end
    end

    # Structure Stubber for KMSKeyDetails
    class KMSKeyDetails
      def self.default(visited=[])
        return nil if visited.include?('KMSKeyDetails')
        visited = visited + ['KMSKeyDetails']
        {
          kms_key_id: 'kms_key_id',
          encryption_option: 'encryption_option',
        }
      end

      def self.stub(stub)
        stub ||= Types::KMSKeyDetails.new
        data = {}
        data['KMSKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data['EncryptionOption'] = stub[:encryption_option] unless stub[:encryption_option].nil?
        data
      end
    end

    # Operation Stubber for CreateCodeReview
    class CreateCodeReview
      def self.default(visited=[])
        {
          code_review: CodeReview.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CodeReview'] = Stubs::CodeReview.stub(stub[:code_review]) unless stub[:code_review].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for CodeReview
    class CodeReview
      def self.default(visited=[])
        return nil if visited.include?('CodeReview')
        visited = visited + ['CodeReview']
        {
          name: 'name',
          code_review_arn: 'code_review_arn',
          repository_name: 'repository_name',
          owner: 'owner',
          provider_type: 'provider_type',
          state: 'state',
          state_reason: 'state_reason',
          created_time_stamp: Time.now,
          last_updated_time_stamp: Time.now,
          type: 'type',
          pull_request_id: 'pull_request_id',
          source_code_type: SourceCodeType.default(visited),
          association_arn: 'association_arn',
          metrics: Metrics.default(visited),
          analysis_types: AnalysisTypes.default(visited),
          config_file_state: 'config_file_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeReview.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CodeReviewArn'] = stub[:code_review_arn] unless stub[:code_review_arn].nil?
        data['RepositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['Owner'] = stub[:owner] unless stub[:owner].nil?
        data['ProviderType'] = stub[:provider_type] unless stub[:provider_type].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateReason'] = stub[:state_reason] unless stub[:state_reason].nil?
        data['CreatedTimeStamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time_stamp]).to_i unless stub[:created_time_stamp].nil?
        data['LastUpdatedTimeStamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time_stamp]).to_i unless stub[:last_updated_time_stamp].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['PullRequestId'] = stub[:pull_request_id] unless stub[:pull_request_id].nil?
        data['SourceCodeType'] = Stubs::SourceCodeType.stub(stub[:source_code_type]) unless stub[:source_code_type].nil?
        data['AssociationArn'] = stub[:association_arn] unless stub[:association_arn].nil?
        data['Metrics'] = Stubs::Metrics.stub(stub[:metrics]) unless stub[:metrics].nil?
        data['AnalysisTypes'] = Stubs::AnalysisTypes.stub(stub[:analysis_types]) unless stub[:analysis_types].nil?
        data['ConfigFileState'] = stub[:config_file_state] unless stub[:config_file_state].nil?
        data
      end
    end

    # List Stubber for AnalysisTypes
    class AnalysisTypes
      def self.default(visited=[])
        return nil if visited.include?('AnalysisTypes')
        visited = visited + ['AnalysisTypes']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Metrics
    class Metrics
      def self.default(visited=[])
        return nil if visited.include?('Metrics')
        visited = visited + ['Metrics']
        {
          metered_lines_of_code_count: 1,
          suppressed_lines_of_code_count: 1,
          findings_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Metrics.new
        data = {}
        data['MeteredLinesOfCodeCount'] = stub[:metered_lines_of_code_count] unless stub[:metered_lines_of_code_count].nil?
        data['SuppressedLinesOfCodeCount'] = stub[:suppressed_lines_of_code_count] unless stub[:suppressed_lines_of_code_count].nil?
        data['FindingsCount'] = stub[:findings_count] unless stub[:findings_count].nil?
        data
      end
    end

    # Structure Stubber for SourceCodeType
    class SourceCodeType
      def self.default(visited=[])
        return nil if visited.include?('SourceCodeType')
        visited = visited + ['SourceCodeType']
        {
          commit_diff: CommitDiffSourceCodeType.default(visited),
          repository_head: RepositoryHeadSourceCodeType.default(visited),
          branch_diff: BranchDiffSourceCodeType.default(visited),
          s3_bucket_repository: S3BucketRepository.default(visited),
          request_metadata: RequestMetadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SourceCodeType.new
        data = {}
        data['CommitDiff'] = Stubs::CommitDiffSourceCodeType.stub(stub[:commit_diff]) unless stub[:commit_diff].nil?
        data['RepositoryHead'] = Stubs::RepositoryHeadSourceCodeType.stub(stub[:repository_head]) unless stub[:repository_head].nil?
        data['BranchDiff'] = Stubs::BranchDiffSourceCodeType.stub(stub[:branch_diff]) unless stub[:branch_diff].nil?
        data['S3BucketRepository'] = Stubs::S3BucketRepository.stub(stub[:s3_bucket_repository]) unless stub[:s3_bucket_repository].nil?
        data['RequestMetadata'] = Stubs::RequestMetadata.stub(stub[:request_metadata]) unless stub[:request_metadata].nil?
        data
      end
    end

    # Structure Stubber for RequestMetadata
    class RequestMetadata
      def self.default(visited=[])
        return nil if visited.include?('RequestMetadata')
        visited = visited + ['RequestMetadata']
        {
          request_id: 'request_id',
          requester: 'requester',
          event_info: EventInfo.default(visited),
          vendor_name: 'vendor_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::RequestMetadata.new
        data = {}
        data['RequestId'] = stub[:request_id] unless stub[:request_id].nil?
        data['Requester'] = stub[:requester] unless stub[:requester].nil?
        data['EventInfo'] = Stubs::EventInfo.stub(stub[:event_info]) unless stub[:event_info].nil?
        data['VendorName'] = stub[:vendor_name] unless stub[:vendor_name].nil?
        data
      end
    end

    # Structure Stubber for EventInfo
    class EventInfo
      def self.default(visited=[])
        return nil if visited.include?('EventInfo')
        visited = visited + ['EventInfo']
        {
          name: 'name',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventInfo.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Structure Stubber for S3BucketRepository
    class S3BucketRepository
      def self.default(visited=[])
        return nil if visited.include?('S3BucketRepository')
        visited = visited + ['S3BucketRepository']
        {
          name: 'name',
          details: S3RepositoryDetails.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3BucketRepository.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Details'] = Stubs::S3RepositoryDetails.stub(stub[:details]) unless stub[:details].nil?
        data
      end
    end

    # Structure Stubber for BranchDiffSourceCodeType
    class BranchDiffSourceCodeType
      def self.default(visited=[])
        return nil if visited.include?('BranchDiffSourceCodeType')
        visited = visited + ['BranchDiffSourceCodeType']
        {
          source_branch_name: 'source_branch_name',
          destination_branch_name: 'destination_branch_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::BranchDiffSourceCodeType.new
        data = {}
        data['SourceBranchName'] = stub[:source_branch_name] unless stub[:source_branch_name].nil?
        data['DestinationBranchName'] = stub[:destination_branch_name] unless stub[:destination_branch_name].nil?
        data
      end
    end

    # Structure Stubber for RepositoryHeadSourceCodeType
    class RepositoryHeadSourceCodeType
      def self.default(visited=[])
        return nil if visited.include?('RepositoryHeadSourceCodeType')
        visited = visited + ['RepositoryHeadSourceCodeType']
        {
          branch_name: 'branch_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositoryHeadSourceCodeType.new
        data = {}
        data['BranchName'] = stub[:branch_name] unless stub[:branch_name].nil?
        data
      end
    end

    # Structure Stubber for CommitDiffSourceCodeType
    class CommitDiffSourceCodeType
      def self.default(visited=[])
        return nil if visited.include?('CommitDiffSourceCodeType')
        visited = visited + ['CommitDiffSourceCodeType']
        {
          source_commit: 'source_commit',
          destination_commit: 'destination_commit',
          merge_base_commit: 'merge_base_commit',
        }
      end

      def self.stub(stub)
        stub ||= Types::CommitDiffSourceCodeType.new
        data = {}
        data['SourceCommit'] = stub[:source_commit] unless stub[:source_commit].nil?
        data['DestinationCommit'] = stub[:destination_commit] unless stub[:destination_commit].nil?
        data['MergeBaseCommit'] = stub[:merge_base_commit] unless stub[:merge_base_commit].nil?
        data
      end
    end

    # Operation Stubber for DescribeCodeReview
    class DescribeCodeReview
      def self.default(visited=[])
        {
          code_review: CodeReview.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CodeReview'] = Stubs::CodeReview.stub(stub[:code_review]) unless stub[:code_review].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DescribeRecommendationFeedback
    class DescribeRecommendationFeedback
      def self.default(visited=[])
        {
          recommendation_feedback: RecommendationFeedback.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RecommendationFeedback'] = Stubs::RecommendationFeedback.stub(stub[:recommendation_feedback]) unless stub[:recommendation_feedback].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for RecommendationFeedback
    class RecommendationFeedback
      def self.default(visited=[])
        return nil if visited.include?('RecommendationFeedback')
        visited = visited + ['RecommendationFeedback']
        {
          code_review_arn: 'code_review_arn',
          recommendation_id: 'recommendation_id',
          reactions: Reactions.default(visited),
          user_id: 'user_id',
          created_time_stamp: Time.now,
          last_updated_time_stamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationFeedback.new
        data = {}
        data['CodeReviewArn'] = stub[:code_review_arn] unless stub[:code_review_arn].nil?
        data['RecommendationId'] = stub[:recommendation_id] unless stub[:recommendation_id].nil?
        data['Reactions'] = Stubs::Reactions.stub(stub[:reactions]) unless stub[:reactions].nil?
        data['UserId'] = stub[:user_id] unless stub[:user_id].nil?
        data['CreatedTimeStamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time_stamp]).to_i unless stub[:created_time_stamp].nil?
        data['LastUpdatedTimeStamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time_stamp]).to_i unless stub[:last_updated_time_stamp].nil?
        data
      end
    end

    # List Stubber for Reactions
    class Reactions
      def self.default(visited=[])
        return nil if visited.include?('Reactions')
        visited = visited + ['Reactions']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeRepositoryAssociation
    class DescribeRepositoryAssociation
      def self.default(visited=[])
        {
          repository_association: RepositoryAssociation.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RepositoryAssociation'] = Stubs::RepositoryAssociation.stub(stub[:repository_association]) unless stub[:repository_association].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DisassociateRepository
    class DisassociateRepository
      def self.default(visited=[])
        {
          repository_association: RepositoryAssociation.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RepositoryAssociation'] = Stubs::RepositoryAssociation.stub(stub[:repository_association]) unless stub[:repository_association].nil?
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListCodeReviews
    class ListCodeReviews
      def self.default(visited=[])
        {
          code_review_summaries: CodeReviewSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['CodeReviewSummaries'] = Stubs::CodeReviewSummaries.stub(stub[:code_review_summaries]) unless stub[:code_review_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for CodeReviewSummaries
    class CodeReviewSummaries
      def self.default(visited=[])
        return nil if visited.include?('CodeReviewSummaries')
        visited = visited + ['CodeReviewSummaries']
        [
          CodeReviewSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::CodeReviewSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CodeReviewSummary
    class CodeReviewSummary
      def self.default(visited=[])
        return nil if visited.include?('CodeReviewSummary')
        visited = visited + ['CodeReviewSummary']
        {
          name: 'name',
          code_review_arn: 'code_review_arn',
          repository_name: 'repository_name',
          owner: 'owner',
          provider_type: 'provider_type',
          state: 'state',
          created_time_stamp: Time.now,
          last_updated_time_stamp: Time.now,
          type: 'type',
          pull_request_id: 'pull_request_id',
          metrics_summary: MetricsSummary.default(visited),
          source_code_type: SourceCodeType.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CodeReviewSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CodeReviewArn'] = stub[:code_review_arn] unless stub[:code_review_arn].nil?
        data['RepositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['Owner'] = stub[:owner] unless stub[:owner].nil?
        data['ProviderType'] = stub[:provider_type] unless stub[:provider_type].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['CreatedTimeStamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time_stamp]).to_i unless stub[:created_time_stamp].nil?
        data['LastUpdatedTimeStamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time_stamp]).to_i unless stub[:last_updated_time_stamp].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['PullRequestId'] = stub[:pull_request_id] unless stub[:pull_request_id].nil?
        data['MetricsSummary'] = Stubs::MetricsSummary.stub(stub[:metrics_summary]) unless stub[:metrics_summary].nil?
        data['SourceCodeType'] = Stubs::SourceCodeType.stub(stub[:source_code_type]) unless stub[:source_code_type].nil?
        data
      end
    end

    # Structure Stubber for MetricsSummary
    class MetricsSummary
      def self.default(visited=[])
        return nil if visited.include?('MetricsSummary')
        visited = visited + ['MetricsSummary']
        {
          metered_lines_of_code_count: 1,
          suppressed_lines_of_code_count: 1,
          findings_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MetricsSummary.new
        data = {}
        data['MeteredLinesOfCodeCount'] = stub[:metered_lines_of_code_count] unless stub[:metered_lines_of_code_count].nil?
        data['SuppressedLinesOfCodeCount'] = stub[:suppressed_lines_of_code_count] unless stub[:suppressed_lines_of_code_count].nil?
        data['FindingsCount'] = stub[:findings_count] unless stub[:findings_count].nil?
        data
      end
    end

    # Operation Stubber for ListRecommendationFeedback
    class ListRecommendationFeedback
      def self.default(visited=[])
        {
          recommendation_feedback_summaries: RecommendationFeedbackSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RecommendationFeedbackSummaries'] = Stubs::RecommendationFeedbackSummaries.stub(stub[:recommendation_feedback_summaries]) unless stub[:recommendation_feedback_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RecommendationFeedbackSummaries
    class RecommendationFeedbackSummaries
      def self.default(visited=[])
        return nil if visited.include?('RecommendationFeedbackSummaries')
        visited = visited + ['RecommendationFeedbackSummaries']
        [
          RecommendationFeedbackSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecommendationFeedbackSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecommendationFeedbackSummary
    class RecommendationFeedbackSummary
      def self.default(visited=[])
        return nil if visited.include?('RecommendationFeedbackSummary')
        visited = visited + ['RecommendationFeedbackSummary']
        {
          recommendation_id: 'recommendation_id',
          reactions: Reactions.default(visited),
          user_id: 'user_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationFeedbackSummary.new
        data = {}
        data['RecommendationId'] = stub[:recommendation_id] unless stub[:recommendation_id].nil?
        data['Reactions'] = Stubs::Reactions.stub(stub[:reactions]) unless stub[:reactions].nil?
        data['UserId'] = stub[:user_id] unless stub[:user_id].nil?
        data
      end
    end

    # Operation Stubber for ListRecommendations
    class ListRecommendations
      def self.default(visited=[])
        {
          recommendation_summaries: RecommendationSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RecommendationSummaries'] = Stubs::RecommendationSummaries.stub(stub[:recommendation_summaries]) unless stub[:recommendation_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RecommendationSummaries
    class RecommendationSummaries
      def self.default(visited=[])
        return nil if visited.include?('RecommendationSummaries')
        visited = visited + ['RecommendationSummaries']
        [
          RecommendationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecommendationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecommendationSummary
    class RecommendationSummary
      def self.default(visited=[])
        return nil if visited.include?('RecommendationSummary')
        visited = visited + ['RecommendationSummary']
        {
          file_path: 'file_path',
          recommendation_id: 'recommendation_id',
          start_line: 1,
          end_line: 1,
          description: 'description',
          recommendation_category: 'recommendation_category',
          rule_metadata: RuleMetadata.default(visited),
          severity: 'severity',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationSummary.new
        data = {}
        data['FilePath'] = stub[:file_path] unless stub[:file_path].nil?
        data['RecommendationId'] = stub[:recommendation_id] unless stub[:recommendation_id].nil?
        data['StartLine'] = stub[:start_line] unless stub[:start_line].nil?
        data['EndLine'] = stub[:end_line] unless stub[:end_line].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RecommendationCategory'] = stub[:recommendation_category] unless stub[:recommendation_category].nil?
        data['RuleMetadata'] = Stubs::RuleMetadata.stub(stub[:rule_metadata]) unless stub[:rule_metadata].nil?
        data['Severity'] = stub[:severity] unless stub[:severity].nil?
        data
      end
    end

    # Structure Stubber for RuleMetadata
    class RuleMetadata
      def self.default(visited=[])
        return nil if visited.include?('RuleMetadata')
        visited = visited + ['RuleMetadata']
        {
          rule_id: 'rule_id',
          rule_name: 'rule_name',
          short_description: 'short_description',
          long_description: 'long_description',
          rule_tags: RuleTags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RuleMetadata.new
        data = {}
        data['RuleId'] = stub[:rule_id] unless stub[:rule_id].nil?
        data['RuleName'] = stub[:rule_name] unless stub[:rule_name].nil?
        data['ShortDescription'] = stub[:short_description] unless stub[:short_description].nil?
        data['LongDescription'] = stub[:long_description] unless stub[:long_description].nil?
        data['RuleTags'] = Stubs::RuleTags.stub(stub[:rule_tags]) unless stub[:rule_tags].nil?
        data
      end
    end

    # List Stubber for RuleTags
    class RuleTags
      def self.default(visited=[])
        return nil if visited.include?('RuleTags')
        visited = visited + ['RuleTags']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListRepositoryAssociations
    class ListRepositoryAssociations
      def self.default(visited=[])
        {
          repository_association_summaries: RepositoryAssociationSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['RepositoryAssociationSummaries'] = Stubs::RepositoryAssociationSummaries.stub(stub[:repository_association_summaries]) unless stub[:repository_association_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RepositoryAssociationSummaries
    class RepositoryAssociationSummaries
      def self.default(visited=[])
        return nil if visited.include?('RepositoryAssociationSummaries')
        visited = visited + ['RepositoryAssociationSummaries']
        [
          RepositoryAssociationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RepositoryAssociationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RepositoryAssociationSummary
    class RepositoryAssociationSummary
      def self.default(visited=[])
        return nil if visited.include?('RepositoryAssociationSummary')
        visited = visited + ['RepositoryAssociationSummary']
        {
          association_arn: 'association_arn',
          connection_arn: 'connection_arn',
          last_updated_time_stamp: Time.now,
          association_id: 'association_id',
          name: 'name',
          owner: 'owner',
          provider_type: 'provider_type',
          state: 'state',
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositoryAssociationSummary.new
        data = {}
        data['AssociationArn'] = stub[:association_arn] unless stub[:association_arn].nil?
        data['ConnectionArn'] = stub[:connection_arn] unless stub[:connection_arn].nil?
        data['LastUpdatedTimeStamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time_stamp]).to_i unless stub[:last_updated_time_stamp].nil?
        data['AssociationId'] = stub[:association_id] unless stub[:association_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Owner'] = stub[:owner] unless stub[:owner].nil?
        data['ProviderType'] = stub[:provider_type] unless stub[:provider_type].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Tags'] = Stubs::TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutRecommendationFeedback
    class PutRecommendationFeedback
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
