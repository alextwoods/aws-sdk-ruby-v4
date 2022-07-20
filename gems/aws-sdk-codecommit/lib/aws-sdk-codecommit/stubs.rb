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
  module Stubs

    # Operation Stubber for AssociateApprovalRuleTemplateWithRepository
    class AssociateApprovalRuleTemplateWithRepository
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for BatchAssociateApprovalRuleTemplateWithRepositories
    class BatchAssociateApprovalRuleTemplateWithRepositories
      def self.default(visited=[])
        {
          associated_repository_names: RepositoryNameList.default(visited),
          errors: BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['associatedRepositoryNames'] = RepositoryNameList.stub(stub[:associated_repository_names]) unless stub[:associated_repository_names].nil?
        data['errors'] = BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList
    class BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList
      def self.default(visited=[])
        return nil if visited.include?('BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList')
        visited = visited + ['BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList']
        [
          BatchAssociateApprovalRuleTemplateWithRepositoriesError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchAssociateApprovalRuleTemplateWithRepositoriesError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchAssociateApprovalRuleTemplateWithRepositoriesError
    class BatchAssociateApprovalRuleTemplateWithRepositoriesError
      def self.default(visited=[])
        return nil if visited.include?('BatchAssociateApprovalRuleTemplateWithRepositoriesError')
        visited = visited + ['BatchAssociateApprovalRuleTemplateWithRepositoriesError']
        {
          repository_name: 'repository_name',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchAssociateApprovalRuleTemplateWithRepositoriesError.new
        data = {}
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # List Stubber for RepositoryNameList
    class RepositoryNameList
      def self.default(visited=[])
        return nil if visited.include?('RepositoryNameList')
        visited = visited + ['RepositoryNameList']
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

    # Operation Stubber for BatchDescribeMergeConflicts
    class BatchDescribeMergeConflicts
      def self.default(visited=[])
        {
          conflicts: Conflicts.default(visited),
          next_token: 'next_token',
          errors: BatchDescribeMergeConflictsErrors.default(visited),
          destination_commit_id: 'destination_commit_id',
          source_commit_id: 'source_commit_id',
          base_commit_id: 'base_commit_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['conflicts'] = Conflicts.stub(stub[:conflicts]) unless stub[:conflicts].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['errors'] = BatchDescribeMergeConflictsErrors.stub(stub[:errors]) unless stub[:errors].nil?
        data['destinationCommitId'] = stub[:destination_commit_id] unless stub[:destination_commit_id].nil?
        data['sourceCommitId'] = stub[:source_commit_id] unless stub[:source_commit_id].nil?
        data['baseCommitId'] = stub[:base_commit_id] unless stub[:base_commit_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BatchDescribeMergeConflictsErrors
    class BatchDescribeMergeConflictsErrors
      def self.default(visited=[])
        return nil if visited.include?('BatchDescribeMergeConflictsErrors')
        visited = visited + ['BatchDescribeMergeConflictsErrors']
        [
          BatchDescribeMergeConflictsError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchDescribeMergeConflictsError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchDescribeMergeConflictsError
    class BatchDescribeMergeConflictsError
      def self.default(visited=[])
        return nil if visited.include?('BatchDescribeMergeConflictsError')
        visited = visited + ['BatchDescribeMergeConflictsError']
        {
          file_path: 'file_path',
          exception_name: 'exception_name',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDescribeMergeConflictsError.new
        data = {}
        data['filePath'] = stub[:file_path] unless stub[:file_path].nil?
        data['exceptionName'] = stub[:exception_name] unless stub[:exception_name].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # List Stubber for Conflicts
    class Conflicts
      def self.default(visited=[])
        return nil if visited.include?('Conflicts')
        visited = visited + ['Conflicts']
        [
          Conflict.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Conflict.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Conflict
    class Conflict
      def self.default(visited=[])
        return nil if visited.include?('Conflict')
        visited = visited + ['Conflict']
        {
          conflict_metadata: ConflictMetadata.default(visited),
          merge_hunks: MergeHunks.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Conflict.new
        data = {}
        data['conflictMetadata'] = ConflictMetadata.stub(stub[:conflict_metadata]) unless stub[:conflict_metadata].nil?
        data['mergeHunks'] = MergeHunks.stub(stub[:merge_hunks]) unless stub[:merge_hunks].nil?
        data
      end
    end

    # List Stubber for MergeHunks
    class MergeHunks
      def self.default(visited=[])
        return nil if visited.include?('MergeHunks')
        visited = visited + ['MergeHunks']
        [
          MergeHunk.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MergeHunk.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MergeHunk
    class MergeHunk
      def self.default(visited=[])
        return nil if visited.include?('MergeHunk')
        visited = visited + ['MergeHunk']
        {
          is_conflict: false,
          source: MergeHunkDetail.default(visited),
          destination: MergeHunkDetail.default(visited),
          base: MergeHunkDetail.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::MergeHunk.new
        data = {}
        data['isConflict'] = stub[:is_conflict] unless stub[:is_conflict].nil?
        data['source'] = MergeHunkDetail.stub(stub[:source]) unless stub[:source].nil?
        data['destination'] = MergeHunkDetail.stub(stub[:destination]) unless stub[:destination].nil?
        data['base'] = MergeHunkDetail.stub(stub[:base]) unless stub[:base].nil?
        data
      end
    end

    # Structure Stubber for MergeHunkDetail
    class MergeHunkDetail
      def self.default(visited=[])
        return nil if visited.include?('MergeHunkDetail')
        visited = visited + ['MergeHunkDetail']
        {
          start_line: 1,
          end_line: 1,
          hunk_content: 'hunk_content',
        }
      end

      def self.stub(stub)
        stub ||= Types::MergeHunkDetail.new
        data = {}
        data['startLine'] = stub[:start_line] unless stub[:start_line].nil?
        data['endLine'] = stub[:end_line] unless stub[:end_line].nil?
        data['hunkContent'] = stub[:hunk_content] unless stub[:hunk_content].nil?
        data
      end
    end

    # Structure Stubber for ConflictMetadata
    class ConflictMetadata
      def self.default(visited=[])
        return nil if visited.include?('ConflictMetadata')
        visited = visited + ['ConflictMetadata']
        {
          file_path: 'file_path',
          file_sizes: FileSizes.default(visited),
          file_modes: FileModes.default(visited),
          object_types: ObjectTypes.default(visited),
          number_of_conflicts: 1,
          is_binary_file: IsBinaryFile.default(visited),
          content_conflict: false,
          file_mode_conflict: false,
          object_type_conflict: false,
          merge_operations: MergeOperations.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConflictMetadata.new
        data = {}
        data['filePath'] = stub[:file_path] unless stub[:file_path].nil?
        data['fileSizes'] = FileSizes.stub(stub[:file_sizes]) unless stub[:file_sizes].nil?
        data['fileModes'] = FileModes.stub(stub[:file_modes]) unless stub[:file_modes].nil?
        data['objectTypes'] = ObjectTypes.stub(stub[:object_types]) unless stub[:object_types].nil?
        data['numberOfConflicts'] = stub[:number_of_conflicts] unless stub[:number_of_conflicts].nil?
        data['isBinaryFile'] = IsBinaryFile.stub(stub[:is_binary_file]) unless stub[:is_binary_file].nil?
        data['contentConflict'] = stub[:content_conflict] unless stub[:content_conflict].nil?
        data['fileModeConflict'] = stub[:file_mode_conflict] unless stub[:file_mode_conflict].nil?
        data['objectTypeConflict'] = stub[:object_type_conflict] unless stub[:object_type_conflict].nil?
        data['mergeOperations'] = MergeOperations.stub(stub[:merge_operations]) unless stub[:merge_operations].nil?
        data
      end
    end

    # Structure Stubber for MergeOperations
    class MergeOperations
      def self.default(visited=[])
        return nil if visited.include?('MergeOperations')
        visited = visited + ['MergeOperations']
        {
          source: 'source',
          destination: 'destination',
        }
      end

      def self.stub(stub)
        stub ||= Types::MergeOperations.new
        data = {}
        data['source'] = stub[:source] unless stub[:source].nil?
        data['destination'] = stub[:destination] unless stub[:destination].nil?
        data
      end
    end

    # Structure Stubber for IsBinaryFile
    class IsBinaryFile
      def self.default(visited=[])
        return nil if visited.include?('IsBinaryFile')
        visited = visited + ['IsBinaryFile']
        {
          source: false,
          destination: false,
          base: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::IsBinaryFile.new
        data = {}
        data['source'] = stub[:source] unless stub[:source].nil?
        data['destination'] = stub[:destination] unless stub[:destination].nil?
        data['base'] = stub[:base] unless stub[:base].nil?
        data
      end
    end

    # Structure Stubber for ObjectTypes
    class ObjectTypes
      def self.default(visited=[])
        return nil if visited.include?('ObjectTypes')
        visited = visited + ['ObjectTypes']
        {
          source: 'source',
          destination: 'destination',
          base: 'base',
        }
      end

      def self.stub(stub)
        stub ||= Types::ObjectTypes.new
        data = {}
        data['source'] = stub[:source] unless stub[:source].nil?
        data['destination'] = stub[:destination] unless stub[:destination].nil?
        data['base'] = stub[:base] unless stub[:base].nil?
        data
      end
    end

    # Structure Stubber for FileModes
    class FileModes
      def self.default(visited=[])
        return nil if visited.include?('FileModes')
        visited = visited + ['FileModes']
        {
          source: 'source',
          destination: 'destination',
          base: 'base',
        }
      end

      def self.stub(stub)
        stub ||= Types::FileModes.new
        data = {}
        data['source'] = stub[:source] unless stub[:source].nil?
        data['destination'] = stub[:destination] unless stub[:destination].nil?
        data['base'] = stub[:base] unless stub[:base].nil?
        data
      end
    end

    # Structure Stubber for FileSizes
    class FileSizes
      def self.default(visited=[])
        return nil if visited.include?('FileSizes')
        visited = visited + ['FileSizes']
        {
          source: 1,
          destination: 1,
          base: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FileSizes.new
        data = {}
        data['source'] = stub[:source] unless stub[:source].nil?
        data['destination'] = stub[:destination] unless stub[:destination].nil?
        data['base'] = stub[:base] unless stub[:base].nil?
        data
      end
    end

    # Operation Stubber for BatchDisassociateApprovalRuleTemplateFromRepositories
    class BatchDisassociateApprovalRuleTemplateFromRepositories
      def self.default(visited=[])
        {
          disassociated_repository_names: RepositoryNameList.default(visited),
          errors: BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['disassociatedRepositoryNames'] = RepositoryNameList.stub(stub[:disassociated_repository_names]) unless stub[:disassociated_repository_names].nil?
        data['errors'] = BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList
    class BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList
      def self.default(visited=[])
        return nil if visited.include?('BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList')
        visited = visited + ['BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList']
        [
          BatchDisassociateApprovalRuleTemplateFromRepositoriesError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchDisassociateApprovalRuleTemplateFromRepositoriesError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchDisassociateApprovalRuleTemplateFromRepositoriesError
    class BatchDisassociateApprovalRuleTemplateFromRepositoriesError
      def self.default(visited=[])
        return nil if visited.include?('BatchDisassociateApprovalRuleTemplateFromRepositoriesError')
        visited = visited + ['BatchDisassociateApprovalRuleTemplateFromRepositoriesError']
        {
          repository_name: 'repository_name',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesError.new
        data = {}
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for BatchGetCommits
    class BatchGetCommits
      def self.default(visited=[])
        {
          commits: CommitObjectsList.default(visited),
          errors: BatchGetCommitsErrorsList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['commits'] = CommitObjectsList.stub(stub[:commits]) unless stub[:commits].nil?
        data['errors'] = BatchGetCommitsErrorsList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BatchGetCommitsErrorsList
    class BatchGetCommitsErrorsList
      def self.default(visited=[])
        return nil if visited.include?('BatchGetCommitsErrorsList')
        visited = visited + ['BatchGetCommitsErrorsList']
        [
          BatchGetCommitsError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchGetCommitsError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchGetCommitsError
    class BatchGetCommitsError
      def self.default(visited=[])
        return nil if visited.include?('BatchGetCommitsError')
        visited = visited + ['BatchGetCommitsError']
        {
          commit_id: 'commit_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetCommitsError.new
        data = {}
        data['commitId'] = stub[:commit_id] unless stub[:commit_id].nil?
        data['errorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['errorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # List Stubber for CommitObjectsList
    class CommitObjectsList
      def self.default(visited=[])
        return nil if visited.include?('CommitObjectsList')
        visited = visited + ['CommitObjectsList']
        [
          Commit.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Commit.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Commit
    class Commit
      def self.default(visited=[])
        return nil if visited.include?('Commit')
        visited = visited + ['Commit']
        {
          commit_id: 'commit_id',
          tree_id: 'tree_id',
          parents: ParentList.default(visited),
          message: 'message',
          author: UserInfo.default(visited),
          committer: UserInfo.default(visited),
          additional_data: 'additional_data',
        }
      end

      def self.stub(stub)
        stub ||= Types::Commit.new
        data = {}
        data['commitId'] = stub[:commit_id] unless stub[:commit_id].nil?
        data['treeId'] = stub[:tree_id] unless stub[:tree_id].nil?
        data['parents'] = ParentList.stub(stub[:parents]) unless stub[:parents].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data['author'] = UserInfo.stub(stub[:author]) unless stub[:author].nil?
        data['committer'] = UserInfo.stub(stub[:committer]) unless stub[:committer].nil?
        data['additionalData'] = stub[:additional_data] unless stub[:additional_data].nil?
        data
      end
    end

    # Structure Stubber for UserInfo
    class UserInfo
      def self.default(visited=[])
        return nil if visited.include?('UserInfo')
        visited = visited + ['UserInfo']
        {
          name: 'name',
          email: 'email',
          date: 'date',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserInfo.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['email'] = stub[:email] unless stub[:email].nil?
        data['date'] = stub[:date] unless stub[:date].nil?
        data
      end
    end

    # List Stubber for ParentList
    class ParentList
      def self.default(visited=[])
        return nil if visited.include?('ParentList')
        visited = visited + ['ParentList']
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

    # Operation Stubber for BatchGetRepositories
    class BatchGetRepositories
      def self.default(visited=[])
        {
          repositories: RepositoryMetadataList.default(visited),
          repositories_not_found: RepositoryNotFoundList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['repositories'] = RepositoryMetadataList.stub(stub[:repositories]) unless stub[:repositories].nil?
        data['repositoriesNotFound'] = RepositoryNotFoundList.stub(stub[:repositories_not_found]) unless stub[:repositories_not_found].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RepositoryNotFoundList
    class RepositoryNotFoundList
      def self.default(visited=[])
        return nil if visited.include?('RepositoryNotFoundList')
        visited = visited + ['RepositoryNotFoundList']
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

    # List Stubber for RepositoryMetadataList
    class RepositoryMetadataList
      def self.default(visited=[])
        return nil if visited.include?('RepositoryMetadataList')
        visited = visited + ['RepositoryMetadataList']
        [
          RepositoryMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RepositoryMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RepositoryMetadata
    class RepositoryMetadata
      def self.default(visited=[])
        return nil if visited.include?('RepositoryMetadata')
        visited = visited + ['RepositoryMetadata']
        {
          account_id: 'account_id',
          repository_id: 'repository_id',
          repository_name: 'repository_name',
          repository_description: 'repository_description',
          default_branch: 'default_branch',
          last_modified_date: Time.now,
          creation_date: Time.now,
          clone_url_http: 'clone_url_http',
          clone_url_ssh: 'clone_url_ssh',
          arn: 'arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositoryMetadata.new
        data = {}
        data['accountId'] = stub[:account_id] unless stub[:account_id].nil?
        data['repositoryId'] = stub[:repository_id] unless stub[:repository_id].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['repositoryDescription'] = stub[:repository_description] unless stub[:repository_description].nil?
        data['defaultBranch'] = stub[:default_branch] unless stub[:default_branch].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['cloneUrlHttp'] = stub[:clone_url_http] unless stub[:clone_url_http].nil?
        data['cloneUrlSsh'] = stub[:clone_url_ssh] unless stub[:clone_url_ssh].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data
      end
    end

    # Operation Stubber for CreateApprovalRuleTemplate
    class CreateApprovalRuleTemplate
      def self.default(visited=[])
        {
          approval_rule_template: ApprovalRuleTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['approvalRuleTemplate'] = ApprovalRuleTemplate.stub(stub[:approval_rule_template]) unless stub[:approval_rule_template].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ApprovalRuleTemplate
    class ApprovalRuleTemplate
      def self.default(visited=[])
        return nil if visited.include?('ApprovalRuleTemplate')
        visited = visited + ['ApprovalRuleTemplate']
        {
          approval_rule_template_id: 'approval_rule_template_id',
          approval_rule_template_name: 'approval_rule_template_name',
          approval_rule_template_description: 'approval_rule_template_description',
          approval_rule_template_content: 'approval_rule_template_content',
          rule_content_sha256: 'rule_content_sha256',
          last_modified_date: Time.now,
          creation_date: Time.now,
          last_modified_user: 'last_modified_user',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApprovalRuleTemplate.new
        data = {}
        data['approvalRuleTemplateId'] = stub[:approval_rule_template_id] unless stub[:approval_rule_template_id].nil?
        data['approvalRuleTemplateName'] = stub[:approval_rule_template_name] unless stub[:approval_rule_template_name].nil?
        data['approvalRuleTemplateDescription'] = stub[:approval_rule_template_description] unless stub[:approval_rule_template_description].nil?
        data['approvalRuleTemplateContent'] = stub[:approval_rule_template_content] unless stub[:approval_rule_template_content].nil?
        data['ruleContentSha256'] = stub[:rule_content_sha256] unless stub[:rule_content_sha256].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedUser'] = stub[:last_modified_user] unless stub[:last_modified_user].nil?
        data
      end
    end

    # Operation Stubber for CreateBranch
    class CreateBranch
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateCommit
    class CreateCommit
      def self.default(visited=[])
        {
          commit_id: 'commit_id',
          tree_id: 'tree_id',
          files_added: FilesMetadata.default(visited),
          files_updated: FilesMetadata.default(visited),
          files_deleted: FilesMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['commitId'] = stub[:commit_id] unless stub[:commit_id].nil?
        data['treeId'] = stub[:tree_id] unless stub[:tree_id].nil?
        data['filesAdded'] = FilesMetadata.stub(stub[:files_added]) unless stub[:files_added].nil?
        data['filesUpdated'] = FilesMetadata.stub(stub[:files_updated]) unless stub[:files_updated].nil?
        data['filesDeleted'] = FilesMetadata.stub(stub[:files_deleted]) unless stub[:files_deleted].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FilesMetadata
    class FilesMetadata
      def self.default(visited=[])
        return nil if visited.include?('FilesMetadata')
        visited = visited + ['FilesMetadata']
        [
          FileMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FileMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FileMetadata
    class FileMetadata
      def self.default(visited=[])
        return nil if visited.include?('FileMetadata')
        visited = visited + ['FileMetadata']
        {
          absolute_path: 'absolute_path',
          blob_id: 'blob_id',
          file_mode: 'file_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::FileMetadata.new
        data = {}
        data['absolutePath'] = stub[:absolute_path] unless stub[:absolute_path].nil?
        data['blobId'] = stub[:blob_id] unless stub[:blob_id].nil?
        data['fileMode'] = stub[:file_mode] unless stub[:file_mode].nil?
        data
      end
    end

    # Operation Stubber for CreatePullRequest
    class CreatePullRequest
      def self.default(visited=[])
        {
          pull_request: PullRequest.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pullRequest'] = PullRequest.stub(stub[:pull_request]) unless stub[:pull_request].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for PullRequest
    class PullRequest
      def self.default(visited=[])
        return nil if visited.include?('PullRequest')
        visited = visited + ['PullRequest']
        {
          pull_request_id: 'pull_request_id',
          title: 'title',
          description: 'description',
          last_activity_date: Time.now,
          creation_date: Time.now,
          pull_request_status: 'pull_request_status',
          author_arn: 'author_arn',
          pull_request_targets: PullRequestTargetList.default(visited),
          client_request_token: 'client_request_token',
          revision_id: 'revision_id',
          approval_rules: ApprovalRulesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PullRequest.new
        data = {}
        data['pullRequestId'] = stub[:pull_request_id] unless stub[:pull_request_id].nil?
        data['title'] = stub[:title] unless stub[:title].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['lastActivityDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_activity_date]).to_i unless stub[:last_activity_date].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['pullRequestStatus'] = stub[:pull_request_status] unless stub[:pull_request_status].nil?
        data['authorArn'] = stub[:author_arn] unless stub[:author_arn].nil?
        data['pullRequestTargets'] = PullRequestTargetList.stub(stub[:pull_request_targets]) unless stub[:pull_request_targets].nil?
        data['clientRequestToken'] = stub[:client_request_token] unless stub[:client_request_token].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['approvalRules'] = ApprovalRulesList.stub(stub[:approval_rules]) unless stub[:approval_rules].nil?
        data
      end
    end

    # List Stubber for ApprovalRulesList
    class ApprovalRulesList
      def self.default(visited=[])
        return nil if visited.include?('ApprovalRulesList')
        visited = visited + ['ApprovalRulesList']
        [
          ApprovalRule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ApprovalRule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ApprovalRule
    class ApprovalRule
      def self.default(visited=[])
        return nil if visited.include?('ApprovalRule')
        visited = visited + ['ApprovalRule']
        {
          approval_rule_id: 'approval_rule_id',
          approval_rule_name: 'approval_rule_name',
          approval_rule_content: 'approval_rule_content',
          rule_content_sha256: 'rule_content_sha256',
          last_modified_date: Time.now,
          creation_date: Time.now,
          last_modified_user: 'last_modified_user',
          origin_approval_rule_template: OriginApprovalRuleTemplate.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ApprovalRule.new
        data = {}
        data['approvalRuleId'] = stub[:approval_rule_id] unless stub[:approval_rule_id].nil?
        data['approvalRuleName'] = stub[:approval_rule_name] unless stub[:approval_rule_name].nil?
        data['approvalRuleContent'] = stub[:approval_rule_content] unless stub[:approval_rule_content].nil?
        data['ruleContentSha256'] = stub[:rule_content_sha256] unless stub[:rule_content_sha256].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedUser'] = stub[:last_modified_user] unless stub[:last_modified_user].nil?
        data['originApprovalRuleTemplate'] = OriginApprovalRuleTemplate.stub(stub[:origin_approval_rule_template]) unless stub[:origin_approval_rule_template].nil?
        data
      end
    end

    # Structure Stubber for OriginApprovalRuleTemplate
    class OriginApprovalRuleTemplate
      def self.default(visited=[])
        return nil if visited.include?('OriginApprovalRuleTemplate')
        visited = visited + ['OriginApprovalRuleTemplate']
        {
          approval_rule_template_id: 'approval_rule_template_id',
          approval_rule_template_name: 'approval_rule_template_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::OriginApprovalRuleTemplate.new
        data = {}
        data['approvalRuleTemplateId'] = stub[:approval_rule_template_id] unless stub[:approval_rule_template_id].nil?
        data['approvalRuleTemplateName'] = stub[:approval_rule_template_name] unless stub[:approval_rule_template_name].nil?
        data
      end
    end

    # List Stubber for PullRequestTargetList
    class PullRequestTargetList
      def self.default(visited=[])
        return nil if visited.include?('PullRequestTargetList')
        visited = visited + ['PullRequestTargetList']
        [
          PullRequestTarget.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PullRequestTarget.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PullRequestTarget
    class PullRequestTarget
      def self.default(visited=[])
        return nil if visited.include?('PullRequestTarget')
        visited = visited + ['PullRequestTarget']
        {
          repository_name: 'repository_name',
          source_reference: 'source_reference',
          destination_reference: 'destination_reference',
          destination_commit: 'destination_commit',
          source_commit: 'source_commit',
          merge_base: 'merge_base',
          merge_metadata: MergeMetadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PullRequestTarget.new
        data = {}
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['sourceReference'] = stub[:source_reference] unless stub[:source_reference].nil?
        data['destinationReference'] = stub[:destination_reference] unless stub[:destination_reference].nil?
        data['destinationCommit'] = stub[:destination_commit] unless stub[:destination_commit].nil?
        data['sourceCommit'] = stub[:source_commit] unless stub[:source_commit].nil?
        data['mergeBase'] = stub[:merge_base] unless stub[:merge_base].nil?
        data['mergeMetadata'] = MergeMetadata.stub(stub[:merge_metadata]) unless stub[:merge_metadata].nil?
        data
      end
    end

    # Structure Stubber for MergeMetadata
    class MergeMetadata
      def self.default(visited=[])
        return nil if visited.include?('MergeMetadata')
        visited = visited + ['MergeMetadata']
        {
          is_merged: false,
          merged_by: 'merged_by',
          merge_commit_id: 'merge_commit_id',
          merge_option: 'merge_option',
        }
      end

      def self.stub(stub)
        stub ||= Types::MergeMetadata.new
        data = {}
        data['isMerged'] = stub[:is_merged] unless stub[:is_merged].nil?
        data['mergedBy'] = stub[:merged_by] unless stub[:merged_by].nil?
        data['mergeCommitId'] = stub[:merge_commit_id] unless stub[:merge_commit_id].nil?
        data['mergeOption'] = stub[:merge_option] unless stub[:merge_option].nil?
        data
      end
    end

    # Operation Stubber for CreatePullRequestApprovalRule
    class CreatePullRequestApprovalRule
      def self.default(visited=[])
        {
          approval_rule: ApprovalRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['approvalRule'] = ApprovalRule.stub(stub[:approval_rule]) unless stub[:approval_rule].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateRepository
    class CreateRepository
      def self.default(visited=[])
        {
          repository_metadata: RepositoryMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['repositoryMetadata'] = RepositoryMetadata.stub(stub[:repository_metadata]) unless stub[:repository_metadata].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateUnreferencedMergeCommit
    class CreateUnreferencedMergeCommit
      def self.default(visited=[])
        {
          commit_id: 'commit_id',
          tree_id: 'tree_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['commitId'] = stub[:commit_id] unless stub[:commit_id].nil?
        data['treeId'] = stub[:tree_id] unless stub[:tree_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteApprovalRuleTemplate
    class DeleteApprovalRuleTemplate
      def self.default(visited=[])
        {
          approval_rule_template_id: 'approval_rule_template_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['approvalRuleTemplateId'] = stub[:approval_rule_template_id] unless stub[:approval_rule_template_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBranch
    class DeleteBranch
      def self.default(visited=[])
        {
          deleted_branch: BranchInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['deletedBranch'] = BranchInfo.stub(stub[:deleted_branch]) unless stub[:deleted_branch].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for BranchInfo
    class BranchInfo
      def self.default(visited=[])
        return nil if visited.include?('BranchInfo')
        visited = visited + ['BranchInfo']
        {
          branch_name: 'branch_name',
          commit_id: 'commit_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::BranchInfo.new
        data = {}
        data['branchName'] = stub[:branch_name] unless stub[:branch_name].nil?
        data['commitId'] = stub[:commit_id] unless stub[:commit_id].nil?
        data
      end
    end

    # Operation Stubber for DeleteCommentContent
    class DeleteCommentContent
      def self.default(visited=[])
        {
          comment: Comment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['comment'] = Comment.stub(stub[:comment]) unless stub[:comment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Comment
    class Comment
      def self.default(visited=[])
        return nil if visited.include?('Comment')
        visited = visited + ['Comment']
        {
          comment_id: 'comment_id',
          content: 'content',
          in_reply_to: 'in_reply_to',
          creation_date: Time.now,
          last_modified_date: Time.now,
          author_arn: 'author_arn',
          deleted: false,
          client_request_token: 'client_request_token',
          caller_reactions: CallerReactions.default(visited),
          reaction_counts: ReactionCountsMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Comment.new
        data = {}
        data['commentId'] = stub[:comment_id] unless stub[:comment_id].nil?
        data['content'] = stub[:content] unless stub[:content].nil?
        data['inReplyTo'] = stub[:in_reply_to] unless stub[:in_reply_to].nil?
        data['creationDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_date]).to_i unless stub[:creation_date].nil?
        data['lastModifiedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_date]).to_i unless stub[:last_modified_date].nil?
        data['authorArn'] = stub[:author_arn] unless stub[:author_arn].nil?
        data['deleted'] = stub[:deleted] unless stub[:deleted].nil?
        data['clientRequestToken'] = stub[:client_request_token] unless stub[:client_request_token].nil?
        data['callerReactions'] = CallerReactions.stub(stub[:caller_reactions]) unless stub[:caller_reactions].nil?
        data['reactionCounts'] = ReactionCountsMap.stub(stub[:reaction_counts]) unless stub[:reaction_counts].nil?
        data
      end
    end

    # Map Stubber for ReactionCountsMap
    class ReactionCountsMap
      def self.default(visited=[])
        return nil if visited.include?('ReactionCountsMap')
        visited = visited + ['ReactionCountsMap']
        {
          test_key: 1
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

    # List Stubber for CallerReactions
    class CallerReactions
      def self.default(visited=[])
        return nil if visited.include?('CallerReactions')
        visited = visited + ['CallerReactions']
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

    # Operation Stubber for DeleteFile
    class DeleteFile
      def self.default(visited=[])
        {
          commit_id: 'commit_id',
          blob_id: 'blob_id',
          tree_id: 'tree_id',
          file_path: 'file_path',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['commitId'] = stub[:commit_id] unless stub[:commit_id].nil?
        data['blobId'] = stub[:blob_id] unless stub[:blob_id].nil?
        data['treeId'] = stub[:tree_id] unless stub[:tree_id].nil?
        data['filePath'] = stub[:file_path] unless stub[:file_path].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePullRequestApprovalRule
    class DeletePullRequestApprovalRule
      def self.default(visited=[])
        {
          approval_rule_id: 'approval_rule_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['approvalRuleId'] = stub[:approval_rule_id] unless stub[:approval_rule_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteRepository
    class DeleteRepository
      def self.default(visited=[])
        {
          repository_id: 'repository_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['repositoryId'] = stub[:repository_id] unless stub[:repository_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeMergeConflicts
    class DescribeMergeConflicts
      def self.default(visited=[])
        {
          conflict_metadata: ConflictMetadata.default(visited),
          merge_hunks: MergeHunks.default(visited),
          next_token: 'next_token',
          destination_commit_id: 'destination_commit_id',
          source_commit_id: 'source_commit_id',
          base_commit_id: 'base_commit_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['conflictMetadata'] = ConflictMetadata.stub(stub[:conflict_metadata]) unless stub[:conflict_metadata].nil?
        data['mergeHunks'] = MergeHunks.stub(stub[:merge_hunks]) unless stub[:merge_hunks].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['destinationCommitId'] = stub[:destination_commit_id] unless stub[:destination_commit_id].nil?
        data['sourceCommitId'] = stub[:source_commit_id] unless stub[:source_commit_id].nil?
        data['baseCommitId'] = stub[:base_commit_id] unless stub[:base_commit_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribePullRequestEvents
    class DescribePullRequestEvents
      def self.default(visited=[])
        {
          pull_request_events: PullRequestEventList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pullRequestEvents'] = PullRequestEventList.stub(stub[:pull_request_events]) unless stub[:pull_request_events].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PullRequestEventList
    class PullRequestEventList
      def self.default(visited=[])
        return nil if visited.include?('PullRequestEventList')
        visited = visited + ['PullRequestEventList']
        [
          PullRequestEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PullRequestEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PullRequestEvent
    class PullRequestEvent
      def self.default(visited=[])
        return nil if visited.include?('PullRequestEvent')
        visited = visited + ['PullRequestEvent']
        {
          pull_request_id: 'pull_request_id',
          event_date: Time.now,
          pull_request_event_type: 'pull_request_event_type',
          actor_arn: 'actor_arn',
          pull_request_created_event_metadata: PullRequestCreatedEventMetadata.default(visited),
          pull_request_status_changed_event_metadata: PullRequestStatusChangedEventMetadata.default(visited),
          pull_request_source_reference_updated_event_metadata: PullRequestSourceReferenceUpdatedEventMetadata.default(visited),
          pull_request_merged_state_changed_event_metadata: PullRequestMergedStateChangedEventMetadata.default(visited),
          approval_rule_event_metadata: ApprovalRuleEventMetadata.default(visited),
          approval_state_changed_event_metadata: ApprovalStateChangedEventMetadata.default(visited),
          approval_rule_overridden_event_metadata: ApprovalRuleOverriddenEventMetadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PullRequestEvent.new
        data = {}
        data['pullRequestId'] = stub[:pull_request_id] unless stub[:pull_request_id].nil?
        data['eventDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:event_date]).to_i unless stub[:event_date].nil?
        data['pullRequestEventType'] = stub[:pull_request_event_type] unless stub[:pull_request_event_type].nil?
        data['actorArn'] = stub[:actor_arn] unless stub[:actor_arn].nil?
        data['pullRequestCreatedEventMetadata'] = PullRequestCreatedEventMetadata.stub(stub[:pull_request_created_event_metadata]) unless stub[:pull_request_created_event_metadata].nil?
        data['pullRequestStatusChangedEventMetadata'] = PullRequestStatusChangedEventMetadata.stub(stub[:pull_request_status_changed_event_metadata]) unless stub[:pull_request_status_changed_event_metadata].nil?
        data['pullRequestSourceReferenceUpdatedEventMetadata'] = PullRequestSourceReferenceUpdatedEventMetadata.stub(stub[:pull_request_source_reference_updated_event_metadata]) unless stub[:pull_request_source_reference_updated_event_metadata].nil?
        data['pullRequestMergedStateChangedEventMetadata'] = PullRequestMergedStateChangedEventMetadata.stub(stub[:pull_request_merged_state_changed_event_metadata]) unless stub[:pull_request_merged_state_changed_event_metadata].nil?
        data['approvalRuleEventMetadata'] = ApprovalRuleEventMetadata.stub(stub[:approval_rule_event_metadata]) unless stub[:approval_rule_event_metadata].nil?
        data['approvalStateChangedEventMetadata'] = ApprovalStateChangedEventMetadata.stub(stub[:approval_state_changed_event_metadata]) unless stub[:approval_state_changed_event_metadata].nil?
        data['approvalRuleOverriddenEventMetadata'] = ApprovalRuleOverriddenEventMetadata.stub(stub[:approval_rule_overridden_event_metadata]) unless stub[:approval_rule_overridden_event_metadata].nil?
        data
      end
    end

    # Structure Stubber for ApprovalRuleOverriddenEventMetadata
    class ApprovalRuleOverriddenEventMetadata
      def self.default(visited=[])
        return nil if visited.include?('ApprovalRuleOverriddenEventMetadata')
        visited = visited + ['ApprovalRuleOverriddenEventMetadata']
        {
          revision_id: 'revision_id',
          override_status: 'override_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApprovalRuleOverriddenEventMetadata.new
        data = {}
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['overrideStatus'] = stub[:override_status] unless stub[:override_status].nil?
        data
      end
    end

    # Structure Stubber for ApprovalStateChangedEventMetadata
    class ApprovalStateChangedEventMetadata
      def self.default(visited=[])
        return nil if visited.include?('ApprovalStateChangedEventMetadata')
        visited = visited + ['ApprovalStateChangedEventMetadata']
        {
          revision_id: 'revision_id',
          approval_status: 'approval_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApprovalStateChangedEventMetadata.new
        data = {}
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['approvalStatus'] = stub[:approval_status] unless stub[:approval_status].nil?
        data
      end
    end

    # Structure Stubber for ApprovalRuleEventMetadata
    class ApprovalRuleEventMetadata
      def self.default(visited=[])
        return nil if visited.include?('ApprovalRuleEventMetadata')
        visited = visited + ['ApprovalRuleEventMetadata']
        {
          approval_rule_name: 'approval_rule_name',
          approval_rule_id: 'approval_rule_id',
          approval_rule_content: 'approval_rule_content',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApprovalRuleEventMetadata.new
        data = {}
        data['approvalRuleName'] = stub[:approval_rule_name] unless stub[:approval_rule_name].nil?
        data['approvalRuleId'] = stub[:approval_rule_id] unless stub[:approval_rule_id].nil?
        data['approvalRuleContent'] = stub[:approval_rule_content] unless stub[:approval_rule_content].nil?
        data
      end
    end

    # Structure Stubber for PullRequestMergedStateChangedEventMetadata
    class PullRequestMergedStateChangedEventMetadata
      def self.default(visited=[])
        return nil if visited.include?('PullRequestMergedStateChangedEventMetadata')
        visited = visited + ['PullRequestMergedStateChangedEventMetadata']
        {
          repository_name: 'repository_name',
          destination_reference: 'destination_reference',
          merge_metadata: MergeMetadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PullRequestMergedStateChangedEventMetadata.new
        data = {}
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['destinationReference'] = stub[:destination_reference] unless stub[:destination_reference].nil?
        data['mergeMetadata'] = MergeMetadata.stub(stub[:merge_metadata]) unless stub[:merge_metadata].nil?
        data
      end
    end

    # Structure Stubber for PullRequestSourceReferenceUpdatedEventMetadata
    class PullRequestSourceReferenceUpdatedEventMetadata
      def self.default(visited=[])
        return nil if visited.include?('PullRequestSourceReferenceUpdatedEventMetadata')
        visited = visited + ['PullRequestSourceReferenceUpdatedEventMetadata']
        {
          repository_name: 'repository_name',
          before_commit_id: 'before_commit_id',
          after_commit_id: 'after_commit_id',
          merge_base: 'merge_base',
        }
      end

      def self.stub(stub)
        stub ||= Types::PullRequestSourceReferenceUpdatedEventMetadata.new
        data = {}
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['beforeCommitId'] = stub[:before_commit_id] unless stub[:before_commit_id].nil?
        data['afterCommitId'] = stub[:after_commit_id] unless stub[:after_commit_id].nil?
        data['mergeBase'] = stub[:merge_base] unless stub[:merge_base].nil?
        data
      end
    end

    # Structure Stubber for PullRequestStatusChangedEventMetadata
    class PullRequestStatusChangedEventMetadata
      def self.default(visited=[])
        return nil if visited.include?('PullRequestStatusChangedEventMetadata')
        visited = visited + ['PullRequestStatusChangedEventMetadata']
        {
          pull_request_status: 'pull_request_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::PullRequestStatusChangedEventMetadata.new
        data = {}
        data['pullRequestStatus'] = stub[:pull_request_status] unless stub[:pull_request_status].nil?
        data
      end
    end

    # Structure Stubber for PullRequestCreatedEventMetadata
    class PullRequestCreatedEventMetadata
      def self.default(visited=[])
        return nil if visited.include?('PullRequestCreatedEventMetadata')
        visited = visited + ['PullRequestCreatedEventMetadata']
        {
          repository_name: 'repository_name',
          source_commit_id: 'source_commit_id',
          destination_commit_id: 'destination_commit_id',
          merge_base: 'merge_base',
        }
      end

      def self.stub(stub)
        stub ||= Types::PullRequestCreatedEventMetadata.new
        data = {}
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['sourceCommitId'] = stub[:source_commit_id] unless stub[:source_commit_id].nil?
        data['destinationCommitId'] = stub[:destination_commit_id] unless stub[:destination_commit_id].nil?
        data['mergeBase'] = stub[:merge_base] unless stub[:merge_base].nil?
        data
      end
    end

    # Operation Stubber for DisassociateApprovalRuleTemplateFromRepository
    class DisassociateApprovalRuleTemplateFromRepository
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for EvaluatePullRequestApprovalRules
    class EvaluatePullRequestApprovalRules
      def self.default(visited=[])
        {
          evaluation: Evaluation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['evaluation'] = Evaluation.stub(stub[:evaluation]) unless stub[:evaluation].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Evaluation
    class Evaluation
      def self.default(visited=[])
        return nil if visited.include?('Evaluation')
        visited = visited + ['Evaluation']
        {
          approved: false,
          overridden: false,
          approval_rules_satisfied: ApprovalRulesSatisfiedList.default(visited),
          approval_rules_not_satisfied: ApprovalRulesNotSatisfiedList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Evaluation.new
        data = {}
        data['approved'] = stub[:approved] unless stub[:approved].nil?
        data['overridden'] = stub[:overridden] unless stub[:overridden].nil?
        data['approvalRulesSatisfied'] = ApprovalRulesSatisfiedList.stub(stub[:approval_rules_satisfied]) unless stub[:approval_rules_satisfied].nil?
        data['approvalRulesNotSatisfied'] = ApprovalRulesNotSatisfiedList.stub(stub[:approval_rules_not_satisfied]) unless stub[:approval_rules_not_satisfied].nil?
        data
      end
    end

    # List Stubber for ApprovalRulesNotSatisfiedList
    class ApprovalRulesNotSatisfiedList
      def self.default(visited=[])
        return nil if visited.include?('ApprovalRulesNotSatisfiedList')
        visited = visited + ['ApprovalRulesNotSatisfiedList']
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

    # List Stubber for ApprovalRulesSatisfiedList
    class ApprovalRulesSatisfiedList
      def self.default(visited=[])
        return nil if visited.include?('ApprovalRulesSatisfiedList')
        visited = visited + ['ApprovalRulesSatisfiedList']
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

    # Operation Stubber for GetApprovalRuleTemplate
    class GetApprovalRuleTemplate
      def self.default(visited=[])
        {
          approval_rule_template: ApprovalRuleTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['approvalRuleTemplate'] = ApprovalRuleTemplate.stub(stub[:approval_rule_template]) unless stub[:approval_rule_template].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetBlob
    class GetBlob
      def self.default(visited=[])
        {
          content: 'content',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['content'] = ::Base64::encode64(stub[:content]) unless stub[:content].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetBranch
    class GetBranch
      def self.default(visited=[])
        {
          branch: BranchInfo.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['branch'] = BranchInfo.stub(stub[:branch]) unless stub[:branch].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetComment
    class GetComment
      def self.default(visited=[])
        {
          comment: Comment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['comment'] = Comment.stub(stub[:comment]) unless stub[:comment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetCommentReactions
    class GetCommentReactions
      def self.default(visited=[])
        {
          reactions_for_comment: ReactionsForCommentList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['reactionsForComment'] = ReactionsForCommentList.stub(stub[:reactions_for_comment]) unless stub[:reactions_for_comment].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ReactionsForCommentList
    class ReactionsForCommentList
      def self.default(visited=[])
        return nil if visited.include?('ReactionsForCommentList')
        visited = visited + ['ReactionsForCommentList']
        [
          ReactionForComment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ReactionForComment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ReactionForComment
    class ReactionForComment
      def self.default(visited=[])
        return nil if visited.include?('ReactionForComment')
        visited = visited + ['ReactionForComment']
        {
          reaction: ReactionValueFormats.default(visited),
          reaction_users: ReactionUsersList.default(visited),
          reactions_from_deleted_users_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ReactionForComment.new
        data = {}
        data['reaction'] = ReactionValueFormats.stub(stub[:reaction]) unless stub[:reaction].nil?
        data['reactionUsers'] = ReactionUsersList.stub(stub[:reaction_users]) unless stub[:reaction_users].nil?
        data['reactionsFromDeletedUsersCount'] = stub[:reactions_from_deleted_users_count] unless stub[:reactions_from_deleted_users_count].nil?
        data
      end
    end

    # List Stubber for ReactionUsersList
    class ReactionUsersList
      def self.default(visited=[])
        return nil if visited.include?('ReactionUsersList')
        visited = visited + ['ReactionUsersList']
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

    # Structure Stubber for ReactionValueFormats
    class ReactionValueFormats
      def self.default(visited=[])
        return nil if visited.include?('ReactionValueFormats')
        visited = visited + ['ReactionValueFormats']
        {
          emoji: 'emoji',
          short_code: 'short_code',
          unicode: 'unicode',
        }
      end

      def self.stub(stub)
        stub ||= Types::ReactionValueFormats.new
        data = {}
        data['emoji'] = stub[:emoji] unless stub[:emoji].nil?
        data['shortCode'] = stub[:short_code] unless stub[:short_code].nil?
        data['unicode'] = stub[:unicode] unless stub[:unicode].nil?
        data
      end
    end

    # Operation Stubber for GetCommentsForComparedCommit
    class GetCommentsForComparedCommit
      def self.default(visited=[])
        {
          comments_for_compared_commit_data: CommentsForComparedCommitData.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['commentsForComparedCommitData'] = CommentsForComparedCommitData.stub(stub[:comments_for_compared_commit_data]) unless stub[:comments_for_compared_commit_data].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CommentsForComparedCommitData
    class CommentsForComparedCommitData
      def self.default(visited=[])
        return nil if visited.include?('CommentsForComparedCommitData')
        visited = visited + ['CommentsForComparedCommitData']
        [
          CommentsForComparedCommit.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CommentsForComparedCommit.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CommentsForComparedCommit
    class CommentsForComparedCommit
      def self.default(visited=[])
        return nil if visited.include?('CommentsForComparedCommit')
        visited = visited + ['CommentsForComparedCommit']
        {
          repository_name: 'repository_name',
          before_commit_id: 'before_commit_id',
          after_commit_id: 'after_commit_id',
          before_blob_id: 'before_blob_id',
          after_blob_id: 'after_blob_id',
          location: Location.default(visited),
          comments: Comments.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CommentsForComparedCommit.new
        data = {}
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['beforeCommitId'] = stub[:before_commit_id] unless stub[:before_commit_id].nil?
        data['afterCommitId'] = stub[:after_commit_id] unless stub[:after_commit_id].nil?
        data['beforeBlobId'] = stub[:before_blob_id] unless stub[:before_blob_id].nil?
        data['afterBlobId'] = stub[:after_blob_id] unless stub[:after_blob_id].nil?
        data['location'] = Location.stub(stub[:location]) unless stub[:location].nil?
        data['comments'] = Comments.stub(stub[:comments]) unless stub[:comments].nil?
        data
      end
    end

    # List Stubber for Comments
    class Comments
      def self.default(visited=[])
        return nil if visited.include?('Comments')
        visited = visited + ['Comments']
        [
          Comment.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Comment.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Location
    class Location
      def self.default(visited=[])
        return nil if visited.include?('Location')
        visited = visited + ['Location']
        {
          file_path: 'file_path',
          file_position: 1,
          relative_file_version: 'relative_file_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::Location.new
        data = {}
        data['filePath'] = stub[:file_path] unless stub[:file_path].nil?
        data['filePosition'] = stub[:file_position] unless stub[:file_position].nil?
        data['relativeFileVersion'] = stub[:relative_file_version] unless stub[:relative_file_version].nil?
        data
      end
    end

    # Operation Stubber for GetCommentsForPullRequest
    class GetCommentsForPullRequest
      def self.default(visited=[])
        {
          comments_for_pull_request_data: CommentsForPullRequestData.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['commentsForPullRequestData'] = CommentsForPullRequestData.stub(stub[:comments_for_pull_request_data]) unless stub[:comments_for_pull_request_data].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for CommentsForPullRequestData
    class CommentsForPullRequestData
      def self.default(visited=[])
        return nil if visited.include?('CommentsForPullRequestData')
        visited = visited + ['CommentsForPullRequestData']
        [
          CommentsForPullRequest.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << CommentsForPullRequest.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for CommentsForPullRequest
    class CommentsForPullRequest
      def self.default(visited=[])
        return nil if visited.include?('CommentsForPullRequest')
        visited = visited + ['CommentsForPullRequest']
        {
          pull_request_id: 'pull_request_id',
          repository_name: 'repository_name',
          before_commit_id: 'before_commit_id',
          after_commit_id: 'after_commit_id',
          before_blob_id: 'before_blob_id',
          after_blob_id: 'after_blob_id',
          location: Location.default(visited),
          comments: Comments.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::CommentsForPullRequest.new
        data = {}
        data['pullRequestId'] = stub[:pull_request_id] unless stub[:pull_request_id].nil?
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['beforeCommitId'] = stub[:before_commit_id] unless stub[:before_commit_id].nil?
        data['afterCommitId'] = stub[:after_commit_id] unless stub[:after_commit_id].nil?
        data['beforeBlobId'] = stub[:before_blob_id] unless stub[:before_blob_id].nil?
        data['afterBlobId'] = stub[:after_blob_id] unless stub[:after_blob_id].nil?
        data['location'] = Location.stub(stub[:location]) unless stub[:location].nil?
        data['comments'] = Comments.stub(stub[:comments]) unless stub[:comments].nil?
        data
      end
    end

    # Operation Stubber for GetCommit
    class GetCommit
      def self.default(visited=[])
        {
          commit: Commit.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['commit'] = Commit.stub(stub[:commit]) unless stub[:commit].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDifferences
    class GetDifferences
      def self.default(visited=[])
        {
          differences: DifferenceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['differences'] = DifferenceList.stub(stub[:differences]) unless stub[:differences].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DifferenceList
    class DifferenceList
      def self.default(visited=[])
        return nil if visited.include?('DifferenceList')
        visited = visited + ['DifferenceList']
        [
          Difference.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Difference.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Difference
    class Difference
      def self.default(visited=[])
        return nil if visited.include?('Difference')
        visited = visited + ['Difference']
        {
          before_blob: BlobMetadata.default(visited),
          after_blob: BlobMetadata.default(visited),
          change_type: 'change_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Difference.new
        data = {}
        data['beforeBlob'] = BlobMetadata.stub(stub[:before_blob]) unless stub[:before_blob].nil?
        data['afterBlob'] = BlobMetadata.stub(stub[:after_blob]) unless stub[:after_blob].nil?
        data['changeType'] = stub[:change_type] unless stub[:change_type].nil?
        data
      end
    end

    # Structure Stubber for BlobMetadata
    class BlobMetadata
      def self.default(visited=[])
        return nil if visited.include?('BlobMetadata')
        visited = visited + ['BlobMetadata']
        {
          blob_id: 'blob_id',
          path: 'path',
          mode: 'mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::BlobMetadata.new
        data = {}
        data['blobId'] = stub[:blob_id] unless stub[:blob_id].nil?
        data['path'] = stub[:path] unless stub[:path].nil?
        data['mode'] = stub[:mode] unless stub[:mode].nil?
        data
      end
    end

    # Operation Stubber for GetFile
    class GetFile
      def self.default(visited=[])
        {
          commit_id: 'commit_id',
          blob_id: 'blob_id',
          file_path: 'file_path',
          file_mode: 'file_mode',
          file_size: 1,
          file_content: 'file_content',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['commitId'] = stub[:commit_id] unless stub[:commit_id].nil?
        data['blobId'] = stub[:blob_id] unless stub[:blob_id].nil?
        data['filePath'] = stub[:file_path] unless stub[:file_path].nil?
        data['fileMode'] = stub[:file_mode] unless stub[:file_mode].nil?
        data['fileSize'] = stub[:file_size] unless stub[:file_size].nil?
        data['fileContent'] = ::Base64::encode64(stub[:file_content]) unless stub[:file_content].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetFolder
    class GetFolder
      def self.default(visited=[])
        {
          commit_id: 'commit_id',
          folder_path: 'folder_path',
          tree_id: 'tree_id',
          sub_folders: FolderList.default(visited),
          files: FileList.default(visited),
          symbolic_links: SymbolicLinkList.default(visited),
          sub_modules: SubModuleList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['commitId'] = stub[:commit_id] unless stub[:commit_id].nil?
        data['folderPath'] = stub[:folder_path] unless stub[:folder_path].nil?
        data['treeId'] = stub[:tree_id] unless stub[:tree_id].nil?
        data['subFolders'] = FolderList.stub(stub[:sub_folders]) unless stub[:sub_folders].nil?
        data['files'] = FileList.stub(stub[:files]) unless stub[:files].nil?
        data['symbolicLinks'] = SymbolicLinkList.stub(stub[:symbolic_links]) unless stub[:symbolic_links].nil?
        data['subModules'] = SubModuleList.stub(stub[:sub_modules]) unless stub[:sub_modules].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SubModuleList
    class SubModuleList
      def self.default(visited=[])
        return nil if visited.include?('SubModuleList')
        visited = visited + ['SubModuleList']
        [
          SubModule.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SubModule.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SubModule
    class SubModule
      def self.default(visited=[])
        return nil if visited.include?('SubModule')
        visited = visited + ['SubModule']
        {
          commit_id: 'commit_id',
          absolute_path: 'absolute_path',
          relative_path: 'relative_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::SubModule.new
        data = {}
        data['commitId'] = stub[:commit_id] unless stub[:commit_id].nil?
        data['absolutePath'] = stub[:absolute_path] unless stub[:absolute_path].nil?
        data['relativePath'] = stub[:relative_path] unless stub[:relative_path].nil?
        data
      end
    end

    # List Stubber for SymbolicLinkList
    class SymbolicLinkList
      def self.default(visited=[])
        return nil if visited.include?('SymbolicLinkList')
        visited = visited + ['SymbolicLinkList']
        [
          SymbolicLink.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SymbolicLink.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SymbolicLink
    class SymbolicLink
      def self.default(visited=[])
        return nil if visited.include?('SymbolicLink')
        visited = visited + ['SymbolicLink']
        {
          blob_id: 'blob_id',
          absolute_path: 'absolute_path',
          relative_path: 'relative_path',
          file_mode: 'file_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::SymbolicLink.new
        data = {}
        data['blobId'] = stub[:blob_id] unless stub[:blob_id].nil?
        data['absolutePath'] = stub[:absolute_path] unless stub[:absolute_path].nil?
        data['relativePath'] = stub[:relative_path] unless stub[:relative_path].nil?
        data['fileMode'] = stub[:file_mode] unless stub[:file_mode].nil?
        data
      end
    end

    # List Stubber for FileList
    class FileList
      def self.default(visited=[])
        return nil if visited.include?('FileList')
        visited = visited + ['FileList']
        [
          File.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << File.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for File
    class File
      def self.default(visited=[])
        return nil if visited.include?('File')
        visited = visited + ['File']
        {
          blob_id: 'blob_id',
          absolute_path: 'absolute_path',
          relative_path: 'relative_path',
          file_mode: 'file_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::File.new
        data = {}
        data['blobId'] = stub[:blob_id] unless stub[:blob_id].nil?
        data['absolutePath'] = stub[:absolute_path] unless stub[:absolute_path].nil?
        data['relativePath'] = stub[:relative_path] unless stub[:relative_path].nil?
        data['fileMode'] = stub[:file_mode] unless stub[:file_mode].nil?
        data
      end
    end

    # List Stubber for FolderList
    class FolderList
      def self.default(visited=[])
        return nil if visited.include?('FolderList')
        visited = visited + ['FolderList']
        [
          Folder.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Folder.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Folder
    class Folder
      def self.default(visited=[])
        return nil if visited.include?('Folder')
        visited = visited + ['Folder']
        {
          tree_id: 'tree_id',
          absolute_path: 'absolute_path',
          relative_path: 'relative_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::Folder.new
        data = {}
        data['treeId'] = stub[:tree_id] unless stub[:tree_id].nil?
        data['absolutePath'] = stub[:absolute_path] unless stub[:absolute_path].nil?
        data['relativePath'] = stub[:relative_path] unless stub[:relative_path].nil?
        data
      end
    end

    # Operation Stubber for GetMergeCommit
    class GetMergeCommit
      def self.default(visited=[])
        {
          source_commit_id: 'source_commit_id',
          destination_commit_id: 'destination_commit_id',
          base_commit_id: 'base_commit_id',
          merged_commit_id: 'merged_commit_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['sourceCommitId'] = stub[:source_commit_id] unless stub[:source_commit_id].nil?
        data['destinationCommitId'] = stub[:destination_commit_id] unless stub[:destination_commit_id].nil?
        data['baseCommitId'] = stub[:base_commit_id] unless stub[:base_commit_id].nil?
        data['mergedCommitId'] = stub[:merged_commit_id] unless stub[:merged_commit_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetMergeConflicts
    class GetMergeConflicts
      def self.default(visited=[])
        {
          mergeable: false,
          destination_commit_id: 'destination_commit_id',
          source_commit_id: 'source_commit_id',
          base_commit_id: 'base_commit_id',
          conflict_metadata_list: ConflictMetadataList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['mergeable'] = stub[:mergeable] unless stub[:mergeable].nil?
        data['destinationCommitId'] = stub[:destination_commit_id] unless stub[:destination_commit_id].nil?
        data['sourceCommitId'] = stub[:source_commit_id] unless stub[:source_commit_id].nil?
        data['baseCommitId'] = stub[:base_commit_id] unless stub[:base_commit_id].nil?
        data['conflictMetadataList'] = ConflictMetadataList.stub(stub[:conflict_metadata_list]) unless stub[:conflict_metadata_list].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ConflictMetadataList
    class ConflictMetadataList
      def self.default(visited=[])
        return nil if visited.include?('ConflictMetadataList')
        visited = visited + ['ConflictMetadataList']
        [
          ConflictMetadata.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConflictMetadata.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetMergeOptions
    class GetMergeOptions
      def self.default(visited=[])
        {
          merge_options: MergeOptions.default(visited),
          source_commit_id: 'source_commit_id',
          destination_commit_id: 'destination_commit_id',
          base_commit_id: 'base_commit_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['mergeOptions'] = MergeOptions.stub(stub[:merge_options]) unless stub[:merge_options].nil?
        data['sourceCommitId'] = stub[:source_commit_id] unless stub[:source_commit_id].nil?
        data['destinationCommitId'] = stub[:destination_commit_id] unless stub[:destination_commit_id].nil?
        data['baseCommitId'] = stub[:base_commit_id] unless stub[:base_commit_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MergeOptions
    class MergeOptions
      def self.default(visited=[])
        return nil if visited.include?('MergeOptions')
        visited = visited + ['MergeOptions']
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

    # Operation Stubber for GetPullRequest
    class GetPullRequest
      def self.default(visited=[])
        {
          pull_request: PullRequest.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pullRequest'] = PullRequest.stub(stub[:pull_request]) unless stub[:pull_request].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetPullRequestApprovalStates
    class GetPullRequestApprovalStates
      def self.default(visited=[])
        {
          approvals: ApprovalList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['approvals'] = ApprovalList.stub(stub[:approvals]) unless stub[:approvals].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ApprovalList
    class ApprovalList
      def self.default(visited=[])
        return nil if visited.include?('ApprovalList')
        visited = visited + ['ApprovalList']
        [
          Approval.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Approval.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Approval
    class Approval
      def self.default(visited=[])
        return nil if visited.include?('Approval')
        visited = visited + ['Approval']
        {
          user_arn: 'user_arn',
          approval_state: 'approval_state',
        }
      end

      def self.stub(stub)
        stub ||= Types::Approval.new
        data = {}
        data['userArn'] = stub[:user_arn] unless stub[:user_arn].nil?
        data['approvalState'] = stub[:approval_state] unless stub[:approval_state].nil?
        data
      end
    end

    # Operation Stubber for GetPullRequestOverrideState
    class GetPullRequestOverrideState
      def self.default(visited=[])
        {
          overridden: false,
          overrider: 'overrider',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['overridden'] = stub[:overridden] unless stub[:overridden].nil?
        data['overrider'] = stub[:overrider] unless stub[:overrider].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRepository
    class GetRepository
      def self.default(visited=[])
        {
          repository_metadata: RepositoryMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['repositoryMetadata'] = RepositoryMetadata.stub(stub[:repository_metadata]) unless stub[:repository_metadata].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetRepositoryTriggers
    class GetRepositoryTriggers
      def self.default(visited=[])
        {
          configuration_id: 'configuration_id',
          triggers: RepositoryTriggersList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['configurationId'] = stub[:configuration_id] unless stub[:configuration_id].nil?
        data['triggers'] = RepositoryTriggersList.stub(stub[:triggers]) unless stub[:triggers].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RepositoryTriggersList
    class RepositoryTriggersList
      def self.default(visited=[])
        return nil if visited.include?('RepositoryTriggersList')
        visited = visited + ['RepositoryTriggersList']
        [
          RepositoryTrigger.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RepositoryTrigger.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RepositoryTrigger
    class RepositoryTrigger
      def self.default(visited=[])
        return nil if visited.include?('RepositoryTrigger')
        visited = visited + ['RepositoryTrigger']
        {
          name: 'name',
          destination_arn: 'destination_arn',
          custom_data: 'custom_data',
          branches: BranchNameList.default(visited),
          events: RepositoryTriggerEventList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositoryTrigger.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['destinationArn'] = stub[:destination_arn] unless stub[:destination_arn].nil?
        data['customData'] = stub[:custom_data] unless stub[:custom_data].nil?
        data['branches'] = BranchNameList.stub(stub[:branches]) unless stub[:branches].nil?
        data['events'] = RepositoryTriggerEventList.stub(stub[:events]) unless stub[:events].nil?
        data
      end
    end

    # List Stubber for RepositoryTriggerEventList
    class RepositoryTriggerEventList
      def self.default(visited=[])
        return nil if visited.include?('RepositoryTriggerEventList')
        visited = visited + ['RepositoryTriggerEventList']
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

    # List Stubber for BranchNameList
    class BranchNameList
      def self.default(visited=[])
        return nil if visited.include?('BranchNameList')
        visited = visited + ['BranchNameList']
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

    # Operation Stubber for ListApprovalRuleTemplates
    class ListApprovalRuleTemplates
      def self.default(visited=[])
        {
          approval_rule_template_names: ApprovalRuleTemplateNameList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['approvalRuleTemplateNames'] = ApprovalRuleTemplateNameList.stub(stub[:approval_rule_template_names]) unless stub[:approval_rule_template_names].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ApprovalRuleTemplateNameList
    class ApprovalRuleTemplateNameList
      def self.default(visited=[])
        return nil if visited.include?('ApprovalRuleTemplateNameList')
        visited = visited + ['ApprovalRuleTemplateNameList']
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

    # Operation Stubber for ListAssociatedApprovalRuleTemplatesForRepository
    class ListAssociatedApprovalRuleTemplatesForRepository
      def self.default(visited=[])
        {
          approval_rule_template_names: ApprovalRuleTemplateNameList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['approvalRuleTemplateNames'] = ApprovalRuleTemplateNameList.stub(stub[:approval_rule_template_names]) unless stub[:approval_rule_template_names].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListBranches
    class ListBranches
      def self.default(visited=[])
        {
          branches: BranchNameList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['branches'] = BranchNameList.stub(stub[:branches]) unless stub[:branches].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListPullRequests
    class ListPullRequests
      def self.default(visited=[])
        {
          pull_request_ids: PullRequestIdList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pullRequestIds'] = PullRequestIdList.stub(stub[:pull_request_ids]) unless stub[:pull_request_ids].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PullRequestIdList
    class PullRequestIdList
      def self.default(visited=[])
        return nil if visited.include?('PullRequestIdList')
        visited = visited + ['PullRequestIdList']
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

    # Operation Stubber for ListRepositories
    class ListRepositories
      def self.default(visited=[])
        {
          repositories: RepositoryNameIdPairList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['repositories'] = RepositoryNameIdPairList.stub(stub[:repositories]) unless stub[:repositories].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RepositoryNameIdPairList
    class RepositoryNameIdPairList
      def self.default(visited=[])
        return nil if visited.include?('RepositoryNameIdPairList')
        visited = visited + ['RepositoryNameIdPairList']
        [
          RepositoryNameIdPair.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RepositoryNameIdPair.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RepositoryNameIdPair
    class RepositoryNameIdPair
      def self.default(visited=[])
        return nil if visited.include?('RepositoryNameIdPair')
        visited = visited + ['RepositoryNameIdPair']
        {
          repository_name: 'repository_name',
          repository_id: 'repository_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositoryNameIdPair.new
        data = {}
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['repositoryId'] = stub[:repository_id] unless stub[:repository_id].nil?
        data
      end
    end

    # Operation Stubber for ListRepositoriesForApprovalRuleTemplate
    class ListRepositoriesForApprovalRuleTemplate
      def self.default(visited=[])
        {
          repository_names: RepositoryNameList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['repositoryNames'] = RepositoryNameList.stub(stub[:repository_names]) unless stub[:repository_names].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagsMap.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['tags'] = TagsMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for TagsMap
    class TagsMap
      def self.default(visited=[])
        return nil if visited.include?('TagsMap')
        visited = visited + ['TagsMap']
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

    # Operation Stubber for MergeBranchesByFastForward
    class MergeBranchesByFastForward
      def self.default(visited=[])
        {
          commit_id: 'commit_id',
          tree_id: 'tree_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['commitId'] = stub[:commit_id] unless stub[:commit_id].nil?
        data['treeId'] = stub[:tree_id] unless stub[:tree_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for MergeBranchesBySquash
    class MergeBranchesBySquash
      def self.default(visited=[])
        {
          commit_id: 'commit_id',
          tree_id: 'tree_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['commitId'] = stub[:commit_id] unless stub[:commit_id].nil?
        data['treeId'] = stub[:tree_id] unless stub[:tree_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for MergeBranchesByThreeWay
    class MergeBranchesByThreeWay
      def self.default(visited=[])
        {
          commit_id: 'commit_id',
          tree_id: 'tree_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['commitId'] = stub[:commit_id] unless stub[:commit_id].nil?
        data['treeId'] = stub[:tree_id] unless stub[:tree_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for MergePullRequestByFastForward
    class MergePullRequestByFastForward
      def self.default(visited=[])
        {
          pull_request: PullRequest.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pullRequest'] = PullRequest.stub(stub[:pull_request]) unless stub[:pull_request].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for MergePullRequestBySquash
    class MergePullRequestBySquash
      def self.default(visited=[])
        {
          pull_request: PullRequest.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pullRequest'] = PullRequest.stub(stub[:pull_request]) unless stub[:pull_request].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for MergePullRequestByThreeWay
    class MergePullRequestByThreeWay
      def self.default(visited=[])
        {
          pull_request: PullRequest.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pullRequest'] = PullRequest.stub(stub[:pull_request]) unless stub[:pull_request].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for OverridePullRequestApprovalRules
    class OverridePullRequestApprovalRules
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PostCommentForComparedCommit
    class PostCommentForComparedCommit
      def self.default(visited=[])
        {
          repository_name: 'repository_name',
          before_commit_id: 'before_commit_id',
          after_commit_id: 'after_commit_id',
          before_blob_id: 'before_blob_id',
          after_blob_id: 'after_blob_id',
          location: Location.default(visited),
          comment: Comment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['beforeCommitId'] = stub[:before_commit_id] unless stub[:before_commit_id].nil?
        data['afterCommitId'] = stub[:after_commit_id] unless stub[:after_commit_id].nil?
        data['beforeBlobId'] = stub[:before_blob_id] unless stub[:before_blob_id].nil?
        data['afterBlobId'] = stub[:after_blob_id] unless stub[:after_blob_id].nil?
        data['location'] = Location.stub(stub[:location]) unless stub[:location].nil?
        data['comment'] = Comment.stub(stub[:comment]) unless stub[:comment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PostCommentForPullRequest
    class PostCommentForPullRequest
      def self.default(visited=[])
        {
          repository_name: 'repository_name',
          pull_request_id: 'pull_request_id',
          before_commit_id: 'before_commit_id',
          after_commit_id: 'after_commit_id',
          before_blob_id: 'before_blob_id',
          after_blob_id: 'after_blob_id',
          location: Location.default(visited),
          comment: Comment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['repositoryName'] = stub[:repository_name] unless stub[:repository_name].nil?
        data['pullRequestId'] = stub[:pull_request_id] unless stub[:pull_request_id].nil?
        data['beforeCommitId'] = stub[:before_commit_id] unless stub[:before_commit_id].nil?
        data['afterCommitId'] = stub[:after_commit_id] unless stub[:after_commit_id].nil?
        data['beforeBlobId'] = stub[:before_blob_id] unless stub[:before_blob_id].nil?
        data['afterBlobId'] = stub[:after_blob_id] unless stub[:after_blob_id].nil?
        data['location'] = Location.stub(stub[:location]) unless stub[:location].nil?
        data['comment'] = Comment.stub(stub[:comment]) unless stub[:comment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PostCommentReply
    class PostCommentReply
      def self.default(visited=[])
        {
          comment: Comment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['comment'] = Comment.stub(stub[:comment]) unless stub[:comment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutCommentReaction
    class PutCommentReaction
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutFile
    class PutFile
      def self.default(visited=[])
        {
          commit_id: 'commit_id',
          blob_id: 'blob_id',
          tree_id: 'tree_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['commitId'] = stub[:commit_id] unless stub[:commit_id].nil?
        data['blobId'] = stub[:blob_id] unless stub[:blob_id].nil?
        data['treeId'] = stub[:tree_id] unless stub[:tree_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutRepositoryTriggers
    class PutRepositoryTriggers
      def self.default(visited=[])
        {
          configuration_id: 'configuration_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['configurationId'] = stub[:configuration_id] unless stub[:configuration_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TestRepositoryTriggers
    class TestRepositoryTriggers
      def self.default(visited=[])
        {
          successful_executions: RepositoryTriggerNameList.default(visited),
          failed_executions: RepositoryTriggerExecutionFailureList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['successfulExecutions'] = RepositoryTriggerNameList.stub(stub[:successful_executions]) unless stub[:successful_executions].nil?
        data['failedExecutions'] = RepositoryTriggerExecutionFailureList.stub(stub[:failed_executions]) unless stub[:failed_executions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for RepositoryTriggerExecutionFailureList
    class RepositoryTriggerExecutionFailureList
      def self.default(visited=[])
        return nil if visited.include?('RepositoryTriggerExecutionFailureList')
        visited = visited + ['RepositoryTriggerExecutionFailureList']
        [
          RepositoryTriggerExecutionFailure.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << RepositoryTriggerExecutionFailure.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RepositoryTriggerExecutionFailure
    class RepositoryTriggerExecutionFailure
      def self.default(visited=[])
        return nil if visited.include?('RepositoryTriggerExecutionFailure')
        visited = visited + ['RepositoryTriggerExecutionFailure']
        {
          trigger: 'trigger',
          failure_message: 'failure_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::RepositoryTriggerExecutionFailure.new
        data = {}
        data['trigger'] = stub[:trigger] unless stub[:trigger].nil?
        data['failureMessage'] = stub[:failure_message] unless stub[:failure_message].nil?
        data
      end
    end

    # List Stubber for RepositoryTriggerNameList
    class RepositoryTriggerNameList
      def self.default(visited=[])
        return nil if visited.include?('RepositoryTriggerNameList')
        visited = visited + ['RepositoryTriggerNameList']
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

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApprovalRuleTemplateContent
    class UpdateApprovalRuleTemplateContent
      def self.default(visited=[])
        {
          approval_rule_template: ApprovalRuleTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['approvalRuleTemplate'] = ApprovalRuleTemplate.stub(stub[:approval_rule_template]) unless stub[:approval_rule_template].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApprovalRuleTemplateDescription
    class UpdateApprovalRuleTemplateDescription
      def self.default(visited=[])
        {
          approval_rule_template: ApprovalRuleTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['approvalRuleTemplate'] = ApprovalRuleTemplate.stub(stub[:approval_rule_template]) unless stub[:approval_rule_template].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateApprovalRuleTemplateName
    class UpdateApprovalRuleTemplateName
      def self.default(visited=[])
        {
          approval_rule_template: ApprovalRuleTemplate.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['approvalRuleTemplate'] = ApprovalRuleTemplate.stub(stub[:approval_rule_template]) unless stub[:approval_rule_template].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateComment
    class UpdateComment
      def self.default(visited=[])
        {
          comment: Comment.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['comment'] = Comment.stub(stub[:comment]) unless stub[:comment].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDefaultBranch
    class UpdateDefaultBranch
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePullRequestApprovalRuleContent
    class UpdatePullRequestApprovalRuleContent
      def self.default(visited=[])
        {
          approval_rule: ApprovalRule.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['approvalRule'] = ApprovalRule.stub(stub[:approval_rule]) unless stub[:approval_rule].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePullRequestApprovalState
    class UpdatePullRequestApprovalState
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePullRequestDescription
    class UpdatePullRequestDescription
      def self.default(visited=[])
        {
          pull_request: PullRequest.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pullRequest'] = PullRequest.stub(stub[:pull_request]) unless stub[:pull_request].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePullRequestStatus
    class UpdatePullRequestStatus
      def self.default(visited=[])
        {
          pull_request: PullRequest.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pullRequest'] = PullRequest.stub(stub[:pull_request]) unless stub[:pull_request].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdatePullRequestTitle
    class UpdatePullRequestTitle
      def self.default(visited=[])
        {
          pull_request: PullRequest.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['pullRequest'] = PullRequest.stub(stub[:pull_request]) unless stub[:pull_request].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRepositoryDescription
    class UpdateRepositoryDescription
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRepositoryName
    class UpdateRepositoryName
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
