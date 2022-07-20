# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeCommit
  module Parsers

    # Operation Parser for AssociateApprovalRuleTemplateWithRepository
    class AssociateApprovalRuleTemplateWithRepository
      def self.parse(http_resp)
        data = Types::AssociateApprovalRuleTemplateWithRepositoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ApprovalRuleTemplateDoesNotExistException
    class ApprovalRuleTemplateDoesNotExistException
      def self.parse(http_resp)
        data = Types::ApprovalRuleTemplateDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ApprovalRuleTemplateNameRequiredException
    class ApprovalRuleTemplateNameRequiredException
      def self.parse(http_resp)
        data = Types::ApprovalRuleTemplateNameRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for EncryptionIntegrityChecksFailedException
    class EncryptionIntegrityChecksFailedException
      def self.parse(http_resp)
        data = Types::EncryptionIntegrityChecksFailedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for EncryptionKeyAccessDeniedException
    class EncryptionKeyAccessDeniedException
      def self.parse(http_resp)
        data = Types::EncryptionKeyAccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for EncryptionKeyDisabledException
    class EncryptionKeyDisabledException
      def self.parse(http_resp)
        data = Types::EncryptionKeyDisabledException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for EncryptionKeyNotFoundException
    class EncryptionKeyNotFoundException
      def self.parse(http_resp)
        data = Types::EncryptionKeyNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for EncryptionKeyUnavailableException
    class EncryptionKeyUnavailableException
      def self.parse(http_resp)
        data = Types::EncryptionKeyUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidApprovalRuleTemplateNameException
    class InvalidApprovalRuleTemplateNameException
      def self.parse(http_resp)
        data = Types::InvalidApprovalRuleTemplateNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidRepositoryNameException
    class InvalidRepositoryNameException
      def self.parse(http_resp)
        data = Types::InvalidRepositoryNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MaximumRuleTemplatesAssociatedWithRepositoryException
    class MaximumRuleTemplatesAssociatedWithRepositoryException
      def self.parse(http_resp)
        data = Types::MaximumRuleTemplatesAssociatedWithRepositoryException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for RepositoryDoesNotExistException
    class RepositoryDoesNotExistException
      def self.parse(http_resp)
        data = Types::RepositoryDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for RepositoryNameRequiredException
    class RepositoryNameRequiredException
      def self.parse(http_resp)
        data = Types::RepositoryNameRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for BatchAssociateApprovalRuleTemplateWithRepositories
    class BatchAssociateApprovalRuleTemplateWithRepositories
      def self.parse(http_resp)
        data = Types::BatchAssociateApprovalRuleTemplateWithRepositoriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.associated_repository_names = (Parsers::RepositoryNameList.parse(map['associatedRepositoryNames']) unless map['associatedRepositoryNames'].nil?)
        data.errors = (Parsers::BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList
      def self.parse(list)
        list.map do |value|
          Parsers::BatchAssociateApprovalRuleTemplateWithRepositoriesError.parse(value) unless value.nil?
        end
      end
    end

    class BatchAssociateApprovalRuleTemplateWithRepositoriesError
      def self.parse(map)
        data = Types::BatchAssociateApprovalRuleTemplateWithRepositoriesError.new
        data.repository_name = map['repositoryName']
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        return data
      end
    end

    class RepositoryNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for MaximumRepositoryNamesExceededException
    class MaximumRepositoryNamesExceededException
      def self.parse(http_resp)
        data = Types::MaximumRepositoryNamesExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for RepositoryNamesRequiredException
    class RepositoryNamesRequiredException
      def self.parse(http_resp)
        data = Types::RepositoryNamesRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for BatchDescribeMergeConflicts
    class BatchDescribeMergeConflicts
      def self.parse(http_resp)
        data = Types::BatchDescribeMergeConflictsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.conflicts = (Parsers::Conflicts.parse(map['conflicts']) unless map['conflicts'].nil?)
        data.next_token = map['nextToken']
        data.errors = (Parsers::BatchDescribeMergeConflictsErrors.parse(map['errors']) unless map['errors'].nil?)
        data.destination_commit_id = map['destinationCommitId']
        data.source_commit_id = map['sourceCommitId']
        data.base_commit_id = map['baseCommitId']
        data
      end
    end

    class BatchDescribeMergeConflictsErrors
      def self.parse(list)
        list.map do |value|
          Parsers::BatchDescribeMergeConflictsError.parse(value) unless value.nil?
        end
      end
    end

    class BatchDescribeMergeConflictsError
      def self.parse(map)
        data = Types::BatchDescribeMergeConflictsError.new
        data.file_path = map['filePath']
        data.exception_name = map['exceptionName']
        data.message = map['message']
        return data
      end
    end

    class Conflicts
      def self.parse(list)
        list.map do |value|
          Parsers::Conflict.parse(value) unless value.nil?
        end
      end
    end

    class Conflict
      def self.parse(map)
        data = Types::Conflict.new
        data.conflict_metadata = (Parsers::ConflictMetadata.parse(map['conflictMetadata']) unless map['conflictMetadata'].nil?)
        data.merge_hunks = (Parsers::MergeHunks.parse(map['mergeHunks']) unless map['mergeHunks'].nil?)
        return data
      end
    end

    class MergeHunks
      def self.parse(list)
        list.map do |value|
          Parsers::MergeHunk.parse(value) unless value.nil?
        end
      end
    end

    class MergeHunk
      def self.parse(map)
        data = Types::MergeHunk.new
        data.is_conflict = map['isConflict']
        data.source = (Parsers::MergeHunkDetail.parse(map['source']) unless map['source'].nil?)
        data.destination = (Parsers::MergeHunkDetail.parse(map['destination']) unless map['destination'].nil?)
        data.base = (Parsers::MergeHunkDetail.parse(map['base']) unless map['base'].nil?)
        return data
      end
    end

    class MergeHunkDetail
      def self.parse(map)
        data = Types::MergeHunkDetail.new
        data.start_line = map['startLine']
        data.end_line = map['endLine']
        data.hunk_content = map['hunkContent']
        return data
      end
    end

    class ConflictMetadata
      def self.parse(map)
        data = Types::ConflictMetadata.new
        data.file_path = map['filePath']
        data.file_sizes = (Parsers::FileSizes.parse(map['fileSizes']) unless map['fileSizes'].nil?)
        data.file_modes = (Parsers::FileModes.parse(map['fileModes']) unless map['fileModes'].nil?)
        data.object_types = (Parsers::ObjectTypes.parse(map['objectTypes']) unless map['objectTypes'].nil?)
        data.number_of_conflicts = map['numberOfConflicts']
        data.is_binary_file = (Parsers::IsBinaryFile.parse(map['isBinaryFile']) unless map['isBinaryFile'].nil?)
        data.content_conflict = map['contentConflict']
        data.file_mode_conflict = map['fileModeConflict']
        data.object_type_conflict = map['objectTypeConflict']
        data.merge_operations = (Parsers::MergeOperations.parse(map['mergeOperations']) unless map['mergeOperations'].nil?)
        return data
      end
    end

    class MergeOperations
      def self.parse(map)
        data = Types::MergeOperations.new
        data.source = map['source']
        data.destination = map['destination']
        return data
      end
    end

    class IsBinaryFile
      def self.parse(map)
        data = Types::IsBinaryFile.new
        data.source = map['source']
        data.destination = map['destination']
        data.base = map['base']
        return data
      end
    end

    class ObjectTypes
      def self.parse(map)
        data = Types::ObjectTypes.new
        data.source = map['source']
        data.destination = map['destination']
        data.base = map['base']
        return data
      end
    end

    class FileModes
      def self.parse(map)
        data = Types::FileModes.new
        data.source = map['source']
        data.destination = map['destination']
        data.base = map['base']
        return data
      end
    end

    class FileSizes
      def self.parse(map)
        data = Types::FileSizes.new
        data.source = map['source']
        data.destination = map['destination']
        data.base = map['base']
        return data
      end
    end

    # Error Parser for CommitDoesNotExistException
    class CommitDoesNotExistException
      def self.parse(http_resp)
        data = Types::CommitDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for CommitRequiredException
    class CommitRequiredException
      def self.parse(http_resp)
        data = Types::CommitRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidCommitException
    class InvalidCommitException
      def self.parse(http_resp)
        data = Types::InvalidCommitException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidConflictDetailLevelException
    class InvalidConflictDetailLevelException
      def self.parse(http_resp)
        data = Types::InvalidConflictDetailLevelException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidConflictResolutionStrategyException
    class InvalidConflictResolutionStrategyException
      def self.parse(http_resp)
        data = Types::InvalidConflictResolutionStrategyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidContinuationTokenException
    class InvalidContinuationTokenException
      def self.parse(http_resp)
        data = Types::InvalidContinuationTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidMaxConflictFilesException
    class InvalidMaxConflictFilesException
      def self.parse(http_resp)
        data = Types::InvalidMaxConflictFilesException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidMaxMergeHunksException
    class InvalidMaxMergeHunksException
      def self.parse(http_resp)
        data = Types::InvalidMaxMergeHunksException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidMergeOptionException
    class InvalidMergeOptionException
      def self.parse(http_resp)
        data = Types::InvalidMergeOptionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MaximumFileContentToLoadExceededException
    class MaximumFileContentToLoadExceededException
      def self.parse(http_resp)
        data = Types::MaximumFileContentToLoadExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MaximumItemsToCompareExceededException
    class MaximumItemsToCompareExceededException
      def self.parse(http_resp)
        data = Types::MaximumItemsToCompareExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MergeOptionRequiredException
    class MergeOptionRequiredException
      def self.parse(http_resp)
        data = Types::MergeOptionRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TipsDivergenceExceededException
    class TipsDivergenceExceededException
      def self.parse(http_resp)
        data = Types::TipsDivergenceExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for BatchDisassociateApprovalRuleTemplateFromRepositories
    class BatchDisassociateApprovalRuleTemplateFromRepositories
      def self.parse(http_resp)
        data = Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.disassociated_repository_names = (Parsers::RepositoryNameList.parse(map['disassociatedRepositoryNames']) unless map['disassociatedRepositoryNames'].nil?)
        data.errors = (Parsers::BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList
      def self.parse(list)
        list.map do |value|
          Parsers::BatchDisassociateApprovalRuleTemplateFromRepositoriesError.parse(value) unless value.nil?
        end
      end
    end

    class BatchDisassociateApprovalRuleTemplateFromRepositoriesError
      def self.parse(map)
        data = Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesError.new
        data.repository_name = map['repositoryName']
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        return data
      end
    end

    # Operation Parser for BatchGetCommits
    class BatchGetCommits
      def self.parse(http_resp)
        data = Types::BatchGetCommitsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.commits = (Parsers::CommitObjectsList.parse(map['commits']) unless map['commits'].nil?)
        data.errors = (Parsers::BatchGetCommitsErrorsList.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class BatchGetCommitsErrorsList
      def self.parse(list)
        list.map do |value|
          Parsers::BatchGetCommitsError.parse(value) unless value.nil?
        end
      end
    end

    class BatchGetCommitsError
      def self.parse(map)
        data = Types::BatchGetCommitsError.new
        data.commit_id = map['commitId']
        data.error_code = map['errorCode']
        data.error_message = map['errorMessage']
        return data
      end
    end

    class CommitObjectsList
      def self.parse(list)
        list.map do |value|
          Parsers::Commit.parse(value) unless value.nil?
        end
      end
    end

    class Commit
      def self.parse(map)
        data = Types::Commit.new
        data.commit_id = map['commitId']
        data.tree_id = map['treeId']
        data.parents = (Parsers::ParentList.parse(map['parents']) unless map['parents'].nil?)
        data.message = map['message']
        data.author = (Parsers::UserInfo.parse(map['author']) unless map['author'].nil?)
        data.committer = (Parsers::UserInfo.parse(map['committer']) unless map['committer'].nil?)
        data.additional_data = map['additionalData']
        return data
      end
    end

    class UserInfo
      def self.parse(map)
        data = Types::UserInfo.new
        data.name = map['name']
        data.email = map['email']
        data.date = map['date']
        return data
      end
    end

    class ParentList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for CommitIdsLimitExceededException
    class CommitIdsLimitExceededException
      def self.parse(http_resp)
        data = Types::CommitIdsLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for CommitIdsListRequiredException
    class CommitIdsListRequiredException
      def self.parse(http_resp)
        data = Types::CommitIdsListRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for BatchGetRepositories
    class BatchGetRepositories
      def self.parse(http_resp)
        data = Types::BatchGetRepositoriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.repositories = (Parsers::RepositoryMetadataList.parse(map['repositories']) unless map['repositories'].nil?)
        data.repositories_not_found = (Parsers::RepositoryNotFoundList.parse(map['repositoriesNotFound']) unless map['repositoriesNotFound'].nil?)
        data
      end
    end

    class RepositoryNotFoundList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class RepositoryMetadataList
      def self.parse(list)
        list.map do |value|
          Parsers::RepositoryMetadata.parse(value) unless value.nil?
        end
      end
    end

    class RepositoryMetadata
      def self.parse(map)
        data = Types::RepositoryMetadata.new
        data.account_id = map['accountId']
        data.repository_id = map['repositoryId']
        data.repository_name = map['repositoryName']
        data.repository_description = map['repositoryDescription']
        data.default_branch = map['defaultBranch']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.clone_url_http = map['cloneUrlHttp']
        data.clone_url_ssh = map['cloneUrlSsh']
        data.arn = map['Arn']
        return data
      end
    end

    # Operation Parser for CreateApprovalRuleTemplate
    class CreateApprovalRuleTemplate
      def self.parse(http_resp)
        data = Types::CreateApprovalRuleTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.approval_rule_template = (Parsers::ApprovalRuleTemplate.parse(map['approvalRuleTemplate']) unless map['approvalRuleTemplate'].nil?)
        data
      end
    end

    class ApprovalRuleTemplate
      def self.parse(map)
        data = Types::ApprovalRuleTemplate.new
        data.approval_rule_template_id = map['approvalRuleTemplateId']
        data.approval_rule_template_name = map['approvalRuleTemplateName']
        data.approval_rule_template_description = map['approvalRuleTemplateDescription']
        data.approval_rule_template_content = map['approvalRuleTemplateContent']
        data.rule_content_sha256 = map['ruleContentSha256']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_user = map['lastModifiedUser']
        return data
      end
    end

    # Error Parser for ApprovalRuleTemplateContentRequiredException
    class ApprovalRuleTemplateContentRequiredException
      def self.parse(http_resp)
        data = Types::ApprovalRuleTemplateContentRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ApprovalRuleTemplateNameAlreadyExistsException
    class ApprovalRuleTemplateNameAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ApprovalRuleTemplateNameAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidApprovalRuleTemplateContentException
    class InvalidApprovalRuleTemplateContentException
      def self.parse(http_resp)
        data = Types::InvalidApprovalRuleTemplateContentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidApprovalRuleTemplateDescriptionException
    class InvalidApprovalRuleTemplateDescriptionException
      def self.parse(http_resp)
        data = Types::InvalidApprovalRuleTemplateDescriptionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NumberOfRuleTemplatesExceededException
    class NumberOfRuleTemplatesExceededException
      def self.parse(http_resp)
        data = Types::NumberOfRuleTemplatesExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateBranch
    class CreateBranch
      def self.parse(http_resp)
        data = Types::CreateBranchOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for BranchNameExistsException
    class BranchNameExistsException
      def self.parse(http_resp)
        data = Types::BranchNameExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for BranchNameRequiredException
    class BranchNameRequiredException
      def self.parse(http_resp)
        data = Types::BranchNameRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for CommitIdRequiredException
    class CommitIdRequiredException
      def self.parse(http_resp)
        data = Types::CommitIdRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidBranchNameException
    class InvalidBranchNameException
      def self.parse(http_resp)
        data = Types::InvalidBranchNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidCommitIdException
    class InvalidCommitIdException
      def self.parse(http_resp)
        data = Types::InvalidCommitIdException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateCommit
    class CreateCommit
      def self.parse(http_resp)
        data = Types::CreateCommitOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.commit_id = map['commitId']
        data.tree_id = map['treeId']
        data.files_added = (Parsers::FilesMetadata.parse(map['filesAdded']) unless map['filesAdded'].nil?)
        data.files_updated = (Parsers::FilesMetadata.parse(map['filesUpdated']) unless map['filesUpdated'].nil?)
        data.files_deleted = (Parsers::FilesMetadata.parse(map['filesDeleted']) unless map['filesDeleted'].nil?)
        data
      end
    end

    class FilesMetadata
      def self.parse(list)
        list.map do |value|
          Parsers::FileMetadata.parse(value) unless value.nil?
        end
      end
    end

    class FileMetadata
      def self.parse(map)
        data = Types::FileMetadata.new
        data.absolute_path = map['absolutePath']
        data.blob_id = map['blobId']
        data.file_mode = map['fileMode']
        return data
      end
    end

    # Error Parser for BranchDoesNotExistException
    class BranchDoesNotExistException
      def self.parse(http_resp)
        data = Types::BranchDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for BranchNameIsTagNameException
    class BranchNameIsTagNameException
      def self.parse(http_resp)
        data = Types::BranchNameIsTagNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for CommitMessageLengthExceededException
    class CommitMessageLengthExceededException
      def self.parse(http_resp)
        data = Types::CommitMessageLengthExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for DirectoryNameConflictsWithFileNameException
    class DirectoryNameConflictsWithFileNameException
      def self.parse(http_resp)
        data = Types::DirectoryNameConflictsWithFileNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for FileContentAndSourceFileSpecifiedException
    class FileContentAndSourceFileSpecifiedException
      def self.parse(http_resp)
        data = Types::FileContentAndSourceFileSpecifiedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for FileContentSizeLimitExceededException
    class FileContentSizeLimitExceededException
      def self.parse(http_resp)
        data = Types::FileContentSizeLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for FileDoesNotExistException
    class FileDoesNotExistException
      def self.parse(http_resp)
        data = Types::FileDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for FileEntryRequiredException
    class FileEntryRequiredException
      def self.parse(http_resp)
        data = Types::FileEntryRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for FileModeRequiredException
    class FileModeRequiredException
      def self.parse(http_resp)
        data = Types::FileModeRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for FileNameConflictsWithDirectoryNameException
    class FileNameConflictsWithDirectoryNameException
      def self.parse(http_resp)
        data = Types::FileNameConflictsWithDirectoryNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for FilePathConflictsWithSubmodulePathException
    class FilePathConflictsWithSubmodulePathException
      def self.parse(http_resp)
        data = Types::FilePathConflictsWithSubmodulePathException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for FolderContentSizeLimitExceededException
    class FolderContentSizeLimitExceededException
      def self.parse(http_resp)
        data = Types::FolderContentSizeLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidDeletionParameterException
    class InvalidDeletionParameterException
      def self.parse(http_resp)
        data = Types::InvalidDeletionParameterException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidEmailException
    class InvalidEmailException
      def self.parse(http_resp)
        data = Types::InvalidEmailException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidFileModeException
    class InvalidFileModeException
      def self.parse(http_resp)
        data = Types::InvalidFileModeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidParentCommitIdException
    class InvalidParentCommitIdException
      def self.parse(http_resp)
        data = Types::InvalidParentCommitIdException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidPathException
    class InvalidPathException
      def self.parse(http_resp)
        data = Types::InvalidPathException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MaximumFileEntriesExceededException
    class MaximumFileEntriesExceededException
      def self.parse(http_resp)
        data = Types::MaximumFileEntriesExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NameLengthExceededException
    class NameLengthExceededException
      def self.parse(http_resp)
        data = Types::NameLengthExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NoChangeException
    class NoChangeException
      def self.parse(http_resp)
        data = Types::NoChangeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ParentCommitDoesNotExistException
    class ParentCommitDoesNotExistException
      def self.parse(http_resp)
        data = Types::ParentCommitDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ParentCommitIdOutdatedException
    class ParentCommitIdOutdatedException
      def self.parse(http_resp)
        data = Types::ParentCommitIdOutdatedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ParentCommitIdRequiredException
    class ParentCommitIdRequiredException
      def self.parse(http_resp)
        data = Types::ParentCommitIdRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for PathRequiredException
    class PathRequiredException
      def self.parse(http_resp)
        data = Types::PathRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for PutFileEntryConflictException
    class PutFileEntryConflictException
      def self.parse(http_resp)
        data = Types::PutFileEntryConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for RestrictedSourceFileException
    class RestrictedSourceFileException
      def self.parse(http_resp)
        data = Types::RestrictedSourceFileException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for SamePathRequestException
    class SamePathRequestException
      def self.parse(http_resp)
        data = Types::SamePathRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for SourceFileOrContentRequiredException
    class SourceFileOrContentRequiredException
      def self.parse(http_resp)
        data = Types::SourceFileOrContentRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreatePullRequest
    class CreatePullRequest
      def self.parse(http_resp)
        data = Types::CreatePullRequestOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pull_request = (Parsers::PullRequest.parse(map['pullRequest']) unless map['pullRequest'].nil?)
        data
      end
    end

    class PullRequest
      def self.parse(map)
        data = Types::PullRequest.new
        data.pull_request_id = map['pullRequestId']
        data.title = map['title']
        data.description = map['description']
        data.last_activity_date = Time.at(map['lastActivityDate'].to_i) if map['lastActivityDate']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.pull_request_status = map['pullRequestStatus']
        data.author_arn = map['authorArn']
        data.pull_request_targets = (Parsers::PullRequestTargetList.parse(map['pullRequestTargets']) unless map['pullRequestTargets'].nil?)
        data.client_request_token = map['clientRequestToken']
        data.revision_id = map['revisionId']
        data.approval_rules = (Parsers::ApprovalRulesList.parse(map['approvalRules']) unless map['approvalRules'].nil?)
        return data
      end
    end

    class ApprovalRulesList
      def self.parse(list)
        list.map do |value|
          Parsers::ApprovalRule.parse(value) unless value.nil?
        end
      end
    end

    class ApprovalRule
      def self.parse(map)
        data = Types::ApprovalRule.new
        data.approval_rule_id = map['approvalRuleId']
        data.approval_rule_name = map['approvalRuleName']
        data.approval_rule_content = map['approvalRuleContent']
        data.rule_content_sha256 = map['ruleContentSha256']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_user = map['lastModifiedUser']
        data.origin_approval_rule_template = (Parsers::OriginApprovalRuleTemplate.parse(map['originApprovalRuleTemplate']) unless map['originApprovalRuleTemplate'].nil?)
        return data
      end
    end

    class OriginApprovalRuleTemplate
      def self.parse(map)
        data = Types::OriginApprovalRuleTemplate.new
        data.approval_rule_template_id = map['approvalRuleTemplateId']
        data.approval_rule_template_name = map['approvalRuleTemplateName']
        return data
      end
    end

    class PullRequestTargetList
      def self.parse(list)
        list.map do |value|
          Parsers::PullRequestTarget.parse(value) unless value.nil?
        end
      end
    end

    class PullRequestTarget
      def self.parse(map)
        data = Types::PullRequestTarget.new
        data.repository_name = map['repositoryName']
        data.source_reference = map['sourceReference']
        data.destination_reference = map['destinationReference']
        data.destination_commit = map['destinationCommit']
        data.source_commit = map['sourceCommit']
        data.merge_base = map['mergeBase']
        data.merge_metadata = (Parsers::MergeMetadata.parse(map['mergeMetadata']) unless map['mergeMetadata'].nil?)
        return data
      end
    end

    class MergeMetadata
      def self.parse(map)
        data = Types::MergeMetadata.new
        data.is_merged = map['isMerged']
        data.merged_by = map['mergedBy']
        data.merge_commit_id = map['mergeCommitId']
        data.merge_option = map['mergeOption']
        return data
      end
    end

    # Error Parser for ClientRequestTokenRequiredException
    class ClientRequestTokenRequiredException
      def self.parse(http_resp)
        data = Types::ClientRequestTokenRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for IdempotencyParameterMismatchException
    class IdempotencyParameterMismatchException
      def self.parse(http_resp)
        data = Types::IdempotencyParameterMismatchException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidClientRequestTokenException
    class InvalidClientRequestTokenException
      def self.parse(http_resp)
        data = Types::InvalidClientRequestTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidDescriptionException
    class InvalidDescriptionException
      def self.parse(http_resp)
        data = Types::InvalidDescriptionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidReferenceNameException
    class InvalidReferenceNameException
      def self.parse(http_resp)
        data = Types::InvalidReferenceNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidTargetException
    class InvalidTargetException
      def self.parse(http_resp)
        data = Types::InvalidTargetException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidTargetsException
    class InvalidTargetsException
      def self.parse(http_resp)
        data = Types::InvalidTargetsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidTitleException
    class InvalidTitleException
      def self.parse(http_resp)
        data = Types::InvalidTitleException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MaximumOpenPullRequestsExceededException
    class MaximumOpenPullRequestsExceededException
      def self.parse(http_resp)
        data = Types::MaximumOpenPullRequestsExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MultipleRepositoriesInPullRequestException
    class MultipleRepositoriesInPullRequestException
      def self.parse(http_resp)
        data = Types::MultipleRepositoriesInPullRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ReferenceDoesNotExistException
    class ReferenceDoesNotExistException
      def self.parse(http_resp)
        data = Types::ReferenceDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ReferenceNameRequiredException
    class ReferenceNameRequiredException
      def self.parse(http_resp)
        data = Types::ReferenceNameRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ReferenceTypeNotSupportedException
    class ReferenceTypeNotSupportedException
      def self.parse(http_resp)
        data = Types::ReferenceTypeNotSupportedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for SourceAndDestinationAreSameException
    class SourceAndDestinationAreSameException
      def self.parse(http_resp)
        data = Types::SourceAndDestinationAreSameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TargetRequiredException
    class TargetRequiredException
      def self.parse(http_resp)
        data = Types::TargetRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TargetsRequiredException
    class TargetsRequiredException
      def self.parse(http_resp)
        data = Types::TargetsRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TitleRequiredException
    class TitleRequiredException
      def self.parse(http_resp)
        data = Types::TitleRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreatePullRequestApprovalRule
    class CreatePullRequestApprovalRule
      def self.parse(http_resp)
        data = Types::CreatePullRequestApprovalRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.approval_rule = (Parsers::ApprovalRule.parse(map['approvalRule']) unless map['approvalRule'].nil?)
        data
      end
    end

    # Error Parser for ApprovalRuleContentRequiredException
    class ApprovalRuleContentRequiredException
      def self.parse(http_resp)
        data = Types::ApprovalRuleContentRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ApprovalRuleNameAlreadyExistsException
    class ApprovalRuleNameAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ApprovalRuleNameAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ApprovalRuleNameRequiredException
    class ApprovalRuleNameRequiredException
      def self.parse(http_resp)
        data = Types::ApprovalRuleNameRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidApprovalRuleContentException
    class InvalidApprovalRuleContentException
      def self.parse(http_resp)
        data = Types::InvalidApprovalRuleContentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidApprovalRuleNameException
    class InvalidApprovalRuleNameException
      def self.parse(http_resp)
        data = Types::InvalidApprovalRuleNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidPullRequestIdException
    class InvalidPullRequestIdException
      def self.parse(http_resp)
        data = Types::InvalidPullRequestIdException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for NumberOfRulesExceededException
    class NumberOfRulesExceededException
      def self.parse(http_resp)
        data = Types::NumberOfRulesExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for PullRequestAlreadyClosedException
    class PullRequestAlreadyClosedException
      def self.parse(http_resp)
        data = Types::PullRequestAlreadyClosedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for PullRequestDoesNotExistException
    class PullRequestDoesNotExistException
      def self.parse(http_resp)
        data = Types::PullRequestDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for PullRequestIdRequiredException
    class PullRequestIdRequiredException
      def self.parse(http_resp)
        data = Types::PullRequestIdRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateRepository
    class CreateRepository
      def self.parse(http_resp)
        data = Types::CreateRepositoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.repository_metadata = (Parsers::RepositoryMetadata.parse(map['repositoryMetadata']) unless map['repositoryMetadata'].nil?)
        data
      end
    end

    # Error Parser for InvalidRepositoryDescriptionException
    class InvalidRepositoryDescriptionException
      def self.parse(http_resp)
        data = Types::InvalidRepositoryDescriptionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidSystemTagUsageException
    class InvalidSystemTagUsageException
      def self.parse(http_resp)
        data = Types::InvalidSystemTagUsageException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidTagsMapException
    class InvalidTagsMapException
      def self.parse(http_resp)
        data = Types::InvalidTagsMapException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for RepositoryLimitExceededException
    class RepositoryLimitExceededException
      def self.parse(http_resp)
        data = Types::RepositoryLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for RepositoryNameExistsException
    class RepositoryNameExistsException
      def self.parse(http_resp)
        data = Types::RepositoryNameExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TagPolicyException
    class TagPolicyException
      def self.parse(http_resp)
        data = Types::TagPolicyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for CreateUnreferencedMergeCommit
    class CreateUnreferencedMergeCommit
      def self.parse(http_resp)
        data = Types::CreateUnreferencedMergeCommitOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.commit_id = map['commitId']
        data.tree_id = map['treeId']
        data
      end
    end

    # Error Parser for ConcurrentReferenceUpdateException
    class ConcurrentReferenceUpdateException
      def self.parse(http_resp)
        data = Types::ConcurrentReferenceUpdateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidConflictResolutionException
    class InvalidConflictResolutionException
      def self.parse(http_resp)
        data = Types::InvalidConflictResolutionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidReplacementContentException
    class InvalidReplacementContentException
      def self.parse(http_resp)
        data = Types::InvalidReplacementContentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidReplacementTypeException
    class InvalidReplacementTypeException
      def self.parse(http_resp)
        data = Types::InvalidReplacementTypeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ManualMergeRequiredException
    class ManualMergeRequiredException
      def self.parse(http_resp)
        data = Types::ManualMergeRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MaximumConflictResolutionEntriesExceededException
    class MaximumConflictResolutionEntriesExceededException
      def self.parse(http_resp)
        data = Types::MaximumConflictResolutionEntriesExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MultipleConflictResolutionEntriesException
    class MultipleConflictResolutionEntriesException
      def self.parse(http_resp)
        data = Types::MultipleConflictResolutionEntriesException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ReplacementContentRequiredException
    class ReplacementContentRequiredException
      def self.parse(http_resp)
        data = Types::ReplacementContentRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ReplacementTypeRequiredException
    class ReplacementTypeRequiredException
      def self.parse(http_resp)
        data = Types::ReplacementTypeRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteApprovalRuleTemplate
    class DeleteApprovalRuleTemplate
      def self.parse(http_resp)
        data = Types::DeleteApprovalRuleTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.approval_rule_template_id = map['approvalRuleTemplateId']
        data
      end
    end

    # Error Parser for ApprovalRuleTemplateInUseException
    class ApprovalRuleTemplateInUseException
      def self.parse(http_resp)
        data = Types::ApprovalRuleTemplateInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteBranch
    class DeleteBranch
      def self.parse(http_resp)
        data = Types::DeleteBranchOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.deleted_branch = (Parsers::BranchInfo.parse(map['deletedBranch']) unless map['deletedBranch'].nil?)
        data
      end
    end

    class BranchInfo
      def self.parse(map)
        data = Types::BranchInfo.new
        data.branch_name = map['branchName']
        data.commit_id = map['commitId']
        return data
      end
    end

    # Error Parser for DefaultBranchCannotBeDeletedException
    class DefaultBranchCannotBeDeletedException
      def self.parse(http_resp)
        data = Types::DefaultBranchCannotBeDeletedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteCommentContent
    class DeleteCommentContent
      def self.parse(http_resp)
        data = Types::DeleteCommentContentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.comment = (Parsers::Comment.parse(map['comment']) unless map['comment'].nil?)
        data
      end
    end

    class Comment
      def self.parse(map)
        data = Types::Comment.new
        data.comment_id = map['commentId']
        data.content = map['content']
        data.in_reply_to = map['inReplyTo']
        data.creation_date = Time.at(map['creationDate'].to_i) if map['creationDate']
        data.last_modified_date = Time.at(map['lastModifiedDate'].to_i) if map['lastModifiedDate']
        data.author_arn = map['authorArn']
        data.deleted = map['deleted']
        data.client_request_token = map['clientRequestToken']
        data.caller_reactions = (Parsers::CallerReactions.parse(map['callerReactions']) unless map['callerReactions'].nil?)
        data.reaction_counts = (Parsers::ReactionCountsMap.parse(map['reactionCounts']) unless map['reactionCounts'].nil?)
        return data
      end
    end

    class ReactionCountsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class CallerReactions
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for CommentDeletedException
    class CommentDeletedException
      def self.parse(http_resp)
        data = Types::CommentDeletedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for CommentDoesNotExistException
    class CommentDoesNotExistException
      def self.parse(http_resp)
        data = Types::CommentDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for CommentIdRequiredException
    class CommentIdRequiredException
      def self.parse(http_resp)
        data = Types::CommentIdRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidCommentIdException
    class InvalidCommentIdException
      def self.parse(http_resp)
        data = Types::InvalidCommentIdException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteFile
    class DeleteFile
      def self.parse(http_resp)
        data = Types::DeleteFileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.commit_id = map['commitId']
        data.blob_id = map['blobId']
        data.tree_id = map['treeId']
        data.file_path = map['filePath']
        data
      end
    end

    # Operation Parser for DeletePullRequestApprovalRule
    class DeletePullRequestApprovalRule
      def self.parse(http_resp)
        data = Types::DeletePullRequestApprovalRuleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.approval_rule_id = map['approvalRuleId']
        data
      end
    end

    # Error Parser for CannotDeleteApprovalRuleFromTemplateException
    class CannotDeleteApprovalRuleFromTemplateException
      def self.parse(http_resp)
        data = Types::CannotDeleteApprovalRuleFromTemplateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DeleteRepository
    class DeleteRepository
      def self.parse(http_resp)
        data = Types::DeleteRepositoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.repository_id = map['repositoryId']
        data
      end
    end

    # Operation Parser for DescribeMergeConflicts
    class DescribeMergeConflicts
      def self.parse(http_resp)
        data = Types::DescribeMergeConflictsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.conflict_metadata = (Parsers::ConflictMetadata.parse(map['conflictMetadata']) unless map['conflictMetadata'].nil?)
        data.merge_hunks = (Parsers::MergeHunks.parse(map['mergeHunks']) unless map['mergeHunks'].nil?)
        data.next_token = map['nextToken']
        data.destination_commit_id = map['destinationCommitId']
        data.source_commit_id = map['sourceCommitId']
        data.base_commit_id = map['baseCommitId']
        data
      end
    end

    # Operation Parser for DescribePullRequestEvents
    class DescribePullRequestEvents
      def self.parse(http_resp)
        data = Types::DescribePullRequestEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pull_request_events = (Parsers::PullRequestEventList.parse(map['pullRequestEvents']) unless map['pullRequestEvents'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class PullRequestEventList
      def self.parse(list)
        list.map do |value|
          Parsers::PullRequestEvent.parse(value) unless value.nil?
        end
      end
    end

    class PullRequestEvent
      def self.parse(map)
        data = Types::PullRequestEvent.new
        data.pull_request_id = map['pullRequestId']
        data.event_date = Time.at(map['eventDate'].to_i) if map['eventDate']
        data.pull_request_event_type = map['pullRequestEventType']
        data.actor_arn = map['actorArn']
        data.pull_request_created_event_metadata = (Parsers::PullRequestCreatedEventMetadata.parse(map['pullRequestCreatedEventMetadata']) unless map['pullRequestCreatedEventMetadata'].nil?)
        data.pull_request_status_changed_event_metadata = (Parsers::PullRequestStatusChangedEventMetadata.parse(map['pullRequestStatusChangedEventMetadata']) unless map['pullRequestStatusChangedEventMetadata'].nil?)
        data.pull_request_source_reference_updated_event_metadata = (Parsers::PullRequestSourceReferenceUpdatedEventMetadata.parse(map['pullRequestSourceReferenceUpdatedEventMetadata']) unless map['pullRequestSourceReferenceUpdatedEventMetadata'].nil?)
        data.pull_request_merged_state_changed_event_metadata = (Parsers::PullRequestMergedStateChangedEventMetadata.parse(map['pullRequestMergedStateChangedEventMetadata']) unless map['pullRequestMergedStateChangedEventMetadata'].nil?)
        data.approval_rule_event_metadata = (Parsers::ApprovalRuleEventMetadata.parse(map['approvalRuleEventMetadata']) unless map['approvalRuleEventMetadata'].nil?)
        data.approval_state_changed_event_metadata = (Parsers::ApprovalStateChangedEventMetadata.parse(map['approvalStateChangedEventMetadata']) unless map['approvalStateChangedEventMetadata'].nil?)
        data.approval_rule_overridden_event_metadata = (Parsers::ApprovalRuleOverriddenEventMetadata.parse(map['approvalRuleOverriddenEventMetadata']) unless map['approvalRuleOverriddenEventMetadata'].nil?)
        return data
      end
    end

    class ApprovalRuleOverriddenEventMetadata
      def self.parse(map)
        data = Types::ApprovalRuleOverriddenEventMetadata.new
        data.revision_id = map['revisionId']
        data.override_status = map['overrideStatus']
        return data
      end
    end

    class ApprovalStateChangedEventMetadata
      def self.parse(map)
        data = Types::ApprovalStateChangedEventMetadata.new
        data.revision_id = map['revisionId']
        data.approval_status = map['approvalStatus']
        return data
      end
    end

    class ApprovalRuleEventMetadata
      def self.parse(map)
        data = Types::ApprovalRuleEventMetadata.new
        data.approval_rule_name = map['approvalRuleName']
        data.approval_rule_id = map['approvalRuleId']
        data.approval_rule_content = map['approvalRuleContent']
        return data
      end
    end

    class PullRequestMergedStateChangedEventMetadata
      def self.parse(map)
        data = Types::PullRequestMergedStateChangedEventMetadata.new
        data.repository_name = map['repositoryName']
        data.destination_reference = map['destinationReference']
        data.merge_metadata = (Parsers::MergeMetadata.parse(map['mergeMetadata']) unless map['mergeMetadata'].nil?)
        return data
      end
    end

    class PullRequestSourceReferenceUpdatedEventMetadata
      def self.parse(map)
        data = Types::PullRequestSourceReferenceUpdatedEventMetadata.new
        data.repository_name = map['repositoryName']
        data.before_commit_id = map['beforeCommitId']
        data.after_commit_id = map['afterCommitId']
        data.merge_base = map['mergeBase']
        return data
      end
    end

    class PullRequestStatusChangedEventMetadata
      def self.parse(map)
        data = Types::PullRequestStatusChangedEventMetadata.new
        data.pull_request_status = map['pullRequestStatus']
        return data
      end
    end

    class PullRequestCreatedEventMetadata
      def self.parse(map)
        data = Types::PullRequestCreatedEventMetadata.new
        data.repository_name = map['repositoryName']
        data.source_commit_id = map['sourceCommitId']
        data.destination_commit_id = map['destinationCommitId']
        data.merge_base = map['mergeBase']
        return data
      end
    end

    # Error Parser for ActorDoesNotExistException
    class ActorDoesNotExistException
      def self.parse(http_resp)
        data = Types::ActorDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidActorArnException
    class InvalidActorArnException
      def self.parse(http_resp)
        data = Types::InvalidActorArnException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidMaxResultsException
    class InvalidMaxResultsException
      def self.parse(http_resp)
        data = Types::InvalidMaxResultsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidPullRequestEventTypeException
    class InvalidPullRequestEventTypeException
      def self.parse(http_resp)
        data = Types::InvalidPullRequestEventTypeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for DisassociateApprovalRuleTemplateFromRepository
    class DisassociateApprovalRuleTemplateFromRepository
      def self.parse(http_resp)
        data = Types::DisassociateApprovalRuleTemplateFromRepositoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for EvaluatePullRequestApprovalRules
    class EvaluatePullRequestApprovalRules
      def self.parse(http_resp)
        data = Types::EvaluatePullRequestApprovalRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.evaluation = (Parsers::Evaluation.parse(map['evaluation']) unless map['evaluation'].nil?)
        data
      end
    end

    class Evaluation
      def self.parse(map)
        data = Types::Evaluation.new
        data.approved = map['approved']
        data.overridden = map['overridden']
        data.approval_rules_satisfied = (Parsers::ApprovalRulesSatisfiedList.parse(map['approvalRulesSatisfied']) unless map['approvalRulesSatisfied'].nil?)
        data.approval_rules_not_satisfied = (Parsers::ApprovalRulesNotSatisfiedList.parse(map['approvalRulesNotSatisfied']) unless map['approvalRulesNotSatisfied'].nil?)
        return data
      end
    end

    class ApprovalRulesNotSatisfiedList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ApprovalRulesSatisfiedList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for InvalidRevisionIdException
    class InvalidRevisionIdException
      def self.parse(http_resp)
        data = Types::InvalidRevisionIdException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for RevisionIdRequiredException
    class RevisionIdRequiredException
      def self.parse(http_resp)
        data = Types::RevisionIdRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for RevisionNotCurrentException
    class RevisionNotCurrentException
      def self.parse(http_resp)
        data = Types::RevisionNotCurrentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetApprovalRuleTemplate
    class GetApprovalRuleTemplate
      def self.parse(http_resp)
        data = Types::GetApprovalRuleTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.approval_rule_template = (Parsers::ApprovalRuleTemplate.parse(map['approvalRuleTemplate']) unless map['approvalRuleTemplate'].nil?)
        data
      end
    end

    # Operation Parser for GetBlob
    class GetBlob
      def self.parse(http_resp)
        data = Types::GetBlobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.content = Base64::decode64(map['content']) unless map['content'].nil?
        data
      end
    end

    # Error Parser for BlobIdDoesNotExistException
    class BlobIdDoesNotExistException
      def self.parse(http_resp)
        data = Types::BlobIdDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for BlobIdRequiredException
    class BlobIdRequiredException
      def self.parse(http_resp)
        data = Types::BlobIdRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for FileTooLargeException
    class FileTooLargeException
      def self.parse(http_resp)
        data = Types::FileTooLargeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidBlobIdException
    class InvalidBlobIdException
      def self.parse(http_resp)
        data = Types::InvalidBlobIdException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetBranch
    class GetBranch
      def self.parse(http_resp)
        data = Types::GetBranchOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.branch = (Parsers::BranchInfo.parse(map['branch']) unless map['branch'].nil?)
        data
      end
    end

    # Operation Parser for GetComment
    class GetComment
      def self.parse(http_resp)
        data = Types::GetCommentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.comment = (Parsers::Comment.parse(map['comment']) unless map['comment'].nil?)
        data
      end
    end

    # Operation Parser for GetCommentReactions
    class GetCommentReactions
      def self.parse(http_resp)
        data = Types::GetCommentReactionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.reactions_for_comment = (Parsers::ReactionsForCommentList.parse(map['reactionsForComment']) unless map['reactionsForComment'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ReactionsForCommentList
      def self.parse(list)
        list.map do |value|
          Parsers::ReactionForComment.parse(value) unless value.nil?
        end
      end
    end

    class ReactionForComment
      def self.parse(map)
        data = Types::ReactionForComment.new
        data.reaction = (Parsers::ReactionValueFormats.parse(map['reaction']) unless map['reaction'].nil?)
        data.reaction_users = (Parsers::ReactionUsersList.parse(map['reactionUsers']) unless map['reactionUsers'].nil?)
        data.reactions_from_deleted_users_count = map['reactionsFromDeletedUsersCount']
        return data
      end
    end

    class ReactionUsersList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ReactionValueFormats
      def self.parse(map)
        data = Types::ReactionValueFormats.new
        data.emoji = map['emoji']
        data.short_code = map['shortCode']
        data.unicode = map['unicode']
        return data
      end
    end

    # Error Parser for InvalidReactionUserArnException
    class InvalidReactionUserArnException
      def self.parse(http_resp)
        data = Types::InvalidReactionUserArnException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetCommentsForComparedCommit
    class GetCommentsForComparedCommit
      def self.parse(http_resp)
        data = Types::GetCommentsForComparedCommitOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.comments_for_compared_commit_data = (Parsers::CommentsForComparedCommitData.parse(map['commentsForComparedCommitData']) unless map['commentsForComparedCommitData'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class CommentsForComparedCommitData
      def self.parse(list)
        list.map do |value|
          Parsers::CommentsForComparedCommit.parse(value) unless value.nil?
        end
      end
    end

    class CommentsForComparedCommit
      def self.parse(map)
        data = Types::CommentsForComparedCommit.new
        data.repository_name = map['repositoryName']
        data.before_commit_id = map['beforeCommitId']
        data.after_commit_id = map['afterCommitId']
        data.before_blob_id = map['beforeBlobId']
        data.after_blob_id = map['afterBlobId']
        data.location = (Parsers::Location.parse(map['location']) unless map['location'].nil?)
        data.comments = (Parsers::Comments.parse(map['comments']) unless map['comments'].nil?)
        return data
      end
    end

    class Comments
      def self.parse(list)
        list.map do |value|
          Parsers::Comment.parse(value) unless value.nil?
        end
      end
    end

    class Location
      def self.parse(map)
        data = Types::Location.new
        data.file_path = map['filePath']
        data.file_position = map['filePosition']
        data.relative_file_version = map['relativeFileVersion']
        return data
      end
    end

    # Operation Parser for GetCommentsForPullRequest
    class GetCommentsForPullRequest
      def self.parse(http_resp)
        data = Types::GetCommentsForPullRequestOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.comments_for_pull_request_data = (Parsers::CommentsForPullRequestData.parse(map['commentsForPullRequestData']) unless map['commentsForPullRequestData'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class CommentsForPullRequestData
      def self.parse(list)
        list.map do |value|
          Parsers::CommentsForPullRequest.parse(value) unless value.nil?
        end
      end
    end

    class CommentsForPullRequest
      def self.parse(map)
        data = Types::CommentsForPullRequest.new
        data.pull_request_id = map['pullRequestId']
        data.repository_name = map['repositoryName']
        data.before_commit_id = map['beforeCommitId']
        data.after_commit_id = map['afterCommitId']
        data.before_blob_id = map['beforeBlobId']
        data.after_blob_id = map['afterBlobId']
        data.location = (Parsers::Location.parse(map['location']) unless map['location'].nil?)
        data.comments = (Parsers::Comments.parse(map['comments']) unless map['comments'].nil?)
        return data
      end
    end

    # Error Parser for RepositoryNotAssociatedWithPullRequestException
    class RepositoryNotAssociatedWithPullRequestException
      def self.parse(http_resp)
        data = Types::RepositoryNotAssociatedWithPullRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetCommit
    class GetCommit
      def self.parse(http_resp)
        data = Types::GetCommitOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.commit = (Parsers::Commit.parse(map['commit']) unless map['commit'].nil?)
        data
      end
    end

    # Error Parser for CommitIdDoesNotExistException
    class CommitIdDoesNotExistException
      def self.parse(http_resp)
        data = Types::CommitIdDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetDifferences
    class GetDifferences
      def self.parse(http_resp)
        data = Types::GetDifferencesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.differences = (Parsers::DifferenceList.parse(map['differences']) unless map['differences'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DifferenceList
      def self.parse(list)
        list.map do |value|
          Parsers::Difference.parse(value) unless value.nil?
        end
      end
    end

    class Difference
      def self.parse(map)
        data = Types::Difference.new
        data.before_blob = (Parsers::BlobMetadata.parse(map['beforeBlob']) unless map['beforeBlob'].nil?)
        data.after_blob = (Parsers::BlobMetadata.parse(map['afterBlob']) unless map['afterBlob'].nil?)
        data.change_type = map['changeType']
        return data
      end
    end

    class BlobMetadata
      def self.parse(map)
        data = Types::BlobMetadata.new
        data.blob_id = map['blobId']
        data.path = map['path']
        data.mode = map['mode']
        return data
      end
    end

    # Error Parser for PathDoesNotExistException
    class PathDoesNotExistException
      def self.parse(http_resp)
        data = Types::PathDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetFile
    class GetFile
      def self.parse(http_resp)
        data = Types::GetFileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.commit_id = map['commitId']
        data.blob_id = map['blobId']
        data.file_path = map['filePath']
        data.file_mode = map['fileMode']
        data.file_size = map['fileSize']
        data.file_content = Base64::decode64(map['fileContent']) unless map['fileContent'].nil?
        data
      end
    end

    # Operation Parser for GetFolder
    class GetFolder
      def self.parse(http_resp)
        data = Types::GetFolderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.commit_id = map['commitId']
        data.folder_path = map['folderPath']
        data.tree_id = map['treeId']
        data.sub_folders = (Parsers::FolderList.parse(map['subFolders']) unless map['subFolders'].nil?)
        data.files = (Parsers::FileList.parse(map['files']) unless map['files'].nil?)
        data.symbolic_links = (Parsers::SymbolicLinkList.parse(map['symbolicLinks']) unless map['symbolicLinks'].nil?)
        data.sub_modules = (Parsers::SubModuleList.parse(map['subModules']) unless map['subModules'].nil?)
        data
      end
    end

    class SubModuleList
      def self.parse(list)
        list.map do |value|
          Parsers::SubModule.parse(value) unless value.nil?
        end
      end
    end

    class SubModule
      def self.parse(map)
        data = Types::SubModule.new
        data.commit_id = map['commitId']
        data.absolute_path = map['absolutePath']
        data.relative_path = map['relativePath']
        return data
      end
    end

    class SymbolicLinkList
      def self.parse(list)
        list.map do |value|
          Parsers::SymbolicLink.parse(value) unless value.nil?
        end
      end
    end

    class SymbolicLink
      def self.parse(map)
        data = Types::SymbolicLink.new
        data.blob_id = map['blobId']
        data.absolute_path = map['absolutePath']
        data.relative_path = map['relativePath']
        data.file_mode = map['fileMode']
        return data
      end
    end

    class FileList
      def self.parse(list)
        list.map do |value|
          Parsers::File.parse(value) unless value.nil?
        end
      end
    end

    class File
      def self.parse(map)
        data = Types::File.new
        data.blob_id = map['blobId']
        data.absolute_path = map['absolutePath']
        data.relative_path = map['relativePath']
        data.file_mode = map['fileMode']
        return data
      end
    end

    class FolderList
      def self.parse(list)
        list.map do |value|
          Parsers::Folder.parse(value) unless value.nil?
        end
      end
    end

    class Folder
      def self.parse(map)
        data = Types::Folder.new
        data.tree_id = map['treeId']
        data.absolute_path = map['absolutePath']
        data.relative_path = map['relativePath']
        return data
      end
    end

    # Error Parser for FolderDoesNotExistException
    class FolderDoesNotExistException
      def self.parse(http_resp)
        data = Types::FolderDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetMergeCommit
    class GetMergeCommit
      def self.parse(http_resp)
        data = Types::GetMergeCommitOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.source_commit_id = map['sourceCommitId']
        data.destination_commit_id = map['destinationCommitId']
        data.base_commit_id = map['baseCommitId']
        data.merged_commit_id = map['mergedCommitId']
        data
      end
    end

    # Operation Parser for GetMergeConflicts
    class GetMergeConflicts
      def self.parse(http_resp)
        data = Types::GetMergeConflictsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.mergeable = map['mergeable']
        data.destination_commit_id = map['destinationCommitId']
        data.source_commit_id = map['sourceCommitId']
        data.base_commit_id = map['baseCommitId']
        data.conflict_metadata_list = (Parsers::ConflictMetadataList.parse(map['conflictMetadataList']) unless map['conflictMetadataList'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ConflictMetadataList
      def self.parse(list)
        list.map do |value|
          Parsers::ConflictMetadata.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for InvalidDestinationCommitSpecifierException
    class InvalidDestinationCommitSpecifierException
      def self.parse(http_resp)
        data = Types::InvalidDestinationCommitSpecifierException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidSourceCommitSpecifierException
    class InvalidSourceCommitSpecifierException
      def self.parse(http_resp)
        data = Types::InvalidSourceCommitSpecifierException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for GetMergeOptions
    class GetMergeOptions
      def self.parse(http_resp)
        data = Types::GetMergeOptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.merge_options = (Parsers::MergeOptions.parse(map['mergeOptions']) unless map['mergeOptions'].nil?)
        data.source_commit_id = map['sourceCommitId']
        data.destination_commit_id = map['destinationCommitId']
        data.base_commit_id = map['baseCommitId']
        data
      end
    end

    class MergeOptions
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for GetPullRequest
    class GetPullRequest
      def self.parse(http_resp)
        data = Types::GetPullRequestOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pull_request = (Parsers::PullRequest.parse(map['pullRequest']) unless map['pullRequest'].nil?)
        data
      end
    end

    # Operation Parser for GetPullRequestApprovalStates
    class GetPullRequestApprovalStates
      def self.parse(http_resp)
        data = Types::GetPullRequestApprovalStatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.approvals = (Parsers::ApprovalList.parse(map['approvals']) unless map['approvals'].nil?)
        data
      end
    end

    class ApprovalList
      def self.parse(list)
        list.map do |value|
          Parsers::Approval.parse(value) unless value.nil?
        end
      end
    end

    class Approval
      def self.parse(map)
        data = Types::Approval.new
        data.user_arn = map['userArn']
        data.approval_state = map['approvalState']
        return data
      end
    end

    # Operation Parser for GetPullRequestOverrideState
    class GetPullRequestOverrideState
      def self.parse(http_resp)
        data = Types::GetPullRequestOverrideStateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.overridden = map['overridden']
        data.overrider = map['overrider']
        data
      end
    end

    # Operation Parser for GetRepository
    class GetRepository
      def self.parse(http_resp)
        data = Types::GetRepositoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.repository_metadata = (Parsers::RepositoryMetadata.parse(map['repositoryMetadata']) unless map['repositoryMetadata'].nil?)
        data
      end
    end

    # Operation Parser for GetRepositoryTriggers
    class GetRepositoryTriggers
      def self.parse(http_resp)
        data = Types::GetRepositoryTriggersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration_id = map['configurationId']
        data.triggers = (Parsers::RepositoryTriggersList.parse(map['triggers']) unless map['triggers'].nil?)
        data
      end
    end

    class RepositoryTriggersList
      def self.parse(list)
        list.map do |value|
          Parsers::RepositoryTrigger.parse(value) unless value.nil?
        end
      end
    end

    class RepositoryTrigger
      def self.parse(map)
        data = Types::RepositoryTrigger.new
        data.name = map['name']
        data.destination_arn = map['destinationArn']
        data.custom_data = map['customData']
        data.branches = (Parsers::BranchNameList.parse(map['branches']) unless map['branches'].nil?)
        data.events = (Parsers::RepositoryTriggerEventList.parse(map['events']) unless map['events'].nil?)
        return data
      end
    end

    class RepositoryTriggerEventList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class BranchNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListApprovalRuleTemplates
    class ListApprovalRuleTemplates
      def self.parse(http_resp)
        data = Types::ListApprovalRuleTemplatesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.approval_rule_template_names = (Parsers::ApprovalRuleTemplateNameList.parse(map['approvalRuleTemplateNames']) unless map['approvalRuleTemplateNames'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ApprovalRuleTemplateNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListAssociatedApprovalRuleTemplatesForRepository
    class ListAssociatedApprovalRuleTemplatesForRepository
      def self.parse(http_resp)
        data = Types::ListAssociatedApprovalRuleTemplatesForRepositoryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.approval_rule_template_names = (Parsers::ApprovalRuleTemplateNameList.parse(map['approvalRuleTemplateNames']) unless map['approvalRuleTemplateNames'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListBranches
    class ListBranches
      def self.parse(http_resp)
        data = Types::ListBranchesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.branches = (Parsers::BranchNameList.parse(map['branches']) unless map['branches'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListPullRequests
    class ListPullRequests
      def self.parse(http_resp)
        data = Types::ListPullRequestsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pull_request_ids = (Parsers::PullRequestIdList.parse(map['pullRequestIds']) unless map['pullRequestIds'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class PullRequestIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for AuthorDoesNotExistException
    class AuthorDoesNotExistException
      def self.parse(http_resp)
        data = Types::AuthorDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidAuthorArnException
    class InvalidAuthorArnException
      def self.parse(http_resp)
        data = Types::InvalidAuthorArnException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidPullRequestStatusException
    class InvalidPullRequestStatusException
      def self.parse(http_resp)
        data = Types::InvalidPullRequestStatusException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListRepositories
    class ListRepositories
      def self.parse(http_resp)
        data = Types::ListRepositoriesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.repositories = (Parsers::RepositoryNameIdPairList.parse(map['repositories']) unless map['repositories'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class RepositoryNameIdPairList
      def self.parse(list)
        list.map do |value|
          Parsers::RepositoryNameIdPair.parse(value) unless value.nil?
        end
      end
    end

    class RepositoryNameIdPair
      def self.parse(map)
        data = Types::RepositoryNameIdPair.new
        data.repository_name = map['repositoryName']
        data.repository_id = map['repositoryId']
        return data
      end
    end

    # Error Parser for InvalidOrderException
    class InvalidOrderException
      def self.parse(http_resp)
        data = Types::InvalidOrderException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidSortByException
    class InvalidSortByException
      def self.parse(http_resp)
        data = Types::InvalidSortByException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for ListRepositoriesForApprovalRuleTemplate
    class ListRepositoriesForApprovalRuleTemplate
      def self.parse(http_resp)
        data = Types::ListRepositoriesForApprovalRuleTemplateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.repository_names = (Parsers::RepositoryNameList.parse(map['repositoryNames']) unless map['repositoryNames'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagsMap.parse(map['tags']) unless map['tags'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class TagsMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for InvalidResourceArnException
    class InvalidResourceArnException
      def self.parse(http_resp)
        data = Types::InvalidResourceArnException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ResourceArnRequiredException
    class ResourceArnRequiredException
      def self.parse(http_resp)
        data = Types::ResourceArnRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for MergeBranchesByFastForward
    class MergeBranchesByFastForward
      def self.parse(http_resp)
        data = Types::MergeBranchesByFastForwardOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.commit_id = map['commitId']
        data.tree_id = map['treeId']
        data
      end
    end

    # Error Parser for InvalidTargetBranchException
    class InvalidTargetBranchException
      def self.parse(http_resp)
        data = Types::InvalidTargetBranchException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for MergeBranchesBySquash
    class MergeBranchesBySquash
      def self.parse(http_resp)
        data = Types::MergeBranchesBySquashOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.commit_id = map['commitId']
        data.tree_id = map['treeId']
        data
      end
    end

    # Operation Parser for MergeBranchesByThreeWay
    class MergeBranchesByThreeWay
      def self.parse(http_resp)
        data = Types::MergeBranchesByThreeWayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.commit_id = map['commitId']
        data.tree_id = map['treeId']
        data
      end
    end

    # Operation Parser for MergePullRequestByFastForward
    class MergePullRequestByFastForward
      def self.parse(http_resp)
        data = Types::MergePullRequestByFastForwardOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pull_request = (Parsers::PullRequest.parse(map['pullRequest']) unless map['pullRequest'].nil?)
        data
      end
    end

    # Error Parser for PullRequestApprovalRulesNotSatisfiedException
    class PullRequestApprovalRulesNotSatisfiedException
      def self.parse(http_resp)
        data = Types::PullRequestApprovalRulesNotSatisfiedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TipOfSourceReferenceIsDifferentException
    class TipOfSourceReferenceIsDifferentException
      def self.parse(http_resp)
        data = Types::TipOfSourceReferenceIsDifferentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for MergePullRequestBySquash
    class MergePullRequestBySquash
      def self.parse(http_resp)
        data = Types::MergePullRequestBySquashOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pull_request = (Parsers::PullRequest.parse(map['pullRequest']) unless map['pullRequest'].nil?)
        data
      end
    end

    # Operation Parser for MergePullRequestByThreeWay
    class MergePullRequestByThreeWay
      def self.parse(http_resp)
        data = Types::MergePullRequestByThreeWayOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pull_request = (Parsers::PullRequest.parse(map['pullRequest']) unless map['pullRequest'].nil?)
        data
      end
    end

    # Operation Parser for OverridePullRequestApprovalRules
    class OverridePullRequestApprovalRules
      def self.parse(http_resp)
        data = Types::OverridePullRequestApprovalRulesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidOverrideStatusException
    class InvalidOverrideStatusException
      def self.parse(http_resp)
        data = Types::InvalidOverrideStatusException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for OverrideAlreadySetException
    class OverrideAlreadySetException
      def self.parse(http_resp)
        data = Types::OverrideAlreadySetException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for OverrideStatusRequiredException
    class OverrideStatusRequiredException
      def self.parse(http_resp)
        data = Types::OverrideStatusRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PostCommentForComparedCommit
    class PostCommentForComparedCommit
      def self.parse(http_resp)
        data = Types::PostCommentForComparedCommitOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.repository_name = map['repositoryName']
        data.before_commit_id = map['beforeCommitId']
        data.after_commit_id = map['afterCommitId']
        data.before_blob_id = map['beforeBlobId']
        data.after_blob_id = map['afterBlobId']
        data.location = (Parsers::Location.parse(map['location']) unless map['location'].nil?)
        data.comment = (Parsers::Comment.parse(map['comment']) unless map['comment'].nil?)
        data
      end
    end

    # Error Parser for BeforeCommitIdAndAfterCommitIdAreSameException
    class BeforeCommitIdAndAfterCommitIdAreSameException
      def self.parse(http_resp)
        data = Types::BeforeCommitIdAndAfterCommitIdAreSameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for CommentContentRequiredException
    class CommentContentRequiredException
      def self.parse(http_resp)
        data = Types::CommentContentRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for CommentContentSizeLimitExceededException
    class CommentContentSizeLimitExceededException
      def self.parse(http_resp)
        data = Types::CommentContentSizeLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidFileLocationException
    class InvalidFileLocationException
      def self.parse(http_resp)
        data = Types::InvalidFileLocationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidFilePositionException
    class InvalidFilePositionException
      def self.parse(http_resp)
        data = Types::InvalidFilePositionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidRelativeFileVersionEnumException
    class InvalidRelativeFileVersionEnumException
      def self.parse(http_resp)
        data = Types::InvalidRelativeFileVersionEnumException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PostCommentForPullRequest
    class PostCommentForPullRequest
      def self.parse(http_resp)
        data = Types::PostCommentForPullRequestOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.repository_name = map['repositoryName']
        data.pull_request_id = map['pullRequestId']
        data.before_commit_id = map['beforeCommitId']
        data.after_commit_id = map['afterCommitId']
        data.before_blob_id = map['beforeBlobId']
        data.after_blob_id = map['afterBlobId']
        data.location = (Parsers::Location.parse(map['location']) unless map['location'].nil?)
        data.comment = (Parsers::Comment.parse(map['comment']) unless map['comment'].nil?)
        data
      end
    end

    # Operation Parser for PostCommentReply
    class PostCommentReply
      def self.parse(http_resp)
        data = Types::PostCommentReplyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.comment = (Parsers::Comment.parse(map['comment']) unless map['comment'].nil?)
        data
      end
    end

    # Operation Parser for PutCommentReaction
    class PutCommentReaction
      def self.parse(http_resp)
        data = Types::PutCommentReactionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidReactionValueException
    class InvalidReactionValueException
      def self.parse(http_resp)
        data = Types::InvalidReactionValueException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ReactionLimitExceededException
    class ReactionLimitExceededException
      def self.parse(http_resp)
        data = Types::ReactionLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for ReactionValueRequiredException
    class ReactionValueRequiredException
      def self.parse(http_resp)
        data = Types::ReactionValueRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutFile
    class PutFile
      def self.parse(http_resp)
        data = Types::PutFileOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.commit_id = map['commitId']
        data.blob_id = map['blobId']
        data.tree_id = map['treeId']
        data
      end
    end

    # Error Parser for FileContentRequiredException
    class FileContentRequiredException
      def self.parse(http_resp)
        data = Types::FileContentRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for SameFileContentException
    class SameFileContentException
      def self.parse(http_resp)
        data = Types::SameFileContentException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for PutRepositoryTriggers
    class PutRepositoryTriggers
      def self.parse(http_resp)
        data = Types::PutRepositoryTriggersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration_id = map['configurationId']
        data
      end
    end

    # Error Parser for InvalidRepositoryTriggerBranchNameException
    class InvalidRepositoryTriggerBranchNameException
      def self.parse(http_resp)
        data = Types::InvalidRepositoryTriggerBranchNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidRepositoryTriggerCustomDataException
    class InvalidRepositoryTriggerCustomDataException
      def self.parse(http_resp)
        data = Types::InvalidRepositoryTriggerCustomDataException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidRepositoryTriggerDestinationArnException
    class InvalidRepositoryTriggerDestinationArnException
      def self.parse(http_resp)
        data = Types::InvalidRepositoryTriggerDestinationArnException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidRepositoryTriggerEventsException
    class InvalidRepositoryTriggerEventsException
      def self.parse(http_resp)
        data = Types::InvalidRepositoryTriggerEventsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidRepositoryTriggerNameException
    class InvalidRepositoryTriggerNameException
      def self.parse(http_resp)
        data = Types::InvalidRepositoryTriggerNameException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidRepositoryTriggerRegionException
    class InvalidRepositoryTriggerRegionException
      def self.parse(http_resp)
        data = Types::InvalidRepositoryTriggerRegionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MaximumBranchesExceededException
    class MaximumBranchesExceededException
      def self.parse(http_resp)
        data = Types::MaximumBranchesExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MaximumRepositoryTriggersExceededException
    class MaximumRepositoryTriggersExceededException
      def self.parse(http_resp)
        data = Types::MaximumRepositoryTriggersExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for RepositoryTriggerBranchNameListRequiredException
    class RepositoryTriggerBranchNameListRequiredException
      def self.parse(http_resp)
        data = Types::RepositoryTriggerBranchNameListRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for RepositoryTriggerDestinationArnRequiredException
    class RepositoryTriggerDestinationArnRequiredException
      def self.parse(http_resp)
        data = Types::RepositoryTriggerDestinationArnRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for RepositoryTriggerEventsListRequiredException
    class RepositoryTriggerEventsListRequiredException
      def self.parse(http_resp)
        data = Types::RepositoryTriggerEventsListRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for RepositoryTriggerNameRequiredException
    class RepositoryTriggerNameRequiredException
      def self.parse(http_resp)
        data = Types::RepositoryTriggerNameRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for RepositoryTriggersListRequiredException
    class RepositoryTriggersListRequiredException
      def self.parse(http_resp)
        data = Types::RepositoryTriggersListRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for TagsMapRequiredException
    class TagsMapRequiredException
      def self.parse(http_resp)
        data = Types::TagsMapRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for TestRepositoryTriggers
    class TestRepositoryTriggers
      def self.parse(http_resp)
        data = Types::TestRepositoryTriggersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.successful_executions = (Parsers::RepositoryTriggerNameList.parse(map['successfulExecutions']) unless map['successfulExecutions'].nil?)
        data.failed_executions = (Parsers::RepositoryTriggerExecutionFailureList.parse(map['failedExecutions']) unless map['failedExecutions'].nil?)
        data
      end
    end

    class RepositoryTriggerExecutionFailureList
      def self.parse(list)
        list.map do |value|
          Parsers::RepositoryTriggerExecutionFailure.parse(value) unless value.nil?
        end
      end
    end

    class RepositoryTriggerExecutionFailure
      def self.parse(map)
        data = Types::RepositoryTriggerExecutionFailure.new
        data.trigger = map['trigger']
        data.failure_message = map['failureMessage']
        return data
      end
    end

    class RepositoryTriggerNameList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for InvalidTagKeysListException
    class InvalidTagKeysListException
      def self.parse(http_resp)
        data = Types::InvalidTagKeysListException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for TagKeysListRequiredException
    class TagKeysListRequiredException
      def self.parse(http_resp)
        data = Types::TagKeysListRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UpdateApprovalRuleTemplateContent
    class UpdateApprovalRuleTemplateContent
      def self.parse(http_resp)
        data = Types::UpdateApprovalRuleTemplateContentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.approval_rule_template = (Parsers::ApprovalRuleTemplate.parse(map['approvalRuleTemplate']) unless map['approvalRuleTemplate'].nil?)
        data
      end
    end

    # Error Parser for InvalidRuleContentSha256Exception
    class InvalidRuleContentSha256Exception
      def self.parse(http_resp)
        data = Types::InvalidRuleContentSha256Exception.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UpdateApprovalRuleTemplateDescription
    class UpdateApprovalRuleTemplateDescription
      def self.parse(http_resp)
        data = Types::UpdateApprovalRuleTemplateDescriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.approval_rule_template = (Parsers::ApprovalRuleTemplate.parse(map['approvalRuleTemplate']) unless map['approvalRuleTemplate'].nil?)
        data
      end
    end

    # Operation Parser for UpdateApprovalRuleTemplateName
    class UpdateApprovalRuleTemplateName
      def self.parse(http_resp)
        data = Types::UpdateApprovalRuleTemplateNameOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.approval_rule_template = (Parsers::ApprovalRuleTemplate.parse(map['approvalRuleTemplate']) unless map['approvalRuleTemplate'].nil?)
        data
      end
    end

    # Operation Parser for UpdateComment
    class UpdateComment
      def self.parse(http_resp)
        data = Types::UpdateCommentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.comment = (Parsers::Comment.parse(map['comment']) unless map['comment'].nil?)
        data
      end
    end

    # Error Parser for CommentNotCreatedByCallerException
    class CommentNotCreatedByCallerException
      def self.parse(http_resp)
        data = Types::CommentNotCreatedByCallerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UpdateDefaultBranch
    class UpdateDefaultBranch
      def self.parse(http_resp)
        data = Types::UpdateDefaultBranchOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdatePullRequestApprovalRuleContent
    class UpdatePullRequestApprovalRuleContent
      def self.parse(http_resp)
        data = Types::UpdatePullRequestApprovalRuleContentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.approval_rule = (Parsers::ApprovalRule.parse(map['approvalRule']) unless map['approvalRule'].nil?)
        data
      end
    end

    # Error Parser for ApprovalRuleDoesNotExistException
    class ApprovalRuleDoesNotExistException
      def self.parse(http_resp)
        data = Types::ApprovalRuleDoesNotExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for CannotModifyApprovalRuleFromTemplateException
    class CannotModifyApprovalRuleFromTemplateException
      def self.parse(http_resp)
        data = Types::CannotModifyApprovalRuleFromTemplateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UpdatePullRequestApprovalState
    class UpdatePullRequestApprovalState
      def self.parse(http_resp)
        data = Types::UpdatePullRequestApprovalStateOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ApprovalStateRequiredException
    class ApprovalStateRequiredException
      def self.parse(http_resp)
        data = Types::ApprovalStateRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for InvalidApprovalStateException
    class InvalidApprovalStateException
      def self.parse(http_resp)
        data = Types::InvalidApprovalStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for MaximumNumberOfApprovalsExceededException
    class MaximumNumberOfApprovalsExceededException
      def self.parse(http_resp)
        data = Types::MaximumNumberOfApprovalsExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for PullRequestCannotBeApprovedByAuthorException
    class PullRequestCannotBeApprovedByAuthorException
      def self.parse(http_resp)
        data = Types::PullRequestCannotBeApprovedByAuthorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UpdatePullRequestDescription
    class UpdatePullRequestDescription
      def self.parse(http_resp)
        data = Types::UpdatePullRequestDescriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pull_request = (Parsers::PullRequest.parse(map['pullRequest']) unless map['pullRequest'].nil?)
        data
      end
    end

    # Operation Parser for UpdatePullRequestStatus
    class UpdatePullRequestStatus
      def self.parse(http_resp)
        data = Types::UpdatePullRequestStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pull_request = (Parsers::PullRequest.parse(map['pullRequest']) unless map['pullRequest'].nil?)
        data
      end
    end

    # Error Parser for InvalidPullRequestStatusUpdateException
    class InvalidPullRequestStatusUpdateException
      def self.parse(http_resp)
        data = Types::InvalidPullRequestStatusUpdateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Error Parser for PullRequestStatusRequiredException
    class PullRequestStatusRequiredException
      def self.parse(http_resp)
        data = Types::PullRequestStatusRequiredException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['message']
        data
      end
    end

    # Operation Parser for UpdatePullRequestTitle
    class UpdatePullRequestTitle
      def self.parse(http_resp)
        data = Types::UpdatePullRequestTitleOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pull_request = (Parsers::PullRequest.parse(map['pullRequest']) unless map['pullRequest'].nil?)
        data
      end
    end

    # Operation Parser for UpdateRepositoryDescription
    class UpdateRepositoryDescription
      def self.parse(http_resp)
        data = Types::UpdateRepositoryDescriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateRepositoryName
    class UpdateRepositoryName
      def self.parse(http_resp)
        data = Types::UpdateRepositoryNameOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
