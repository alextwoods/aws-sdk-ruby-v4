# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'
require 'stringio'

module AWS::SDK::CodeCommit
  module Builders

    # Operation Builder for AssociateApprovalRuleTemplateWithRepository
    class AssociateApprovalRuleTemplateWithRepository
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.AssociateApprovalRuleTemplateWithRepository'
        data = {}
        data['approvalRuleTemplateName'] = input[:approval_rule_template_name] unless input[:approval_rule_template_name].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchAssociateApprovalRuleTemplateWithRepositories
    class BatchAssociateApprovalRuleTemplateWithRepositories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.BatchAssociateApprovalRuleTemplateWithRepositories'
        data = {}
        data['approvalRuleTemplateName'] = input[:approval_rule_template_name] unless input[:approval_rule_template_name].nil?
        data['repositoryNames'] = RepositoryNameList.build(input[:repository_names]) unless input[:repository_names].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RepositoryNameList
    class RepositoryNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchDescribeMergeConflicts
    class BatchDescribeMergeConflicts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.BatchDescribeMergeConflicts'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['destinationCommitSpecifier'] = input[:destination_commit_specifier] unless input[:destination_commit_specifier].nil?
        data['sourceCommitSpecifier'] = input[:source_commit_specifier] unless input[:source_commit_specifier].nil?
        data['mergeOption'] = input[:merge_option] unless input[:merge_option].nil?
        data['maxMergeHunks'] = input[:max_merge_hunks] unless input[:max_merge_hunks].nil?
        data['maxConflictFiles'] = input[:max_conflict_files] unless input[:max_conflict_files].nil?
        data['filePaths'] = FilePaths.build(input[:file_paths]) unless input[:file_paths].nil?
        data['conflictDetailLevel'] = input[:conflict_detail_level] unless input[:conflict_detail_level].nil?
        data['conflictResolutionStrategy'] = input[:conflict_resolution_strategy] unless input[:conflict_resolution_strategy].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FilePaths
    class FilePaths
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchDisassociateApprovalRuleTemplateFromRepositories
    class BatchDisassociateApprovalRuleTemplateFromRepositories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.BatchDisassociateApprovalRuleTemplateFromRepositories'
        data = {}
        data['approvalRuleTemplateName'] = input[:approval_rule_template_name] unless input[:approval_rule_template_name].nil?
        data['repositoryNames'] = RepositoryNameList.build(input[:repository_names]) unless input[:repository_names].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchGetCommits
    class BatchGetCommits
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.BatchGetCommits'
        data = {}
        data['commitIds'] = CommitIdsInputList.build(input[:commit_ids]) unless input[:commit_ids].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for CommitIdsInputList
    class CommitIdsInputList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetRepositories
    class BatchGetRepositories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.BatchGetRepositories'
        data = {}
        data['repositoryNames'] = RepositoryNameList.build(input[:repository_names]) unless input[:repository_names].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateApprovalRuleTemplate
    class CreateApprovalRuleTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.CreateApprovalRuleTemplate'
        data = {}
        data['approvalRuleTemplateName'] = input[:approval_rule_template_name] unless input[:approval_rule_template_name].nil?
        data['approvalRuleTemplateContent'] = input[:approval_rule_template_content] unless input[:approval_rule_template_content].nil?
        data['approvalRuleTemplateDescription'] = input[:approval_rule_template_description] unless input[:approval_rule_template_description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateBranch
    class CreateBranch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.CreateBranch'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['branchName'] = input[:branch_name] unless input[:branch_name].nil?
        data['commitId'] = input[:commit_id] unless input[:commit_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateCommit
    class CreateCommit
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.CreateCommit'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['branchName'] = input[:branch_name] unless input[:branch_name].nil?
        data['parentCommitId'] = input[:parent_commit_id] unless input[:parent_commit_id].nil?
        data['authorName'] = input[:author_name] unless input[:author_name].nil?
        data['email'] = input[:email] unless input[:email].nil?
        data['commitMessage'] = input[:commit_message] unless input[:commit_message].nil?
        data['keepEmptyFolders'] = input[:keep_empty_folders] unless input[:keep_empty_folders].nil?
        data['putFiles'] = PutFileEntries.build(input[:put_files]) unless input[:put_files].nil?
        data['deleteFiles'] = DeleteFileEntries.build(input[:delete_files]) unless input[:delete_files].nil?
        data['setFileModes'] = SetFileModeEntries.build(input[:set_file_modes]) unless input[:set_file_modes].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for SetFileModeEntries
    class SetFileModeEntries
      def self.build(input)
        data = []
        input.each do |element|
          data << SetFileModeEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SetFileModeEntry
    class SetFileModeEntry
      def self.build(input)
        data = {}
        data['filePath'] = input[:file_path] unless input[:file_path].nil?
        data['fileMode'] = input[:file_mode] unless input[:file_mode].nil?
        data
      end
    end

    # List Builder for DeleteFileEntries
    class DeleteFileEntries
      def self.build(input)
        data = []
        input.each do |element|
          data << DeleteFileEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DeleteFileEntry
    class DeleteFileEntry
      def self.build(input)
        data = {}
        data['filePath'] = input[:file_path] unless input[:file_path].nil?
        data
      end
    end

    # List Builder for PutFileEntries
    class PutFileEntries
      def self.build(input)
        data = []
        input.each do |element|
          data << PutFileEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PutFileEntry
    class PutFileEntry
      def self.build(input)
        data = {}
        data['filePath'] = input[:file_path] unless input[:file_path].nil?
        data['fileMode'] = input[:file_mode] unless input[:file_mode].nil?
        data['fileContent'] = ::Base64::encode64(input[:file_content]).strip unless input[:file_content].nil?
        data['sourceFile'] = SourceFileSpecifier.build(input[:source_file]) unless input[:source_file].nil?
        data
      end
    end

    # Structure Builder for SourceFileSpecifier
    class SourceFileSpecifier
      def self.build(input)
        data = {}
        data['filePath'] = input[:file_path] unless input[:file_path].nil?
        data['isMove'] = input[:is_move] unless input[:is_move].nil?
        data
      end
    end

    # Operation Builder for CreatePullRequest
    class CreatePullRequest
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.CreatePullRequest'
        data = {}
        data['title'] = input[:title] unless input[:title].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['targets'] = TargetList.build(input[:targets]) unless input[:targets].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TargetList
    class TargetList
      def self.build(input)
        data = []
        input.each do |element|
          data << Target.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Target
    class Target
      def self.build(input)
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['sourceReference'] = input[:source_reference] unless input[:source_reference].nil?
        data['destinationReference'] = input[:destination_reference] unless input[:destination_reference].nil?
        data
      end
    end

    # Operation Builder for CreatePullRequestApprovalRule
    class CreatePullRequestApprovalRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.CreatePullRequestApprovalRule'
        data = {}
        data['pullRequestId'] = input[:pull_request_id] unless input[:pull_request_id].nil?
        data['approvalRuleName'] = input[:approval_rule_name] unless input[:approval_rule_name].nil?
        data['approvalRuleContent'] = input[:approval_rule_content] unless input[:approval_rule_content].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateRepository
    class CreateRepository
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.CreateRepository'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['repositoryDescription'] = input[:repository_description] unless input[:repository_description].nil?
        data['tags'] = TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for TagsMap
    class TagsMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateUnreferencedMergeCommit
    class CreateUnreferencedMergeCommit
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.CreateUnreferencedMergeCommit'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['sourceCommitSpecifier'] = input[:source_commit_specifier] unless input[:source_commit_specifier].nil?
        data['destinationCommitSpecifier'] = input[:destination_commit_specifier] unless input[:destination_commit_specifier].nil?
        data['mergeOption'] = input[:merge_option] unless input[:merge_option].nil?
        data['conflictDetailLevel'] = input[:conflict_detail_level] unless input[:conflict_detail_level].nil?
        data['conflictResolutionStrategy'] = input[:conflict_resolution_strategy] unless input[:conflict_resolution_strategy].nil?
        data['authorName'] = input[:author_name] unless input[:author_name].nil?
        data['email'] = input[:email] unless input[:email].nil?
        data['commitMessage'] = input[:commit_message] unless input[:commit_message].nil?
        data['keepEmptyFolders'] = input[:keep_empty_folders] unless input[:keep_empty_folders].nil?
        data['conflictResolution'] = ConflictResolution.build(input[:conflict_resolution]) unless input[:conflict_resolution].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ConflictResolution
    class ConflictResolution
      def self.build(input)
        data = {}
        data['replaceContents'] = ReplaceContentEntries.build(input[:replace_contents]) unless input[:replace_contents].nil?
        data['deleteFiles'] = DeleteFileEntries.build(input[:delete_files]) unless input[:delete_files].nil?
        data['setFileModes'] = SetFileModeEntries.build(input[:set_file_modes]) unless input[:set_file_modes].nil?
        data
      end
    end

    # List Builder for ReplaceContentEntries
    class ReplaceContentEntries
      def self.build(input)
        data = []
        input.each do |element|
          data << ReplaceContentEntry.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ReplaceContentEntry
    class ReplaceContentEntry
      def self.build(input)
        data = {}
        data['filePath'] = input[:file_path] unless input[:file_path].nil?
        data['replacementType'] = input[:replacement_type] unless input[:replacement_type].nil?
        data['content'] = ::Base64::encode64(input[:content]).strip unless input[:content].nil?
        data['fileMode'] = input[:file_mode] unless input[:file_mode].nil?
        data
      end
    end

    # Operation Builder for DeleteApprovalRuleTemplate
    class DeleteApprovalRuleTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.DeleteApprovalRuleTemplate'
        data = {}
        data['approvalRuleTemplateName'] = input[:approval_rule_template_name] unless input[:approval_rule_template_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteBranch
    class DeleteBranch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.DeleteBranch'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['branchName'] = input[:branch_name] unless input[:branch_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteCommentContent
    class DeleteCommentContent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.DeleteCommentContent'
        data = {}
        data['commentId'] = input[:comment_id] unless input[:comment_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteFile
    class DeleteFile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.DeleteFile'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['branchName'] = input[:branch_name] unless input[:branch_name].nil?
        data['filePath'] = input[:file_path] unless input[:file_path].nil?
        data['parentCommitId'] = input[:parent_commit_id] unless input[:parent_commit_id].nil?
        data['keepEmptyFolders'] = input[:keep_empty_folders] unless input[:keep_empty_folders].nil?
        data['commitMessage'] = input[:commit_message] unless input[:commit_message].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['email'] = input[:email] unless input[:email].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePullRequestApprovalRule
    class DeletePullRequestApprovalRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.DeletePullRequestApprovalRule'
        data = {}
        data['pullRequestId'] = input[:pull_request_id] unless input[:pull_request_id].nil?
        data['approvalRuleName'] = input[:approval_rule_name] unless input[:approval_rule_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRepository
    class DeleteRepository
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.DeleteRepository'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeMergeConflicts
    class DescribeMergeConflicts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.DescribeMergeConflicts'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['destinationCommitSpecifier'] = input[:destination_commit_specifier] unless input[:destination_commit_specifier].nil?
        data['sourceCommitSpecifier'] = input[:source_commit_specifier] unless input[:source_commit_specifier].nil?
        data['mergeOption'] = input[:merge_option] unless input[:merge_option].nil?
        data['maxMergeHunks'] = input[:max_merge_hunks] unless input[:max_merge_hunks].nil?
        data['filePath'] = input[:file_path] unless input[:file_path].nil?
        data['conflictDetailLevel'] = input[:conflict_detail_level] unless input[:conflict_detail_level].nil?
        data['conflictResolutionStrategy'] = input[:conflict_resolution_strategy] unless input[:conflict_resolution_strategy].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePullRequestEvents
    class DescribePullRequestEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.DescribePullRequestEvents'
        data = {}
        data['pullRequestId'] = input[:pull_request_id] unless input[:pull_request_id].nil?
        data['pullRequestEventType'] = input[:pull_request_event_type] unless input[:pull_request_event_type].nil?
        data['actorArn'] = input[:actor_arn] unless input[:actor_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateApprovalRuleTemplateFromRepository
    class DisassociateApprovalRuleTemplateFromRepository
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.DisassociateApprovalRuleTemplateFromRepository'
        data = {}
        data['approvalRuleTemplateName'] = input[:approval_rule_template_name] unless input[:approval_rule_template_name].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EvaluatePullRequestApprovalRules
    class EvaluatePullRequestApprovalRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.EvaluatePullRequestApprovalRules'
        data = {}
        data['pullRequestId'] = input[:pull_request_id] unless input[:pull_request_id].nil?
        data['revisionId'] = input[:revision_id] unless input[:revision_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetApprovalRuleTemplate
    class GetApprovalRuleTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.GetApprovalRuleTemplate'
        data = {}
        data['approvalRuleTemplateName'] = input[:approval_rule_template_name] unless input[:approval_rule_template_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBlob
    class GetBlob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.GetBlob'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['blobId'] = input[:blob_id] unless input[:blob_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetBranch
    class GetBranch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.GetBranch'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['branchName'] = input[:branch_name] unless input[:branch_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetComment
    class GetComment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.GetComment'
        data = {}
        data['commentId'] = input[:comment_id] unless input[:comment_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCommentReactions
    class GetCommentReactions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.GetCommentReactions'
        data = {}
        data['commentId'] = input[:comment_id] unless input[:comment_id].nil?
        data['reactionUserArn'] = input[:reaction_user_arn] unless input[:reaction_user_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCommentsForComparedCommit
    class GetCommentsForComparedCommit
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.GetCommentsForComparedCommit'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['beforeCommitId'] = input[:before_commit_id] unless input[:before_commit_id].nil?
        data['afterCommitId'] = input[:after_commit_id] unless input[:after_commit_id].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCommentsForPullRequest
    class GetCommentsForPullRequest
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.GetCommentsForPullRequest'
        data = {}
        data['pullRequestId'] = input[:pull_request_id] unless input[:pull_request_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['beforeCommitId'] = input[:before_commit_id] unless input[:before_commit_id].nil?
        data['afterCommitId'] = input[:after_commit_id] unless input[:after_commit_id].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetCommit
    class GetCommit
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.GetCommit'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['commitId'] = input[:commit_id] unless input[:commit_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDifferences
    class GetDifferences
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.GetDifferences'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['beforeCommitSpecifier'] = input[:before_commit_specifier] unless input[:before_commit_specifier].nil?
        data['afterCommitSpecifier'] = input[:after_commit_specifier] unless input[:after_commit_specifier].nil?
        data['beforePath'] = input[:before_path] unless input[:before_path].nil?
        data['afterPath'] = input[:after_path] unless input[:after_path].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetFile
    class GetFile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.GetFile'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['commitSpecifier'] = input[:commit_specifier] unless input[:commit_specifier].nil?
        data['filePath'] = input[:file_path] unless input[:file_path].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetFolder
    class GetFolder
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.GetFolder'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['commitSpecifier'] = input[:commit_specifier] unless input[:commit_specifier].nil?
        data['folderPath'] = input[:folder_path] unless input[:folder_path].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMergeCommit
    class GetMergeCommit
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.GetMergeCommit'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['sourceCommitSpecifier'] = input[:source_commit_specifier] unless input[:source_commit_specifier].nil?
        data['destinationCommitSpecifier'] = input[:destination_commit_specifier] unless input[:destination_commit_specifier].nil?
        data['conflictDetailLevel'] = input[:conflict_detail_level] unless input[:conflict_detail_level].nil?
        data['conflictResolutionStrategy'] = input[:conflict_resolution_strategy] unless input[:conflict_resolution_strategy].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMergeConflicts
    class GetMergeConflicts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.GetMergeConflicts'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['destinationCommitSpecifier'] = input[:destination_commit_specifier] unless input[:destination_commit_specifier].nil?
        data['sourceCommitSpecifier'] = input[:source_commit_specifier] unless input[:source_commit_specifier].nil?
        data['mergeOption'] = input[:merge_option] unless input[:merge_option].nil?
        data['conflictDetailLevel'] = input[:conflict_detail_level] unless input[:conflict_detail_level].nil?
        data['maxConflictFiles'] = input[:max_conflict_files] unless input[:max_conflict_files].nil?
        data['conflictResolutionStrategy'] = input[:conflict_resolution_strategy] unless input[:conflict_resolution_strategy].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMergeOptions
    class GetMergeOptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.GetMergeOptions'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['sourceCommitSpecifier'] = input[:source_commit_specifier] unless input[:source_commit_specifier].nil?
        data['destinationCommitSpecifier'] = input[:destination_commit_specifier] unless input[:destination_commit_specifier].nil?
        data['conflictDetailLevel'] = input[:conflict_detail_level] unless input[:conflict_detail_level].nil?
        data['conflictResolutionStrategy'] = input[:conflict_resolution_strategy] unless input[:conflict_resolution_strategy].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetPullRequest
    class GetPullRequest
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.GetPullRequest'
        data = {}
        data['pullRequestId'] = input[:pull_request_id] unless input[:pull_request_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetPullRequestApprovalStates
    class GetPullRequestApprovalStates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.GetPullRequestApprovalStates'
        data = {}
        data['pullRequestId'] = input[:pull_request_id] unless input[:pull_request_id].nil?
        data['revisionId'] = input[:revision_id] unless input[:revision_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetPullRequestOverrideState
    class GetPullRequestOverrideState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.GetPullRequestOverrideState'
        data = {}
        data['pullRequestId'] = input[:pull_request_id] unless input[:pull_request_id].nil?
        data['revisionId'] = input[:revision_id] unless input[:revision_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRepository
    class GetRepository
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.GetRepository'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetRepositoryTriggers
    class GetRepositoryTriggers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.GetRepositoryTriggers'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListApprovalRuleTemplates
    class ListApprovalRuleTemplates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.ListApprovalRuleTemplates'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAssociatedApprovalRuleTemplatesForRepository
    class ListAssociatedApprovalRuleTemplatesForRepository
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.ListAssociatedApprovalRuleTemplatesForRepository'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListBranches
    class ListBranches
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.ListBranches'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListPullRequests
    class ListPullRequests
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.ListPullRequests'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['authorArn'] = input[:author_arn] unless input[:author_arn].nil?
        data['pullRequestStatus'] = input[:pull_request_status] unless input[:pull_request_status].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRepositories
    class ListRepositories
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.ListRepositories'
        data = {}
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['sortBy'] = input[:sort_by] unless input[:sort_by].nil?
        data['order'] = input[:order] unless input[:order].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListRepositoriesForApprovalRuleTemplate
    class ListRepositoriesForApprovalRuleTemplate
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.ListRepositoriesForApprovalRuleTemplate'
        data = {}
        data['approvalRuleTemplateName'] = input[:approval_rule_template_name] unless input[:approval_rule_template_name].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.ListTagsForResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for MergeBranchesByFastForward
    class MergeBranchesByFastForward
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.MergeBranchesByFastForward'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['sourceCommitSpecifier'] = input[:source_commit_specifier] unless input[:source_commit_specifier].nil?
        data['destinationCommitSpecifier'] = input[:destination_commit_specifier] unless input[:destination_commit_specifier].nil?
        data['targetBranch'] = input[:target_branch] unless input[:target_branch].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for MergeBranchesBySquash
    class MergeBranchesBySquash
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.MergeBranchesBySquash'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['sourceCommitSpecifier'] = input[:source_commit_specifier] unless input[:source_commit_specifier].nil?
        data['destinationCommitSpecifier'] = input[:destination_commit_specifier] unless input[:destination_commit_specifier].nil?
        data['targetBranch'] = input[:target_branch] unless input[:target_branch].nil?
        data['conflictDetailLevel'] = input[:conflict_detail_level] unless input[:conflict_detail_level].nil?
        data['conflictResolutionStrategy'] = input[:conflict_resolution_strategy] unless input[:conflict_resolution_strategy].nil?
        data['authorName'] = input[:author_name] unless input[:author_name].nil?
        data['email'] = input[:email] unless input[:email].nil?
        data['commitMessage'] = input[:commit_message] unless input[:commit_message].nil?
        data['keepEmptyFolders'] = input[:keep_empty_folders] unless input[:keep_empty_folders].nil?
        data['conflictResolution'] = ConflictResolution.build(input[:conflict_resolution]) unless input[:conflict_resolution].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for MergeBranchesByThreeWay
    class MergeBranchesByThreeWay
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.MergeBranchesByThreeWay'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['sourceCommitSpecifier'] = input[:source_commit_specifier] unless input[:source_commit_specifier].nil?
        data['destinationCommitSpecifier'] = input[:destination_commit_specifier] unless input[:destination_commit_specifier].nil?
        data['targetBranch'] = input[:target_branch] unless input[:target_branch].nil?
        data['conflictDetailLevel'] = input[:conflict_detail_level] unless input[:conflict_detail_level].nil?
        data['conflictResolutionStrategy'] = input[:conflict_resolution_strategy] unless input[:conflict_resolution_strategy].nil?
        data['authorName'] = input[:author_name] unless input[:author_name].nil?
        data['email'] = input[:email] unless input[:email].nil?
        data['commitMessage'] = input[:commit_message] unless input[:commit_message].nil?
        data['keepEmptyFolders'] = input[:keep_empty_folders] unless input[:keep_empty_folders].nil?
        data['conflictResolution'] = ConflictResolution.build(input[:conflict_resolution]) unless input[:conflict_resolution].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for MergePullRequestByFastForward
    class MergePullRequestByFastForward
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.MergePullRequestByFastForward'
        data = {}
        data['pullRequestId'] = input[:pull_request_id] unless input[:pull_request_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['sourceCommitId'] = input[:source_commit_id] unless input[:source_commit_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for MergePullRequestBySquash
    class MergePullRequestBySquash
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.MergePullRequestBySquash'
        data = {}
        data['pullRequestId'] = input[:pull_request_id] unless input[:pull_request_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['sourceCommitId'] = input[:source_commit_id] unless input[:source_commit_id].nil?
        data['conflictDetailLevel'] = input[:conflict_detail_level] unless input[:conflict_detail_level].nil?
        data['conflictResolutionStrategy'] = input[:conflict_resolution_strategy] unless input[:conflict_resolution_strategy].nil?
        data['commitMessage'] = input[:commit_message] unless input[:commit_message].nil?
        data['authorName'] = input[:author_name] unless input[:author_name].nil?
        data['email'] = input[:email] unless input[:email].nil?
        data['keepEmptyFolders'] = input[:keep_empty_folders] unless input[:keep_empty_folders].nil?
        data['conflictResolution'] = ConflictResolution.build(input[:conflict_resolution]) unless input[:conflict_resolution].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for MergePullRequestByThreeWay
    class MergePullRequestByThreeWay
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.MergePullRequestByThreeWay'
        data = {}
        data['pullRequestId'] = input[:pull_request_id] unless input[:pull_request_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['sourceCommitId'] = input[:source_commit_id] unless input[:source_commit_id].nil?
        data['conflictDetailLevel'] = input[:conflict_detail_level] unless input[:conflict_detail_level].nil?
        data['conflictResolutionStrategy'] = input[:conflict_resolution_strategy] unless input[:conflict_resolution_strategy].nil?
        data['commitMessage'] = input[:commit_message] unless input[:commit_message].nil?
        data['authorName'] = input[:author_name] unless input[:author_name].nil?
        data['email'] = input[:email] unless input[:email].nil?
        data['keepEmptyFolders'] = input[:keep_empty_folders] unless input[:keep_empty_folders].nil?
        data['conflictResolution'] = ConflictResolution.build(input[:conflict_resolution]) unless input[:conflict_resolution].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for OverridePullRequestApprovalRules
    class OverridePullRequestApprovalRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.OverridePullRequestApprovalRules'
        data = {}
        data['pullRequestId'] = input[:pull_request_id] unless input[:pull_request_id].nil?
        data['revisionId'] = input[:revision_id] unless input[:revision_id].nil?
        data['overrideStatus'] = input[:override_status] unless input[:override_status].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PostCommentForComparedCommit
    class PostCommentForComparedCommit
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.PostCommentForComparedCommit'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['beforeCommitId'] = input[:before_commit_id] unless input[:before_commit_id].nil?
        data['afterCommitId'] = input[:after_commit_id] unless input[:after_commit_id].nil?
        data['location'] = Location.build(input[:location]) unless input[:location].nil?
        data['content'] = input[:content] unless input[:content].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for Location
    class Location
      def self.build(input)
        data = {}
        data['filePath'] = input[:file_path] unless input[:file_path].nil?
        data['filePosition'] = input[:file_position] unless input[:file_position].nil?
        data['relativeFileVersion'] = input[:relative_file_version] unless input[:relative_file_version].nil?
        data
      end
    end

    # Operation Builder for PostCommentForPullRequest
    class PostCommentForPullRequest
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.PostCommentForPullRequest'
        data = {}
        data['pullRequestId'] = input[:pull_request_id] unless input[:pull_request_id].nil?
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['beforeCommitId'] = input[:before_commit_id] unless input[:before_commit_id].nil?
        data['afterCommitId'] = input[:after_commit_id] unless input[:after_commit_id].nil?
        data['location'] = Location.build(input[:location]) unless input[:location].nil?
        data['content'] = input[:content] unless input[:content].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PostCommentReply
    class PostCommentReply
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.PostCommentReply'
        data = {}
        data['inReplyTo'] = input[:in_reply_to] unless input[:in_reply_to].nil?
        data['clientRequestToken'] = input[:client_request_token] unless input[:client_request_token].nil?
        data['content'] = input[:content] unless input[:content].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutCommentReaction
    class PutCommentReaction
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.PutCommentReaction'
        data = {}
        data['commentId'] = input[:comment_id] unless input[:comment_id].nil?
        data['reactionValue'] = input[:reaction_value] unless input[:reaction_value].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutFile
    class PutFile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.PutFile'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['branchName'] = input[:branch_name] unless input[:branch_name].nil?
        data['fileContent'] = ::Base64::encode64(input[:file_content]).strip unless input[:file_content].nil?
        data['filePath'] = input[:file_path] unless input[:file_path].nil?
        data['fileMode'] = input[:file_mode] unless input[:file_mode].nil?
        data['parentCommitId'] = input[:parent_commit_id] unless input[:parent_commit_id].nil?
        data['commitMessage'] = input[:commit_message] unless input[:commit_message].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['email'] = input[:email] unless input[:email].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutRepositoryTriggers
    class PutRepositoryTriggers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.PutRepositoryTriggers'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['triggers'] = RepositoryTriggersList.build(input[:triggers]) unless input[:triggers].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RepositoryTriggersList
    class RepositoryTriggersList
      def self.build(input)
        data = []
        input.each do |element|
          data << RepositoryTrigger.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RepositoryTrigger
    class RepositoryTrigger
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['destinationArn'] = input[:destination_arn] unless input[:destination_arn].nil?
        data['customData'] = input[:custom_data] unless input[:custom_data].nil?
        data['branches'] = BranchNameList.build(input[:branches]) unless input[:branches].nil?
        data['events'] = RepositoryTriggerEventList.build(input[:events]) unless input[:events].nil?
        data
      end
    end

    # List Builder for RepositoryTriggerEventList
    class RepositoryTriggerEventList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for BranchNameList
    class BranchNameList
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
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.TagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tags'] = TagsMap.build(input[:tags]) unless input[:tags].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TestRepositoryTriggers
    class TestRepositoryTriggers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.TestRepositoryTriggers'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['triggers'] = RepositoryTriggersList.build(input[:triggers]) unless input[:triggers].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.UntagResource'
        data = {}
        data['resourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['tagKeys'] = TagKeysList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeysList
    class TagKeysList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateApprovalRuleTemplateContent
    class UpdateApprovalRuleTemplateContent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.UpdateApprovalRuleTemplateContent'
        data = {}
        data['approvalRuleTemplateName'] = input[:approval_rule_template_name] unless input[:approval_rule_template_name].nil?
        data['newRuleContent'] = input[:new_rule_content] unless input[:new_rule_content].nil?
        data['existingRuleContentSha256'] = input[:existing_rule_content_sha256] unless input[:existing_rule_content_sha256].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateApprovalRuleTemplateDescription
    class UpdateApprovalRuleTemplateDescription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.UpdateApprovalRuleTemplateDescription'
        data = {}
        data['approvalRuleTemplateName'] = input[:approval_rule_template_name] unless input[:approval_rule_template_name].nil?
        data['approvalRuleTemplateDescription'] = input[:approval_rule_template_description] unless input[:approval_rule_template_description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateApprovalRuleTemplateName
    class UpdateApprovalRuleTemplateName
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.UpdateApprovalRuleTemplateName'
        data = {}
        data['oldApprovalRuleTemplateName'] = input[:old_approval_rule_template_name] unless input[:old_approval_rule_template_name].nil?
        data['newApprovalRuleTemplateName'] = input[:new_approval_rule_template_name] unless input[:new_approval_rule_template_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateComment
    class UpdateComment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.UpdateComment'
        data = {}
        data['commentId'] = input[:comment_id] unless input[:comment_id].nil?
        data['content'] = input[:content] unless input[:content].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateDefaultBranch
    class UpdateDefaultBranch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.UpdateDefaultBranch'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['defaultBranchName'] = input[:default_branch_name] unless input[:default_branch_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePullRequestApprovalRuleContent
    class UpdatePullRequestApprovalRuleContent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.UpdatePullRequestApprovalRuleContent'
        data = {}
        data['pullRequestId'] = input[:pull_request_id] unless input[:pull_request_id].nil?
        data['approvalRuleName'] = input[:approval_rule_name] unless input[:approval_rule_name].nil?
        data['existingRuleContentSha256'] = input[:existing_rule_content_sha256] unless input[:existing_rule_content_sha256].nil?
        data['newRuleContent'] = input[:new_rule_content] unless input[:new_rule_content].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePullRequestApprovalState
    class UpdatePullRequestApprovalState
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.UpdatePullRequestApprovalState'
        data = {}
        data['pullRequestId'] = input[:pull_request_id] unless input[:pull_request_id].nil?
        data['revisionId'] = input[:revision_id] unless input[:revision_id].nil?
        data['approvalState'] = input[:approval_state] unless input[:approval_state].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePullRequestDescription
    class UpdatePullRequestDescription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.UpdatePullRequestDescription'
        data = {}
        data['pullRequestId'] = input[:pull_request_id] unless input[:pull_request_id].nil?
        data['description'] = input[:description] unless input[:description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePullRequestStatus
    class UpdatePullRequestStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.UpdatePullRequestStatus'
        data = {}
        data['pullRequestId'] = input[:pull_request_id] unless input[:pull_request_id].nil?
        data['pullRequestStatus'] = input[:pull_request_status] unless input[:pull_request_status].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePullRequestTitle
    class UpdatePullRequestTitle
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.UpdatePullRequestTitle'
        data = {}
        data['pullRequestId'] = input[:pull_request_id] unless input[:pull_request_id].nil?
        data['title'] = input[:title] unless input[:title].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRepositoryDescription
    class UpdateRepositoryDescription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.UpdateRepositoryDescription'
        data = {}
        data['repositoryName'] = input[:repository_name] unless input[:repository_name].nil?
        data['repositoryDescription'] = input[:repository_description] unless input[:repository_description].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRepositoryName
    class UpdateRepositoryName
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'CodeCommit_20150413.UpdateRepositoryName'
        data = {}
        data['oldName'] = input[:old_name] unless input[:old_name].nil?
        data['newName'] = input[:new_name] unless input[:new_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
