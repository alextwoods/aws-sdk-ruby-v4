# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeCommit
  module Types

    # <p>The specified Amazon Resource Name (ARN) does not exist in the AWS account.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ActorDoesNotExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about a specific approval on a pull request.</p>
    #
    # @!attribute user_arn
    #   <p>The Amazon Resource Name (ARN) of the user.</p>
    #
    #   @return [String]
    #
    # @!attribute approval_state
    #   <p>The state of the approval, APPROVE or REVOKE. REVOKE states are not stored.</p>
    #
    #   Enum, one of: ["APPROVE", "REVOKE"]
    #
    #   @return [String]
    #
    Approval = ::Struct.new(
      :user_arn,
      :approval_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about an approval rule.</p>
    #
    # @!attribute approval_rule_id
    #   <p>The system-generated ID of the approval rule.</p>
    #
    #   @return [String]
    #
    # @!attribute approval_rule_name
    #   <p>The name of the approval rule.</p>
    #
    #   @return [String]
    #
    # @!attribute approval_rule_content
    #   <p>The content of the approval rule.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_content_sha256
    #   <p>The SHA-256 hash signature for the content of the approval rule.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date the approval rule was most recently changed, in timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_date
    #   <p>The date the approval rule was created, in timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_user
    #   <p>The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule.</p>
    #
    #   @return [String]
    #
    # @!attribute origin_approval_rule_template
    #   <p>The approval rule template used to create the rule.</p>
    #
    #   @return [OriginApprovalRuleTemplate]
    #
    ApprovalRule = ::Struct.new(
      :approval_rule_id,
      :approval_rule_name,
      :approval_rule_content,
      :rule_content_sha256,
      :last_modified_date,
      :creation_date,
      :last_modified_user,
      :origin_approval_rule_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The content for the approval rule is empty. You must provide some content for an approval rule. The content cannot be null.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ApprovalRuleContentRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified approval rule does not exist.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ApprovalRuleDoesNotExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about an event for an approval rule.</p>
    #
    # @!attribute approval_rule_name
    #   <p>The name of the approval rule.</p>
    #
    #   @return [String]
    #
    # @!attribute approval_rule_id
    #   <p>The system-generated ID of the approval rule.</p>
    #
    #   @return [String]
    #
    # @!attribute approval_rule_content
    #   <p>The content of the approval rule.</p>
    #
    #   @return [String]
    #
    ApprovalRuleEventMetadata = ::Struct.new(
      :approval_rule_name,
      :approval_rule_id,
      :approval_rule_content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An approval rule with that name already exists. Approval rule names must be unique
    #             within the scope of a pull request.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ApprovalRuleNameAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An approval rule name is required, but was not specified.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ApprovalRuleNameRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about an override event for approval rules for a pull request.</p>
    #
    # @!attribute revision_id
    #   <p>The revision ID of the pull request when the override event occurred.</p>
    #
    #   @return [String]
    #
    # @!attribute override_status
    #   <p>The status of the override event.</p>
    #
    #   Enum, one of: ["OVERRIDE", "REVOKE"]
    #
    #   @return [String]
    #
    ApprovalRuleOverriddenEventMetadata = ::Struct.new(
      :revision_id,
      :override_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about an approval rule template.</p>
    #
    # @!attribute approval_rule_template_id
    #   <p>The system-generated ID of the approval rule template.</p>
    #
    #   @return [String]
    #
    # @!attribute approval_rule_template_name
    #   <p>The name of the approval rule template.</p>
    #
    #   @return [String]
    #
    # @!attribute approval_rule_template_description
    #   <p>The description of the approval rule template.</p>
    #
    #   @return [String]
    #
    # @!attribute approval_rule_template_content
    #   <p>The content of the approval rule template.</p>
    #
    #   @return [String]
    #
    # @!attribute rule_content_sha256
    #   <p>The SHA-256 hash signature for the content of the approval rule template.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date the approval rule template was most recently changed, in timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_date
    #   <p>The date the approval rule template was created, in timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_user
    #   <p>The Amazon Resource Name (ARN) of the user who made the most recent changes to the approval rule template.</p>
    #
    #   @return [String]
    #
    ApprovalRuleTemplate = ::Struct.new(
      :approval_rule_template_id,
      :approval_rule_template_name,
      :approval_rule_template_description,
      :approval_rule_template_content,
      :rule_content_sha256,
      :last_modified_date,
      :creation_date,
      :last_modified_user,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The content for the approval rule template is empty. You must provide some content for an approval rule template. The content cannot be null.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ApprovalRuleTemplateContentRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified approval rule template does not exist. Verify that the name is correct and that you are signed in to the AWS Region where the template
    #         was created, and then try again.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ApprovalRuleTemplateDoesNotExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The approval rule template is associated with one or more repositories. You cannot delete a template that is associated with a repository. Remove
    #         all associations, and then try again.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ApprovalRuleTemplateInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You cannot create an approval rule template with that name because a template with
    #             that name already exists in this AWS Region for your AWS account. Approval rule template
    #             names must be unique.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ApprovalRuleTemplateNameAlreadyExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An approval rule template name is required, but was not specified.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ApprovalRuleTemplateNameRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ApprovalState
    #
    module ApprovalState
      # No documentation available.
      #
      APPROVE = "APPROVE"

      # No documentation available.
      #
      REVOKE = "REVOKE"
    end

    # <p>Returns information about a change in the approval state for a pull request.</p>
    #
    # @!attribute revision_id
    #   <p>The revision ID of the pull request when the approval state changed.</p>
    #
    #   @return [String]
    #
    # @!attribute approval_status
    #   <p>The approval status for the pull request.</p>
    #
    #   Enum, one of: ["APPROVE", "REVOKE"]
    #
    #   @return [String]
    #
    ApprovalStateChangedEventMetadata = ::Struct.new(
      :revision_id,
      :approval_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An approval state is required, but was not specified.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ApprovalStateRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule_template_name
    #   <p>The name for the approval rule template. </p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository that you want to associate with the template.</p>
    #
    #   @return [String]
    #
    AssociateApprovalRuleTemplateWithRepositoryInput = ::Struct.new(
      :approval_rule_template_name,
      :repository_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    AssociateApprovalRuleTemplateWithRepositoryOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified Amazon Resource Name (ARN) does not exist in the AWS account.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    AuthorDoesNotExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about errors in a BatchAssociateApprovalRuleTemplateWithRepositories operation.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository where the association was not made.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>An error code that specifies whether the repository name was not valid or not found.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>An error message that provides details about why the repository name was not found or not valid.</p>
    #
    #   @return [String]
    #
    BatchAssociateApprovalRuleTemplateWithRepositoriesError = ::Struct.new(
      :repository_name,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule_template_name
    #   <p>The name of the template you want to associate with one or more repositories.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_names
    #   <p>The names of the repositories you want to associate with the template.</p>
    #           <note>
    #               <p>The length constraint limit is for each string in the array. The array itself can be empty.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    BatchAssociateApprovalRuleTemplateWithRepositoriesInput = ::Struct.new(
      :approval_rule_template_name,
      :repository_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute associated_repository_names
    #   <p>A list of names of the repositories that have been associated with the template.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute errors
    #   <p>A list of any errors that might have occurred while attempting to create the association between the template and the repositories.</p>
    #
    #   @return [Array<BatchAssociateApprovalRuleTemplateWithRepositoriesError>]
    #
    BatchAssociateApprovalRuleTemplateWithRepositoriesOutput = ::Struct.new(
      :associated_repository_names,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about errors in a BatchDescribeMergeConflicts operation.</p>
    #
    # @!attribute file_path
    #   <p>The path to the file.</p>
    #
    #   @return [String]
    #
    # @!attribute exception_name
    #   <p>The name of the exception.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>The message provided by the exception.</p>
    #
    #   @return [String]
    #
    BatchDescribeMergeConflictsError = ::Struct.new(
      :file_path,
      :exception_name,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository that contains the merge conflicts you want to review.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    #   @return [String]
    #
    # @!attribute source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    #   @return [String]
    #
    # @!attribute merge_option
    #   <p>The merge option or strategy you want to use to merge the code.</p>
    #
    #   Enum, one of: ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #
    #   @return [String]
    #
    # @!attribute max_merge_hunks
    #   <p>The maximum number of merge hunks to include in the output.</p>
    #
    #   @return [Integer]
    #
    # @!attribute max_conflict_files
    #   <p>The maximum number of files to include in the output.</p>
    #
    #   @return [Integer]
    #
    # @!attribute file_paths
    #   <p>The path of the target files used to describe the conflicts. If not specified, the default is all conflict files.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    #   Enum, one of: ["FILE_LEVEL", "LINE_LEVEL"]
    #
    #   @return [String]
    #
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    #   Enum, one of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    #   @return [String]
    #
    BatchDescribeMergeConflictsInput = ::Struct.new(
      :repository_name,
      :destination_commit_specifier,
      :source_commit_specifier,
      :merge_option,
      :max_merge_hunks,
      :max_conflict_files,
      :file_paths,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute conflicts
    #   <p>A list of conflicts for each file, including the conflict metadata and the hunks of the differences between the files.</p>
    #
    #   @return [Array<Conflict>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
    #
    #   @return [String]
    #
    # @!attribute errors
    #   <p>A list of any errors returned while describing the merge conflicts for each file.</p>
    #
    #   @return [Array<BatchDescribeMergeConflictsError>]
    #
    # @!attribute destination_commit_id
    #   <p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>
    #
    #   @return [String]
    #
    # @!attribute source_commit_id
    #   <p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>
    #
    #   @return [String]
    #
    # @!attribute base_commit_id
    #   <p>The commit ID of the merge base.</p>
    #
    #   @return [String]
    #
    BatchDescribeMergeConflictsOutput = ::Struct.new(
      :conflicts,
      :next_token,
      :errors,
      :destination_commit_id,
      :source_commit_id,
      :base_commit_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about errors in a BatchDisassociateApprovalRuleTemplateFromRepositories operation.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository where the association with the template was not able to be removed.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>An error code that specifies whether the repository name was not valid or not
    #               found.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>An error message that provides details about why the repository name was either not found or not valid.</p>
    #
    #   @return [String]
    #
    BatchDisassociateApprovalRuleTemplateFromRepositoriesError = ::Struct.new(
      :repository_name,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule_template_name
    #   <p>The name of the template that you want to disassociate from one or more repositories.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_names
    #   <p>The repository names that you want to disassociate from the approval rule
    #               template.</p>
    #           <note>
    #               <p>The length constraint limit is for each string in the array. The array itself can be empty.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    BatchDisassociateApprovalRuleTemplateFromRepositoriesInput = ::Struct.new(
      :approval_rule_template_name,
      :repository_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute disassociated_repository_names
    #   <p>A list of repository names that have had their association with the template
    #               removed.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute errors
    #   <p>A list of any errors that might have occurred while attempting to remove the association between the template and the repositories.</p>
    #
    #   @return [Array<BatchDisassociateApprovalRuleTemplateFromRepositoriesError>]
    #
    BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput = ::Struct.new(
      :disassociated_repository_names,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about errors in a BatchGetCommits operation.</p>
    #
    # @!attribute commit_id
    #   <p>A commit ID that either could not be found or was not in a valid format.</p>
    #
    #   @return [String]
    #
    # @!attribute error_code
    #   <p>An error code that specifies whether the commit ID was not valid or not found.</p>
    #
    #   @return [String]
    #
    # @!attribute error_message
    #   <p>An error message that provides detail about why the commit ID either was not found or was not valid.</p>
    #
    #   @return [String]
    #
    BatchGetCommitsError = ::Struct.new(
      :commit_id,
      :error_code,
      :error_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute commit_ids
    #   <p>The full commit IDs of the commits to get information about.</p>
    #           <note>
    #               <p>You must supply the full SHA IDs of each commit. You cannot use shortened SHA
    #                   IDs.</p>
    #           </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute repository_name
    #   <p>The name of the repository that contains the commits.</p>
    #
    #   @return [String]
    #
    BatchGetCommitsInput = ::Struct.new(
      :commit_ids,
      :repository_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute commits
    #   <p>An array of commit data type objects, each of which contains information about a specified commit.</p>
    #
    #   @return [Array<Commit>]
    #
    # @!attribute errors
    #   <p>Returns any commit IDs for which information could not be found. For example, if one
    #               of the commit IDs was a shortened SHA ID or that commit was not found in the specified
    #               repository, the ID returns an error object with more information.</p>
    #
    #   @return [Array<BatchGetCommitsError>]
    #
    BatchGetCommitsOutput = ::Struct.new(
      :commits,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a batch get repositories operation.</p>
    #
    # @!attribute repository_names
    #   <p>The names of the repositories to get information about.</p>
    #           <note>
    #               <p>The length constraint limit is for each string in the array. The array itself can be empty.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    BatchGetRepositoriesInput = ::Struct.new(
      :repository_names,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a batch get repositories operation.</p>
    #
    # @!attribute repositories
    #   <p>A list of repositories returned by the batch get repositories operation.</p>
    #
    #   @return [Array<RepositoryMetadata>]
    #
    # @!attribute repositories_not_found
    #   <p>Returns a list of repository names for which information could not be found.</p>
    #
    #   @return [Array<String>]
    #
    BatchGetRepositoriesOutput = ::Struct.new(
      :repositories,
      :repositories_not_found,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The before commit ID and the after commit ID are the same, which is not valid. The before commit ID and the after commit ID must be different commit IDs.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    BeforeCommitIdAndAfterCommitIdAreSameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified blob does not exist.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    BlobIdDoesNotExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A blob ID is required, but was not specified.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    BlobIdRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about a specific Git blob object.</p>
    #
    # @!attribute blob_id
    #   <p>The full ID of the blob.</p>
    #
    #   @return [String]
    #
    # @!attribute path
    #   <p>The path to the blob and associated file name, if any.</p>
    #
    #   @return [String]
    #
    # @!attribute mode
    #   <p>The file mode permissions of the blob. File mode permission codes include:</p>
    #           <ul>
    #               <li>
    #                  <p>
    #                     <code>100644</code> indicates read/write</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>100755</code> indicates read/write/execute</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>160000</code> indicates a submodule</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>120000</code> indicates a symlink</p>
    #               </li>
    #            </ul>
    #
    #   @return [String]
    #
    BlobMetadata = ::Struct.new(
      :blob_id,
      :path,
      :mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified branch does not exist.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    BranchDoesNotExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about a branch.</p>
    #
    # @!attribute branch_name
    #   <p>The name of the branch.</p>
    #
    #   @return [String]
    #
    # @!attribute commit_id
    #   <p>The ID of the last commit made to the branch.</p>
    #
    #   @return [String]
    #
    BranchInfo = ::Struct.new(
      :branch_name,
      :commit_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Cannot create the branch with the specified name because the commit conflicts with an existing branch with the same name.
    #             Branch names must be unique.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    BranchNameExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified branch name is not valid because it is a tag name. Enter the name of a
    #             branch in the repository. For a list of valid branch names, use <a>ListBranches</a>.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    BranchNameIsTagNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A branch name is required, but was not specified.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    BranchNameRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The approval rule cannot be deleted from the pull request because it was created by an
    #             approval rule template and applied to the pull request automatically.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    CannotDeleteApprovalRuleFromTemplateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The approval rule cannot be modified for the pull request because it was created by an
    #             approval rule template and applied to the pull request automatically.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    CannotModifyApprovalRuleFromTemplateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ChangeTypeEnum
    #
    module ChangeTypeEnum
      # No documentation available.
      #
      ADDED = "A"

      # No documentation available.
      #
      MODIFIED = "M"

      # No documentation available.
      #
      DELETED = "D"
    end

    # <p>A client request token is required. A client request token is an unique,
    #             client-generated idempotency token that, when provided in a request, ensures the request
    #             cannot be repeated with a changed parameter. If a request is received with the same
    #             parameters and a token is included, the request returns information about the initial
    #             request that used that token.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ClientRequestTokenRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about a specific comment.</p>
    #
    # @!attribute comment_id
    #   <p>The system-generated comment ID.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The content of the comment.</p>
    #
    #   @return [String]
    #
    # @!attribute in_reply_to
    #   <p>The ID of the comment for which this comment is a reply, if any.</p>
    #
    #   @return [String]
    #
    # @!attribute creation_date
    #   <p>The date and time the comment was created, in timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute last_modified_date
    #   <p>The date and time the comment was most recently modified, in timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute author_arn
    #   <p>The Amazon Resource Name (ARN) of the person who posted the comment.</p>
    #
    #   @return [String]
    #
    # @!attribute deleted
    #   <p>A Boolean value indicating whether the comment has been deleted.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    #
    #   @return [String]
    #
    # @!attribute caller_reactions
    #   <p>The emoji reactions to a comment, if any, submitted by the user whose credentials are associated with the call to the API.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute reaction_counts
    #   <p>A string to integer map that represents the number of individual users who have responded to a comment with the specified reactions.</p>
    #
    #   @return [Hash<String, Integer>]
    #
    Comment = ::Struct.new(
      :comment_id,
      :content,
      :in_reply_to,
      :creation_date,
      :last_modified_date,
      :author_arn,
      :deleted,
      :client_request_token,
      :caller_reactions,
      :reaction_counts,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.deleted ||= false
      end

    end

    # <p>The comment is empty. You must provide some content for a comment. The content cannot be null.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    CommentContentRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The comment is too large. Comments are limited to 1,000 characters.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    CommentContentSizeLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>This comment has already been deleted. You cannot edit or delete a deleted comment.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    CommentDeletedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>No comment exists with the provided ID. Verify that you have used the correct ID, and
    #             then try again.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    CommentDoesNotExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The comment ID is missing or null. A comment ID is required.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    CommentIdRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You cannot modify or delete this comment. Only comment authors can modify or delete their comments.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    CommentNotCreatedByCallerException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about comments on the comparison between two commits.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository that contains the compared commits.</p>
    #
    #   @return [String]
    #
    # @!attribute before_commit_id
    #   <p>The full commit ID of the commit used to establish the before of the
    #               comparison.</p>
    #
    #   @return [String]
    #
    # @!attribute after_commit_id
    #   <p>The full commit ID of the commit used to establish the after of the comparison.</p>
    #
    #   @return [String]
    #
    # @!attribute before_blob_id
    #   <p>The full blob ID of the commit used to establish the before of the comparison.</p>
    #
    #   @return [String]
    #
    # @!attribute after_blob_id
    #   <p>The full blob ID of the commit used to establish the after of the comparison.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>Location information about the comment on the comparison, including the file name,
    #               line number, and whether the version of the file where the comment was made is BEFORE or
    #               AFTER.</p>
    #
    #   @return [Location]
    #
    # @!attribute comments
    #   <p>An array of comment objects. Each comment object contains information about a comment on the comparison
    #            between commits.</p>
    #
    #   @return [Array<Comment>]
    #
    CommentsForComparedCommit = ::Struct.new(
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :before_blob_id,
      :after_blob_id,
      :location,
      :comments,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about comments on a pull request.</p>
    #
    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository that contains the pull request.</p>
    #
    #   @return [String]
    #
    # @!attribute before_commit_id
    #   <p>The full commit ID of the commit that was the tip of the destination branch when the
    #               pull request was created. This commit is superceded by the after commit in the source
    #               branch when and if you merge the source branch into the destination branch.</p>
    #
    #   @return [String]
    #
    # @!attribute after_commit_id
    #   <p>The full commit ID of the commit that was the tip of the source branch at the time the
    #               comment was made. </p>
    #
    #   @return [String]
    #
    # @!attribute before_blob_id
    #   <p>The full blob ID of the file on which you want to comment on the destination commit.</p>
    #
    #   @return [String]
    #
    # @!attribute after_blob_id
    #   <p>The full blob ID of the file on which you want to comment on the source commit.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>Location information about the comment on the pull request, including the file name,
    #               line number, and whether the version of the file where the comment was made is BEFORE
    #               (destination branch) or AFTER (source branch).</p>
    #
    #   @return [Location]
    #
    # @!attribute comments
    #   <p>An array of comment objects. Each comment object contains information about a comment on the pull request.</p>
    #
    #   @return [Array<Comment>]
    #
    CommentsForPullRequest = ::Struct.new(
      :pull_request_id,
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :before_blob_id,
      :after_blob_id,
      :location,
      :comments,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about a specific commit.</p>
    #
    # @!attribute commit_id
    #   <p>The full SHA ID of the specified commit. </p>
    #
    #   @return [String]
    #
    # @!attribute tree_id
    #   <p>Tree information for the specified commit.</p>
    #
    #   @return [String]
    #
    # @!attribute parents
    #   <p>A list of parent commits for the specified commit. Each parent commit ID is the full commit ID.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute message
    #   <p>The commit message associated with the specified commit.</p>
    #
    #   @return [String]
    #
    # @!attribute author
    #   <p>Information about the author of the specified commit. Information includes
    #               the date in timestamp format with GMT offset, the name of the author, and the email address for the author, as configured
    #               in Git.</p>
    #
    #   @return [UserInfo]
    #
    # @!attribute committer
    #   <p>Information about the person who committed the specified commit, also known as the committer. Information includes
    #           the date in timestamp format with GMT offset, the name of the committer, and the email address for the committer, as configured
    #           in Git.</p>
    #           <p>For more information
    #               about the difference between an author and a committer in Git, see <a href="http://git-scm.com/book/ch2-3.html">Viewing the Commit History</a> in Pro Git
    #               by Scott Chacon and Ben Straub.</p>
    #
    #   @return [UserInfo]
    #
    # @!attribute additional_data
    #   <p>Any other data associated with the specified commit.</p>
    #
    #   @return [String]
    #
    Commit = ::Struct.new(
      :commit_id,
      :tree_id,
      :parents,
      :message,
      :author,
      :committer,
      :additional_data,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified commit does not exist or no commit was specified, and the specified repository has no default branch.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    CommitDoesNotExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified commit ID does not exist.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    CommitIdDoesNotExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A commit ID was not specified.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    CommitIdRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of allowed commit IDs in a batch request is 100. Verify that your batch requests contains no more than 100 commit IDs, and then try again.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    CommitIdsLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of commit IDs is required, but was either not specified or the list was empty.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    CommitIdsListRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The commit message is too long. Provide a shorter string. </p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    CommitMessageLengthExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A commit was not specified.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    CommitRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The merge cannot be completed because the target branch has been modified. Another user might have modified the target branch while the merge was in progress. Wait a few minutes, and then try again.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ConcurrentReferenceUpdateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about conflicts in a merge operation.</p>
    #
    # @!attribute conflict_metadata
    #   <p>Metadata about a conflict in a merge operation.</p>
    #
    #   @return [ConflictMetadata]
    #
    # @!attribute merge_hunks
    #   <p>A list of hunks that contain the differences between files or lines causing the conflict.</p>
    #
    #   @return [Array<MergeHunk>]
    #
    Conflict = ::Struct.new(
      :conflict_metadata,
      :merge_hunks,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConflictDetailLevelTypeEnum
    #
    module ConflictDetailLevelTypeEnum
      # No documentation available.
      #
      FILE_LEVEL = "FILE_LEVEL"

      # No documentation available.
      #
      LINE_LEVEL = "LINE_LEVEL"
    end

    # <p>Information about the metadata for a conflict in a merge operation.</p>
    #
    # @!attribute file_path
    #   <p>The path of the file that contains conflicts.</p>
    #
    #   @return [String]
    #
    # @!attribute file_sizes
    #   <p>The file sizes of the file in the source, destination, and base of the merge.</p>
    #
    #   @return [FileSizes]
    #
    # @!attribute file_modes
    #   <p>The file modes of the file in the source, destination, and base of the merge.</p>
    #
    #   @return [FileModes]
    #
    # @!attribute object_types
    #   <p>Information about any object type conflicts in a merge operation.</p>
    #
    #   @return [ObjectTypes]
    #
    # @!attribute number_of_conflicts
    #   <p>The number of conflicts, including both hunk conflicts and metadata conflicts.</p>
    #
    #   @return [Integer]
    #
    # @!attribute is_binary_file
    #   <p>A boolean value (true or false) indicating whether the file is binary or textual in the source, destination, and base of the merge.</p>
    #
    #   @return [IsBinaryFile]
    #
    # @!attribute content_conflict
    #   <p>A boolean value indicating whether there are conflicts in the content of a file.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute file_mode_conflict
    #   <p>A boolean value indicating whether there are conflicts in the file mode of a file.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute object_type_conflict
    #   <p>A boolean value (true or false) indicating whether there are conflicts between the branches in the object type of a file, folder, or submodule.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute merge_operations
    #   <p>Whether an add, modify, or delete operation caused the conflict between the source and destination of the merge.</p>
    #
    #   @return [MergeOperations]
    #
    ConflictMetadata = ::Struct.new(
      :file_path,
      :file_sizes,
      :file_modes,
      :object_types,
      :number_of_conflicts,
      :is_binary_file,
      :content_conflict,
      :file_mode_conflict,
      :object_type_conflict,
      :merge_operations,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.number_of_conflicts ||= 0
        self.content_conflict ||= false
        self.file_mode_conflict ||= false
        self.object_type_conflict ||= false
      end

    end

    # <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #             resolving conflicts during a merge.</p>
    #
    # @!attribute replace_contents
    #   <p>Files to have content replaced as part of the merge conflict resolution.</p>
    #
    #   @return [Array<ReplaceContentEntry>]
    #
    # @!attribute delete_files
    #   <p>Files to be deleted as part of the merge conflict resolution.</p>
    #
    #   @return [Array<DeleteFileEntry>]
    #
    # @!attribute set_file_modes
    #   <p>File modes that are set as part of the merge conflict resolution.</p>
    #
    #   @return [Array<SetFileModeEntry>]
    #
    ConflictResolution = ::Struct.new(
      :replace_contents,
      :delete_files,
      :set_file_modes,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ConflictResolutionStrategyTypeEnum
    #
    module ConflictResolutionStrategyTypeEnum
      # No documentation available.
      #
      NONE = "NONE"

      # No documentation available.
      #
      ACCEPT_SOURCE = "ACCEPT_SOURCE"

      # No documentation available.
      #
      ACCEPT_DESTINATION = "ACCEPT_DESTINATION"

      # No documentation available.
      #
      AUTOMERGE = "AUTOMERGE"
    end

    # @!attribute approval_rule_template_name
    #   <p>The name of the approval rule template. Provide descriptive names, because this name
    #               is applied to the approval rules created automatically in associated
    #               repositories.</p>
    #
    #   @return [String]
    #
    # @!attribute approval_rule_template_content
    #   <p>The content of the approval rule that is created on pull requests in associated
    #               repositories. If you specify one or more destination references (branches), approval
    #               rules are created in an associated repository only if their destination references
    #               (branches) match those specified in the template.</p>
    #           <note>
    #               <p>When you create the content of the approval rule template, you can specify
    #                   approvers in an approval pool in one of two ways:</p>
    #               <ul>
    #                  <li>
    #                       <p>
    #                        <b>CodeCommitApprovers</b>: This option only
    #                           requires an AWS account and a resource. It can be used for both IAM users
    #                           and federated access users whose name matches the provided resource name.
    #                           This is a very powerful option that offers a great deal of flexibility. For
    #                           example, if you specify the AWS account <i>123456789012</i>
    #                           and <i>Mary_Major</i>, all of the following are counted as
    #                           approvals coming from that user:</p>
    #                       <ul>
    #                        <li>
    #                               <p>An IAM user in the account
    #                                   (arn:aws:iam::<i>123456789012</i>:user/<i>Mary_Major</i>)</p>
    #                           </li>
    #                        <li>
    #                               <p>A federated user identified in IAM as Mary_Major
    #                                   (arn:aws:sts::<i>123456789012</i>:federated-user/<i>Mary_Major</i>)</p>
    #                           </li>
    #                     </ul>
    #                       <p>This option does not recognize an active session of someone assuming the
    #                           role of CodeCommitReview with a role session name of
    #                               <i>Mary_Major</i>
    #                               (arn:aws:sts::<i>123456789012</i>:assumed-role/CodeCommitReview/<i>Mary_Major</i>)
    #                           unless you include a wildcard (*Mary_Major).</p>
    #                   </li>
    #                  <li>
    #                       <p>
    #                        <b>Fully qualified ARN</b>: This option allows
    #                           you to specify the fully qualified Amazon Resource Name (ARN) of the IAM
    #                           user or role. </p>
    #                   </li>
    #               </ul>
    #               <p>For more information about IAM ARNs, wildcards, and formats, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
    #                       Identifiers</a> in the <i>IAM User Guide</i>.</p>
    #
    #           </note>
    #
    #   @return [String]
    #
    # @!attribute approval_rule_template_description
    #   <p>The description of the approval rule template. Consider providing a description that
    #               explains what this template does and when it might be appropriate to associate it with
    #               repositories.</p>
    #
    #   @return [String]
    #
    CreateApprovalRuleTemplateInput = ::Struct.new(
      :approval_rule_template_name,
      :approval_rule_template_content,
      :approval_rule_template_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule_template
    #   <p>The content and structure of the created approval rule template.</p>
    #
    #   @return [ApprovalRuleTemplate]
    #
    CreateApprovalRuleTemplateOutput = ::Struct.new(
      :approval_rule_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a create branch operation.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository in which you want to create the new branch.</p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p>The name of the new branch to create.</p>
    #
    #   @return [String]
    #
    # @!attribute commit_id
    #   <p>The ID of the commit to point the new branch to.</p>
    #
    #   @return [String]
    #
    CreateBranchInput = ::Struct.new(
      :repository_name,
      :branch_name,
      :commit_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    CreateBranchOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you create the commit.</p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p>The name of the branch where you create the commit.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_commit_id
    #   <p>The ID of the commit that is the parent of the commit you create. Not required if this
    #               is an empty repository.</p>
    #
    #   @return [String]
    #
    # @!attribute author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address of the person who created the commit.</p>
    #
    #   @return [String]
    #
    # @!attribute commit_message
    #   <p>The commit message you want to include in the commit. Commit messages are limited to
    #               256 KB. If no message is specified, a default message is used.</p>
    #
    #   @return [String]
    #
    # @!attribute keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If true, a ..gitkeep file is created for empty folders.
    #               The default is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute put_files
    #   <p>The files to add or update in this commit.</p>
    #
    #   @return [Array<PutFileEntry>]
    #
    # @!attribute delete_files
    #   <p>The files to delete in this commit. These files still exist in earlier commits.</p>
    #
    #   @return [Array<DeleteFileEntry>]
    #
    # @!attribute set_file_modes
    #   <p>The file modes to update for files in this commit.</p>
    #
    #   @return [Array<SetFileModeEntry>]
    #
    CreateCommitInput = ::Struct.new(
      :repository_name,
      :branch_name,
      :parent_commit_id,
      :author_name,
      :email,
      :commit_message,
      :keep_empty_folders,
      :put_files,
      :delete_files,
      :set_file_modes,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.keep_empty_folders ||= false
      end

    end

    # @!attribute commit_id
    #   <p>The full commit ID of the commit that contains your committed file changes.</p>
    #
    #   @return [String]
    #
    # @!attribute tree_id
    #   <p>The full SHA-1 pointer of the tree information for the commit that contains the commited file changes.</p>
    #
    #   @return [String]
    #
    # @!attribute files_added
    #   <p>The files added as part of the committed file changes.</p>
    #
    #   @return [Array<FileMetadata>]
    #
    # @!attribute files_updated
    #   <p>The files updated as part of the commited file changes.</p>
    #
    #   @return [Array<FileMetadata>]
    #
    # @!attribute files_deleted
    #   <p>The files deleted as part of the committed file changes.</p>
    #
    #   @return [Array<FileMetadata>]
    #
    CreateCommitOutput = ::Struct.new(
      :commit_id,
      :tree_id,
      :files_added,
      :files_updated,
      :files_deleted,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request for which you want to create the approval rule.</p>
    #
    #   @return [String]
    #
    # @!attribute approval_rule_name
    #   <p>The name for the approval rule.</p>
    #
    #   @return [String]
    #
    # @!attribute approval_rule_content
    #   <p>The content of the approval rule, including the number of approvals needed and the structure of an approval pool defined for approvals, if any. For more information
    #           about approval pools, see the AWS CodeCommit User Guide.</p>
    #           <note>
    #               <p>When you create the content of the approval rule, you can specify approvers in an
    #                   approval pool in one of two ways:</p>
    #               <ul>
    #                  <li>
    #                       <p>
    #                        <b>CodeCommitApprovers</b>: This option only
    #                           requires an AWS account and a resource. It can be used for both IAM users
    #                           and federated access users whose name matches the provided resource name.
    #                           This is a very powerful option that offers a great deal of flexibility. For
    #                           example, if you specify the AWS account <i>123456789012</i>
    #                           and <i>Mary_Major</i>, all of the following would be counted
    #                           as approvals coming from that user:</p>
    #                       <ul>
    #                        <li>
    #                               <p>An IAM user in the account
    #                                       (arn:aws:iam::<i>123456789012</i>:user/<i>Mary_Major</i>)</p>
    #                           </li>
    #                        <li>
    #                               <p>A federated user identified in IAM as Mary_Major
    #                                       (arn:aws:sts::<i>123456789012</i>:federated-user/<i>Mary_Major</i>)</p>
    #                           </li>
    #                     </ul>
    #                       <p>This option does not recognize an active session of someone assuming the
    #                           role of CodeCommitReview with a role session name of
    #                               <i>Mary_Major</i>
    #                               (arn:aws:sts::<i>123456789012</i>:assumed-role/CodeCommitReview/<i>Mary_Major</i>)
    #                           unless you include a wildcard (*Mary_Major).</p>
    #                   </li>
    #                  <li>
    #                       <p>
    #                        <b>Fully qualified ARN</b>: This option allows
    #                           you to specify the fully qualified Amazon Resource Name (ARN) of the IAM
    #                           user or role. </p>
    #                   </li>
    #               </ul>
    #               <p>For more information about IAM ARNs, wildcards, and formats, see
    #                  <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
    #                   Identifiers</a> in the <i>IAM User Guide</i>.</p>
    #
    #           </note>
    #
    #   @return [String]
    #
    CreatePullRequestApprovalRuleInput = ::Struct.new(
      :pull_request_id,
      :approval_rule_name,
      :approval_rule_content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule
    #   <p>Information about the created approval rule.</p>
    #
    #   @return [ApprovalRule]
    #
    CreatePullRequestApprovalRuleOutput = ::Struct.new(
      :approval_rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute title
    #   <p>The title of the pull request. This title is used to identify the pull request to
    #               other users in the repository.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>A description of the pull request.</p>
    #
    #   @return [String]
    #
    # @!attribute targets
    #   <p>The targets for the pull request, including the source of the code to be reviewed (the
    #               source branch) and the destination where the creator of the pull request intends the
    #               code to be merged after the pull request is closed (the destination branch).</p>
    #
    #   @return [Array<Target>]
    #
    # @!attribute client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    #           <note>
    #               <p>The AWS SDKs prepopulate client request tokens. If you are using an AWS SDK, an
    #                   idempotency token is created for you.</p>
    #           </note>
    #
    #   @return [String]
    #
    CreatePullRequestInput = ::Struct.new(
      :title,
      :description,
      :targets,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request
    #   <p>Information about the newly created pull request.</p>
    #
    #   @return [PullRequest]
    #
    CreatePullRequestOutput = ::Struct.new(
      :pull_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a create repository operation.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the new repository to be created.</p>
    #           <note>
    #               <p>The repository name must be unique across the calling AWS account. Repository names
    #                   are limited to 100 alphanumeric, dash, and underscore characters, and cannot include
    #                   certain characters. For more information about the limits on repository names, see
    #                       <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">Limits</a> in the <i>AWS CodeCommit User Guide</i>. The
    #                   suffix .git is prohibited.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute repository_description
    #   <p>A comment or description about the new repository.</p>
    #           <note>
    #               <p>The description field for a repository accepts all HTML characters and all valid
    #                   Unicode characters. Applications that do not HTML-encode the description and display
    #                   it in a webpage can expose users to potentially malicious code. Make sure that you
    #                   HTML-encode the description field in any application that uses this API to display
    #                   the repository description on a webpage.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>One or more tag key-value pairs to use when tagging this repository.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateRepositoryInput = ::Struct.new(
      :repository_name,
      :repository_description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a create repository operation.</p>
    #
    # @!attribute repository_metadata
    #   <p>Information about the newly created repository.</p>
    #
    #   @return [RepositoryMetadata]
    #
    CreateRepositoryOutput = ::Struct.new(
      :repository_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you want to create the unreferenced merge commit.</p>
    #
    #   @return [String]
    #
    # @!attribute source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    #   @return [String]
    #
    # @!attribute destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    #   @return [String]
    #
    # @!attribute merge_option
    #   <p>The merge option or strategy you want to use to merge the code.</p>
    #
    #   Enum, one of: ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #
    #   @return [String]
    #
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    #   Enum, one of: ["FILE_LEVEL", "LINE_LEVEL"]
    #
    #   @return [String]
    #
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    #   Enum, one of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #
    #   @return [String]
    #
    # @!attribute author_name
    #   <p>The name of the author who created the unreferenced commit. This information is used
    #               as both the author and committer for the commit.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address for the person who created the unreferenced commit.</p>
    #
    #   @return [String]
    #
    # @!attribute commit_message
    #   <p>The commit message for the unreferenced commit.</p>
    #
    #   @return [String]
    #
    # @!attribute keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If this is specified as true, a .gitkeep file is
    #               created for empty folders. The default is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    #
    #   @return [ConflictResolution]
    #
    CreateUnreferencedMergeCommitInput = ::Struct.new(
      :repository_name,
      :source_commit_specifier,
      :destination_commit_specifier,
      :merge_option,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      :author_name,
      :email,
      :commit_message,
      :keep_empty_folders,
      :conflict_resolution,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.keep_empty_folders ||= false
      end

    end

    # @!attribute commit_id
    #   <p>The full commit ID of the commit that contains your merge results.</p>
    #
    #   @return [String]
    #
    # @!attribute tree_id
    #   <p>The full SHA-1 pointer of the tree information for the commit that contains the merge results.</p>
    #
    #   @return [String]
    #
    CreateUnreferencedMergeCommitOutput = ::Struct.new(
      :commit_id,
      :tree_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified branch is the default branch for the repository, and cannot be deleted. To delete this branch, you must first set another branch as the default branch.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    DefaultBranchCannotBeDeletedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule_template_name
    #   <p>The name of the approval rule template to delete.</p>
    #
    #   @return [String]
    #
    DeleteApprovalRuleTemplateInput = ::Struct.new(
      :approval_rule_template_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule_template_id
    #   <p>The system-generated ID of the deleted approval rule template. If the template has
    #               been previously deleted, the only response is a 200 OK.</p>
    #
    #   @return [String]
    #
    DeleteApprovalRuleTemplateOutput = ::Struct.new(
      :approval_rule_template_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a delete branch operation.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository that contains the branch to be deleted.</p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p>The name of the branch to delete.</p>
    #
    #   @return [String]
    #
    DeleteBranchInput = ::Struct.new(
      :repository_name,
      :branch_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a delete branch operation.</p>
    #
    # @!attribute deleted_branch
    #   <p>Information about the branch deleted by the operation, including the branch name and the commit ID that was the tip of the branch.</p>
    #
    #   @return [BranchInfo]
    #
    DeleteBranchOutput = ::Struct.new(
      :deleted_branch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute comment_id
    #   <p>The unique, system-generated ID of the comment. To get this ID, use  <a>GetCommentsForComparedCommit</a>
    #            or <a>GetCommentsForPullRequest</a>.</p>
    #
    #   @return [String]
    #
    DeleteCommentContentInput = ::Struct.new(
      :comment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute comment
    #   <p>Information about the comment you just deleted.</p>
    #
    #   @return [Comment]
    #
    DeleteCommentContentOutput = ::Struct.new(
      :comment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A file that is deleted as part of a commit.</p>
    #
    # @!attribute file_path
    #   <p>The full path of the file to be deleted, including the name of the file.</p>
    #
    #   @return [String]
    #
    DeleteFileEntry = ::Struct.new(
      :file_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository that contains the file to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p>The name of the branch where the commit that deletes the file is made.</p>
    #
    #   @return [String]
    #
    # @!attribute file_path
    #   <p>The fully qualified path to the file that to be deleted, including the full name and
    #               extension of that file. For example, /examples/file.md is a fully qualified path to a
    #               file named file.md in a folder named examples.</p>
    #
    #   @return [String]
    #
    # @!attribute parent_commit_id
    #   <p>The ID of the commit that is the tip of the branch where you want to create the commit
    #               that deletes the file. This must be the HEAD commit for the branch. The commit that
    #               deletes the file is created from this commit ID.</p>
    #
    #   @return [String]
    #
    # @!attribute keep_empty_folders
    #   <p>If a file is the only object in the folder or directory, specifies whether to delete
    #               the folder or directory that contains the file. By default, empty folders are deleted.
    #               This includes empty folders that are part of the directory structure. For example, if
    #               the path to a file is dir1/dir2/dir3/dir4, and dir2 and dir3 are empty, deleting the
    #               last file in dir4 also deletes the empty folders dir4, dir3, and dir2.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute commit_message
    #   <p>The commit message you want to include as part of deleting the file. Commit messages
    #               are limited to 256 KB. If no message is specified, a default message is used.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the author of the commit that deletes the file. If no name is specified,
    #               the user's ARN is used as the author name and committer name.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address for the commit that deletes the file. If no email address is
    #               specified, the email address is left blank.</p>
    #
    #   @return [String]
    #
    DeleteFileInput = ::Struct.new(
      :repository_name,
      :branch_name,
      :file_path,
      :parent_commit_id,
      :keep_empty_folders,
      :commit_message,
      :name,
      :email,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.keep_empty_folders ||= false
      end

    end

    # @!attribute commit_id
    #   <p>The full commit ID of the commit that contains the change that deletes the file.</p>
    #
    #   @return [String]
    #
    # @!attribute blob_id
    #   <p>The blob ID removed from the tree as part of deleting the file.</p>
    #
    #   @return [String]
    #
    # @!attribute tree_id
    #   <p>The full SHA-1 pointer of the tree information for the commit that contains the delete file change.</p>
    #
    #   @return [String]
    #
    # @!attribute file_path
    #   <p>The fully qualified path to the file to be deleted, including the full name and
    #               extension of that file.</p>
    #
    #   @return [String]
    #
    DeleteFileOutput = ::Struct.new(
      :commit_id,
      :blob_id,
      :tree_id,
      :file_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request that contains the approval rule you want to delete.</p>
    #
    #   @return [String]
    #
    # @!attribute approval_rule_name
    #   <p>The name of the approval rule you want to delete.</p>
    #
    #   @return [String]
    #
    DeletePullRequestApprovalRuleInput = ::Struct.new(
      :pull_request_id,
      :approval_rule_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule_id
    #   <p>The ID of the deleted approval rule. </p>
    #           <note>
    #               <p>If the approval rule was deleted in an earlier API call, the response is 200 OK without
    #                   content.</p>
    #            </note>
    #
    #   @return [String]
    #
    DeletePullRequestApprovalRuleOutput = ::Struct.new(
      :approval_rule_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a delete repository operation.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository to delete.</p>
    #
    #   @return [String]
    #
    DeleteRepositoryInput = ::Struct.new(
      :repository_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a delete repository operation.</p>
    #
    # @!attribute repository_id
    #   <p>The ID of the repository that was deleted.</p>
    #
    #   @return [String]
    #
    DeleteRepositoryOutput = ::Struct.new(
      :repository_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you want to get information about a merge conflict.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    #   @return [String]
    #
    # @!attribute source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    #   @return [String]
    #
    # @!attribute merge_option
    #   <p>The merge option or strategy you want to use to merge the code.</p>
    #
    #   Enum, one of: ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #
    #   @return [String]
    #
    # @!attribute max_merge_hunks
    #   <p>The maximum number of merge hunks to include in the output.</p>
    #
    #   @return [Integer]
    #
    # @!attribute file_path
    #   <p>The path of the target files used to describe the conflicts. </p>
    #
    #   @return [String]
    #
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    #   Enum, one of: ["FILE_LEVEL", "LINE_LEVEL"]
    #
    #   @return [String]
    #
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    #   Enum, one of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    #   @return [String]
    #
    DescribeMergeConflictsInput = ::Struct.new(
      :repository_name,
      :destination_commit_specifier,
      :source_commit_specifier,
      :merge_option,
      :max_merge_hunks,
      :file_path,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute conflict_metadata
    #   <p>Contains metadata about the conflicts found in the merge.</p>
    #
    #   @return [ConflictMetadata]
    #
    # @!attribute merge_hunks
    #   <p>A list of merge hunks of the differences between the files or lines.</p>
    #
    #   @return [Array<MergeHunk>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_commit_id
    #   <p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>
    #
    #   @return [String]
    #
    # @!attribute source_commit_id
    #   <p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>
    #
    #   @return [String]
    #
    # @!attribute base_commit_id
    #   <p>The commit ID of the merge base.</p>
    #
    #   @return [String]
    #
    DescribeMergeConflictsOutput = ::Struct.new(
      :conflict_metadata,
      :merge_hunks,
      :next_token,
      :destination_commit_id,
      :source_commit_id,
      :base_commit_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute pull_request_event_type
    #   <p>Optional. The pull request event type about which you want to return information.</p>
    #
    #   Enum, one of: ["PULL_REQUEST_CREATED", "PULL_REQUEST_STATUS_CHANGED", "PULL_REQUEST_SOURCE_REFERENCE_UPDATED", "PULL_REQUEST_MERGE_STATE_CHANGED", "PULL_REQUEST_APPROVAL_RULE_CREATED", "PULL_REQUEST_APPROVAL_RULE_UPDATED", "PULL_REQUEST_APPROVAL_RULE_DELETED", "PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN", "PULL_REQUEST_APPROVAL_STATE_CHANGED"]
    #
    #   @return [String]
    #
    # @!attribute actor_arn
    #   <p>The Amazon Resource Name (ARN) of the user whose actions resulted in the event.
    #               Examples include updating the pull request with more commits or changing the status of a
    #               pull request.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.
    #               The default is 100 events, which is also the maximum number of events that can be returned in a result.</p>
    #
    #   @return [Integer]
    #
    DescribePullRequestEventsInput = ::Struct.new(
      :pull_request_id,
      :pull_request_event_type,
      :actor_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request_events
    #   <p>Information about the pull request events.</p>
    #
    #   @return [Array<PullRequestEvent>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
    #
    #   @return [String]
    #
    DescribePullRequestEventsOutput = ::Struct.new(
      :pull_request_events,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about a set of differences for a commit specifier.</p>
    #
    # @!attribute before_blob
    #   <p>Information about a <code>beforeBlob</code> data type object, including the ID,
    #               the file mode permission code, and the path.</p>
    #
    #   @return [BlobMetadata]
    #
    # @!attribute after_blob
    #   <p>Information about an <code>afterBlob</code> data type object, including the ID,
    #               the file mode permission code, and the path.</p>
    #
    #   @return [BlobMetadata]
    #
    # @!attribute change_type
    #   <p>Whether the change type of the difference is an addition (A), deletion (D), or modification (M).</p>
    #
    #   Enum, one of: ["A", "M", "D"]
    #
    #   @return [String]
    #
    Difference = ::Struct.new(
      :before_blob,
      :after_blob,
      :change_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A file cannot be added to the repository because the specified path name has the same name as a file that already exists in this repository.
    #         Either provide a different name for the file, or specify a different path for the file.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    DirectoryNameConflictsWithFileNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule_template_name
    #   <p>The name of the approval rule template to disassociate from a specified repository.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository you want to disassociate from the template.</p>
    #
    #   @return [String]
    #
    DisassociateApprovalRuleTemplateFromRepositoryInput = ::Struct.new(
      :approval_rule_template_name,
      :repository_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DisassociateApprovalRuleTemplateFromRepositoryOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An encryption integrity check failed.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    EncryptionIntegrityChecksFailedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An encryption key could not be accessed.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    EncryptionKeyAccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The encryption key is disabled.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    EncryptionKeyDisabledException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>No encryption key was found.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    EncryptionKeyNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The encryption key is not available.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    EncryptionKeyUnavailableException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request you want to evaluate.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The system-generated ID for the pull request revision. To retrieve the most recent
    #               revision ID for a pull request, use
    #               <a>GetPullRequest</a>.</p>
    #
    #   @return [String]
    #
    EvaluatePullRequestApprovalRulesInput = ::Struct.new(
      :pull_request_id,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute evaluation
    #   <p>The result of the evaluation, including the names of the rules whose conditions have been met (if any), the names of the rules whose conditions have
    #           not been met (if any), whether the pull request is in the approved state, and whether the pull request approval rule has been set aside by an override. </p>
    #
    #   @return [Evaluation]
    #
    EvaluatePullRequestApprovalRulesOutput = ::Struct.new(
      :evaluation,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about the approval rules applied to a pull request and whether conditions have been met.</p>
    #
    # @!attribute approved
    #   <p>Whether the state of the pull request is approved.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute overridden
    #   <p>Whether the approval rule requirements for the pull request have been overridden and no longer need to be met.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute approval_rules_satisfied
    #   <p>The names of the approval rules that have had their conditions met.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute approval_rules_not_satisfied
    #   <p>The names of the approval rules that have not had their conditions met.</p>
    #
    #   @return [Array<String>]
    #
    Evaluation = ::Struct.new(
      :approved,
      :overridden,
      :approval_rules_satisfied,
      :approval_rules_not_satisfied,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.approved ||= false
        self.overridden ||= false
      end

    end

    # <p>Returns information about a file in a repository.</p>
    #
    # @!attribute blob_id
    #   <p>The blob ID that contains the file information.</p>
    #
    #   @return [String]
    #
    # @!attribute absolute_path
    #   <p>The fully qualified path to the file in the repository.</p>
    #
    #   @return [String]
    #
    # @!attribute relative_path
    #   <p>The relative path of the file from the folder where the query originated.</p>
    #
    #   @return [String]
    #
    # @!attribute file_mode
    #   <p>The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.</p>
    #
    #   Enum, one of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #
    #   @return [String]
    #
    File = ::Struct.new(
      :blob_id,
      :absolute_path,
      :relative_path,
      :file_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The commit cannot be created because both a source file and file content have been
    #             specified for the same file. You cannot provide both. Either specify a source file or
    #             provide the file content directly.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    FileContentAndSourceFileSpecifiedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The file cannot be added because it is empty. Empty files cannot be added to the repository with this API.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    FileContentRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The file cannot be added because it is too large. The maximum file size is 6 MB, and
    #             the combined file content change size is 7 MB. Consider making these changes using a Git
    #             client.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    FileContentSizeLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified file does not exist. Verify that you have used the correct file name,
    #             full path, and extension.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    FileDoesNotExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The commit cannot be created because no files have been specified as added, updated, or changed (PutFile or DeleteFile) for the commit.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    FileEntryRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A file to be added, updated, or deleted as part of a commit.</p>
    #
    # @!attribute absolute_path
    #   <p>The full path to the file to be added or updated, including the name of the
    #               file.</p>
    #
    #   @return [String]
    #
    # @!attribute blob_id
    #   <p>The blob ID that contains the file information.</p>
    #
    #   @return [String]
    #
    # @!attribute file_mode
    #   <p>The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.</p>
    #
    #   Enum, one of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #
    #   @return [String]
    #
    FileMetadata = ::Struct.new(
      :absolute_path,
      :blob_id,
      :file_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The commit cannot be created because no file mode has been specified. A file mode is
    #             required to update mode permissions for a file.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    FileModeRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FileModeTypeEnum
    #
    module FileModeTypeEnum
      # No documentation available.
      #
      EXECUTABLE = "EXECUTABLE"

      # No documentation available.
      #
      NORMAL = "NORMAL"

      # No documentation available.
      #
      SYMLINK = "SYMLINK"
    end

    # <p>Information about file modes in a merge or pull request.</p>
    #
    # @!attribute source
    #   <p>The file mode of a file in the source of a merge or pull request.</p>
    #
    #   Enum, one of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #
    #   @return [String]
    #
    # @!attribute destination
    #   <p>The file mode of a file in the destination of a merge or pull request.</p>
    #
    #   Enum, one of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #
    #   @return [String]
    #
    # @!attribute base
    #   <p>The file mode of a file in the base of a merge or pull request.</p>
    #
    #   Enum, one of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #
    #   @return [String]
    #
    FileModes = ::Struct.new(
      :source,
      :destination,
      :base,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A file cannot be added to the repository because the specified file name has the same name as a directory in this repository. Either provide
    #         another name for the file, or add the file in a directory that does not match the file name.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    FileNameConflictsWithDirectoryNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The commit cannot be created because a specified file path points to a submodule. Verify that the destination files
    #         have valid file paths that do not point to a submodule.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    FilePathConflictsWithSubmodulePathException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the size of files in a merge or pull request.</p>
    #
    # @!attribute source
    #   <p>The  size of a file in the source of a merge or pull request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute destination
    #   <p>The size of a file in the destination of a merge or pull request.</p>
    #
    #   @return [Integer]
    #
    # @!attribute base
    #   <p>The size of a file in the base of a merge or pull request.</p>
    #
    #   @return [Integer]
    #
    FileSizes = ::Struct.new(
      :source,
      :destination,
      :base,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.source ||= 0
        self.destination ||= 0
        self.base ||= 0
      end

    end

    # <p>The specified file exceeds the file size limit for AWS CodeCommit. For more information about limits in AWS CodeCommit, see
    #             <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">AWS CodeCommit User Guide</a>.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    FileTooLargeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about a folder in a repository.</p>
    #
    # @!attribute tree_id
    #   <p>The full SHA-1 pointer of the tree information for the commit that contains the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute absolute_path
    #   <p>The fully qualified path of the folder in the repository.</p>
    #
    #   @return [String]
    #
    # @!attribute relative_path
    #   <p>The relative path of the specified folder from the folder where the query originated.</p>
    #
    #   @return [String]
    #
    Folder = ::Struct.new(
      :tree_id,
      :absolute_path,
      :relative_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The commit cannot be created because at least one of the overall changes in the commit results in a
    #             folder whose contents exceed the limit of 6 MB. Either reduce the number and size of your changes,
    #         or split the changes across multiple folders.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    FolderContentSizeLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified folder does not exist. Either the folder name is not correct, or you did
    #             not enter the full path to the folder.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    FolderDoesNotExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule_template_name
    #   <p>The name of the approval rule template for which you want to get information.</p>
    #
    #   @return [String]
    #
    GetApprovalRuleTemplateInput = ::Struct.new(
      :approval_rule_template_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule_template
    #   <p>The content and structure of the approval rule template.</p>
    #
    #   @return [ApprovalRuleTemplate]
    #
    GetApprovalRuleTemplateOutput = ::Struct.new(
      :approval_rule_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a get blob operation.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository that contains the blob.</p>
    #
    #   @return [String]
    #
    # @!attribute blob_id
    #   <p>The ID of the blob, which is its SHA-1 pointer.</p>
    #
    #   @return [String]
    #
    GetBlobInput = ::Struct.new(
      :repository_name,
      :blob_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a get blob operation.</p>
    #
    # @!attribute content
    #   <p>The content of the blob, usually a file.</p>
    #
    #   @return [String]
    #
    GetBlobOutput = ::Struct.new(
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a get branch operation.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository that contains the branch for which you want to retrieve information.</p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p>The name of the branch for which you want to retrieve information.</p>
    #
    #   @return [String]
    #
    GetBranchInput = ::Struct.new(
      :repository_name,
      :branch_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a get branch operation.</p>
    #
    # @!attribute branch
    #   <p>The name of the branch.</p>
    #
    #   @return [BranchInfo]
    #
    GetBranchOutput = ::Struct.new(
      :branch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute comment_id
    #   <p>The unique, system-generated ID of the comment. To get this ID, use  <a>GetCommentsForComparedCommit</a>
    #               or <a>GetCommentsForPullRequest</a>.</p>
    #
    #   @return [String]
    #
    GetCommentInput = ::Struct.new(
      :comment_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute comment
    #   <p>The contents of the comment.</p>
    #
    #   @return [Comment]
    #
    GetCommentOutput = ::Struct.new(
      :comment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute comment_id
    #   <p>The ID of the comment for which you want to get reactions information.</p>
    #
    #   @return [String]
    #
    # @!attribute reaction_user_arn
    #   <p>Optional. The Amazon Resource Name (ARN) of the user or identity for which you want to get reaction information.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.  The default is the same as the allowed maximum, 1,000.</p>
    #
    #   @return [Integer]
    #
    GetCommentReactionsInput = ::Struct.new(
      :comment_id,
      :reaction_user_arn,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute reactions_for_comment
    #   <p>An array of reactions to the specified comment.</p>
    #
    #   @return [Array<ReactionForComment>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
    #
    #   @return [String]
    #
    GetCommentReactionsOutput = ::Struct.new(
      :reactions_for_comment,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you want to compare commits.</p>
    #
    #   @return [String]
    #
    # @!attribute before_commit_id
    #   <p>To establish the directionality of the comparison, the full commit ID of the before
    #               commit.</p>
    #
    #   @return [String]
    #
    # @!attribute after_commit_id
    #   <p>To establish the directionality of the comparison, the full commit ID of the after
    #               commit.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An enumeration token that when provided in a request, returns the next batch of the results. </p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results. The
    #               default is 100 comments, but you can configure up to 500.</p>
    #
    #   @return [Integer]
    #
    GetCommentsForComparedCommitInput = ::Struct.new(
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute comments_for_compared_commit_data
    #   <p>A list of comment objects on the compared commit.</p>
    #
    #   @return [Array<CommentsForComparedCommit>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
    #
    #   @return [String]
    #
    GetCommentsForComparedCommitOutput = ::Struct.new(
      :comments_for_compared_commit_data,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository that contains the pull request.</p>
    #
    #   @return [String]
    #
    # @!attribute before_commit_id
    #   <p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.</p>
    #
    #   @return [String]
    #
    # @!attribute after_commit_id
    #   <p>The full commit ID of the commit in the source branch that was the tip of the branch at the time the comment was made.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results. The default is 100 comments.
    #               You can return up to 500 comments with a single request.</p>
    #
    #   @return [Integer]
    #
    GetCommentsForPullRequestInput = ::Struct.new(
      :pull_request_id,
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute comments_for_pull_request_data
    #   <p>An array of comment objects on the pull request.</p>
    #
    #   @return [Array<CommentsForPullRequest>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
    #
    #   @return [String]
    #
    GetCommentsForPullRequestOutput = ::Struct.new(
      :comments_for_pull_request_data,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a get commit operation.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository to which the commit was made.</p>
    #
    #   @return [String]
    #
    # @!attribute commit_id
    #   <p>The commit ID. Commit IDs are the full SHA ID of the commit.</p>
    #
    #   @return [String]
    #
    GetCommitInput = ::Struct.new(
      :repository_name,
      :commit_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a get commit operation.</p>
    #
    # @!attribute commit
    #   <p>A commit data type object that contains information about the specified commit.</p>
    #
    #   @return [Commit]
    #
    GetCommitOutput = ::Struct.new(
      :commit,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you want to get differences.</p>
    #
    #   @return [String]
    #
    # @!attribute before_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, the full commit ID). Optional. If not specified, all changes before the
    #                   <code>afterCommitSpecifier</code> value are shown. If you do not use
    #                   <code>beforeCommitSpecifier</code> in your request, consider limiting the results
    #               with <code>maxResults</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute after_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit.</p>
    #
    #   @return [String]
    #
    # @!attribute before_path
    #   <p>The file path in which to check for differences. Limits the results to this path. Can
    #               also be used to specify the previous name of a directory or folder. If
    #                   <code>beforePath</code> and <code>afterPath</code> are not specified, differences
    #               are shown for all paths.</p>
    #
    #   @return [String]
    #
    # @!attribute after_path
    #   <p>The file path in which to check differences. Limits the results to this path. Can also
    #               be used to specify the changed name of a directory or folder, if it has changed. If not
    #               specified, differences are shown for all paths.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    #
    #   @return [Integer]
    #
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    #   @return [String]
    #
    GetDifferencesInput = ::Struct.new(
      :repository_name,
      :before_commit_specifier,
      :after_commit_specifier,
      :before_path,
      :after_path,
      :max_results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute differences
    #   <p>A data type object that contains information about the differences, including whether
    #               the difference is added, modified, or deleted (A, D, M).</p>
    #
    #   @return [Array<Difference>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
    #
    #   @return [String]
    #
    GetDifferencesOutput = ::Struct.new(
      :differences,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository that contains the file.</p>
    #
    #   @return [String]
    #
    # @!attribute commit_specifier
    #   <p>The fully quaified reference that identifies the commit that contains the file. For
    #               example, you can specify a full commit ID, a tag, a branch name, or a reference such as
    #               refs/heads/master. If none is provided, the head commit is used.</p>
    #
    #   @return [String]
    #
    # @!attribute file_path
    #   <p>The fully qualified path to the file, including the full name and extension of the
    #               file. For example, /examples/file.md is the fully qualified path to a file named file.md
    #               in a folder named examples.</p>
    #
    #   @return [String]
    #
    GetFileInput = ::Struct.new(
      :repository_name,
      :commit_specifier,
      :file_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute commit_id
    #   <p>The full commit ID of the commit that contains the content returned by GetFile.</p>
    #
    #   @return [String]
    #
    # @!attribute blob_id
    #   <p>The blob ID of the object that represents the file content.</p>
    #
    #   @return [String]
    #
    # @!attribute file_path
    #   <p>The fully qualified path to the specified file. Returns the name and extension of the
    #               file.</p>
    #
    #   @return [String]
    #
    # @!attribute file_mode
    #   <p>The extrapolated file mode permissions of the blob. Valid values include strings such as EXECUTABLE and not numeric values.</p>
    #           <note>
    #               <p>The file mode permissions returned by this API are not the standard file mode
    #                   permission values, such as 100644, but rather extrapolated values. See the supported
    #                   return values.</p>
    #           </note>
    #
    #   Enum, one of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #
    #   @return [String]
    #
    # @!attribute file_size
    #   <p>The size of the contents of the file, in bytes.</p>
    #
    #   @return [Integer]
    #
    # @!attribute file_content
    #   <p>The base-64 encoded binary data object that represents the content of the file.</p>
    #
    #   @return [String]
    #
    GetFileOutput = ::Struct.new(
      :commit_id,
      :blob_id,
      :file_path,
      :file_mode,
      :file_size,
      :file_content,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.file_size ||= 0
      end

    end

    # @!attribute repository_name
    #   <p>The name of the repository.</p>
    #
    #   @return [String]
    #
    # @!attribute commit_specifier
    #   <p>A fully qualified reference used to identify a commit that contains the version of the
    #               folder's content to return. A fully qualified reference can be a commit ID, branch name,
    #               tag, or reference such as HEAD. If no specifier is provided, the folder content is
    #               returned as it exists in the HEAD commit.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_path
    #   <p>The fully qualified path to the folder whose contents are returned, including the
    #               folder name. For example, /examples is a fully-qualified path to a folder named examples
    #               that was created off of the root directory (/) of a repository. </p>
    #
    #   @return [String]
    #
    GetFolderInput = ::Struct.new(
      :repository_name,
      :commit_specifier,
      :folder_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute commit_id
    #   <p>The full commit ID used as a reference for the returned version of the folder
    #               content.</p>
    #
    #   @return [String]
    #
    # @!attribute folder_path
    #   <p>The fully qualified path of the folder whose contents are returned.</p>
    #
    #   @return [String]
    #
    # @!attribute tree_id
    #   <p>The full SHA-1 pointer of the tree information for the commit that contains the folder.</p>
    #
    #   @return [String]
    #
    # @!attribute sub_folders
    #   <p>The list of folders that exist under the specified folder, if any.</p>
    #
    #   @return [Array<Folder>]
    #
    # @!attribute files
    #   <p>The list of files in the specified folder, if any.</p>
    #
    #   @return [Array<File>]
    #
    # @!attribute symbolic_links
    #   <p>The list of symbolic links to other files and folders in the specified folder, if
    #               any.</p>
    #
    #   @return [Array<SymbolicLink>]
    #
    # @!attribute sub_modules
    #   <p>The list of submodules in the specified folder, if any.</p>
    #
    #   @return [Array<SubModule>]
    #
    GetFolderOutput = ::Struct.new(
      :commit_id,
      :folder_path,
      :tree_id,
      :sub_folders,
      :files,
      :symbolic_links,
      :sub_modules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository that contains the merge commit about which you want to get information.</p>
    #
    #   @return [String]
    #
    # @!attribute source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    #   @return [String]
    #
    # @!attribute destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    #   @return [String]
    #
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    #   Enum, one of: ["FILE_LEVEL", "LINE_LEVEL"]
    #
    #   @return [String]
    #
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    #   Enum, one of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #
    #   @return [String]
    #
    GetMergeCommitInput = ::Struct.new(
      :repository_name,
      :source_commit_specifier,
      :destination_commit_specifier,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute source_commit_id
    #   <p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_commit_id
    #   <p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>
    #
    #   @return [String]
    #
    # @!attribute base_commit_id
    #   <p>The commit ID of the merge base.</p>
    #
    #   @return [String]
    #
    # @!attribute merged_commit_id
    #   <p>The commit ID for the merge commit created when the source branch was merged into the
    #               destination branch. If the fast-forward merge strategy was used, there is no merge
    #               commit.</p>
    #
    #   @return [String]
    #
    GetMergeCommitOutput = ::Struct.new(
      :source_commit_id,
      :destination_commit_id,
      :base_commit_id,
      :merged_commit_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    #   @return [String]
    #
    # @!attribute source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    #   @return [String]
    #
    # @!attribute merge_option
    #   <p>The merge option or strategy you want to use to merge the code.  </p>
    #
    #   Enum, one of: ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #
    #   @return [String]
    #
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    #   Enum, one of: ["FILE_LEVEL", "LINE_LEVEL"]
    #
    #   @return [String]
    #
    # @!attribute max_conflict_files
    #   <p>The maximum number of files to include in the output.</p>
    #
    #   @return [Integer]
    #
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    #   Enum, one of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    #   @return [String]
    #
    GetMergeConflictsInput = ::Struct.new(
      :repository_name,
      :destination_commit_specifier,
      :source_commit_specifier,
      :merge_option,
      :conflict_detail_level,
      :max_conflict_files,
      :conflict_resolution_strategy,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute mergeable
    #   <p>A Boolean value that indicates whether the code is mergeable by the specified merge option.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute destination_commit_id
    #   <p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>
    #
    #   @return [String]
    #
    # @!attribute source_commit_id
    #   <p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>
    #
    #   @return [String]
    #
    # @!attribute base_commit_id
    #   <p>The commit ID of the merge base.</p>
    #
    #   @return [String]
    #
    # @!attribute conflict_metadata_list
    #   <p>A list of metadata for any conflicting files. If the specified merge strategy is
    #               FAST_FORWARD_MERGE, this list is always empty.</p>
    #
    #   @return [Array<ConflictMetadata>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that can be used in a request to return the next batch of the results.</p>
    #
    #   @return [String]
    #
    GetMergeConflictsOutput = ::Struct.new(
      :mergeable,
      :destination_commit_id,
      :source_commit_id,
      :base_commit_id,
      :conflict_metadata_list,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.mergeable ||= false
      end

    end

    # @!attribute repository_name
    #   <p>The name of the repository that contains the commits about which you want to get merge options.</p>
    #
    #   @return [String]
    #
    # @!attribute source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    #   @return [String]
    #
    # @!attribute destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    #   @return [String]
    #
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    #   Enum, one of: ["FILE_LEVEL", "LINE_LEVEL"]
    #
    #   @return [String]
    #
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    #   Enum, one of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #
    #   @return [String]
    #
    GetMergeOptionsInput = ::Struct.new(
      :repository_name,
      :source_commit_specifier,
      :destination_commit_specifier,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute merge_options
    #   <p>The merge option or strategy used to merge the code.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute source_commit_id
    #   <p>The commit ID of the source commit specifier that was used in the merge evaluation.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_commit_id
    #   <p>The commit ID of the destination commit specifier that was used in the merge evaluation.</p>
    #
    #   @return [String]
    #
    # @!attribute base_commit_id
    #   <p>The commit ID of the merge base.</p>
    #
    #   @return [String]
    #
    GetMergeOptionsOutput = ::Struct.new(
      :merge_options,
      :source_commit_id,
      :destination_commit_id,
      :base_commit_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID for the pull request.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The system-generated ID for the pull request revision.</p>
    #
    #   @return [String]
    #
    GetPullRequestApprovalStatesInput = ::Struct.new(
      :pull_request_id,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approvals
    #   <p>Information about users who have approved the pull request.</p>
    #
    #   @return [Array<Approval>]
    #
    GetPullRequestApprovalStatesOutput = ::Struct.new(
      :approvals,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    #   @return [String]
    #
    GetPullRequestInput = ::Struct.new(
      :pull_request_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request
    #   <p>Information about the specified pull request.</p>
    #
    #   @return [PullRequest]
    #
    GetPullRequestOutput = ::Struct.new(
      :pull_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request_id
    #   <p>The ID of the pull request for which you want to get information about whether approval rules have been set aside (overridden).</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The system-generated ID of the revision for the pull request. To retrieve the most
    #               recent revision ID, use
    #               <a>GetPullRequest</a>.</p>
    #
    #   @return [String]
    #
    GetPullRequestOverrideStateInput = ::Struct.new(
      :pull_request_id,
      :revision_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute overridden
    #   <p>A Boolean value that indicates whether a pull request has had its rules set aside (TRUE) or whether all approval rules still apply (FALSE).</p>
    #
    #   @return [Boolean]
    #
    # @!attribute overrider
    #   <p>The Amazon Resource Name (ARN) of the user or identity that overrode the rules and their requirements for the pull request.</p>
    #
    #   @return [String]
    #
    GetPullRequestOverrideStateOutput = ::Struct.new(
      :overridden,
      :overrider,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.overridden ||= false
      end

    end

    # <p>Represents the input of a get repository operation.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository to get information about.</p>
    #
    #   @return [String]
    #
    GetRepositoryInput = ::Struct.new(
      :repository_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a get repository operation.</p>
    #
    # @!attribute repository_metadata
    #   <p>Information about the repository.</p>
    #
    #   @return [RepositoryMetadata]
    #
    GetRepositoryOutput = ::Struct.new(
      :repository_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a get repository triggers operation.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository for which the trigger is configured.</p>
    #
    #   @return [String]
    #
    GetRepositoryTriggersInput = ::Struct.new(
      :repository_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a get repository triggers operation.</p>
    #
    # @!attribute configuration_id
    #   <p>The system-generated unique ID for the trigger.</p>
    #
    #   @return [String]
    #
    # @!attribute triggers
    #   <p>The JSON block of configuration information for each trigger.</p>
    #
    #   @return [Array<RepositoryTrigger>]
    #
    GetRepositoryTriggersOutput = ::Struct.new(
      :configuration_id,
      :triggers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The client request token is not valid. Either the token is not in a valid format, or
    #             the token has been used in a previous request and cannot be reused.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    IdempotencyParameterMismatchException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Resource Name (ARN) is not valid. Make sure that you have provided the full ARN for the user who initiated the change for the pull request,
    #             and then try again.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidActorArnException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The content for the approval rule is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidApprovalRuleContentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The name for the approval rule is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidApprovalRuleNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The content of the approval rule template is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidApprovalRuleTemplateContentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The description for the approval rule template is not valid because it exceeds the
    #             maximum characters allowed for a description. For more information about limits in AWS
    #             CodeCommit, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">AWS CodeCommit User
    #             Guide</a>.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidApprovalRuleTemplateDescriptionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The name of the approval rule template is not valid. Template names must be between 1
    #             and 100 valid characters in length. For more information about limits in AWS CodeCommit,
    #             see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">AWS
    #                 CodeCommit User Guide</a>.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidApprovalRuleTemplateNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The state for the approval is not valid. Valid values include APPROVE and REVOKE. </p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidApprovalStateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Resource Name (ARN) is not valid. Make sure that you have provided the full ARN for the author of the pull request, and then try again.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidAuthorArnException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified blob is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidBlobIdException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified reference name is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidBranchNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The client request token is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidClientRequestTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The comment ID is not in a valid format. Make sure that you have provided the full comment ID.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidCommentIdException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified commit is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidCommitException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified commit ID is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidCommitIdException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified conflict detail level is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidConflictDetailLevelException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified conflict resolution list is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidConflictResolutionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified conflict resolution strategy is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidConflictResolutionStrategyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified continuation token is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidContinuationTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified deletion parameter is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidDeletionParameterException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The pull request description is not valid. Descriptions cannot be more than 1,000
    #             characters.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidDescriptionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The destination commit specifier is not valid. You must provide a valid branch name, tag, or full commit ID. </p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidDestinationCommitSpecifierException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified email address either contains one or more characters that are not allowed, or it exceeds the maximum number of characters
    #         allowed for an email address.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidEmailException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The location of the file is not valid. Make sure that you include the file name and
    #             extension.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidFileLocationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified file mode permission is not valid. For a list of valid file mode permissions, see <a>PutFile</a>. </p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidFileModeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The position is not valid. Make sure that the line number exists in the version of the file you want to comment on.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidFilePositionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified value for the number of conflict files to return is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidMaxConflictFilesException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified value for the number of merge hunks to return is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidMaxMergeHunksException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified number of maximum results is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidMaxResultsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified merge option is not valid for this operation. Not all merge strategies are supported for all operations.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidMergeOptionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified sort order is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidOrderException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The override status is not valid. Valid statuses are OVERRIDE and REVOKE.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidOverrideStatusException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parent commit ID is not valid. The commit ID cannot be empty, and must match the head commit ID for the branch of the repository where you
    #         want to add or update a file.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidParentCommitIdException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified path is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidPathException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The pull request event type is not valid. </p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidPullRequestEventTypeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The pull request ID is not valid. Make sure that you have provided the full ID and that the pull request is in the specified repository, and then try again.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidPullRequestIdException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The pull request status is not valid. The only valid values are <code>OPEN</code> and <code>CLOSED</code>.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidPullRequestStatusException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The pull request status update is not valid. The only valid update is from <code>OPEN</code> to <code>CLOSED</code>.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidPullRequestStatusUpdateException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Resource Name (ARN) of the user or identity is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidReactionUserArnException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value of the reaction is not valid. For more information, see the <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html">AWS CodeCommit User Guide</a>.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidReactionValueException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified reference name format is not valid. Reference names must conform to the
    #             Git references format (for example, refs/heads/master). For more information, see <a href="https://git-scm.com/book/en/v2/Git-Internals-Git-References">Git Internals -
    #                 Git References</a> or consult your Git documentation.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidReferenceNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Either the enum is not in a valid format, or the specified file version enum is not valid in respect to the current file version.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidRelativeFileVersionEnumException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Automerge was specified for resolving the conflict, but the replacement type is not valid or content is missing. </p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidReplacementContentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Automerge was specified for resolving the conflict, but the specified replacement type is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidReplacementTypeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified repository description is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidRepositoryDescriptionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A specified repository name is not valid.</p>
    #
    #         <note>
    #             <p>This exception occurs only when a specified repository name is not valid. Other
    #                 exceptions occur when a required repository parameter is missing, or when a
    #                 specified repository does not exist.</p>
    #          </note>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidRepositoryNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more branch names specified for the trigger is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidRepositoryTriggerBranchNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The custom data provided for the trigger is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidRepositoryTriggerCustomDataException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The Amazon Resource Name (ARN) for the trigger is not valid for the specified destination. The most common reason for this error is that the ARN does not meet the requirements for the service type.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidRepositoryTriggerDestinationArnException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>One or more events specified for the trigger is not valid. Check to make sure that all events specified match the requirements for allowed events.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidRepositoryTriggerEventsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The name of the trigger is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidRepositoryTriggerNameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The AWS Region for the trigger target does not match the AWS Region for the
    #             repository. Triggers must be created in the same Region as the target for the
    #             trigger.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidRepositoryTriggerRegionException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value for the resource ARN is not valid. For more information about resources in AWS CodeCommit, see
    #             <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats">CodeCommit Resources and Operations</a>
    #             in the AWS CodeCommit User Guide.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidResourceArnException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The revision ID is not valid. Use GetPullRequest to determine the value.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidRevisionIdException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The SHA-256 hash signature for the rule content is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidRuleContentSha256Exception = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified sort by value is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidSortByException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The source commit specifier is not valid. You must provide a valid branch name, tag, or full commit ID.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidSourceCommitSpecifierException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified tag is not valid. Key names cannot be prefixed with aws:.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidSystemTagUsageException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The list of tags is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidTagKeysListException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The map of tags is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidTagsMapException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified target branch is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidTargetBranchException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The target for the pull request is not valid. A target must contain the full values for the repository name, source branch, and destination branch for the pull request.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidTargetException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The targets for the pull request is not valid or not in a valid format. Targets are a list of target objects. Each target object must contain the full values for
    #             the repository name, source branch, and destination branch for a pull request.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidTargetsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The title of the pull request is not valid. Pull request titles cannot exceed 100 characters in length.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    InvalidTitleException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about whether a file is binary or textual in a merge or pull request operation.</p>
    #
    # @!attribute source
    #   <p>The binary or non-binary status of file in the source of a merge or pull request.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute destination
    #   <p>The binary or non-binary status of a file in the destination of a merge or pull request.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute base
    #   <p>The binary or non-binary status of a file in the base of a merge or pull request.</p>
    #
    #   @return [Boolean]
    #
    IsBinaryFile = ::Struct.new(
      :source,
      :destination,
      :base,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    #
    #   @return [Integer]
    #
    ListApprovalRuleTemplatesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule_template_names
    #   <p>The names of all the approval rule templates found in the AWS Region for your AWS account.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the next results of the operation.</p>
    #
    #   @return [String]
    #
    ListApprovalRuleTemplatesOutput = ::Struct.new(
      :approval_rule_template_names,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository for which you want to list all associated approval rule templates.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    #
    #   @return [Integer]
    #
    ListAssociatedApprovalRuleTemplatesForRepositoryInput = ::Struct.new(
      :repository_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule_template_names
    #   <p>The names of all approval rule templates associated with the repository.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the next results of the operation.</p>
    #
    #   @return [String]
    #
    ListAssociatedApprovalRuleTemplatesForRepositoryOutput = ::Struct.new(
      :approval_rule_template_names,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a list branches operation.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository that contains the branches.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the results.</p>
    #
    #   @return [String]
    #
    ListBranchesInput = ::Struct.new(
      :repository_name,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a list branches operation.</p>
    #
    # @!attribute branches
    #   <p>The list of branch names.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that returns the batch of the results.</p>
    #
    #   @return [String]
    #
    ListBranchesOutput = ::Struct.new(
      :branches,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository for which you want to list pull requests.</p>
    #
    #   @return [String]
    #
    # @!attribute author_arn
    #   <p>Optional. The Amazon Resource Name (ARN) of the user who created the pull request. If used, this filters the results
    #           to pull requests created by that user.</p>
    #
    #   @return [String]
    #
    # @!attribute pull_request_status
    #   <p>Optional. The status of the pull request. If used, this refines the results to the pull requests that match the specified status.</p>
    #
    #   Enum, one of: ["OPEN", "CLOSED"]
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    #
    #   @return [Integer]
    #
    ListPullRequestsInput = ::Struct.new(
      :repository_name,
      :author_arn,
      :pull_request_status,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request_ids
    #   <p>The system-generated IDs of the pull requests.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the next results of the operation.</p>
    #
    #   @return [String]
    #
    ListPullRequestsOutput = ::Struct.new(
      :pull_request_ids,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule_template_name
    #   <p>The name of the approval rule template for which you want to list repositories that are associated with that template.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    #
    #   @return [Integer]
    #
    ListRepositoriesForApprovalRuleTemplateInput = ::Struct.new(
      :approval_rule_template_name,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_names
    #   <p>A list of repository names that are associated with the specified approval rule template.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the next results of the operation.</p>
    #
    #   @return [String]
    #
    ListRepositoriesForApprovalRuleTemplateOutput = ::Struct.new(
      :repository_names,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a list repositories operation.</p>
    #
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the results of the operation.
    #               Batch sizes are 1,000 for list repository operations. When the client sends the token back to AWS CodeCommit,
    #               another page of 1,000 records is retrieved.</p>
    #
    #   @return [String]
    #
    # @!attribute sort_by
    #   <p>The criteria used to sort the results of a list repositories operation.</p>
    #
    #   Enum, one of: ["repositoryName", "lastModifiedDate"]
    #
    #   @return [String]
    #
    # @!attribute order
    #   <p>The order in which to sort the results of a list repositories operation.</p>
    #
    #   Enum, one of: ["ascending", "descending"]
    #
    #   @return [String]
    #
    ListRepositoriesInput = ::Struct.new(
      :next_token,
      :sort_by,
      :order,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a list repositories operation.</p>
    #
    # @!attribute repositories
    #   <p>Lists the repositories called by the list repositories operation.</p>
    #
    #   @return [Array<RepositoryNameIdPair>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the results of the operation.
    #               Batch sizes are 1,000 for list repository operations. When the client sends the token back to AWS CodeCommit,
    #               another page of 1,000 records is retrieved.</p>
    #
    #   @return [String]
    #
    ListRepositoriesOutput = ::Struct.new(
      :repositories,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to get information
    #               about tags, if any.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>A list of tag key and value pairs associated with the specified resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute next_token
    #   <p>An enumeration token that allows the operation to batch the next results of the operation.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about the location of a change or comment in the comparison between two commits or a pull request.</p>
    #
    # @!attribute file_path
    #   <p>The name of the file being compared, including its extension and subdirectory, if any.</p>
    #
    #   @return [String]
    #
    # @!attribute file_position
    #   <p>The position of a change in a compared file, in line number format.</p>
    #
    #   @return [Integer]
    #
    # @!attribute relative_file_version
    #   <p>In a comparison of commits or a pull request, whether the change is in the before or
    #               after of that comparison.</p>
    #
    #   Enum, one of: ["BEFORE", "AFTER"]
    #
    #   @return [String]
    #
    Location = ::Struct.new(
      :file_path,
      :file_position,
      :relative_file_version,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The pull request cannot be merged automatically into the destination branch. You must manually merge the branches and resolve any conflicts.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ManualMergeRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of branches for the trigger was exceeded.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    MaximumBranchesExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of allowed conflict resolution entries was exceeded.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    MaximumConflictResolutionEntriesExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of files to load exceeds the allowed limit.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    MaximumFileContentToLoadExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of specified files to change as part of this commit exceeds the maximum number of files
    #         that can be changed in a single commit. Consider using a Git client for these changes.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    MaximumFileEntriesExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of items to compare between the source or destination branches and the merge base has exceeded the maximum allowed.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    MaximumItemsToCompareExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of approvals required for the approval rule exceeds the maximum number allowed.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    MaximumNumberOfApprovalsExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You cannot create the pull request because the repository has too many open pull requests.
    #             The maximum number of open pull requests for a repository is 1,000. Close one or more open pull requests, and then try again.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    MaximumOpenPullRequestsExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of allowed repository names was exceeded. Currently, this number is 100.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    MaximumRepositoryNamesExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of triggers allowed for the repository was exceeded.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    MaximumRepositoryTriggersExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of approval rule templates for a repository has been exceeded. You cannot associate more than 25
    #         approval rule templates with a repository.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    MaximumRuleTemplatesAssociatedWithRepositoryException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you want to merge two branches.</p>
    #
    #   @return [String]
    #
    # @!attribute source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    #   @return [String]
    #
    # @!attribute destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    #   @return [String]
    #
    # @!attribute target_branch
    #   <p>The branch where the merge is applied.</p>
    #
    #   @return [String]
    #
    MergeBranchesByFastForwardInput = ::Struct.new(
      :repository_name,
      :source_commit_specifier,
      :destination_commit_specifier,
      :target_branch,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute commit_id
    #   <p>The commit ID of the merge in the destination or target branch.</p>
    #
    #   @return [String]
    #
    # @!attribute tree_id
    #   <p>The tree ID of the merge in the destination or target branch.</p>
    #
    #   @return [String]
    #
    MergeBranchesByFastForwardOutput = ::Struct.new(
      :commit_id,
      :tree_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you want to merge two branches.</p>
    #
    #   @return [String]
    #
    # @!attribute source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    #   @return [String]
    #
    # @!attribute destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    #   @return [String]
    #
    # @!attribute target_branch
    #   <p>The branch where the merge is applied. </p>
    #
    #   @return [String]
    #
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    #   Enum, one of: ["FILE_LEVEL", "LINE_LEVEL"]
    #
    #   @return [String]
    #
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    #   Enum, one of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #
    #   @return [String]
    #
    # @!attribute author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address of the person merging the branches. This information is used in the
    #               commit information for the merge.</p>
    #
    #   @return [String]
    #
    # @!attribute commit_message
    #   <p>The commit message for the merge.</p>
    #
    #   @return [String]
    #
    # @!attribute keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If this is specified as true, a .gitkeep file is
    #               created for empty folders. The default is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    #
    #   @return [ConflictResolution]
    #
    MergeBranchesBySquashInput = ::Struct.new(
      :repository_name,
      :source_commit_specifier,
      :destination_commit_specifier,
      :target_branch,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      :author_name,
      :email,
      :commit_message,
      :keep_empty_folders,
      :conflict_resolution,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.keep_empty_folders ||= false
      end

    end

    # @!attribute commit_id
    #   <p>The commit ID of the merge in the destination or target branch.</p>
    #
    #   @return [String]
    #
    # @!attribute tree_id
    #   <p>The tree ID of the merge in the destination or target branch.</p>
    #
    #   @return [String]
    #
    MergeBranchesBySquashOutput = ::Struct.new(
      :commit_id,
      :tree_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you want to merge two branches.</p>
    #
    #   @return [String]
    #
    # @!attribute source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    #   @return [String]
    #
    # @!attribute destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    #   @return [String]
    #
    # @!attribute target_branch
    #   <p>The branch where the merge is applied. </p>
    #
    #   @return [String]
    #
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    #   Enum, one of: ["FILE_LEVEL", "LINE_LEVEL"]
    #
    #   @return [String]
    #
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    #   Enum, one of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #
    #   @return [String]
    #
    # @!attribute author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address of the person merging the branches. This information is used in the
    #               commit information for the merge.</p>
    #
    #   @return [String]
    #
    # @!attribute commit_message
    #   <p>The commit message to include in the commit information for the merge.</p>
    #
    #   @return [String]
    #
    # @!attribute keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If true, a .gitkeep file is created for empty folders.
    #               The default is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    #
    #   @return [ConflictResolution]
    #
    MergeBranchesByThreeWayInput = ::Struct.new(
      :repository_name,
      :source_commit_specifier,
      :destination_commit_specifier,
      :target_branch,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      :author_name,
      :email,
      :commit_message,
      :keep_empty_folders,
      :conflict_resolution,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.keep_empty_folders ||= false
      end

    end

    # @!attribute commit_id
    #   <p>The commit ID of the merge in the destination or target branch.</p>
    #
    #   @return [String]
    #
    # @!attribute tree_id
    #   <p>The tree ID of the merge in the destination or target branch.</p>
    #
    #   @return [String]
    #
    MergeBranchesByThreeWayOutput = ::Struct.new(
      :commit_id,
      :tree_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about merge hunks in a merge or pull request operation.</p>
    #
    # @!attribute is_conflict
    #   <p>A Boolean value indicating whether a combination of hunks contains a conflict.
    #               Conflicts occur when the same file or the same lines in a file were modified in both the
    #               source and destination of a merge or pull request. Valid values include true, false, and
    #               null. True when the hunk represents a conflict and one or more files contains a line
    #               conflict. File mode conflicts in a merge do not set this to true.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute source
    #   <p>Information about the merge hunk in the source of a merge or pull request.</p>
    #
    #   @return [MergeHunkDetail]
    #
    # @!attribute destination
    #   <p>Information about the merge hunk in the destination of a merge or pull request.</p>
    #
    #   @return [MergeHunkDetail]
    #
    # @!attribute base
    #   <p>Information about the merge hunk in the base of a merge or pull request.</p>
    #
    #   @return [MergeHunkDetail]
    #
    MergeHunk = ::Struct.new(
      :is_conflict,
      :source,
      :destination,
      :base,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_conflict ||= false
      end

    end

    # <p>Information about the details of a merge hunk that contains a conflict in a merge or pull request operation.</p>
    #
    # @!attribute start_line
    #   <p>The start position of the hunk in the merge result.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_line
    #   <p>The end position of the hunk in the merge result.</p>
    #
    #   @return [Integer]
    #
    # @!attribute hunk_content
    #   <p>The base-64 encoded content of the hunk merged region that might contain a
    #               conflict.</p>
    #
    #   @return [String]
    #
    MergeHunkDetail = ::Struct.new(
      :start_line,
      :end_line,
      :hunk_content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about a merge or potential merge between a source reference and a destination reference in a pull request.</p>
    #
    # @!attribute is_merged
    #   <p>A Boolean value indicating whether the merge has been made.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute merged_by
    #   <p>The Amazon Resource Name (ARN) of the user who merged the branches.</p>
    #
    #   @return [String]
    #
    # @!attribute merge_commit_id
    #   <p>The commit ID for the merge commit, if any.</p>
    #
    #   @return [String]
    #
    # @!attribute merge_option
    #   <p>The merge strategy used in the merge.</p>
    #
    #   Enum, one of: ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #
    #   @return [String]
    #
    MergeMetadata = ::Struct.new(
      :is_merged,
      :merged_by,
      :merge_commit_id,
      :merge_option,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_merged ||= false
      end

    end

    # <p>Information about the file operation conflicts in a merge operation.</p>
    #
    # @!attribute source
    #   <p>The operation (add, modify, or delete) on a file in the source of a merge or pull
    #               request.</p>
    #
    #   Enum, one of: ["A", "M", "D"]
    #
    #   @return [String]
    #
    # @!attribute destination
    #   <p>The operation on a file in the destination of a merge or pull request.</p>
    #
    #   Enum, one of: ["A", "M", "D"]
    #
    #   @return [String]
    #
    MergeOperations = ::Struct.new(
      :source,
      :destination,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A merge option or stategy is required, and none was provided.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    MergeOptionRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for MergeOptionTypeEnum
    #
    module MergeOptionTypeEnum
      # No documentation available.
      #
      FAST_FORWARD_MERGE = "FAST_FORWARD_MERGE"

      # No documentation available.
      #
      SQUASH_MERGE = "SQUASH_MERGE"

      # No documentation available.
      #
      THREE_WAY_MERGE = "THREE_WAY_MERGE"
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    #
    #   @return [String]
    #
    # @!attribute source_commit_id
    #   <p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an
    #           exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>
    #
    #   @return [String]
    #
    MergePullRequestByFastForwardInput = ::Struct.new(
      :pull_request_id,
      :repository_name,
      :source_commit_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request
    #   <p>Information about the specified pull request, including the merge.</p>
    #
    #   @return [PullRequest]
    #
    MergePullRequestByFastForwardOutput = ::Struct.new(
      :pull_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    #
    #   @return [String]
    #
    # @!attribute source_commit_id
    #   <p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an
    #               exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>
    #
    #   @return [String]
    #
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    #   Enum, one of: ["FILE_LEVEL", "LINE_LEVEL"]
    #
    #   @return [String]
    #
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    #   Enum, one of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #
    #   @return [String]
    #
    # @!attribute commit_message
    #   <p>The commit message to include in the commit information for the merge.</p>
    #
    #   @return [String]
    #
    # @!attribute author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address of the person merging the branches. This information is used in the
    #               commit information for the merge.</p>
    #
    #   @return [String]
    #
    # @!attribute keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If true, a .gitkeep file is created for empty folders.
    #               The default is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    #
    #   @return [ConflictResolution]
    #
    MergePullRequestBySquashInput = ::Struct.new(
      :pull_request_id,
      :repository_name,
      :source_commit_id,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      :commit_message,
      :author_name,
      :email,
      :keep_empty_folders,
      :conflict_resolution,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.keep_empty_folders ||= false
      end

    end

    # @!attribute pull_request
    #   <p>Returns information about a pull request.</p>
    #
    #   @return [PullRequest]
    #
    MergePullRequestBySquashOutput = ::Struct.new(
      :pull_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    #
    #   @return [String]
    #
    # @!attribute source_commit_id
    #   <p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an
    #               exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>
    #
    #   @return [String]
    #
    # @!attribute conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    #   Enum, one of: ["FILE_LEVEL", "LINE_LEVEL"]
    #
    #   @return [String]
    #
    # @!attribute conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    #   Enum, one of: ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #
    #   @return [String]
    #
    # @!attribute commit_message
    #   <p>The commit message to include in the commit information for the merge.</p>
    #
    #   @return [String]
    #
    # @!attribute author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address of the person merging the branches. This information is used in the
    #               commit information for the merge.</p>
    #
    #   @return [String]
    #
    # @!attribute keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If true, a .gitkeep file is created for empty folders.
    #               The default is false.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    #
    #   @return [ConflictResolution]
    #
    MergePullRequestByThreeWayInput = ::Struct.new(
      :pull_request_id,
      :repository_name,
      :source_commit_id,
      :conflict_detail_level,
      :conflict_resolution_strategy,
      :commit_message,
      :author_name,
      :email,
      :keep_empty_folders,
      :conflict_resolution,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.keep_empty_folders ||= false
      end

    end

    # @!attribute pull_request
    #   <p>Returns information about a pull request.</p>
    #
    #   @return [PullRequest]
    #
    MergePullRequestByThreeWayOutput = ::Struct.new(
      :pull_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>More than one conflict resolution entries exists for the conflict. A conflict can have only one conflict resolution entry.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    MultipleConflictResolutionEntriesException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You cannot include more than one repository in a pull request. Make sure you have specified only one repository name in your request, and then try again.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    MultipleRepositoriesInPullRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The user name is not valid because it has exceeded the character limit for author names. </p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    NameLengthExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The commit cannot be created because no changes will be made to the repository as a result of this commit. A commit must contain at least one change.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    NoChangeException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of approval rule templates has been exceeded for this AWS Region. </p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    NumberOfRuleTemplatesExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The approval rule cannot be added. The pull request has the maximum number of approval rules associated with it.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    NumberOfRulesExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ObjectTypeEnum
    #
    module ObjectTypeEnum
      # No documentation available.
      #
      FILE = "FILE"

      # No documentation available.
      #
      DIRECTORY = "DIRECTORY"

      # No documentation available.
      #
      GIT_LINK = "GIT_LINK"

      # No documentation available.
      #
      SYMBOLIC_LINK = "SYMBOLIC_LINK"
    end

    # <p>Information about the type of an object in a merge operation.</p>
    #
    # @!attribute source
    #   <p>The type of the object in the source branch.</p>
    #
    #   Enum, one of: ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"]
    #
    #   @return [String]
    #
    # @!attribute destination
    #   <p>The type of the object in the destination branch.</p>
    #
    #   Enum, one of: ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"]
    #
    #   @return [String]
    #
    # @!attribute base
    #   <p>The type of the object in the base commit of the merge.</p>
    #
    #   Enum, one of: ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"]
    #
    #   @return [String]
    #
    ObjectTypes = ::Struct.new(
      :source,
      :destination,
      :base,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OrderEnum
    #
    module OrderEnum
      # No documentation available.
      #
      ASCENDING = "ascending"

      # No documentation available.
      #
      DESCENDING = "descending"
    end

    # <p>Returns information about the template that created the approval rule for a pull request.</p>
    #
    # @!attribute approval_rule_template_id
    #   <p>The ID of the template that created the approval rule.</p>
    #
    #   @return [String]
    #
    # @!attribute approval_rule_template_name
    #   <p>The name of the template that created the approval rule.</p>
    #
    #   @return [String]
    #
    OriginApprovalRuleTemplate = ::Struct.new(
      :approval_rule_template_id,
      :approval_rule_template_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The pull request has already had its approval rules set to override.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    OverrideAlreadySetException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request for which you want to override all
    #               approval rule requirements. To get this information, use
    #               <a>GetPullRequest</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The system-generated ID of the most recent revision of the pull request. You cannot override approval rules for anything but the most recent revision of a pull request.
    #               To get the revision ID, use GetPullRequest.</p>
    #
    #   @return [String]
    #
    # @!attribute override_status
    #   <p>Whether you want to set aside approval rule requirements for the pull request (OVERRIDE) or revoke a previous override and apply
    #           approval rule requirements (REVOKE). REVOKE status is not stored.</p>
    #
    #   Enum, one of: ["OVERRIDE", "REVOKE"]
    #
    #   @return [String]
    #
    OverridePullRequestApprovalRulesInput = ::Struct.new(
      :pull_request_id,
      :revision_id,
      :override_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    OverridePullRequestApprovalRulesOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for OverrideStatus
    #
    module OverrideStatus
      # No documentation available.
      #
      OVERRIDE = "OVERRIDE"

      # No documentation available.
      #
      REVOKE = "REVOKE"
    end

    # <p>An override status is required, but no value was provided. Valid values include OVERRIDE and REVOKE.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    OverrideStatusRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The parent commit ID is not valid because it does not exist. The specified parent commit ID does not exist in the specified branch of the repository.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ParentCommitDoesNotExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The file could not be added because the provided parent commit ID is not the current tip of the specified branch. To view the full commit ID of the current head
    #         of the branch, use <a>GetBranch</a>.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ParentCommitIdOutdatedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A parent commit ID is required. To view the full commit ID of a branch in a repository, use <a>GetBranch</a> or a Git command
    #         (for example, git pull or git log).</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ParentCommitIdRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified path does not exist.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    PathDoesNotExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The folderPath for a location cannot be null.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    PathRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you want to post a comment on the comparison between commits.</p>
    #
    #   @return [String]
    #
    # @!attribute before_commit_id
    #   <p>To establish the directionality of the comparison, the full commit ID of the before
    #               commit. Required for commenting on any commit unless that commit is the initial
    #               commit.</p>
    #
    #   @return [String]
    #
    # @!attribute after_commit_id
    #   <p>To establish the directionality of the comparison, the full commit ID of the after
    #               commit.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the comparison where you want to comment.</p>
    #
    #   @return [Location]
    #
    # @!attribute content
    #   <p>The content of the comment you want to make.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    #
    #   @return [String]
    #
    PostCommentForComparedCommitInput = ::Struct.new(
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :location,
      :content,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you posted a comment on the comparison between commits.</p>
    #
    #   @return [String]
    #
    # @!attribute before_commit_id
    #   <p>In the directionality you established, the full commit ID of the before commit.</p>
    #
    #   @return [String]
    #
    # @!attribute after_commit_id
    #   <p>In the directionality you established, the full commit ID of the after commit.</p>
    #
    #   @return [String]
    #
    # @!attribute before_blob_id
    #   <p>In the directionality you established, the blob ID of the before blob.</p>
    #
    #   @return [String]
    #
    # @!attribute after_blob_id
    #   <p>In the directionality you established, the blob ID of the after blob.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the comment in the comparison between the two commits.</p>
    #
    #   @return [Location]
    #
    # @!attribute comment
    #   <p>The content of the comment you posted.</p>
    #
    #   @return [Comment]
    #
    PostCommentForComparedCommitOutput = ::Struct.new(
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :before_blob_id,
      :after_blob_id,
      :location,
      :comment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The name of the repository where you want to post a comment on a pull request.</p>
    #
    #   @return [String]
    #
    # @!attribute before_commit_id
    #   <p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.</p>
    #
    #   @return [String]
    #
    # @!attribute after_commit_id
    #   <p>The full commit ID of the commit in the source branch that is the current tip of the branch for the pull request when you post the comment.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the change where you want to post your comment. If no location is
    #               provided, the comment is posted as a general comment on the pull request difference
    #               between the before commit ID and the after commit ID.</p>
    #
    #   @return [Location]
    #
    # @!attribute content
    #   <p>The content of your comment on the change.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    #
    #   @return [String]
    #
    PostCommentForPullRequestInput = ::Struct.new(
      :pull_request_id,
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :location,
      :content,
      :client_request_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you posted a comment on a pull request.</p>
    #
    #   @return [String]
    #
    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. </p>
    #
    #   @return [String]
    #
    # @!attribute before_commit_id
    #   <p>The full commit ID of the commit in the source branch used to create the pull request,
    #               or in the case of an updated pull request, the full commit ID of the commit used to update the pull request.</p>
    #
    #   @return [String]
    #
    # @!attribute after_commit_id
    #   <p>The full commit ID of the commit in the destination branch where the pull request is
    #               merged.</p>
    #
    #   @return [String]
    #
    # @!attribute before_blob_id
    #   <p>In the directionality of the pull request, the blob ID of the before blob.</p>
    #
    #   @return [String]
    #
    # @!attribute after_blob_id
    #   <p>In the directionality of the pull request, the blob ID of the after blob.</p>
    #
    #   @return [String]
    #
    # @!attribute location
    #   <p>The location of the change where you posted your comment.</p>
    #
    #   @return [Location]
    #
    # @!attribute comment
    #   <p>The content of the comment you posted.</p>
    #
    #   @return [Comment]
    #
    PostCommentForPullRequestOutput = ::Struct.new(
      :repository_name,
      :pull_request_id,
      :before_commit_id,
      :after_commit_id,
      :before_blob_id,
      :after_blob_id,
      :location,
      :comment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute in_reply_to
    #   <p>The system-generated ID of the comment to which you want to reply. To get this ID, use <a>GetCommentsForComparedCommit</a>
    #           or <a>GetCommentsForPullRequest</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The contents of your reply to a comment.</p>
    #
    #   @return [String]
    #
    PostCommentReplyInput = ::Struct.new(
      :in_reply_to,
      :client_request_token,
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute comment
    #   <p>Information about the reply to a comment.</p>
    #
    #   @return [Comment]
    #
    PostCommentReplyOutput = ::Struct.new(
      :comment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about a pull request.</p>
    #
    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. </p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The user-defined title of the pull request. This title is displayed in the list of
    #               pull requests to other repository users.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The user-defined description of the pull request. This description can be used to clarify what should be reviewed and other details of the request.</p>
    #
    #   @return [String]
    #
    # @!attribute last_activity_date
    #   <p>The day and time of the last user or system activity on the pull request, in timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_date
    #   <p>The date and time the pull request was originally created, in timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute pull_request_status
    #   <p>The status of the pull request. Pull request status can only change from <code>OPEN</code> to <code>CLOSED</code>.</p>
    #
    #   Enum, one of: ["OPEN", "CLOSED"]
    #
    #   @return [String]
    #
    # @!attribute author_arn
    #   <p>The Amazon Resource Name (ARN) of the user who created the pull request.</p>
    #
    #   @return [String]
    #
    # @!attribute pull_request_targets
    #   <p>The targets of the pull request, including the source branch and destination branch for the pull request.</p>
    #
    #   @return [Array<PullRequestTarget>]
    #
    # @!attribute client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The system-generated revision ID for the pull request.</p>
    #
    #   @return [String]
    #
    # @!attribute approval_rules
    #   <p>The approval rules applied to the pull request.</p>
    #
    #   @return [Array<ApprovalRule>]
    #
    PullRequest = ::Struct.new(
      :pull_request_id,
      :title,
      :description,
      :last_activity_date,
      :creation_date,
      :pull_request_status,
      :author_arn,
      :pull_request_targets,
      :client_request_token,
      :revision_id,
      :approval_rules,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The pull request status cannot be updated because it is already closed.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    PullRequestAlreadyClosedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The pull request cannot be merged because one or more approval rules applied to the pull request have conditions that have not been met.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    PullRequestApprovalRulesNotSatisfiedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The approval cannot be applied because the user approving the pull request matches the user who created the pull request. You cannot approve a pull
    #         request that you created.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    PullRequestCannotBeApprovedByAuthorException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Metadata about the pull request that is used when comparing the pull request source with its destination.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    #
    #   @return [String]
    #
    # @!attribute source_commit_id
    #   <p>The commit ID on the source branch used when the pull request was created.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_commit_id
    #   <p>The commit ID of the tip of the branch specified as the destination branch when the pull request was created.</p>
    #
    #   @return [String]
    #
    # @!attribute merge_base
    #   <p>The commit ID of the most recent commit that the source branch and the destination branch have in common.</p>
    #
    #   @return [String]
    #
    PullRequestCreatedEventMetadata = ::Struct.new(
      :repository_name,
      :source_commit_id,
      :destination_commit_id,
      :merge_base,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The pull request ID could not be found. Make sure that you have specified the correct repository name and pull request ID, and then try again.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    PullRequestDoesNotExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about a pull request event.</p>
    #
    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request.</p>
    #
    #   @return [String]
    #
    # @!attribute event_date
    #   <p>The day and time of the pull request event, in timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute pull_request_event_type
    #   <p>The type of the pull request event (for example, a status change event
    #               (PULL_REQUEST_STATUS_CHANGED) or update event
    #               (PULL_REQUEST_SOURCE_REFERENCE_UPDATED)).</p>
    #
    #   Enum, one of: ["PULL_REQUEST_CREATED", "PULL_REQUEST_STATUS_CHANGED", "PULL_REQUEST_SOURCE_REFERENCE_UPDATED", "PULL_REQUEST_MERGE_STATE_CHANGED", "PULL_REQUEST_APPROVAL_RULE_CREATED", "PULL_REQUEST_APPROVAL_RULE_UPDATED", "PULL_REQUEST_APPROVAL_RULE_DELETED", "PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN", "PULL_REQUEST_APPROVAL_STATE_CHANGED"]
    #
    #   @return [String]
    #
    # @!attribute actor_arn
    #   <p>The Amazon Resource Name (ARN) of the user whose actions resulted in the event.
    #               Examples include updating the pull request with more commits or changing the status of a
    #               pull request.</p>
    #
    #   @return [String]
    #
    # @!attribute pull_request_created_event_metadata
    #   <p>Information about the source and destination branches for the pull request.</p>
    #
    #   @return [PullRequestCreatedEventMetadata]
    #
    # @!attribute pull_request_status_changed_event_metadata
    #   <p>Information about the change in status for the pull request event.</p>
    #
    #   @return [PullRequestStatusChangedEventMetadata]
    #
    # @!attribute pull_request_source_reference_updated_event_metadata
    #   <p>Information about the updated source branch for the pull request event. </p>
    #
    #   @return [PullRequestSourceReferenceUpdatedEventMetadata]
    #
    # @!attribute pull_request_merged_state_changed_event_metadata
    #   <p>Information about the change in mergability state for the pull request event.</p>
    #
    #   @return [PullRequestMergedStateChangedEventMetadata]
    #
    # @!attribute approval_rule_event_metadata
    #   <p>Information about a pull request event.</p>
    #
    #   @return [ApprovalRuleEventMetadata]
    #
    # @!attribute approval_state_changed_event_metadata
    #   <p>Information about an approval state change for a pull request.</p>
    #
    #   @return [ApprovalStateChangedEventMetadata]
    #
    # @!attribute approval_rule_overridden_event_metadata
    #   <p>Information about an approval rule override event for a pull request.</p>
    #
    #   @return [ApprovalRuleOverriddenEventMetadata]
    #
    PullRequestEvent = ::Struct.new(
      :pull_request_id,
      :event_date,
      :pull_request_event_type,
      :actor_arn,
      :pull_request_created_event_metadata,
      :pull_request_status_changed_event_metadata,
      :pull_request_source_reference_updated_event_metadata,
      :pull_request_merged_state_changed_event_metadata,
      :approval_rule_event_metadata,
      :approval_state_changed_event_metadata,
      :approval_rule_overridden_event_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PullRequestEventType
    #
    module PullRequestEventType
      # No documentation available.
      #
      PULL_REQUEST_CREATED = "PULL_REQUEST_CREATED"

      # No documentation available.
      #
      PULL_REQUEST_STATUS_CHANGED = "PULL_REQUEST_STATUS_CHANGED"

      # No documentation available.
      #
      PULL_REQUEST_SOURCE_REFERENCE_UPDATED = "PULL_REQUEST_SOURCE_REFERENCE_UPDATED"

      # No documentation available.
      #
      PULL_REQUEST_MERGE_STATE_CHANGED = "PULL_REQUEST_MERGE_STATE_CHANGED"

      # No documentation available.
      #
      PULL_REQUEST_APPROVAL_RULE_CREATED = "PULL_REQUEST_APPROVAL_RULE_CREATED"

      # No documentation available.
      #
      PULL_REQUEST_APPROVAL_RULE_UPDATED = "PULL_REQUEST_APPROVAL_RULE_UPDATED"

      # No documentation available.
      #
      PULL_REQUEST_APPROVAL_RULE_DELETED = "PULL_REQUEST_APPROVAL_RULE_DELETED"

      # No documentation available.
      #
      PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN = "PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN"

      # No documentation available.
      #
      PULL_REQUEST_APPROVAL_STATE_CHANGED = "PULL_REQUEST_APPROVAL_STATE_CHANGED"
    end

    # <p>A pull request ID is required, but none was provided.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    PullRequestIdRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about the change in the merge state for a pull request event. </p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_reference
    #   <p>The name of the branch that the pull request is merged into.</p>
    #
    #   @return [String]
    #
    # @!attribute merge_metadata
    #   <p>Information about the merge state change event.</p>
    #
    #   @return [MergeMetadata]
    #
    PullRequestMergedStateChangedEventMetadata = ::Struct.new(
      :repository_name,
      :destination_reference,
      :merge_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about an update to the source branch of a pull request.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository where the pull request was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute before_commit_id
    #   <p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute after_commit_id
    #   <p>The full commit ID of the commit in the source branch that was the tip of the branch at the time the pull request was updated.</p>
    #
    #   @return [String]
    #
    # @!attribute merge_base
    #   <p>The commit ID of the most recent commit that the source branch and the destination branch have in common.</p>
    #
    #   @return [String]
    #
    PullRequestSourceReferenceUpdatedEventMetadata = ::Struct.new(
      :repository_name,
      :before_commit_id,
      :after_commit_id,
      :merge_base,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a change to the status of a pull request.</p>
    #
    # @!attribute pull_request_status
    #   <p>The changed status of the pull request.</p>
    #
    #   Enum, one of: ["OPEN", "CLOSED"]
    #
    #   @return [String]
    #
    PullRequestStatusChangedEventMetadata = ::Struct.new(
      :pull_request_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for PullRequestStatusEnum
    #
    module PullRequestStatusEnum
      # No documentation available.
      #
      OPEN = "OPEN"

      # No documentation available.
      #
      CLOSED = "CLOSED"
    end

    # <p>A pull request status is required, but none was provided.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    PullRequestStatusRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about a pull request target.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository that contains the pull request source and destination branches.</p>
    #
    #   @return [String]
    #
    # @!attribute source_reference
    #   <p>The branch of the repository that contains the changes for the pull request. Also known as the source branch.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_reference
    #   <p>The branch of the repository where the pull request changes are merged. Also known as
    #               the destination branch. </p>
    #
    #   @return [String]
    #
    # @!attribute destination_commit
    #   <p>The full commit ID that is the tip of the destination branch. This is the commit where the pull request was or will be merged.</p>
    #
    #   @return [String]
    #
    # @!attribute source_commit
    #   <p>The full commit ID of the tip of the source branch used to create the pull request. If
    #               the pull request branch is updated by a push while the pull request is open, the commit
    #               ID changes to reflect the new tip of the branch.</p>
    #
    #   @return [String]
    #
    # @!attribute merge_base
    #   <p>The commit ID of the most recent commit that the source branch and the destination branch have in common.</p>
    #
    #   @return [String]
    #
    # @!attribute merge_metadata
    #   <p>Returns metadata about the state of the merge, including whether the merge has been made.</p>
    #
    #   @return [MergeMetadata]
    #
    PullRequestTarget = ::Struct.new(
      :repository_name,
      :source_reference,
      :destination_reference,
      :destination_commit,
      :source_commit,
      :merge_base,
      :merge_metadata,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute comment_id
    #   <p>The ID of the comment to which you want to add or update a reaction.</p>
    #
    #   @return [String]
    #
    # @!attribute reaction_value
    #   <p>The emoji reaction you want to add or update. To remove a reaction, provide a value of blank or null. You can also provide the value of none.
    #               For information about emoji reaction values supported in AWS CodeCommit, see the <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/how-to-commit-comment.html emoji-reaction-table">AWS CodeCommit User Guide</a>.</p>
    #
    #   @return [String]
    #
    PutCommentReactionInput = ::Struct.new(
      :comment_id,
      :reaction_value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    PutCommentReactionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a file added or updated as part of a commit.</p>
    #
    # @!attribute file_path
    #   <p>The full path to the file in the repository, including the name of the file.</p>
    #
    #   @return [String]
    #
    # @!attribute file_mode
    #   <p>The extrapolated file mode permissions for the file. Valid values include EXECUTABLE and NORMAL.</p>
    #
    #   Enum, one of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #
    #   @return [String]
    #
    # @!attribute file_content
    #   <p>The content of the file, if a source file is not specified.</p>
    #
    #   @return [String]
    #
    # @!attribute source_file
    #   <p>The name and full path of the file that contains the changes you want to make as part of the commit,
    #           if you are not providing the file content directly.</p>
    #
    #   @return [SourceFileSpecifier]
    #
    PutFileEntry = ::Struct.new(
      :file_path,
      :file_mode,
      :file_content,
      :source_file,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The commit cannot be created because one or more files specified in the commit reference both a file and a folder.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    PutFileEntryConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute repository_name
    #   <p>The name of the repository where you want to add or update the file.</p>
    #
    #   @return [String]
    #
    # @!attribute branch_name
    #   <p>The name of the branch where you want to add or update the file. If this is an empty
    #               repository, this branch is created.</p>
    #
    #   @return [String]
    #
    # @!attribute file_content
    #   <p>The content of the file, in binary object format. </p>
    #
    #   @return [String]
    #
    # @!attribute file_path
    #   <p>The name of the file you want to add or update, including the relative path to the file in the repository.</p>
    #           <note>
    #               <p>If the path does not currently exist in the repository, the path is created as part of adding
    #                   the file.</p>
    #            </note>
    #
    #   @return [String]
    #
    # @!attribute file_mode
    #   <p>The file mode permissions of the blob. Valid file mode permissions are listed
    #               here.</p>
    #
    #   Enum, one of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #
    #   @return [String]
    #
    # @!attribute parent_commit_id
    #   <p>The full commit ID of the head commit in the branch where you want to add or update the file. If this is an empty repository,
    #               no commit ID is required. If this is not an empty repository, a commit ID is required. </p>
    #           <p>The commit ID must match the ID of the head commit at the time of the operation.
    #               Otherwise, an error occurs, and the file is not added or updated.</p>
    #
    #   @return [String]
    #
    # @!attribute commit_message
    #   <p>A message about why this file was added or updated. Although it is optional, a message
    #               makes the commit history for your repository more useful.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the person adding or updating the file. Although it is optional, a name
    #               makes the commit history for your repository more useful.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>An email address for the person adding or updating the file.</p>
    #
    #   @return [String]
    #
    PutFileInput = ::Struct.new(
      :repository_name,
      :branch_name,
      :file_content,
      :file_path,
      :file_mode,
      :parent_commit_id,
      :commit_message,
      :name,
      :email,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute commit_id
    #   <p>The full SHA ID of the commit that contains this file change.</p>
    #
    #   @return [String]
    #
    # @!attribute blob_id
    #   <p>The ID of the blob, which is its SHA-1 pointer.</p>
    #
    #   @return [String]
    #
    # @!attribute tree_id
    #   <p>The full SHA-1 pointer of the tree information for the commit that contains this file change.</p>
    #
    #   @return [String]
    #
    PutFileOutput = ::Struct.new(
      :commit_id,
      :blob_id,
      :tree_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a put repository triggers operation.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository where you want to create or update the trigger.</p>
    #
    #   @return [String]
    #
    # @!attribute triggers
    #   <p>The JSON block of configuration information for each trigger.</p>
    #
    #   @return [Array<RepositoryTrigger>]
    #
    PutRepositoryTriggersInput = ::Struct.new(
      :repository_name,
      :triggers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a put repository triggers operation.</p>
    #
    # @!attribute configuration_id
    #   <p>The system-generated unique ID for the create or update operation.</p>
    #
    #   @return [String]
    #
    PutRepositoryTriggersOutput = ::Struct.new(
      :configuration_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the reaction values provided by users on a comment.</p>
    #
    # @!attribute reaction
    #   <p>The reaction for a specified comment.</p>
    #
    #   @return [ReactionValueFormats]
    #
    # @!attribute reaction_users
    #   <p>The Amazon Resource Names (ARNs) of users who have provided reactions to the comment.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute reactions_from_deleted_users_count
    #   <p>A numerical count of users who reacted with the specified emoji whose identities have been subsequently deleted
    #               from IAM. While these IAM users or roles no longer exist, the reactions might still appear in total reaction counts.</p>
    #
    #   @return [Integer]
    #
    ReactionForComment = ::Struct.new(
      :reaction,
      :reaction_users,
      :reactions_from_deleted_users_count,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The number of reactions has been exceeded. Reactions are limited to one reaction per user for each individual comment ID.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ReactionLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the values for reactions to a comment. AWS CodeCommit supports a limited set of reactions.</p>
    #
    # @!attribute emoji
    #   <p>The Emoji Version 1.0 graphic of the reaction. These graphics are interpreted slightly differently on different operating systems.</p>
    #
    #   @return [String]
    #
    # @!attribute short_code
    #   <p>The emoji short code for the reaction. Short codes are interpreted slightly differently on different operating systems. </p>
    #
    #   @return [String]
    #
    # @!attribute unicode
    #   <p>The Unicode codepoint for the reaction.</p>
    #
    #   @return [String]
    #
    ReactionValueFormats = ::Struct.new(
      :emoji,
      :short_code,
      :unicode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A reaction value is required. </p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ReactionValueRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified reference does not exist. You must provide a full commit ID.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ReferenceDoesNotExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A reference name is required, but none was provided.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ReferenceNameRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified reference is not a supported type. </p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ReferenceTypeNotSupportedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RelativeFileVersionEnum
    #
    module RelativeFileVersionEnum
      # No documentation available.
      #
      BEFORE = "BEFORE"

      # No documentation available.
      #
      AFTER = "AFTER"
    end

    # <p>Information about a replacement content entry in the conflict of a merge or pull request operation.</p>
    #
    # @!attribute file_path
    #   <p>The path of the conflicting file.</p>
    #
    #   @return [String]
    #
    # @!attribute replacement_type
    #   <p>The replacement type to use when determining how to resolve the conflict.</p>
    #
    #   Enum, one of: ["KEEP_BASE", "KEEP_SOURCE", "KEEP_DESTINATION", "USE_NEW_CONTENT"]
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The base-64 encoded content to use when the replacement type is USE_NEW_CONTENT.</p>
    #
    #   @return [String]
    #
    # @!attribute file_mode
    #   <p>The file mode to apply during conflict resoltion.</p>
    #
    #   Enum, one of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #
    #   @return [String]
    #
    ReplaceContentEntry = ::Struct.new(
      :file_path,
      :replacement_type,
      :content,
      :file_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>USE_NEW_CONTENT was specified, but no replacement content has been provided.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ReplacementContentRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ReplacementTypeEnum
    #
    module ReplacementTypeEnum
      # No documentation available.
      #
      KEEP_BASE = "KEEP_BASE"

      # No documentation available.
      #
      KEEP_SOURCE = "KEEP_SOURCE"

      # No documentation available.
      #
      KEEP_DESTINATION = "KEEP_DESTINATION"

      # No documentation available.
      #
      USE_NEW_CONTENT = "USE_NEW_CONTENT"
    end

    # <p>A replacement type is required.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ReplacementTypeRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified repository does not exist.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    RepositoryDoesNotExistException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A repository resource limit was exceeded.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    RepositoryLimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a repository.</p>
    #
    # @!attribute account_id
    #   <p>The ID of the AWS account associated with the repository.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_id
    #   <p>The ID of the repository.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_name
    #   <p>The repository's name.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_description
    #   <p>A comment or description about the repository.</p>
    #
    #   @return [String]
    #
    # @!attribute default_branch
    #   <p>The repository's default branch name.</p>
    #
    #   @return [String]
    #
    # @!attribute last_modified_date
    #   <p>The date and time the repository was last modified, in timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute creation_date
    #   <p>The date and time the repository was created, in timestamp format.</p>
    #
    #   @return [Time]
    #
    # @!attribute clone_url_http
    #   <p>The URL to use for cloning the repository over HTTPS.</p>
    #
    #   @return [String]
    #
    # @!attribute clone_url_ssh
    #   <p>The URL to use for cloning the repository over SSH.</p>
    #
    #   @return [String]
    #
    # @!attribute arn
    #   <p>The Amazon Resource Name (ARN) of the repository.</p>
    #
    #   @return [String]
    #
    RepositoryMetadata = ::Struct.new(
      :account_id,
      :repository_id,
      :repository_name,
      :repository_description,
      :default_branch,
      :last_modified_date,
      :creation_date,
      :clone_url_http,
      :clone_url_ssh,
      :arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified repository name already exists.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    RepositoryNameExistsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a repository name and ID.</p>
    #
    # @!attribute repository_name
    #   <p>The name associated with the repository.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_id
    #   <p>The ID associated with the repository.</p>
    #
    #   @return [String]
    #
    RepositoryNameIdPair = ::Struct.new(
      :repository_name,
      :repository_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A repository name is required, but was not specified.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    RepositoryNameRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>At least one repository name object is required, but was not specified.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    RepositoryNamesRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The repository does not contain any pull requests with that pull request ID. Use GetPullRequest to verify the correct repository name for the pull request ID.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    RepositoryNotAssociatedWithPullRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a trigger for a repository.</p>
    #
    # @!attribute name
    #   <p>The name of the trigger.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_arn
    #   <p>The ARN of the resource that is the target for a trigger (for example, the ARN of a
    #               topic in Amazon SNS).</p>
    #
    #   @return [String]
    #
    # @!attribute custom_data
    #   <p>Any custom data associated with the trigger to be included in the information sent to
    #               the target of the trigger.</p>
    #
    #   @return [String]
    #
    # @!attribute branches
    #   <p>The branches to be included in the trigger configuration. If you specify an empty
    #               array, the trigger applies to all branches.</p>
    #           <note>
    #               <p>Although no content is required in the array, you must include the array itself.</p>
    #           </note>
    #
    #   @return [Array<String>]
    #
    # @!attribute events
    #   <p>The repository events that cause the trigger to run actions in another service, such
    #               as sending a notification through Amazon SNS.
    #
    #           </p>
    #            <note>
    #               <p>The valid value "all" cannot be used with any other values.</p>
    #            </note>
    #
    #   @return [Array<String>]
    #
    RepositoryTrigger = ::Struct.new(
      :name,
      :destination_arn,
      :custom_data,
      :branches,
      :events,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>At least one branch name is required, but was not specified in the trigger
    #             configuration.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    RepositoryTriggerBranchNameListRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A destination ARN for the target service for the trigger is required, but was not
    #             specified.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    RepositoryTriggerDestinationArnRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for RepositoryTriggerEventEnum
    #
    module RepositoryTriggerEventEnum
      # No documentation available.
      #
      ALL = "all"

      # No documentation available.
      #
      UPDATE_REFERENCE = "updateReference"

      # No documentation available.
      #
      CREATE_REFERENCE = "createReference"

      # No documentation available.
      #
      DELETE_REFERENCE = "deleteReference"
    end

    # <p>At least one event for the trigger is required, but was not specified.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    RepositoryTriggerEventsListRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A trigger failed to run.</p>
    #
    # @!attribute trigger
    #   <p>The name of the trigger that did not run.</p>
    #
    #   @return [String]
    #
    # @!attribute failure_message
    #   <p>Message information about the trigger that did not run.</p>
    #
    #   @return [String]
    #
    RepositoryTriggerExecutionFailure = ::Struct.new(
      :trigger,
      :failure_message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A name for the trigger is required, but was not specified.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    RepositoryTriggerNameRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The list of triggers for the repository is required, but was not specified.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    RepositoryTriggersListRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A valid Amazon Resource Name (ARN) for an AWS CodeCommit resource is required. For a list of valid resources in AWS CodeCommit, see
    #             <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats">CodeCommit Resources and Operations</a>
    #             in the AWS CodeCommit User Guide.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    ResourceArnRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The commit cannot be created because one of the changes specifies copying or moving a .gitkeep file.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    RestrictedSourceFileException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A revision ID is required, but was not provided.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    RevisionIdRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The revision ID provided in the request does not match the current revision ID. Use GetPullRequest to retrieve the current revision ID.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    RevisionNotCurrentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The file was not added or updated because the content of the file is exactly the same as the content of that file in the repository and branch
    #         that you specified.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    SameFileContentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The commit cannot be created because one or more changes in this commit duplicate actions in the same file path. For example,
    #         you cannot make the same delete request to the same file in the same file path twice, or make a delete request and a move request to the same
    #         file as part of the same commit.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    SamePathRequestException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the file mode changes.</p>
    #
    # @!attribute file_path
    #   <p>The full path to the file, including the name of the file.</p>
    #
    #   @return [String]
    #
    # @!attribute file_mode
    #   <p>The file mode for the file.</p>
    #
    #   Enum, one of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #
    #   @return [String]
    #
    SetFileModeEntry = ::Struct.new(
      :file_path,
      :file_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for SortByEnum
    #
    module SortByEnum
      # No documentation available.
      #
      REPOSITORY_NAME = "repositoryName"

      # No documentation available.
      #
      MODIFIED_DATE = "lastModifiedDate"
    end

    # <p>The source branch and destination branch for the pull request are the same. You must
    #             specify different branches for the source and destination.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    SourceAndDestinationAreSameException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The commit cannot be created because no source files or file content have been specified for the commit.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    SourceFileOrContentRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about a source file that is part of changes made in a commit.</p>
    #
    # @!attribute file_path
    #   <p>The full path to the file, including the name of the file.</p>
    #
    #   @return [String]
    #
    # @!attribute is_move
    #   <p>Whether to remove the source file from the parent commit.</p>
    #
    #   @return [Boolean]
    #
    SourceFileSpecifier = ::Struct.new(
      :file_path,
      :is_move,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.is_move ||= false
      end

    end

    # <p>Returns information about a submodule reference in a repository folder.</p>
    #
    # @!attribute commit_id
    #   <p>The commit ID that contains the reference to the submodule.</p>
    #
    #   @return [String]
    #
    # @!attribute absolute_path
    #   <p>The fully qualified path to the folder that contains the reference to the submodule.</p>
    #
    #   @return [String]
    #
    # @!attribute relative_path
    #   <p>The relative path of the submodule from the folder where the query originated.</p>
    #
    #   @return [String]
    #
    SubModule = ::Struct.new(
      :commit_id,
      :absolute_path,
      :relative_path,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about a symbolic link in a repository folder.</p>
    #
    # @!attribute blob_id
    #   <p>The blob ID that contains the information about the symbolic link.</p>
    #
    #   @return [String]
    #
    # @!attribute absolute_path
    #   <p>The fully qualified path to the folder that contains the symbolic link.</p>
    #
    #   @return [String]
    #
    # @!attribute relative_path
    #   <p>The relative path of the symbolic link from the folder where the query originated.</p>
    #
    #   @return [String]
    #
    # @!attribute file_mode
    #   <p>The file mode permissions of the blob that cotains information about the symbolic link.</p>
    #
    #   Enum, one of: ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #
    #   @return [String]
    #
    SymbolicLink = ::Struct.new(
      :blob_id,
      :absolute_path,
      :relative_path,
      :file_mode,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A list of tag keys is required. The list cannot be empty or null.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    TagKeysListRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The tag policy is not valid.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    TagPolicyException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which you want to add or update tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The key-value pair to use when tagging this repository.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A map of tags is required.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    TagsMapRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Returns information about a target for a pull request.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository that contains the pull request.</p>
    #
    #   @return [String]
    #
    # @!attribute source_reference
    #   <p>The branch of the repository that contains the changes for the pull request. Also known as the source branch.</p>
    #
    #   @return [String]
    #
    # @!attribute destination_reference
    #   <p>The branch of the repository where the pull request changes are merged. Also known as
    #               the destination branch.</p>
    #
    #   @return [String]
    #
    Target = ::Struct.new(
      :repository_name,
      :source_reference,
      :destination_reference,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A pull request target is required. It cannot be empty or null. A pull request target must contain the full values for the repository name, source branch, and destination branch for the pull request.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    TargetRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An array of target objects is required. It cannot be empty or null.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    TargetsRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of a test repository triggers operation.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository in which to test the triggers.</p>
    #
    #   @return [String]
    #
    # @!attribute triggers
    #   <p>The list of triggers to test.</p>
    #
    #   @return [Array<RepositoryTrigger>]
    #
    TestRepositoryTriggersInput = ::Struct.new(
      :repository_name,
      :triggers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the output of a test repository triggers operation.</p>
    #
    # @!attribute successful_executions
    #   <p>The list of triggers that were successfully tested. This list provides the names of the triggers that were successfully tested, separated by commas.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute failed_executions
    #   <p>The list of triggers that were not tested. This list provides the names of the
    #               triggers that could not be tested, separated by commas.</p>
    #
    #   @return [Array<RepositoryTriggerExecutionFailure>]
    #
    TestRepositoryTriggersOutput = ::Struct.new(
      :successful_executions,
      :failed_executions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The tip of the source branch in the destination repository does not match the tip of the source branch specified in your request.
    #             The pull request might have been updated. Make sure that you have the latest changes.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    TipOfSourceReferenceIsDifferentException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The divergence between the tips of the provided commit specifiers is too great to determine whether there might be
    #             any merge conflicts. Locally compare the specifiers using <code>git diff</code> or a diff tool.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    TipsDivergenceExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A pull request title is required. It cannot be empty or null.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    TitleRequiredException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The maximum number of tags for an AWS CodeCommit resource has been exceeded.</p>
    #
    # @!attribute message
    #   <p>Any message associated with the exception.</p>
    #
    #   @return [String]
    #
    TooManyTagsException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which you want to remove tags.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag key for each tag that you want to remove from the resource.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule_template_name
    #   <p>The name of the approval rule template where you want to update the content of the rule. </p>
    #
    #   @return [String]
    #
    # @!attribute new_rule_content
    #   <p>The content that replaces the existing content of the rule. Content statements must be
    #               complete. You cannot provide only the changes.</p>
    #
    #   @return [String]
    #
    # @!attribute existing_rule_content_sha256
    #   <p>The SHA-256 hash signature for the content of the approval rule. You can retrieve this
    #               information by using
    #               <a>GetPullRequest</a>.</p>
    #
    #   @return [String]
    #
    UpdateApprovalRuleTemplateContentInput = ::Struct.new(
      :approval_rule_template_name,
      :new_rule_content,
      :existing_rule_content_sha256,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule_template
    #   <p>Returns information about an approval rule template.</p>
    #
    #   @return [ApprovalRuleTemplate]
    #
    UpdateApprovalRuleTemplateContentOutput = ::Struct.new(
      :approval_rule_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule_template_name
    #   <p>The name of the template for which you want to update the description.</p>
    #
    #   @return [String]
    #
    # @!attribute approval_rule_template_description
    #   <p>The updated description of the approval rule template.</p>
    #
    #   @return [String]
    #
    UpdateApprovalRuleTemplateDescriptionInput = ::Struct.new(
      :approval_rule_template_name,
      :approval_rule_template_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule_template
    #   <p>The structure and content of the updated approval rule template.</p>
    #
    #   @return [ApprovalRuleTemplate]
    #
    UpdateApprovalRuleTemplateDescriptionOutput = ::Struct.new(
      :approval_rule_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute old_approval_rule_template_name
    #   <p>The current name of the approval rule template.</p>
    #
    #   @return [String]
    #
    # @!attribute new_approval_rule_template_name
    #   <p>The new name you want to apply to the approval rule template.</p>
    #
    #   @return [String]
    #
    UpdateApprovalRuleTemplateNameInput = ::Struct.new(
      :old_approval_rule_template_name,
      :new_approval_rule_template_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule_template
    #   <p>The structure and content of the updated approval rule template.</p>
    #
    #   @return [ApprovalRuleTemplate]
    #
    UpdateApprovalRuleTemplateNameOutput = ::Struct.new(
      :approval_rule_template,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute comment_id
    #   <p>The system-generated ID of the comment you want to update. To get this ID, use <a>GetCommentsForComparedCommit</a>
    #               or <a>GetCommentsForPullRequest</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute content
    #   <p>The updated content to replace the existing content of the comment.</p>
    #
    #   @return [String]
    #
    UpdateCommentInput = ::Struct.new(
      :comment_id,
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute comment
    #   <p>Information about the updated comment.</p>
    #
    #   @return [Comment]
    #
    UpdateCommentOutput = ::Struct.new(
      :comment,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of an update default branch operation.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository to set or change the default branch for.</p>
    #
    #   @return [String]
    #
    # @!attribute default_branch_name
    #   <p>The name of the branch to set as the default.</p>
    #
    #   @return [String]
    #
    UpdateDefaultBranchInput = ::Struct.new(
      :repository_name,
      :default_branch_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateDefaultBranchOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request.</p>
    #
    #   @return [String]
    #
    # @!attribute approval_rule_name
    #   <p>The name of the approval rule you want to update.</p>
    #
    #   @return [String]
    #
    # @!attribute existing_rule_content_sha256
    #   <p>The SHA-256 hash signature for the content of the approval rule. You can retrieve this
    #               information by using
    #               <a>GetPullRequest</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute new_rule_content
    #   <p>The updated content for the approval rule.</p>
    #           <note>
    #               <p>When you update the content of the approval rule, you can specify approvers in an
    #                   approval pool in one of two ways:</p>
    #               <ul>
    #                  <li>
    #                       <p>
    #                        <b>CodeCommitApprovers</b>: This option only
    #                           requires an AWS account and a resource. It can be used for both IAM users
    #                           and federated access users whose name matches the provided resource name.
    #                           This is a very powerful option that offers a great deal of flexibility. For
    #                           example, if you specify the AWS account <i>123456789012</i>
    #                           and <i>Mary_Major</i>, all of the following are counted as
    #                           approvals coming from that user:</p>
    #                       <ul>
    #                        <li>
    #                               <p>An IAM user in the account
    #                                   (arn:aws:iam::<i>123456789012</i>:user/<i>Mary_Major</i>)</p>
    #                           </li>
    #                        <li>
    #                               <p>A federated user identified in IAM as Mary_Major
    #                                   (arn:aws:sts::<i>123456789012</i>:federated-user/<i>Mary_Major</i>)</p>
    #                           </li>
    #                     </ul>
    #                       <p>This option does not recognize an active session of someone assuming the
    #                           role of CodeCommitReview with a role session name of
    #                               <i>Mary_Major</i>
    #                               (arn:aws:sts::<i>123456789012</i>:assumed-role/CodeCommitReview/<i>Mary_Major</i>)
    #                           unless you include a wildcard (*Mary_Major).</p>
    #                   </li>
    #                  <li>
    #                       <p>
    #                        <b>Fully qualified ARN</b>: This option allows
    #                           you to specify the fully qualified Amazon Resource Name (ARN) of the IAM
    #                           user or role. </p>
    #                   </li>
    #               </ul>
    #               <p>For more information about IAM ARNs, wildcards, and formats, see <a href="https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html">IAM
    #                       Identifiers</a> in the <i>IAM User Guide</i>.</p>
    #
    #           </note>
    #
    #   @return [String]
    #
    UpdatePullRequestApprovalRuleContentInput = ::Struct.new(
      :pull_request_id,
      :approval_rule_name,
      :existing_rule_content_sha256,
      :new_rule_content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute approval_rule
    #   <p>Information about the updated approval rule.</p>
    #
    #   @return [ApprovalRule]
    #
    UpdatePullRequestApprovalRuleContentOutput = ::Struct.new(
      :approval_rule,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The system-generated ID of the revision.</p>
    #
    #   @return [String]
    #
    # @!attribute approval_state
    #   <p>The approval state to associate with the user on the pull request.</p>
    #
    #   Enum, one of: ["APPROVE", "REVOKE"]
    #
    #   @return [String]
    #
    UpdatePullRequestApprovalStateInput = ::Struct.new(
      :pull_request_id,
      :revision_id,
      :approval_state,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdatePullRequestApprovalStateOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The updated content of the description for the pull request. This content replaces the
    #               existing description.</p>
    #
    #   @return [String]
    #
    UpdatePullRequestDescriptionInput = ::Struct.new(
      :pull_request_id,
      :description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request
    #   <p>Information about the updated pull request.</p>
    #
    #   @return [PullRequest]
    #
    UpdatePullRequestDescriptionOutput = ::Struct.new(
      :pull_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute pull_request_status
    #   <p>The status of the pull request. The only valid operations are to update the status
    #               from <code>OPEN</code> to <code>OPEN</code>, <code>OPEN</code> to <code>CLOSED</code> or
    #               from <code>CLOSED</code> to <code>CLOSED</code>.</p>
    #
    #   Enum, one of: ["OPEN", "CLOSED"]
    #
    #   @return [String]
    #
    UpdatePullRequestStatusInput = ::Struct.new(
      :pull_request_id,
      :pull_request_status,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request
    #   <p>Information about the pull request.</p>
    #
    #   @return [PullRequest]
    #
    UpdatePullRequestStatusOutput = ::Struct.new(
      :pull_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The updated title of the pull request. This replaces the existing title.</p>
    #
    #   @return [String]
    #
    UpdatePullRequestTitleInput = ::Struct.new(
      :pull_request_id,
      :title,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute pull_request
    #   <p>Information about the updated pull request.</p>
    #
    #   @return [PullRequest]
    #
    UpdatePullRequestTitleOutput = ::Struct.new(
      :pull_request,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of an update repository description operation.</p>
    #
    # @!attribute repository_name
    #   <p>The name of the repository to set or change the comment or description for.</p>
    #
    #   @return [String]
    #
    # @!attribute repository_description
    #   <p>The new comment or description for the specified repository. Repository descriptions are limited to 1,000 characters.</p>
    #
    #   @return [String]
    #
    UpdateRepositoryDescriptionInput = ::Struct.new(
      :repository_name,
      :repository_description,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateRepositoryDescriptionOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Represents the input of an update repository description operation.</p>
    #
    # @!attribute old_name
    #   <p>The current name of the repository.</p>
    #
    #   @return [String]
    #
    # @!attribute new_name
    #   <p>The new name for the repository.</p>
    #
    #   @return [String]
    #
    UpdateRepositoryNameInput = ::Struct.new(
      :old_name,
      :new_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UpdateRepositoryNameOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the user who made a specified commit.</p>
    #
    # @!attribute name
    #   <p>The name of the user who made the specified commit.</p>
    #
    #   @return [String]
    #
    # @!attribute email
    #   <p>The email address associated with the user who made the commit, if any.</p>
    #
    #   @return [String]
    #
    # @!attribute date
    #   <p>The date when the specified commit was commited, in timestamp format with GMT offset.</p>
    #
    #   @return [String]
    #
    UserInfo = ::Struct.new(
      :name,
      :email,
      :date,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
