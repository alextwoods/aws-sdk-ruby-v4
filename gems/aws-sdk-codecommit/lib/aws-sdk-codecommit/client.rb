# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::CodeCommit
  # An API client for CodeCommit_20150413
  # See {#initialize} for a full list of supported configuration options
  # <fullname>AWS CodeCommit</fullname>
  #         <p>This is the <i>AWS CodeCommit API Reference</i>. This reference provides descriptions of the operations and data types for
  #             AWS CodeCommit API along with usage examples.</p>
  #         <p>You can use the AWS CodeCommit API to work with the following objects:</p>
  #
  #             <p>Repositories, by calling the following:</p>
  #           <ul>
  #             <li>
  #                   <p>
  #                   <a>BatchGetRepositories</a>, which returns information about one or more repositories associated with your AWS account.</p>
  #             </li>
  #             <li>
  #                   <p>
  #                   <a>CreateRepository</a>, which creates an AWS CodeCommit repository.</p>
  #             </li>
  #             <li>
  #                   <p>
  #                   <a>DeleteRepository</a>, which deletes an AWS CodeCommit repository.</p>
  #             </li>
  #             <li>
  #                   <p>
  #                   <a>GetRepository</a>, which returns information about a specified repository.</p>
  #             </li>
  #             <li>
  #                   <p>
  #                   <a>ListRepositories</a>, which lists all AWS CodeCommit repositories associated with your AWS account.</p>
  #             </li>
  #             <li>
  #                   <p>
  #                   <a>UpdateRepositoryDescription</a>, which sets or updates the description of the repository.</p>
  #               </li>
  #             <li>
  #                   <p>
  #                   <a>UpdateRepositoryName</a>, which changes the name of the
  #                     repository. If you change the name of a repository, no other users of that
  #                     repository can access it until you send them the new HTTPS or SSH URL to
  #                     use.</p>
  #             </li>
  #          </ul>
  #
  #             <p>Branches, by calling the following:</p>
  #             <ul>
  #             <li>
  #                     <p>
  #                   <a>CreateBranch</a>, which creates a branch in a specified
  #                     repository.</p>
  #             </li>
  #             <li>
  #                     <p>
  #                   <a>DeleteBranch</a>, which deletes the specified branch in a repository unless it is the default branch.</p>
  #                 </li>
  #             <li>
  #                     <p>
  #                   <a>GetBranch</a>, which returns information about a specified branch.</p>
  #             </li>
  #             <li>
  #                     <p>
  #                   <a>ListBranches</a>, which lists all branches for a specified repository.</p>
  #             </li>
  #             <li>
  #                     <p>
  #                   <a>UpdateDefaultBranch</a>, which changes the default branch for a repository.</p>
  #             </li>
  #          </ul>
  #
  #         <p>Files, by calling the following:</p>
  #         <ul>
  #             <li>
  #                <p>
  #                   <a>DeleteFile</a>, which deletes the content of a specified file from a specified branch.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>GetBlob</a>, which returns the base-64 encoded content of an
  #                     individual Git blob object in a repository.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetFile</a>, which returns the base-64 encoded content of a specified file.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetFolder</a>, which returns the contents of a specified folder or directory.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>PutFile</a>, which adds or modifies a single file in a specified repository and branch.</p>
  #             </li>
  #          </ul>
  #
  #
  #             <p>Commits, by calling the following:</p>
  #               <ul>
  #             <li>
  #                       <p>
  #                   <a>BatchGetCommits</a>, which returns information about one or more commits in a repository.</p>
  #                   </li>
  #             <li>
  #                <p>
  #                   <a>CreateCommit</a>, which creates a commit for changes to a repository.</p>
  #             </li>
  #             <li>
  #                       <p>
  #                   <a>GetCommit</a>, which returns information about  a commit, including commit
  #                           messages and author and committer information.</p>
  #                   </li>
  #             <li>
  #                       <p>
  #                   <a>GetDifferences</a>, which returns information about the
  #                     differences in a valid commit specifier (such as a branch, tag, HEAD, commit ID,
  #                     or other fully qualified reference).</p>
  #                   </li>
  #          </ul>
  #
  #
  #         <p>Merges, by calling the following:</p>
  #         <ul>
  #             <li>
  #                 <p>
  #                   <a>BatchDescribeMergeConflicts</a>, which returns information about conflicts in a merge between commits in a repository.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>CreateUnreferencedMergeCommit</a>, which creates an unreferenced commit between two branches or commits for the
  #                     purpose of comparing them and identifying any potential conflicts.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>DescribeMergeConflicts</a>, which returns information about merge conflicts between the base, source, and destination versions
  #                     of a file in a potential merge.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>GetMergeCommit</a>, which returns information about the merge between a source and destination commit. </p>
  #
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>GetMergeConflicts</a>, which returns information about merge conflicts
  #                     between the source and destination branch in a pull request.</p>
  #             </li>
  #             <li>
  #
  #                 <p>
  #                   <a>GetMergeOptions</a>, which returns information about the available merge options between two branches or commit specifiers.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>MergeBranchesByFastForward</a>, which merges two branches using the fast-forward merge option.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>MergeBranchesBySquash</a>, which merges two branches using the squash merge option.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>MergeBranchesByThreeWay</a>, which merges two branches using the three-way merge option.</p>
  #             </li>
  #          </ul>
  #
  #
  #         <p>Pull requests, by calling the following:</p>
  #         <ul>
  #             <li>
  #                 <p>
  #                   <a>CreatePullRequest</a>, which creates a pull request in a specified repository.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>CreatePullRequestApprovalRule</a>, which creates an approval rule for a specified pull request.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>DeletePullRequestApprovalRule</a>, which deletes an approval rule for a specified pull request.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>DescribePullRequestEvents</a>, which returns information about one or more pull request events.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>EvaluatePullRequestApprovalRules</a>, which evaluates whether a pull request has met all the conditions specified in its associated approval rules.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>GetCommentsForPullRequest</a>, which returns information about comments on a specified pull request.</p>
  #             </li>
  #             <li>
  #
  #                 <p>
  #                   <a>GetPullRequest</a>, which returns information about a specified pull request.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetPullRequestApprovalStates</a>, which returns information about the approval states for a specified pull request.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetPullRequestOverrideState</a>, which returns information about whether approval rules have been set aside (overriden) for a
  #             pull request, and if so, the Amazon Resource Name (ARN) of the user or identity that overrode the rules and their requirements for the pull request.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>ListPullRequests</a>, which lists all pull requests for a repository.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>MergePullRequestByFastForward</a>, which merges the source destination branch of a pull request into the specified destination
  #                     branch for that pull request using the fast-forward merge option.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>MergePullRequestBySquash</a>, which merges the source destination branch of a pull request into the specified destination
  #                 branch for that pull request using the squash merge option.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>MergePullRequestByThreeWay</a>. which merges the source destination branch of a pull request into the specified destination
  #                 branch for that pull request using the three-way merge option.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>OverridePullRequestApprovalRules</a>, which sets aside all approval rule requirements for a pull request.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>PostCommentForPullRequest</a>, which posts a comment to a pull request at the specified line, file, or request.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>UpdatePullRequestApprovalRuleContent</a>, which updates the structure of an approval rule for a pull request.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>UpdatePullRequestApprovalState</a>, which updates the state of an approval on a pull request.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>UpdatePullRequestDescription</a>, which updates the description of a pull request.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>UpdatePullRequestStatus</a>, which updates the status of a pull request.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>UpdatePullRequestTitle</a>, which updates the title of a pull request.</p>
  #             </li>
  #          </ul>
  #
  #         <p>Approval rule templates, by calling the following:</p>
  #         <ul>
  #             <li>
  #                <p>
  #                   <a>AssociateApprovalRuleTemplateWithRepository</a>, which associates a template
  #                     with a specified repository. After the template is associated with a repository,
  #                     AWS CodeCommit creates approval rules that match the template conditions on
  #                     every pull request created in the specified repository.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>BatchAssociateApprovalRuleTemplateWithRepositories</a>, which associates a
  #                     template with one or more specified repositories. After the template is
  #                     associated with a repository, AWS CodeCommit creates approval rules that match
  #                     the template conditions on every pull request created in the specified
  #                     repositories.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>BatchDisassociateApprovalRuleTemplateFromRepositories</a>, which removes the
  #                     association between a template and specified repositories so that approval rules
  #                     based on the template are not automatically created when pull requests are
  #                     created in those repositories.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>CreateApprovalRuleTemplate</a>, which creates a template for approval rules that can then be associated with one or more repositories
  #              in your AWS account.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>DeleteApprovalRuleTemplate</a>, which deletes the specified template. It does not remove approval rules on pull requests already created with the template.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>DisassociateApprovalRuleTemplateFromRepository</a>, which removes the
  #                     association between a template and a repository so that approval rules based on
  #                     the template are not automatically created when pull requests are created in the
  #                     specified repository.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>GetApprovalRuleTemplate</a>, which returns information about an approval rule template.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListApprovalRuleTemplates</a>, which lists all approval rule templates in the AWS Region in your AWS account.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListAssociatedApprovalRuleTemplatesForRepository</a>, which lists all approval rule templates that are associated with a specified repository.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>ListRepositoriesForApprovalRuleTemplate</a>, which lists all repositories associated with the specified approval rule template.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>UpdateApprovalRuleTemplateDescription</a>, which updates the description of an
  #                     approval rule template.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>UpdateApprovalRuleTemplateName</a>, which updates the name of an approval rule template.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>UpdateApprovalRuleTemplateContent</a>, which updates the content of an approval rule template.</p>
  #             </li>
  #          </ul>
  #
  #         <p>Comments in a repository, by calling the following:</p>
  #         <ul>
  #             <li>
  #                 <p>
  #                   <a>DeleteCommentContent</a>, which deletes the content of a comment on a commit in a repository.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>GetComment</a>, which returns information about a comment on a commit.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>GetCommentReactions</a>, which returns information about emoji reactions to comments.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>GetCommentsForComparedCommit</a>, which returns information about comments on the comparison between two commit specifiers
  #                     in a repository.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>PostCommentForComparedCommit</a>, which creates a comment on the comparison between two commit specifiers in a repository.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>PostCommentReply</a>, which creates a reply to a comment.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>PutCommentReaction</a>, which creates or updates an emoji reaction to a comment.</p>
  #             </li>
  #             <li>
  #                 <p>
  #                   <a>UpdateComment</a>, which updates the content of a comment on a commit in a repository.</p>
  #             </li>
  #          </ul>
  #
  #         <p>Tags used to tag resources in AWS CodeCommit (not Git tags), by calling the following:</p>
  #         <ul>
  #             <li>
  #                <p>
  #                   <a>ListTagsForResource</a>, which gets information about AWS tags for a specified Amazon Resource Name (ARN) in AWS CodeCommit.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>TagResource</a>, which adds or updates tags for a resource in AWS CodeCommit.</p>
  #             </li>
  #             <li>
  #                <p>
  #                   <a>UntagResource</a>, which removes tags for a resource in AWS CodeCommit.</p>
  #             </li>
  #          </ul>
  #
  #             <p>Triggers, by calling the following:</p>
  #                 <ul>
  #             <li>
  #                         <p>
  #                   <a>GetRepositoryTriggers</a>, which returns information about triggers configured
  #                             for a repository.</p>
  #             </li>
  #             <li>
  #                         <p>
  #                   <a>PutRepositoryTriggers</a>, which replaces all triggers for a repository and can
  #                             be used to create or delete triggers.</p>
  #             </li>
  #             <li>
  #                         <p>
  #                   <a>TestRepositoryTriggers</a>, which tests the functionality of a repository trigger
  #                             by sending data to the trigger target.</p>
  #             </li>
  #          </ul>
  #
  #
  #
  #
  #         <p>For information about how to use AWS CodeCommit, see the <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html">AWS CodeCommit User Guide</a>.</p>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::CodeCommit::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Creates an association between an approval rule template and a specified repository.
    #             Then, the next time a pull request is created in the repository where the destination
    #             reference (if specified) matches the destination reference (branch) for the pull
    #             request, an approval rule that matches the template conditions is automatically created
    #             for that pull request. If no destination references are specified in the template, an
    #             approval rule that matches the template contents is created for all pull requests in
    #             that repository.</p>
    #
    # @param [Hash] params
    #   See {Types::AssociateApprovalRuleTemplateWithRepositoryInput}.
    #
    # @option params [String] :approval_rule_template_name
    #   <p>The name for the approval rule template. </p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository that you want to associate with the template.</p>
    #
    # @return [Types::AssociateApprovalRuleTemplateWithRepositoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.associate_approval_rule_template_with_repository(
    #     approval_rule_template_name: 'approvalRuleTemplateName', # required
    #     repository_name: 'repositoryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AssociateApprovalRuleTemplateWithRepositoryOutput
    #
    def associate_approval_rule_template_with_repository(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AssociateApprovalRuleTemplateWithRepositoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AssociateApprovalRuleTemplateWithRepositoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AssociateApprovalRuleTemplateWithRepository
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApprovalRuleTemplateDoesNotExistException, Errors::ApprovalRuleTemplateNameRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidApprovalRuleTemplateNameException, Errors::InvalidRepositoryNameException, Errors::MaximumRuleTemplatesAssociatedWithRepositoryException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::AssociateApprovalRuleTemplateWithRepository
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AssociateApprovalRuleTemplateWithRepository,
        stubs: @stubs,
        params_class: Params::AssociateApprovalRuleTemplateWithRepositoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :associate_approval_rule_template_with_repository
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an association between an approval rule template and one or more specified repositories. </p>
    #
    # @param [Hash] params
    #   See {Types::BatchAssociateApprovalRuleTemplateWithRepositoriesInput}.
    #
    # @option params [String] :approval_rule_template_name
    #   <p>The name of the template you want to associate with one or more repositories.</p>
    #
    # @option params [Array<String>] :repository_names
    #   <p>The names of the repositories you want to associate with the template.</p>
    #           <note>
    #               <p>The length constraint limit is for each string in the array. The array itself can be empty.</p>
    #            </note>
    #
    # @return [Types::BatchAssociateApprovalRuleTemplateWithRepositoriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_associate_approval_rule_template_with_repositories(
    #     approval_rule_template_name: 'approvalRuleTemplateName', # required
    #     repository_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchAssociateApprovalRuleTemplateWithRepositoriesOutput
    #   resp.data.associated_repository_names #=> Array<String>
    #   resp.data.associated_repository_names[0] #=> String
    #   resp.data.errors #=> Array<BatchAssociateApprovalRuleTemplateWithRepositoriesError>
    #   resp.data.errors[0] #=> Types::BatchAssociateApprovalRuleTemplateWithRepositoriesError
    #   resp.data.errors[0].repository_name #=> String
    #   resp.data.errors[0].error_code #=> String
    #   resp.data.errors[0].error_message #=> String
    #
    def batch_associate_approval_rule_template_with_repositories(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchAssociateApprovalRuleTemplateWithRepositoriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchAssociateApprovalRuleTemplateWithRepositoriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchAssociateApprovalRuleTemplateWithRepositories
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApprovalRuleTemplateDoesNotExistException, Errors::ApprovalRuleTemplateNameRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidApprovalRuleTemplateNameException, Errors::MaximumRepositoryNamesExceededException, Errors::RepositoryNamesRequiredException]),
        data_parser: Parsers::BatchAssociateApprovalRuleTemplateWithRepositories
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchAssociateApprovalRuleTemplateWithRepositories,
        stubs: @stubs,
        params_class: Params::BatchAssociateApprovalRuleTemplateWithRepositoriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_associate_approval_rule_template_with_repositories
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about one or more merge conflicts in the attempted merge of two commit specifiers using the squash or three-way merge strategy.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchDescribeMergeConflictsInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the merge conflicts you want to review.</p>
    #
    # @option params [String] :destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    # @option params [String] :source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    # @option params [String] :merge_option
    #   <p>The merge option or strategy you want to use to merge the code.</p>
    #
    # @option params [Integer] :max_merge_hunks
    #   <p>The maximum number of merge hunks to include in the output.</p>
    #
    # @option params [Integer] :max_conflict_files
    #   <p>The maximum number of files to include in the output.</p>
    #
    # @option params [Array<String>] :file_paths
    #   <p>The path of the target files used to describe the conflicts. If not specified, the default is all conflict files.</p>
    #
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    # @return [Types::BatchDescribeMergeConflictsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_describe_merge_conflicts(
    #     repository_name: 'repositoryName', # required
    #     destination_commit_specifier: 'destinationCommitSpecifier', # required
    #     source_commit_specifier: 'sourceCommitSpecifier', # required
    #     merge_option: 'FAST_FORWARD_MERGE', # required - accepts ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #     max_merge_hunks: 1,
    #     max_conflict_files: 1,
    #     file_paths: [
    #       'member'
    #     ],
    #     conflict_detail_level: 'FILE_LEVEL', # accepts ["FILE_LEVEL", "LINE_LEVEL"]
    #     conflict_resolution_strategy: 'NONE', # accepts ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDescribeMergeConflictsOutput
    #   resp.data.conflicts #=> Array<Conflict>
    #   resp.data.conflicts[0] #=> Types::Conflict
    #   resp.data.conflicts[0].conflict_metadata #=> Types::ConflictMetadata
    #   resp.data.conflicts[0].conflict_metadata.file_path #=> String
    #   resp.data.conflicts[0].conflict_metadata.file_sizes #=> Types::FileSizes
    #   resp.data.conflicts[0].conflict_metadata.file_sizes.source #=> Integer
    #   resp.data.conflicts[0].conflict_metadata.file_sizes.destination #=> Integer
    #   resp.data.conflicts[0].conflict_metadata.file_sizes.base #=> Integer
    #   resp.data.conflicts[0].conflict_metadata.file_modes #=> Types::FileModes
    #   resp.data.conflicts[0].conflict_metadata.file_modes.source #=> String, one of ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #   resp.data.conflicts[0].conflict_metadata.file_modes.destination #=> String, one of ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #   resp.data.conflicts[0].conflict_metadata.file_modes.base #=> String, one of ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #   resp.data.conflicts[0].conflict_metadata.object_types #=> Types::ObjectTypes
    #   resp.data.conflicts[0].conflict_metadata.object_types.source #=> String, one of ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"]
    #   resp.data.conflicts[0].conflict_metadata.object_types.destination #=> String, one of ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"]
    #   resp.data.conflicts[0].conflict_metadata.object_types.base #=> String, one of ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"]
    #   resp.data.conflicts[0].conflict_metadata.number_of_conflicts #=> Integer
    #   resp.data.conflicts[0].conflict_metadata.is_binary_file #=> Types::IsBinaryFile
    #   resp.data.conflicts[0].conflict_metadata.is_binary_file.source #=> Boolean
    #   resp.data.conflicts[0].conflict_metadata.is_binary_file.destination #=> Boolean
    #   resp.data.conflicts[0].conflict_metadata.is_binary_file.base #=> Boolean
    #   resp.data.conflicts[0].conflict_metadata.content_conflict #=> Boolean
    #   resp.data.conflicts[0].conflict_metadata.file_mode_conflict #=> Boolean
    #   resp.data.conflicts[0].conflict_metadata.object_type_conflict #=> Boolean
    #   resp.data.conflicts[0].conflict_metadata.merge_operations #=> Types::MergeOperations
    #   resp.data.conflicts[0].conflict_metadata.merge_operations.source #=> String, one of ["A", "M", "D"]
    #   resp.data.conflicts[0].conflict_metadata.merge_operations.destination #=> String, one of ["A", "M", "D"]
    #   resp.data.conflicts[0].merge_hunks #=> Array<MergeHunk>
    #   resp.data.conflicts[0].merge_hunks[0] #=> Types::MergeHunk
    #   resp.data.conflicts[0].merge_hunks[0].is_conflict #=> Boolean
    #   resp.data.conflicts[0].merge_hunks[0].source #=> Types::MergeHunkDetail
    #   resp.data.conflicts[0].merge_hunks[0].source.start_line #=> Integer
    #   resp.data.conflicts[0].merge_hunks[0].source.end_line #=> Integer
    #   resp.data.conflicts[0].merge_hunks[0].source.hunk_content #=> String
    #   resp.data.conflicts[0].merge_hunks[0].destination #=> Types::MergeHunkDetail
    #   resp.data.conflicts[0].merge_hunks[0].base #=> Types::MergeHunkDetail
    #   resp.data.next_token #=> String
    #   resp.data.errors #=> Array<BatchDescribeMergeConflictsError>
    #   resp.data.errors[0] #=> Types::BatchDescribeMergeConflictsError
    #   resp.data.errors[0].file_path #=> String
    #   resp.data.errors[0].exception_name #=> String
    #   resp.data.errors[0].message #=> String
    #   resp.data.destination_commit_id #=> String
    #   resp.data.source_commit_id #=> String
    #   resp.data.base_commit_id #=> String
    #
    def batch_describe_merge_conflicts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDescribeMergeConflictsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDescribeMergeConflictsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDescribeMergeConflicts
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommitDoesNotExistException, Errors::CommitRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidCommitException, Errors::InvalidConflictDetailLevelException, Errors::InvalidConflictResolutionStrategyException, Errors::InvalidContinuationTokenException, Errors::InvalidMaxConflictFilesException, Errors::InvalidMaxMergeHunksException, Errors::InvalidMergeOptionException, Errors::InvalidRepositoryNameException, Errors::MaximumFileContentToLoadExceededException, Errors::MaximumItemsToCompareExceededException, Errors::MergeOptionRequiredException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException, Errors::TipsDivergenceExceededException]),
        data_parser: Parsers::BatchDescribeMergeConflicts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDescribeMergeConflicts,
        stubs: @stubs,
        params_class: Params::BatchDescribeMergeConflictsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_describe_merge_conflicts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the association between an approval rule template and one or more specified repositories. </p>
    #
    # @param [Hash] params
    #   See {Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesInput}.
    #
    # @option params [String] :approval_rule_template_name
    #   <p>The name of the template that you want to disassociate from one or more repositories.</p>
    #
    # @option params [Array<String>] :repository_names
    #   <p>The repository names that you want to disassociate from the approval rule
    #               template.</p>
    #           <note>
    #               <p>The length constraint limit is for each string in the array. The array itself can be empty.</p>
    #            </note>
    #
    # @return [Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_disassociate_approval_rule_template_from_repositories(
    #     approval_rule_template_name: 'approvalRuleTemplateName', # required
    #     repository_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput
    #   resp.data.disassociated_repository_names #=> Array<String>
    #   resp.data.disassociated_repository_names[0] #=> String
    #   resp.data.errors #=> Array<BatchDisassociateApprovalRuleTemplateFromRepositoriesError>
    #   resp.data.errors[0] #=> Types::BatchDisassociateApprovalRuleTemplateFromRepositoriesError
    #   resp.data.errors[0].repository_name #=> String
    #   resp.data.errors[0].error_code #=> String
    #   resp.data.errors[0].error_message #=> String
    #
    def batch_disassociate_approval_rule_template_from_repositories(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchDisassociateApprovalRuleTemplateFromRepositoriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchDisassociateApprovalRuleTemplateFromRepositoriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchDisassociateApprovalRuleTemplateFromRepositories
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApprovalRuleTemplateDoesNotExistException, Errors::ApprovalRuleTemplateNameRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidApprovalRuleTemplateNameException, Errors::MaximumRepositoryNamesExceededException, Errors::RepositoryNamesRequiredException]),
        data_parser: Parsers::BatchDisassociateApprovalRuleTemplateFromRepositories
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchDisassociateApprovalRuleTemplateFromRepositories,
        stubs: @stubs,
        params_class: Params::BatchDisassociateApprovalRuleTemplateFromRepositoriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_disassociate_approval_rule_template_from_repositories
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the contents of one or more commits in a repository.</p>
    #
    # @param [Hash] params
    #   See {Types::BatchGetCommitsInput}.
    #
    # @option params [Array<String>] :commit_ids
    #   <p>The full commit IDs of the commits to get information about.</p>
    #           <note>
    #               <p>You must supply the full SHA IDs of each commit. You cannot use shortened SHA
    #                   IDs.</p>
    #           </note>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the commits.</p>
    #
    # @return [Types::BatchGetCommitsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_commits(
    #     commit_ids: [
    #       'member'
    #     ], # required
    #     repository_name: 'repositoryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetCommitsOutput
    #   resp.data.commits #=> Array<Commit>
    #   resp.data.commits[0] #=> Types::Commit
    #   resp.data.commits[0].commit_id #=> String
    #   resp.data.commits[0].tree_id #=> String
    #   resp.data.commits[0].parents #=> Array<String>
    #   resp.data.commits[0].parents[0] #=> String
    #   resp.data.commits[0].message #=> String
    #   resp.data.commits[0].author #=> Types::UserInfo
    #   resp.data.commits[0].author.name #=> String
    #   resp.data.commits[0].author.email #=> String
    #   resp.data.commits[0].author.date #=> String
    #   resp.data.commits[0].committer #=> Types::UserInfo
    #   resp.data.commits[0].additional_data #=> String
    #   resp.data.errors #=> Array<BatchGetCommitsError>
    #   resp.data.errors[0] #=> Types::BatchGetCommitsError
    #   resp.data.errors[0].commit_id #=> String
    #   resp.data.errors[0].error_code #=> String
    #   resp.data.errors[0].error_message #=> String
    #
    def batch_get_commits(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetCommitsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetCommitsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetCommits
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommitIdsLimitExceededException, Errors::CommitIdsListRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidRepositoryNameException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::BatchGetCommits
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetCommits,
        stubs: @stubs,
        params_class: Params::BatchGetCommitsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_commits
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about one or more repositories.</p>
    #         <note>
    #             <p>The description field for a repository accepts all HTML characters and all valid
    #                 Unicode characters. Applications that do not HTML-encode the description and display
    #                 it in a webpage can expose users to potentially malicious code. Make sure that you
    #                 HTML-encode the description field in any application that uses this API to display
    #                 the repository description on a webpage.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::BatchGetRepositoriesInput}.
    #
    # @option params [Array<String>] :repository_names
    #   <p>The names of the repositories to get information about.</p>
    #           <note>
    #               <p>The length constraint limit is for each string in the array. The array itself can be empty.</p>
    #            </note>
    #
    # @return [Types::BatchGetRepositoriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.batch_get_repositories(
    #     repository_names: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::BatchGetRepositoriesOutput
    #   resp.data.repositories #=> Array<RepositoryMetadata>
    #   resp.data.repositories[0] #=> Types::RepositoryMetadata
    #   resp.data.repositories[0].account_id #=> String
    #   resp.data.repositories[0].repository_id #=> String
    #   resp.data.repositories[0].repository_name #=> String
    #   resp.data.repositories[0].repository_description #=> String
    #   resp.data.repositories[0].default_branch #=> String
    #   resp.data.repositories[0].last_modified_date #=> Time
    #   resp.data.repositories[0].creation_date #=> Time
    #   resp.data.repositories[0].clone_url_http #=> String
    #   resp.data.repositories[0].clone_url_ssh #=> String
    #   resp.data.repositories[0].arn #=> String
    #   resp.data.repositories_not_found #=> Array<String>
    #   resp.data.repositories_not_found[0] #=> String
    #
    def batch_get_repositories(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::BatchGetRepositoriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::BatchGetRepositoriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::BatchGetRepositories
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidRepositoryNameException, Errors::MaximumRepositoryNamesExceededException, Errors::RepositoryNamesRequiredException]),
        data_parser: Parsers::BatchGetRepositories
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::BatchGetRepositories,
        stubs: @stubs,
        params_class: Params::BatchGetRepositoriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :batch_get_repositories
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a template for approval rules that can then be associated with one or more
    #             repositories in your AWS account. When you associate a template with a repository, AWS
    #             CodeCommit creates an approval rule that matches the conditions of the template for all
    #             pull requests that meet the conditions of the template. For more information, see
    #             <a>AssociateApprovalRuleTemplateWithRepository</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateApprovalRuleTemplateInput}.
    #
    # @option params [String] :approval_rule_template_name
    #   <p>The name of the approval rule template. Provide descriptive names, because this name
    #               is applied to the approval rules created automatically in associated
    #               repositories.</p>
    #
    # @option params [String] :approval_rule_template_content
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
    # @option params [String] :approval_rule_template_description
    #   <p>The description of the approval rule template. Consider providing a description that
    #               explains what this template does and when it might be appropriate to associate it with
    #               repositories.</p>
    #
    # @return [Types::CreateApprovalRuleTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_approval_rule_template(
    #     approval_rule_template_name: 'approvalRuleTemplateName', # required
    #     approval_rule_template_content: 'approvalRuleTemplateContent', # required
    #     approval_rule_template_description: 'approvalRuleTemplateDescription'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateApprovalRuleTemplateOutput
    #   resp.data.approval_rule_template #=> Types::ApprovalRuleTemplate
    #   resp.data.approval_rule_template.approval_rule_template_id #=> String
    #   resp.data.approval_rule_template.approval_rule_template_name #=> String
    #   resp.data.approval_rule_template.approval_rule_template_description #=> String
    #   resp.data.approval_rule_template.approval_rule_template_content #=> String
    #   resp.data.approval_rule_template.rule_content_sha256 #=> String
    #   resp.data.approval_rule_template.last_modified_date #=> Time
    #   resp.data.approval_rule_template.creation_date #=> Time
    #   resp.data.approval_rule_template.last_modified_user #=> String
    #
    def create_approval_rule_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateApprovalRuleTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateApprovalRuleTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateApprovalRuleTemplate
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApprovalRuleTemplateContentRequiredException, Errors::ApprovalRuleTemplateNameAlreadyExistsException, Errors::ApprovalRuleTemplateNameRequiredException, Errors::InvalidApprovalRuleTemplateContentException, Errors::InvalidApprovalRuleTemplateDescriptionException, Errors::InvalidApprovalRuleTemplateNameException, Errors::NumberOfRuleTemplatesExceededException]),
        data_parser: Parsers::CreateApprovalRuleTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateApprovalRuleTemplate,
        stubs: @stubs,
        params_class: Params::CreateApprovalRuleTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_approval_rule_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a branch in a repository and points the branch to a commit.</p>
    #         <note>
    #             <p>Calling the create branch operation does not set a repository's default branch. To do this, call the update default branch operation.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateBranchInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository in which you want to create the new branch.</p>
    #
    # @option params [String] :branch_name
    #   <p>The name of the new branch to create.</p>
    #
    # @option params [String] :commit_id
    #   <p>The ID of the commit to point the new branch to.</p>
    #
    # @return [Types::CreateBranchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_branch(
    #     repository_name: 'repositoryName', # required
    #     branch_name: 'branchName', # required
    #     commit_id: 'commitId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateBranchOutput
    #
    def create_branch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateBranchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateBranchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateBranch
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BranchNameExistsException, Errors::BranchNameRequiredException, Errors::CommitDoesNotExistException, Errors::CommitIdRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidBranchNameException, Errors::InvalidCommitIdException, Errors::InvalidRepositoryNameException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::CreateBranch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateBranch,
        stubs: @stubs,
        params_class: Params::CreateBranchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_branch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a commit for a repository on the tip of a specified branch.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCommitInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository where you create the commit.</p>
    #
    # @option params [String] :branch_name
    #   <p>The name of the branch where you create the commit.</p>
    #
    # @option params [String] :parent_commit_id
    #   <p>The ID of the commit that is the parent of the commit you create. Not required if this
    #               is an empty repository.</p>
    #
    # @option params [String] :author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    #
    # @option params [String] :email
    #   <p>The email address of the person who created the commit.</p>
    #
    # @option params [String] :commit_message
    #   <p>The commit message you want to include in the commit. Commit messages are limited to
    #               256 KB. If no message is specified, a default message is used.</p>
    #
    # @option params [Boolean] :keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If true, a ..gitkeep file is created for empty folders.
    #               The default is false.</p>
    #
    # @option params [Array<PutFileEntry>] :put_files
    #   <p>The files to add or update in this commit.</p>
    #
    # @option params [Array<DeleteFileEntry>] :delete_files
    #   <p>The files to delete in this commit. These files still exist in earlier commits.</p>
    #
    # @option params [Array<SetFileModeEntry>] :set_file_modes
    #   <p>The file modes to update for files in this commit.</p>
    #
    # @return [Types::CreateCommitOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_commit(
    #     repository_name: 'repositoryName', # required
    #     branch_name: 'branchName', # required
    #     parent_commit_id: 'parentCommitId',
    #     author_name: 'authorName',
    #     email: 'email',
    #     commit_message: 'commitMessage',
    #     keep_empty_folders: false,
    #     put_files: [
    #       {
    #         file_path: 'filePath', # required
    #         file_mode: 'EXECUTABLE', # accepts ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #         file_content: 'fileContent',
    #         source_file: {
    #           file_path: 'filePath', # required
    #           is_move: false
    #         }
    #       }
    #     ],
    #     delete_files: [
    #       {
    #         file_path: 'filePath' # required
    #       }
    #     ],
    #     set_file_modes: [
    #       {
    #         file_path: 'filePath', # required
    #         file_mode: 'EXECUTABLE' # required - accepts ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #       }
    #     ]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCommitOutput
    #   resp.data.commit_id #=> String
    #   resp.data.tree_id #=> String
    #   resp.data.files_added #=> Array<FileMetadata>
    #   resp.data.files_added[0] #=> Types::FileMetadata
    #   resp.data.files_added[0].absolute_path #=> String
    #   resp.data.files_added[0].blob_id #=> String
    #   resp.data.files_added[0].file_mode #=> String, one of ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #   resp.data.files_updated #=> Array<FileMetadata>
    #   resp.data.files_deleted #=> Array<FileMetadata>
    #
    def create_commit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCommitInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCommitInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCommit
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BranchDoesNotExistException, Errors::BranchNameIsTagNameException, Errors::BranchNameRequiredException, Errors::CommitMessageLengthExceededException, Errors::DirectoryNameConflictsWithFileNameException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::FileContentAndSourceFileSpecifiedException, Errors::FileContentSizeLimitExceededException, Errors::FileDoesNotExistException, Errors::FileEntryRequiredException, Errors::FileModeRequiredException, Errors::FileNameConflictsWithDirectoryNameException, Errors::FilePathConflictsWithSubmodulePathException, Errors::FolderContentSizeLimitExceededException, Errors::InvalidBranchNameException, Errors::InvalidDeletionParameterException, Errors::InvalidEmailException, Errors::InvalidFileModeException, Errors::InvalidParentCommitIdException, Errors::InvalidPathException, Errors::InvalidRepositoryNameException, Errors::MaximumFileEntriesExceededException, Errors::NameLengthExceededException, Errors::NoChangeException, Errors::ParentCommitDoesNotExistException, Errors::ParentCommitIdOutdatedException, Errors::ParentCommitIdRequiredException, Errors::PathRequiredException, Errors::PutFileEntryConflictException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException, Errors::RestrictedSourceFileException, Errors::SamePathRequestException, Errors::SourceFileOrContentRequiredException]),
        data_parser: Parsers::CreateCommit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCommit,
        stubs: @stubs,
        params_class: Params::CreateCommitOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_commit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a pull request in the specified repository.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePullRequestInput}.
    #
    # @option params [String] :title
    #   <p>The title of the pull request. This title is used to identify the pull request to
    #               other users in the repository.</p>
    #
    # @option params [String] :description
    #   <p>A description of the pull request.</p>
    #
    # @option params [Array<Target>] :targets
    #   <p>The targets for the pull request, including the source of the code to be reviewed (the
    #               source branch) and the destination where the creator of the pull request intends the
    #               code to be merged after the pull request is closed (the destination branch).</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    #           <note>
    #               <p>The AWS SDKs prepopulate client request tokens. If you are using an AWS SDK, an
    #                   idempotency token is created for you.</p>
    #           </note>
    #
    # @return [Types::CreatePullRequestOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pull_request(
    #     title: 'title', # required
    #     description: 'description',
    #     targets: [
    #       {
    #         repository_name: 'repositoryName', # required
    #         source_reference: 'sourceReference', # required
    #         destination_reference: 'destinationReference'
    #       }
    #     ], # required
    #     client_request_token: 'clientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePullRequestOutput
    #   resp.data.pull_request #=> Types::PullRequest
    #   resp.data.pull_request.pull_request_id #=> String
    #   resp.data.pull_request.title #=> String
    #   resp.data.pull_request.description #=> String
    #   resp.data.pull_request.last_activity_date #=> Time
    #   resp.data.pull_request.creation_date #=> Time
    #   resp.data.pull_request.pull_request_status #=> String, one of ["OPEN", "CLOSED"]
    #   resp.data.pull_request.author_arn #=> String
    #   resp.data.pull_request.pull_request_targets #=> Array<PullRequestTarget>
    #   resp.data.pull_request.pull_request_targets[0] #=> Types::PullRequestTarget
    #   resp.data.pull_request.pull_request_targets[0].repository_name #=> String
    #   resp.data.pull_request.pull_request_targets[0].source_reference #=> String
    #   resp.data.pull_request.pull_request_targets[0].destination_reference #=> String
    #   resp.data.pull_request.pull_request_targets[0].destination_commit #=> String
    #   resp.data.pull_request.pull_request_targets[0].source_commit #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_base #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata #=> Types::MergeMetadata
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.is_merged #=> Boolean
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merged_by #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merge_commit_id #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merge_option #=> String, one of ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #   resp.data.pull_request.client_request_token #=> String
    #   resp.data.pull_request.revision_id #=> String
    #   resp.data.pull_request.approval_rules #=> Array<ApprovalRule>
    #   resp.data.pull_request.approval_rules[0] #=> Types::ApprovalRule
    #   resp.data.pull_request.approval_rules[0].approval_rule_id #=> String
    #   resp.data.pull_request.approval_rules[0].approval_rule_name #=> String
    #   resp.data.pull_request.approval_rules[0].approval_rule_content #=> String
    #   resp.data.pull_request.approval_rules[0].rule_content_sha256 #=> String
    #   resp.data.pull_request.approval_rules[0].last_modified_date #=> Time
    #   resp.data.pull_request.approval_rules[0].creation_date #=> Time
    #   resp.data.pull_request.approval_rules[0].last_modified_user #=> String
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template #=> Types::OriginApprovalRuleTemplate
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_name #=> String
    #
    def create_pull_request(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePullRequestInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePullRequestInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePullRequest
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientRequestTokenRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::IdempotencyParameterMismatchException, Errors::InvalidClientRequestTokenException, Errors::InvalidDescriptionException, Errors::InvalidReferenceNameException, Errors::InvalidRepositoryNameException, Errors::InvalidTargetException, Errors::InvalidTargetsException, Errors::InvalidTitleException, Errors::MaximumOpenPullRequestsExceededException, Errors::MultipleRepositoriesInPullRequestException, Errors::ReferenceDoesNotExistException, Errors::ReferenceNameRequiredException, Errors::ReferenceTypeNotSupportedException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException, Errors::SourceAndDestinationAreSameException, Errors::TargetRequiredException, Errors::TargetsRequiredException, Errors::TitleRequiredException]),
        data_parser: Parsers::CreatePullRequest
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePullRequest,
        stubs: @stubs,
        params_class: Params::CreatePullRequestOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_pull_request
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an approval rule for a pull request.</p>
    #
    # @param [Hash] params
    #   See {Types::CreatePullRequestApprovalRuleInput}.
    #
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request for which you want to create the approval rule.</p>
    #
    # @option params [String] :approval_rule_name
    #   <p>The name for the approval rule.</p>
    #
    # @option params [String] :approval_rule_content
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
    # @return [Types::CreatePullRequestApprovalRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_pull_request_approval_rule(
    #     pull_request_id: 'pullRequestId', # required
    #     approval_rule_name: 'approvalRuleName', # required
    #     approval_rule_content: 'approvalRuleContent' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreatePullRequestApprovalRuleOutput
    #   resp.data.approval_rule #=> Types::ApprovalRule
    #   resp.data.approval_rule.approval_rule_id #=> String
    #   resp.data.approval_rule.approval_rule_name #=> String
    #   resp.data.approval_rule.approval_rule_content #=> String
    #   resp.data.approval_rule.rule_content_sha256 #=> String
    #   resp.data.approval_rule.last_modified_date #=> Time
    #   resp.data.approval_rule.creation_date #=> Time
    #   resp.data.approval_rule.last_modified_user #=> String
    #   resp.data.approval_rule.origin_approval_rule_template #=> Types::OriginApprovalRuleTemplate
    #   resp.data.approval_rule.origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.data.approval_rule.origin_approval_rule_template.approval_rule_template_name #=> String
    #
    def create_pull_request_approval_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreatePullRequestApprovalRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreatePullRequestApprovalRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreatePullRequestApprovalRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApprovalRuleContentRequiredException, Errors::ApprovalRuleNameAlreadyExistsException, Errors::ApprovalRuleNameRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidApprovalRuleContentException, Errors::InvalidApprovalRuleNameException, Errors::InvalidPullRequestIdException, Errors::NumberOfRulesExceededException, Errors::PullRequestAlreadyClosedException, Errors::PullRequestDoesNotExistException, Errors::PullRequestIdRequiredException]),
        data_parser: Parsers::CreatePullRequestApprovalRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreatePullRequestApprovalRule,
        stubs: @stubs,
        params_class: Params::CreatePullRequestApprovalRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_pull_request_approval_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new, empty repository.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateRepositoryInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the new repository to be created.</p>
    #           <note>
    #               <p>The repository name must be unique across the calling AWS account. Repository names
    #                   are limited to 100 alphanumeric, dash, and underscore characters, and cannot include
    #                   certain characters. For more information about the limits on repository names, see
    #                       <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">Limits</a> in the <i>AWS CodeCommit User Guide</i>. The
    #                   suffix .git is prohibited.</p>
    #            </note>
    #
    # @option params [String] :repository_description
    #   <p>A comment or description about the new repository.</p>
    #           <note>
    #               <p>The description field for a repository accepts all HTML characters and all valid
    #                   Unicode characters. Applications that do not HTML-encode the description and display
    #                   it in a webpage can expose users to potentially malicious code. Make sure that you
    #                   HTML-encode the description field in any application that uses this API to display
    #                   the repository description on a webpage.</p>
    #            </note>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>One or more tag key-value pairs to use when tagging this repository.</p>
    #
    # @return [Types::CreateRepositoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_repository(
    #     repository_name: 'repositoryName', # required
    #     repository_description: 'repositoryDescription',
    #     tags: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateRepositoryOutput
    #   resp.data.repository_metadata #=> Types::RepositoryMetadata
    #   resp.data.repository_metadata.account_id #=> String
    #   resp.data.repository_metadata.repository_id #=> String
    #   resp.data.repository_metadata.repository_name #=> String
    #   resp.data.repository_metadata.repository_description #=> String
    #   resp.data.repository_metadata.default_branch #=> String
    #   resp.data.repository_metadata.last_modified_date #=> Time
    #   resp.data.repository_metadata.creation_date #=> Time
    #   resp.data.repository_metadata.clone_url_http #=> String
    #   resp.data.repository_metadata.clone_url_ssh #=> String
    #   resp.data.repository_metadata.arn #=> String
    #
    def create_repository(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateRepositoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateRepositoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateRepository
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidRepositoryDescriptionException, Errors::InvalidRepositoryNameException, Errors::InvalidSystemTagUsageException, Errors::InvalidTagsMapException, Errors::RepositoryLimitExceededException, Errors::RepositoryNameExistsException, Errors::RepositoryNameRequiredException, Errors::TagPolicyException, Errors::TooManyTagsException]),
        data_parser: Parsers::CreateRepository
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateRepository,
        stubs: @stubs,
        params_class: Params::CreateRepositoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_repository
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates an unreferenced commit that represents the result of merging two branches
    #             using a specified merge strategy. This can help you determine the outcome of a potential
    #             merge. This API cannot be used with the fast-forward merge strategy because that
    #             strategy does not create a merge commit.</p>
    #         <note>
    #             <p>This unreferenced merge commit
    #         can only be accessed using the GetCommit API or through git commands such as git fetch. To retrieve this commit, you must specify its commit ID or otherwise reference it.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::CreateUnreferencedMergeCommitInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to create the unreferenced merge commit.</p>
    #
    # @option params [String] :source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    # @option params [String] :destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    # @option params [String] :merge_option
    #   <p>The merge option or strategy you want to use to merge the code.</p>
    #
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    # @option params [String] :author_name
    #   <p>The name of the author who created the unreferenced commit. This information is used
    #               as both the author and committer for the commit.</p>
    #
    # @option params [String] :email
    #   <p>The email address for the person who created the unreferenced commit.</p>
    #
    # @option params [String] :commit_message
    #   <p>The commit message for the unreferenced commit.</p>
    #
    # @option params [Boolean] :keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If this is specified as true, a .gitkeep file is
    #               created for empty folders. The default is false.</p>
    #
    # @option params [ConflictResolution] :conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    #
    # @return [Types::CreateUnreferencedMergeCommitOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_unreferenced_merge_commit(
    #     repository_name: 'repositoryName', # required
    #     source_commit_specifier: 'sourceCommitSpecifier', # required
    #     destination_commit_specifier: 'destinationCommitSpecifier', # required
    #     merge_option: 'FAST_FORWARD_MERGE', # required - accepts ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #     conflict_detail_level: 'FILE_LEVEL', # accepts ["FILE_LEVEL", "LINE_LEVEL"]
    #     conflict_resolution_strategy: 'NONE', # accepts ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #     author_name: 'authorName',
    #     email: 'email',
    #     commit_message: 'commitMessage',
    #     keep_empty_folders: false,
    #     conflict_resolution: {
    #       replace_contents: [
    #         {
    #           file_path: 'filePath', # required
    #           replacement_type: 'KEEP_BASE', # required - accepts ["KEEP_BASE", "KEEP_SOURCE", "KEEP_DESTINATION", "USE_NEW_CONTENT"]
    #           content: 'content',
    #           file_mode: 'EXECUTABLE' # accepts ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #         }
    #       ],
    #       delete_files: [
    #         {
    #           file_path: 'filePath' # required
    #         }
    #       ],
    #       set_file_modes: [
    #         {
    #           file_path: 'filePath', # required
    #           file_mode: 'EXECUTABLE' # required - accepts ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #         }
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUnreferencedMergeCommitOutput
    #   resp.data.commit_id #=> String
    #   resp.data.tree_id #=> String
    #
    def create_unreferenced_merge_commit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUnreferencedMergeCommitInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUnreferencedMergeCommitInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUnreferencedMergeCommit
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommitDoesNotExistException, Errors::CommitMessageLengthExceededException, Errors::CommitRequiredException, Errors::ConcurrentReferenceUpdateException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::FileContentSizeLimitExceededException, Errors::FileModeRequiredException, Errors::FolderContentSizeLimitExceededException, Errors::InvalidCommitException, Errors::InvalidConflictDetailLevelException, Errors::InvalidConflictResolutionException, Errors::InvalidConflictResolutionStrategyException, Errors::InvalidEmailException, Errors::InvalidFileModeException, Errors::InvalidMergeOptionException, Errors::InvalidPathException, Errors::InvalidReplacementContentException, Errors::InvalidReplacementTypeException, Errors::InvalidRepositoryNameException, Errors::ManualMergeRequiredException, Errors::MaximumConflictResolutionEntriesExceededException, Errors::MaximumFileContentToLoadExceededException, Errors::MaximumItemsToCompareExceededException, Errors::MergeOptionRequiredException, Errors::MultipleConflictResolutionEntriesException, Errors::NameLengthExceededException, Errors::PathRequiredException, Errors::ReplacementContentRequiredException, Errors::ReplacementTypeRequiredException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException, Errors::TipsDivergenceExceededException]),
        data_parser: Parsers::CreateUnreferencedMergeCommit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUnreferencedMergeCommit,
        stubs: @stubs,
        params_class: Params::CreateUnreferencedMergeCommitOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_unreferenced_merge_commit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specified approval rule template. Deleting a template does not remove approval rules on pull requests already created with the template.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteApprovalRuleTemplateInput}.
    #
    # @option params [String] :approval_rule_template_name
    #   <p>The name of the approval rule template to delete.</p>
    #
    # @return [Types::DeleteApprovalRuleTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_approval_rule_template(
    #     approval_rule_template_name: 'approvalRuleTemplateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteApprovalRuleTemplateOutput
    #   resp.data.approval_rule_template_id #=> String
    #
    def delete_approval_rule_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteApprovalRuleTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteApprovalRuleTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteApprovalRuleTemplate
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApprovalRuleTemplateInUseException, Errors::ApprovalRuleTemplateNameRequiredException, Errors::InvalidApprovalRuleTemplateNameException]),
        data_parser: Parsers::DeleteApprovalRuleTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteApprovalRuleTemplate,
        stubs: @stubs,
        params_class: Params::DeleteApprovalRuleTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_approval_rule_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a branch from a repository, unless that branch is the default branch for the repository. </p>
    #
    # @param [Hash] params
    #   See {Types::DeleteBranchInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the branch to be deleted.</p>
    #
    # @option params [String] :branch_name
    #   <p>The name of the branch to delete.</p>
    #
    # @return [Types::DeleteBranchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_branch(
    #     repository_name: 'repositoryName', # required
    #     branch_name: 'branchName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteBranchOutput
    #   resp.data.deleted_branch #=> Types::BranchInfo
    #   resp.data.deleted_branch.branch_name #=> String
    #   resp.data.deleted_branch.commit_id #=> String
    #
    def delete_branch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteBranchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteBranchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteBranch
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BranchNameRequiredException, Errors::DefaultBranchCannotBeDeletedException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidBranchNameException, Errors::InvalidRepositoryNameException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::DeleteBranch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteBranch,
        stubs: @stubs,
        params_class: Params::DeleteBranchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_branch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the content of a comment made on a change, file, or commit in a repository.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCommentContentInput}.
    #
    # @option params [String] :comment_id
    #   <p>The unique, system-generated ID of the comment. To get this ID, use  <a>GetCommentsForComparedCommit</a>
    #            or <a>GetCommentsForPullRequest</a>.</p>
    #
    # @return [Types::DeleteCommentContentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_comment_content(
    #     comment_id: 'commentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCommentContentOutput
    #   resp.data.comment #=> Types::Comment
    #   resp.data.comment.comment_id #=> String
    #   resp.data.comment.content #=> String
    #   resp.data.comment.in_reply_to #=> String
    #   resp.data.comment.creation_date #=> Time
    #   resp.data.comment.last_modified_date #=> Time
    #   resp.data.comment.author_arn #=> String
    #   resp.data.comment.deleted #=> Boolean
    #   resp.data.comment.client_request_token #=> String
    #   resp.data.comment.caller_reactions #=> Array<String>
    #   resp.data.comment.caller_reactions[0] #=> String
    #   resp.data.comment.reaction_counts #=> Hash<String, Integer>
    #   resp.data.comment.reaction_counts['key'] #=> Integer
    #
    def delete_comment_content(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCommentContentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCommentContentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCommentContent
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommentDeletedException, Errors::CommentDoesNotExistException, Errors::CommentIdRequiredException, Errors::InvalidCommentIdException]),
        data_parser: Parsers::DeleteCommentContent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCommentContent,
        stubs: @stubs,
        params_class: Params::DeleteCommentContentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_comment_content
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a specified file from a specified branch. A commit is created on the branch
    #             that contains the revision. The file still exists in the commits earlier to the commit
    #             that contains the deletion.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFileInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the file to delete.</p>
    #
    # @option params [String] :branch_name
    #   <p>The name of the branch where the commit that deletes the file is made.</p>
    #
    # @option params [String] :file_path
    #   <p>The fully qualified path to the file that to be deleted, including the full name and
    #               extension of that file. For example, /examples/file.md is a fully qualified path to a
    #               file named file.md in a folder named examples.</p>
    #
    # @option params [String] :parent_commit_id
    #   <p>The ID of the commit that is the tip of the branch where you want to create the commit
    #               that deletes the file. This must be the HEAD commit for the branch. The commit that
    #               deletes the file is created from this commit ID.</p>
    #
    # @option params [Boolean] :keep_empty_folders
    #   <p>If a file is the only object in the folder or directory, specifies whether to delete
    #               the folder or directory that contains the file. By default, empty folders are deleted.
    #               This includes empty folders that are part of the directory structure. For example, if
    #               the path to a file is dir1/dir2/dir3/dir4, and dir2 and dir3 are empty, deleting the
    #               last file in dir4 also deletes the empty folders dir4, dir3, and dir2.</p>
    #
    # @option params [String] :commit_message
    #   <p>The commit message you want to include as part of deleting the file. Commit messages
    #               are limited to 256 KB. If no message is specified, a default message is used.</p>
    #
    # @option params [String] :name
    #   <p>The name of the author of the commit that deletes the file. If no name is specified,
    #               the user's ARN is used as the author name and committer name.</p>
    #
    # @option params [String] :email
    #   <p>The email address for the commit that deletes the file. If no email address is
    #               specified, the email address is left blank.</p>
    #
    # @return [Types::DeleteFileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_file(
    #     repository_name: 'repositoryName', # required
    #     branch_name: 'branchName', # required
    #     file_path: 'filePath', # required
    #     parent_commit_id: 'parentCommitId', # required
    #     keep_empty_folders: false,
    #     commit_message: 'commitMessage',
    #     name: 'name',
    #     email: 'email'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFileOutput
    #   resp.data.commit_id #=> String
    #   resp.data.blob_id #=> String
    #   resp.data.tree_id #=> String
    #   resp.data.file_path #=> String
    #
    def delete_file(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFile
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BranchDoesNotExistException, Errors::BranchNameIsTagNameException, Errors::BranchNameRequiredException, Errors::CommitMessageLengthExceededException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::FileDoesNotExistException, Errors::InvalidBranchNameException, Errors::InvalidEmailException, Errors::InvalidParentCommitIdException, Errors::InvalidPathException, Errors::InvalidRepositoryNameException, Errors::NameLengthExceededException, Errors::ParentCommitDoesNotExistException, Errors::ParentCommitIdOutdatedException, Errors::ParentCommitIdRequiredException, Errors::PathRequiredException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::DeleteFile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFile,
        stubs: @stubs,
        params_class: Params::DeleteFileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_file
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes an approval rule from a specified pull request. Approval rules can be deleted from a pull request only if the pull request is open, and if the
    #             approval rule was created specifically for a pull request and not generated from an approval rule template associated with the repository where the
    #             pull request was created. You cannot delete an approval rule from a merged or closed pull request.</p>
    #
    # @param [Hash] params
    #   See {Types::DeletePullRequestApprovalRuleInput}.
    #
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request that contains the approval rule you want to delete.</p>
    #
    # @option params [String] :approval_rule_name
    #   <p>The name of the approval rule you want to delete.</p>
    #
    # @return [Types::DeletePullRequestApprovalRuleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_pull_request_approval_rule(
    #     pull_request_id: 'pullRequestId', # required
    #     approval_rule_name: 'approvalRuleName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeletePullRequestApprovalRuleOutput
    #   resp.data.approval_rule_id #=> String
    #
    def delete_pull_request_approval_rule(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeletePullRequestApprovalRuleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeletePullRequestApprovalRuleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeletePullRequestApprovalRule
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApprovalRuleNameRequiredException, Errors::CannotDeleteApprovalRuleFromTemplateException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidApprovalRuleNameException, Errors::InvalidPullRequestIdException, Errors::PullRequestAlreadyClosedException, Errors::PullRequestDoesNotExistException, Errors::PullRequestIdRequiredException]),
        data_parser: Parsers::DeletePullRequestApprovalRule
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeletePullRequestApprovalRule,
        stubs: @stubs,
        params_class: Params::DeletePullRequestApprovalRuleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_pull_request_approval_rule
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes a repository. If a specified repository was already deleted, a null repository
    #             ID is returned.</p>
    #         <important>
    #             <p>Deleting a repository also deletes all associated objects and metadata. After a repository is
    #                 deleted, all future push calls to the deleted repository fail.</p>
    #          </important>
    #
    # @param [Hash] params
    #   See {Types::DeleteRepositoryInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository to delete.</p>
    #
    # @return [Types::DeleteRepositoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_repository(
    #     repository_name: 'repositoryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteRepositoryOutput
    #   resp.data.repository_id #=> String
    #
    def delete_repository(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteRepositoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteRepositoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteRepository
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidRepositoryNameException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::DeleteRepository
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteRepository,
        stubs: @stubs,
        params_class: Params::DeleteRepositoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_repository
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about one or more merge conflicts in the attempted merge of two
    #             commit specifiers using the squash or three-way merge strategy. If the merge option for
    #             the attempted merge is specified as FAST_FORWARD_MERGE, an exception is thrown.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeMergeConflictsInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to get information about a merge conflict.</p>
    #
    # @option params [String] :destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    # @option params [String] :source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    # @option params [String] :merge_option
    #   <p>The merge option or strategy you want to use to merge the code.</p>
    #
    # @option params [Integer] :max_merge_hunks
    #   <p>The maximum number of merge hunks to include in the output.</p>
    #
    # @option params [String] :file_path
    #   <p>The path of the target files used to describe the conflicts. </p>
    #
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    # @return [Types::DescribeMergeConflictsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_merge_conflicts(
    #     repository_name: 'repositoryName', # required
    #     destination_commit_specifier: 'destinationCommitSpecifier', # required
    #     source_commit_specifier: 'sourceCommitSpecifier', # required
    #     merge_option: 'FAST_FORWARD_MERGE', # required - accepts ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #     max_merge_hunks: 1,
    #     file_path: 'filePath', # required
    #     conflict_detail_level: 'FILE_LEVEL', # accepts ["FILE_LEVEL", "LINE_LEVEL"]
    #     conflict_resolution_strategy: 'NONE', # accepts ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeMergeConflictsOutput
    #   resp.data.conflict_metadata #=> Types::ConflictMetadata
    #   resp.data.conflict_metadata.file_path #=> String
    #   resp.data.conflict_metadata.file_sizes #=> Types::FileSizes
    #   resp.data.conflict_metadata.file_sizes.source #=> Integer
    #   resp.data.conflict_metadata.file_sizes.destination #=> Integer
    #   resp.data.conflict_metadata.file_sizes.base #=> Integer
    #   resp.data.conflict_metadata.file_modes #=> Types::FileModes
    #   resp.data.conflict_metadata.file_modes.source #=> String, one of ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #   resp.data.conflict_metadata.file_modes.destination #=> String, one of ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #   resp.data.conflict_metadata.file_modes.base #=> String, one of ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #   resp.data.conflict_metadata.object_types #=> Types::ObjectTypes
    #   resp.data.conflict_metadata.object_types.source #=> String, one of ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"]
    #   resp.data.conflict_metadata.object_types.destination #=> String, one of ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"]
    #   resp.data.conflict_metadata.object_types.base #=> String, one of ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"]
    #   resp.data.conflict_metadata.number_of_conflicts #=> Integer
    #   resp.data.conflict_metadata.is_binary_file #=> Types::IsBinaryFile
    #   resp.data.conflict_metadata.is_binary_file.source #=> Boolean
    #   resp.data.conflict_metadata.is_binary_file.destination #=> Boolean
    #   resp.data.conflict_metadata.is_binary_file.base #=> Boolean
    #   resp.data.conflict_metadata.content_conflict #=> Boolean
    #   resp.data.conflict_metadata.file_mode_conflict #=> Boolean
    #   resp.data.conflict_metadata.object_type_conflict #=> Boolean
    #   resp.data.conflict_metadata.merge_operations #=> Types::MergeOperations
    #   resp.data.conflict_metadata.merge_operations.source #=> String, one of ["A", "M", "D"]
    #   resp.data.conflict_metadata.merge_operations.destination #=> String, one of ["A", "M", "D"]
    #   resp.data.merge_hunks #=> Array<MergeHunk>
    #   resp.data.merge_hunks[0] #=> Types::MergeHunk
    #   resp.data.merge_hunks[0].is_conflict #=> Boolean
    #   resp.data.merge_hunks[0].source #=> Types::MergeHunkDetail
    #   resp.data.merge_hunks[0].source.start_line #=> Integer
    #   resp.data.merge_hunks[0].source.end_line #=> Integer
    #   resp.data.merge_hunks[0].source.hunk_content #=> String
    #   resp.data.merge_hunks[0].destination #=> Types::MergeHunkDetail
    #   resp.data.merge_hunks[0].base #=> Types::MergeHunkDetail
    #   resp.data.next_token #=> String
    #   resp.data.destination_commit_id #=> String
    #   resp.data.source_commit_id #=> String
    #   resp.data.base_commit_id #=> String
    #
    def describe_merge_conflicts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeMergeConflictsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeMergeConflictsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeMergeConflicts
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommitDoesNotExistException, Errors::CommitRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::FileDoesNotExistException, Errors::InvalidCommitException, Errors::InvalidConflictDetailLevelException, Errors::InvalidConflictResolutionStrategyException, Errors::InvalidContinuationTokenException, Errors::InvalidMaxMergeHunksException, Errors::InvalidMergeOptionException, Errors::InvalidPathException, Errors::InvalidRepositoryNameException, Errors::MaximumFileContentToLoadExceededException, Errors::MaximumItemsToCompareExceededException, Errors::MergeOptionRequiredException, Errors::PathRequiredException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException, Errors::TipsDivergenceExceededException]),
        data_parser: Parsers::DescribeMergeConflicts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeMergeConflicts,
        stubs: @stubs,
        params_class: Params::DescribeMergeConflictsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_merge_conflicts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about one or more pull request events.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribePullRequestEventsInput}.
    #
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    # @option params [String] :pull_request_event_type
    #   <p>Optional. The pull request event type about which you want to return information.</p>
    #
    # @option params [String] :actor_arn
    #   <p>The Amazon Resource Name (ARN) of the user whose actions resulted in the event.
    #               Examples include updating the pull request with more commits or changing the status of a
    #               pull request.</p>
    #
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.
    #               The default is 100 events, which is also the maximum number of events that can be returned in a result.</p>
    #
    # @return [Types::DescribePullRequestEventsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_pull_request_events(
    #     pull_request_id: 'pullRequestId', # required
    #     pull_request_event_type: 'PULL_REQUEST_CREATED', # accepts ["PULL_REQUEST_CREATED", "PULL_REQUEST_STATUS_CHANGED", "PULL_REQUEST_SOURCE_REFERENCE_UPDATED", "PULL_REQUEST_MERGE_STATE_CHANGED", "PULL_REQUEST_APPROVAL_RULE_CREATED", "PULL_REQUEST_APPROVAL_RULE_UPDATED", "PULL_REQUEST_APPROVAL_RULE_DELETED", "PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN", "PULL_REQUEST_APPROVAL_STATE_CHANGED"]
    #     actor_arn: 'actorArn',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribePullRequestEventsOutput
    #   resp.data.pull_request_events #=> Array<PullRequestEvent>
    #   resp.data.pull_request_events[0] #=> Types::PullRequestEvent
    #   resp.data.pull_request_events[0].pull_request_id #=> String
    #   resp.data.pull_request_events[0].event_date #=> Time
    #   resp.data.pull_request_events[0].pull_request_event_type #=> String, one of ["PULL_REQUEST_CREATED", "PULL_REQUEST_STATUS_CHANGED", "PULL_REQUEST_SOURCE_REFERENCE_UPDATED", "PULL_REQUEST_MERGE_STATE_CHANGED", "PULL_REQUEST_APPROVAL_RULE_CREATED", "PULL_REQUEST_APPROVAL_RULE_UPDATED", "PULL_REQUEST_APPROVAL_RULE_DELETED", "PULL_REQUEST_APPROVAL_RULE_OVERRIDDEN", "PULL_REQUEST_APPROVAL_STATE_CHANGED"]
    #   resp.data.pull_request_events[0].actor_arn #=> String
    #   resp.data.pull_request_events[0].pull_request_created_event_metadata #=> Types::PullRequestCreatedEventMetadata
    #   resp.data.pull_request_events[0].pull_request_created_event_metadata.repository_name #=> String
    #   resp.data.pull_request_events[0].pull_request_created_event_metadata.source_commit_id #=> String
    #   resp.data.pull_request_events[0].pull_request_created_event_metadata.destination_commit_id #=> String
    #   resp.data.pull_request_events[0].pull_request_created_event_metadata.merge_base #=> String
    #   resp.data.pull_request_events[0].pull_request_status_changed_event_metadata #=> Types::PullRequestStatusChangedEventMetadata
    #   resp.data.pull_request_events[0].pull_request_status_changed_event_metadata.pull_request_status #=> String, one of ["OPEN", "CLOSED"]
    #   resp.data.pull_request_events[0].pull_request_source_reference_updated_event_metadata #=> Types::PullRequestSourceReferenceUpdatedEventMetadata
    #   resp.data.pull_request_events[0].pull_request_source_reference_updated_event_metadata.repository_name #=> String
    #   resp.data.pull_request_events[0].pull_request_source_reference_updated_event_metadata.before_commit_id #=> String
    #   resp.data.pull_request_events[0].pull_request_source_reference_updated_event_metadata.after_commit_id #=> String
    #   resp.data.pull_request_events[0].pull_request_source_reference_updated_event_metadata.merge_base #=> String
    #   resp.data.pull_request_events[0].pull_request_merged_state_changed_event_metadata #=> Types::PullRequestMergedStateChangedEventMetadata
    #   resp.data.pull_request_events[0].pull_request_merged_state_changed_event_metadata.repository_name #=> String
    #   resp.data.pull_request_events[0].pull_request_merged_state_changed_event_metadata.destination_reference #=> String
    #   resp.data.pull_request_events[0].pull_request_merged_state_changed_event_metadata.merge_metadata #=> Types::MergeMetadata
    #   resp.data.pull_request_events[0].pull_request_merged_state_changed_event_metadata.merge_metadata.is_merged #=> Boolean
    #   resp.data.pull_request_events[0].pull_request_merged_state_changed_event_metadata.merge_metadata.merged_by #=> String
    #   resp.data.pull_request_events[0].pull_request_merged_state_changed_event_metadata.merge_metadata.merge_commit_id #=> String
    #   resp.data.pull_request_events[0].pull_request_merged_state_changed_event_metadata.merge_metadata.merge_option #=> String, one of ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #   resp.data.pull_request_events[0].approval_rule_event_metadata #=> Types::ApprovalRuleEventMetadata
    #   resp.data.pull_request_events[0].approval_rule_event_metadata.approval_rule_name #=> String
    #   resp.data.pull_request_events[0].approval_rule_event_metadata.approval_rule_id #=> String
    #   resp.data.pull_request_events[0].approval_rule_event_metadata.approval_rule_content #=> String
    #   resp.data.pull_request_events[0].approval_state_changed_event_metadata #=> Types::ApprovalStateChangedEventMetadata
    #   resp.data.pull_request_events[0].approval_state_changed_event_metadata.revision_id #=> String
    #   resp.data.pull_request_events[0].approval_state_changed_event_metadata.approval_status #=> String, one of ["APPROVE", "REVOKE"]
    #   resp.data.pull_request_events[0].approval_rule_overridden_event_metadata #=> Types::ApprovalRuleOverriddenEventMetadata
    #   resp.data.pull_request_events[0].approval_rule_overridden_event_metadata.revision_id #=> String
    #   resp.data.pull_request_events[0].approval_rule_overridden_event_metadata.override_status #=> String, one of ["OVERRIDE", "REVOKE"]
    #   resp.data.next_token #=> String
    #
    def describe_pull_request_events(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribePullRequestEventsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribePullRequestEventsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribePullRequestEvents
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ActorDoesNotExistException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidActorArnException, Errors::InvalidContinuationTokenException, Errors::InvalidMaxResultsException, Errors::InvalidPullRequestEventTypeException, Errors::InvalidPullRequestIdException, Errors::PullRequestDoesNotExistException, Errors::PullRequestIdRequiredException]),
        data_parser: Parsers::DescribePullRequestEvents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribePullRequestEvents,
        stubs: @stubs,
        params_class: Params::DescribePullRequestEventsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_pull_request_events
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the association between a template and a repository so that approval rules
    #             based on the template are not automatically created when pull requests are created in
    #             the specified repository. This does not delete any approval rules previously created for
    #             pull requests through the template association.</p>
    #
    # @param [Hash] params
    #   See {Types::DisassociateApprovalRuleTemplateFromRepositoryInput}.
    #
    # @option params [String] :approval_rule_template_name
    #   <p>The name of the approval rule template to disassociate from a specified repository.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository you want to disassociate from the template.</p>
    #
    # @return [Types::DisassociateApprovalRuleTemplateFromRepositoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.disassociate_approval_rule_template_from_repository(
    #     approval_rule_template_name: 'approvalRuleTemplateName', # required
    #     repository_name: 'repositoryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DisassociateApprovalRuleTemplateFromRepositoryOutput
    #
    def disassociate_approval_rule_template_from_repository(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DisassociateApprovalRuleTemplateFromRepositoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DisassociateApprovalRuleTemplateFromRepositoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DisassociateApprovalRuleTemplateFromRepository
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApprovalRuleTemplateDoesNotExistException, Errors::ApprovalRuleTemplateNameRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidApprovalRuleTemplateNameException, Errors::InvalidRepositoryNameException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::DisassociateApprovalRuleTemplateFromRepository
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DisassociateApprovalRuleTemplateFromRepository,
        stubs: @stubs,
        params_class: Params::DisassociateApprovalRuleTemplateFromRepositoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :disassociate_approval_rule_template_from_repository
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Evaluates whether a pull request has met all the conditions specified in its associated approval rules.</p>
    #
    # @param [Hash] params
    #   See {Types::EvaluatePullRequestApprovalRulesInput}.
    #
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request you want to evaluate.</p>
    #
    # @option params [String] :revision_id
    #   <p>The system-generated ID for the pull request revision. To retrieve the most recent
    #               revision ID for a pull request, use
    #               <a>GetPullRequest</a>.</p>
    #
    # @return [Types::EvaluatePullRequestApprovalRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.evaluate_pull_request_approval_rules(
    #     pull_request_id: 'pullRequestId', # required
    #     revision_id: 'revisionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::EvaluatePullRequestApprovalRulesOutput
    #   resp.data.evaluation #=> Types::Evaluation
    #   resp.data.evaluation.approved #=> Boolean
    #   resp.data.evaluation.overridden #=> Boolean
    #   resp.data.evaluation.approval_rules_satisfied #=> Array<String>
    #   resp.data.evaluation.approval_rules_satisfied[0] #=> String
    #   resp.data.evaluation.approval_rules_not_satisfied #=> Array<String>
    #   resp.data.evaluation.approval_rules_not_satisfied[0] #=> String
    #
    def evaluate_pull_request_approval_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::EvaluatePullRequestApprovalRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::EvaluatePullRequestApprovalRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::EvaluatePullRequestApprovalRules
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidPullRequestIdException, Errors::InvalidRevisionIdException, Errors::PullRequestDoesNotExistException, Errors::PullRequestIdRequiredException, Errors::RevisionIdRequiredException, Errors::RevisionNotCurrentException]),
        data_parser: Parsers::EvaluatePullRequestApprovalRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::EvaluatePullRequestApprovalRules,
        stubs: @stubs,
        params_class: Params::EvaluatePullRequestApprovalRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :evaluate_pull_request_approval_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a specified approval rule template.</p>
    #
    # @param [Hash] params
    #   See {Types::GetApprovalRuleTemplateInput}.
    #
    # @option params [String] :approval_rule_template_name
    #   <p>The name of the approval rule template for which you want to get information.</p>
    #
    # @return [Types::GetApprovalRuleTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_approval_rule_template(
    #     approval_rule_template_name: 'approvalRuleTemplateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetApprovalRuleTemplateOutput
    #   resp.data.approval_rule_template #=> Types::ApprovalRuleTemplate
    #   resp.data.approval_rule_template.approval_rule_template_id #=> String
    #   resp.data.approval_rule_template.approval_rule_template_name #=> String
    #   resp.data.approval_rule_template.approval_rule_template_description #=> String
    #   resp.data.approval_rule_template.approval_rule_template_content #=> String
    #   resp.data.approval_rule_template.rule_content_sha256 #=> String
    #   resp.data.approval_rule_template.last_modified_date #=> Time
    #   resp.data.approval_rule_template.creation_date #=> Time
    #   resp.data.approval_rule_template.last_modified_user #=> String
    #
    def get_approval_rule_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetApprovalRuleTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetApprovalRuleTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetApprovalRuleTemplate
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApprovalRuleTemplateDoesNotExistException, Errors::ApprovalRuleTemplateNameRequiredException, Errors::InvalidApprovalRuleTemplateNameException]),
        data_parser: Parsers::GetApprovalRuleTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetApprovalRuleTemplate,
        stubs: @stubs,
        params_class: Params::GetApprovalRuleTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_approval_rule_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the base-64 encoded content of an individual blob in a repository.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBlobInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the blob.</p>
    #
    # @option params [String] :blob_id
    #   <p>The ID of the blob, which is its SHA-1 pointer.</p>
    #
    # @return [Types::GetBlobOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_blob(
    #     repository_name: 'repositoryName', # required
    #     blob_id: 'blobId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBlobOutput
    #   resp.data.content #=> String
    #
    def get_blob(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBlobInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBlobInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBlob
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BlobIdDoesNotExistException, Errors::BlobIdRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::FileTooLargeException, Errors::InvalidBlobIdException, Errors::InvalidRepositoryNameException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::GetBlob
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBlob,
        stubs: @stubs,
        params_class: Params::GetBlobOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_blob
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a repository branch, including its name and the last commit ID.</p>
    #
    # @param [Hash] params
    #   See {Types::GetBranchInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the branch for which you want to retrieve information.</p>
    #
    # @option params [String] :branch_name
    #   <p>The name of the branch for which you want to retrieve information.</p>
    #
    # @return [Types::GetBranchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_branch(
    #     repository_name: 'repositoryName',
    #     branch_name: 'branchName'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetBranchOutput
    #   resp.data.branch #=> Types::BranchInfo
    #   resp.data.branch.branch_name #=> String
    #   resp.data.branch.commit_id #=> String
    #
    def get_branch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetBranchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetBranchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetBranch
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BranchDoesNotExistException, Errors::BranchNameRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidBranchNameException, Errors::InvalidRepositoryNameException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::GetBranch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetBranch,
        stubs: @stubs,
        params_class: Params::GetBranchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_branch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the content of a comment made on a change, file, or commit in a repository. </p>
    #             <note>
    #             <p>Reaction counts might include numbers from user identities who were deleted after the reaction was made. For a count of
    #         reactions from active identities, use GetCommentReactions.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetCommentInput}.
    #
    # @option params [String] :comment_id
    #   <p>The unique, system-generated ID of the comment. To get this ID, use  <a>GetCommentsForComparedCommit</a>
    #               or <a>GetCommentsForPullRequest</a>.</p>
    #
    # @return [Types::GetCommentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_comment(
    #     comment_id: 'commentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCommentOutput
    #   resp.data.comment #=> Types::Comment
    #   resp.data.comment.comment_id #=> String
    #   resp.data.comment.content #=> String
    #   resp.data.comment.in_reply_to #=> String
    #   resp.data.comment.creation_date #=> Time
    #   resp.data.comment.last_modified_date #=> Time
    #   resp.data.comment.author_arn #=> String
    #   resp.data.comment.deleted #=> Boolean
    #   resp.data.comment.client_request_token #=> String
    #   resp.data.comment.caller_reactions #=> Array<String>
    #   resp.data.comment.caller_reactions[0] #=> String
    #   resp.data.comment.reaction_counts #=> Hash<String, Integer>
    #   resp.data.comment.reaction_counts['key'] #=> Integer
    #
    def get_comment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCommentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCommentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetComment
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommentDeletedException, Errors::CommentDoesNotExistException, Errors::CommentIdRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidCommentIdException]),
        data_parser: Parsers::GetComment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetComment,
        stubs: @stubs,
        params_class: Params::GetCommentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_comment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about reactions to a specified comment ID. Reactions from users who have been deleted will not be included in the count.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCommentReactionsInput}.
    #
    # @option params [String] :comment_id
    #   <p>The ID of the comment for which you want to get reactions information.</p>
    #
    # @option params [String] :reaction_user_arn
    #   <p>Optional. The Amazon Resource Name (ARN) of the user or identity for which you want to get reaction information.</p>
    #
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.  The default is the same as the allowed maximum, 1,000.</p>
    #
    # @return [Types::GetCommentReactionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_comment_reactions(
    #     comment_id: 'commentId', # required
    #     reaction_user_arn: 'reactionUserArn',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCommentReactionsOutput
    #   resp.data.reactions_for_comment #=> Array<ReactionForComment>
    #   resp.data.reactions_for_comment[0] #=> Types::ReactionForComment
    #   resp.data.reactions_for_comment[0].reaction #=> Types::ReactionValueFormats
    #   resp.data.reactions_for_comment[0].reaction.emoji #=> String
    #   resp.data.reactions_for_comment[0].reaction.short_code #=> String
    #   resp.data.reactions_for_comment[0].reaction.unicode #=> String
    #   resp.data.reactions_for_comment[0].reaction_users #=> Array<String>
    #   resp.data.reactions_for_comment[0].reaction_users[0] #=> String
    #   resp.data.reactions_for_comment[0].reactions_from_deleted_users_count #=> Integer
    #   resp.data.next_token #=> String
    #
    def get_comment_reactions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCommentReactionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCommentReactionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCommentReactions
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommentDeletedException, Errors::CommentDoesNotExistException, Errors::CommentIdRequiredException, Errors::InvalidCommentIdException, Errors::InvalidContinuationTokenException, Errors::InvalidMaxResultsException, Errors::InvalidReactionUserArnException]),
        data_parser: Parsers::GetCommentReactions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCommentReactions,
        stubs: @stubs,
        params_class: Params::GetCommentReactionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_comment_reactions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about comments made on the comparison between two commits.</p>
    #         <note>
    #             <p>Reaction counts might include numbers from user identities who were deleted after the reaction was made. For a count of
    #             reactions from active identities, use GetCommentReactions.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetCommentsForComparedCommitInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to compare commits.</p>
    #
    # @option params [String] :before_commit_id
    #   <p>To establish the directionality of the comparison, the full commit ID of the before
    #               commit.</p>
    #
    # @option params [String] :after_commit_id
    #   <p>To establish the directionality of the comparison, the full commit ID of the after
    #               commit.</p>
    #
    # @option params [String] :next_token
    #   <p>An enumeration token that when provided in a request, returns the next batch of the results. </p>
    #
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results. The
    #               default is 100 comments, but you can configure up to 500.</p>
    #
    # @return [Types::GetCommentsForComparedCommitOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_comments_for_compared_commit(
    #     repository_name: 'repositoryName', # required
    #     before_commit_id: 'beforeCommitId',
    #     after_commit_id: 'afterCommitId', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCommentsForComparedCommitOutput
    #   resp.data.comments_for_compared_commit_data #=> Array<CommentsForComparedCommit>
    #   resp.data.comments_for_compared_commit_data[0] #=> Types::CommentsForComparedCommit
    #   resp.data.comments_for_compared_commit_data[0].repository_name #=> String
    #   resp.data.comments_for_compared_commit_data[0].before_commit_id #=> String
    #   resp.data.comments_for_compared_commit_data[0].after_commit_id #=> String
    #   resp.data.comments_for_compared_commit_data[0].before_blob_id #=> String
    #   resp.data.comments_for_compared_commit_data[0].after_blob_id #=> String
    #   resp.data.comments_for_compared_commit_data[0].location #=> Types::Location
    #   resp.data.comments_for_compared_commit_data[0].location.file_path #=> String
    #   resp.data.comments_for_compared_commit_data[0].location.file_position #=> Integer
    #   resp.data.comments_for_compared_commit_data[0].location.relative_file_version #=> String, one of ["BEFORE", "AFTER"]
    #   resp.data.comments_for_compared_commit_data[0].comments #=> Array<Comment>
    #   resp.data.comments_for_compared_commit_data[0].comments[0] #=> Types::Comment
    #   resp.data.comments_for_compared_commit_data[0].comments[0].comment_id #=> String
    #   resp.data.comments_for_compared_commit_data[0].comments[0].content #=> String
    #   resp.data.comments_for_compared_commit_data[0].comments[0].in_reply_to #=> String
    #   resp.data.comments_for_compared_commit_data[0].comments[0].creation_date #=> Time
    #   resp.data.comments_for_compared_commit_data[0].comments[0].last_modified_date #=> Time
    #   resp.data.comments_for_compared_commit_data[0].comments[0].author_arn #=> String
    #   resp.data.comments_for_compared_commit_data[0].comments[0].deleted #=> Boolean
    #   resp.data.comments_for_compared_commit_data[0].comments[0].client_request_token #=> String
    #   resp.data.comments_for_compared_commit_data[0].comments[0].caller_reactions #=> Array<String>
    #   resp.data.comments_for_compared_commit_data[0].comments[0].caller_reactions[0] #=> String
    #   resp.data.comments_for_compared_commit_data[0].comments[0].reaction_counts #=> Hash<String, Integer>
    #   resp.data.comments_for_compared_commit_data[0].comments[0].reaction_counts['key'] #=> Integer
    #   resp.data.next_token #=> String
    #
    def get_comments_for_compared_commit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCommentsForComparedCommitInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCommentsForComparedCommitInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCommentsForComparedCommit
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommitDoesNotExistException, Errors::CommitIdRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidCommitIdException, Errors::InvalidContinuationTokenException, Errors::InvalidMaxResultsException, Errors::InvalidRepositoryNameException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::GetCommentsForComparedCommit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCommentsForComparedCommit,
        stubs: @stubs,
        params_class: Params::GetCommentsForComparedCommitOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_comments_for_compared_commit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns comments made on a pull request.</p>
    #         <note>
    #             <p>Reaction counts might include numbers from user identities who were deleted after the reaction was made. For a count of
    #             reactions from active identities, use GetCommentReactions.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetCommentsForPullRequestInput}.
    #
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the pull request.</p>
    #
    # @option params [String] :before_commit_id
    #   <p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.</p>
    #
    # @option params [String] :after_commit_id
    #   <p>The full commit ID of the commit in the source branch that was the tip of the branch at the time the comment was made.</p>
    #
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results. The default is 100 comments.
    #               You can return up to 500 comments with a single request.</p>
    #
    # @return [Types::GetCommentsForPullRequestOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_comments_for_pull_request(
    #     pull_request_id: 'pullRequestId', # required
    #     repository_name: 'repositoryName',
    #     before_commit_id: 'beforeCommitId',
    #     after_commit_id: 'afterCommitId',
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCommentsForPullRequestOutput
    #   resp.data.comments_for_pull_request_data #=> Array<CommentsForPullRequest>
    #   resp.data.comments_for_pull_request_data[0] #=> Types::CommentsForPullRequest
    #   resp.data.comments_for_pull_request_data[0].pull_request_id #=> String
    #   resp.data.comments_for_pull_request_data[0].repository_name #=> String
    #   resp.data.comments_for_pull_request_data[0].before_commit_id #=> String
    #   resp.data.comments_for_pull_request_data[0].after_commit_id #=> String
    #   resp.data.comments_for_pull_request_data[0].before_blob_id #=> String
    #   resp.data.comments_for_pull_request_data[0].after_blob_id #=> String
    #   resp.data.comments_for_pull_request_data[0].location #=> Types::Location
    #   resp.data.comments_for_pull_request_data[0].location.file_path #=> String
    #   resp.data.comments_for_pull_request_data[0].location.file_position #=> Integer
    #   resp.data.comments_for_pull_request_data[0].location.relative_file_version #=> String, one of ["BEFORE", "AFTER"]
    #   resp.data.comments_for_pull_request_data[0].comments #=> Array<Comment>
    #   resp.data.comments_for_pull_request_data[0].comments[0] #=> Types::Comment
    #   resp.data.comments_for_pull_request_data[0].comments[0].comment_id #=> String
    #   resp.data.comments_for_pull_request_data[0].comments[0].content #=> String
    #   resp.data.comments_for_pull_request_data[0].comments[0].in_reply_to #=> String
    #   resp.data.comments_for_pull_request_data[0].comments[0].creation_date #=> Time
    #   resp.data.comments_for_pull_request_data[0].comments[0].last_modified_date #=> Time
    #   resp.data.comments_for_pull_request_data[0].comments[0].author_arn #=> String
    #   resp.data.comments_for_pull_request_data[0].comments[0].deleted #=> Boolean
    #   resp.data.comments_for_pull_request_data[0].comments[0].client_request_token #=> String
    #   resp.data.comments_for_pull_request_data[0].comments[0].caller_reactions #=> Array<String>
    #   resp.data.comments_for_pull_request_data[0].comments[0].caller_reactions[0] #=> String
    #   resp.data.comments_for_pull_request_data[0].comments[0].reaction_counts #=> Hash<String, Integer>
    #   resp.data.comments_for_pull_request_data[0].comments[0].reaction_counts['key'] #=> Integer
    #   resp.data.next_token #=> String
    #
    def get_comments_for_pull_request(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCommentsForPullRequestInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCommentsForPullRequestInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCommentsForPullRequest
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommitDoesNotExistException, Errors::CommitIdRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidCommitIdException, Errors::InvalidContinuationTokenException, Errors::InvalidMaxResultsException, Errors::InvalidPullRequestIdException, Errors::InvalidRepositoryNameException, Errors::PullRequestDoesNotExistException, Errors::PullRequestIdRequiredException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException, Errors::RepositoryNotAssociatedWithPullRequestException]),
        data_parser: Parsers::GetCommentsForPullRequest
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCommentsForPullRequest,
        stubs: @stubs,
        params_class: Params::GetCommentsForPullRequestOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_comments_for_pull_request
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a commit, including commit message and committer information.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCommitInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository to which the commit was made.</p>
    #
    # @option params [String] :commit_id
    #   <p>The commit ID. Commit IDs are the full SHA ID of the commit.</p>
    #
    # @return [Types::GetCommitOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_commit(
    #     repository_name: 'repositoryName', # required
    #     commit_id: 'commitId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCommitOutput
    #   resp.data.commit #=> Types::Commit
    #   resp.data.commit.commit_id #=> String
    #   resp.data.commit.tree_id #=> String
    #   resp.data.commit.parents #=> Array<String>
    #   resp.data.commit.parents[0] #=> String
    #   resp.data.commit.message #=> String
    #   resp.data.commit.author #=> Types::UserInfo
    #   resp.data.commit.author.name #=> String
    #   resp.data.commit.author.email #=> String
    #   resp.data.commit.author.date #=> String
    #   resp.data.commit.committer #=> Types::UserInfo
    #   resp.data.commit.additional_data #=> String
    #
    def get_commit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCommitInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCommitInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCommit
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommitIdDoesNotExistException, Errors::CommitIdRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidCommitIdException, Errors::InvalidRepositoryNameException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::GetCommit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCommit,
        stubs: @stubs,
        params_class: Params::GetCommitOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_commit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the differences in a valid commit specifier (such as a
    #             branch, tag, HEAD, commit ID, or other fully qualified reference). Results can be
    #             limited to a specified path.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDifferencesInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to get differences.</p>
    #
    # @option params [String] :before_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, the full commit ID). Optional. If not specified, all changes before the
    #                   <code>afterCommitSpecifier</code> value are shown. If you do not use
    #                   <code>beforeCommitSpecifier</code> in your request, consider limiting the results
    #               with <code>maxResults</code>.</p>
    #
    # @option params [String] :after_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit.</p>
    #
    # @option params [String] :before_path
    #   <p>The file path in which to check for differences. Limits the results to this path. Can
    #               also be used to specify the previous name of a directory or folder. If
    #                   <code>beforePath</code> and <code>afterPath</code> are not specified, differences
    #               are shown for all paths.</p>
    #
    # @option params [String] :after_path
    #   <p>The file path in which to check differences. Limits the results to this path. Can also
    #               be used to specify the changed name of a directory or folder, if it has changed. If not
    #               specified, differences are shown for all paths.</p>
    #
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    #
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    # @return [Types::GetDifferencesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_differences(
    #     repository_name: 'repositoryName', # required
    #     before_commit_specifier: 'beforeCommitSpecifier',
    #     after_commit_specifier: 'afterCommitSpecifier', # required
    #     before_path: 'beforePath',
    #     after_path: 'afterPath',
    #     max_results: 1,
    #     next_token: 'NextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDifferencesOutput
    #   resp.data.differences #=> Array<Difference>
    #   resp.data.differences[0] #=> Types::Difference
    #   resp.data.differences[0].before_blob #=> Types::BlobMetadata
    #   resp.data.differences[0].before_blob.blob_id #=> String
    #   resp.data.differences[0].before_blob.path #=> String
    #   resp.data.differences[0].before_blob.mode #=> String
    #   resp.data.differences[0].after_blob #=> Types::BlobMetadata
    #   resp.data.differences[0].change_type #=> String, one of ["A", "M", "D"]
    #   resp.data.next_token #=> String
    #
    def get_differences(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDifferencesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDifferencesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDifferences
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommitDoesNotExistException, Errors::CommitRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidCommitException, Errors::InvalidCommitIdException, Errors::InvalidContinuationTokenException, Errors::InvalidMaxResultsException, Errors::InvalidPathException, Errors::InvalidRepositoryNameException, Errors::PathDoesNotExistException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::GetDifferences
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDifferences,
        stubs: @stubs,
        params_class: Params::GetDifferencesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_differences
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the base-64 encoded contents of a specified file and its metadata.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFileInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the file.</p>
    #
    # @option params [String] :commit_specifier
    #   <p>The fully quaified reference that identifies the commit that contains the file. For
    #               example, you can specify a full commit ID, a tag, a branch name, or a reference such as
    #               refs/heads/master. If none is provided, the head commit is used.</p>
    #
    # @option params [String] :file_path
    #   <p>The fully qualified path to the file, including the full name and extension of the
    #               file. For example, /examples/file.md is the fully qualified path to a file named file.md
    #               in a folder named examples.</p>
    #
    # @return [Types::GetFileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_file(
    #     repository_name: 'repositoryName', # required
    #     commit_specifier: 'commitSpecifier',
    #     file_path: 'filePath' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFileOutput
    #   resp.data.commit_id #=> String
    #   resp.data.blob_id #=> String
    #   resp.data.file_path #=> String
    #   resp.data.file_mode #=> String, one of ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #   resp.data.file_size #=> Integer
    #   resp.data.file_content #=> String
    #
    def get_file(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFile
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommitDoesNotExistException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::FileDoesNotExistException, Errors::FileTooLargeException, Errors::InvalidCommitException, Errors::InvalidPathException, Errors::InvalidRepositoryNameException, Errors::PathRequiredException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::GetFile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFile,
        stubs: @stubs,
        params_class: Params::GetFileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_file
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns the contents of a specified folder in a repository.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFolderInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository.</p>
    #
    # @option params [String] :commit_specifier
    #   <p>A fully qualified reference used to identify a commit that contains the version of the
    #               folder's content to return. A fully qualified reference can be a commit ID, branch name,
    #               tag, or reference such as HEAD. If no specifier is provided, the folder content is
    #               returned as it exists in the HEAD commit.</p>
    #
    # @option params [String] :folder_path
    #   <p>The fully qualified path to the folder whose contents are returned, including the
    #               folder name. For example, /examples is a fully-qualified path to a folder named examples
    #               that was created off of the root directory (/) of a repository. </p>
    #
    # @return [Types::GetFolderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_folder(
    #     repository_name: 'repositoryName', # required
    #     commit_specifier: 'commitSpecifier',
    #     folder_path: 'folderPath' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFolderOutput
    #   resp.data.commit_id #=> String
    #   resp.data.folder_path #=> String
    #   resp.data.tree_id #=> String
    #   resp.data.sub_folders #=> Array<Folder>
    #   resp.data.sub_folders[0] #=> Types::Folder
    #   resp.data.sub_folders[0].tree_id #=> String
    #   resp.data.sub_folders[0].absolute_path #=> String
    #   resp.data.sub_folders[0].relative_path #=> String
    #   resp.data.files #=> Array<File>
    #   resp.data.files[0] #=> Types::File
    #   resp.data.files[0].blob_id #=> String
    #   resp.data.files[0].absolute_path #=> String
    #   resp.data.files[0].relative_path #=> String
    #   resp.data.files[0].file_mode #=> String, one of ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #   resp.data.symbolic_links #=> Array<SymbolicLink>
    #   resp.data.symbolic_links[0] #=> Types::SymbolicLink
    #   resp.data.symbolic_links[0].blob_id #=> String
    #   resp.data.symbolic_links[0].absolute_path #=> String
    #   resp.data.symbolic_links[0].relative_path #=> String
    #   resp.data.symbolic_links[0].file_mode #=> String, one of ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #   resp.data.sub_modules #=> Array<SubModule>
    #   resp.data.sub_modules[0] #=> Types::SubModule
    #   resp.data.sub_modules[0].commit_id #=> String
    #   resp.data.sub_modules[0].absolute_path #=> String
    #   resp.data.sub_modules[0].relative_path #=> String
    #
    def get_folder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFolderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFolderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFolder
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommitDoesNotExistException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::FolderDoesNotExistException, Errors::InvalidCommitException, Errors::InvalidPathException, Errors::InvalidRepositoryNameException, Errors::PathRequiredException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::GetFolder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFolder,
        stubs: @stubs,
        params_class: Params::GetFolderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_folder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a specified merge commit.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMergeCommitInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the merge commit about which you want to get information.</p>
    #
    # @option params [String] :source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    # @option params [String] :destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    # @return [Types::GetMergeCommitOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_merge_commit(
    #     repository_name: 'repositoryName', # required
    #     source_commit_specifier: 'sourceCommitSpecifier', # required
    #     destination_commit_specifier: 'destinationCommitSpecifier', # required
    #     conflict_detail_level: 'FILE_LEVEL', # accepts ["FILE_LEVEL", "LINE_LEVEL"]
    #     conflict_resolution_strategy: 'NONE' # accepts ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMergeCommitOutput
    #   resp.data.source_commit_id #=> String
    #   resp.data.destination_commit_id #=> String
    #   resp.data.base_commit_id #=> String
    #   resp.data.merged_commit_id #=> String
    #
    def get_merge_commit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMergeCommitInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMergeCommitInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMergeCommit
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommitDoesNotExistException, Errors::CommitRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidCommitException, Errors::InvalidConflictDetailLevelException, Errors::InvalidConflictResolutionStrategyException, Errors::InvalidRepositoryNameException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::GetMergeCommit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMergeCommit,
        stubs: @stubs,
        params_class: Params::GetMergeCommitOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_merge_commit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about merge conflicts between the before and after commit IDs for a pull request in a repository.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMergeConflictsInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    #
    # @option params [String] :destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    # @option params [String] :source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    # @option params [String] :merge_option
    #   <p>The merge option or strategy you want to use to merge the code.  </p>
    #
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    # @option params [Integer] :max_conflict_files
    #   <p>The maximum number of files to include in the output.</p>
    #
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    # @return [Types::GetMergeConflictsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_merge_conflicts(
    #     repository_name: 'repositoryName', # required
    #     destination_commit_specifier: 'destinationCommitSpecifier', # required
    #     source_commit_specifier: 'sourceCommitSpecifier', # required
    #     merge_option: 'FAST_FORWARD_MERGE', # required - accepts ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #     conflict_detail_level: 'FILE_LEVEL', # accepts ["FILE_LEVEL", "LINE_LEVEL"]
    #     max_conflict_files: 1,
    #     conflict_resolution_strategy: 'NONE', # accepts ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMergeConflictsOutput
    #   resp.data.mergeable #=> Boolean
    #   resp.data.destination_commit_id #=> String
    #   resp.data.source_commit_id #=> String
    #   resp.data.base_commit_id #=> String
    #   resp.data.conflict_metadata_list #=> Array<ConflictMetadata>
    #   resp.data.conflict_metadata_list[0] #=> Types::ConflictMetadata
    #   resp.data.conflict_metadata_list[0].file_path #=> String
    #   resp.data.conflict_metadata_list[0].file_sizes #=> Types::FileSizes
    #   resp.data.conflict_metadata_list[0].file_sizes.source #=> Integer
    #   resp.data.conflict_metadata_list[0].file_sizes.destination #=> Integer
    #   resp.data.conflict_metadata_list[0].file_sizes.base #=> Integer
    #   resp.data.conflict_metadata_list[0].file_modes #=> Types::FileModes
    #   resp.data.conflict_metadata_list[0].file_modes.source #=> String, one of ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #   resp.data.conflict_metadata_list[0].file_modes.destination #=> String, one of ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #   resp.data.conflict_metadata_list[0].file_modes.base #=> String, one of ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #   resp.data.conflict_metadata_list[0].object_types #=> Types::ObjectTypes
    #   resp.data.conflict_metadata_list[0].object_types.source #=> String, one of ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"]
    #   resp.data.conflict_metadata_list[0].object_types.destination #=> String, one of ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"]
    #   resp.data.conflict_metadata_list[0].object_types.base #=> String, one of ["FILE", "DIRECTORY", "GIT_LINK", "SYMBOLIC_LINK"]
    #   resp.data.conflict_metadata_list[0].number_of_conflicts #=> Integer
    #   resp.data.conflict_metadata_list[0].is_binary_file #=> Types::IsBinaryFile
    #   resp.data.conflict_metadata_list[0].is_binary_file.source #=> Boolean
    #   resp.data.conflict_metadata_list[0].is_binary_file.destination #=> Boolean
    #   resp.data.conflict_metadata_list[0].is_binary_file.base #=> Boolean
    #   resp.data.conflict_metadata_list[0].content_conflict #=> Boolean
    #   resp.data.conflict_metadata_list[0].file_mode_conflict #=> Boolean
    #   resp.data.conflict_metadata_list[0].object_type_conflict #=> Boolean
    #   resp.data.conflict_metadata_list[0].merge_operations #=> Types::MergeOperations
    #   resp.data.conflict_metadata_list[0].merge_operations.source #=> String, one of ["A", "M", "D"]
    #   resp.data.conflict_metadata_list[0].merge_operations.destination #=> String, one of ["A", "M", "D"]
    #   resp.data.next_token #=> String
    #
    def get_merge_conflicts(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMergeConflictsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMergeConflictsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMergeConflicts
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommitDoesNotExistException, Errors::CommitRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidCommitException, Errors::InvalidConflictDetailLevelException, Errors::InvalidConflictResolutionStrategyException, Errors::InvalidContinuationTokenException, Errors::InvalidDestinationCommitSpecifierException, Errors::InvalidMaxConflictFilesException, Errors::InvalidMergeOptionException, Errors::InvalidRepositoryNameException, Errors::InvalidSourceCommitSpecifierException, Errors::MaximumFileContentToLoadExceededException, Errors::MaximumItemsToCompareExceededException, Errors::MergeOptionRequiredException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException, Errors::TipsDivergenceExceededException]),
        data_parser: Parsers::GetMergeConflicts
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMergeConflicts,
        stubs: @stubs,
        params_class: Params::GetMergeConflictsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_merge_conflicts
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about the merge options available for merging two specified
    #             branches. For details about why a merge option is not available, use GetMergeConflicts
    #             or DescribeMergeConflicts.</p>
    #
    # @param [Hash] params
    #   See {Types::GetMergeOptionsInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the commits about which you want to get merge options.</p>
    #
    # @option params [String] :source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    # @option params [String] :destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    # @return [Types::GetMergeOptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_merge_options(
    #     repository_name: 'repositoryName', # required
    #     source_commit_specifier: 'sourceCommitSpecifier', # required
    #     destination_commit_specifier: 'destinationCommitSpecifier', # required
    #     conflict_detail_level: 'FILE_LEVEL', # accepts ["FILE_LEVEL", "LINE_LEVEL"]
    #     conflict_resolution_strategy: 'NONE' # accepts ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetMergeOptionsOutput
    #   resp.data.merge_options #=> Array<String>
    #   resp.data.merge_options[0] #=> String, one of ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #   resp.data.source_commit_id #=> String
    #   resp.data.destination_commit_id #=> String
    #   resp.data.base_commit_id #=> String
    #
    def get_merge_options(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetMergeOptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetMergeOptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetMergeOptions
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommitDoesNotExistException, Errors::CommitRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidCommitException, Errors::InvalidConflictDetailLevelException, Errors::InvalidConflictResolutionStrategyException, Errors::InvalidRepositoryNameException, Errors::MaximumFileContentToLoadExceededException, Errors::MaximumItemsToCompareExceededException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException, Errors::TipsDivergenceExceededException]),
        data_parser: Parsers::GetMergeOptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetMergeOptions,
        stubs: @stubs,
        params_class: Params::GetMergeOptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_merge_options
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about a pull request in a specified repository.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPullRequestInput}.
    #
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    # @return [Types::GetPullRequestOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_pull_request(
    #     pull_request_id: 'pullRequestId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPullRequestOutput
    #   resp.data.pull_request #=> Types::PullRequest
    #   resp.data.pull_request.pull_request_id #=> String
    #   resp.data.pull_request.title #=> String
    #   resp.data.pull_request.description #=> String
    #   resp.data.pull_request.last_activity_date #=> Time
    #   resp.data.pull_request.creation_date #=> Time
    #   resp.data.pull_request.pull_request_status #=> String, one of ["OPEN", "CLOSED"]
    #   resp.data.pull_request.author_arn #=> String
    #   resp.data.pull_request.pull_request_targets #=> Array<PullRequestTarget>
    #   resp.data.pull_request.pull_request_targets[0] #=> Types::PullRequestTarget
    #   resp.data.pull_request.pull_request_targets[0].repository_name #=> String
    #   resp.data.pull_request.pull_request_targets[0].source_reference #=> String
    #   resp.data.pull_request.pull_request_targets[0].destination_reference #=> String
    #   resp.data.pull_request.pull_request_targets[0].destination_commit #=> String
    #   resp.data.pull_request.pull_request_targets[0].source_commit #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_base #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata #=> Types::MergeMetadata
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.is_merged #=> Boolean
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merged_by #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merge_commit_id #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merge_option #=> String, one of ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #   resp.data.pull_request.client_request_token #=> String
    #   resp.data.pull_request.revision_id #=> String
    #   resp.data.pull_request.approval_rules #=> Array<ApprovalRule>
    #   resp.data.pull_request.approval_rules[0] #=> Types::ApprovalRule
    #   resp.data.pull_request.approval_rules[0].approval_rule_id #=> String
    #   resp.data.pull_request.approval_rules[0].approval_rule_name #=> String
    #   resp.data.pull_request.approval_rules[0].approval_rule_content #=> String
    #   resp.data.pull_request.approval_rules[0].rule_content_sha256 #=> String
    #   resp.data.pull_request.approval_rules[0].last_modified_date #=> Time
    #   resp.data.pull_request.approval_rules[0].creation_date #=> Time
    #   resp.data.pull_request.approval_rules[0].last_modified_user #=> String
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template #=> Types::OriginApprovalRuleTemplate
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_name #=> String
    #
    def get_pull_request(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPullRequestInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPullRequestInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPullRequest
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidPullRequestIdException, Errors::PullRequestDoesNotExistException, Errors::PullRequestIdRequiredException]),
        data_parser: Parsers::GetPullRequest
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPullRequest,
        stubs: @stubs,
        params_class: Params::GetPullRequestOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_pull_request
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about the approval states for a specified pull request. Approval states only apply to pull requests that have one or more
    #         approval rules applied to them.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPullRequestApprovalStatesInput}.
    #
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID for the pull request.</p>
    #
    # @option params [String] :revision_id
    #   <p>The system-generated ID for the pull request revision.</p>
    #
    # @return [Types::GetPullRequestApprovalStatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_pull_request_approval_states(
    #     pull_request_id: 'pullRequestId', # required
    #     revision_id: 'revisionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPullRequestApprovalStatesOutput
    #   resp.data.approvals #=> Array<Approval>
    #   resp.data.approvals[0] #=> Types::Approval
    #   resp.data.approvals[0].user_arn #=> String
    #   resp.data.approvals[0].approval_state #=> String, one of ["APPROVE", "REVOKE"]
    #
    def get_pull_request_approval_states(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPullRequestApprovalStatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPullRequestApprovalStatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPullRequestApprovalStates
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidPullRequestIdException, Errors::InvalidRevisionIdException, Errors::PullRequestDoesNotExistException, Errors::PullRequestIdRequiredException, Errors::RevisionIdRequiredException]),
        data_parser: Parsers::GetPullRequestApprovalStates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPullRequestApprovalStates,
        stubs: @stubs,
        params_class: Params::GetPullRequestApprovalStatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_pull_request_approval_states
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about whether approval rules have been set aside (overridden) for a
    #             pull request, and if so, the Amazon Resource Name (ARN) of the user or identity that overrode the rules and their requirements for the pull request.</p>
    #
    # @param [Hash] params
    #   See {Types::GetPullRequestOverrideStateInput}.
    #
    # @option params [String] :pull_request_id
    #   <p>The ID of the pull request for which you want to get information about whether approval rules have been set aside (overridden).</p>
    #
    # @option params [String] :revision_id
    #   <p>The system-generated ID of the revision for the pull request. To retrieve the most
    #               recent revision ID, use
    #               <a>GetPullRequest</a>.</p>
    #
    # @return [Types::GetPullRequestOverrideStateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_pull_request_override_state(
    #     pull_request_id: 'pullRequestId', # required
    #     revision_id: 'revisionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPullRequestOverrideStateOutput
    #   resp.data.overridden #=> Boolean
    #   resp.data.overrider #=> String
    #
    def get_pull_request_override_state(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPullRequestOverrideStateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPullRequestOverrideStateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPullRequestOverrideState
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidPullRequestIdException, Errors::InvalidRevisionIdException, Errors::PullRequestDoesNotExistException, Errors::PullRequestIdRequiredException, Errors::RevisionIdRequiredException]),
        data_parser: Parsers::GetPullRequestOverrideState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPullRequestOverrideState,
        stubs: @stubs,
        params_class: Params::GetPullRequestOverrideStateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_pull_request_override_state
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns information about a repository.</p>
    #
    #         <note>
    #             <p>The description field for a repository accepts all HTML characters and all valid
    #                 Unicode characters. Applications that do not HTML-encode the description and display
    #                 it in a webpage can expose users to potentially malicious code. Make sure that you
    #                 HTML-encode the description field in any application that uses this API to display
    #                 the repository description on a webpage.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetRepositoryInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository to get information about.</p>
    #
    # @return [Types::GetRepositoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_repository(
    #     repository_name: 'repositoryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRepositoryOutput
    #   resp.data.repository_metadata #=> Types::RepositoryMetadata
    #   resp.data.repository_metadata.account_id #=> String
    #   resp.data.repository_metadata.repository_id #=> String
    #   resp.data.repository_metadata.repository_name #=> String
    #   resp.data.repository_metadata.repository_description #=> String
    #   resp.data.repository_metadata.default_branch #=> String
    #   resp.data.repository_metadata.last_modified_date #=> Time
    #   resp.data.repository_metadata.creation_date #=> Time
    #   resp.data.repository_metadata.clone_url_http #=> String
    #   resp.data.repository_metadata.clone_url_ssh #=> String
    #   resp.data.repository_metadata.arn #=> String
    #
    def get_repository(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRepositoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRepositoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRepository
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidRepositoryNameException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::GetRepository
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRepository,
        stubs: @stubs,
        params_class: Params::GetRepositoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_repository
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about triggers configured for a repository.</p>
    #
    # @param [Hash] params
    #   See {Types::GetRepositoryTriggersInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository for which the trigger is configured.</p>
    #
    # @return [Types::GetRepositoryTriggersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_repository_triggers(
    #     repository_name: 'repositoryName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRepositoryTriggersOutput
    #   resp.data.configuration_id #=> String
    #   resp.data.triggers #=> Array<RepositoryTrigger>
    #   resp.data.triggers[0] #=> Types::RepositoryTrigger
    #   resp.data.triggers[0].name #=> String
    #   resp.data.triggers[0].destination_arn #=> String
    #   resp.data.triggers[0].custom_data #=> String
    #   resp.data.triggers[0].branches #=> Array<String>
    #   resp.data.triggers[0].branches[0] #=> String
    #   resp.data.triggers[0].events #=> Array<String>
    #   resp.data.triggers[0].events[0] #=> String, one of ["all", "updateReference", "createReference", "deleteReference"]
    #
    def get_repository_triggers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRepositoryTriggersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRepositoryTriggersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRepositoryTriggers
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidRepositoryNameException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::GetRepositoryTriggers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRepositoryTriggers,
        stubs: @stubs,
        params_class: Params::GetRepositoryTriggersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_repository_triggers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all approval rule templates in the specified AWS Region in your AWS account. If
    #             an AWS Region is not specified, the AWS Region where you are signed in is used.</p>
    #
    # @param [Hash] params
    #   See {Types::ListApprovalRuleTemplatesInput}.
    #
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    #
    # @return [Types::ListApprovalRuleTemplatesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_approval_rule_templates(
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListApprovalRuleTemplatesOutput
    #   resp.data.approval_rule_template_names #=> Array<String>
    #   resp.data.approval_rule_template_names[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_approval_rule_templates(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListApprovalRuleTemplatesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListApprovalRuleTemplatesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListApprovalRuleTemplates
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidContinuationTokenException, Errors::InvalidMaxResultsException]),
        data_parser: Parsers::ListApprovalRuleTemplates
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListApprovalRuleTemplates,
        stubs: @stubs,
        params_class: Params::ListApprovalRuleTemplatesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_approval_rule_templates
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all approval rule templates that are associated with a specified repository.</p>
    #
    # @param [Hash] params
    #   See {Types::ListAssociatedApprovalRuleTemplatesForRepositoryInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository for which you want to list all associated approval rule templates.</p>
    #
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    #
    # @return [Types::ListAssociatedApprovalRuleTemplatesForRepositoryOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_associated_approval_rule_templates_for_repository(
    #     repository_name: 'repositoryName', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListAssociatedApprovalRuleTemplatesForRepositoryOutput
    #   resp.data.approval_rule_template_names #=> Array<String>
    #   resp.data.approval_rule_template_names[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_associated_approval_rule_templates_for_repository(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListAssociatedApprovalRuleTemplatesForRepositoryInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListAssociatedApprovalRuleTemplatesForRepositoryInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListAssociatedApprovalRuleTemplatesForRepository
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidContinuationTokenException, Errors::InvalidMaxResultsException, Errors::InvalidRepositoryNameException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::ListAssociatedApprovalRuleTemplatesForRepository
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListAssociatedApprovalRuleTemplatesForRepository,
        stubs: @stubs,
        params_class: Params::ListAssociatedApprovalRuleTemplatesForRepositoryOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_associated_approval_rule_templates_for_repository
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about one or more branches in a repository.</p>
    #
    # @param [Hash] params
    #   See {Types::ListBranchesInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository that contains the branches.</p>
    #
    # @option params [String] :next_token
    #   <p>An enumeration token that allows the operation to batch the results.</p>
    #
    # @return [Types::ListBranchesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_branches(
    #     repository_name: 'repositoryName', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListBranchesOutput
    #   resp.data.branches #=> Array<String>
    #   resp.data.branches[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_branches(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListBranchesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListBranchesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListBranches
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidContinuationTokenException, Errors::InvalidRepositoryNameException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::ListBranches
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListBranches,
        stubs: @stubs,
        params_class: Params::ListBranchesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_branches
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of pull requests for a specified repository. The return list can be refined by pull request
    #         status or pull request author ARN.</p>
    #
    # @param [Hash] params
    #   See {Types::ListPullRequestsInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository for which you want to list pull requests.</p>
    #
    # @option params [String] :author_arn
    #   <p>Optional. The Amazon Resource Name (ARN) of the user who created the pull request. If used, this filters the results
    #           to pull requests created by that user.</p>
    #
    # @option params [String] :pull_request_status
    #   <p>Optional. The status of the pull request. If used, this refines the results to the pull requests that match the specified status.</p>
    #
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    #
    # @return [Types::ListPullRequestsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_pull_requests(
    #     repository_name: 'repositoryName', # required
    #     author_arn: 'authorArn',
    #     pull_request_status: 'OPEN', # accepts ["OPEN", "CLOSED"]
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListPullRequestsOutput
    #   resp.data.pull_request_ids #=> Array<String>
    #   resp.data.pull_request_ids[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_pull_requests(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListPullRequestsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListPullRequestsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListPullRequests
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::AuthorDoesNotExistException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidAuthorArnException, Errors::InvalidContinuationTokenException, Errors::InvalidMaxResultsException, Errors::InvalidPullRequestStatusException, Errors::InvalidRepositoryNameException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::ListPullRequests
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListPullRequests,
        stubs: @stubs,
        params_class: Params::ListPullRequestsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_pull_requests
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about one or more repositories.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRepositoriesInput}.
    #
    # @option params [String] :next_token
    #   <p>An enumeration token that allows the operation to batch the results of the operation.
    #               Batch sizes are 1,000 for list repository operations. When the client sends the token back to AWS CodeCommit,
    #               another page of 1,000 records is retrieved.</p>
    #
    # @option params [String] :sort_by
    #   <p>The criteria used to sort the results of a list repositories operation.</p>
    #
    # @option params [String] :order
    #   <p>The order in which to sort the results of a list repositories operation.</p>
    #
    # @return [Types::ListRepositoriesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_repositories(
    #     next_token: 'nextToken',
    #     sort_by: 'repositoryName', # accepts ["repositoryName", "lastModifiedDate"]
    #     order: 'ascending' # accepts ["ascending", "descending"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRepositoriesOutput
    #   resp.data.repositories #=> Array<RepositoryNameIdPair>
    #   resp.data.repositories[0] #=> Types::RepositoryNameIdPair
    #   resp.data.repositories[0].repository_name #=> String
    #   resp.data.repositories[0].repository_id #=> String
    #   resp.data.next_token #=> String
    #
    def list_repositories(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRepositoriesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRepositoriesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRepositories
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidContinuationTokenException, Errors::InvalidOrderException, Errors::InvalidSortByException]),
        data_parser: Parsers::ListRepositories
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRepositories,
        stubs: @stubs,
        params_class: Params::ListRepositoriesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_repositories
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists all repositories associated with the specified approval rule template.</p>
    #
    # @param [Hash] params
    #   See {Types::ListRepositoriesForApprovalRuleTemplateInput}.
    #
    # @option params [String] :approval_rule_template_name
    #   <p>The name of the approval rule template for which you want to list repositories that are associated with that template.</p>
    #
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    # @option params [Integer] :max_results
    #   <p>A non-zero, non-negative integer used to limit the number of returned results.</p>
    #
    # @return [Types::ListRepositoriesForApprovalRuleTemplateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_repositories_for_approval_rule_template(
    #     approval_rule_template_name: 'approvalRuleTemplateName', # required
    #     next_token: 'nextToken',
    #     max_results: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListRepositoriesForApprovalRuleTemplateOutput
    #   resp.data.repository_names #=> Array<String>
    #   resp.data.repository_names[0] #=> String
    #   resp.data.next_token #=> String
    #
    def list_repositories_for_approval_rule_template(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListRepositoriesForApprovalRuleTemplateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListRepositoriesForApprovalRuleTemplateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListRepositoriesForApprovalRuleTemplate
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApprovalRuleTemplateDoesNotExistException, Errors::ApprovalRuleTemplateNameRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidApprovalRuleTemplateNameException, Errors::InvalidContinuationTokenException, Errors::InvalidMaxResultsException]),
        data_parser: Parsers::ListRepositoriesForApprovalRuleTemplate
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListRepositoriesForApprovalRuleTemplate,
        stubs: @stubs,
        params_class: Params::ListRepositoriesForApprovalRuleTemplateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_repositories_for_approval_rule_template
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Gets information about AWS tags for a specified Amazon Resource Name (ARN) in AWS
    #             CodeCommit. For a list of valid resources in AWS CodeCommit, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats">CodeCommit Resources and Operations</a> in the<i> AWS CodeCommit User
    #                 Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::ListTagsForResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource for which you want to get information
    #               about tags, if any.</p>
    #
    # @option params [String] :next_token
    #   <p>An enumeration token that, when provided in a request, returns the next batch of the
    #               results.</p>
    #
    # @return [Types::ListTagsForResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.list_tags_for_resource(
    #     resource_arn: 'resourceArn', # required
    #     next_token: 'nextToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ListTagsForResourceOutput
    #   resp.data.tags #=> Hash<String, String>
    #   resp.data.tags['key'] #=> String
    #   resp.data.next_token #=> String
    #
    def list_tags_for_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ListTagsForResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ListTagsForResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ListTagsForResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRepositoryNameException, Errors::InvalidResourceArnException, Errors::RepositoryDoesNotExistException, Errors::ResourceArnRequiredException]),
        data_parser: Parsers::ListTagsForResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ListTagsForResource,
        stubs: @stubs,
        params_class: Params::ListTagsForResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :list_tags_for_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Merges two branches using the fast-forward merge strategy.</p>
    #
    # @param [Hash] params
    #   See {Types::MergeBranchesByFastForwardInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to merge two branches.</p>
    #
    # @option params [String] :source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    # @option params [String] :destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    # @option params [String] :target_branch
    #   <p>The branch where the merge is applied.</p>
    #
    # @return [Types::MergeBranchesByFastForwardOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.merge_branches_by_fast_forward(
    #     repository_name: 'repositoryName', # required
    #     source_commit_specifier: 'sourceCommitSpecifier', # required
    #     destination_commit_specifier: 'destinationCommitSpecifier', # required
    #     target_branch: 'targetBranch'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::MergeBranchesByFastForwardOutput
    #   resp.data.commit_id #=> String
    #   resp.data.tree_id #=> String
    #
    def merge_branches_by_fast_forward(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::MergeBranchesByFastForwardInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::MergeBranchesByFastForwardInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::MergeBranchesByFastForward
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BranchDoesNotExistException, Errors::BranchNameIsTagNameException, Errors::BranchNameRequiredException, Errors::CommitDoesNotExistException, Errors::CommitRequiredException, Errors::ConcurrentReferenceUpdateException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidBranchNameException, Errors::InvalidCommitException, Errors::InvalidRepositoryNameException, Errors::InvalidTargetBranchException, Errors::ManualMergeRequiredException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException, Errors::TipsDivergenceExceededException]),
        data_parser: Parsers::MergeBranchesByFastForward
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::MergeBranchesByFastForward,
        stubs: @stubs,
        params_class: Params::MergeBranchesByFastForwardOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :merge_branches_by_fast_forward
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Merges two branches using the squash merge strategy.</p>
    #
    # @param [Hash] params
    #   See {Types::MergeBranchesBySquashInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to merge two branches.</p>
    #
    # @option params [String] :source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    # @option params [String] :destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    # @option params [String] :target_branch
    #   <p>The branch where the merge is applied. </p>
    #
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    # @option params [String] :author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    #
    # @option params [String] :email
    #   <p>The email address of the person merging the branches. This information is used in the
    #               commit information for the merge.</p>
    #
    # @option params [String] :commit_message
    #   <p>The commit message for the merge.</p>
    #
    # @option params [Boolean] :keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If this is specified as true, a .gitkeep file is
    #               created for empty folders. The default is false.</p>
    #
    # @option params [ConflictResolution] :conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    #
    # @return [Types::MergeBranchesBySquashOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.merge_branches_by_squash(
    #     repository_name: 'repositoryName', # required
    #     source_commit_specifier: 'sourceCommitSpecifier', # required
    #     destination_commit_specifier: 'destinationCommitSpecifier', # required
    #     target_branch: 'targetBranch',
    #     conflict_detail_level: 'FILE_LEVEL', # accepts ["FILE_LEVEL", "LINE_LEVEL"]
    #     conflict_resolution_strategy: 'NONE', # accepts ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #     author_name: 'authorName',
    #     email: 'email',
    #     commit_message: 'commitMessage',
    #     keep_empty_folders: false,
    #     conflict_resolution: {
    #       replace_contents: [
    #         {
    #           file_path: 'filePath', # required
    #           replacement_type: 'KEEP_BASE', # required - accepts ["KEEP_BASE", "KEEP_SOURCE", "KEEP_DESTINATION", "USE_NEW_CONTENT"]
    #           content: 'content',
    #           file_mode: 'EXECUTABLE' # accepts ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #         }
    #       ],
    #       delete_files: [
    #         {
    #           file_path: 'filePath' # required
    #         }
    #       ],
    #       set_file_modes: [
    #         {
    #           file_path: 'filePath', # required
    #           file_mode: 'EXECUTABLE' # required - accepts ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #         }
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::MergeBranchesBySquashOutput
    #   resp.data.commit_id #=> String
    #   resp.data.tree_id #=> String
    #
    def merge_branches_by_squash(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::MergeBranchesBySquashInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::MergeBranchesBySquashInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::MergeBranchesBySquash
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BranchDoesNotExistException, Errors::BranchNameIsTagNameException, Errors::BranchNameRequiredException, Errors::CommitDoesNotExistException, Errors::CommitMessageLengthExceededException, Errors::CommitRequiredException, Errors::ConcurrentReferenceUpdateException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::FileContentSizeLimitExceededException, Errors::FileModeRequiredException, Errors::FolderContentSizeLimitExceededException, Errors::InvalidBranchNameException, Errors::InvalidCommitException, Errors::InvalidConflictDetailLevelException, Errors::InvalidConflictResolutionException, Errors::InvalidConflictResolutionStrategyException, Errors::InvalidEmailException, Errors::InvalidFileModeException, Errors::InvalidPathException, Errors::InvalidReplacementContentException, Errors::InvalidReplacementTypeException, Errors::InvalidRepositoryNameException, Errors::InvalidTargetBranchException, Errors::ManualMergeRequiredException, Errors::MaximumConflictResolutionEntriesExceededException, Errors::MaximumFileContentToLoadExceededException, Errors::MaximumItemsToCompareExceededException, Errors::MultipleConflictResolutionEntriesException, Errors::NameLengthExceededException, Errors::PathRequiredException, Errors::ReplacementContentRequiredException, Errors::ReplacementTypeRequiredException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException, Errors::TipsDivergenceExceededException]),
        data_parser: Parsers::MergeBranchesBySquash
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::MergeBranchesBySquash,
        stubs: @stubs,
        params_class: Params::MergeBranchesBySquashOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :merge_branches_by_squash
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Merges two specified branches using the three-way merge strategy.</p>
    #
    # @param [Hash] params
    #   See {Types::MergeBranchesByThreeWayInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to merge two branches.</p>
    #
    # @option params [String] :source_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    # @option params [String] :destination_commit_specifier
    #   <p>The branch, tag, HEAD, or other fully qualified reference used to identify a commit
    #               (for example, a branch name or a full commit ID).</p>
    #
    # @option params [String] :target_branch
    #   <p>The branch where the merge is applied. </p>
    #
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    # @option params [String] :author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    #
    # @option params [String] :email
    #   <p>The email address of the person merging the branches. This information is used in the
    #               commit information for the merge.</p>
    #
    # @option params [String] :commit_message
    #   <p>The commit message to include in the commit information for the merge.</p>
    #
    # @option params [Boolean] :keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If true, a .gitkeep file is created for empty folders.
    #               The default is false.</p>
    #
    # @option params [ConflictResolution] :conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    #
    # @return [Types::MergeBranchesByThreeWayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.merge_branches_by_three_way(
    #     repository_name: 'repositoryName', # required
    #     source_commit_specifier: 'sourceCommitSpecifier', # required
    #     destination_commit_specifier: 'destinationCommitSpecifier', # required
    #     target_branch: 'targetBranch',
    #     conflict_detail_level: 'FILE_LEVEL', # accepts ["FILE_LEVEL", "LINE_LEVEL"]
    #     conflict_resolution_strategy: 'NONE', # accepts ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #     author_name: 'authorName',
    #     email: 'email',
    #     commit_message: 'commitMessage',
    #     keep_empty_folders: false,
    #     conflict_resolution: {
    #       replace_contents: [
    #         {
    #           file_path: 'filePath', # required
    #           replacement_type: 'KEEP_BASE', # required - accepts ["KEEP_BASE", "KEEP_SOURCE", "KEEP_DESTINATION", "USE_NEW_CONTENT"]
    #           content: 'content',
    #           file_mode: 'EXECUTABLE' # accepts ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #         }
    #       ],
    #       delete_files: [
    #         {
    #           file_path: 'filePath' # required
    #         }
    #       ],
    #       set_file_modes: [
    #         {
    #           file_path: 'filePath', # required
    #           file_mode: 'EXECUTABLE' # required - accepts ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #         }
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::MergeBranchesByThreeWayOutput
    #   resp.data.commit_id #=> String
    #   resp.data.tree_id #=> String
    #
    def merge_branches_by_three_way(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::MergeBranchesByThreeWayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::MergeBranchesByThreeWayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::MergeBranchesByThreeWay
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BranchDoesNotExistException, Errors::BranchNameIsTagNameException, Errors::BranchNameRequiredException, Errors::CommitDoesNotExistException, Errors::CommitMessageLengthExceededException, Errors::CommitRequiredException, Errors::ConcurrentReferenceUpdateException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::FileContentSizeLimitExceededException, Errors::FileModeRequiredException, Errors::FolderContentSizeLimitExceededException, Errors::InvalidBranchNameException, Errors::InvalidCommitException, Errors::InvalidConflictDetailLevelException, Errors::InvalidConflictResolutionException, Errors::InvalidConflictResolutionStrategyException, Errors::InvalidEmailException, Errors::InvalidFileModeException, Errors::InvalidPathException, Errors::InvalidReplacementContentException, Errors::InvalidReplacementTypeException, Errors::InvalidRepositoryNameException, Errors::InvalidTargetBranchException, Errors::ManualMergeRequiredException, Errors::MaximumConflictResolutionEntriesExceededException, Errors::MaximumFileContentToLoadExceededException, Errors::MaximumItemsToCompareExceededException, Errors::MultipleConflictResolutionEntriesException, Errors::NameLengthExceededException, Errors::PathRequiredException, Errors::ReplacementContentRequiredException, Errors::ReplacementTypeRequiredException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException, Errors::TipsDivergenceExceededException]),
        data_parser: Parsers::MergeBranchesByThreeWay
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::MergeBranchesByThreeWay,
        stubs: @stubs,
        params_class: Params::MergeBranchesByThreeWayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :merge_branches_by_three_way
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attempts to merge the source commit of a pull request into the specified destination
    #             branch for that pull request at the specified commit using the fast-forward merge strategy. If the merge is successful, it closes the pull request.</p>
    #
    # @param [Hash] params
    #   See {Types::MergePullRequestByFastForwardInput}.
    #
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    #
    # @option params [String] :source_commit_id
    #   <p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an
    #           exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>
    #
    # @return [Types::MergePullRequestByFastForwardOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.merge_pull_request_by_fast_forward(
    #     pull_request_id: 'pullRequestId', # required
    #     repository_name: 'repositoryName', # required
    #     source_commit_id: 'sourceCommitId'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::MergePullRequestByFastForwardOutput
    #   resp.data.pull_request #=> Types::PullRequest
    #   resp.data.pull_request.pull_request_id #=> String
    #   resp.data.pull_request.title #=> String
    #   resp.data.pull_request.description #=> String
    #   resp.data.pull_request.last_activity_date #=> Time
    #   resp.data.pull_request.creation_date #=> Time
    #   resp.data.pull_request.pull_request_status #=> String, one of ["OPEN", "CLOSED"]
    #   resp.data.pull_request.author_arn #=> String
    #   resp.data.pull_request.pull_request_targets #=> Array<PullRequestTarget>
    #   resp.data.pull_request.pull_request_targets[0] #=> Types::PullRequestTarget
    #   resp.data.pull_request.pull_request_targets[0].repository_name #=> String
    #   resp.data.pull_request.pull_request_targets[0].source_reference #=> String
    #   resp.data.pull_request.pull_request_targets[0].destination_reference #=> String
    #   resp.data.pull_request.pull_request_targets[0].destination_commit #=> String
    #   resp.data.pull_request.pull_request_targets[0].source_commit #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_base #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata #=> Types::MergeMetadata
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.is_merged #=> Boolean
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merged_by #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merge_commit_id #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merge_option #=> String, one of ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #   resp.data.pull_request.client_request_token #=> String
    #   resp.data.pull_request.revision_id #=> String
    #   resp.data.pull_request.approval_rules #=> Array<ApprovalRule>
    #   resp.data.pull_request.approval_rules[0] #=> Types::ApprovalRule
    #   resp.data.pull_request.approval_rules[0].approval_rule_id #=> String
    #   resp.data.pull_request.approval_rules[0].approval_rule_name #=> String
    #   resp.data.pull_request.approval_rules[0].approval_rule_content #=> String
    #   resp.data.pull_request.approval_rules[0].rule_content_sha256 #=> String
    #   resp.data.pull_request.approval_rules[0].last_modified_date #=> Time
    #   resp.data.pull_request.approval_rules[0].creation_date #=> Time
    #   resp.data.pull_request.approval_rules[0].last_modified_user #=> String
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template #=> Types::OriginApprovalRuleTemplate
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_name #=> String
    #
    def merge_pull_request_by_fast_forward(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::MergePullRequestByFastForwardInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::MergePullRequestByFastForwardInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::MergePullRequestByFastForward
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ConcurrentReferenceUpdateException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidCommitIdException, Errors::InvalidPullRequestIdException, Errors::InvalidRepositoryNameException, Errors::ManualMergeRequiredException, Errors::PullRequestAlreadyClosedException, Errors::PullRequestApprovalRulesNotSatisfiedException, Errors::PullRequestDoesNotExistException, Errors::PullRequestIdRequiredException, Errors::ReferenceDoesNotExistException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException, Errors::RepositoryNotAssociatedWithPullRequestException, Errors::TipOfSourceReferenceIsDifferentException]),
        data_parser: Parsers::MergePullRequestByFastForward
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::MergePullRequestByFastForward,
        stubs: @stubs,
        params_class: Params::MergePullRequestByFastForwardOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :merge_pull_request_by_fast_forward
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attempts to merge the source commit of a pull request into the specified destination
    #             branch for that pull request at the specified commit using the squash merge strategy. If the merge is successful, it closes the pull request.</p>
    #
    # @param [Hash] params
    #   See {Types::MergePullRequestBySquashInput}.
    #
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    #
    # @option params [String] :source_commit_id
    #   <p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an
    #               exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>
    #
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    # @option params [String] :commit_message
    #   <p>The commit message to include in the commit information for the merge.</p>
    #
    # @option params [String] :author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    #
    # @option params [String] :email
    #   <p>The email address of the person merging the branches. This information is used in the
    #               commit information for the merge.</p>
    #
    # @option params [Boolean] :keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If true, a .gitkeep file is created for empty folders.
    #               The default is false.</p>
    #
    # @option params [ConflictResolution] :conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    #
    # @return [Types::MergePullRequestBySquashOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.merge_pull_request_by_squash(
    #     pull_request_id: 'pullRequestId', # required
    #     repository_name: 'repositoryName', # required
    #     source_commit_id: 'sourceCommitId',
    #     conflict_detail_level: 'FILE_LEVEL', # accepts ["FILE_LEVEL", "LINE_LEVEL"]
    #     conflict_resolution_strategy: 'NONE', # accepts ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #     commit_message: 'commitMessage',
    #     author_name: 'authorName',
    #     email: 'email',
    #     keep_empty_folders: false,
    #     conflict_resolution: {
    #       replace_contents: [
    #         {
    #           file_path: 'filePath', # required
    #           replacement_type: 'KEEP_BASE', # required - accepts ["KEEP_BASE", "KEEP_SOURCE", "KEEP_DESTINATION", "USE_NEW_CONTENT"]
    #           content: 'content',
    #           file_mode: 'EXECUTABLE' # accepts ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #         }
    #       ],
    #       delete_files: [
    #         {
    #           file_path: 'filePath' # required
    #         }
    #       ],
    #       set_file_modes: [
    #         {
    #           file_path: 'filePath', # required
    #           file_mode: 'EXECUTABLE' # required - accepts ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #         }
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::MergePullRequestBySquashOutput
    #   resp.data.pull_request #=> Types::PullRequest
    #   resp.data.pull_request.pull_request_id #=> String
    #   resp.data.pull_request.title #=> String
    #   resp.data.pull_request.description #=> String
    #   resp.data.pull_request.last_activity_date #=> Time
    #   resp.data.pull_request.creation_date #=> Time
    #   resp.data.pull_request.pull_request_status #=> String, one of ["OPEN", "CLOSED"]
    #   resp.data.pull_request.author_arn #=> String
    #   resp.data.pull_request.pull_request_targets #=> Array<PullRequestTarget>
    #   resp.data.pull_request.pull_request_targets[0] #=> Types::PullRequestTarget
    #   resp.data.pull_request.pull_request_targets[0].repository_name #=> String
    #   resp.data.pull_request.pull_request_targets[0].source_reference #=> String
    #   resp.data.pull_request.pull_request_targets[0].destination_reference #=> String
    #   resp.data.pull_request.pull_request_targets[0].destination_commit #=> String
    #   resp.data.pull_request.pull_request_targets[0].source_commit #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_base #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata #=> Types::MergeMetadata
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.is_merged #=> Boolean
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merged_by #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merge_commit_id #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merge_option #=> String, one of ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #   resp.data.pull_request.client_request_token #=> String
    #   resp.data.pull_request.revision_id #=> String
    #   resp.data.pull_request.approval_rules #=> Array<ApprovalRule>
    #   resp.data.pull_request.approval_rules[0] #=> Types::ApprovalRule
    #   resp.data.pull_request.approval_rules[0].approval_rule_id #=> String
    #   resp.data.pull_request.approval_rules[0].approval_rule_name #=> String
    #   resp.data.pull_request.approval_rules[0].approval_rule_content #=> String
    #   resp.data.pull_request.approval_rules[0].rule_content_sha256 #=> String
    #   resp.data.pull_request.approval_rules[0].last_modified_date #=> Time
    #   resp.data.pull_request.approval_rules[0].creation_date #=> Time
    #   resp.data.pull_request.approval_rules[0].last_modified_user #=> String
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template #=> Types::OriginApprovalRuleTemplate
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_name #=> String
    #
    def merge_pull_request_by_squash(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::MergePullRequestBySquashInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::MergePullRequestBySquashInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::MergePullRequestBySquash
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommitMessageLengthExceededException, Errors::ConcurrentReferenceUpdateException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::FileContentSizeLimitExceededException, Errors::FolderContentSizeLimitExceededException, Errors::InvalidCommitIdException, Errors::InvalidConflictDetailLevelException, Errors::InvalidConflictResolutionException, Errors::InvalidConflictResolutionStrategyException, Errors::InvalidEmailException, Errors::InvalidFileModeException, Errors::InvalidPathException, Errors::InvalidPullRequestIdException, Errors::InvalidReplacementContentException, Errors::InvalidReplacementTypeException, Errors::InvalidRepositoryNameException, Errors::ManualMergeRequiredException, Errors::MaximumConflictResolutionEntriesExceededException, Errors::MaximumFileContentToLoadExceededException, Errors::MaximumItemsToCompareExceededException, Errors::MultipleConflictResolutionEntriesException, Errors::NameLengthExceededException, Errors::PathRequiredException, Errors::PullRequestAlreadyClosedException, Errors::PullRequestApprovalRulesNotSatisfiedException, Errors::PullRequestDoesNotExistException, Errors::PullRequestIdRequiredException, Errors::ReplacementContentRequiredException, Errors::ReplacementTypeRequiredException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException, Errors::RepositoryNotAssociatedWithPullRequestException, Errors::TipOfSourceReferenceIsDifferentException, Errors::TipsDivergenceExceededException]),
        data_parser: Parsers::MergePullRequestBySquash
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::MergePullRequestBySquash,
        stubs: @stubs,
        params_class: Params::MergePullRequestBySquashOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :merge_pull_request_by_squash
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Attempts to merge the source commit of a pull request into the specified destination
    #             branch for that pull request at the specified commit using the three-way merge strategy. If the merge is successful, it closes the pull request.</p>
    #
    # @param [Hash] params
    #   See {Types::MergePullRequestByThreeWayInput}.
    #
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository where the pull request was created.</p>
    #
    # @option params [String] :source_commit_id
    #   <p>The full commit ID of the original or updated commit in the pull request source branch. Pass this value if you want an
    #               exception thrown if the current commit ID of the tip of the source branch does not match this commit ID.</p>
    #
    # @option params [String] :conflict_detail_level
    #   <p>The level of conflict detail to use. If unspecified, the default FILE_LEVEL is used,
    #               which returns a not-mergeable result if the same file has differences in both branches.
    #               If LINE_LEVEL is specified, a conflict is considered not mergeable if the same file in
    #               both branches has differences on the same line.</p>
    #
    # @option params [String] :conflict_resolution_strategy
    #   <p>Specifies which branch to use when resolving conflicts, or whether to attempt
    #               automatically merging two versions of a file. The default is NONE, which requires any
    #               conflicts to be resolved manually before the merge operation is successful.</p>
    #
    # @option params [String] :commit_message
    #   <p>The commit message to include in the commit information for the merge.</p>
    #
    # @option params [String] :author_name
    #   <p>The name of the author who created the commit. This information is used as both the
    #               author and committer for the commit.</p>
    #
    # @option params [String] :email
    #   <p>The email address of the person merging the branches. This information is used in the
    #               commit information for the merge.</p>
    #
    # @option params [Boolean] :keep_empty_folders
    #   <p>If the commit contains deletions, whether to keep a folder or folder structure if the
    #               changes leave the folders empty. If true, a .gitkeep file is created for empty folders.
    #               The default is false.</p>
    #
    # @option params [ConflictResolution] :conflict_resolution
    #   <p>If AUTOMERGE is the conflict resolution strategy, a list of inputs to use when
    #               resolving conflicts during a merge.</p>
    #
    # @return [Types::MergePullRequestByThreeWayOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.merge_pull_request_by_three_way(
    #     pull_request_id: 'pullRequestId', # required
    #     repository_name: 'repositoryName', # required
    #     source_commit_id: 'sourceCommitId',
    #     conflict_detail_level: 'FILE_LEVEL', # accepts ["FILE_LEVEL", "LINE_LEVEL"]
    #     conflict_resolution_strategy: 'NONE', # accepts ["NONE", "ACCEPT_SOURCE", "ACCEPT_DESTINATION", "AUTOMERGE"]
    #     commit_message: 'commitMessage',
    #     author_name: 'authorName',
    #     email: 'email',
    #     keep_empty_folders: false,
    #     conflict_resolution: {
    #       replace_contents: [
    #         {
    #           file_path: 'filePath', # required
    #           replacement_type: 'KEEP_BASE', # required - accepts ["KEEP_BASE", "KEEP_SOURCE", "KEEP_DESTINATION", "USE_NEW_CONTENT"]
    #           content: 'content',
    #           file_mode: 'EXECUTABLE' # accepts ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #         }
    #       ],
    #       delete_files: [
    #         {
    #           file_path: 'filePath' # required
    #         }
    #       ],
    #       set_file_modes: [
    #         {
    #           file_path: 'filePath', # required
    #           file_mode: 'EXECUTABLE' # required - accepts ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #         }
    #       ]
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::MergePullRequestByThreeWayOutput
    #   resp.data.pull_request #=> Types::PullRequest
    #   resp.data.pull_request.pull_request_id #=> String
    #   resp.data.pull_request.title #=> String
    #   resp.data.pull_request.description #=> String
    #   resp.data.pull_request.last_activity_date #=> Time
    #   resp.data.pull_request.creation_date #=> Time
    #   resp.data.pull_request.pull_request_status #=> String, one of ["OPEN", "CLOSED"]
    #   resp.data.pull_request.author_arn #=> String
    #   resp.data.pull_request.pull_request_targets #=> Array<PullRequestTarget>
    #   resp.data.pull_request.pull_request_targets[0] #=> Types::PullRequestTarget
    #   resp.data.pull_request.pull_request_targets[0].repository_name #=> String
    #   resp.data.pull_request.pull_request_targets[0].source_reference #=> String
    #   resp.data.pull_request.pull_request_targets[0].destination_reference #=> String
    #   resp.data.pull_request.pull_request_targets[0].destination_commit #=> String
    #   resp.data.pull_request.pull_request_targets[0].source_commit #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_base #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata #=> Types::MergeMetadata
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.is_merged #=> Boolean
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merged_by #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merge_commit_id #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merge_option #=> String, one of ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #   resp.data.pull_request.client_request_token #=> String
    #   resp.data.pull_request.revision_id #=> String
    #   resp.data.pull_request.approval_rules #=> Array<ApprovalRule>
    #   resp.data.pull_request.approval_rules[0] #=> Types::ApprovalRule
    #   resp.data.pull_request.approval_rules[0].approval_rule_id #=> String
    #   resp.data.pull_request.approval_rules[0].approval_rule_name #=> String
    #   resp.data.pull_request.approval_rules[0].approval_rule_content #=> String
    #   resp.data.pull_request.approval_rules[0].rule_content_sha256 #=> String
    #   resp.data.pull_request.approval_rules[0].last_modified_date #=> Time
    #   resp.data.pull_request.approval_rules[0].creation_date #=> Time
    #   resp.data.pull_request.approval_rules[0].last_modified_user #=> String
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template #=> Types::OriginApprovalRuleTemplate
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_name #=> String
    #
    def merge_pull_request_by_three_way(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::MergePullRequestByThreeWayInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::MergePullRequestByThreeWayInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::MergePullRequestByThreeWay
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommitMessageLengthExceededException, Errors::ConcurrentReferenceUpdateException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::FileContentSizeLimitExceededException, Errors::FolderContentSizeLimitExceededException, Errors::InvalidCommitIdException, Errors::InvalidConflictDetailLevelException, Errors::InvalidConflictResolutionException, Errors::InvalidConflictResolutionStrategyException, Errors::InvalidEmailException, Errors::InvalidFileModeException, Errors::InvalidPathException, Errors::InvalidPullRequestIdException, Errors::InvalidReplacementContentException, Errors::InvalidReplacementTypeException, Errors::InvalidRepositoryNameException, Errors::ManualMergeRequiredException, Errors::MaximumConflictResolutionEntriesExceededException, Errors::MaximumFileContentToLoadExceededException, Errors::MaximumItemsToCompareExceededException, Errors::MultipleConflictResolutionEntriesException, Errors::NameLengthExceededException, Errors::PathRequiredException, Errors::PullRequestAlreadyClosedException, Errors::PullRequestApprovalRulesNotSatisfiedException, Errors::PullRequestDoesNotExistException, Errors::PullRequestIdRequiredException, Errors::ReplacementContentRequiredException, Errors::ReplacementTypeRequiredException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException, Errors::RepositoryNotAssociatedWithPullRequestException, Errors::TipOfSourceReferenceIsDifferentException, Errors::TipsDivergenceExceededException]),
        data_parser: Parsers::MergePullRequestByThreeWay
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::MergePullRequestByThreeWay,
        stubs: @stubs,
        params_class: Params::MergePullRequestByThreeWayOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :merge_pull_request_by_three_way
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets aside (overrides) all approval rule requirements for a specified pull request.</p>
    #
    # @param [Hash] params
    #   See {Types::OverridePullRequestApprovalRulesInput}.
    #
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request for which you want to override all
    #               approval rule requirements. To get this information, use
    #               <a>GetPullRequest</a>.</p>
    #
    # @option params [String] :revision_id
    #   <p>The system-generated ID of the most recent revision of the pull request. You cannot override approval rules for anything but the most recent revision of a pull request.
    #               To get the revision ID, use GetPullRequest.</p>
    #
    # @option params [String] :override_status
    #   <p>Whether you want to set aside approval rule requirements for the pull request (OVERRIDE) or revoke a previous override and apply
    #           approval rule requirements (REVOKE). REVOKE status is not stored.</p>
    #
    # @return [Types::OverridePullRequestApprovalRulesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.override_pull_request_approval_rules(
    #     pull_request_id: 'pullRequestId', # required
    #     revision_id: 'revisionId', # required
    #     override_status: 'OVERRIDE' # required - accepts ["OVERRIDE", "REVOKE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::OverridePullRequestApprovalRulesOutput
    #
    def override_pull_request_approval_rules(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::OverridePullRequestApprovalRulesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::OverridePullRequestApprovalRulesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::OverridePullRequestApprovalRules
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidOverrideStatusException, Errors::InvalidPullRequestIdException, Errors::InvalidRevisionIdException, Errors::OverrideAlreadySetException, Errors::OverrideStatusRequiredException, Errors::PullRequestAlreadyClosedException, Errors::PullRequestDoesNotExistException, Errors::PullRequestIdRequiredException, Errors::RevisionIdRequiredException, Errors::RevisionNotCurrentException]),
        data_parser: Parsers::OverridePullRequestApprovalRules
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::OverridePullRequestApprovalRules,
        stubs: @stubs,
        params_class: Params::OverridePullRequestApprovalRulesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :override_pull_request_approval_rules
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Posts a comment on the comparison between two commits.</p>
    #
    # @param [Hash] params
    #   See {Types::PostCommentForComparedCommitInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to post a comment on the comparison between commits.</p>
    #
    # @option params [String] :before_commit_id
    #   <p>To establish the directionality of the comparison, the full commit ID of the before
    #               commit. Required for commenting on any commit unless that commit is the initial
    #               commit.</p>
    #
    # @option params [String] :after_commit_id
    #   <p>To establish the directionality of the comparison, the full commit ID of the after
    #               commit.</p>
    #
    # @option params [Location] :location
    #   <p>The location of the comparison where you want to comment.</p>
    #
    # @option params [String] :content
    #   <p>The content of the comment you want to make.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    #
    # @return [Types::PostCommentForComparedCommitOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.post_comment_for_compared_commit(
    #     repository_name: 'repositoryName', # required
    #     before_commit_id: 'beforeCommitId',
    #     after_commit_id: 'afterCommitId', # required
    #     location: {
    #       file_path: 'filePath',
    #       file_position: 1,
    #       relative_file_version: 'BEFORE' # accepts ["BEFORE", "AFTER"]
    #     },
    #     content: 'content', # required
    #     client_request_token: 'clientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PostCommentForComparedCommitOutput
    #   resp.data.repository_name #=> String
    #   resp.data.before_commit_id #=> String
    #   resp.data.after_commit_id #=> String
    #   resp.data.before_blob_id #=> String
    #   resp.data.after_blob_id #=> String
    #   resp.data.location #=> Types::Location
    #   resp.data.location.file_path #=> String
    #   resp.data.location.file_position #=> Integer
    #   resp.data.location.relative_file_version #=> String, one of ["BEFORE", "AFTER"]
    #   resp.data.comment #=> Types::Comment
    #   resp.data.comment.comment_id #=> String
    #   resp.data.comment.content #=> String
    #   resp.data.comment.in_reply_to #=> String
    #   resp.data.comment.creation_date #=> Time
    #   resp.data.comment.last_modified_date #=> Time
    #   resp.data.comment.author_arn #=> String
    #   resp.data.comment.deleted #=> Boolean
    #   resp.data.comment.client_request_token #=> String
    #   resp.data.comment.caller_reactions #=> Array<String>
    #   resp.data.comment.caller_reactions[0] #=> String
    #   resp.data.comment.reaction_counts #=> Hash<String, Integer>
    #   resp.data.comment.reaction_counts['key'] #=> Integer
    #
    def post_comment_for_compared_commit(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PostCommentForComparedCommitInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PostCommentForComparedCommitInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PostCommentForComparedCommit
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BeforeCommitIdAndAfterCommitIdAreSameException, Errors::ClientRequestTokenRequiredException, Errors::CommentContentRequiredException, Errors::CommentContentSizeLimitExceededException, Errors::CommitDoesNotExistException, Errors::CommitIdRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::IdempotencyParameterMismatchException, Errors::InvalidClientRequestTokenException, Errors::InvalidCommitIdException, Errors::InvalidFileLocationException, Errors::InvalidFilePositionException, Errors::InvalidPathException, Errors::InvalidRelativeFileVersionEnumException, Errors::InvalidRepositoryNameException, Errors::PathDoesNotExistException, Errors::PathRequiredException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::PostCommentForComparedCommit
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PostCommentForComparedCommit,
        stubs: @stubs,
        params_class: Params::PostCommentForComparedCommitOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :post_comment_for_compared_commit
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Posts a comment on a pull request.</p>
    #
    # @param [Hash] params
    #   See {Types::PostCommentForPullRequestInput}.
    #
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to post a comment on a pull request.</p>
    #
    # @option params [String] :before_commit_id
    #   <p>The full commit ID of the commit in the destination branch that was the tip of the branch at the time the pull request was created.</p>
    #
    # @option params [String] :after_commit_id
    #   <p>The full commit ID of the commit in the source branch that is the current tip of the branch for the pull request when you post the comment.</p>
    #
    # @option params [Location] :location
    #   <p>The location of the change where you want to post your comment. If no location is
    #               provided, the comment is posted as a general comment on the pull request difference
    #               between the before commit ID and the after commit ID.</p>
    #
    # @option params [String] :content
    #   <p>The content of your comment on the change.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    #
    # @return [Types::PostCommentForPullRequestOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.post_comment_for_pull_request(
    #     pull_request_id: 'pullRequestId', # required
    #     repository_name: 'repositoryName', # required
    #     before_commit_id: 'beforeCommitId', # required
    #     after_commit_id: 'afterCommitId', # required
    #     location: {
    #       file_path: 'filePath',
    #       file_position: 1,
    #       relative_file_version: 'BEFORE' # accepts ["BEFORE", "AFTER"]
    #     },
    #     content: 'content', # required
    #     client_request_token: 'clientRequestToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PostCommentForPullRequestOutput
    #   resp.data.repository_name #=> String
    #   resp.data.pull_request_id #=> String
    #   resp.data.before_commit_id #=> String
    #   resp.data.after_commit_id #=> String
    #   resp.data.before_blob_id #=> String
    #   resp.data.after_blob_id #=> String
    #   resp.data.location #=> Types::Location
    #   resp.data.location.file_path #=> String
    #   resp.data.location.file_position #=> Integer
    #   resp.data.location.relative_file_version #=> String, one of ["BEFORE", "AFTER"]
    #   resp.data.comment #=> Types::Comment
    #   resp.data.comment.comment_id #=> String
    #   resp.data.comment.content #=> String
    #   resp.data.comment.in_reply_to #=> String
    #   resp.data.comment.creation_date #=> Time
    #   resp.data.comment.last_modified_date #=> Time
    #   resp.data.comment.author_arn #=> String
    #   resp.data.comment.deleted #=> Boolean
    #   resp.data.comment.client_request_token #=> String
    #   resp.data.comment.caller_reactions #=> Array<String>
    #   resp.data.comment.caller_reactions[0] #=> String
    #   resp.data.comment.reaction_counts #=> Hash<String, Integer>
    #   resp.data.comment.reaction_counts['key'] #=> Integer
    #
    def post_comment_for_pull_request(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PostCommentForPullRequestInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PostCommentForPullRequestInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PostCommentForPullRequest
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BeforeCommitIdAndAfterCommitIdAreSameException, Errors::ClientRequestTokenRequiredException, Errors::CommentContentRequiredException, Errors::CommentContentSizeLimitExceededException, Errors::CommitDoesNotExistException, Errors::CommitIdRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::IdempotencyParameterMismatchException, Errors::InvalidClientRequestTokenException, Errors::InvalidCommitIdException, Errors::InvalidFileLocationException, Errors::InvalidFilePositionException, Errors::InvalidPathException, Errors::InvalidPullRequestIdException, Errors::InvalidRelativeFileVersionEnumException, Errors::InvalidRepositoryNameException, Errors::PathDoesNotExistException, Errors::PathRequiredException, Errors::PullRequestDoesNotExistException, Errors::PullRequestIdRequiredException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException, Errors::RepositoryNotAssociatedWithPullRequestException]),
        data_parser: Parsers::PostCommentForPullRequest
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PostCommentForPullRequest,
        stubs: @stubs,
        params_class: Params::PostCommentForPullRequestOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :post_comment_for_pull_request
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Posts a comment in reply to an existing comment on a comparison between commits or a pull request.</p>
    #
    # @param [Hash] params
    #   See {Types::PostCommentReplyInput}.
    #
    # @option params [String] :in_reply_to
    #   <p>The system-generated ID of the comment to which you want to reply. To get this ID, use <a>GetCommentsForComparedCommit</a>
    #           or <a>GetCommentsForPullRequest</a>.</p>
    #
    # @option params [String] :client_request_token
    #   <p>A unique, client-generated idempotency token that, when provided in a request, ensures
    #               the request cannot be repeated with a changed parameter. If a request is received with
    #               the same parameters and a token is included, the request returns information about the
    #               initial request that used that token.</p>
    #
    # @option params [String] :content
    #   <p>The contents of your reply to a comment.</p>
    #
    # @return [Types::PostCommentReplyOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.post_comment_reply(
    #     in_reply_to: 'inReplyTo', # required
    #     client_request_token: 'clientRequestToken',
    #     content: 'content' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PostCommentReplyOutput
    #   resp.data.comment #=> Types::Comment
    #   resp.data.comment.comment_id #=> String
    #   resp.data.comment.content #=> String
    #   resp.data.comment.in_reply_to #=> String
    #   resp.data.comment.creation_date #=> Time
    #   resp.data.comment.last_modified_date #=> Time
    #   resp.data.comment.author_arn #=> String
    #   resp.data.comment.deleted #=> Boolean
    #   resp.data.comment.client_request_token #=> String
    #   resp.data.comment.caller_reactions #=> Array<String>
    #   resp.data.comment.caller_reactions[0] #=> String
    #   resp.data.comment.reaction_counts #=> Hash<String, Integer>
    #   resp.data.comment.reaction_counts['key'] #=> Integer
    #
    def post_comment_reply(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PostCommentReplyInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PostCommentReplyInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PostCommentReply
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ClientRequestTokenRequiredException, Errors::CommentContentRequiredException, Errors::CommentContentSizeLimitExceededException, Errors::CommentDoesNotExistException, Errors::CommentIdRequiredException, Errors::IdempotencyParameterMismatchException, Errors::InvalidClientRequestTokenException, Errors::InvalidCommentIdException]),
        data_parser: Parsers::PostCommentReply
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PostCommentReply,
        stubs: @stubs,
        params_class: Params::PostCommentReplyOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :post_comment_reply
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates a reaction to a specified comment for the user whose identity is used to make the request. You can only add or
    #         update a reaction for yourself. You cannot add, modify, or delete a reaction for another user.</p>
    #
    # @param [Hash] params
    #   See {Types::PutCommentReactionInput}.
    #
    # @option params [String] :comment_id
    #   <p>The ID of the comment to which you want to add or update a reaction.</p>
    #
    # @option params [String] :reaction_value
    #   <p>The emoji reaction you want to add or update. To remove a reaction, provide a value of blank or null. You can also provide the value of none.
    #               For information about emoji reaction values supported in AWS CodeCommit, see the <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/how-to-commit-comment.html#emoji-reaction-table">AWS CodeCommit User Guide</a>.</p>
    #
    # @return [Types::PutCommentReactionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_comment_reaction(
    #     comment_id: 'commentId', # required
    #     reaction_value: 'reactionValue' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutCommentReactionOutput
    #
    def put_comment_reaction(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutCommentReactionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutCommentReactionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutCommentReaction
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommentDeletedException, Errors::CommentDoesNotExistException, Errors::CommentIdRequiredException, Errors::InvalidCommentIdException, Errors::InvalidReactionValueException, Errors::ReactionLimitExceededException, Errors::ReactionValueRequiredException]),
        data_parser: Parsers::PutCommentReaction
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutCommentReaction,
        stubs: @stubs,
        params_class: Params::PutCommentReactionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_comment_reaction
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates a file in a branch in an AWS CodeCommit repository, and generates a commit for the addition in the specified branch.</p>
    #
    # @param [Hash] params
    #   See {Types::PutFileInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to add or update the file.</p>
    #
    # @option params [String] :branch_name
    #   <p>The name of the branch where you want to add or update the file. If this is an empty
    #               repository, this branch is created.</p>
    #
    # @option params [String] :file_content
    #   <p>The content of the file, in binary object format. </p>
    #
    # @option params [String] :file_path
    #   <p>The name of the file you want to add or update, including the relative path to the file in the repository.</p>
    #           <note>
    #               <p>If the path does not currently exist in the repository, the path is created as part of adding
    #                   the file.</p>
    #            </note>
    #
    # @option params [String] :file_mode
    #   <p>The file mode permissions of the blob. Valid file mode permissions are listed
    #               here.</p>
    #
    # @option params [String] :parent_commit_id
    #   <p>The full commit ID of the head commit in the branch where you want to add or update the file. If this is an empty repository,
    #               no commit ID is required. If this is not an empty repository, a commit ID is required. </p>
    #           <p>The commit ID must match the ID of the head commit at the time of the operation.
    #               Otherwise, an error occurs, and the file is not added or updated.</p>
    #
    # @option params [String] :commit_message
    #   <p>A message about why this file was added or updated. Although it is optional, a message
    #               makes the commit history for your repository more useful.</p>
    #
    # @option params [String] :name
    #   <p>The name of the person adding or updating the file. Although it is optional, a name
    #               makes the commit history for your repository more useful.</p>
    #
    # @option params [String] :email
    #   <p>An email address for the person adding or updating the file.</p>
    #
    # @return [Types::PutFileOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_file(
    #     repository_name: 'repositoryName', # required
    #     branch_name: 'branchName', # required
    #     file_content: 'fileContent', # required
    #     file_path: 'filePath', # required
    #     file_mode: 'EXECUTABLE', # accepts ["EXECUTABLE", "NORMAL", "SYMLINK"]
    #     parent_commit_id: 'parentCommitId',
    #     commit_message: 'commitMessage',
    #     name: 'name',
    #     email: 'email'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutFileOutput
    #   resp.data.commit_id #=> String
    #   resp.data.blob_id #=> String
    #   resp.data.tree_id #=> String
    #
    def put_file(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutFileInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutFileInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutFile
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BranchDoesNotExistException, Errors::BranchNameIsTagNameException, Errors::BranchNameRequiredException, Errors::CommitMessageLengthExceededException, Errors::DirectoryNameConflictsWithFileNameException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::FileContentRequiredException, Errors::FileContentSizeLimitExceededException, Errors::FileNameConflictsWithDirectoryNameException, Errors::FilePathConflictsWithSubmodulePathException, Errors::FolderContentSizeLimitExceededException, Errors::InvalidBranchNameException, Errors::InvalidDeletionParameterException, Errors::InvalidEmailException, Errors::InvalidFileModeException, Errors::InvalidParentCommitIdException, Errors::InvalidPathException, Errors::InvalidRepositoryNameException, Errors::NameLengthExceededException, Errors::ParentCommitDoesNotExistException, Errors::ParentCommitIdOutdatedException, Errors::ParentCommitIdRequiredException, Errors::PathRequiredException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException, Errors::SameFileContentException]),
        data_parser: Parsers::PutFile
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutFile,
        stubs: @stubs,
        params_class: Params::PutFileOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_file
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Replaces all triggers for a repository. Used to create or delete triggers.</p>
    #
    # @param [Hash] params
    #   See {Types::PutRepositoryTriggersInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository where you want to create or update the trigger.</p>
    #
    # @option params [Array<RepositoryTrigger>] :triggers
    #   <p>The JSON block of configuration information for each trigger.</p>
    #
    # @return [Types::PutRepositoryTriggersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.put_repository_triggers(
    #     repository_name: 'repositoryName', # required
    #     triggers: [
    #       {
    #         name: 'name', # required
    #         destination_arn: 'destinationArn', # required
    #         custom_data: 'customData',
    #         branches: [
    #           'member'
    #         ],
    #         events: [
    #           'all' # accepts ["all", "updateReference", "createReference", "deleteReference"]
    #         ] # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::PutRepositoryTriggersOutput
    #   resp.data.configuration_id #=> String
    #
    def put_repository_triggers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::PutRepositoryTriggersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::PutRepositoryTriggersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::PutRepositoryTriggers
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidRepositoryNameException, Errors::InvalidRepositoryTriggerBranchNameException, Errors::InvalidRepositoryTriggerCustomDataException, Errors::InvalidRepositoryTriggerDestinationArnException, Errors::InvalidRepositoryTriggerEventsException, Errors::InvalidRepositoryTriggerNameException, Errors::InvalidRepositoryTriggerRegionException, Errors::MaximumBranchesExceededException, Errors::MaximumRepositoryTriggersExceededException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException, Errors::RepositoryTriggerBranchNameListRequiredException, Errors::RepositoryTriggerDestinationArnRequiredException, Errors::RepositoryTriggerEventsListRequiredException, Errors::RepositoryTriggerNameRequiredException, Errors::RepositoryTriggersListRequiredException]),
        data_parser: Parsers::PutRepositoryTriggers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::PutRepositoryTriggers,
        stubs: @stubs,
        params_class: Params::PutRepositoryTriggersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :put_repository_triggers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds or updates tags for a resource in AWS CodeCommit. For a list of valid resources
    #             in AWS CodeCommit, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats">CodeCommit Resources and Operations</a> in the <i>AWS CodeCommit User
    #                 Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::TagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which you want to add or update tags.</p>
    #
    # @option params [Hash<String, String>] :tags
    #   <p>The key-value pair to use when tagging this repository.</p>
    #
    # @return [Types::TagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.tag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tags: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TagResourceOutput
    #
    def tag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRepositoryNameException, Errors::InvalidResourceArnException, Errors::InvalidSystemTagUsageException, Errors::InvalidTagsMapException, Errors::RepositoryDoesNotExistException, Errors::ResourceArnRequiredException, Errors::TagPolicyException, Errors::TagsMapRequiredException, Errors::TooManyTagsException]),
        data_parser: Parsers::TagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TagResource,
        stubs: @stubs,
        params_class: Params::TagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :tag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Tests the functionality of repository triggers by sending information to the trigger
    #             target. If real data is available in the repository, the test sends data from the last
    #             commit. If no data is available, sample data is generated.</p>
    #
    # @param [Hash] params
    #   See {Types::TestRepositoryTriggersInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository in which to test the triggers.</p>
    #
    # @option params [Array<RepositoryTrigger>] :triggers
    #   <p>The list of triggers to test.</p>
    #
    # @return [Types::TestRepositoryTriggersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.test_repository_triggers(
    #     repository_name: 'repositoryName', # required
    #     triggers: [
    #       {
    #         name: 'name', # required
    #         destination_arn: 'destinationArn', # required
    #         custom_data: 'customData',
    #         branches: [
    #           'member'
    #         ],
    #         events: [
    #           'all' # accepts ["all", "updateReference", "createReference", "deleteReference"]
    #         ] # required
    #       }
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::TestRepositoryTriggersOutput
    #   resp.data.successful_executions #=> Array<String>
    #   resp.data.successful_executions[0] #=> String
    #   resp.data.failed_executions #=> Array<RepositoryTriggerExecutionFailure>
    #   resp.data.failed_executions[0] #=> Types::RepositoryTriggerExecutionFailure
    #   resp.data.failed_executions[0].trigger #=> String
    #   resp.data.failed_executions[0].failure_message #=> String
    #
    def test_repository_triggers(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::TestRepositoryTriggersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::TestRepositoryTriggersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::TestRepositoryTriggers
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidRepositoryNameException, Errors::InvalidRepositoryTriggerBranchNameException, Errors::InvalidRepositoryTriggerCustomDataException, Errors::InvalidRepositoryTriggerDestinationArnException, Errors::InvalidRepositoryTriggerEventsException, Errors::InvalidRepositoryTriggerNameException, Errors::InvalidRepositoryTriggerRegionException, Errors::MaximumBranchesExceededException, Errors::MaximumRepositoryTriggersExceededException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException, Errors::RepositoryTriggerBranchNameListRequiredException, Errors::RepositoryTriggerDestinationArnRequiredException, Errors::RepositoryTriggerEventsListRequiredException, Errors::RepositoryTriggerNameRequiredException, Errors::RepositoryTriggersListRequiredException]),
        data_parser: Parsers::TestRepositoryTriggers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::TestRepositoryTriggers,
        stubs: @stubs,
        params_class: Params::TestRepositoryTriggersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :test_repository_triggers
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes tags for a resource in AWS CodeCommit. For a list of valid resources in AWS
    #             CodeCommit, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/auth-and-access-control-iam-access-control-identity-based.html#arn-formats">CodeCommit Resources and Operations</a> in the <i>AWS CodeCommit User
    #                 Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::UntagResourceInput}.
    #
    # @option params [String] :resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource to which you want to remove tags.</p>
    #
    # @option params [Array<String>] :tag_keys
    #   <p>The tag key for each tag that you want to remove from the resource.</p>
    #
    # @return [Types::UntagResourceOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.untag_resource(
    #     resource_arn: 'resourceArn', # required
    #     tag_keys: [
    #       'member'
    #     ] # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UntagResourceOutput
    #
    def untag_resource(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UntagResourceInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UntagResourceInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UntagResource
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRepositoryNameException, Errors::InvalidResourceArnException, Errors::InvalidSystemTagUsageException, Errors::InvalidTagKeysListException, Errors::RepositoryDoesNotExistException, Errors::ResourceArnRequiredException, Errors::TagKeysListRequiredException, Errors::TagPolicyException, Errors::TooManyTagsException]),
        data_parser: Parsers::UntagResource
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UntagResource,
        stubs: @stubs,
        params_class: Params::UntagResourceOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :untag_resource
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the content of an approval rule template. You can change the number of
    #             required approvals, the membership of the approval rule, and whether an approval pool is
    #             defined.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApprovalRuleTemplateContentInput}.
    #
    # @option params [String] :approval_rule_template_name
    #   <p>The name of the approval rule template where you want to update the content of the rule. </p>
    #
    # @option params [String] :new_rule_content
    #   <p>The content that replaces the existing content of the rule. Content statements must be
    #               complete. You cannot provide only the changes.</p>
    #
    # @option params [String] :existing_rule_content_sha256
    #   <p>The SHA-256 hash signature for the content of the approval rule. You can retrieve this
    #               information by using
    #               <a>GetPullRequest</a>.</p>
    #
    # @return [Types::UpdateApprovalRuleTemplateContentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_approval_rule_template_content(
    #     approval_rule_template_name: 'approvalRuleTemplateName', # required
    #     new_rule_content: 'newRuleContent', # required
    #     existing_rule_content_sha256: 'existingRuleContentSha256'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApprovalRuleTemplateContentOutput
    #   resp.data.approval_rule_template #=> Types::ApprovalRuleTemplate
    #   resp.data.approval_rule_template.approval_rule_template_id #=> String
    #   resp.data.approval_rule_template.approval_rule_template_name #=> String
    #   resp.data.approval_rule_template.approval_rule_template_description #=> String
    #   resp.data.approval_rule_template.approval_rule_template_content #=> String
    #   resp.data.approval_rule_template.rule_content_sha256 #=> String
    #   resp.data.approval_rule_template.last_modified_date #=> Time
    #   resp.data.approval_rule_template.creation_date #=> Time
    #   resp.data.approval_rule_template.last_modified_user #=> String
    #
    def update_approval_rule_template_content(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApprovalRuleTemplateContentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApprovalRuleTemplateContentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApprovalRuleTemplateContent
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApprovalRuleTemplateContentRequiredException, Errors::ApprovalRuleTemplateDoesNotExistException, Errors::ApprovalRuleTemplateNameRequiredException, Errors::InvalidApprovalRuleTemplateContentException, Errors::InvalidApprovalRuleTemplateNameException, Errors::InvalidRuleContentSha256Exception]),
        data_parser: Parsers::UpdateApprovalRuleTemplateContent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApprovalRuleTemplateContent,
        stubs: @stubs,
        params_class: Params::UpdateApprovalRuleTemplateContentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_approval_rule_template_content
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the description for a specified approval rule template.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApprovalRuleTemplateDescriptionInput}.
    #
    # @option params [String] :approval_rule_template_name
    #   <p>The name of the template for which you want to update the description.</p>
    #
    # @option params [String] :approval_rule_template_description
    #   <p>The updated description of the approval rule template.</p>
    #
    # @return [Types::UpdateApprovalRuleTemplateDescriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_approval_rule_template_description(
    #     approval_rule_template_name: 'approvalRuleTemplateName', # required
    #     approval_rule_template_description: 'approvalRuleTemplateDescription' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApprovalRuleTemplateDescriptionOutput
    #   resp.data.approval_rule_template #=> Types::ApprovalRuleTemplate
    #   resp.data.approval_rule_template.approval_rule_template_id #=> String
    #   resp.data.approval_rule_template.approval_rule_template_name #=> String
    #   resp.data.approval_rule_template.approval_rule_template_description #=> String
    #   resp.data.approval_rule_template.approval_rule_template_content #=> String
    #   resp.data.approval_rule_template.rule_content_sha256 #=> String
    #   resp.data.approval_rule_template.last_modified_date #=> Time
    #   resp.data.approval_rule_template.creation_date #=> Time
    #   resp.data.approval_rule_template.last_modified_user #=> String
    #
    def update_approval_rule_template_description(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApprovalRuleTemplateDescriptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApprovalRuleTemplateDescriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApprovalRuleTemplateDescription
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApprovalRuleTemplateDoesNotExistException, Errors::ApprovalRuleTemplateNameRequiredException, Errors::InvalidApprovalRuleTemplateDescriptionException, Errors::InvalidApprovalRuleTemplateNameException]),
        data_parser: Parsers::UpdateApprovalRuleTemplateDescription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApprovalRuleTemplateDescription,
        stubs: @stubs,
        params_class: Params::UpdateApprovalRuleTemplateDescriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_approval_rule_template_description
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the name of a specified approval rule template.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateApprovalRuleTemplateNameInput}.
    #
    # @option params [String] :old_approval_rule_template_name
    #   <p>The current name of the approval rule template.</p>
    #
    # @option params [String] :new_approval_rule_template_name
    #   <p>The new name you want to apply to the approval rule template.</p>
    #
    # @return [Types::UpdateApprovalRuleTemplateNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_approval_rule_template_name(
    #     old_approval_rule_template_name: 'oldApprovalRuleTemplateName', # required
    #     new_approval_rule_template_name: 'newApprovalRuleTemplateName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateApprovalRuleTemplateNameOutput
    #   resp.data.approval_rule_template #=> Types::ApprovalRuleTemplate
    #   resp.data.approval_rule_template.approval_rule_template_id #=> String
    #   resp.data.approval_rule_template.approval_rule_template_name #=> String
    #   resp.data.approval_rule_template.approval_rule_template_description #=> String
    #   resp.data.approval_rule_template.approval_rule_template_content #=> String
    #   resp.data.approval_rule_template.rule_content_sha256 #=> String
    #   resp.data.approval_rule_template.last_modified_date #=> Time
    #   resp.data.approval_rule_template.creation_date #=> Time
    #   resp.data.approval_rule_template.last_modified_user #=> String
    #
    def update_approval_rule_template_name(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateApprovalRuleTemplateNameInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateApprovalRuleTemplateNameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateApprovalRuleTemplateName
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApprovalRuleTemplateDoesNotExistException, Errors::ApprovalRuleTemplateNameAlreadyExistsException, Errors::ApprovalRuleTemplateNameRequiredException, Errors::InvalidApprovalRuleTemplateNameException]),
        data_parser: Parsers::UpdateApprovalRuleTemplateName
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateApprovalRuleTemplateName,
        stubs: @stubs,
        params_class: Params::UpdateApprovalRuleTemplateNameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_approval_rule_template_name
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Replaces the contents of a comment.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateCommentInput}.
    #
    # @option params [String] :comment_id
    #   <p>The system-generated ID of the comment you want to update. To get this ID, use <a>GetCommentsForComparedCommit</a>
    #               or <a>GetCommentsForPullRequest</a>.</p>
    #
    # @option params [String] :content
    #   <p>The updated content to replace the existing content of the comment.</p>
    #
    # @return [Types::UpdateCommentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_comment(
    #     comment_id: 'commentId', # required
    #     content: 'content' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateCommentOutput
    #   resp.data.comment #=> Types::Comment
    #   resp.data.comment.comment_id #=> String
    #   resp.data.comment.content #=> String
    #   resp.data.comment.in_reply_to #=> String
    #   resp.data.comment.creation_date #=> Time
    #   resp.data.comment.last_modified_date #=> Time
    #   resp.data.comment.author_arn #=> String
    #   resp.data.comment.deleted #=> Boolean
    #   resp.data.comment.client_request_token #=> String
    #   resp.data.comment.caller_reactions #=> Array<String>
    #   resp.data.comment.caller_reactions[0] #=> String
    #   resp.data.comment.reaction_counts #=> Hash<String, Integer>
    #   resp.data.comment.reaction_counts['key'] #=> Integer
    #
    def update_comment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateCommentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateCommentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateComment
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::CommentContentRequiredException, Errors::CommentContentSizeLimitExceededException, Errors::CommentDeletedException, Errors::CommentDoesNotExistException, Errors::CommentIdRequiredException, Errors::CommentNotCreatedByCallerException, Errors::InvalidCommentIdException]),
        data_parser: Parsers::UpdateComment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateComment,
        stubs: @stubs,
        params_class: Params::UpdateCommentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_comment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets or changes the default branch name for the specified repository.</p>
    #         <note>
    #             <p>If you use this operation to change the default branch name to the current default branch name, a success message is returned even though the default branch did not change.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateDefaultBranchInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository to set or change the default branch for.</p>
    #
    # @option params [String] :default_branch_name
    #   <p>The name of the branch to set as the default.</p>
    #
    # @return [Types::UpdateDefaultBranchOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_default_branch(
    #     repository_name: 'repositoryName', # required
    #     default_branch_name: 'defaultBranchName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDefaultBranchOutput
    #
    def update_default_branch(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDefaultBranchInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDefaultBranchInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDefaultBranch
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::BranchDoesNotExistException, Errors::BranchNameRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidBranchNameException, Errors::InvalidRepositoryNameException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::UpdateDefaultBranch
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDefaultBranch,
        stubs: @stubs,
        params_class: Params::UpdateDefaultBranchOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_default_branch
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the structure of an approval rule created specifically for a pull request. For example, you can change the number of required approvers and
    #             the approval pool for approvers. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePullRequestApprovalRuleContentInput}.
    #
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request.</p>
    #
    # @option params [String] :approval_rule_name
    #   <p>The name of the approval rule you want to update.</p>
    #
    # @option params [String] :existing_rule_content_sha256
    #   <p>The SHA-256 hash signature for the content of the approval rule. You can retrieve this
    #               information by using
    #               <a>GetPullRequest</a>.</p>
    #
    # @option params [String] :new_rule_content
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
    # @return [Types::UpdatePullRequestApprovalRuleContentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pull_request_approval_rule_content(
    #     pull_request_id: 'pullRequestId', # required
    #     approval_rule_name: 'approvalRuleName', # required
    #     existing_rule_content_sha256: 'existingRuleContentSha256',
    #     new_rule_content: 'newRuleContent' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePullRequestApprovalRuleContentOutput
    #   resp.data.approval_rule #=> Types::ApprovalRule
    #   resp.data.approval_rule.approval_rule_id #=> String
    #   resp.data.approval_rule.approval_rule_name #=> String
    #   resp.data.approval_rule.approval_rule_content #=> String
    #   resp.data.approval_rule.rule_content_sha256 #=> String
    #   resp.data.approval_rule.last_modified_date #=> Time
    #   resp.data.approval_rule.creation_date #=> Time
    #   resp.data.approval_rule.last_modified_user #=> String
    #   resp.data.approval_rule.origin_approval_rule_template #=> Types::OriginApprovalRuleTemplate
    #   resp.data.approval_rule.origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.data.approval_rule.origin_approval_rule_template.approval_rule_template_name #=> String
    #
    def update_pull_request_approval_rule_content(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePullRequestApprovalRuleContentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePullRequestApprovalRuleContentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePullRequestApprovalRuleContent
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApprovalRuleContentRequiredException, Errors::ApprovalRuleDoesNotExistException, Errors::ApprovalRuleNameRequiredException, Errors::CannotModifyApprovalRuleFromTemplateException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidApprovalRuleContentException, Errors::InvalidApprovalRuleNameException, Errors::InvalidPullRequestIdException, Errors::InvalidRuleContentSha256Exception, Errors::PullRequestAlreadyClosedException, Errors::PullRequestDoesNotExistException, Errors::PullRequestIdRequiredException]),
        data_parser: Parsers::UpdatePullRequestApprovalRuleContent
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePullRequestApprovalRuleContent,
        stubs: @stubs,
        params_class: Params::UpdatePullRequestApprovalRuleContentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_pull_request_approval_rule_content
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the state of a user's approval on a pull request. The user is derived from the signed-in account when the request is made.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePullRequestApprovalStateInput}.
    #
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request.</p>
    #
    # @option params [String] :revision_id
    #   <p>The system-generated ID of the revision.</p>
    #
    # @option params [String] :approval_state
    #   <p>The approval state to associate with the user on the pull request.</p>
    #
    # @return [Types::UpdatePullRequestApprovalStateOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pull_request_approval_state(
    #     pull_request_id: 'pullRequestId', # required
    #     revision_id: 'revisionId', # required
    #     approval_state: 'APPROVE' # required - accepts ["APPROVE", "REVOKE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePullRequestApprovalStateOutput
    #
    def update_pull_request_approval_state(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePullRequestApprovalStateInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePullRequestApprovalStateInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePullRequestApprovalState
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ApprovalStateRequiredException, Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidApprovalStateException, Errors::InvalidPullRequestIdException, Errors::InvalidRevisionIdException, Errors::MaximumNumberOfApprovalsExceededException, Errors::PullRequestAlreadyClosedException, Errors::PullRequestCannotBeApprovedByAuthorException, Errors::PullRequestDoesNotExistException, Errors::PullRequestIdRequiredException, Errors::RevisionIdRequiredException, Errors::RevisionNotCurrentException]),
        data_parser: Parsers::UpdatePullRequestApprovalState
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePullRequestApprovalState,
        stubs: @stubs,
        params_class: Params::UpdatePullRequestApprovalStateOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_pull_request_approval_state
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Replaces the contents of the description of a pull request.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePullRequestDescriptionInput}.
    #
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    # @option params [String] :description
    #   <p>The updated content of the description for the pull request. This content replaces the
    #               existing description.</p>
    #
    # @return [Types::UpdatePullRequestDescriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pull_request_description(
    #     pull_request_id: 'pullRequestId', # required
    #     description: 'description' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePullRequestDescriptionOutput
    #   resp.data.pull_request #=> Types::PullRequest
    #   resp.data.pull_request.pull_request_id #=> String
    #   resp.data.pull_request.title #=> String
    #   resp.data.pull_request.description #=> String
    #   resp.data.pull_request.last_activity_date #=> Time
    #   resp.data.pull_request.creation_date #=> Time
    #   resp.data.pull_request.pull_request_status #=> String, one of ["OPEN", "CLOSED"]
    #   resp.data.pull_request.author_arn #=> String
    #   resp.data.pull_request.pull_request_targets #=> Array<PullRequestTarget>
    #   resp.data.pull_request.pull_request_targets[0] #=> Types::PullRequestTarget
    #   resp.data.pull_request.pull_request_targets[0].repository_name #=> String
    #   resp.data.pull_request.pull_request_targets[0].source_reference #=> String
    #   resp.data.pull_request.pull_request_targets[0].destination_reference #=> String
    #   resp.data.pull_request.pull_request_targets[0].destination_commit #=> String
    #   resp.data.pull_request.pull_request_targets[0].source_commit #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_base #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata #=> Types::MergeMetadata
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.is_merged #=> Boolean
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merged_by #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merge_commit_id #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merge_option #=> String, one of ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #   resp.data.pull_request.client_request_token #=> String
    #   resp.data.pull_request.revision_id #=> String
    #   resp.data.pull_request.approval_rules #=> Array<ApprovalRule>
    #   resp.data.pull_request.approval_rules[0] #=> Types::ApprovalRule
    #   resp.data.pull_request.approval_rules[0].approval_rule_id #=> String
    #   resp.data.pull_request.approval_rules[0].approval_rule_name #=> String
    #   resp.data.pull_request.approval_rules[0].approval_rule_content #=> String
    #   resp.data.pull_request.approval_rules[0].rule_content_sha256 #=> String
    #   resp.data.pull_request.approval_rules[0].last_modified_date #=> Time
    #   resp.data.pull_request.approval_rules[0].creation_date #=> Time
    #   resp.data.pull_request.approval_rules[0].last_modified_user #=> String
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template #=> Types::OriginApprovalRuleTemplate
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_name #=> String
    #
    def update_pull_request_description(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePullRequestDescriptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePullRequestDescriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePullRequestDescription
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidDescriptionException, Errors::InvalidPullRequestIdException, Errors::PullRequestAlreadyClosedException, Errors::PullRequestDoesNotExistException, Errors::PullRequestIdRequiredException]),
        data_parser: Parsers::UpdatePullRequestDescription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePullRequestDescription,
        stubs: @stubs,
        params_class: Params::UpdatePullRequestDescriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_pull_request_description
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the status of a pull request. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePullRequestStatusInput}.
    #
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    # @option params [String] :pull_request_status
    #   <p>The status of the pull request. The only valid operations are to update the status
    #               from <code>OPEN</code> to <code>OPEN</code>, <code>OPEN</code> to <code>CLOSED</code> or
    #               from <code>CLOSED</code> to <code>CLOSED</code>.</p>
    #
    # @return [Types::UpdatePullRequestStatusOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pull_request_status(
    #     pull_request_id: 'pullRequestId', # required
    #     pull_request_status: 'OPEN' # required - accepts ["OPEN", "CLOSED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePullRequestStatusOutput
    #   resp.data.pull_request #=> Types::PullRequest
    #   resp.data.pull_request.pull_request_id #=> String
    #   resp.data.pull_request.title #=> String
    #   resp.data.pull_request.description #=> String
    #   resp.data.pull_request.last_activity_date #=> Time
    #   resp.data.pull_request.creation_date #=> Time
    #   resp.data.pull_request.pull_request_status #=> String, one of ["OPEN", "CLOSED"]
    #   resp.data.pull_request.author_arn #=> String
    #   resp.data.pull_request.pull_request_targets #=> Array<PullRequestTarget>
    #   resp.data.pull_request.pull_request_targets[0] #=> Types::PullRequestTarget
    #   resp.data.pull_request.pull_request_targets[0].repository_name #=> String
    #   resp.data.pull_request.pull_request_targets[0].source_reference #=> String
    #   resp.data.pull_request.pull_request_targets[0].destination_reference #=> String
    #   resp.data.pull_request.pull_request_targets[0].destination_commit #=> String
    #   resp.data.pull_request.pull_request_targets[0].source_commit #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_base #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata #=> Types::MergeMetadata
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.is_merged #=> Boolean
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merged_by #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merge_commit_id #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merge_option #=> String, one of ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #   resp.data.pull_request.client_request_token #=> String
    #   resp.data.pull_request.revision_id #=> String
    #   resp.data.pull_request.approval_rules #=> Array<ApprovalRule>
    #   resp.data.pull_request.approval_rules[0] #=> Types::ApprovalRule
    #   resp.data.pull_request.approval_rules[0].approval_rule_id #=> String
    #   resp.data.pull_request.approval_rules[0].approval_rule_name #=> String
    #   resp.data.pull_request.approval_rules[0].approval_rule_content #=> String
    #   resp.data.pull_request.approval_rules[0].rule_content_sha256 #=> String
    #   resp.data.pull_request.approval_rules[0].last_modified_date #=> Time
    #   resp.data.pull_request.approval_rules[0].creation_date #=> Time
    #   resp.data.pull_request.approval_rules[0].last_modified_user #=> String
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template #=> Types::OriginApprovalRuleTemplate
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_name #=> String
    #
    def update_pull_request_status(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePullRequestStatusInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePullRequestStatusInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePullRequestStatus
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidPullRequestIdException, Errors::InvalidPullRequestStatusException, Errors::InvalidPullRequestStatusUpdateException, Errors::PullRequestDoesNotExistException, Errors::PullRequestIdRequiredException, Errors::PullRequestStatusRequiredException]),
        data_parser: Parsers::UpdatePullRequestStatus
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePullRequestStatus,
        stubs: @stubs,
        params_class: Params::UpdatePullRequestStatusOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_pull_request_status
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Replaces the title of a pull request.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdatePullRequestTitleInput}.
    #
    # @option params [String] :pull_request_id
    #   <p>The system-generated ID of the pull request. To get this ID, use <a>ListPullRequests</a>.</p>
    #
    # @option params [String] :title
    #   <p>The updated title of the pull request. This replaces the existing title.</p>
    #
    # @return [Types::UpdatePullRequestTitleOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_pull_request_title(
    #     pull_request_id: 'pullRequestId', # required
    #     title: 'title' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdatePullRequestTitleOutput
    #   resp.data.pull_request #=> Types::PullRequest
    #   resp.data.pull_request.pull_request_id #=> String
    #   resp.data.pull_request.title #=> String
    #   resp.data.pull_request.description #=> String
    #   resp.data.pull_request.last_activity_date #=> Time
    #   resp.data.pull_request.creation_date #=> Time
    #   resp.data.pull_request.pull_request_status #=> String, one of ["OPEN", "CLOSED"]
    #   resp.data.pull_request.author_arn #=> String
    #   resp.data.pull_request.pull_request_targets #=> Array<PullRequestTarget>
    #   resp.data.pull_request.pull_request_targets[0] #=> Types::PullRequestTarget
    #   resp.data.pull_request.pull_request_targets[0].repository_name #=> String
    #   resp.data.pull_request.pull_request_targets[0].source_reference #=> String
    #   resp.data.pull_request.pull_request_targets[0].destination_reference #=> String
    #   resp.data.pull_request.pull_request_targets[0].destination_commit #=> String
    #   resp.data.pull_request.pull_request_targets[0].source_commit #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_base #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata #=> Types::MergeMetadata
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.is_merged #=> Boolean
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merged_by #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merge_commit_id #=> String
    #   resp.data.pull_request.pull_request_targets[0].merge_metadata.merge_option #=> String, one of ["FAST_FORWARD_MERGE", "SQUASH_MERGE", "THREE_WAY_MERGE"]
    #   resp.data.pull_request.client_request_token #=> String
    #   resp.data.pull_request.revision_id #=> String
    #   resp.data.pull_request.approval_rules #=> Array<ApprovalRule>
    #   resp.data.pull_request.approval_rules[0] #=> Types::ApprovalRule
    #   resp.data.pull_request.approval_rules[0].approval_rule_id #=> String
    #   resp.data.pull_request.approval_rules[0].approval_rule_name #=> String
    #   resp.data.pull_request.approval_rules[0].approval_rule_content #=> String
    #   resp.data.pull_request.approval_rules[0].rule_content_sha256 #=> String
    #   resp.data.pull_request.approval_rules[0].last_modified_date #=> Time
    #   resp.data.pull_request.approval_rules[0].creation_date #=> Time
    #   resp.data.pull_request.approval_rules[0].last_modified_user #=> String
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template #=> Types::OriginApprovalRuleTemplate
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_id #=> String
    #   resp.data.pull_request.approval_rules[0].origin_approval_rule_template.approval_rule_template_name #=> String
    #
    def update_pull_request_title(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdatePullRequestTitleInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdatePullRequestTitleInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdatePullRequestTitle
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidPullRequestIdException, Errors::InvalidTitleException, Errors::PullRequestAlreadyClosedException, Errors::PullRequestDoesNotExistException, Errors::PullRequestIdRequiredException, Errors::TitleRequiredException]),
        data_parser: Parsers::UpdatePullRequestTitle
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdatePullRequestTitle,
        stubs: @stubs,
        params_class: Params::UpdatePullRequestTitleOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_pull_request_title
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Sets or changes the comment or description for a repository.</p>
    #         <note>
    #             <p>The description field for a repository accepts all HTML characters and all valid
    #                 Unicode characters. Applications that do not HTML-encode the description and display
    #                 it in a webpage can expose users to potentially malicious code. Make sure that you
    #                 HTML-encode the description field in any application that uses this API to display
    #                 the repository description on a webpage.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::UpdateRepositoryDescriptionInput}.
    #
    # @option params [String] :repository_name
    #   <p>The name of the repository to set or change the comment or description for.</p>
    #
    # @option params [String] :repository_description
    #   <p>The new comment or description for the specified repository. Repository descriptions are limited to 1,000 characters.</p>
    #
    # @return [Types::UpdateRepositoryDescriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_repository_description(
    #     repository_name: 'repositoryName', # required
    #     repository_description: 'repositoryDescription'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRepositoryDescriptionOutput
    #
    def update_repository_description(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRepositoryDescriptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRepositoryDescriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRepositoryDescription
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::EncryptionIntegrityChecksFailedException, Errors::EncryptionKeyAccessDeniedException, Errors::EncryptionKeyDisabledException, Errors::EncryptionKeyNotFoundException, Errors::EncryptionKeyUnavailableException, Errors::InvalidRepositoryDescriptionException, Errors::InvalidRepositoryNameException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::UpdateRepositoryDescription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRepositoryDescription,
        stubs: @stubs,
        params_class: Params::UpdateRepositoryDescriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_repository_description
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Renames a repository. The repository name must be unique across the calling AWS
    #             account. Repository names are limited to 100 alphanumeric, dash, and underscore
    #             characters, and cannot include certain characters. The suffix .git is prohibited. For
    #             more information about the limits on repository names, see <a href="https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html">Limits</a> in the AWS CodeCommit
    #             User Guide.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateRepositoryNameInput}.
    #
    # @option params [String] :old_name
    #   <p>The current name of the repository.</p>
    #
    # @option params [String] :new_name
    #   <p>The new name for the repository.</p>
    #
    # @return [Types::UpdateRepositoryNameOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_repository_name(
    #     old_name: 'oldName', # required
    #     new_name: 'newName' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateRepositoryNameOutput
    #
    def update_repository_name(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateRepositoryNameInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateRepositoryNameInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateRepositoryName
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::SignatureV4,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidRepositoryNameException, Errors::RepositoryDoesNotExistException, Errors::RepositoryNameExistsException, Errors::RepositoryNameRequiredException]),
        data_parser: Parsers::UpdateRepositoryName
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateRepositoryName,
        stubs: @stubs,
        params_class: Params::UpdateRepositoryNameOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_repository_name
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
