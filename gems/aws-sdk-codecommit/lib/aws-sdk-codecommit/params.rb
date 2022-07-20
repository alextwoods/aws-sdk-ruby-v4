# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CodeCommit
  module Params

    module ActorDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ActorDoesNotExistException, context: context)
        type = Types::ActorDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module Approval
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Approval, context: context)
        type = Types::Approval.new
        type.user_arn = params[:user_arn]
        type.approval_state = params[:approval_state]
        type
      end
    end

    module ApprovalList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Approval.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApprovalRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApprovalRule, context: context)
        type = Types::ApprovalRule.new
        type.approval_rule_id = params[:approval_rule_id]
        type.approval_rule_name = params[:approval_rule_name]
        type.approval_rule_content = params[:approval_rule_content]
        type.rule_content_sha256 = params[:rule_content_sha256]
        type.last_modified_date = params[:last_modified_date]
        type.creation_date = params[:creation_date]
        type.last_modified_user = params[:last_modified_user]
        type.origin_approval_rule_template = OriginApprovalRuleTemplate.build(params[:origin_approval_rule_template], context: "#{context}[:origin_approval_rule_template]") unless params[:origin_approval_rule_template].nil?
        type
      end
    end

    module ApprovalRuleContentRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApprovalRuleContentRequiredException, context: context)
        type = Types::ApprovalRuleContentRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module ApprovalRuleDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApprovalRuleDoesNotExistException, context: context)
        type = Types::ApprovalRuleDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module ApprovalRuleEventMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApprovalRuleEventMetadata, context: context)
        type = Types::ApprovalRuleEventMetadata.new
        type.approval_rule_name = params[:approval_rule_name]
        type.approval_rule_id = params[:approval_rule_id]
        type.approval_rule_content = params[:approval_rule_content]
        type
      end
    end

    module ApprovalRuleNameAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApprovalRuleNameAlreadyExistsException, context: context)
        type = Types::ApprovalRuleNameAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ApprovalRuleNameRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApprovalRuleNameRequiredException, context: context)
        type = Types::ApprovalRuleNameRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module ApprovalRuleOverriddenEventMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApprovalRuleOverriddenEventMetadata, context: context)
        type = Types::ApprovalRuleOverriddenEventMetadata.new
        type.revision_id = params[:revision_id]
        type.override_status = params[:override_status]
        type
      end
    end

    module ApprovalRuleTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApprovalRuleTemplate, context: context)
        type = Types::ApprovalRuleTemplate.new
        type.approval_rule_template_id = params[:approval_rule_template_id]
        type.approval_rule_template_name = params[:approval_rule_template_name]
        type.approval_rule_template_description = params[:approval_rule_template_description]
        type.approval_rule_template_content = params[:approval_rule_template_content]
        type.rule_content_sha256 = params[:rule_content_sha256]
        type.last_modified_date = params[:last_modified_date]
        type.creation_date = params[:creation_date]
        type.last_modified_user = params[:last_modified_user]
        type
      end
    end

    module ApprovalRuleTemplateContentRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApprovalRuleTemplateContentRequiredException, context: context)
        type = Types::ApprovalRuleTemplateContentRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module ApprovalRuleTemplateDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApprovalRuleTemplateDoesNotExistException, context: context)
        type = Types::ApprovalRuleTemplateDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module ApprovalRuleTemplateInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApprovalRuleTemplateInUseException, context: context)
        type = Types::ApprovalRuleTemplateInUseException.new
        type.message = params[:message]
        type
      end
    end

    module ApprovalRuleTemplateNameAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApprovalRuleTemplateNameAlreadyExistsException, context: context)
        type = Types::ApprovalRuleTemplateNameAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module ApprovalRuleTemplateNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ApprovalRuleTemplateNameRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApprovalRuleTemplateNameRequiredException, context: context)
        type = Types::ApprovalRuleTemplateNameRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module ApprovalRulesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ApprovalRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ApprovalRulesNotSatisfiedList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ApprovalRulesSatisfiedList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ApprovalStateChangedEventMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApprovalStateChangedEventMetadata, context: context)
        type = Types::ApprovalStateChangedEventMetadata.new
        type.revision_id = params[:revision_id]
        type.approval_status = params[:approval_status]
        type
      end
    end

    module ApprovalStateRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ApprovalStateRequiredException, context: context)
        type = Types::ApprovalStateRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module AssociateApprovalRuleTemplateWithRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateApprovalRuleTemplateWithRepositoryInput, context: context)
        type = Types::AssociateApprovalRuleTemplateWithRepositoryInput.new
        type.approval_rule_template_name = params[:approval_rule_template_name]
        type.repository_name = params[:repository_name]
        type
      end
    end

    module AssociateApprovalRuleTemplateWithRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateApprovalRuleTemplateWithRepositoryOutput, context: context)
        type = Types::AssociateApprovalRuleTemplateWithRepositoryOutput.new
        type
      end
    end

    module AuthorDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthorDoesNotExistException, context: context)
        type = Types::AuthorDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module BatchAssociateApprovalRuleTemplateWithRepositoriesError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAssociateApprovalRuleTemplateWithRepositoriesError, context: context)
        type = Types::BatchAssociateApprovalRuleTemplateWithRepositoriesError.new
        type.repository_name = params[:repository_name]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchAssociateApprovalRuleTemplateWithRepositoriesError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchAssociateApprovalRuleTemplateWithRepositoriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAssociateApprovalRuleTemplateWithRepositoriesInput, context: context)
        type = Types::BatchAssociateApprovalRuleTemplateWithRepositoriesInput.new
        type.approval_rule_template_name = params[:approval_rule_template_name]
        type.repository_names = RepositoryNameList.build(params[:repository_names], context: "#{context}[:repository_names]") unless params[:repository_names].nil?
        type
      end
    end

    module BatchAssociateApprovalRuleTemplateWithRepositoriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchAssociateApprovalRuleTemplateWithRepositoriesOutput, context: context)
        type = Types::BatchAssociateApprovalRuleTemplateWithRepositoriesOutput.new
        type.associated_repository_names = RepositoryNameList.build(params[:associated_repository_names], context: "#{context}[:associated_repository_names]") unless params[:associated_repository_names].nil?
        type.errors = BatchAssociateApprovalRuleTemplateWithRepositoriesErrorsList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchDescribeMergeConflictsError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDescribeMergeConflictsError, context: context)
        type = Types::BatchDescribeMergeConflictsError.new
        type.file_path = params[:file_path]
        type.exception_name = params[:exception_name]
        type.message = params[:message]
        type
      end
    end

    module BatchDescribeMergeConflictsErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchDescribeMergeConflictsError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchDescribeMergeConflictsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDescribeMergeConflictsInput, context: context)
        type = Types::BatchDescribeMergeConflictsInput.new
        type.repository_name = params[:repository_name]
        type.destination_commit_specifier = params[:destination_commit_specifier]
        type.source_commit_specifier = params[:source_commit_specifier]
        type.merge_option = params[:merge_option]
        type.max_merge_hunks = params[:max_merge_hunks]
        type.max_conflict_files = params[:max_conflict_files]
        type.file_paths = FilePaths.build(params[:file_paths], context: "#{context}[:file_paths]") unless params[:file_paths].nil?
        type.conflict_detail_level = params[:conflict_detail_level]
        type.conflict_resolution_strategy = params[:conflict_resolution_strategy]
        type.next_token = params[:next_token]
        type
      end
    end

    module BatchDescribeMergeConflictsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDescribeMergeConflictsOutput, context: context)
        type = Types::BatchDescribeMergeConflictsOutput.new
        type.conflicts = Conflicts.build(params[:conflicts], context: "#{context}[:conflicts]") unless params[:conflicts].nil?
        type.next_token = params[:next_token]
        type.errors = BatchDescribeMergeConflictsErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type.destination_commit_id = params[:destination_commit_id]
        type.source_commit_id = params[:source_commit_id]
        type.base_commit_id = params[:base_commit_id]
        type
      end
    end

    module BatchDisassociateApprovalRuleTemplateFromRepositoriesError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesError, context: context)
        type = Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesError.new
        type.repository_name = params[:repository_name]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchDisassociateApprovalRuleTemplateFromRepositoriesError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchDisassociateApprovalRuleTemplateFromRepositoriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesInput, context: context)
        type = Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesInput.new
        type.approval_rule_template_name = params[:approval_rule_template_name]
        type.repository_names = RepositoryNameList.build(params[:repository_names], context: "#{context}[:repository_names]") unless params[:repository_names].nil?
        type
      end
    end

    module BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput, context: context)
        type = Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput.new
        type.disassociated_repository_names = RepositoryNameList.build(params[:disassociated_repository_names], context: "#{context}[:disassociated_repository_names]") unless params[:disassociated_repository_names].nil?
        type.errors = BatchDisassociateApprovalRuleTemplateFromRepositoriesErrorsList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchGetCommitsError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetCommitsError, context: context)
        type = Types::BatchGetCommitsError.new
        type.commit_id = params[:commit_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchGetCommitsErrorsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetCommitsError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetCommitsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetCommitsInput, context: context)
        type = Types::BatchGetCommitsInput.new
        type.commit_ids = CommitIdsInputList.build(params[:commit_ids], context: "#{context}[:commit_ids]") unless params[:commit_ids].nil?
        type.repository_name = params[:repository_name]
        type
      end
    end

    module BatchGetCommitsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetCommitsOutput, context: context)
        type = Types::BatchGetCommitsOutput.new
        type.commits = CommitObjectsList.build(params[:commits], context: "#{context}[:commits]") unless params[:commits].nil?
        type.errors = BatchGetCommitsErrorsList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module BatchGetRepositoriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetRepositoriesInput, context: context)
        type = Types::BatchGetRepositoriesInput.new
        type.repository_names = RepositoryNameList.build(params[:repository_names], context: "#{context}[:repository_names]") unless params[:repository_names].nil?
        type
      end
    end

    module BatchGetRepositoriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetRepositoriesOutput, context: context)
        type = Types::BatchGetRepositoriesOutput.new
        type.repositories = RepositoryMetadataList.build(params[:repositories], context: "#{context}[:repositories]") unless params[:repositories].nil?
        type.repositories_not_found = RepositoryNotFoundList.build(params[:repositories_not_found], context: "#{context}[:repositories_not_found]") unless params[:repositories_not_found].nil?
        type
      end
    end

    module BeforeCommitIdAndAfterCommitIdAreSameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BeforeCommitIdAndAfterCommitIdAreSameException, context: context)
        type = Types::BeforeCommitIdAndAfterCommitIdAreSameException.new
        type.message = params[:message]
        type
      end
    end

    module BlobIdDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlobIdDoesNotExistException, context: context)
        type = Types::BlobIdDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module BlobIdRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlobIdRequiredException, context: context)
        type = Types::BlobIdRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module BlobMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BlobMetadata, context: context)
        type = Types::BlobMetadata.new
        type.blob_id = params[:blob_id]
        type.path = params[:path]
        type.mode = params[:mode]
        type
      end
    end

    module BranchDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BranchDoesNotExistException, context: context)
        type = Types::BranchDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module BranchInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BranchInfo, context: context)
        type = Types::BranchInfo.new
        type.branch_name = params[:branch_name]
        type.commit_id = params[:commit_id]
        type
      end
    end

    module BranchNameExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BranchNameExistsException, context: context)
        type = Types::BranchNameExistsException.new
        type.message = params[:message]
        type
      end
    end

    module BranchNameIsTagNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BranchNameIsTagNameException, context: context)
        type = Types::BranchNameIsTagNameException.new
        type.message = params[:message]
        type
      end
    end

    module BranchNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module BranchNameRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BranchNameRequiredException, context: context)
        type = Types::BranchNameRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module CallerReactions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CannotDeleteApprovalRuleFromTemplateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CannotDeleteApprovalRuleFromTemplateException, context: context)
        type = Types::CannotDeleteApprovalRuleFromTemplateException.new
        type.message = params[:message]
        type
      end
    end

    module CannotModifyApprovalRuleFromTemplateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CannotModifyApprovalRuleFromTemplateException, context: context)
        type = Types::CannotModifyApprovalRuleFromTemplateException.new
        type.message = params[:message]
        type
      end
    end

    module ClientRequestTokenRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientRequestTokenRequiredException, context: context)
        type = Types::ClientRequestTokenRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module Comment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Comment, context: context)
        type = Types::Comment.new
        type.comment_id = params[:comment_id]
        type.content = params[:content]
        type.in_reply_to = params[:in_reply_to]
        type.creation_date = params[:creation_date]
        type.last_modified_date = params[:last_modified_date]
        type.author_arn = params[:author_arn]
        type.deleted = params[:deleted]
        type.client_request_token = params[:client_request_token]
        type.caller_reactions = CallerReactions.build(params[:caller_reactions], context: "#{context}[:caller_reactions]") unless params[:caller_reactions].nil?
        type.reaction_counts = ReactionCountsMap.build(params[:reaction_counts], context: "#{context}[:reaction_counts]") unless params[:reaction_counts].nil?
        type
      end
    end

    module CommentContentRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommentContentRequiredException, context: context)
        type = Types::CommentContentRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module CommentContentSizeLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommentContentSizeLimitExceededException, context: context)
        type = Types::CommentContentSizeLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module CommentDeletedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommentDeletedException, context: context)
        type = Types::CommentDeletedException.new
        type.message = params[:message]
        type
      end
    end

    module CommentDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommentDoesNotExistException, context: context)
        type = Types::CommentDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module CommentIdRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommentIdRequiredException, context: context)
        type = Types::CommentIdRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module CommentNotCreatedByCallerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommentNotCreatedByCallerException, context: context)
        type = Types::CommentNotCreatedByCallerException.new
        type.message = params[:message]
        type
      end
    end

    module Comments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Comment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CommentsForComparedCommit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommentsForComparedCommit, context: context)
        type = Types::CommentsForComparedCommit.new
        type.repository_name = params[:repository_name]
        type.before_commit_id = params[:before_commit_id]
        type.after_commit_id = params[:after_commit_id]
        type.before_blob_id = params[:before_blob_id]
        type.after_blob_id = params[:after_blob_id]
        type.location = Location.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.comments = Comments.build(params[:comments], context: "#{context}[:comments]") unless params[:comments].nil?
        type
      end
    end

    module CommentsForComparedCommitData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CommentsForComparedCommit.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CommentsForPullRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommentsForPullRequest, context: context)
        type = Types::CommentsForPullRequest.new
        type.pull_request_id = params[:pull_request_id]
        type.repository_name = params[:repository_name]
        type.before_commit_id = params[:before_commit_id]
        type.after_commit_id = params[:after_commit_id]
        type.before_blob_id = params[:before_blob_id]
        type.after_blob_id = params[:after_blob_id]
        type.location = Location.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.comments = Comments.build(params[:comments], context: "#{context}[:comments]") unless params[:comments].nil?
        type
      end
    end

    module CommentsForPullRequestData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CommentsForPullRequest.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Commit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Commit, context: context)
        type = Types::Commit.new
        type.commit_id = params[:commit_id]
        type.tree_id = params[:tree_id]
        type.parents = ParentList.build(params[:parents], context: "#{context}[:parents]") unless params[:parents].nil?
        type.message = params[:message]
        type.author = UserInfo.build(params[:author], context: "#{context}[:author]") unless params[:author].nil?
        type.committer = UserInfo.build(params[:committer], context: "#{context}[:committer]") unless params[:committer].nil?
        type.additional_data = params[:additional_data]
        type
      end
    end

    module CommitDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommitDoesNotExistException, context: context)
        type = Types::CommitDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module CommitIdDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommitIdDoesNotExistException, context: context)
        type = Types::CommitIdDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module CommitIdRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommitIdRequiredException, context: context)
        type = Types::CommitIdRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module CommitIdsInputList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CommitIdsLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommitIdsLimitExceededException, context: context)
        type = Types::CommitIdsLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module CommitIdsListRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommitIdsListRequiredException, context: context)
        type = Types::CommitIdsListRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module CommitMessageLengthExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommitMessageLengthExceededException, context: context)
        type = Types::CommitMessageLengthExceededException.new
        type.message = params[:message]
        type
      end
    end

    module CommitObjectsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Commit.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CommitRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CommitRequiredException, context: context)
        type = Types::CommitRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module ConcurrentReferenceUpdateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentReferenceUpdateException, context: context)
        type = Types::ConcurrentReferenceUpdateException.new
        type.message = params[:message]
        type
      end
    end

    module Conflict
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Conflict, context: context)
        type = Types::Conflict.new
        type.conflict_metadata = ConflictMetadata.build(params[:conflict_metadata], context: "#{context}[:conflict_metadata]") unless params[:conflict_metadata].nil?
        type.merge_hunks = MergeHunks.build(params[:merge_hunks], context: "#{context}[:merge_hunks]") unless params[:merge_hunks].nil?
        type
      end
    end

    module ConflictMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictMetadata, context: context)
        type = Types::ConflictMetadata.new
        type.file_path = params[:file_path]
        type.file_sizes = FileSizes.build(params[:file_sizes], context: "#{context}[:file_sizes]") unless params[:file_sizes].nil?
        type.file_modes = FileModes.build(params[:file_modes], context: "#{context}[:file_modes]") unless params[:file_modes].nil?
        type.object_types = ObjectTypes.build(params[:object_types], context: "#{context}[:object_types]") unless params[:object_types].nil?
        type.number_of_conflicts = params[:number_of_conflicts]
        type.is_binary_file = IsBinaryFile.build(params[:is_binary_file], context: "#{context}[:is_binary_file]") unless params[:is_binary_file].nil?
        type.content_conflict = params[:content_conflict]
        type.file_mode_conflict = params[:file_mode_conflict]
        type.object_type_conflict = params[:object_type_conflict]
        type.merge_operations = MergeOperations.build(params[:merge_operations], context: "#{context}[:merge_operations]") unless params[:merge_operations].nil?
        type
      end
    end

    module ConflictMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConflictMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConflictResolution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictResolution, context: context)
        type = Types::ConflictResolution.new
        type.replace_contents = ReplaceContentEntries.build(params[:replace_contents], context: "#{context}[:replace_contents]") unless params[:replace_contents].nil?
        type.delete_files = DeleteFileEntries.build(params[:delete_files], context: "#{context}[:delete_files]") unless params[:delete_files].nil?
        type.set_file_modes = SetFileModeEntries.build(params[:set_file_modes], context: "#{context}[:set_file_modes]") unless params[:set_file_modes].nil?
        type
      end
    end

    module Conflicts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Conflict.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateApprovalRuleTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApprovalRuleTemplateInput, context: context)
        type = Types::CreateApprovalRuleTemplateInput.new
        type.approval_rule_template_name = params[:approval_rule_template_name]
        type.approval_rule_template_content = params[:approval_rule_template_content]
        type.approval_rule_template_description = params[:approval_rule_template_description]
        type
      end
    end

    module CreateApprovalRuleTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateApprovalRuleTemplateOutput, context: context)
        type = Types::CreateApprovalRuleTemplateOutput.new
        type.approval_rule_template = ApprovalRuleTemplate.build(params[:approval_rule_template], context: "#{context}[:approval_rule_template]") unless params[:approval_rule_template].nil?
        type
      end
    end

    module CreateBranchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBranchInput, context: context)
        type = Types::CreateBranchInput.new
        type.repository_name = params[:repository_name]
        type.branch_name = params[:branch_name]
        type.commit_id = params[:commit_id]
        type
      end
    end

    module CreateBranchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBranchOutput, context: context)
        type = Types::CreateBranchOutput.new
        type
      end
    end

    module CreateCommitInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCommitInput, context: context)
        type = Types::CreateCommitInput.new
        type.repository_name = params[:repository_name]
        type.branch_name = params[:branch_name]
        type.parent_commit_id = params[:parent_commit_id]
        type.author_name = params[:author_name]
        type.email = params[:email]
        type.commit_message = params[:commit_message]
        type.keep_empty_folders = params[:keep_empty_folders]
        type.put_files = PutFileEntries.build(params[:put_files], context: "#{context}[:put_files]") unless params[:put_files].nil?
        type.delete_files = DeleteFileEntries.build(params[:delete_files], context: "#{context}[:delete_files]") unless params[:delete_files].nil?
        type.set_file_modes = SetFileModeEntries.build(params[:set_file_modes], context: "#{context}[:set_file_modes]") unless params[:set_file_modes].nil?
        type
      end
    end

    module CreateCommitOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateCommitOutput, context: context)
        type = Types::CreateCommitOutput.new
        type.commit_id = params[:commit_id]
        type.tree_id = params[:tree_id]
        type.files_added = FilesMetadata.build(params[:files_added], context: "#{context}[:files_added]") unless params[:files_added].nil?
        type.files_updated = FilesMetadata.build(params[:files_updated], context: "#{context}[:files_updated]") unless params[:files_updated].nil?
        type.files_deleted = FilesMetadata.build(params[:files_deleted], context: "#{context}[:files_deleted]") unless params[:files_deleted].nil?
        type
      end
    end

    module CreatePullRequestApprovalRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePullRequestApprovalRuleInput, context: context)
        type = Types::CreatePullRequestApprovalRuleInput.new
        type.pull_request_id = params[:pull_request_id]
        type.approval_rule_name = params[:approval_rule_name]
        type.approval_rule_content = params[:approval_rule_content]
        type
      end
    end

    module CreatePullRequestApprovalRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePullRequestApprovalRuleOutput, context: context)
        type = Types::CreatePullRequestApprovalRuleOutput.new
        type.approval_rule = ApprovalRule.build(params[:approval_rule], context: "#{context}[:approval_rule]") unless params[:approval_rule].nil?
        type
      end
    end

    module CreatePullRequestInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePullRequestInput, context: context)
        type = Types::CreatePullRequestInput.new
        type.title = params[:title]
        type.description = params[:description]
        type.targets = TargetList.build(params[:targets], context: "#{context}[:targets]") unless params[:targets].nil?
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreatePullRequestOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePullRequestOutput, context: context)
        type = Types::CreatePullRequestOutput.new
        type.pull_request = PullRequest.build(params[:pull_request], context: "#{context}[:pull_request]") unless params[:pull_request].nil?
        type
      end
    end

    module CreateRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRepositoryInput, context: context)
        type = Types::CreateRepositoryInput.new
        type.repository_name = params[:repository_name]
        type.repository_description = params[:repository_description]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateRepositoryOutput, context: context)
        type = Types::CreateRepositoryOutput.new
        type.repository_metadata = RepositoryMetadata.build(params[:repository_metadata], context: "#{context}[:repository_metadata]") unless params[:repository_metadata].nil?
        type
      end
    end

    module CreateUnreferencedMergeCommitInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUnreferencedMergeCommitInput, context: context)
        type = Types::CreateUnreferencedMergeCommitInput.new
        type.repository_name = params[:repository_name]
        type.source_commit_specifier = params[:source_commit_specifier]
        type.destination_commit_specifier = params[:destination_commit_specifier]
        type.merge_option = params[:merge_option]
        type.conflict_detail_level = params[:conflict_detail_level]
        type.conflict_resolution_strategy = params[:conflict_resolution_strategy]
        type.author_name = params[:author_name]
        type.email = params[:email]
        type.commit_message = params[:commit_message]
        type.keep_empty_folders = params[:keep_empty_folders]
        type.conflict_resolution = ConflictResolution.build(params[:conflict_resolution], context: "#{context}[:conflict_resolution]") unless params[:conflict_resolution].nil?
        type
      end
    end

    module CreateUnreferencedMergeCommitOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateUnreferencedMergeCommitOutput, context: context)
        type = Types::CreateUnreferencedMergeCommitOutput.new
        type.commit_id = params[:commit_id]
        type.tree_id = params[:tree_id]
        type
      end
    end

    module DefaultBranchCannotBeDeletedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DefaultBranchCannotBeDeletedException, context: context)
        type = Types::DefaultBranchCannotBeDeletedException.new
        type.message = params[:message]
        type
      end
    end

    module DeleteApprovalRuleTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApprovalRuleTemplateInput, context: context)
        type = Types::DeleteApprovalRuleTemplateInput.new
        type.approval_rule_template_name = params[:approval_rule_template_name]
        type
      end
    end

    module DeleteApprovalRuleTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteApprovalRuleTemplateOutput, context: context)
        type = Types::DeleteApprovalRuleTemplateOutput.new
        type.approval_rule_template_id = params[:approval_rule_template_id]
        type
      end
    end

    module DeleteBranchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBranchInput, context: context)
        type = Types::DeleteBranchInput.new
        type.repository_name = params[:repository_name]
        type.branch_name = params[:branch_name]
        type
      end
    end

    module DeleteBranchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBranchOutput, context: context)
        type = Types::DeleteBranchOutput.new
        type.deleted_branch = BranchInfo.build(params[:deleted_branch], context: "#{context}[:deleted_branch]") unless params[:deleted_branch].nil?
        type
      end
    end

    module DeleteCommentContentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCommentContentInput, context: context)
        type = Types::DeleteCommentContentInput.new
        type.comment_id = params[:comment_id]
        type
      end
    end

    module DeleteCommentContentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteCommentContentOutput, context: context)
        type = Types::DeleteCommentContentOutput.new
        type.comment = Comment.build(params[:comment], context: "#{context}[:comment]") unless params[:comment].nil?
        type
      end
    end

    module DeleteFileEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DeleteFileEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteFileEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFileEntry, context: context)
        type = Types::DeleteFileEntry.new
        type.file_path = params[:file_path]
        type
      end
    end

    module DeleteFileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFileInput, context: context)
        type = Types::DeleteFileInput.new
        type.repository_name = params[:repository_name]
        type.branch_name = params[:branch_name]
        type.file_path = params[:file_path]
        type.parent_commit_id = params[:parent_commit_id]
        type.keep_empty_folders = params[:keep_empty_folders]
        type.commit_message = params[:commit_message]
        type.name = params[:name]
        type.email = params[:email]
        type
      end
    end

    module DeleteFileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFileOutput, context: context)
        type = Types::DeleteFileOutput.new
        type.commit_id = params[:commit_id]
        type.blob_id = params[:blob_id]
        type.tree_id = params[:tree_id]
        type.file_path = params[:file_path]
        type
      end
    end

    module DeletePullRequestApprovalRuleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePullRequestApprovalRuleInput, context: context)
        type = Types::DeletePullRequestApprovalRuleInput.new
        type.pull_request_id = params[:pull_request_id]
        type.approval_rule_name = params[:approval_rule_name]
        type
      end
    end

    module DeletePullRequestApprovalRuleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePullRequestApprovalRuleOutput, context: context)
        type = Types::DeletePullRequestApprovalRuleOutput.new
        type.approval_rule_id = params[:approval_rule_id]
        type
      end
    end

    module DeleteRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRepositoryInput, context: context)
        type = Types::DeleteRepositoryInput.new
        type.repository_name = params[:repository_name]
        type
      end
    end

    module DeleteRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteRepositoryOutput, context: context)
        type = Types::DeleteRepositoryOutput.new
        type.repository_id = params[:repository_id]
        type
      end
    end

    module DescribeMergeConflictsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMergeConflictsInput, context: context)
        type = Types::DescribeMergeConflictsInput.new
        type.repository_name = params[:repository_name]
        type.destination_commit_specifier = params[:destination_commit_specifier]
        type.source_commit_specifier = params[:source_commit_specifier]
        type.merge_option = params[:merge_option]
        type.max_merge_hunks = params[:max_merge_hunks]
        type.file_path = params[:file_path]
        type.conflict_detail_level = params[:conflict_detail_level]
        type.conflict_resolution_strategy = params[:conflict_resolution_strategy]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMergeConflictsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMergeConflictsOutput, context: context)
        type = Types::DescribeMergeConflictsOutput.new
        type.conflict_metadata = ConflictMetadata.build(params[:conflict_metadata], context: "#{context}[:conflict_metadata]") unless params[:conflict_metadata].nil?
        type.merge_hunks = MergeHunks.build(params[:merge_hunks], context: "#{context}[:merge_hunks]") unless params[:merge_hunks].nil?
        type.next_token = params[:next_token]
        type.destination_commit_id = params[:destination_commit_id]
        type.source_commit_id = params[:source_commit_id]
        type.base_commit_id = params[:base_commit_id]
        type
      end
    end

    module DescribePullRequestEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePullRequestEventsInput, context: context)
        type = Types::DescribePullRequestEventsInput.new
        type.pull_request_id = params[:pull_request_id]
        type.pull_request_event_type = params[:pull_request_event_type]
        type.actor_arn = params[:actor_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribePullRequestEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePullRequestEventsOutput, context: context)
        type = Types::DescribePullRequestEventsOutput.new
        type.pull_request_events = PullRequestEventList.build(params[:pull_request_events], context: "#{context}[:pull_request_events]") unless params[:pull_request_events].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module Difference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Difference, context: context)
        type = Types::Difference.new
        type.before_blob = BlobMetadata.build(params[:before_blob], context: "#{context}[:before_blob]") unless params[:before_blob].nil?
        type.after_blob = BlobMetadata.build(params[:after_blob], context: "#{context}[:after_blob]") unless params[:after_blob].nil?
        type.change_type = params[:change_type]
        type
      end
    end

    module DifferenceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Difference.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DirectoryNameConflictsWithFileNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DirectoryNameConflictsWithFileNameException, context: context)
        type = Types::DirectoryNameConflictsWithFileNameException.new
        type.message = params[:message]
        type
      end
    end

    module DisassociateApprovalRuleTemplateFromRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateApprovalRuleTemplateFromRepositoryInput, context: context)
        type = Types::DisassociateApprovalRuleTemplateFromRepositoryInput.new
        type.approval_rule_template_name = params[:approval_rule_template_name]
        type.repository_name = params[:repository_name]
        type
      end
    end

    module DisassociateApprovalRuleTemplateFromRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateApprovalRuleTemplateFromRepositoryOutput, context: context)
        type = Types::DisassociateApprovalRuleTemplateFromRepositoryOutput.new
        type
      end
    end

    module EncryptionIntegrityChecksFailedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionIntegrityChecksFailedException, context: context)
        type = Types::EncryptionIntegrityChecksFailedException.new
        type.message = params[:message]
        type
      end
    end

    module EncryptionKeyAccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionKeyAccessDeniedException, context: context)
        type = Types::EncryptionKeyAccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module EncryptionKeyDisabledException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionKeyDisabledException, context: context)
        type = Types::EncryptionKeyDisabledException.new
        type.message = params[:message]
        type
      end
    end

    module EncryptionKeyNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionKeyNotFoundException, context: context)
        type = Types::EncryptionKeyNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module EncryptionKeyUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EncryptionKeyUnavailableException, context: context)
        type = Types::EncryptionKeyUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module EvaluatePullRequestApprovalRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluatePullRequestApprovalRulesInput, context: context)
        type = Types::EvaluatePullRequestApprovalRulesInput.new
        type.pull_request_id = params[:pull_request_id]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module EvaluatePullRequestApprovalRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EvaluatePullRequestApprovalRulesOutput, context: context)
        type = Types::EvaluatePullRequestApprovalRulesOutput.new
        type.evaluation = Evaluation.build(params[:evaluation], context: "#{context}[:evaluation]") unless params[:evaluation].nil?
        type
      end
    end

    module Evaluation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Evaluation, context: context)
        type = Types::Evaluation.new
        type.approved = params[:approved]
        type.overridden = params[:overridden]
        type.approval_rules_satisfied = ApprovalRulesSatisfiedList.build(params[:approval_rules_satisfied], context: "#{context}[:approval_rules_satisfied]") unless params[:approval_rules_satisfied].nil?
        type.approval_rules_not_satisfied = ApprovalRulesNotSatisfiedList.build(params[:approval_rules_not_satisfied], context: "#{context}[:approval_rules_not_satisfied]") unless params[:approval_rules_not_satisfied].nil?
        type
      end
    end

    module File
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::File, context: context)
        type = Types::File.new
        type.blob_id = params[:blob_id]
        type.absolute_path = params[:absolute_path]
        type.relative_path = params[:relative_path]
        type.file_mode = params[:file_mode]
        type
      end
    end

    module FileContentAndSourceFileSpecifiedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileContentAndSourceFileSpecifiedException, context: context)
        type = Types::FileContentAndSourceFileSpecifiedException.new
        type.message = params[:message]
        type
      end
    end

    module FileContentRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileContentRequiredException, context: context)
        type = Types::FileContentRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module FileContentSizeLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileContentSizeLimitExceededException, context: context)
        type = Types::FileContentSizeLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module FileDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileDoesNotExistException, context: context)
        type = Types::FileDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module FileEntryRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileEntryRequiredException, context: context)
        type = Types::FileEntryRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module FileList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << File.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FileMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileMetadata, context: context)
        type = Types::FileMetadata.new
        type.absolute_path = params[:absolute_path]
        type.blob_id = params[:blob_id]
        type.file_mode = params[:file_mode]
        type
      end
    end

    module FileModeRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileModeRequiredException, context: context)
        type = Types::FileModeRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module FileModes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileModes, context: context)
        type = Types::FileModes.new
        type.source = params[:source]
        type.destination = params[:destination]
        type.base = params[:base]
        type
      end
    end

    module FileNameConflictsWithDirectoryNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileNameConflictsWithDirectoryNameException, context: context)
        type = Types::FileNameConflictsWithDirectoryNameException.new
        type.message = params[:message]
        type
      end
    end

    module FilePathConflictsWithSubmodulePathException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FilePathConflictsWithSubmodulePathException, context: context)
        type = Types::FilePathConflictsWithSubmodulePathException.new
        type.message = params[:message]
        type
      end
    end

    module FilePaths
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FileSizes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileSizes, context: context)
        type = Types::FileSizes.new
        type.source = params[:source]
        type.destination = params[:destination]
        type.base = params[:base]
        type
      end
    end

    module FileTooLargeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FileTooLargeException, context: context)
        type = Types::FileTooLargeException.new
        type.message = params[:message]
        type
      end
    end

    module FilesMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FileMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Folder
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Folder, context: context)
        type = Types::Folder.new
        type.tree_id = params[:tree_id]
        type.absolute_path = params[:absolute_path]
        type.relative_path = params[:relative_path]
        type
      end
    end

    module FolderContentSizeLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FolderContentSizeLimitExceededException, context: context)
        type = Types::FolderContentSizeLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module FolderDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FolderDoesNotExistException, context: context)
        type = Types::FolderDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module FolderList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Folder.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetApprovalRuleTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApprovalRuleTemplateInput, context: context)
        type = Types::GetApprovalRuleTemplateInput.new
        type.approval_rule_template_name = params[:approval_rule_template_name]
        type
      end
    end

    module GetApprovalRuleTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetApprovalRuleTemplateOutput, context: context)
        type = Types::GetApprovalRuleTemplateOutput.new
        type.approval_rule_template = ApprovalRuleTemplate.build(params[:approval_rule_template], context: "#{context}[:approval_rule_template]") unless params[:approval_rule_template].nil?
        type
      end
    end

    module GetBlobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBlobInput, context: context)
        type = Types::GetBlobInput.new
        type.repository_name = params[:repository_name]
        type.blob_id = params[:blob_id]
        type
      end
    end

    module GetBlobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBlobOutput, context: context)
        type = Types::GetBlobOutput.new
        type.content = params[:content]
        type
      end
    end

    module GetBranchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBranchInput, context: context)
        type = Types::GetBranchInput.new
        type.repository_name = params[:repository_name]
        type.branch_name = params[:branch_name]
        type
      end
    end

    module GetBranchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetBranchOutput, context: context)
        type = Types::GetBranchOutput.new
        type.branch = BranchInfo.build(params[:branch], context: "#{context}[:branch]") unless params[:branch].nil?
        type
      end
    end

    module GetCommentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCommentInput, context: context)
        type = Types::GetCommentInput.new
        type.comment_id = params[:comment_id]
        type
      end
    end

    module GetCommentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCommentOutput, context: context)
        type = Types::GetCommentOutput.new
        type.comment = Comment.build(params[:comment], context: "#{context}[:comment]") unless params[:comment].nil?
        type
      end
    end

    module GetCommentReactionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCommentReactionsInput, context: context)
        type = Types::GetCommentReactionsInput.new
        type.comment_id = params[:comment_id]
        type.reaction_user_arn = params[:reaction_user_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetCommentReactionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCommentReactionsOutput, context: context)
        type = Types::GetCommentReactionsOutput.new
        type.reactions_for_comment = ReactionsForCommentList.build(params[:reactions_for_comment], context: "#{context}[:reactions_for_comment]") unless params[:reactions_for_comment].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetCommentsForComparedCommitInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCommentsForComparedCommitInput, context: context)
        type = Types::GetCommentsForComparedCommitInput.new
        type.repository_name = params[:repository_name]
        type.before_commit_id = params[:before_commit_id]
        type.after_commit_id = params[:after_commit_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetCommentsForComparedCommitOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCommentsForComparedCommitOutput, context: context)
        type = Types::GetCommentsForComparedCommitOutput.new
        type.comments_for_compared_commit_data = CommentsForComparedCommitData.build(params[:comments_for_compared_commit_data], context: "#{context}[:comments_for_compared_commit_data]") unless params[:comments_for_compared_commit_data].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetCommentsForPullRequestInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCommentsForPullRequestInput, context: context)
        type = Types::GetCommentsForPullRequestInput.new
        type.pull_request_id = params[:pull_request_id]
        type.repository_name = params[:repository_name]
        type.before_commit_id = params[:before_commit_id]
        type.after_commit_id = params[:after_commit_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetCommentsForPullRequestOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCommentsForPullRequestOutput, context: context)
        type = Types::GetCommentsForPullRequestOutput.new
        type.comments_for_pull_request_data = CommentsForPullRequestData.build(params[:comments_for_pull_request_data], context: "#{context}[:comments_for_pull_request_data]") unless params[:comments_for_pull_request_data].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetCommitInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCommitInput, context: context)
        type = Types::GetCommitInput.new
        type.repository_name = params[:repository_name]
        type.commit_id = params[:commit_id]
        type
      end
    end

    module GetCommitOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetCommitOutput, context: context)
        type = Types::GetCommitOutput.new
        type.commit = Commit.build(params[:commit], context: "#{context}[:commit]") unless params[:commit].nil?
        type
      end
    end

    module GetDifferencesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDifferencesInput, context: context)
        type = Types::GetDifferencesInput.new
        type.repository_name = params[:repository_name]
        type.before_commit_specifier = params[:before_commit_specifier]
        type.after_commit_specifier = params[:after_commit_specifier]
        type.before_path = params[:before_path]
        type.after_path = params[:after_path]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetDifferencesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDifferencesOutput, context: context)
        type = Types::GetDifferencesOutput.new
        type.differences = DifferenceList.build(params[:differences], context: "#{context}[:differences]") unless params[:differences].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetFileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFileInput, context: context)
        type = Types::GetFileInput.new
        type.repository_name = params[:repository_name]
        type.commit_specifier = params[:commit_specifier]
        type.file_path = params[:file_path]
        type
      end
    end

    module GetFileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFileOutput, context: context)
        type = Types::GetFileOutput.new
        type.commit_id = params[:commit_id]
        type.blob_id = params[:blob_id]
        type.file_path = params[:file_path]
        type.file_mode = params[:file_mode]
        type.file_size = params[:file_size]
        type.file_content = params[:file_content]
        type
      end
    end

    module GetFolderInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFolderInput, context: context)
        type = Types::GetFolderInput.new
        type.repository_name = params[:repository_name]
        type.commit_specifier = params[:commit_specifier]
        type.folder_path = params[:folder_path]
        type
      end
    end

    module GetFolderOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetFolderOutput, context: context)
        type = Types::GetFolderOutput.new
        type.commit_id = params[:commit_id]
        type.folder_path = params[:folder_path]
        type.tree_id = params[:tree_id]
        type.sub_folders = FolderList.build(params[:sub_folders], context: "#{context}[:sub_folders]") unless params[:sub_folders].nil?
        type.files = FileList.build(params[:files], context: "#{context}[:files]") unless params[:files].nil?
        type.symbolic_links = SymbolicLinkList.build(params[:symbolic_links], context: "#{context}[:symbolic_links]") unless params[:symbolic_links].nil?
        type.sub_modules = SubModuleList.build(params[:sub_modules], context: "#{context}[:sub_modules]") unless params[:sub_modules].nil?
        type
      end
    end

    module GetMergeCommitInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMergeCommitInput, context: context)
        type = Types::GetMergeCommitInput.new
        type.repository_name = params[:repository_name]
        type.source_commit_specifier = params[:source_commit_specifier]
        type.destination_commit_specifier = params[:destination_commit_specifier]
        type.conflict_detail_level = params[:conflict_detail_level]
        type.conflict_resolution_strategy = params[:conflict_resolution_strategy]
        type
      end
    end

    module GetMergeCommitOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMergeCommitOutput, context: context)
        type = Types::GetMergeCommitOutput.new
        type.source_commit_id = params[:source_commit_id]
        type.destination_commit_id = params[:destination_commit_id]
        type.base_commit_id = params[:base_commit_id]
        type.merged_commit_id = params[:merged_commit_id]
        type
      end
    end

    module GetMergeConflictsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMergeConflictsInput, context: context)
        type = Types::GetMergeConflictsInput.new
        type.repository_name = params[:repository_name]
        type.destination_commit_specifier = params[:destination_commit_specifier]
        type.source_commit_specifier = params[:source_commit_specifier]
        type.merge_option = params[:merge_option]
        type.conflict_detail_level = params[:conflict_detail_level]
        type.max_conflict_files = params[:max_conflict_files]
        type.conflict_resolution_strategy = params[:conflict_resolution_strategy]
        type.next_token = params[:next_token]
        type
      end
    end

    module GetMergeConflictsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMergeConflictsOutput, context: context)
        type = Types::GetMergeConflictsOutput.new
        type.mergeable = params[:mergeable]
        type.destination_commit_id = params[:destination_commit_id]
        type.source_commit_id = params[:source_commit_id]
        type.base_commit_id = params[:base_commit_id]
        type.conflict_metadata_list = ConflictMetadataList.build(params[:conflict_metadata_list], context: "#{context}[:conflict_metadata_list]") unless params[:conflict_metadata_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GetMergeOptionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMergeOptionsInput, context: context)
        type = Types::GetMergeOptionsInput.new
        type.repository_name = params[:repository_name]
        type.source_commit_specifier = params[:source_commit_specifier]
        type.destination_commit_specifier = params[:destination_commit_specifier]
        type.conflict_detail_level = params[:conflict_detail_level]
        type.conflict_resolution_strategy = params[:conflict_resolution_strategy]
        type
      end
    end

    module GetMergeOptionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMergeOptionsOutput, context: context)
        type = Types::GetMergeOptionsOutput.new
        type.merge_options = MergeOptions.build(params[:merge_options], context: "#{context}[:merge_options]") unless params[:merge_options].nil?
        type.source_commit_id = params[:source_commit_id]
        type.destination_commit_id = params[:destination_commit_id]
        type.base_commit_id = params[:base_commit_id]
        type
      end
    end

    module GetPullRequestApprovalStatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPullRequestApprovalStatesInput, context: context)
        type = Types::GetPullRequestApprovalStatesInput.new
        type.pull_request_id = params[:pull_request_id]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module GetPullRequestApprovalStatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPullRequestApprovalStatesOutput, context: context)
        type = Types::GetPullRequestApprovalStatesOutput.new
        type.approvals = ApprovalList.build(params[:approvals], context: "#{context}[:approvals]") unless params[:approvals].nil?
        type
      end
    end

    module GetPullRequestInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPullRequestInput, context: context)
        type = Types::GetPullRequestInput.new
        type.pull_request_id = params[:pull_request_id]
        type
      end
    end

    module GetPullRequestOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPullRequestOutput, context: context)
        type = Types::GetPullRequestOutput.new
        type.pull_request = PullRequest.build(params[:pull_request], context: "#{context}[:pull_request]") unless params[:pull_request].nil?
        type
      end
    end

    module GetPullRequestOverrideStateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPullRequestOverrideStateInput, context: context)
        type = Types::GetPullRequestOverrideStateInput.new
        type.pull_request_id = params[:pull_request_id]
        type.revision_id = params[:revision_id]
        type
      end
    end

    module GetPullRequestOverrideStateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPullRequestOverrideStateOutput, context: context)
        type = Types::GetPullRequestOverrideStateOutput.new
        type.overridden = params[:overridden]
        type.overrider = params[:overrider]
        type
      end
    end

    module GetRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRepositoryInput, context: context)
        type = Types::GetRepositoryInput.new
        type.repository_name = params[:repository_name]
        type
      end
    end

    module GetRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRepositoryOutput, context: context)
        type = Types::GetRepositoryOutput.new
        type.repository_metadata = RepositoryMetadata.build(params[:repository_metadata], context: "#{context}[:repository_metadata]") unless params[:repository_metadata].nil?
        type
      end
    end

    module GetRepositoryTriggersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRepositoryTriggersInput, context: context)
        type = Types::GetRepositoryTriggersInput.new
        type.repository_name = params[:repository_name]
        type
      end
    end

    module GetRepositoryTriggersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRepositoryTriggersOutput, context: context)
        type = Types::GetRepositoryTriggersOutput.new
        type.configuration_id = params[:configuration_id]
        type.triggers = RepositoryTriggersList.build(params[:triggers], context: "#{context}[:triggers]") unless params[:triggers].nil?
        type
      end
    end

    module IdempotencyParameterMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdempotencyParameterMismatchException, context: context)
        type = Types::IdempotencyParameterMismatchException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidActorArnException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidActorArnException, context: context)
        type = Types::InvalidActorArnException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidApprovalRuleContentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidApprovalRuleContentException, context: context)
        type = Types::InvalidApprovalRuleContentException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidApprovalRuleNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidApprovalRuleNameException, context: context)
        type = Types::InvalidApprovalRuleNameException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidApprovalRuleTemplateContentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidApprovalRuleTemplateContentException, context: context)
        type = Types::InvalidApprovalRuleTemplateContentException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidApprovalRuleTemplateDescriptionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidApprovalRuleTemplateDescriptionException, context: context)
        type = Types::InvalidApprovalRuleTemplateDescriptionException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidApprovalRuleTemplateNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidApprovalRuleTemplateNameException, context: context)
        type = Types::InvalidApprovalRuleTemplateNameException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidApprovalStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidApprovalStateException, context: context)
        type = Types::InvalidApprovalStateException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidAuthorArnException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAuthorArnException, context: context)
        type = Types::InvalidAuthorArnException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidBlobIdException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidBlobIdException, context: context)
        type = Types::InvalidBlobIdException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidBranchNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidBranchNameException, context: context)
        type = Types::InvalidBranchNameException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidClientRequestTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidClientRequestTokenException, context: context)
        type = Types::InvalidClientRequestTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidCommentIdException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCommentIdException, context: context)
        type = Types::InvalidCommentIdException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidCommitException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCommitException, context: context)
        type = Types::InvalidCommitException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidCommitIdException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCommitIdException, context: context)
        type = Types::InvalidCommitIdException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidConflictDetailLevelException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidConflictDetailLevelException, context: context)
        type = Types::InvalidConflictDetailLevelException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidConflictResolutionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidConflictResolutionException, context: context)
        type = Types::InvalidConflictResolutionException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidConflictResolutionStrategyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidConflictResolutionStrategyException, context: context)
        type = Types::InvalidConflictResolutionStrategyException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidContinuationTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidContinuationTokenException, context: context)
        type = Types::InvalidContinuationTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDeletionParameterException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDeletionParameterException, context: context)
        type = Types::InvalidDeletionParameterException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDescriptionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDescriptionException, context: context)
        type = Types::InvalidDescriptionException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidDestinationCommitSpecifierException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidDestinationCommitSpecifierException, context: context)
        type = Types::InvalidDestinationCommitSpecifierException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidEmailException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidEmailException, context: context)
        type = Types::InvalidEmailException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidFileLocationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidFileLocationException, context: context)
        type = Types::InvalidFileLocationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidFileModeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidFileModeException, context: context)
        type = Types::InvalidFileModeException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidFilePositionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidFilePositionException, context: context)
        type = Types::InvalidFilePositionException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidMaxConflictFilesException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidMaxConflictFilesException, context: context)
        type = Types::InvalidMaxConflictFilesException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidMaxMergeHunksException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidMaxMergeHunksException, context: context)
        type = Types::InvalidMaxMergeHunksException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidMaxResultsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidMaxResultsException, context: context)
        type = Types::InvalidMaxResultsException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidMergeOptionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidMergeOptionException, context: context)
        type = Types::InvalidMergeOptionException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidOrderException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidOrderException, context: context)
        type = Types::InvalidOrderException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidOverrideStatusException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidOverrideStatusException, context: context)
        type = Types::InvalidOverrideStatusException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidParentCommitIdException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidParentCommitIdException, context: context)
        type = Types::InvalidParentCommitIdException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidPathException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPathException, context: context)
        type = Types::InvalidPathException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidPullRequestEventTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPullRequestEventTypeException, context: context)
        type = Types::InvalidPullRequestEventTypeException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidPullRequestIdException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPullRequestIdException, context: context)
        type = Types::InvalidPullRequestIdException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidPullRequestStatusException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPullRequestStatusException, context: context)
        type = Types::InvalidPullRequestStatusException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidPullRequestStatusUpdateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidPullRequestStatusUpdateException, context: context)
        type = Types::InvalidPullRequestStatusUpdateException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidReactionUserArnException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidReactionUserArnException, context: context)
        type = Types::InvalidReactionUserArnException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidReactionValueException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidReactionValueException, context: context)
        type = Types::InvalidReactionValueException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidReferenceNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidReferenceNameException, context: context)
        type = Types::InvalidReferenceNameException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRelativeFileVersionEnumException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRelativeFileVersionEnumException, context: context)
        type = Types::InvalidRelativeFileVersionEnumException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidReplacementContentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidReplacementContentException, context: context)
        type = Types::InvalidReplacementContentException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidReplacementTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidReplacementTypeException, context: context)
        type = Types::InvalidReplacementTypeException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRepositoryDescriptionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRepositoryDescriptionException, context: context)
        type = Types::InvalidRepositoryDescriptionException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRepositoryNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRepositoryNameException, context: context)
        type = Types::InvalidRepositoryNameException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRepositoryTriggerBranchNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRepositoryTriggerBranchNameException, context: context)
        type = Types::InvalidRepositoryTriggerBranchNameException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRepositoryTriggerCustomDataException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRepositoryTriggerCustomDataException, context: context)
        type = Types::InvalidRepositoryTriggerCustomDataException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRepositoryTriggerDestinationArnException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRepositoryTriggerDestinationArnException, context: context)
        type = Types::InvalidRepositoryTriggerDestinationArnException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRepositoryTriggerEventsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRepositoryTriggerEventsException, context: context)
        type = Types::InvalidRepositoryTriggerEventsException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRepositoryTriggerNameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRepositoryTriggerNameException, context: context)
        type = Types::InvalidRepositoryTriggerNameException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRepositoryTriggerRegionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRepositoryTriggerRegionException, context: context)
        type = Types::InvalidRepositoryTriggerRegionException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidResourceArnException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidResourceArnException, context: context)
        type = Types::InvalidResourceArnException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRevisionIdException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRevisionIdException, context: context)
        type = Types::InvalidRevisionIdException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRuleContentSha256Exception
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRuleContentSha256Exception, context: context)
        type = Types::InvalidRuleContentSha256Exception.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSortByException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSortByException, context: context)
        type = Types::InvalidSortByException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSourceCommitSpecifierException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSourceCommitSpecifierException, context: context)
        type = Types::InvalidSourceCommitSpecifierException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidSystemTagUsageException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidSystemTagUsageException, context: context)
        type = Types::InvalidSystemTagUsageException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTagKeysListException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTagKeysListException, context: context)
        type = Types::InvalidTagKeysListException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTagsMapException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTagsMapException, context: context)
        type = Types::InvalidTagsMapException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTargetBranchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTargetBranchException, context: context)
        type = Types::InvalidTargetBranchException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTargetException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTargetException, context: context)
        type = Types::InvalidTargetException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTargetsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTargetsException, context: context)
        type = Types::InvalidTargetsException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidTitleException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidTitleException, context: context)
        type = Types::InvalidTitleException.new
        type.message = params[:message]
        type
      end
    end

    module IsBinaryFile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IsBinaryFile, context: context)
        type = Types::IsBinaryFile.new
        type.source = params[:source]
        type.destination = params[:destination]
        type.base = params[:base]
        type
      end
    end

    module ListApprovalRuleTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApprovalRuleTemplatesInput, context: context)
        type = Types::ListApprovalRuleTemplatesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListApprovalRuleTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListApprovalRuleTemplatesOutput, context: context)
        type = Types::ListApprovalRuleTemplatesOutput.new
        type.approval_rule_template_names = ApprovalRuleTemplateNameList.build(params[:approval_rule_template_names], context: "#{context}[:approval_rule_template_names]") unless params[:approval_rule_template_names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssociatedApprovalRuleTemplatesForRepositoryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociatedApprovalRuleTemplatesForRepositoryInput, context: context)
        type = Types::ListAssociatedApprovalRuleTemplatesForRepositoryInput.new
        type.repository_name = params[:repository_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAssociatedApprovalRuleTemplatesForRepositoryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssociatedApprovalRuleTemplatesForRepositoryOutput, context: context)
        type = Types::ListAssociatedApprovalRuleTemplatesForRepositoryOutput.new
        type.approval_rule_template_names = ApprovalRuleTemplateNameList.build(params[:approval_rule_template_names], context: "#{context}[:approval_rule_template_names]") unless params[:approval_rule_template_names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBranchesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBranchesInput, context: context)
        type = Types::ListBranchesInput.new
        type.repository_name = params[:repository_name]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBranchesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBranchesOutput, context: context)
        type = Types::ListBranchesOutput.new
        type.branches = BranchNameList.build(params[:branches], context: "#{context}[:branches]") unless params[:branches].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListPullRequestsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPullRequestsInput, context: context)
        type = Types::ListPullRequestsInput.new
        type.repository_name = params[:repository_name]
        type.author_arn = params[:author_arn]
        type.pull_request_status = params[:pull_request_status]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListPullRequestsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListPullRequestsOutput, context: context)
        type = Types::ListPullRequestsOutput.new
        type.pull_request_ids = PullRequestIdList.build(params[:pull_request_ids], context: "#{context}[:pull_request_ids]") unless params[:pull_request_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRepositoriesForApprovalRuleTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRepositoriesForApprovalRuleTemplateInput, context: context)
        type = Types::ListRepositoriesForApprovalRuleTemplateInput.new
        type.approval_rule_template_name = params[:approval_rule_template_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListRepositoriesForApprovalRuleTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRepositoriesForApprovalRuleTemplateOutput, context: context)
        type = Types::ListRepositoriesForApprovalRuleTemplateOutput.new
        type.repository_names = RepositoryNameList.build(params[:repository_names], context: "#{context}[:repository_names]") unless params[:repository_names].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListRepositoriesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRepositoriesInput, context: context)
        type = Types::ListRepositoriesInput.new
        type.next_token = params[:next_token]
        type.sort_by = params[:sort_by]
        type.order = params[:order]
        type
      end
    end

    module ListRepositoriesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListRepositoriesOutput, context: context)
        type = Types::ListRepositoriesOutput.new
        type.repositories = RepositoryNameIdPairList.build(params[:repositories], context: "#{context}[:repositories]") unless params[:repositories].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Location, context: context)
        type = Types::Location.new
        type.file_path = params[:file_path]
        type.file_position = params[:file_position]
        type.relative_file_version = params[:relative_file_version]
        type
      end
    end

    module ManualMergeRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ManualMergeRequiredException, context: context)
        type = Types::ManualMergeRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module MaximumBranchesExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaximumBranchesExceededException, context: context)
        type = Types::MaximumBranchesExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MaximumConflictResolutionEntriesExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaximumConflictResolutionEntriesExceededException, context: context)
        type = Types::MaximumConflictResolutionEntriesExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MaximumFileContentToLoadExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaximumFileContentToLoadExceededException, context: context)
        type = Types::MaximumFileContentToLoadExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MaximumFileEntriesExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaximumFileEntriesExceededException, context: context)
        type = Types::MaximumFileEntriesExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MaximumItemsToCompareExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaximumItemsToCompareExceededException, context: context)
        type = Types::MaximumItemsToCompareExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MaximumNumberOfApprovalsExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaximumNumberOfApprovalsExceededException, context: context)
        type = Types::MaximumNumberOfApprovalsExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MaximumOpenPullRequestsExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaximumOpenPullRequestsExceededException, context: context)
        type = Types::MaximumOpenPullRequestsExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MaximumRepositoryNamesExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaximumRepositoryNamesExceededException, context: context)
        type = Types::MaximumRepositoryNamesExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MaximumRepositoryTriggersExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaximumRepositoryTriggersExceededException, context: context)
        type = Types::MaximumRepositoryTriggersExceededException.new
        type.message = params[:message]
        type
      end
    end

    module MaximumRuleTemplatesAssociatedWithRepositoryException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MaximumRuleTemplatesAssociatedWithRepositoryException, context: context)
        type = Types::MaximumRuleTemplatesAssociatedWithRepositoryException.new
        type.message = params[:message]
        type
      end
    end

    module MergeBranchesByFastForwardInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergeBranchesByFastForwardInput, context: context)
        type = Types::MergeBranchesByFastForwardInput.new
        type.repository_name = params[:repository_name]
        type.source_commit_specifier = params[:source_commit_specifier]
        type.destination_commit_specifier = params[:destination_commit_specifier]
        type.target_branch = params[:target_branch]
        type
      end
    end

    module MergeBranchesByFastForwardOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergeBranchesByFastForwardOutput, context: context)
        type = Types::MergeBranchesByFastForwardOutput.new
        type.commit_id = params[:commit_id]
        type.tree_id = params[:tree_id]
        type
      end
    end

    module MergeBranchesBySquashInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergeBranchesBySquashInput, context: context)
        type = Types::MergeBranchesBySquashInput.new
        type.repository_name = params[:repository_name]
        type.source_commit_specifier = params[:source_commit_specifier]
        type.destination_commit_specifier = params[:destination_commit_specifier]
        type.target_branch = params[:target_branch]
        type.conflict_detail_level = params[:conflict_detail_level]
        type.conflict_resolution_strategy = params[:conflict_resolution_strategy]
        type.author_name = params[:author_name]
        type.email = params[:email]
        type.commit_message = params[:commit_message]
        type.keep_empty_folders = params[:keep_empty_folders]
        type.conflict_resolution = ConflictResolution.build(params[:conflict_resolution], context: "#{context}[:conflict_resolution]") unless params[:conflict_resolution].nil?
        type
      end
    end

    module MergeBranchesBySquashOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergeBranchesBySquashOutput, context: context)
        type = Types::MergeBranchesBySquashOutput.new
        type.commit_id = params[:commit_id]
        type.tree_id = params[:tree_id]
        type
      end
    end

    module MergeBranchesByThreeWayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergeBranchesByThreeWayInput, context: context)
        type = Types::MergeBranchesByThreeWayInput.new
        type.repository_name = params[:repository_name]
        type.source_commit_specifier = params[:source_commit_specifier]
        type.destination_commit_specifier = params[:destination_commit_specifier]
        type.target_branch = params[:target_branch]
        type.conflict_detail_level = params[:conflict_detail_level]
        type.conflict_resolution_strategy = params[:conflict_resolution_strategy]
        type.author_name = params[:author_name]
        type.email = params[:email]
        type.commit_message = params[:commit_message]
        type.keep_empty_folders = params[:keep_empty_folders]
        type.conflict_resolution = ConflictResolution.build(params[:conflict_resolution], context: "#{context}[:conflict_resolution]") unless params[:conflict_resolution].nil?
        type
      end
    end

    module MergeBranchesByThreeWayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergeBranchesByThreeWayOutput, context: context)
        type = Types::MergeBranchesByThreeWayOutput.new
        type.commit_id = params[:commit_id]
        type.tree_id = params[:tree_id]
        type
      end
    end

    module MergeHunk
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergeHunk, context: context)
        type = Types::MergeHunk.new
        type.is_conflict = params[:is_conflict]
        type.source = MergeHunkDetail.build(params[:source], context: "#{context}[:source]") unless params[:source].nil?
        type.destination = MergeHunkDetail.build(params[:destination], context: "#{context}[:destination]") unless params[:destination].nil?
        type.base = MergeHunkDetail.build(params[:base], context: "#{context}[:base]") unless params[:base].nil?
        type
      end
    end

    module MergeHunkDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergeHunkDetail, context: context)
        type = Types::MergeHunkDetail.new
        type.start_line = params[:start_line]
        type.end_line = params[:end_line]
        type.hunk_content = params[:hunk_content]
        type
      end
    end

    module MergeHunks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MergeHunk.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MergeMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergeMetadata, context: context)
        type = Types::MergeMetadata.new
        type.is_merged = params[:is_merged]
        type.merged_by = params[:merged_by]
        type.merge_commit_id = params[:merge_commit_id]
        type.merge_option = params[:merge_option]
        type
      end
    end

    module MergeOperations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergeOperations, context: context)
        type = Types::MergeOperations.new
        type.source = params[:source]
        type.destination = params[:destination]
        type
      end
    end

    module MergeOptionRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergeOptionRequiredException, context: context)
        type = Types::MergeOptionRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module MergeOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MergePullRequestByFastForwardInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergePullRequestByFastForwardInput, context: context)
        type = Types::MergePullRequestByFastForwardInput.new
        type.pull_request_id = params[:pull_request_id]
        type.repository_name = params[:repository_name]
        type.source_commit_id = params[:source_commit_id]
        type
      end
    end

    module MergePullRequestByFastForwardOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergePullRequestByFastForwardOutput, context: context)
        type = Types::MergePullRequestByFastForwardOutput.new
        type.pull_request = PullRequest.build(params[:pull_request], context: "#{context}[:pull_request]") unless params[:pull_request].nil?
        type
      end
    end

    module MergePullRequestBySquashInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergePullRequestBySquashInput, context: context)
        type = Types::MergePullRequestBySquashInput.new
        type.pull_request_id = params[:pull_request_id]
        type.repository_name = params[:repository_name]
        type.source_commit_id = params[:source_commit_id]
        type.conflict_detail_level = params[:conflict_detail_level]
        type.conflict_resolution_strategy = params[:conflict_resolution_strategy]
        type.commit_message = params[:commit_message]
        type.author_name = params[:author_name]
        type.email = params[:email]
        type.keep_empty_folders = params[:keep_empty_folders]
        type.conflict_resolution = ConflictResolution.build(params[:conflict_resolution], context: "#{context}[:conflict_resolution]") unless params[:conflict_resolution].nil?
        type
      end
    end

    module MergePullRequestBySquashOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergePullRequestBySquashOutput, context: context)
        type = Types::MergePullRequestBySquashOutput.new
        type.pull_request = PullRequest.build(params[:pull_request], context: "#{context}[:pull_request]") unless params[:pull_request].nil?
        type
      end
    end

    module MergePullRequestByThreeWayInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergePullRequestByThreeWayInput, context: context)
        type = Types::MergePullRequestByThreeWayInput.new
        type.pull_request_id = params[:pull_request_id]
        type.repository_name = params[:repository_name]
        type.source_commit_id = params[:source_commit_id]
        type.conflict_detail_level = params[:conflict_detail_level]
        type.conflict_resolution_strategy = params[:conflict_resolution_strategy]
        type.commit_message = params[:commit_message]
        type.author_name = params[:author_name]
        type.email = params[:email]
        type.keep_empty_folders = params[:keep_empty_folders]
        type.conflict_resolution = ConflictResolution.build(params[:conflict_resolution], context: "#{context}[:conflict_resolution]") unless params[:conflict_resolution].nil?
        type
      end
    end

    module MergePullRequestByThreeWayOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergePullRequestByThreeWayOutput, context: context)
        type = Types::MergePullRequestByThreeWayOutput.new
        type.pull_request = PullRequest.build(params[:pull_request], context: "#{context}[:pull_request]") unless params[:pull_request].nil?
        type
      end
    end

    module MultipleConflictResolutionEntriesException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultipleConflictResolutionEntriesException, context: context)
        type = Types::MultipleConflictResolutionEntriesException.new
        type.message = params[:message]
        type
      end
    end

    module MultipleRepositoriesInPullRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MultipleRepositoriesInPullRequestException, context: context)
        type = Types::MultipleRepositoriesInPullRequestException.new
        type.message = params[:message]
        type
      end
    end

    module NameLengthExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NameLengthExceededException, context: context)
        type = Types::NameLengthExceededException.new
        type.message = params[:message]
        type
      end
    end

    module NoChangeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NoChangeException, context: context)
        type = Types::NoChangeException.new
        type.message = params[:message]
        type
      end
    end

    module NumberOfRuleTemplatesExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NumberOfRuleTemplatesExceededException, context: context)
        type = Types::NumberOfRuleTemplatesExceededException.new
        type.message = params[:message]
        type
      end
    end

    module NumberOfRulesExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NumberOfRulesExceededException, context: context)
        type = Types::NumberOfRulesExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ObjectTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectTypes, context: context)
        type = Types::ObjectTypes.new
        type.source = params[:source]
        type.destination = params[:destination]
        type.base = params[:base]
        type
      end
    end

    module OriginApprovalRuleTemplate
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OriginApprovalRuleTemplate, context: context)
        type = Types::OriginApprovalRuleTemplate.new
        type.approval_rule_template_id = params[:approval_rule_template_id]
        type.approval_rule_template_name = params[:approval_rule_template_name]
        type
      end
    end

    module OverrideAlreadySetException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OverrideAlreadySetException, context: context)
        type = Types::OverrideAlreadySetException.new
        type.message = params[:message]
        type
      end
    end

    module OverridePullRequestApprovalRulesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OverridePullRequestApprovalRulesInput, context: context)
        type = Types::OverridePullRequestApprovalRulesInput.new
        type.pull_request_id = params[:pull_request_id]
        type.revision_id = params[:revision_id]
        type.override_status = params[:override_status]
        type
      end
    end

    module OverridePullRequestApprovalRulesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OverridePullRequestApprovalRulesOutput, context: context)
        type = Types::OverridePullRequestApprovalRulesOutput.new
        type
      end
    end

    module OverrideStatusRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OverrideStatusRequiredException, context: context)
        type = Types::OverrideStatusRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module ParentCommitDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParentCommitDoesNotExistException, context: context)
        type = Types::ParentCommitDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module ParentCommitIdOutdatedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParentCommitIdOutdatedException, context: context)
        type = Types::ParentCommitIdOutdatedException.new
        type.message = params[:message]
        type
      end
    end

    module ParentCommitIdRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ParentCommitIdRequiredException, context: context)
        type = Types::ParentCommitIdRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module ParentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PathDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PathDoesNotExistException, context: context)
        type = Types::PathDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module PathRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PathRequiredException, context: context)
        type = Types::PathRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module PostCommentForComparedCommitInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PostCommentForComparedCommitInput, context: context)
        type = Types::PostCommentForComparedCommitInput.new
        type.repository_name = params[:repository_name]
        type.before_commit_id = params[:before_commit_id]
        type.after_commit_id = params[:after_commit_id]
        type.location = Location.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.content = params[:content]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    module PostCommentForComparedCommitOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PostCommentForComparedCommitOutput, context: context)
        type = Types::PostCommentForComparedCommitOutput.new
        type.repository_name = params[:repository_name]
        type.before_commit_id = params[:before_commit_id]
        type.after_commit_id = params[:after_commit_id]
        type.before_blob_id = params[:before_blob_id]
        type.after_blob_id = params[:after_blob_id]
        type.location = Location.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.comment = Comment.build(params[:comment], context: "#{context}[:comment]") unless params[:comment].nil?
        type
      end
    end

    module PostCommentForPullRequestInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PostCommentForPullRequestInput, context: context)
        type = Types::PostCommentForPullRequestInput.new
        type.pull_request_id = params[:pull_request_id]
        type.repository_name = params[:repository_name]
        type.before_commit_id = params[:before_commit_id]
        type.after_commit_id = params[:after_commit_id]
        type.location = Location.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.content = params[:content]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type
      end
    end

    module PostCommentForPullRequestOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PostCommentForPullRequestOutput, context: context)
        type = Types::PostCommentForPullRequestOutput.new
        type.repository_name = params[:repository_name]
        type.pull_request_id = params[:pull_request_id]
        type.before_commit_id = params[:before_commit_id]
        type.after_commit_id = params[:after_commit_id]
        type.before_blob_id = params[:before_blob_id]
        type.after_blob_id = params[:after_blob_id]
        type.location = Location.build(params[:location], context: "#{context}[:location]") unless params[:location].nil?
        type.comment = Comment.build(params[:comment], context: "#{context}[:comment]") unless params[:comment].nil?
        type
      end
    end

    module PostCommentReplyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PostCommentReplyInput, context: context)
        type = Types::PostCommentReplyInput.new
        type.in_reply_to = params[:in_reply_to]
        type.client_request_token = params[:client_request_token] || ::SecureRandom.uuid
        type.content = params[:content]
        type
      end
    end

    module PostCommentReplyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PostCommentReplyOutput, context: context)
        type = Types::PostCommentReplyOutput.new
        type.comment = Comment.build(params[:comment], context: "#{context}[:comment]") unless params[:comment].nil?
        type
      end
    end

    module PullRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PullRequest, context: context)
        type = Types::PullRequest.new
        type.pull_request_id = params[:pull_request_id]
        type.title = params[:title]
        type.description = params[:description]
        type.last_activity_date = params[:last_activity_date]
        type.creation_date = params[:creation_date]
        type.pull_request_status = params[:pull_request_status]
        type.author_arn = params[:author_arn]
        type.pull_request_targets = PullRequestTargetList.build(params[:pull_request_targets], context: "#{context}[:pull_request_targets]") unless params[:pull_request_targets].nil?
        type.client_request_token = params[:client_request_token]
        type.revision_id = params[:revision_id]
        type.approval_rules = ApprovalRulesList.build(params[:approval_rules], context: "#{context}[:approval_rules]") unless params[:approval_rules].nil?
        type
      end
    end

    module PullRequestAlreadyClosedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PullRequestAlreadyClosedException, context: context)
        type = Types::PullRequestAlreadyClosedException.new
        type.message = params[:message]
        type
      end
    end

    module PullRequestApprovalRulesNotSatisfiedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PullRequestApprovalRulesNotSatisfiedException, context: context)
        type = Types::PullRequestApprovalRulesNotSatisfiedException.new
        type.message = params[:message]
        type
      end
    end

    module PullRequestCannotBeApprovedByAuthorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PullRequestCannotBeApprovedByAuthorException, context: context)
        type = Types::PullRequestCannotBeApprovedByAuthorException.new
        type.message = params[:message]
        type
      end
    end

    module PullRequestCreatedEventMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PullRequestCreatedEventMetadata, context: context)
        type = Types::PullRequestCreatedEventMetadata.new
        type.repository_name = params[:repository_name]
        type.source_commit_id = params[:source_commit_id]
        type.destination_commit_id = params[:destination_commit_id]
        type.merge_base = params[:merge_base]
        type
      end
    end

    module PullRequestDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PullRequestDoesNotExistException, context: context)
        type = Types::PullRequestDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module PullRequestEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PullRequestEvent, context: context)
        type = Types::PullRequestEvent.new
        type.pull_request_id = params[:pull_request_id]
        type.event_date = params[:event_date]
        type.pull_request_event_type = params[:pull_request_event_type]
        type.actor_arn = params[:actor_arn]
        type.pull_request_created_event_metadata = PullRequestCreatedEventMetadata.build(params[:pull_request_created_event_metadata], context: "#{context}[:pull_request_created_event_metadata]") unless params[:pull_request_created_event_metadata].nil?
        type.pull_request_status_changed_event_metadata = PullRequestStatusChangedEventMetadata.build(params[:pull_request_status_changed_event_metadata], context: "#{context}[:pull_request_status_changed_event_metadata]") unless params[:pull_request_status_changed_event_metadata].nil?
        type.pull_request_source_reference_updated_event_metadata = PullRequestSourceReferenceUpdatedEventMetadata.build(params[:pull_request_source_reference_updated_event_metadata], context: "#{context}[:pull_request_source_reference_updated_event_metadata]") unless params[:pull_request_source_reference_updated_event_metadata].nil?
        type.pull_request_merged_state_changed_event_metadata = PullRequestMergedStateChangedEventMetadata.build(params[:pull_request_merged_state_changed_event_metadata], context: "#{context}[:pull_request_merged_state_changed_event_metadata]") unless params[:pull_request_merged_state_changed_event_metadata].nil?
        type.approval_rule_event_metadata = ApprovalRuleEventMetadata.build(params[:approval_rule_event_metadata], context: "#{context}[:approval_rule_event_metadata]") unless params[:approval_rule_event_metadata].nil?
        type.approval_state_changed_event_metadata = ApprovalStateChangedEventMetadata.build(params[:approval_state_changed_event_metadata], context: "#{context}[:approval_state_changed_event_metadata]") unless params[:approval_state_changed_event_metadata].nil?
        type.approval_rule_overridden_event_metadata = ApprovalRuleOverriddenEventMetadata.build(params[:approval_rule_overridden_event_metadata], context: "#{context}[:approval_rule_overridden_event_metadata]") unless params[:approval_rule_overridden_event_metadata].nil?
        type
      end
    end

    module PullRequestEventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PullRequestEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PullRequestIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PullRequestIdRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PullRequestIdRequiredException, context: context)
        type = Types::PullRequestIdRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module PullRequestMergedStateChangedEventMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PullRequestMergedStateChangedEventMetadata, context: context)
        type = Types::PullRequestMergedStateChangedEventMetadata.new
        type.repository_name = params[:repository_name]
        type.destination_reference = params[:destination_reference]
        type.merge_metadata = MergeMetadata.build(params[:merge_metadata], context: "#{context}[:merge_metadata]") unless params[:merge_metadata].nil?
        type
      end
    end

    module PullRequestSourceReferenceUpdatedEventMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PullRequestSourceReferenceUpdatedEventMetadata, context: context)
        type = Types::PullRequestSourceReferenceUpdatedEventMetadata.new
        type.repository_name = params[:repository_name]
        type.before_commit_id = params[:before_commit_id]
        type.after_commit_id = params[:after_commit_id]
        type.merge_base = params[:merge_base]
        type
      end
    end

    module PullRequestStatusChangedEventMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PullRequestStatusChangedEventMetadata, context: context)
        type = Types::PullRequestStatusChangedEventMetadata.new
        type.pull_request_status = params[:pull_request_status]
        type
      end
    end

    module PullRequestStatusRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PullRequestStatusRequiredException, context: context)
        type = Types::PullRequestStatusRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module PullRequestTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PullRequestTarget, context: context)
        type = Types::PullRequestTarget.new
        type.repository_name = params[:repository_name]
        type.source_reference = params[:source_reference]
        type.destination_reference = params[:destination_reference]
        type.destination_commit = params[:destination_commit]
        type.source_commit = params[:source_commit]
        type.merge_base = params[:merge_base]
        type.merge_metadata = MergeMetadata.build(params[:merge_metadata], context: "#{context}[:merge_metadata]") unless params[:merge_metadata].nil?
        type
      end
    end

    module PullRequestTargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PullRequestTarget.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutCommentReactionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutCommentReactionInput, context: context)
        type = Types::PutCommentReactionInput.new
        type.comment_id = params[:comment_id]
        type.reaction_value = params[:reaction_value]
        type
      end
    end

    module PutCommentReactionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutCommentReactionOutput, context: context)
        type = Types::PutCommentReactionOutput.new
        type
      end
    end

    module PutFileEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PutFileEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutFileEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFileEntry, context: context)
        type = Types::PutFileEntry.new
        type.file_path = params[:file_path]
        type.file_mode = params[:file_mode]
        type.file_content = params[:file_content]
        type.source_file = SourceFileSpecifier.build(params[:source_file], context: "#{context}[:source_file]") unless params[:source_file].nil?
        type
      end
    end

    module PutFileEntryConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFileEntryConflictException, context: context)
        type = Types::PutFileEntryConflictException.new
        type.message = params[:message]
        type
      end
    end

    module PutFileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFileInput, context: context)
        type = Types::PutFileInput.new
        type.repository_name = params[:repository_name]
        type.branch_name = params[:branch_name]
        type.file_content = params[:file_content]
        type.file_path = params[:file_path]
        type.file_mode = params[:file_mode]
        type.parent_commit_id = params[:parent_commit_id]
        type.commit_message = params[:commit_message]
        type.name = params[:name]
        type.email = params[:email]
        type
      end
    end

    module PutFileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutFileOutput, context: context)
        type = Types::PutFileOutput.new
        type.commit_id = params[:commit_id]
        type.blob_id = params[:blob_id]
        type.tree_id = params[:tree_id]
        type
      end
    end

    module PutRepositoryTriggersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRepositoryTriggersInput, context: context)
        type = Types::PutRepositoryTriggersInput.new
        type.repository_name = params[:repository_name]
        type.triggers = RepositoryTriggersList.build(params[:triggers], context: "#{context}[:triggers]") unless params[:triggers].nil?
        type
      end
    end

    module PutRepositoryTriggersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutRepositoryTriggersOutput, context: context)
        type = Types::PutRepositoryTriggersOutput.new
        type.configuration_id = params[:configuration_id]
        type
      end
    end

    module ReactionCountsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ReactionForComment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReactionForComment, context: context)
        type = Types::ReactionForComment.new
        type.reaction = ReactionValueFormats.build(params[:reaction], context: "#{context}[:reaction]") unless params[:reaction].nil?
        type.reaction_users = ReactionUsersList.build(params[:reaction_users], context: "#{context}[:reaction_users]") unless params[:reaction_users].nil?
        type.reactions_from_deleted_users_count = params[:reactions_from_deleted_users_count]
        type
      end
    end

    module ReactionLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReactionLimitExceededException, context: context)
        type = Types::ReactionLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ReactionUsersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ReactionValueFormats
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReactionValueFormats, context: context)
        type = Types::ReactionValueFormats.new
        type.emoji = params[:emoji]
        type.short_code = params[:short_code]
        type.unicode = params[:unicode]
        type
      end
    end

    module ReactionValueRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReactionValueRequiredException, context: context)
        type = Types::ReactionValueRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module ReactionsForCommentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReactionForComment.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReferenceDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReferenceDoesNotExistException, context: context)
        type = Types::ReferenceDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module ReferenceNameRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReferenceNameRequiredException, context: context)
        type = Types::ReferenceNameRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module ReferenceTypeNotSupportedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReferenceTypeNotSupportedException, context: context)
        type = Types::ReferenceTypeNotSupportedException.new
        type.message = params[:message]
        type
      end
    end

    module ReplaceContentEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ReplaceContentEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ReplaceContentEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplaceContentEntry, context: context)
        type = Types::ReplaceContentEntry.new
        type.file_path = params[:file_path]
        type.replacement_type = params[:replacement_type]
        type.content = params[:content]
        type.file_mode = params[:file_mode]
        type
      end
    end

    module ReplacementContentRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplacementContentRequiredException, context: context)
        type = Types::ReplacementContentRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module ReplacementTypeRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReplacementTypeRequiredException, context: context)
        type = Types::ReplacementTypeRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module RepositoryDoesNotExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryDoesNotExistException, context: context)
        type = Types::RepositoryDoesNotExistException.new
        type.message = params[:message]
        type
      end
    end

    module RepositoryLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryLimitExceededException, context: context)
        type = Types::RepositoryLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module RepositoryMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryMetadata, context: context)
        type = Types::RepositoryMetadata.new
        type.account_id = params[:account_id]
        type.repository_id = params[:repository_id]
        type.repository_name = params[:repository_name]
        type.repository_description = params[:repository_description]
        type.default_branch = params[:default_branch]
        type.last_modified_date = params[:last_modified_date]
        type.creation_date = params[:creation_date]
        type.clone_url_http = params[:clone_url_http]
        type.clone_url_ssh = params[:clone_url_ssh]
        type.arn = params[:arn]
        type
      end
    end

    module RepositoryMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RepositoryMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RepositoryNameExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryNameExistsException, context: context)
        type = Types::RepositoryNameExistsException.new
        type.message = params[:message]
        type
      end
    end

    module RepositoryNameIdPair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryNameIdPair, context: context)
        type = Types::RepositoryNameIdPair.new
        type.repository_name = params[:repository_name]
        type.repository_id = params[:repository_id]
        type
      end
    end

    module RepositoryNameIdPairList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RepositoryNameIdPair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RepositoryNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RepositoryNameRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryNameRequiredException, context: context)
        type = Types::RepositoryNameRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module RepositoryNamesRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryNamesRequiredException, context: context)
        type = Types::RepositoryNamesRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module RepositoryNotAssociatedWithPullRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryNotAssociatedWithPullRequestException, context: context)
        type = Types::RepositoryNotAssociatedWithPullRequestException.new
        type.message = params[:message]
        type
      end
    end

    module RepositoryNotFoundList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RepositoryTrigger
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryTrigger, context: context)
        type = Types::RepositoryTrigger.new
        type.name = params[:name]
        type.destination_arn = params[:destination_arn]
        type.custom_data = params[:custom_data]
        type.branches = BranchNameList.build(params[:branches], context: "#{context}[:branches]") unless params[:branches].nil?
        type.events = RepositoryTriggerEventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type
      end
    end

    module RepositoryTriggerBranchNameListRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryTriggerBranchNameListRequiredException, context: context)
        type = Types::RepositoryTriggerBranchNameListRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module RepositoryTriggerDestinationArnRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryTriggerDestinationArnRequiredException, context: context)
        type = Types::RepositoryTriggerDestinationArnRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module RepositoryTriggerEventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RepositoryTriggerEventsListRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryTriggerEventsListRequiredException, context: context)
        type = Types::RepositoryTriggerEventsListRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module RepositoryTriggerExecutionFailure
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryTriggerExecutionFailure, context: context)
        type = Types::RepositoryTriggerExecutionFailure.new
        type.trigger = params[:trigger]
        type.failure_message = params[:failure_message]
        type
      end
    end

    module RepositoryTriggerExecutionFailureList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RepositoryTriggerExecutionFailure.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RepositoryTriggerNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RepositoryTriggerNameRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryTriggerNameRequiredException, context: context)
        type = Types::RepositoryTriggerNameRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module RepositoryTriggersList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RepositoryTrigger.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RepositoryTriggersListRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RepositoryTriggersListRequiredException, context: context)
        type = Types::RepositoryTriggersListRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceArnRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceArnRequiredException, context: context)
        type = Types::ResourceArnRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module RestrictedSourceFileException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestrictedSourceFileException, context: context)
        type = Types::RestrictedSourceFileException.new
        type.message = params[:message]
        type
      end
    end

    module RevisionIdRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevisionIdRequiredException, context: context)
        type = Types::RevisionIdRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module RevisionNotCurrentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RevisionNotCurrentException, context: context)
        type = Types::RevisionNotCurrentException.new
        type.message = params[:message]
        type
      end
    end

    module SameFileContentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SameFileContentException, context: context)
        type = Types::SameFileContentException.new
        type.message = params[:message]
        type
      end
    end

    module SamePathRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SamePathRequestException, context: context)
        type = Types::SamePathRequestException.new
        type.message = params[:message]
        type
      end
    end

    module SetFileModeEntries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SetFileModeEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SetFileModeEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SetFileModeEntry, context: context)
        type = Types::SetFileModeEntry.new
        type.file_path = params[:file_path]
        type.file_mode = params[:file_mode]
        type
      end
    end

    module SourceAndDestinationAreSameException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceAndDestinationAreSameException, context: context)
        type = Types::SourceAndDestinationAreSameException.new
        type.message = params[:message]
        type
      end
    end

    module SourceFileOrContentRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceFileOrContentRequiredException, context: context)
        type = Types::SourceFileOrContentRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module SourceFileSpecifier
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceFileSpecifier, context: context)
        type = Types::SourceFileSpecifier.new
        type.file_path = params[:file_path]
        type.is_move = params[:is_move]
        type
      end
    end

    module SubModule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubModule, context: context)
        type = Types::SubModule.new
        type.commit_id = params[:commit_id]
        type.absolute_path = params[:absolute_path]
        type.relative_path = params[:relative_path]
        type
      end
    end

    module SubModuleList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SubModule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SymbolicLink
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SymbolicLink, context: context)
        type = Types::SymbolicLink.new
        type.blob_id = params[:blob_id]
        type.absolute_path = params[:absolute_path]
        type.relative_path = params[:relative_path]
        type.file_mode = params[:file_mode]
        type
      end
    end

    module SymbolicLinkList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SymbolicLink.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagKeysList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagKeysListRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagKeysListRequiredException, context: context)
        type = Types::TagKeysListRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module TagPolicyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagPolicyException, context: context)
        type = Types::TagPolicyException.new
        type.message = params[:message]
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagsMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TagsMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagsMapRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagsMapRequiredException, context: context)
        type = Types::TagsMapRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module Target
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Target, context: context)
        type = Types::Target.new
        type.repository_name = params[:repository_name]
        type.source_reference = params[:source_reference]
        type.destination_reference = params[:destination_reference]
        type
      end
    end

    module TargetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Target.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TargetRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetRequiredException, context: context)
        type = Types::TargetRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module TargetsRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetsRequiredException, context: context)
        type = Types::TargetsRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module TestRepositoryTriggersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestRepositoryTriggersInput, context: context)
        type = Types::TestRepositoryTriggersInput.new
        type.repository_name = params[:repository_name]
        type.triggers = RepositoryTriggersList.build(params[:triggers], context: "#{context}[:triggers]") unless params[:triggers].nil?
        type
      end
    end

    module TestRepositoryTriggersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TestRepositoryTriggersOutput, context: context)
        type = Types::TestRepositoryTriggersOutput.new
        type.successful_executions = RepositoryTriggerNameList.build(params[:successful_executions], context: "#{context}[:successful_executions]") unless params[:successful_executions].nil?
        type.failed_executions = RepositoryTriggerExecutionFailureList.build(params[:failed_executions], context: "#{context}[:failed_executions]") unless params[:failed_executions].nil?
        type
      end
    end

    module TipOfSourceReferenceIsDifferentException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TipOfSourceReferenceIsDifferentException, context: context)
        type = Types::TipOfSourceReferenceIsDifferentException.new
        type.message = params[:message]
        type
      end
    end

    module TipsDivergenceExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TipsDivergenceExceededException, context: context)
        type = Types::TipsDivergenceExceededException.new
        type.message = params[:message]
        type
      end
    end

    module TitleRequiredException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TitleRequiredException, context: context)
        type = Types::TitleRequiredException.new
        type.message = params[:message]
        type
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeysList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
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

    module UpdateApprovalRuleTemplateContentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApprovalRuleTemplateContentInput, context: context)
        type = Types::UpdateApprovalRuleTemplateContentInput.new
        type.approval_rule_template_name = params[:approval_rule_template_name]
        type.new_rule_content = params[:new_rule_content]
        type.existing_rule_content_sha256 = params[:existing_rule_content_sha256]
        type
      end
    end

    module UpdateApprovalRuleTemplateContentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApprovalRuleTemplateContentOutput, context: context)
        type = Types::UpdateApprovalRuleTemplateContentOutput.new
        type.approval_rule_template = ApprovalRuleTemplate.build(params[:approval_rule_template], context: "#{context}[:approval_rule_template]") unless params[:approval_rule_template].nil?
        type
      end
    end

    module UpdateApprovalRuleTemplateDescriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApprovalRuleTemplateDescriptionInput, context: context)
        type = Types::UpdateApprovalRuleTemplateDescriptionInput.new
        type.approval_rule_template_name = params[:approval_rule_template_name]
        type.approval_rule_template_description = params[:approval_rule_template_description]
        type
      end
    end

    module UpdateApprovalRuleTemplateDescriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApprovalRuleTemplateDescriptionOutput, context: context)
        type = Types::UpdateApprovalRuleTemplateDescriptionOutput.new
        type.approval_rule_template = ApprovalRuleTemplate.build(params[:approval_rule_template], context: "#{context}[:approval_rule_template]") unless params[:approval_rule_template].nil?
        type
      end
    end

    module UpdateApprovalRuleTemplateNameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApprovalRuleTemplateNameInput, context: context)
        type = Types::UpdateApprovalRuleTemplateNameInput.new
        type.old_approval_rule_template_name = params[:old_approval_rule_template_name]
        type.new_approval_rule_template_name = params[:new_approval_rule_template_name]
        type
      end
    end

    module UpdateApprovalRuleTemplateNameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateApprovalRuleTemplateNameOutput, context: context)
        type = Types::UpdateApprovalRuleTemplateNameOutput.new
        type.approval_rule_template = ApprovalRuleTemplate.build(params[:approval_rule_template], context: "#{context}[:approval_rule_template]") unless params[:approval_rule_template].nil?
        type
      end
    end

    module UpdateCommentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCommentInput, context: context)
        type = Types::UpdateCommentInput.new
        type.comment_id = params[:comment_id]
        type.content = params[:content]
        type
      end
    end

    module UpdateCommentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateCommentOutput, context: context)
        type = Types::UpdateCommentOutput.new
        type.comment = Comment.build(params[:comment], context: "#{context}[:comment]") unless params[:comment].nil?
        type
      end
    end

    module UpdateDefaultBranchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDefaultBranchInput, context: context)
        type = Types::UpdateDefaultBranchInput.new
        type.repository_name = params[:repository_name]
        type.default_branch_name = params[:default_branch_name]
        type
      end
    end

    module UpdateDefaultBranchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDefaultBranchOutput, context: context)
        type = Types::UpdateDefaultBranchOutput.new
        type
      end
    end

    module UpdatePullRequestApprovalRuleContentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePullRequestApprovalRuleContentInput, context: context)
        type = Types::UpdatePullRequestApprovalRuleContentInput.new
        type.pull_request_id = params[:pull_request_id]
        type.approval_rule_name = params[:approval_rule_name]
        type.existing_rule_content_sha256 = params[:existing_rule_content_sha256]
        type.new_rule_content = params[:new_rule_content]
        type
      end
    end

    module UpdatePullRequestApprovalRuleContentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePullRequestApprovalRuleContentOutput, context: context)
        type = Types::UpdatePullRequestApprovalRuleContentOutput.new
        type.approval_rule = ApprovalRule.build(params[:approval_rule], context: "#{context}[:approval_rule]") unless params[:approval_rule].nil?
        type
      end
    end

    module UpdatePullRequestApprovalStateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePullRequestApprovalStateInput, context: context)
        type = Types::UpdatePullRequestApprovalStateInput.new
        type.pull_request_id = params[:pull_request_id]
        type.revision_id = params[:revision_id]
        type.approval_state = params[:approval_state]
        type
      end
    end

    module UpdatePullRequestApprovalStateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePullRequestApprovalStateOutput, context: context)
        type = Types::UpdatePullRequestApprovalStateOutput.new
        type
      end
    end

    module UpdatePullRequestDescriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePullRequestDescriptionInput, context: context)
        type = Types::UpdatePullRequestDescriptionInput.new
        type.pull_request_id = params[:pull_request_id]
        type.description = params[:description]
        type
      end
    end

    module UpdatePullRequestDescriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePullRequestDescriptionOutput, context: context)
        type = Types::UpdatePullRequestDescriptionOutput.new
        type.pull_request = PullRequest.build(params[:pull_request], context: "#{context}[:pull_request]") unless params[:pull_request].nil?
        type
      end
    end

    module UpdatePullRequestStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePullRequestStatusInput, context: context)
        type = Types::UpdatePullRequestStatusInput.new
        type.pull_request_id = params[:pull_request_id]
        type.pull_request_status = params[:pull_request_status]
        type
      end
    end

    module UpdatePullRequestStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePullRequestStatusOutput, context: context)
        type = Types::UpdatePullRequestStatusOutput.new
        type.pull_request = PullRequest.build(params[:pull_request], context: "#{context}[:pull_request]") unless params[:pull_request].nil?
        type
      end
    end

    module UpdatePullRequestTitleInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePullRequestTitleInput, context: context)
        type = Types::UpdatePullRequestTitleInput.new
        type.pull_request_id = params[:pull_request_id]
        type.title = params[:title]
        type
      end
    end

    module UpdatePullRequestTitleOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdatePullRequestTitleOutput, context: context)
        type = Types::UpdatePullRequestTitleOutput.new
        type.pull_request = PullRequest.build(params[:pull_request], context: "#{context}[:pull_request]") unless params[:pull_request].nil?
        type
      end
    end

    module UpdateRepositoryDescriptionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRepositoryDescriptionInput, context: context)
        type = Types::UpdateRepositoryDescriptionInput.new
        type.repository_name = params[:repository_name]
        type.repository_description = params[:repository_description]
        type
      end
    end

    module UpdateRepositoryDescriptionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRepositoryDescriptionOutput, context: context)
        type = Types::UpdateRepositoryDescriptionOutput.new
        type
      end
    end

    module UpdateRepositoryNameInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRepositoryNameInput, context: context)
        type = Types::UpdateRepositoryNameInput.new
        type.old_name = params[:old_name]
        type.new_name = params[:new_name]
        type
      end
    end

    module UpdateRepositoryNameOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRepositoryNameOutput, context: context)
        type = Types::UpdateRepositoryNameOutput.new
        type
      end
    end

    module UserInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserInfo, context: context)
        type = Types::UserInfo.new
        type.name = params[:name]
        type.email = params[:email]
        type.date = params[:date]
        type
      end
    end

  end
end
