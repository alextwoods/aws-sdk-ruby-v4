# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeCommit
  module Validators

    class ActorDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ActorDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Approval
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Approval, context: context)
        Hearth::Validator.validate!(input[:user_arn], ::String, context: "#{context}[:user_arn]")
        Hearth::Validator.validate!(input[:approval_state], ::String, context: "#{context}[:approval_state]")
      end
    end

    class ApprovalList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Approval.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApprovalRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApprovalRule, context: context)
        Hearth::Validator.validate!(input[:approval_rule_id], ::String, context: "#{context}[:approval_rule_id]")
        Hearth::Validator.validate!(input[:approval_rule_name], ::String, context: "#{context}[:approval_rule_name]")
        Hearth::Validator.validate!(input[:approval_rule_content], ::String, context: "#{context}[:approval_rule_content]")
        Hearth::Validator.validate!(input[:rule_content_sha256], ::String, context: "#{context}[:rule_content_sha256]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_user], ::String, context: "#{context}[:last_modified_user]")
        Validators::OriginApprovalRuleTemplate.validate!(input[:origin_approval_rule_template], context: "#{context}[:origin_approval_rule_template]") unless input[:origin_approval_rule_template].nil?
      end
    end

    class ApprovalRuleContentRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApprovalRuleContentRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApprovalRuleDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApprovalRuleDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApprovalRuleEventMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApprovalRuleEventMetadata, context: context)
        Hearth::Validator.validate!(input[:approval_rule_name], ::String, context: "#{context}[:approval_rule_name]")
        Hearth::Validator.validate!(input[:approval_rule_id], ::String, context: "#{context}[:approval_rule_id]")
        Hearth::Validator.validate!(input[:approval_rule_content], ::String, context: "#{context}[:approval_rule_content]")
      end
    end

    class ApprovalRuleNameAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApprovalRuleNameAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApprovalRuleNameRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApprovalRuleNameRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApprovalRuleOverriddenEventMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApprovalRuleOverriddenEventMetadata, context: context)
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:override_status], ::String, context: "#{context}[:override_status]")
      end
    end

    class ApprovalRuleTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApprovalRuleTemplate, context: context)
        Hearth::Validator.validate!(input[:approval_rule_template_id], ::String, context: "#{context}[:approval_rule_template_id]")
        Hearth::Validator.validate!(input[:approval_rule_template_name], ::String, context: "#{context}[:approval_rule_template_name]")
        Hearth::Validator.validate!(input[:approval_rule_template_description], ::String, context: "#{context}[:approval_rule_template_description]")
        Hearth::Validator.validate!(input[:approval_rule_template_content], ::String, context: "#{context}[:approval_rule_template_content]")
        Hearth::Validator.validate!(input[:rule_content_sha256], ::String, context: "#{context}[:rule_content_sha256]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_user], ::String, context: "#{context}[:last_modified_user]")
      end
    end

    class ApprovalRuleTemplateContentRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApprovalRuleTemplateContentRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApprovalRuleTemplateDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApprovalRuleTemplateDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApprovalRuleTemplateInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApprovalRuleTemplateInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApprovalRuleTemplateNameAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApprovalRuleTemplateNameAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApprovalRuleTemplateNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ApprovalRuleTemplateNameRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApprovalRuleTemplateNameRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ApprovalRulesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ApprovalRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ApprovalRulesNotSatisfiedList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ApprovalRulesSatisfiedList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ApprovalStateChangedEventMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApprovalStateChangedEventMetadata, context: context)
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:approval_status], ::String, context: "#{context}[:approval_status]")
      end
    end

    class ApprovalStateRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ApprovalStateRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AssociateApprovalRuleTemplateWithRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateApprovalRuleTemplateWithRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:approval_rule_template_name], ::String, context: "#{context}[:approval_rule_template_name]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
      end
    end

    class AssociateApprovalRuleTemplateWithRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateApprovalRuleTemplateWithRepositoryOutput, context: context)
      end
    end

    class AuthorDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthorDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchAssociateApprovalRuleTemplateWithRepositoriesError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAssociateApprovalRuleTemplateWithRepositoriesError, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchAssociateApprovalRuleTemplateWithRepositoriesError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchAssociateApprovalRuleTemplateWithRepositoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAssociateApprovalRuleTemplateWithRepositoriesInput, context: context)
        Hearth::Validator.validate!(input[:approval_rule_template_name], ::String, context: "#{context}[:approval_rule_template_name]")
        Validators::RepositoryNameList.validate!(input[:repository_names], context: "#{context}[:repository_names]") unless input[:repository_names].nil?
      end
    end

    class BatchAssociateApprovalRuleTemplateWithRepositoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchAssociateApprovalRuleTemplateWithRepositoriesOutput, context: context)
        Validators::RepositoryNameList.validate!(input[:associated_repository_names], context: "#{context}[:associated_repository_names]") unless input[:associated_repository_names].nil?
        Validators::BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchDescribeMergeConflictsError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDescribeMergeConflictsError, context: context)
        Hearth::Validator.validate!(input[:file_path], ::String, context: "#{context}[:file_path]")
        Hearth::Validator.validate!(input[:exception_name], ::String, context: "#{context}[:exception_name]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BatchDescribeMergeConflictsErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchDescribeMergeConflictsError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchDescribeMergeConflictsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDescribeMergeConflictsInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:destination_commit_specifier], ::String, context: "#{context}[:destination_commit_specifier]")
        Hearth::Validator.validate!(input[:source_commit_specifier], ::String, context: "#{context}[:source_commit_specifier]")
        Hearth::Validator.validate!(input[:merge_option], ::String, context: "#{context}[:merge_option]")
        Hearth::Validator.validate!(input[:max_merge_hunks], ::Integer, context: "#{context}[:max_merge_hunks]")
        Hearth::Validator.validate!(input[:max_conflict_files], ::Integer, context: "#{context}[:max_conflict_files]")
        Validators::FilePaths.validate!(input[:file_paths], context: "#{context}[:file_paths]") unless input[:file_paths].nil?
        Hearth::Validator.validate!(input[:conflict_detail_level], ::String, context: "#{context}[:conflict_detail_level]")
        Hearth::Validator.validate!(input[:conflict_resolution_strategy], ::String, context: "#{context}[:conflict_resolution_strategy]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class BatchDescribeMergeConflictsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDescribeMergeConflictsOutput, context: context)
        Validators::Conflicts.validate!(input[:conflicts], context: "#{context}[:conflicts]") unless input[:conflicts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::BatchDescribeMergeConflictsErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
        Hearth::Validator.validate!(input[:destination_commit_id], ::String, context: "#{context}[:destination_commit_id]")
        Hearth::Validator.validate!(input[:source_commit_id], ::String, context: "#{context}[:source_commit_id]")
        Hearth::Validator.validate!(input[:base_commit_id], ::String, context: "#{context}[:base_commit_id]")
      end
    end

    class BatchDisassociateApprovalRuleTemplateFromRepositoriesError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesError, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchDisassociateApprovalRuleTemplateFromRepositoriesError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchDisassociateApprovalRuleTemplateFromRepositoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesInput, context: context)
        Hearth::Validator.validate!(input[:approval_rule_template_name], ::String, context: "#{context}[:approval_rule_template_name]")
        Validators::RepositoryNameList.validate!(input[:repository_names], context: "#{context}[:repository_names]") unless input[:repository_names].nil?
      end
    end

    class BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput, context: context)
        Validators::RepositoryNameList.validate!(input[:disassociated_repository_names], context: "#{context}[:disassociated_repository_names]") unless input[:disassociated_repository_names].nil?
        Validators::BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchGetCommitsError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetCommitsError, context: context)
        Hearth::Validator.validate!(input[:commit_id], ::String, context: "#{context}[:commit_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchGetCommitsErrorsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchGetCommitsError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetCommitsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetCommitsInput, context: context)
        Validators::CommitIdsInputList.validate!(input[:commit_ids], context: "#{context}[:commit_ids]") unless input[:commit_ids].nil?
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
      end
    end

    class BatchGetCommitsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetCommitsOutput, context: context)
        Validators::CommitObjectsList.validate!(input[:commits], context: "#{context}[:commits]") unless input[:commits].nil?
        Validators::BatchGetCommitsErrorsList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class BatchGetRepositoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetRepositoriesInput, context: context)
        Validators::RepositoryNameList.validate!(input[:repository_names], context: "#{context}[:repository_names]") unless input[:repository_names].nil?
      end
    end

    class BatchGetRepositoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetRepositoriesOutput, context: context)
        Validators::RepositoryMetadataList.validate!(input[:repositories], context: "#{context}[:repositories]") unless input[:repositories].nil?
        Validators::RepositoryNotFoundList.validate!(input[:repositories_not_found], context: "#{context}[:repositories_not_found]") unless input[:repositories_not_found].nil?
      end
    end

    class BeforeCommitIdAndAfterCommitIdAreSameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BeforeCommitIdAndAfterCommitIdAreSameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BlobIdDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlobIdDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BlobIdRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlobIdRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BlobMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BlobMetadata, context: context)
        Hearth::Validator.validate!(input[:blob_id], ::String, context: "#{context}[:blob_id]")
        Hearth::Validator.validate!(input[:path], ::String, context: "#{context}[:path]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
      end
    end

    class BranchDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BranchDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BranchInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BranchInfo, context: context)
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        Hearth::Validator.validate!(input[:commit_id], ::String, context: "#{context}[:commit_id]")
      end
    end

    class BranchNameExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BranchNameExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BranchNameIsTagNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BranchNameIsTagNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class BranchNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class BranchNameRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BranchNameRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CallerReactions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CannotDeleteApprovalRuleFromTemplateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CannotDeleteApprovalRuleFromTemplateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CannotModifyApprovalRuleFromTemplateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CannotModifyApprovalRuleFromTemplateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClientRequestTokenRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientRequestTokenRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Comment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Comment, context: context)
        Hearth::Validator.validate!(input[:comment_id], ::String, context: "#{context}[:comment_id]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:in_reply_to], ::String, context: "#{context}[:in_reply_to]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:author_arn], ::String, context: "#{context}[:author_arn]")
        Hearth::Validator.validate!(input[:deleted], ::TrueClass, ::FalseClass, context: "#{context}[:deleted]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Validators::CallerReactions.validate!(input[:caller_reactions], context: "#{context}[:caller_reactions]") unless input[:caller_reactions].nil?
        Validators::ReactionCountsMap.validate!(input[:reaction_counts], context: "#{context}[:reaction_counts]") unless input[:reaction_counts].nil?
      end
    end

    class CommentContentRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommentContentRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CommentContentSizeLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommentContentSizeLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CommentDeletedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommentDeletedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CommentDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommentDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CommentIdRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommentIdRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CommentNotCreatedByCallerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommentNotCreatedByCallerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Comments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Comment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CommentsForComparedCommit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommentsForComparedCommit, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:before_commit_id], ::String, context: "#{context}[:before_commit_id]")
        Hearth::Validator.validate!(input[:after_commit_id], ::String, context: "#{context}[:after_commit_id]")
        Hearth::Validator.validate!(input[:before_blob_id], ::String, context: "#{context}[:before_blob_id]")
        Hearth::Validator.validate!(input[:after_blob_id], ::String, context: "#{context}[:after_blob_id]")
        Validators::Location.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Validators::Comments.validate!(input[:comments], context: "#{context}[:comments]") unless input[:comments].nil?
      end
    end

    class CommentsForComparedCommitData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CommentsForComparedCommit.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CommentsForPullRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommentsForPullRequest, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:before_commit_id], ::String, context: "#{context}[:before_commit_id]")
        Hearth::Validator.validate!(input[:after_commit_id], ::String, context: "#{context}[:after_commit_id]")
        Hearth::Validator.validate!(input[:before_blob_id], ::String, context: "#{context}[:before_blob_id]")
        Hearth::Validator.validate!(input[:after_blob_id], ::String, context: "#{context}[:after_blob_id]")
        Validators::Location.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Validators::Comments.validate!(input[:comments], context: "#{context}[:comments]") unless input[:comments].nil?
      end
    end

    class CommentsForPullRequestData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::CommentsForPullRequest.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Commit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Commit, context: context)
        Hearth::Validator.validate!(input[:commit_id], ::String, context: "#{context}[:commit_id]")
        Hearth::Validator.validate!(input[:tree_id], ::String, context: "#{context}[:tree_id]")
        Validators::ParentList.validate!(input[:parents], context: "#{context}[:parents]") unless input[:parents].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Validators::UserInfo.validate!(input[:author], context: "#{context}[:author]") unless input[:author].nil?
        Validators::UserInfo.validate!(input[:committer], context: "#{context}[:committer]") unless input[:committer].nil?
        Hearth::Validator.validate!(input[:additional_data], ::String, context: "#{context}[:additional_data]")
      end
    end

    class CommitDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommitDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CommitIdDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommitIdDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CommitIdRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommitIdRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CommitIdsInputList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CommitIdsLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommitIdsLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CommitIdsListRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommitIdsListRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CommitMessageLengthExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommitMessageLengthExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CommitObjectsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Commit.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CommitRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CommitRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConcurrentReferenceUpdateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentReferenceUpdateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Conflict
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Conflict, context: context)
        Validators::ConflictMetadata.validate!(input[:conflict_metadata], context: "#{context}[:conflict_metadata]") unless input[:conflict_metadata].nil?
        Validators::MergeHunks.validate!(input[:merge_hunks], context: "#{context}[:merge_hunks]") unless input[:merge_hunks].nil?
      end
    end

    class ConflictMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictMetadata, context: context)
        Hearth::Validator.validate!(input[:file_path], ::String, context: "#{context}[:file_path]")
        Validators::FileSizes.validate!(input[:file_sizes], context: "#{context}[:file_sizes]") unless input[:file_sizes].nil?
        Validators::FileModes.validate!(input[:file_modes], context: "#{context}[:file_modes]") unless input[:file_modes].nil?
        Validators::ObjectTypes.validate!(input[:object_types], context: "#{context}[:object_types]") unless input[:object_types].nil?
        Hearth::Validator.validate!(input[:number_of_conflicts], ::Integer, context: "#{context}[:number_of_conflicts]")
        Validators::IsBinaryFile.validate!(input[:is_binary_file], context: "#{context}[:is_binary_file]") unless input[:is_binary_file].nil?
        Hearth::Validator.validate!(input[:content_conflict], ::TrueClass, ::FalseClass, context: "#{context}[:content_conflict]")
        Hearth::Validator.validate!(input[:file_mode_conflict], ::TrueClass, ::FalseClass, context: "#{context}[:file_mode_conflict]")
        Hearth::Validator.validate!(input[:object_type_conflict], ::TrueClass, ::FalseClass, context: "#{context}[:object_type_conflict]")
        Validators::MergeOperations.validate!(input[:merge_operations], context: "#{context}[:merge_operations]") unless input[:merge_operations].nil?
      end
    end

    class ConflictMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConflictMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictResolution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictResolution, context: context)
        Validators::ReplaceContentEntries.validate!(input[:replace_contents], context: "#{context}[:replace_contents]") unless input[:replace_contents].nil?
        Validators::DeleteFileEntries.validate!(input[:delete_files], context: "#{context}[:delete_files]") unless input[:delete_files].nil?
        Validators::SetFileModeEntries.validate!(input[:set_file_modes], context: "#{context}[:set_file_modes]") unless input[:set_file_modes].nil?
      end
    end

    class Conflicts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Conflict.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateApprovalRuleTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApprovalRuleTemplateInput, context: context)
        Hearth::Validator.validate!(input[:approval_rule_template_name], ::String, context: "#{context}[:approval_rule_template_name]")
        Hearth::Validator.validate!(input[:approval_rule_template_content], ::String, context: "#{context}[:approval_rule_template_content]")
        Hearth::Validator.validate!(input[:approval_rule_template_description], ::String, context: "#{context}[:approval_rule_template_description]")
      end
    end

    class CreateApprovalRuleTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateApprovalRuleTemplateOutput, context: context)
        Validators::ApprovalRuleTemplate.validate!(input[:approval_rule_template], context: "#{context}[:approval_rule_template]") unless input[:approval_rule_template].nil?
      end
    end

    class CreateBranchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBranchInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        Hearth::Validator.validate!(input[:commit_id], ::String, context: "#{context}[:commit_id]")
      end
    end

    class CreateBranchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBranchOutput, context: context)
      end
    end

    class CreateCommitInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCommitInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        Hearth::Validator.validate!(input[:parent_commit_id], ::String, context: "#{context}[:parent_commit_id]")
        Hearth::Validator.validate!(input[:author_name], ::String, context: "#{context}[:author_name]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:commit_message], ::String, context: "#{context}[:commit_message]")
        Hearth::Validator.validate!(input[:keep_empty_folders], ::TrueClass, ::FalseClass, context: "#{context}[:keep_empty_folders]")
        Validators::PutFileEntries.validate!(input[:put_files], context: "#{context}[:put_files]") unless input[:put_files].nil?
        Validators::DeleteFileEntries.validate!(input[:delete_files], context: "#{context}[:delete_files]") unless input[:delete_files].nil?
        Validators::SetFileModeEntries.validate!(input[:set_file_modes], context: "#{context}[:set_file_modes]") unless input[:set_file_modes].nil?
      end
    end

    class CreateCommitOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateCommitOutput, context: context)
        Hearth::Validator.validate!(input[:commit_id], ::String, context: "#{context}[:commit_id]")
        Hearth::Validator.validate!(input[:tree_id], ::String, context: "#{context}[:tree_id]")
        Validators::FilesMetadata.validate!(input[:files_added], context: "#{context}[:files_added]") unless input[:files_added].nil?
        Validators::FilesMetadata.validate!(input[:files_updated], context: "#{context}[:files_updated]") unless input[:files_updated].nil?
        Validators::FilesMetadata.validate!(input[:files_deleted], context: "#{context}[:files_deleted]") unless input[:files_deleted].nil?
      end
    end

    class CreatePullRequestApprovalRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePullRequestApprovalRuleInput, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:approval_rule_name], ::String, context: "#{context}[:approval_rule_name]")
        Hearth::Validator.validate!(input[:approval_rule_content], ::String, context: "#{context}[:approval_rule_content]")
      end
    end

    class CreatePullRequestApprovalRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePullRequestApprovalRuleOutput, context: context)
        Validators::ApprovalRule.validate!(input[:approval_rule], context: "#{context}[:approval_rule]") unless input[:approval_rule].nil?
      end
    end

    class CreatePullRequestInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePullRequestInput, context: context)
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::TargetList.validate!(input[:targets], context: "#{context}[:targets]") unless input[:targets].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class CreatePullRequestOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePullRequestOutput, context: context)
        Validators::PullRequest.validate!(input[:pull_request], context: "#{context}[:pull_request]") unless input[:pull_request].nil?
      end
    end

    class CreateRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:repository_description], ::String, context: "#{context}[:repository_description]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateRepositoryOutput, context: context)
        Validators::RepositoryMetadata.validate!(input[:repository_metadata], context: "#{context}[:repository_metadata]") unless input[:repository_metadata].nil?
      end
    end

    class CreateUnreferencedMergeCommitInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUnreferencedMergeCommitInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:source_commit_specifier], ::String, context: "#{context}[:source_commit_specifier]")
        Hearth::Validator.validate!(input[:destination_commit_specifier], ::String, context: "#{context}[:destination_commit_specifier]")
        Hearth::Validator.validate!(input[:merge_option], ::String, context: "#{context}[:merge_option]")
        Hearth::Validator.validate!(input[:conflict_detail_level], ::String, context: "#{context}[:conflict_detail_level]")
        Hearth::Validator.validate!(input[:conflict_resolution_strategy], ::String, context: "#{context}[:conflict_resolution_strategy]")
        Hearth::Validator.validate!(input[:author_name], ::String, context: "#{context}[:author_name]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:commit_message], ::String, context: "#{context}[:commit_message]")
        Hearth::Validator.validate!(input[:keep_empty_folders], ::TrueClass, ::FalseClass, context: "#{context}[:keep_empty_folders]")
        Validators::ConflictResolution.validate!(input[:conflict_resolution], context: "#{context}[:conflict_resolution]") unless input[:conflict_resolution].nil?
      end
    end

    class CreateUnreferencedMergeCommitOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateUnreferencedMergeCommitOutput, context: context)
        Hearth::Validator.validate!(input[:commit_id], ::String, context: "#{context}[:commit_id]")
        Hearth::Validator.validate!(input[:tree_id], ::String, context: "#{context}[:tree_id]")
      end
    end

    class DefaultBranchCannotBeDeletedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DefaultBranchCannotBeDeletedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteApprovalRuleTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApprovalRuleTemplateInput, context: context)
        Hearth::Validator.validate!(input[:approval_rule_template_name], ::String, context: "#{context}[:approval_rule_template_name]")
      end
    end

    class DeleteApprovalRuleTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteApprovalRuleTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:approval_rule_template_id], ::String, context: "#{context}[:approval_rule_template_id]")
      end
    end

    class DeleteBranchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBranchInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
      end
    end

    class DeleteBranchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBranchOutput, context: context)
        Validators::BranchInfo.validate!(input[:deleted_branch], context: "#{context}[:deleted_branch]") unless input[:deleted_branch].nil?
      end
    end

    class DeleteCommentContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCommentContentInput, context: context)
        Hearth::Validator.validate!(input[:comment_id], ::String, context: "#{context}[:comment_id]")
      end
    end

    class DeleteCommentContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteCommentContentOutput, context: context)
        Validators::Comment.validate!(input[:comment], context: "#{context}[:comment]") unless input[:comment].nil?
      end
    end

    class DeleteFileEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DeleteFileEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteFileEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFileEntry, context: context)
        Hearth::Validator.validate!(input[:file_path], ::String, context: "#{context}[:file_path]")
      end
    end

    class DeleteFileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFileInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        Hearth::Validator.validate!(input[:file_path], ::String, context: "#{context}[:file_path]")
        Hearth::Validator.validate!(input[:parent_commit_id], ::String, context: "#{context}[:parent_commit_id]")
        Hearth::Validator.validate!(input[:keep_empty_folders], ::TrueClass, ::FalseClass, context: "#{context}[:keep_empty_folders]")
        Hearth::Validator.validate!(input[:commit_message], ::String, context: "#{context}[:commit_message]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
      end
    end

    class DeleteFileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFileOutput, context: context)
        Hearth::Validator.validate!(input[:commit_id], ::String, context: "#{context}[:commit_id]")
        Hearth::Validator.validate!(input[:blob_id], ::String, context: "#{context}[:blob_id]")
        Hearth::Validator.validate!(input[:tree_id], ::String, context: "#{context}[:tree_id]")
        Hearth::Validator.validate!(input[:file_path], ::String, context: "#{context}[:file_path]")
      end
    end

    class DeletePullRequestApprovalRuleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePullRequestApprovalRuleInput, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:approval_rule_name], ::String, context: "#{context}[:approval_rule_name]")
      end
    end

    class DeletePullRequestApprovalRuleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePullRequestApprovalRuleOutput, context: context)
        Hearth::Validator.validate!(input[:approval_rule_id], ::String, context: "#{context}[:approval_rule_id]")
      end
    end

    class DeleteRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
      end
    end

    class DeleteRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteRepositoryOutput, context: context)
        Hearth::Validator.validate!(input[:repository_id], ::String, context: "#{context}[:repository_id]")
      end
    end

    class DescribeMergeConflictsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMergeConflictsInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:destination_commit_specifier], ::String, context: "#{context}[:destination_commit_specifier]")
        Hearth::Validator.validate!(input[:source_commit_specifier], ::String, context: "#{context}[:source_commit_specifier]")
        Hearth::Validator.validate!(input[:merge_option], ::String, context: "#{context}[:merge_option]")
        Hearth::Validator.validate!(input[:max_merge_hunks], ::Integer, context: "#{context}[:max_merge_hunks]")
        Hearth::Validator.validate!(input[:file_path], ::String, context: "#{context}[:file_path]")
        Hearth::Validator.validate!(input[:conflict_detail_level], ::String, context: "#{context}[:conflict_detail_level]")
        Hearth::Validator.validate!(input[:conflict_resolution_strategy], ::String, context: "#{context}[:conflict_resolution_strategy]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMergeConflictsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMergeConflictsOutput, context: context)
        Validators::ConflictMetadata.validate!(input[:conflict_metadata], context: "#{context}[:conflict_metadata]") unless input[:conflict_metadata].nil?
        Validators::MergeHunks.validate!(input[:merge_hunks], context: "#{context}[:merge_hunks]") unless input[:merge_hunks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:destination_commit_id], ::String, context: "#{context}[:destination_commit_id]")
        Hearth::Validator.validate!(input[:source_commit_id], ::String, context: "#{context}[:source_commit_id]")
        Hearth::Validator.validate!(input[:base_commit_id], ::String, context: "#{context}[:base_commit_id]")
      end
    end

    class DescribePullRequestEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePullRequestEventsInput, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:pull_request_event_type], ::String, context: "#{context}[:pull_request_event_type]")
        Hearth::Validator.validate!(input[:actor_arn], ::String, context: "#{context}[:actor_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribePullRequestEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePullRequestEventsOutput, context: context)
        Validators::PullRequestEventList.validate!(input[:pull_request_events], context: "#{context}[:pull_request_events]") unless input[:pull_request_events].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class Difference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Difference, context: context)
        Validators::BlobMetadata.validate!(input[:before_blob], context: "#{context}[:before_blob]") unless input[:before_blob].nil?
        Validators::BlobMetadata.validate!(input[:after_blob], context: "#{context}[:after_blob]") unless input[:after_blob].nil?
        Hearth::Validator.validate!(input[:change_type], ::String, context: "#{context}[:change_type]")
      end
    end

    class DifferenceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Difference.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DirectoryNameConflictsWithFileNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DirectoryNameConflictsWithFileNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DisassociateApprovalRuleTemplateFromRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateApprovalRuleTemplateFromRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:approval_rule_template_name], ::String, context: "#{context}[:approval_rule_template_name]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
      end
    end

    class DisassociateApprovalRuleTemplateFromRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateApprovalRuleTemplateFromRepositoryOutput, context: context)
      end
    end

    class EncryptionIntegrityChecksFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionIntegrityChecksFailedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EncryptionKeyAccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionKeyAccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EncryptionKeyDisabledException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionKeyDisabledException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EncryptionKeyNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionKeyNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EncryptionKeyUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EncryptionKeyUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EvaluatePullRequestApprovalRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluatePullRequestApprovalRulesInput, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class EvaluatePullRequestApprovalRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EvaluatePullRequestApprovalRulesOutput, context: context)
        Validators::Evaluation.validate!(input[:evaluation], context: "#{context}[:evaluation]") unless input[:evaluation].nil?
      end
    end

    class Evaluation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Evaluation, context: context)
        Hearth::Validator.validate!(input[:approved], ::TrueClass, ::FalseClass, context: "#{context}[:approved]")
        Hearth::Validator.validate!(input[:overridden], ::TrueClass, ::FalseClass, context: "#{context}[:overridden]")
        Validators::ApprovalRulesSatisfiedList.validate!(input[:approval_rules_satisfied], context: "#{context}[:approval_rules_satisfied]") unless input[:approval_rules_satisfied].nil?
        Validators::ApprovalRulesNotSatisfiedList.validate!(input[:approval_rules_not_satisfied], context: "#{context}[:approval_rules_not_satisfied]") unless input[:approval_rules_not_satisfied].nil?
      end
    end

    class File
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::File, context: context)
        Hearth::Validator.validate!(input[:blob_id], ::String, context: "#{context}[:blob_id]")
        Hearth::Validator.validate!(input[:absolute_path], ::String, context: "#{context}[:absolute_path]")
        Hearth::Validator.validate!(input[:relative_path], ::String, context: "#{context}[:relative_path]")
        Hearth::Validator.validate!(input[:file_mode], ::String, context: "#{context}[:file_mode]")
      end
    end

    class FileContentAndSourceFileSpecifiedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileContentAndSourceFileSpecifiedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FileContentRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileContentRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FileContentSizeLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileContentSizeLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FileDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FileEntryRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileEntryRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FileList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::File.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FileMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileMetadata, context: context)
        Hearth::Validator.validate!(input[:absolute_path], ::String, context: "#{context}[:absolute_path]")
        Hearth::Validator.validate!(input[:blob_id], ::String, context: "#{context}[:blob_id]")
        Hearth::Validator.validate!(input[:file_mode], ::String, context: "#{context}[:file_mode]")
      end
    end

    class FileModeRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileModeRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FileModes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileModes, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        Hearth::Validator.validate!(input[:base], ::String, context: "#{context}[:base]")
      end
    end

    class FileNameConflictsWithDirectoryNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileNameConflictsWithDirectoryNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FilePathConflictsWithSubmodulePathException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilePathConflictsWithSubmodulePathException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FilePaths
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FileSizes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileSizes, context: context)
        Hearth::Validator.validate!(input[:source], ::Integer, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:destination], ::Integer, context: "#{context}[:destination]")
        Hearth::Validator.validate!(input[:base], ::Integer, context: "#{context}[:base]")
      end
    end

    class FileTooLargeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FileTooLargeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FilesMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FileMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Folder
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Folder, context: context)
        Hearth::Validator.validate!(input[:tree_id], ::String, context: "#{context}[:tree_id]")
        Hearth::Validator.validate!(input[:absolute_path], ::String, context: "#{context}[:absolute_path]")
        Hearth::Validator.validate!(input[:relative_path], ::String, context: "#{context}[:relative_path]")
      end
    end

    class FolderContentSizeLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FolderContentSizeLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FolderDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FolderDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FolderList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Folder.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetApprovalRuleTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApprovalRuleTemplateInput, context: context)
        Hearth::Validator.validate!(input[:approval_rule_template_name], ::String, context: "#{context}[:approval_rule_template_name]")
      end
    end

    class GetApprovalRuleTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetApprovalRuleTemplateOutput, context: context)
        Validators::ApprovalRuleTemplate.validate!(input[:approval_rule_template], context: "#{context}[:approval_rule_template]") unless input[:approval_rule_template].nil?
      end
    end

    class GetBlobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBlobInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:blob_id], ::String, context: "#{context}[:blob_id]")
      end
    end

    class GetBlobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBlobOutput, context: context)
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
      end
    end

    class GetBranchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBranchInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
      end
    end

    class GetBranchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetBranchOutput, context: context)
        Validators::BranchInfo.validate!(input[:branch], context: "#{context}[:branch]") unless input[:branch].nil?
      end
    end

    class GetCommentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCommentInput, context: context)
        Hearth::Validator.validate!(input[:comment_id], ::String, context: "#{context}[:comment_id]")
      end
    end

    class GetCommentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCommentOutput, context: context)
        Validators::Comment.validate!(input[:comment], context: "#{context}[:comment]") unless input[:comment].nil?
      end
    end

    class GetCommentReactionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCommentReactionsInput, context: context)
        Hearth::Validator.validate!(input[:comment_id], ::String, context: "#{context}[:comment_id]")
        Hearth::Validator.validate!(input[:reaction_user_arn], ::String, context: "#{context}[:reaction_user_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetCommentReactionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCommentReactionsOutput, context: context)
        Validators::ReactionsForCommentList.validate!(input[:reactions_for_comment], context: "#{context}[:reactions_for_comment]") unless input[:reactions_for_comment].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetCommentsForComparedCommitInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCommentsForComparedCommitInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:before_commit_id], ::String, context: "#{context}[:before_commit_id]")
        Hearth::Validator.validate!(input[:after_commit_id], ::String, context: "#{context}[:after_commit_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetCommentsForComparedCommitOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCommentsForComparedCommitOutput, context: context)
        Validators::CommentsForComparedCommitData.validate!(input[:comments_for_compared_commit_data], context: "#{context}[:comments_for_compared_commit_data]") unless input[:comments_for_compared_commit_data].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetCommentsForPullRequestInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCommentsForPullRequestInput, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:before_commit_id], ::String, context: "#{context}[:before_commit_id]")
        Hearth::Validator.validate!(input[:after_commit_id], ::String, context: "#{context}[:after_commit_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetCommentsForPullRequestOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCommentsForPullRequestOutput, context: context)
        Validators::CommentsForPullRequestData.validate!(input[:comments_for_pull_request_data], context: "#{context}[:comments_for_pull_request_data]") unless input[:comments_for_pull_request_data].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetCommitInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCommitInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:commit_id], ::String, context: "#{context}[:commit_id]")
      end
    end

    class GetCommitOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetCommitOutput, context: context)
        Validators::Commit.validate!(input[:commit], context: "#{context}[:commit]") unless input[:commit].nil?
      end
    end

    class GetDifferencesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDifferencesInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:before_commit_specifier], ::String, context: "#{context}[:before_commit_specifier]")
        Hearth::Validator.validate!(input[:after_commit_specifier], ::String, context: "#{context}[:after_commit_specifier]")
        Hearth::Validator.validate!(input[:before_path], ::String, context: "#{context}[:before_path]")
        Hearth::Validator.validate!(input[:after_path], ::String, context: "#{context}[:after_path]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetDifferencesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDifferencesOutput, context: context)
        Validators::DifferenceList.validate!(input[:differences], context: "#{context}[:differences]") unless input[:differences].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetFileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFileInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:commit_specifier], ::String, context: "#{context}[:commit_specifier]")
        Hearth::Validator.validate!(input[:file_path], ::String, context: "#{context}[:file_path]")
      end
    end

    class GetFileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFileOutput, context: context)
        Hearth::Validator.validate!(input[:commit_id], ::String, context: "#{context}[:commit_id]")
        Hearth::Validator.validate!(input[:blob_id], ::String, context: "#{context}[:blob_id]")
        Hearth::Validator.validate!(input[:file_path], ::String, context: "#{context}[:file_path]")
        Hearth::Validator.validate!(input[:file_mode], ::String, context: "#{context}[:file_mode]")
        Hearth::Validator.validate!(input[:file_size], ::Integer, context: "#{context}[:file_size]")
        Hearth::Validator.validate!(input[:file_content], ::String, context: "#{context}[:file_content]")
      end
    end

    class GetFolderInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFolderInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:commit_specifier], ::String, context: "#{context}[:commit_specifier]")
        Hearth::Validator.validate!(input[:folder_path], ::String, context: "#{context}[:folder_path]")
      end
    end

    class GetFolderOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetFolderOutput, context: context)
        Hearth::Validator.validate!(input[:commit_id], ::String, context: "#{context}[:commit_id]")
        Hearth::Validator.validate!(input[:folder_path], ::String, context: "#{context}[:folder_path]")
        Hearth::Validator.validate!(input[:tree_id], ::String, context: "#{context}[:tree_id]")
        Validators::FolderList.validate!(input[:sub_folders], context: "#{context}[:sub_folders]") unless input[:sub_folders].nil?
        Validators::FileList.validate!(input[:files], context: "#{context}[:files]") unless input[:files].nil?
        Validators::SymbolicLinkList.validate!(input[:symbolic_links], context: "#{context}[:symbolic_links]") unless input[:symbolic_links].nil?
        Validators::SubModuleList.validate!(input[:sub_modules], context: "#{context}[:sub_modules]") unless input[:sub_modules].nil?
      end
    end

    class GetMergeCommitInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMergeCommitInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:source_commit_specifier], ::String, context: "#{context}[:source_commit_specifier]")
        Hearth::Validator.validate!(input[:destination_commit_specifier], ::String, context: "#{context}[:destination_commit_specifier]")
        Hearth::Validator.validate!(input[:conflict_detail_level], ::String, context: "#{context}[:conflict_detail_level]")
        Hearth::Validator.validate!(input[:conflict_resolution_strategy], ::String, context: "#{context}[:conflict_resolution_strategy]")
      end
    end

    class GetMergeCommitOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMergeCommitOutput, context: context)
        Hearth::Validator.validate!(input[:source_commit_id], ::String, context: "#{context}[:source_commit_id]")
        Hearth::Validator.validate!(input[:destination_commit_id], ::String, context: "#{context}[:destination_commit_id]")
        Hearth::Validator.validate!(input[:base_commit_id], ::String, context: "#{context}[:base_commit_id]")
        Hearth::Validator.validate!(input[:merged_commit_id], ::String, context: "#{context}[:merged_commit_id]")
      end
    end

    class GetMergeConflictsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMergeConflictsInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:destination_commit_specifier], ::String, context: "#{context}[:destination_commit_specifier]")
        Hearth::Validator.validate!(input[:source_commit_specifier], ::String, context: "#{context}[:source_commit_specifier]")
        Hearth::Validator.validate!(input[:merge_option], ::String, context: "#{context}[:merge_option]")
        Hearth::Validator.validate!(input[:conflict_detail_level], ::String, context: "#{context}[:conflict_detail_level]")
        Hearth::Validator.validate!(input[:max_conflict_files], ::Integer, context: "#{context}[:max_conflict_files]")
        Hearth::Validator.validate!(input[:conflict_resolution_strategy], ::String, context: "#{context}[:conflict_resolution_strategy]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetMergeConflictsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMergeConflictsOutput, context: context)
        Hearth::Validator.validate!(input[:mergeable], ::TrueClass, ::FalseClass, context: "#{context}[:mergeable]")
        Hearth::Validator.validate!(input[:destination_commit_id], ::String, context: "#{context}[:destination_commit_id]")
        Hearth::Validator.validate!(input[:source_commit_id], ::String, context: "#{context}[:source_commit_id]")
        Hearth::Validator.validate!(input[:base_commit_id], ::String, context: "#{context}[:base_commit_id]")
        Validators::ConflictMetadataList.validate!(input[:conflict_metadata_list], context: "#{context}[:conflict_metadata_list]") unless input[:conflict_metadata_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GetMergeOptionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMergeOptionsInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:source_commit_specifier], ::String, context: "#{context}[:source_commit_specifier]")
        Hearth::Validator.validate!(input[:destination_commit_specifier], ::String, context: "#{context}[:destination_commit_specifier]")
        Hearth::Validator.validate!(input[:conflict_detail_level], ::String, context: "#{context}[:conflict_detail_level]")
        Hearth::Validator.validate!(input[:conflict_resolution_strategy], ::String, context: "#{context}[:conflict_resolution_strategy]")
      end
    end

    class GetMergeOptionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMergeOptionsOutput, context: context)
        Validators::MergeOptions.validate!(input[:merge_options], context: "#{context}[:merge_options]") unless input[:merge_options].nil?
        Hearth::Validator.validate!(input[:source_commit_id], ::String, context: "#{context}[:source_commit_id]")
        Hearth::Validator.validate!(input[:destination_commit_id], ::String, context: "#{context}[:destination_commit_id]")
        Hearth::Validator.validate!(input[:base_commit_id], ::String, context: "#{context}[:base_commit_id]")
      end
    end

    class GetPullRequestApprovalStatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPullRequestApprovalStatesInput, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class GetPullRequestApprovalStatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPullRequestApprovalStatesOutput, context: context)
        Validators::ApprovalList.validate!(input[:approvals], context: "#{context}[:approvals]") unless input[:approvals].nil?
      end
    end

    class GetPullRequestInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPullRequestInput, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
      end
    end

    class GetPullRequestOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPullRequestOutput, context: context)
        Validators::PullRequest.validate!(input[:pull_request], context: "#{context}[:pull_request]") unless input[:pull_request].nil?
      end
    end

    class GetPullRequestOverrideStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPullRequestOverrideStateInput, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
      end
    end

    class GetPullRequestOverrideStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPullRequestOverrideStateOutput, context: context)
        Hearth::Validator.validate!(input[:overridden], ::TrueClass, ::FalseClass, context: "#{context}[:overridden]")
        Hearth::Validator.validate!(input[:overrider], ::String, context: "#{context}[:overrider]")
      end
    end

    class GetRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
      end
    end

    class GetRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRepositoryOutput, context: context)
        Validators::RepositoryMetadata.validate!(input[:repository_metadata], context: "#{context}[:repository_metadata]") unless input[:repository_metadata].nil?
      end
    end

    class GetRepositoryTriggersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRepositoryTriggersInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
      end
    end

    class GetRepositoryTriggersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRepositoryTriggersOutput, context: context)
        Hearth::Validator.validate!(input[:configuration_id], ::String, context: "#{context}[:configuration_id]")
        Validators::RepositoryTriggersList.validate!(input[:triggers], context: "#{context}[:triggers]") unless input[:triggers].nil?
      end
    end

    class IdempotencyParameterMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdempotencyParameterMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidActorArnException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidActorArnException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidApprovalRuleContentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidApprovalRuleContentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidApprovalRuleNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidApprovalRuleNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidApprovalRuleTemplateContentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidApprovalRuleTemplateContentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidApprovalRuleTemplateDescriptionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidApprovalRuleTemplateDescriptionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidApprovalRuleTemplateNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidApprovalRuleTemplateNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidApprovalStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidApprovalStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidAuthorArnException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAuthorArnException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidBlobIdException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidBlobIdException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidBranchNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidBranchNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidClientRequestTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidClientRequestTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidCommentIdException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCommentIdException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidCommitException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCommitException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidCommitIdException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCommitIdException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidConflictDetailLevelException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidConflictDetailLevelException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidConflictResolutionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidConflictResolutionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidConflictResolutionStrategyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidConflictResolutionStrategyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidContinuationTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidContinuationTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDeletionParameterException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDeletionParameterException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDescriptionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDescriptionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidDestinationCommitSpecifierException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidDestinationCommitSpecifierException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidEmailException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidEmailException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidFileLocationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidFileLocationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidFileModeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidFileModeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidFilePositionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidFilePositionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidMaxConflictFilesException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidMaxConflictFilesException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidMaxMergeHunksException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidMaxMergeHunksException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidMaxResultsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidMaxResultsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidMergeOptionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidMergeOptionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOrderException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOrderException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidOverrideStatusException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidOverrideStatusException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidParentCommitIdException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidParentCommitIdException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPathException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPathException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPullRequestEventTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPullRequestEventTypeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPullRequestIdException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPullRequestIdException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPullRequestStatusException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPullRequestStatusException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidPullRequestStatusUpdateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidPullRequestStatusUpdateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidReactionUserArnException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidReactionUserArnException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidReactionValueException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidReactionValueException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidReferenceNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidReferenceNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRelativeFileVersionEnumException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRelativeFileVersionEnumException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidReplacementContentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidReplacementContentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidReplacementTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidReplacementTypeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRepositoryDescriptionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRepositoryDescriptionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRepositoryNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRepositoryNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRepositoryTriggerBranchNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRepositoryTriggerBranchNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRepositoryTriggerCustomDataException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRepositoryTriggerCustomDataException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRepositoryTriggerDestinationArnException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRepositoryTriggerDestinationArnException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRepositoryTriggerEventsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRepositoryTriggerEventsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRepositoryTriggerNameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRepositoryTriggerNameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRepositoryTriggerRegionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRepositoryTriggerRegionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidResourceArnException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidResourceArnException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRevisionIdException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRevisionIdException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRuleContentSha256Exception
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRuleContentSha256Exception, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSortByException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSortByException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSourceCommitSpecifierException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSourceCommitSpecifierException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidSystemTagUsageException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidSystemTagUsageException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTagKeysListException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTagKeysListException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTagsMapException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTagsMapException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTargetBranchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTargetBranchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTargetException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTargetException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTargetsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTargetsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidTitleException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidTitleException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IsBinaryFile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IsBinaryFile, context: context)
        Hearth::Validator.validate!(input[:source], ::TrueClass, ::FalseClass, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:destination], ::TrueClass, ::FalseClass, context: "#{context}[:destination]")
        Hearth::Validator.validate!(input[:base], ::TrueClass, ::FalseClass, context: "#{context}[:base]")
      end
    end

    class ListApprovalRuleTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApprovalRuleTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListApprovalRuleTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListApprovalRuleTemplatesOutput, context: context)
        Validators::ApprovalRuleTemplateNameList.validate!(input[:approval_rule_template_names], context: "#{context}[:approval_rule_template_names]") unless input[:approval_rule_template_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssociatedApprovalRuleTemplatesForRepositoryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociatedApprovalRuleTemplatesForRepositoryInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAssociatedApprovalRuleTemplatesForRepositoryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssociatedApprovalRuleTemplatesForRepositoryOutput, context: context)
        Validators::ApprovalRuleTemplateNameList.validate!(input[:approval_rule_template_names], context: "#{context}[:approval_rule_template_names]") unless input[:approval_rule_template_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBranchesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBranchesInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBranchesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBranchesOutput, context: context)
        Validators::BranchNameList.validate!(input[:branches], context: "#{context}[:branches]") unless input[:branches].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListPullRequestsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPullRequestsInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:author_arn], ::String, context: "#{context}[:author_arn]")
        Hearth::Validator.validate!(input[:pull_request_status], ::String, context: "#{context}[:pull_request_status]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListPullRequestsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListPullRequestsOutput, context: context)
        Validators::PullRequestIdList.validate!(input[:pull_request_ids], context: "#{context}[:pull_request_ids]") unless input[:pull_request_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRepositoriesForApprovalRuleTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRepositoriesForApprovalRuleTemplateInput, context: context)
        Hearth::Validator.validate!(input[:approval_rule_template_name], ::String, context: "#{context}[:approval_rule_template_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListRepositoriesForApprovalRuleTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRepositoriesForApprovalRuleTemplateOutput, context: context)
        Validators::RepositoryNameList.validate!(input[:repository_names], context: "#{context}[:repository_names]") unless input[:repository_names].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListRepositoriesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRepositoriesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:sort_by], ::String, context: "#{context}[:sort_by]")
        Hearth::Validator.validate!(input[:order], ::String, context: "#{context}[:order]")
      end
    end

    class ListRepositoriesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListRepositoriesOutput, context: context)
        Validators::RepositoryNameIdPairList.validate!(input[:repositories], context: "#{context}[:repositories]") unless input[:repositories].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Location, context: context)
        Hearth::Validator.validate!(input[:file_path], ::String, context: "#{context}[:file_path]")
        Hearth::Validator.validate!(input[:file_position], ::Integer, context: "#{context}[:file_position]")
        Hearth::Validator.validate!(input[:relative_file_version], ::String, context: "#{context}[:relative_file_version]")
      end
    end

    class ManualMergeRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ManualMergeRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaximumBranchesExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaximumBranchesExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaximumConflictResolutionEntriesExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaximumConflictResolutionEntriesExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaximumFileContentToLoadExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaximumFileContentToLoadExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaximumFileEntriesExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaximumFileEntriesExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaximumItemsToCompareExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaximumItemsToCompareExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaximumNumberOfApprovalsExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaximumNumberOfApprovalsExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaximumOpenPullRequestsExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaximumOpenPullRequestsExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaximumRepositoryNamesExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaximumRepositoryNamesExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaximumRepositoryTriggersExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaximumRepositoryTriggersExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MaximumRuleTemplatesAssociatedWithRepositoryException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MaximumRuleTemplatesAssociatedWithRepositoryException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MergeBranchesByFastForwardInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergeBranchesByFastForwardInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:source_commit_specifier], ::String, context: "#{context}[:source_commit_specifier]")
        Hearth::Validator.validate!(input[:destination_commit_specifier], ::String, context: "#{context}[:destination_commit_specifier]")
        Hearth::Validator.validate!(input[:target_branch], ::String, context: "#{context}[:target_branch]")
      end
    end

    class MergeBranchesByFastForwardOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergeBranchesByFastForwardOutput, context: context)
        Hearth::Validator.validate!(input[:commit_id], ::String, context: "#{context}[:commit_id]")
        Hearth::Validator.validate!(input[:tree_id], ::String, context: "#{context}[:tree_id]")
      end
    end

    class MergeBranchesBySquashInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergeBranchesBySquashInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:source_commit_specifier], ::String, context: "#{context}[:source_commit_specifier]")
        Hearth::Validator.validate!(input[:destination_commit_specifier], ::String, context: "#{context}[:destination_commit_specifier]")
        Hearth::Validator.validate!(input[:target_branch], ::String, context: "#{context}[:target_branch]")
        Hearth::Validator.validate!(input[:conflict_detail_level], ::String, context: "#{context}[:conflict_detail_level]")
        Hearth::Validator.validate!(input[:conflict_resolution_strategy], ::String, context: "#{context}[:conflict_resolution_strategy]")
        Hearth::Validator.validate!(input[:author_name], ::String, context: "#{context}[:author_name]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:commit_message], ::String, context: "#{context}[:commit_message]")
        Hearth::Validator.validate!(input[:keep_empty_folders], ::TrueClass, ::FalseClass, context: "#{context}[:keep_empty_folders]")
        Validators::ConflictResolution.validate!(input[:conflict_resolution], context: "#{context}[:conflict_resolution]") unless input[:conflict_resolution].nil?
      end
    end

    class MergeBranchesBySquashOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergeBranchesBySquashOutput, context: context)
        Hearth::Validator.validate!(input[:commit_id], ::String, context: "#{context}[:commit_id]")
        Hearth::Validator.validate!(input[:tree_id], ::String, context: "#{context}[:tree_id]")
      end
    end

    class MergeBranchesByThreeWayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergeBranchesByThreeWayInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:source_commit_specifier], ::String, context: "#{context}[:source_commit_specifier]")
        Hearth::Validator.validate!(input[:destination_commit_specifier], ::String, context: "#{context}[:destination_commit_specifier]")
        Hearth::Validator.validate!(input[:target_branch], ::String, context: "#{context}[:target_branch]")
        Hearth::Validator.validate!(input[:conflict_detail_level], ::String, context: "#{context}[:conflict_detail_level]")
        Hearth::Validator.validate!(input[:conflict_resolution_strategy], ::String, context: "#{context}[:conflict_resolution_strategy]")
        Hearth::Validator.validate!(input[:author_name], ::String, context: "#{context}[:author_name]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:commit_message], ::String, context: "#{context}[:commit_message]")
        Hearth::Validator.validate!(input[:keep_empty_folders], ::TrueClass, ::FalseClass, context: "#{context}[:keep_empty_folders]")
        Validators::ConflictResolution.validate!(input[:conflict_resolution], context: "#{context}[:conflict_resolution]") unless input[:conflict_resolution].nil?
      end
    end

    class MergeBranchesByThreeWayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergeBranchesByThreeWayOutput, context: context)
        Hearth::Validator.validate!(input[:commit_id], ::String, context: "#{context}[:commit_id]")
        Hearth::Validator.validate!(input[:tree_id], ::String, context: "#{context}[:tree_id]")
      end
    end

    class MergeHunk
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergeHunk, context: context)
        Hearth::Validator.validate!(input[:is_conflict], ::TrueClass, ::FalseClass, context: "#{context}[:is_conflict]")
        Validators::MergeHunkDetail.validate!(input[:source], context: "#{context}[:source]") unless input[:source].nil?
        Validators::MergeHunkDetail.validate!(input[:destination], context: "#{context}[:destination]") unless input[:destination].nil?
        Validators::MergeHunkDetail.validate!(input[:base], context: "#{context}[:base]") unless input[:base].nil?
      end
    end

    class MergeHunkDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergeHunkDetail, context: context)
        Hearth::Validator.validate!(input[:start_line], ::Integer, context: "#{context}[:start_line]")
        Hearth::Validator.validate!(input[:end_line], ::Integer, context: "#{context}[:end_line]")
        Hearth::Validator.validate!(input[:hunk_content], ::String, context: "#{context}[:hunk_content]")
      end
    end

    class MergeHunks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MergeHunk.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MergeMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergeMetadata, context: context)
        Hearth::Validator.validate!(input[:is_merged], ::TrueClass, ::FalseClass, context: "#{context}[:is_merged]")
        Hearth::Validator.validate!(input[:merged_by], ::String, context: "#{context}[:merged_by]")
        Hearth::Validator.validate!(input[:merge_commit_id], ::String, context: "#{context}[:merge_commit_id]")
        Hearth::Validator.validate!(input[:merge_option], ::String, context: "#{context}[:merge_option]")
      end
    end

    class MergeOperations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergeOperations, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
      end
    end

    class MergeOptionRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergeOptionRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MergeOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MergePullRequestByFastForwardInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergePullRequestByFastForwardInput, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:source_commit_id], ::String, context: "#{context}[:source_commit_id]")
      end
    end

    class MergePullRequestByFastForwardOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergePullRequestByFastForwardOutput, context: context)
        Validators::PullRequest.validate!(input[:pull_request], context: "#{context}[:pull_request]") unless input[:pull_request].nil?
      end
    end

    class MergePullRequestBySquashInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergePullRequestBySquashInput, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:source_commit_id], ::String, context: "#{context}[:source_commit_id]")
        Hearth::Validator.validate!(input[:conflict_detail_level], ::String, context: "#{context}[:conflict_detail_level]")
        Hearth::Validator.validate!(input[:conflict_resolution_strategy], ::String, context: "#{context}[:conflict_resolution_strategy]")
        Hearth::Validator.validate!(input[:commit_message], ::String, context: "#{context}[:commit_message]")
        Hearth::Validator.validate!(input[:author_name], ::String, context: "#{context}[:author_name]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:keep_empty_folders], ::TrueClass, ::FalseClass, context: "#{context}[:keep_empty_folders]")
        Validators::ConflictResolution.validate!(input[:conflict_resolution], context: "#{context}[:conflict_resolution]") unless input[:conflict_resolution].nil?
      end
    end

    class MergePullRequestBySquashOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergePullRequestBySquashOutput, context: context)
        Validators::PullRequest.validate!(input[:pull_request], context: "#{context}[:pull_request]") unless input[:pull_request].nil?
      end
    end

    class MergePullRequestByThreeWayInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergePullRequestByThreeWayInput, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:source_commit_id], ::String, context: "#{context}[:source_commit_id]")
        Hearth::Validator.validate!(input[:conflict_detail_level], ::String, context: "#{context}[:conflict_detail_level]")
        Hearth::Validator.validate!(input[:conflict_resolution_strategy], ::String, context: "#{context}[:conflict_resolution_strategy]")
        Hearth::Validator.validate!(input[:commit_message], ::String, context: "#{context}[:commit_message]")
        Hearth::Validator.validate!(input[:author_name], ::String, context: "#{context}[:author_name]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:keep_empty_folders], ::TrueClass, ::FalseClass, context: "#{context}[:keep_empty_folders]")
        Validators::ConflictResolution.validate!(input[:conflict_resolution], context: "#{context}[:conflict_resolution]") unless input[:conflict_resolution].nil?
      end
    end

    class MergePullRequestByThreeWayOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergePullRequestByThreeWayOutput, context: context)
        Validators::PullRequest.validate!(input[:pull_request], context: "#{context}[:pull_request]") unless input[:pull_request].nil?
      end
    end

    class MultipleConflictResolutionEntriesException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultipleConflictResolutionEntriesException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class MultipleRepositoriesInPullRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MultipleRepositoriesInPullRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NameLengthExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NameLengthExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NoChangeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NoChangeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NumberOfRuleTemplatesExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NumberOfRuleTemplatesExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NumberOfRulesExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NumberOfRulesExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ObjectTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectTypes, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:destination], ::String, context: "#{context}[:destination]")
        Hearth::Validator.validate!(input[:base], ::String, context: "#{context}[:base]")
      end
    end

    class OriginApprovalRuleTemplate
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OriginApprovalRuleTemplate, context: context)
        Hearth::Validator.validate!(input[:approval_rule_template_id], ::String, context: "#{context}[:approval_rule_template_id]")
        Hearth::Validator.validate!(input[:approval_rule_template_name], ::String, context: "#{context}[:approval_rule_template_name]")
      end
    end

    class OverrideAlreadySetException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OverrideAlreadySetException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OverridePullRequestApprovalRulesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OverridePullRequestApprovalRulesInput, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:override_status], ::String, context: "#{context}[:override_status]")
      end
    end

    class OverridePullRequestApprovalRulesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OverridePullRequestApprovalRulesOutput, context: context)
      end
    end

    class OverrideStatusRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OverrideStatusRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ParentCommitDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParentCommitDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ParentCommitIdOutdatedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParentCommitIdOutdatedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ParentCommitIdRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ParentCommitIdRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ParentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PathDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PathDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PathRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PathRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PostCommentForComparedCommitInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PostCommentForComparedCommitInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:before_commit_id], ::String, context: "#{context}[:before_commit_id]")
        Hearth::Validator.validate!(input[:after_commit_id], ::String, context: "#{context}[:after_commit_id]")
        Validators::Location.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class PostCommentForComparedCommitOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PostCommentForComparedCommitOutput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:before_commit_id], ::String, context: "#{context}[:before_commit_id]")
        Hearth::Validator.validate!(input[:after_commit_id], ::String, context: "#{context}[:after_commit_id]")
        Hearth::Validator.validate!(input[:before_blob_id], ::String, context: "#{context}[:before_blob_id]")
        Hearth::Validator.validate!(input[:after_blob_id], ::String, context: "#{context}[:after_blob_id]")
        Validators::Location.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Validators::Comment.validate!(input[:comment], context: "#{context}[:comment]") unless input[:comment].nil?
      end
    end

    class PostCommentForPullRequestInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PostCommentForPullRequestInput, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:before_commit_id], ::String, context: "#{context}[:before_commit_id]")
        Hearth::Validator.validate!(input[:after_commit_id], ::String, context: "#{context}[:after_commit_id]")
        Validators::Location.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
      end
    end

    class PostCommentForPullRequestOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PostCommentForPullRequestOutput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:before_commit_id], ::String, context: "#{context}[:before_commit_id]")
        Hearth::Validator.validate!(input[:after_commit_id], ::String, context: "#{context}[:after_commit_id]")
        Hearth::Validator.validate!(input[:before_blob_id], ::String, context: "#{context}[:before_blob_id]")
        Hearth::Validator.validate!(input[:after_blob_id], ::String, context: "#{context}[:after_blob_id]")
        Validators::Location.validate!(input[:location], context: "#{context}[:location]") unless input[:location].nil?
        Validators::Comment.validate!(input[:comment], context: "#{context}[:comment]") unless input[:comment].nil?
      end
    end

    class PostCommentReplyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PostCommentReplyInput, context: context)
        Hearth::Validator.validate!(input[:in_reply_to], ::String, context: "#{context}[:in_reply_to]")
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
      end
    end

    class PostCommentReplyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PostCommentReplyOutput, context: context)
        Validators::Comment.validate!(input[:comment], context: "#{context}[:comment]") unless input[:comment].nil?
      end
    end

    class PullRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PullRequest, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:last_activity_date], ::Time, context: "#{context}[:last_activity_date]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:pull_request_status], ::String, context: "#{context}[:pull_request_status]")
        Hearth::Validator.validate!(input[:author_arn], ::String, context: "#{context}[:author_arn]")
        Validators::PullRequestTargetList.validate!(input[:pull_request_targets], context: "#{context}[:pull_request_targets]") unless input[:pull_request_targets].nil?
        Hearth::Validator.validate!(input[:client_request_token], ::String, context: "#{context}[:client_request_token]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Validators::ApprovalRulesList.validate!(input[:approval_rules], context: "#{context}[:approval_rules]") unless input[:approval_rules].nil?
      end
    end

    class PullRequestAlreadyClosedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PullRequestAlreadyClosedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PullRequestApprovalRulesNotSatisfiedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PullRequestApprovalRulesNotSatisfiedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PullRequestCannotBeApprovedByAuthorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PullRequestCannotBeApprovedByAuthorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PullRequestCreatedEventMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PullRequestCreatedEventMetadata, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:source_commit_id], ::String, context: "#{context}[:source_commit_id]")
        Hearth::Validator.validate!(input[:destination_commit_id], ::String, context: "#{context}[:destination_commit_id]")
        Hearth::Validator.validate!(input[:merge_base], ::String, context: "#{context}[:merge_base]")
      end
    end

    class PullRequestDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PullRequestDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PullRequestEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PullRequestEvent, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:event_date], ::Time, context: "#{context}[:event_date]")
        Hearth::Validator.validate!(input[:pull_request_event_type], ::String, context: "#{context}[:pull_request_event_type]")
        Hearth::Validator.validate!(input[:actor_arn], ::String, context: "#{context}[:actor_arn]")
        Validators::PullRequestCreatedEventMetadata.validate!(input[:pull_request_created_event_metadata], context: "#{context}[:pull_request_created_event_metadata]") unless input[:pull_request_created_event_metadata].nil?
        Validators::PullRequestStatusChangedEventMetadata.validate!(input[:pull_request_status_changed_event_metadata], context: "#{context}[:pull_request_status_changed_event_metadata]") unless input[:pull_request_status_changed_event_metadata].nil?
        Validators::PullRequestSourceReferenceUpdatedEventMetadata.validate!(input[:pull_request_source_reference_updated_event_metadata], context: "#{context}[:pull_request_source_reference_updated_event_metadata]") unless input[:pull_request_source_reference_updated_event_metadata].nil?
        Validators::PullRequestMergedStateChangedEventMetadata.validate!(input[:pull_request_merged_state_changed_event_metadata], context: "#{context}[:pull_request_merged_state_changed_event_metadata]") unless input[:pull_request_merged_state_changed_event_metadata].nil?
        Validators::ApprovalRuleEventMetadata.validate!(input[:approval_rule_event_metadata], context: "#{context}[:approval_rule_event_metadata]") unless input[:approval_rule_event_metadata].nil?
        Validators::ApprovalStateChangedEventMetadata.validate!(input[:approval_state_changed_event_metadata], context: "#{context}[:approval_state_changed_event_metadata]") unless input[:approval_state_changed_event_metadata].nil?
        Validators::ApprovalRuleOverriddenEventMetadata.validate!(input[:approval_rule_overridden_event_metadata], context: "#{context}[:approval_rule_overridden_event_metadata]") unless input[:approval_rule_overridden_event_metadata].nil?
      end
    end

    class PullRequestEventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PullRequestEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PullRequestIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PullRequestIdRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PullRequestIdRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PullRequestMergedStateChangedEventMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PullRequestMergedStateChangedEventMetadata, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:destination_reference], ::String, context: "#{context}[:destination_reference]")
        Validators::MergeMetadata.validate!(input[:merge_metadata], context: "#{context}[:merge_metadata]") unless input[:merge_metadata].nil?
      end
    end

    class PullRequestSourceReferenceUpdatedEventMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PullRequestSourceReferenceUpdatedEventMetadata, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:before_commit_id], ::String, context: "#{context}[:before_commit_id]")
        Hearth::Validator.validate!(input[:after_commit_id], ::String, context: "#{context}[:after_commit_id]")
        Hearth::Validator.validate!(input[:merge_base], ::String, context: "#{context}[:merge_base]")
      end
    end

    class PullRequestStatusChangedEventMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PullRequestStatusChangedEventMetadata, context: context)
        Hearth::Validator.validate!(input[:pull_request_status], ::String, context: "#{context}[:pull_request_status]")
      end
    end

    class PullRequestStatusRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PullRequestStatusRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PullRequestTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PullRequestTarget, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:source_reference], ::String, context: "#{context}[:source_reference]")
        Hearth::Validator.validate!(input[:destination_reference], ::String, context: "#{context}[:destination_reference]")
        Hearth::Validator.validate!(input[:destination_commit], ::String, context: "#{context}[:destination_commit]")
        Hearth::Validator.validate!(input[:source_commit], ::String, context: "#{context}[:source_commit]")
        Hearth::Validator.validate!(input[:merge_base], ::String, context: "#{context}[:merge_base]")
        Validators::MergeMetadata.validate!(input[:merge_metadata], context: "#{context}[:merge_metadata]") unless input[:merge_metadata].nil?
      end
    end

    class PullRequestTargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PullRequestTarget.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutCommentReactionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutCommentReactionInput, context: context)
        Hearth::Validator.validate!(input[:comment_id], ::String, context: "#{context}[:comment_id]")
        Hearth::Validator.validate!(input[:reaction_value], ::String, context: "#{context}[:reaction_value]")
      end
    end

    class PutCommentReactionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutCommentReactionOutput, context: context)
      end
    end

    class PutFileEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PutFileEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutFileEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFileEntry, context: context)
        Hearth::Validator.validate!(input[:file_path], ::String, context: "#{context}[:file_path]")
        Hearth::Validator.validate!(input[:file_mode], ::String, context: "#{context}[:file_mode]")
        Hearth::Validator.validate!(input[:file_content], ::String, context: "#{context}[:file_content]")
        Validators::SourceFileSpecifier.validate!(input[:source_file], context: "#{context}[:source_file]") unless input[:source_file].nil?
      end
    end

    class PutFileEntryConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFileEntryConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PutFileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFileInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:branch_name], ::String, context: "#{context}[:branch_name]")
        Hearth::Validator.validate!(input[:file_content], ::String, context: "#{context}[:file_content]")
        Hearth::Validator.validate!(input[:file_path], ::String, context: "#{context}[:file_path]")
        Hearth::Validator.validate!(input[:file_mode], ::String, context: "#{context}[:file_mode]")
        Hearth::Validator.validate!(input[:parent_commit_id], ::String, context: "#{context}[:parent_commit_id]")
        Hearth::Validator.validate!(input[:commit_message], ::String, context: "#{context}[:commit_message]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
      end
    end

    class PutFileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutFileOutput, context: context)
        Hearth::Validator.validate!(input[:commit_id], ::String, context: "#{context}[:commit_id]")
        Hearth::Validator.validate!(input[:blob_id], ::String, context: "#{context}[:blob_id]")
        Hearth::Validator.validate!(input[:tree_id], ::String, context: "#{context}[:tree_id]")
      end
    end

    class PutRepositoryTriggersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRepositoryTriggersInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Validators::RepositoryTriggersList.validate!(input[:triggers], context: "#{context}[:triggers]") unless input[:triggers].nil?
      end
    end

    class PutRepositoryTriggersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutRepositoryTriggersOutput, context: context)
        Hearth::Validator.validate!(input[:configuration_id], ::String, context: "#{context}[:configuration_id]")
      end
    end

    class ReactionCountsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

    class ReactionForComment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReactionForComment, context: context)
        Validators::ReactionValueFormats.validate!(input[:reaction], context: "#{context}[:reaction]") unless input[:reaction].nil?
        Validators::ReactionUsersList.validate!(input[:reaction_users], context: "#{context}[:reaction_users]") unless input[:reaction_users].nil?
        Hearth::Validator.validate!(input[:reactions_from_deleted_users_count], ::Integer, context: "#{context}[:reactions_from_deleted_users_count]")
      end
    end

    class ReactionLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReactionLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReactionUsersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ReactionValueFormats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReactionValueFormats, context: context)
        Hearth::Validator.validate!(input[:emoji], ::String, context: "#{context}[:emoji]")
        Hearth::Validator.validate!(input[:short_code], ::String, context: "#{context}[:short_code]")
        Hearth::Validator.validate!(input[:unicode], ::String, context: "#{context}[:unicode]")
      end
    end

    class ReactionValueRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReactionValueRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReactionsForCommentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReactionForComment.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReferenceDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReferenceDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReferenceNameRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReferenceNameRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReferenceTypeNotSupportedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReferenceTypeNotSupportedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReplaceContentEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ReplaceContentEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ReplaceContentEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplaceContentEntry, context: context)
        Hearth::Validator.validate!(input[:file_path], ::String, context: "#{context}[:file_path]")
        Hearth::Validator.validate!(input[:replacement_type], ::String, context: "#{context}[:replacement_type]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:file_mode], ::String, context: "#{context}[:file_mode]")
      end
    end

    class ReplacementContentRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplacementContentRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ReplacementTypeRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReplacementTypeRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RepositoryDoesNotExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryDoesNotExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RepositoryLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RepositoryMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryMetadata, context: context)
        Hearth::Validator.validate!(input[:account_id], ::String, context: "#{context}[:account_id]")
        Hearth::Validator.validate!(input[:repository_id], ::String, context: "#{context}[:repository_id]")
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:repository_description], ::String, context: "#{context}[:repository_description]")
        Hearth::Validator.validate!(input[:default_branch], ::String, context: "#{context}[:default_branch]")
        Hearth::Validator.validate!(input[:last_modified_date], ::Time, context: "#{context}[:last_modified_date]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:clone_url_http], ::String, context: "#{context}[:clone_url_http]")
        Hearth::Validator.validate!(input[:clone_url_ssh], ::String, context: "#{context}[:clone_url_ssh]")
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
      end
    end

    class RepositoryMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RepositoryMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RepositoryNameExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryNameExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RepositoryNameIdPair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryNameIdPair, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:repository_id], ::String, context: "#{context}[:repository_id]")
      end
    end

    class RepositoryNameIdPairList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RepositoryNameIdPair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RepositoryNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RepositoryNameRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryNameRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RepositoryNamesRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryNamesRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RepositoryNotAssociatedWithPullRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryNotAssociatedWithPullRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RepositoryNotFoundList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RepositoryTrigger
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryTrigger, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:destination_arn], ::String, context: "#{context}[:destination_arn]")
        Hearth::Validator.validate!(input[:custom_data], ::String, context: "#{context}[:custom_data]")
        Validators::BranchNameList.validate!(input[:branches], context: "#{context}[:branches]") unless input[:branches].nil?
        Validators::RepositoryTriggerEventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
      end
    end

    class RepositoryTriggerBranchNameListRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryTriggerBranchNameListRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RepositoryTriggerDestinationArnRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryTriggerDestinationArnRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RepositoryTriggerEventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RepositoryTriggerEventsListRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryTriggerEventsListRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RepositoryTriggerExecutionFailure
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryTriggerExecutionFailure, context: context)
        Hearth::Validator.validate!(input[:trigger], ::String, context: "#{context}[:trigger]")
        Hearth::Validator.validate!(input[:failure_message], ::String, context: "#{context}[:failure_message]")
      end
    end

    class RepositoryTriggerExecutionFailureList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RepositoryTriggerExecutionFailure.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RepositoryTriggerNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RepositoryTriggerNameRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryTriggerNameRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RepositoryTriggersList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RepositoryTrigger.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RepositoryTriggersListRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RepositoryTriggersListRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceArnRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceArnRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RestrictedSourceFileException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestrictedSourceFileException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RevisionIdRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevisionIdRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RevisionNotCurrentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RevisionNotCurrentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SameFileContentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SameFileContentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SamePathRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SamePathRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SetFileModeEntries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SetFileModeEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SetFileModeEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SetFileModeEntry, context: context)
        Hearth::Validator.validate!(input[:file_path], ::String, context: "#{context}[:file_path]")
        Hearth::Validator.validate!(input[:file_mode], ::String, context: "#{context}[:file_mode]")
      end
    end

    class SourceAndDestinationAreSameException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceAndDestinationAreSameException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SourceFileOrContentRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceFileOrContentRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SourceFileSpecifier
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceFileSpecifier, context: context)
        Hearth::Validator.validate!(input[:file_path], ::String, context: "#{context}[:file_path]")
        Hearth::Validator.validate!(input[:is_move], ::TrueClass, ::FalseClass, context: "#{context}[:is_move]")
      end
    end

    class SubModule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubModule, context: context)
        Hearth::Validator.validate!(input[:commit_id], ::String, context: "#{context}[:commit_id]")
        Hearth::Validator.validate!(input[:absolute_path], ::String, context: "#{context}[:absolute_path]")
        Hearth::Validator.validate!(input[:relative_path], ::String, context: "#{context}[:relative_path]")
      end
    end

    class SubModuleList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SubModule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SymbolicLink
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SymbolicLink, context: context)
        Hearth::Validator.validate!(input[:blob_id], ::String, context: "#{context}[:blob_id]")
        Hearth::Validator.validate!(input[:absolute_path], ::String, context: "#{context}[:absolute_path]")
        Hearth::Validator.validate!(input[:relative_path], ::String, context: "#{context}[:relative_path]")
        Hearth::Validator.validate!(input[:file_mode], ::String, context: "#{context}[:file_mode]")
      end
    end

    class SymbolicLinkList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SymbolicLink.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagKeysList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagKeysListRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagKeysListRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagPolicyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagPolicyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagsMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TagsMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagsMapRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagsMapRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Target
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Target, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:source_reference], ::String, context: "#{context}[:source_reference]")
        Hearth::Validator.validate!(input[:destination_reference], ::String, context: "#{context}[:destination_reference]")
      end
    end

    class TargetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Target.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TargetRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TargetsRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetsRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TestRepositoryTriggersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestRepositoryTriggersInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Validators::RepositoryTriggersList.validate!(input[:triggers], context: "#{context}[:triggers]") unless input[:triggers].nil?
      end
    end

    class TestRepositoryTriggersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TestRepositoryTriggersOutput, context: context)
        Validators::RepositoryTriggerNameList.validate!(input[:successful_executions], context: "#{context}[:successful_executions]") unless input[:successful_executions].nil?
        Validators::RepositoryTriggerExecutionFailureList.validate!(input[:failed_executions], context: "#{context}[:failed_executions]") unless input[:failed_executions].nil?
      end
    end

    class TipOfSourceReferenceIsDifferentException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TipOfSourceReferenceIsDifferentException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TipsDivergenceExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TipsDivergenceExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TitleRequiredException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TitleRequiredException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeysList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateApprovalRuleTemplateContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApprovalRuleTemplateContentInput, context: context)
        Hearth::Validator.validate!(input[:approval_rule_template_name], ::String, context: "#{context}[:approval_rule_template_name]")
        Hearth::Validator.validate!(input[:new_rule_content], ::String, context: "#{context}[:new_rule_content]")
        Hearth::Validator.validate!(input[:existing_rule_content_sha256], ::String, context: "#{context}[:existing_rule_content_sha256]")
      end
    end

    class UpdateApprovalRuleTemplateContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApprovalRuleTemplateContentOutput, context: context)
        Validators::ApprovalRuleTemplate.validate!(input[:approval_rule_template], context: "#{context}[:approval_rule_template]") unless input[:approval_rule_template].nil?
      end
    end

    class UpdateApprovalRuleTemplateDescriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApprovalRuleTemplateDescriptionInput, context: context)
        Hearth::Validator.validate!(input[:approval_rule_template_name], ::String, context: "#{context}[:approval_rule_template_name]")
        Hearth::Validator.validate!(input[:approval_rule_template_description], ::String, context: "#{context}[:approval_rule_template_description]")
      end
    end

    class UpdateApprovalRuleTemplateDescriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApprovalRuleTemplateDescriptionOutput, context: context)
        Validators::ApprovalRuleTemplate.validate!(input[:approval_rule_template], context: "#{context}[:approval_rule_template]") unless input[:approval_rule_template].nil?
      end
    end

    class UpdateApprovalRuleTemplateNameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApprovalRuleTemplateNameInput, context: context)
        Hearth::Validator.validate!(input[:old_approval_rule_template_name], ::String, context: "#{context}[:old_approval_rule_template_name]")
        Hearth::Validator.validate!(input[:new_approval_rule_template_name], ::String, context: "#{context}[:new_approval_rule_template_name]")
      end
    end

    class UpdateApprovalRuleTemplateNameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateApprovalRuleTemplateNameOutput, context: context)
        Validators::ApprovalRuleTemplate.validate!(input[:approval_rule_template], context: "#{context}[:approval_rule_template]") unless input[:approval_rule_template].nil?
      end
    end

    class UpdateCommentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCommentInput, context: context)
        Hearth::Validator.validate!(input[:comment_id], ::String, context: "#{context}[:comment_id]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
      end
    end

    class UpdateCommentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateCommentOutput, context: context)
        Validators::Comment.validate!(input[:comment], context: "#{context}[:comment]") unless input[:comment].nil?
      end
    end

    class UpdateDefaultBranchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDefaultBranchInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:default_branch_name], ::String, context: "#{context}[:default_branch_name]")
      end
    end

    class UpdateDefaultBranchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDefaultBranchOutput, context: context)
      end
    end

    class UpdatePullRequestApprovalRuleContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePullRequestApprovalRuleContentInput, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:approval_rule_name], ::String, context: "#{context}[:approval_rule_name]")
        Hearth::Validator.validate!(input[:existing_rule_content_sha256], ::String, context: "#{context}[:existing_rule_content_sha256]")
        Hearth::Validator.validate!(input[:new_rule_content], ::String, context: "#{context}[:new_rule_content]")
      end
    end

    class UpdatePullRequestApprovalRuleContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePullRequestApprovalRuleContentOutput, context: context)
        Validators::ApprovalRule.validate!(input[:approval_rule], context: "#{context}[:approval_rule]") unless input[:approval_rule].nil?
      end
    end

    class UpdatePullRequestApprovalStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePullRequestApprovalStateInput, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:approval_state], ::String, context: "#{context}[:approval_state]")
      end
    end

    class UpdatePullRequestApprovalStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePullRequestApprovalStateOutput, context: context)
      end
    end

    class UpdatePullRequestDescriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePullRequestDescriptionInput, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdatePullRequestDescriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePullRequestDescriptionOutput, context: context)
        Validators::PullRequest.validate!(input[:pull_request], context: "#{context}[:pull_request]") unless input[:pull_request].nil?
      end
    end

    class UpdatePullRequestStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePullRequestStatusInput, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:pull_request_status], ::String, context: "#{context}[:pull_request_status]")
      end
    end

    class UpdatePullRequestStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePullRequestStatusOutput, context: context)
        Validators::PullRequest.validate!(input[:pull_request], context: "#{context}[:pull_request]") unless input[:pull_request].nil?
      end
    end

    class UpdatePullRequestTitleInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePullRequestTitleInput, context: context)
        Hearth::Validator.validate!(input[:pull_request_id], ::String, context: "#{context}[:pull_request_id]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
      end
    end

    class UpdatePullRequestTitleOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdatePullRequestTitleOutput, context: context)
        Validators::PullRequest.validate!(input[:pull_request], context: "#{context}[:pull_request]") unless input[:pull_request].nil?
      end
    end

    class UpdateRepositoryDescriptionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRepositoryDescriptionInput, context: context)
        Hearth::Validator.validate!(input[:repository_name], ::String, context: "#{context}[:repository_name]")
        Hearth::Validator.validate!(input[:repository_description], ::String, context: "#{context}[:repository_description]")
      end
    end

    class UpdateRepositoryDescriptionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRepositoryDescriptionOutput, context: context)
      end
    end

    class UpdateRepositoryNameInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRepositoryNameInput, context: context)
        Hearth::Validator.validate!(input[:old_name], ::String, context: "#{context}[:old_name]")
        Hearth::Validator.validate!(input[:new_name], ::String, context: "#{context}[:new_name]")
      end
    end

    class UpdateRepositoryNameOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRepositoryNameOutput, context: context)
      end
    end

    class UserInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserInfo, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:email], ::String, context: "#{context}[:email]")
        Hearth::Validator.validate!(input[:date], ::String, context: "#{context}[:date]")
      end
    end

  end
end
