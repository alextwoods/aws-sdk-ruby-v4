# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::WorkDocs
  # An API client for AWSGorillaBoyService
  # See {#initialize} for a full list of supported configuration options
  # <p>The WorkDocs API is designed for the following use cases:</p>
  #         <ul>
  #             <li>
  #                 <p>File Migration: File migration applications are supported for users who
  #                     want to migrate their files from an on-premises or off-premises file system or
  #                     service. Users can insert files into a user directory structure, as well as
  #                     allow for basic metadata changes, such as modifications to the permissions of
  #                     files.</p>
  #             </li>
  #             <li>
  #                 <p>Security: Support security applications are supported for users who have
  #                     additional security needs, such as antivirus or data loss prevention. The API
  #                     actions, along with AWS CloudTrail, allow these applications to detect when
  #                     changes occur in Amazon WorkDocs. Then, the application can take the necessary
  #                     actions and replace the target file. If the target file violates the policy, the
  #                     application can also choose to email the user.</p>
  #             </li>
  #             <li>
  #                 <p>eDiscovery/Analytics: General administrative applications are supported,
  #                     such as eDiscovery and analytics. These applications can choose to mimic or
  #                     record the actions in an Amazon WorkDocs site, along with AWS CloudTrail, to
  #                     replicate data for eDiscovery, backup, or analytical applications.</p>
  #             </li>
  #          </ul>
  #         <p>All Amazon WorkDocs API actions are Amazon authenticated and certificate-signed.
  #             They not only require the use of the AWS SDK, but also allow for the exclusive use of
  #             IAM users and roles to help facilitate access, trust, and permission policies. By
  #             creating a role and allowing an IAM user to access the Amazon WorkDocs site, the IAM
  #             user gains full administrative visibility into the entire Amazon WorkDocs site (or as
  #             set in the IAM policy). This includes, but is not limited to, the ability to modify file
  #             permissions and upload any file to any user. This allows developers to perform the three
  #             use cases above, as well as give users the ability to grant access on a selective basis
  #             using the IAM model.</p>
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
    def initialize(config = AWS::SDK::WorkDocs::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Aborts the upload of the specified document version that was previously initiated
    #             by <a>InitiateDocumentVersionUpload</a>. The client should make this call
    #             only when it no longer intends to upload the document version, or fails to do
    #             so.</p>
    #
    # @param [Hash] params
    #   See {Types::AbortDocumentVersionUploadInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    #
    # @option params [String] :version_id
    #   <p>The ID of the version.</p>
    #
    # @return [Types::AbortDocumentVersionUploadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.abort_document_version_upload(
    #     authentication_token: 'AuthenticationToken',
    #     document_id: 'DocumentId', # required
    #     version_id: 'VersionId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AbortDocumentVersionUploadOutput
    #
    def abort_document_version_upload(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AbortDocumentVersionUploadInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AbortDocumentVersionUploadInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AbortDocumentVersionUpload
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::FailedDependencyException, Errors::ProhibitedStateException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::AbortDocumentVersionUpload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AbortDocumentVersionUpload,
        stubs: @stubs,
        params_class: Params::AbortDocumentVersionUploadOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :abort_document_version_upload
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Activates the specified user. Only active users can access Amazon
    #             WorkDocs.</p>
    #
    # @param [Hash] params
    #   See {Types::ActivateUserInput}.
    #
    # @option params [String] :user_id
    #   <p>The ID of the user.</p>
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @return [Types::ActivateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.activate_user(
    #     user_id: 'UserId', # required
    #     authentication_token: 'AuthenticationToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::ActivateUserOutput
    #   resp.data.user #=> Types::User
    #   resp.data.user.id #=> String
    #   resp.data.user.username #=> String
    #   resp.data.user.email_address #=> String
    #   resp.data.user.given_name #=> String
    #   resp.data.user.surname #=> String
    #   resp.data.user.organization_id #=> String
    #   resp.data.user.root_folder_id #=> String
    #   resp.data.user.recycle_bin_folder_id #=> String
    #   resp.data.user.status #=> String, one of ["ACTIVE", "INACTIVE", "PENDING"]
    #   resp.data.user.type #=> String, one of ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"]
    #   resp.data.user.created_timestamp #=> Time
    #   resp.data.user.modified_timestamp #=> Time
    #   resp.data.user.time_zone_id #=> String
    #   resp.data.user.locale #=> String, one of ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"]
    #   resp.data.user.storage #=> Types::UserStorageMetadata
    #   resp.data.user.storage.storage_utilized_in_bytes #=> Integer
    #   resp.data.user.storage.storage_rule #=> Types::StorageRuleType
    #   resp.data.user.storage.storage_rule.storage_allocated_in_bytes #=> Integer
    #   resp.data.user.storage.storage_rule.storage_type #=> String, one of ["UNLIMITED", "QUOTA"]
    #
    def activate_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::ActivateUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::ActivateUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::ActivateUser
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::ActivateUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::ActivateUser,
        stubs: @stubs,
        params_class: Params::ActivateUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :activate_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a set of permissions for the specified folder or document. The resource
    #             permissions are overwritten if the principals already have different
    #             permissions.</p>
    #
    # @param [Hash] params
    #   See {Types::AddResourcePermissionsInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :resource_id
    #   <p>The ID of the resource.</p>
    #
    # @option params [Array<SharePrincipal>] :principals
    #   <p>The users, groups, or organization being granted permission.</p>
    #
    # @option params [NotificationOptions] :notification_options
    #   <p>The notification options.</p>
    #
    # @return [Types::AddResourcePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.add_resource_permissions(
    #     authentication_token: 'AuthenticationToken',
    #     resource_id: 'ResourceId', # required
    #     principals: [
    #       {
    #         id: 'Id', # required
    #         type: 'USER', # required - accepts ["USER", "GROUP", "INVITE", "ANONYMOUS", "ORGANIZATION"]
    #         role: 'VIEWER' # required - accepts ["VIEWER", "CONTRIBUTOR", "OWNER", "COOWNER"]
    #       }
    #     ], # required
    #     notification_options: {
    #       send_email: false,
    #       email_message: 'EmailMessage'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::AddResourcePermissionsOutput
    #   resp.data.share_results #=> Array<ShareResult>
    #   resp.data.share_results[0] #=> Types::ShareResult
    #   resp.data.share_results[0].principal_id #=> String
    #   resp.data.share_results[0].invitee_principal_id #=> String
    #   resp.data.share_results[0].role #=> String, one of ["VIEWER", "CONTRIBUTOR", "OWNER", "COOWNER"]
    #   resp.data.share_results[0].status #=> String, one of ["SUCCESS", "FAILURE"]
    #   resp.data.share_results[0].share_id #=> String
    #   resp.data.share_results[0].status_message #=> String
    #
    def add_resource_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::AddResourcePermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::AddResourcePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::AddResourcePermissions
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::FailedDependencyException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::AddResourcePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::AddResourcePermissions,
        stubs: @stubs,
        params_class: Params::AddResourcePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :add_resource_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds a new comment to the specified document version.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCommentInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    #
    # @option params [String] :version_id
    #   <p>The ID of the document version.</p>
    #
    # @option params [String] :parent_id
    #   <p>The ID of the parent comment.</p>
    #
    # @option params [String] :thread_id
    #   <p>The ID of the root comment in the thread.</p>
    #
    # @option params [String] :text
    #   <p>The text of the comment.</p>
    #
    # @option params [String] :visibility
    #   <p>The visibility of the comment. Options are either PRIVATE, where the comment is
    #               visible only to the comment author and document owner and co-owners, or PUBLIC, where
    #               the comment is visible to document owners, co-owners, and contributors.</p>
    #
    # @option params [Boolean] :notify_collaborators
    #   <p>Set this parameter to TRUE to send an email out to the document collaborators after
    #               the comment is created.</p>
    #
    # @return [Types::CreateCommentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_comment(
    #     authentication_token: 'AuthenticationToken',
    #     document_id: 'DocumentId', # required
    #     version_id: 'VersionId', # required
    #     parent_id: 'ParentId',
    #     thread_id: 'ThreadId',
    #     text: 'Text', # required
    #     visibility: 'PUBLIC', # accepts ["PUBLIC", "PRIVATE"]
    #     notify_collaborators: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCommentOutput
    #   resp.data.comment #=> Types::Comment
    #   resp.data.comment.comment_id #=> String
    #   resp.data.comment.parent_id #=> String
    #   resp.data.comment.thread_id #=> String
    #   resp.data.comment.text #=> String
    #   resp.data.comment.contributor #=> Types::User
    #   resp.data.comment.contributor.id #=> String
    #   resp.data.comment.contributor.username #=> String
    #   resp.data.comment.contributor.email_address #=> String
    #   resp.data.comment.contributor.given_name #=> String
    #   resp.data.comment.contributor.surname #=> String
    #   resp.data.comment.contributor.organization_id #=> String
    #   resp.data.comment.contributor.root_folder_id #=> String
    #   resp.data.comment.contributor.recycle_bin_folder_id #=> String
    #   resp.data.comment.contributor.status #=> String, one of ["ACTIVE", "INACTIVE", "PENDING"]
    #   resp.data.comment.contributor.type #=> String, one of ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"]
    #   resp.data.comment.contributor.created_timestamp #=> Time
    #   resp.data.comment.contributor.modified_timestamp #=> Time
    #   resp.data.comment.contributor.time_zone_id #=> String
    #   resp.data.comment.contributor.locale #=> String, one of ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"]
    #   resp.data.comment.contributor.storage #=> Types::UserStorageMetadata
    #   resp.data.comment.contributor.storage.storage_utilized_in_bytes #=> Integer
    #   resp.data.comment.contributor.storage.storage_rule #=> Types::StorageRuleType
    #   resp.data.comment.contributor.storage.storage_rule.storage_allocated_in_bytes #=> Integer
    #   resp.data.comment.contributor.storage.storage_rule.storage_type #=> String, one of ["UNLIMITED", "QUOTA"]
    #   resp.data.comment.created_timestamp #=> Time
    #   resp.data.comment.status #=> String, one of ["DRAFT", "PUBLISHED", "DELETED"]
    #   resp.data.comment.visibility #=> String, one of ["PUBLIC", "PRIVATE"]
    #   resp.data.comment.recipient_id #=> String
    #
    def create_comment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCommentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCommentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateComment
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::InvalidCommentOperationException, Errors::FailedDependencyException, Errors::ProhibitedStateException, Errors::UnauthorizedOperationException, Errors::DocumentLockedForCommentsException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CreateComment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateComment,
        stubs: @stubs,
        params_class: Params::CreateCommentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_comment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds one or more custom properties to the specified resource (a folder, document,
    #             or version).</p>
    #
    # @param [Hash] params
    #   See {Types::CreateCustomMetadataInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :resource_id
    #   <p>The ID of the resource.</p>
    #
    # @option params [String] :version_id
    #   <p>The ID of the version, if the custom metadata is being added to a document
    #               version.</p>
    #
    # @option params [Hash<String, String>] :custom_metadata
    #   <p>Custom metadata in the form of name-value pairs.</p>
    #
    # @return [Types::CreateCustomMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_custom_metadata(
    #     authentication_token: 'AuthenticationToken',
    #     resource_id: 'ResourceId', # required
    #     version_id: 'VersionId',
    #     custom_metadata: {
    #       'key' => 'value'
    #     } # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateCustomMetadataOutput
    #
    def create_custom_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateCustomMetadataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateCustomMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateCustomMetadata
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::CustomMetadataLimitExceededException, Errors::ProhibitedStateException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CreateCustomMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateCustomMetadata,
        stubs: @stubs,
        params_class: Params::CreateCustomMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_custom_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a folder with the specified name and parent folder.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateFolderInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :name
    #   <p>The name of the new folder.</p>
    #
    # @option params [String] :parent_folder_id
    #   <p>The ID of the parent folder.</p>
    #
    # @return [Types::CreateFolderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_folder(
    #     authentication_token: 'AuthenticationToken',
    #     name: 'Name',
    #     parent_folder_id: 'ParentFolderId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateFolderOutput
    #   resp.data.metadata #=> Types::FolderMetadata
    #   resp.data.metadata.id #=> String
    #   resp.data.metadata.name #=> String
    #   resp.data.metadata.creator_id #=> String
    #   resp.data.metadata.parent_folder_id #=> String
    #   resp.data.metadata.created_timestamp #=> Time
    #   resp.data.metadata.modified_timestamp #=> Time
    #   resp.data.metadata.resource_state #=> String, one of ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"]
    #   resp.data.metadata.signature #=> String
    #   resp.data.metadata.labels #=> Array<String>
    #   resp.data.metadata.labels[0] #=> String
    #   resp.data.metadata.size #=> Integer
    #   resp.data.metadata.latest_version_size #=> Integer
    #
    def create_folder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateFolderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateFolderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateFolder
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::FailedDependencyException, Errors::ConflictingOperationException, Errors::ProhibitedStateException, Errors::EntityAlreadyExistsException, Errors::UnauthorizedOperationException, Errors::LimitExceededException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CreateFolder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateFolder,
        stubs: @stubs,
        params_class: Params::CreateFolderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_folder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Adds the specified list of labels to the given resource (a document or
    #             folder)</p>
    #
    # @param [Hash] params
    #   See {Types::CreateLabelsInput}.
    #
    # @option params [String] :resource_id
    #   <p>The ID of the resource.</p>
    #
    # @option params [Array<String>] :labels
    #   <p>List of labels to add to the resource.</p>
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @return [Types::CreateLabelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_labels(
    #     resource_id: 'ResourceId', # required
    #     labels: [
    #       'member'
    #     ], # required
    #     authentication_token: 'AuthenticationToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateLabelsOutput
    #
    def create_labels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateLabelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateLabelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateLabels
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::UnauthorizedOperationException, Errors::TooManyLabelsException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CreateLabels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateLabels,
        stubs: @stubs,
        params_class: Params::CreateLabelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_labels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Configure Amazon WorkDocs to use Amazon SNS notifications. The endpoint receives a
    #             confirmation message, and must confirm the subscription.</p>
    #         <p>For more information, see <a href="https://docs.aws.amazon.com/workdocs/latest/developerguide/subscribe-notifications.html">Subscribe to
    #                 Notifications</a> in the <i>Amazon WorkDocs Developer
    #             Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateNotificationSubscriptionInput}.
    #
    # @option params [String] :organization_id
    #   <p>The ID of the organization.</p>
    #
    # @option params [String] :endpoint
    #   <p>The endpoint to receive the notifications. If the protocol is HTTPS, the endpoint
    #               is a URL that begins with <code>https</code>.</p>
    #
    # @option params [String] :protocol
    #   <p>The protocol to use. The supported value is https, which delivers JSON-encoded
    #               messages using HTTPS POST.</p>
    #
    # @option params [String] :subscription_type
    #   <p>The notification type.</p>
    #
    # @return [Types::CreateNotificationSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_notification_subscription(
    #     organization_id: 'OrganizationId', # required
    #     endpoint: 'Endpoint', # required
    #     protocol: 'HTTPS', # required - accepts ["HTTPS"]
    #     subscription_type: 'ALL' # required - accepts ["ALL"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateNotificationSubscriptionOutput
    #   resp.data.subscription #=> Types::Subscription
    #   resp.data.subscription.subscription_id #=> String
    #   resp.data.subscription.end_point #=> String
    #   resp.data.subscription.protocol #=> String, one of ["HTTPS"]
    #
    def create_notification_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateNotificationSubscriptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateNotificationSubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateNotificationSubscription
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedResourceAccessException, Errors::ServiceUnavailableException, Errors::TooManySubscriptionsException]),
        data_parser: Parsers::CreateNotificationSubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateNotificationSubscription,
        stubs: @stubs,
        params_class: Params::CreateNotificationSubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_notification_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a user in a Simple AD or Microsoft AD directory. The status of a newly
    #             created user is "ACTIVE". New users can access Amazon WorkDocs.</p>
    #
    # @param [Hash] params
    #   See {Types::CreateUserInput}.
    #
    # @option params [String] :organization_id
    #   <p>The ID of the organization.</p>
    #
    # @option params [String] :username
    #   <p>The login name of the user.</p>
    #
    # @option params [String] :email_address
    #   <p>The email address of the user.</p>
    #
    # @option params [String] :given_name
    #   <p>The given name of the user.</p>
    #
    # @option params [String] :surname
    #   <p>The surname of the user.</p>
    #
    # @option params [String] :password
    #   <p>The password of the user.</p>
    #
    # @option params [String] :time_zone_id
    #   <p>The time zone ID of the user.</p>
    #
    # @option params [StorageRuleType] :storage_rule
    #   <p>The amount of storage for the user.</p>
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @return [Types::CreateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.create_user(
    #     organization_id: 'OrganizationId',
    #     username: 'Username', # required
    #     email_address: 'EmailAddress',
    #     given_name: 'GivenName', # required
    #     surname: 'Surname', # required
    #     password: 'Password', # required
    #     time_zone_id: 'TimeZoneId',
    #     storage_rule: {
    #       storage_allocated_in_bytes: 1,
    #       storage_type: 'UNLIMITED' # accepts ["UNLIMITED", "QUOTA"]
    #     },
    #     authentication_token: 'AuthenticationToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::CreateUserOutput
    #   resp.data.user #=> Types::User
    #   resp.data.user.id #=> String
    #   resp.data.user.username #=> String
    #   resp.data.user.email_address #=> String
    #   resp.data.user.given_name #=> String
    #   resp.data.user.surname #=> String
    #   resp.data.user.organization_id #=> String
    #   resp.data.user.root_folder_id #=> String
    #   resp.data.user.recycle_bin_folder_id #=> String
    #   resp.data.user.status #=> String, one of ["ACTIVE", "INACTIVE", "PENDING"]
    #   resp.data.user.type #=> String, one of ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"]
    #   resp.data.user.created_timestamp #=> Time
    #   resp.data.user.modified_timestamp #=> Time
    #   resp.data.user.time_zone_id #=> String
    #   resp.data.user.locale #=> String, one of ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"]
    #   resp.data.user.storage #=> Types::UserStorageMetadata
    #   resp.data.user.storage.storage_utilized_in_bytes #=> Integer
    #   resp.data.user.storage.storage_rule #=> Types::StorageRuleType
    #   resp.data.user.storage.storage_rule.storage_allocated_in_bytes #=> Integer
    #   resp.data.user.storage.storage_rule.storage_type #=> String, one of ["UNLIMITED", "QUOTA"]
    #
    def create_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::CreateUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::CreateUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::CreateUser
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::FailedDependencyException, Errors::EntityAlreadyExistsException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::CreateUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::CreateUser,
        stubs: @stubs,
        params_class: Params::CreateUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :create_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deactivates the specified user, which revokes the user's access to Amazon
    #             WorkDocs.</p>
    #
    # @param [Hash] params
    #   See {Types::DeactivateUserInput}.
    #
    # @option params [String] :user_id
    #   <p>The ID of the user.</p>
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @return [Types::DeactivateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.deactivate_user(
    #     user_id: 'UserId', # required
    #     authentication_token: 'AuthenticationToken'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeactivateUserOutput
    #
    def deactivate_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeactivateUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeactivateUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeactivateUser
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::FailedDependencyException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeactivateUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeactivateUser,
        stubs: @stubs,
        params_class: Params::DeactivateUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :deactivate_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified comment from the document version.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCommentInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    #
    # @option params [String] :version_id
    #   <p>The ID of the document version.</p>
    #
    # @option params [String] :comment_id
    #   <p>The ID of the comment.</p>
    #
    # @return [Types::DeleteCommentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_comment(
    #     authentication_token: 'AuthenticationToken',
    #     document_id: 'DocumentId', # required
    #     version_id: 'VersionId', # required
    #     comment_id: 'CommentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCommentOutput
    #
    def delete_comment(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCommentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCommentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteComment
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::FailedDependencyException, Errors::ProhibitedStateException, Errors::UnauthorizedOperationException, Errors::DocumentLockedForCommentsException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteComment
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteComment,
        stubs: @stubs,
        params_class: Params::DeleteCommentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_comment
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes custom metadata from the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteCustomMetadataInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :resource_id
    #   <p>The ID of the resource, either a document or folder.</p>
    #
    # @option params [String] :version_id
    #   <p>The ID of the version, if the custom metadata is being deleted from a document
    #               version.</p>
    #
    # @option params [Array<String>] :keys
    #   <p>List of properties to remove.</p>
    #
    # @option params [Boolean] :delete_all
    #   <p>Flag to indicate removal of all custom metadata properties from the specified
    #               resource.</p>
    #
    # @return [Types::DeleteCustomMetadataOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_custom_metadata(
    #     authentication_token: 'AuthenticationToken',
    #     resource_id: 'ResourceId', # required
    #     version_id: 'VersionId',
    #     keys: [
    #       'member'
    #     ],
    #     delete_all: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteCustomMetadataOutput
    #
    def delete_custom_metadata(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteCustomMetadataInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteCustomMetadataInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteCustomMetadata
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::ProhibitedStateException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteCustomMetadata
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteCustomMetadata,
        stubs: @stubs,
        params_class: Params::DeleteCustomMetadataOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_custom_metadata
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Permanently deletes the specified document and its associated metadata.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteDocumentInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    #
    # @return [Types::DeleteDocumentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_document(
    #     authentication_token: 'AuthenticationToken',
    #     document_id: 'DocumentId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteDocumentOutput
    #
    def delete_document(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteDocumentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteDocumentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteDocument
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::FailedDependencyException, Errors::ConcurrentModificationException, Errors::ConflictingOperationException, Errors::ProhibitedStateException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteDocument
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteDocument,
        stubs: @stubs,
        params_class: Params::DeleteDocumentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_document
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Permanently deletes the specified folder and its contents.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFolderInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    #
    # @return [Types::DeleteFolderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_folder(
    #     authentication_token: 'AuthenticationToken',
    #     folder_id: 'FolderId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFolderOutput
    #
    def delete_folder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFolderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFolderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFolder
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::FailedDependencyException, Errors::ConcurrentModificationException, Errors::ConflictingOperationException, Errors::ProhibitedStateException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteFolder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFolder,
        stubs: @stubs,
        params_class: Params::DeleteFolderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_folder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the contents of the specified folder.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteFolderContentsInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    #
    # @return [Types::DeleteFolderContentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_folder_contents(
    #     authentication_token: 'AuthenticationToken',
    #     folder_id: 'FolderId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteFolderContentsOutput
    #
    def delete_folder_contents(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteFolderContentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteFolderContentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteFolderContents
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::FailedDependencyException, Errors::ConflictingOperationException, Errors::ProhibitedStateException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteFolderContents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteFolderContents,
        stubs: @stubs,
        params_class: Params::DeleteFolderContentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_folder_contents
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified list of labels from a resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteLabelsInput}.
    #
    # @option params [String] :resource_id
    #   <p>The ID of the resource.</p>
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [Array<String>] :labels
    #   <p>List of labels to delete from the resource.</p>
    #
    # @option params [Boolean] :delete_all
    #   <p>Flag to request removal of all labels from the specified resource.</p>
    #
    # @return [Types::DeleteLabelsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_labels(
    #     resource_id: 'ResourceId', # required
    #     authentication_token: 'AuthenticationToken',
    #     labels: [
    #       'member'
    #     ],
    #     delete_all: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteLabelsOutput
    #
    def delete_labels(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteLabelsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteLabelsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteLabels
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteLabels
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteLabels,
        stubs: @stubs,
        params_class: Params::DeleteLabelsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_labels
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified subscription from the specified organization.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteNotificationSubscriptionInput}.
    #
    # @option params [String] :subscription_id
    #   <p>The ID of the subscription.</p>
    #
    # @option params [String] :organization_id
    #   <p>The ID of the organization.</p>
    #
    # @return [Types::DeleteNotificationSubscriptionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_notification_subscription(
    #     subscription_id: 'SubscriptionId', # required
    #     organization_id: 'OrganizationId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteNotificationSubscriptionOutput
    #
    def delete_notification_subscription(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteNotificationSubscriptionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteNotificationSubscriptionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteNotificationSubscription
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ProhibitedStateException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteNotificationSubscription
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteNotificationSubscription,
        stubs: @stubs,
        params_class: Params::DeleteNotificationSubscriptionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_notification_subscription
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Deletes the specified user from a Simple AD or Microsoft AD directory.</p>
    #
    # @param [Hash] params
    #   See {Types::DeleteUserInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Do not set this field when using
    #               administrative API actions, as in accessing the API using AWS credentials.</p>
    #
    # @option params [String] :user_id
    #   <p>The ID of the user.</p>
    #
    # @return [Types::DeleteUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.delete_user(
    #     authentication_token: 'AuthenticationToken',
    #     user_id: 'UserId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DeleteUserOutput
    #
    def delete_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DeleteUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DeleteUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DeleteUser
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::FailedDependencyException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DeleteUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DeleteUser,
        stubs: @stubs,
        params_class: Params::DeleteUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :delete_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the user activities in a specified time period.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeActivitiesInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [Time] :start_time
    #   <p>The timestamp that determines the starting time of the activities. The response
    #               includes the activities performed after the specified timestamp.</p>
    #
    # @option params [Time] :end_time
    #   <p>The timestamp that determines the end time of the activities. The response includes
    #               the activities performed before the specified timestamp.</p>
    #
    # @option params [String] :organization_id
    #   <p>The ID of the organization. This is a mandatory parameter when using administrative
    #               API (SigV4) requests.</p>
    #
    # @option params [String] :activity_types
    #   <p>Specifies which activity types to include in the response. If this field is left
    #               empty, all activity types are returned.</p>
    #
    # @option params [String] :resource_id
    #   <p>The document or folder ID for which to describe activity types.</p>
    #
    # @option params [String] :user_id
    #   <p>The ID of the user who performed the action. The response includes activities
    #               pertaining to this user. This is an optional parameter and is only applicable for
    #               administrative API (SigV4) requests.</p>
    #
    # @option params [Boolean] :include_indirect_activities
    #   <p>Includes indirect activities. An indirect activity results from a direct activity
    #               performed on a parent resource. For example, sharing a parent folder (the direct
    #               activity) shares all of the subfolders and documents within the parent folder (the
    #               indirect activity).</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results.</p>
    #
    # @return [Types::DescribeActivitiesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_activities(
    #     authentication_token: 'AuthenticationToken',
    #     start_time: Time.now,
    #     end_time: Time.now,
    #     organization_id: 'OrganizationId',
    #     activity_types: 'ActivityTypes',
    #     resource_id: 'ResourceId',
    #     user_id: 'UserId',
    #     include_indirect_activities: false,
    #     limit: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeActivitiesOutput
    #   resp.data.user_activities #=> Array<Activity>
    #   resp.data.user_activities[0] #=> Types::Activity
    #   resp.data.user_activities[0].type #=> String, one of ["DOCUMENT_CHECKED_IN", "DOCUMENT_CHECKED_OUT", "DOCUMENT_RENAMED", "DOCUMENT_VERSION_UPLOADED", "DOCUMENT_VERSION_DELETED", "DOCUMENT_VERSION_VIEWED", "DOCUMENT_VERSION_DOWNLOADED", "DOCUMENT_RECYCLED", "DOCUMENT_RESTORED", "DOCUMENT_REVERTED", "DOCUMENT_SHARED", "DOCUMENT_UNSHARED", "DOCUMENT_SHARE_PERMISSION_CHANGED", "DOCUMENT_SHAREABLE_LINK_CREATED", "DOCUMENT_SHAREABLE_LINK_REMOVED", "DOCUMENT_SHAREABLE_LINK_PERMISSION_CHANGED", "DOCUMENT_MOVED", "DOCUMENT_COMMENT_ADDED", "DOCUMENT_COMMENT_DELETED", "DOCUMENT_ANNOTATION_ADDED", "DOCUMENT_ANNOTATION_DELETED", "FOLDER_CREATED", "FOLDER_DELETED", "FOLDER_RENAMED", "FOLDER_RECYCLED", "FOLDER_RESTORED", "FOLDER_SHARED", "FOLDER_UNSHARED", "FOLDER_SHARE_PERMISSION_CHANGED", "FOLDER_SHAREABLE_LINK_CREATED", "FOLDER_SHAREABLE_LINK_REMOVED", "FOLDER_SHAREABLE_LINK_PERMISSION_CHANGED", "FOLDER_MOVED"]
    #   resp.data.user_activities[0].time_stamp #=> Time
    #   resp.data.user_activities[0].is_indirect_activity #=> Boolean
    #   resp.data.user_activities[0].organization_id #=> String
    #   resp.data.user_activities[0].initiator #=> Types::UserMetadata
    #   resp.data.user_activities[0].initiator.id #=> String
    #   resp.data.user_activities[0].initiator.username #=> String
    #   resp.data.user_activities[0].initiator.given_name #=> String
    #   resp.data.user_activities[0].initiator.surname #=> String
    #   resp.data.user_activities[0].initiator.email_address #=> String
    #   resp.data.user_activities[0].participants #=> Types::Participants
    #   resp.data.user_activities[0].participants.users #=> Array<UserMetadata>
    #   resp.data.user_activities[0].participants.groups #=> Array<GroupMetadata>
    #   resp.data.user_activities[0].participants.groups[0] #=> Types::GroupMetadata
    #   resp.data.user_activities[0].participants.groups[0].id #=> String
    #   resp.data.user_activities[0].participants.groups[0].name #=> String
    #   resp.data.user_activities[0].resource_metadata #=> Types::ResourceMetadata
    #   resp.data.user_activities[0].resource_metadata.type #=> String, one of ["FOLDER", "DOCUMENT"]
    #   resp.data.user_activities[0].resource_metadata.name #=> String
    #   resp.data.user_activities[0].resource_metadata.original_name #=> String
    #   resp.data.user_activities[0].resource_metadata.id #=> String
    #   resp.data.user_activities[0].resource_metadata.version_id #=> String
    #   resp.data.user_activities[0].resource_metadata.owner #=> Types::UserMetadata
    #   resp.data.user_activities[0].resource_metadata.parent_id #=> String
    #   resp.data.user_activities[0].original_parent #=> Types::ResourceMetadata
    #   resp.data.user_activities[0].comment_metadata #=> Types::CommentMetadata
    #   resp.data.user_activities[0].comment_metadata.comment_id #=> String
    #   resp.data.user_activities[0].comment_metadata.contributor #=> Types::User
    #   resp.data.user_activities[0].comment_metadata.contributor.id #=> String
    #   resp.data.user_activities[0].comment_metadata.contributor.username #=> String
    #   resp.data.user_activities[0].comment_metadata.contributor.email_address #=> String
    #   resp.data.user_activities[0].comment_metadata.contributor.given_name #=> String
    #   resp.data.user_activities[0].comment_metadata.contributor.surname #=> String
    #   resp.data.user_activities[0].comment_metadata.contributor.organization_id #=> String
    #   resp.data.user_activities[0].comment_metadata.contributor.root_folder_id #=> String
    #   resp.data.user_activities[0].comment_metadata.contributor.recycle_bin_folder_id #=> String
    #   resp.data.user_activities[0].comment_metadata.contributor.status #=> String, one of ["ACTIVE", "INACTIVE", "PENDING"]
    #   resp.data.user_activities[0].comment_metadata.contributor.type #=> String, one of ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"]
    #   resp.data.user_activities[0].comment_metadata.contributor.created_timestamp #=> Time
    #   resp.data.user_activities[0].comment_metadata.contributor.modified_timestamp #=> Time
    #   resp.data.user_activities[0].comment_metadata.contributor.time_zone_id #=> String
    #   resp.data.user_activities[0].comment_metadata.contributor.locale #=> String, one of ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"]
    #   resp.data.user_activities[0].comment_metadata.contributor.storage #=> Types::UserStorageMetadata
    #   resp.data.user_activities[0].comment_metadata.contributor.storage.storage_utilized_in_bytes #=> Integer
    #   resp.data.user_activities[0].comment_metadata.contributor.storage.storage_rule #=> Types::StorageRuleType
    #   resp.data.user_activities[0].comment_metadata.contributor.storage.storage_rule.storage_allocated_in_bytes #=> Integer
    #   resp.data.user_activities[0].comment_metadata.contributor.storage.storage_rule.storage_type #=> String, one of ["UNLIMITED", "QUOTA"]
    #   resp.data.user_activities[0].comment_metadata.created_timestamp #=> Time
    #   resp.data.user_activities[0].comment_metadata.comment_status #=> String, one of ["DRAFT", "PUBLISHED", "DELETED"]
    #   resp.data.user_activities[0].comment_metadata.recipient_id #=> String
    #   resp.data.marker #=> String
    #
    def describe_activities(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeActivitiesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeActivitiesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeActivities
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::InvalidArgumentException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeActivities
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeActivities,
        stubs: @stubs,
        params_class: Params::DescribeActivitiesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_activities
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>List all the comments for the specified document version.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeCommentsInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    #
    # @option params [String] :version_id
    #   <p>The ID of the document version.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results. This marker was received from a previous
    #               call.</p>
    #
    # @return [Types::DescribeCommentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_comments(
    #     authentication_token: 'AuthenticationToken',
    #     document_id: 'DocumentId', # required
    #     version_id: 'VersionId', # required
    #     limit: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeCommentsOutput
    #   resp.data.comments #=> Array<Comment>
    #   resp.data.comments[0] #=> Types::Comment
    #   resp.data.comments[0].comment_id #=> String
    #   resp.data.comments[0].parent_id #=> String
    #   resp.data.comments[0].thread_id #=> String
    #   resp.data.comments[0].text #=> String
    #   resp.data.comments[0].contributor #=> Types::User
    #   resp.data.comments[0].contributor.id #=> String
    #   resp.data.comments[0].contributor.username #=> String
    #   resp.data.comments[0].contributor.email_address #=> String
    #   resp.data.comments[0].contributor.given_name #=> String
    #   resp.data.comments[0].contributor.surname #=> String
    #   resp.data.comments[0].contributor.organization_id #=> String
    #   resp.data.comments[0].contributor.root_folder_id #=> String
    #   resp.data.comments[0].contributor.recycle_bin_folder_id #=> String
    #   resp.data.comments[0].contributor.status #=> String, one of ["ACTIVE", "INACTIVE", "PENDING"]
    #   resp.data.comments[0].contributor.type #=> String, one of ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"]
    #   resp.data.comments[0].contributor.created_timestamp #=> Time
    #   resp.data.comments[0].contributor.modified_timestamp #=> Time
    #   resp.data.comments[0].contributor.time_zone_id #=> String
    #   resp.data.comments[0].contributor.locale #=> String, one of ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"]
    #   resp.data.comments[0].contributor.storage #=> Types::UserStorageMetadata
    #   resp.data.comments[0].contributor.storage.storage_utilized_in_bytes #=> Integer
    #   resp.data.comments[0].contributor.storage.storage_rule #=> Types::StorageRuleType
    #   resp.data.comments[0].contributor.storage.storage_rule.storage_allocated_in_bytes #=> Integer
    #   resp.data.comments[0].contributor.storage.storage_rule.storage_type #=> String, one of ["UNLIMITED", "QUOTA"]
    #   resp.data.comments[0].created_timestamp #=> Time
    #   resp.data.comments[0].status #=> String, one of ["DRAFT", "PUBLISHED", "DELETED"]
    #   resp.data.comments[0].visibility #=> String, one of ["PUBLIC", "PRIVATE"]
    #   resp.data.comments[0].recipient_id #=> String
    #   resp.data.marker #=> String
    #
    def describe_comments(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeCommentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeCommentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeComments
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::ProhibitedStateException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeComments
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeComments,
        stubs: @stubs,
        params_class: Params::DescribeCommentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_comments
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the document versions for the specified document.</p>
    #         <p>By default, only active versions are returned.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeDocumentVersionsInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of versions to return with this call.</p>
    #
    # @option params [String] :include
    #   <p>A comma-separated list of values. Specify "INITIALIZED" to include incomplete
    #               versions.</p>
    #
    # @option params [String] :fields
    #   <p>Specify "SOURCE" to include initialized versions and a URL for the source
    #               document.</p>
    #
    # @return [Types::DescribeDocumentVersionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_document_versions(
    #     authentication_token: 'AuthenticationToken',
    #     document_id: 'DocumentId', # required
    #     marker: 'Marker',
    #     limit: 1,
    #     include: 'Include',
    #     fields: 'Fields'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeDocumentVersionsOutput
    #   resp.data.document_versions #=> Array<DocumentVersionMetadata>
    #   resp.data.document_versions[0] #=> Types::DocumentVersionMetadata
    #   resp.data.document_versions[0].id #=> String
    #   resp.data.document_versions[0].name #=> String
    #   resp.data.document_versions[0].content_type #=> String
    #   resp.data.document_versions[0].size #=> Integer
    #   resp.data.document_versions[0].signature #=> String
    #   resp.data.document_versions[0].status #=> String, one of ["INITIALIZED", "ACTIVE"]
    #   resp.data.document_versions[0].created_timestamp #=> Time
    #   resp.data.document_versions[0].modified_timestamp #=> Time
    #   resp.data.document_versions[0].content_created_timestamp #=> Time
    #   resp.data.document_versions[0].content_modified_timestamp #=> Time
    #   resp.data.document_versions[0].creator_id #=> String
    #   resp.data.document_versions[0].thumbnail #=> Hash<String, String>
    #   resp.data.document_versions[0].thumbnail['key'] #=> String
    #   resp.data.document_versions[0].source #=> Hash<String, String>
    #   resp.data.document_versions[0].source['key'] #=> String
    #   resp.data.marker #=> String
    #
    def describe_document_versions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeDocumentVersionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeDocumentVersionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeDocumentVersions
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::ProhibitedStateException, Errors::InvalidArgumentException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeDocumentVersions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeDocumentVersions,
        stubs: @stubs,
        params_class: Params::DescribeDocumentVersionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_document_versions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the contents of the specified folder, including its documents and
    #             subfolders.</p>
    #         <p>By default, Amazon WorkDocs returns the first 100 active document and folder
    #             metadata items. If there are more results, the response includes a marker that you can
    #             use to request the next set of results. You can also request initialized
    #             documents.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeFolderContentsInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    #
    # @option params [String] :sort
    #   <p>The sorting criteria.</p>
    #
    # @option params [String] :order
    #   <p>The order for the contents of the folder.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results. This marker was received from a previous
    #               call.</p>
    #
    # @option params [String] :type
    #   <p>The type of items.</p>
    #
    # @option params [String] :include
    #   <p>The contents to include. Specify "INITIALIZED" to include initialized
    #               documents.</p>
    #
    # @return [Types::DescribeFolderContentsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_folder_contents(
    #     authentication_token: 'AuthenticationToken',
    #     folder_id: 'FolderId', # required
    #     sort: 'DATE', # accepts ["DATE", "NAME"]
    #     order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     limit: 1,
    #     marker: 'Marker',
    #     type: 'ALL', # accepts ["ALL", "DOCUMENT", "FOLDER"]
    #     include: 'Include'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeFolderContentsOutput
    #   resp.data.folders #=> Array<FolderMetadata>
    #   resp.data.folders[0] #=> Types::FolderMetadata
    #   resp.data.folders[0].id #=> String
    #   resp.data.folders[0].name #=> String
    #   resp.data.folders[0].creator_id #=> String
    #   resp.data.folders[0].parent_folder_id #=> String
    #   resp.data.folders[0].created_timestamp #=> Time
    #   resp.data.folders[0].modified_timestamp #=> Time
    #   resp.data.folders[0].resource_state #=> String, one of ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"]
    #   resp.data.folders[0].signature #=> String
    #   resp.data.folders[0].labels #=> Array<String>
    #   resp.data.folders[0].labels[0] #=> String
    #   resp.data.folders[0].size #=> Integer
    #   resp.data.folders[0].latest_version_size #=> Integer
    #   resp.data.documents #=> Array<DocumentMetadata>
    #   resp.data.documents[0] #=> Types::DocumentMetadata
    #   resp.data.documents[0].id #=> String
    #   resp.data.documents[0].creator_id #=> String
    #   resp.data.documents[0].parent_folder_id #=> String
    #   resp.data.documents[0].created_timestamp #=> Time
    #   resp.data.documents[0].modified_timestamp #=> Time
    #   resp.data.documents[0].latest_version_metadata #=> Types::DocumentVersionMetadata
    #   resp.data.documents[0].latest_version_metadata.id #=> String
    #   resp.data.documents[0].latest_version_metadata.name #=> String
    #   resp.data.documents[0].latest_version_metadata.content_type #=> String
    #   resp.data.documents[0].latest_version_metadata.size #=> Integer
    #   resp.data.documents[0].latest_version_metadata.signature #=> String
    #   resp.data.documents[0].latest_version_metadata.status #=> String, one of ["INITIALIZED", "ACTIVE"]
    #   resp.data.documents[0].latest_version_metadata.created_timestamp #=> Time
    #   resp.data.documents[0].latest_version_metadata.modified_timestamp #=> Time
    #   resp.data.documents[0].latest_version_metadata.content_created_timestamp #=> Time
    #   resp.data.documents[0].latest_version_metadata.content_modified_timestamp #=> Time
    #   resp.data.documents[0].latest_version_metadata.creator_id #=> String
    #   resp.data.documents[0].latest_version_metadata.thumbnail #=> Hash<String, String>
    #   resp.data.documents[0].latest_version_metadata.thumbnail['key'] #=> String
    #   resp.data.documents[0].latest_version_metadata.source #=> Hash<String, String>
    #   resp.data.documents[0].latest_version_metadata.source['key'] #=> String
    #   resp.data.documents[0].resource_state #=> String, one of ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"]
    #   resp.data.documents[0].labels #=> Array<String>
    #   resp.data.marker #=> String
    #
    def describe_folder_contents(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeFolderContentsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeFolderContentsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeFolderContents
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::ProhibitedStateException, Errors::InvalidArgumentException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeFolderContents
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeFolderContents,
        stubs: @stubs,
        params_class: Params::DescribeFolderContentsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_folder_contents
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the groups specified by the query. Groups are defined by the underlying
    #             Active Directory.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeGroupsInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :search_query
    #   <p>A query to describe groups by group name.</p>
    #
    # @option params [String] :organization_id
    #   <p>The ID of the organization.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @return [Types::DescribeGroupsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_groups(
    #     authentication_token: 'AuthenticationToken',
    #     search_query: 'SearchQuery', # required
    #     organization_id: 'OrganizationId',
    #     marker: 'Marker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeGroupsOutput
    #   resp.data.groups #=> Array<GroupMetadata>
    #   resp.data.groups[0] #=> Types::GroupMetadata
    #   resp.data.groups[0].id #=> String
    #   resp.data.groups[0].name #=> String
    #   resp.data.marker #=> String
    #
    def describe_groups(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeGroupsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeGroupsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeGroups
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeGroups
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeGroups,
        stubs: @stubs,
        params_class: Params::DescribeGroupsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_groups
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Lists the specified notification subscriptions.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeNotificationSubscriptionsInput}.
    #
    # @option params [String] :organization_id
    #   <p>The ID of the organization.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @return [Types::DescribeNotificationSubscriptionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_notification_subscriptions(
    #     organization_id: 'OrganizationId', # required
    #     marker: 'Marker',
    #     limit: 1
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeNotificationSubscriptionsOutput
    #   resp.data.subscriptions #=> Array<Subscription>
    #   resp.data.subscriptions[0] #=> Types::Subscription
    #   resp.data.subscriptions[0].subscription_id #=> String
    #   resp.data.subscriptions[0].end_point #=> String
    #   resp.data.subscriptions[0].protocol #=> String, one of ["HTTPS"]
    #   resp.data.marker #=> String
    #
    def describe_notification_subscriptions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeNotificationSubscriptionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeNotificationSubscriptionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeNotificationSubscriptions
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeNotificationSubscriptions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeNotificationSubscriptions,
        stubs: @stubs,
        params_class: Params::DescribeNotificationSubscriptionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_notification_subscriptions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the permissions of a specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeResourcePermissionsInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :resource_id
    #   <p>The ID of the resource.</p>
    #
    # @option params [String] :principal_id
    #   <p>The ID of the principal to filter permissions by.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return with this call.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call)</p>
    #
    # @return [Types::DescribeResourcePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_resource_permissions(
    #     authentication_token: 'AuthenticationToken',
    #     resource_id: 'ResourceId', # required
    #     principal_id: 'PrincipalId',
    #     limit: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeResourcePermissionsOutput
    #   resp.data.principals #=> Array<Principal>
    #   resp.data.principals[0] #=> Types::Principal
    #   resp.data.principals[0].id #=> String
    #   resp.data.principals[0].type #=> String, one of ["USER", "GROUP", "INVITE", "ANONYMOUS", "ORGANIZATION"]
    #   resp.data.principals[0].roles #=> Array<PermissionInfo>
    #   resp.data.principals[0].roles[0] #=> Types::PermissionInfo
    #   resp.data.principals[0].roles[0].role #=> String, one of ["VIEWER", "CONTRIBUTOR", "OWNER", "COOWNER"]
    #   resp.data.principals[0].roles[0].type #=> String, one of ["DIRECT", "INHERITED"]
    #   resp.data.marker #=> String
    #
    def describe_resource_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeResourcePermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeResourcePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeResourcePermissions
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeResourcePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeResourcePermissions,
        stubs: @stubs,
        params_class: Params::DescribeResourcePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_resource_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the current user's special folders; the <code>RootFolder</code> and the
    #                 <code>RecycleBin</code>. <code>RootFolder</code> is the root of user's files and
    #             folders and <code>RecycleBin</code> is the root of recycled items. This is not a valid
    #             action for SigV4 (administrative API) clients.</p>
    #         <p>This action requires an authentication token. To get an authentication token,
    #             register an application with Amazon WorkDocs. For more information, see <a href="https://docs.aws.amazon.com/workdocs/latest/developerguide/wd-auth-user.html">Authentication and Access
    #                 Control for User Applications</a> in the
    #             <i>Amazon
    #             WorkDocs Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeRootFoldersInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    #
    # @return [Types::DescribeRootFoldersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_root_folders(
    #     authentication_token: 'AuthenticationToken', # required
    #     limit: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeRootFoldersOutput
    #   resp.data.folders #=> Array<FolderMetadata>
    #   resp.data.folders[0] #=> Types::FolderMetadata
    #   resp.data.folders[0].id #=> String
    #   resp.data.folders[0].name #=> String
    #   resp.data.folders[0].creator_id #=> String
    #   resp.data.folders[0].parent_folder_id #=> String
    #   resp.data.folders[0].created_timestamp #=> Time
    #   resp.data.folders[0].modified_timestamp #=> Time
    #   resp.data.folders[0].resource_state #=> String, one of ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"]
    #   resp.data.folders[0].signature #=> String
    #   resp.data.folders[0].labels #=> Array<String>
    #   resp.data.folders[0].labels[0] #=> String
    #   resp.data.folders[0].size #=> Integer
    #   resp.data.folders[0].latest_version_size #=> Integer
    #   resp.data.marker #=> String
    #
    def describe_root_folders(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeRootFoldersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeRootFoldersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeRootFolders
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::InvalidArgumentException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeRootFolders
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeRootFolders,
        stubs: @stubs,
        params_class: Params::DescribeRootFoldersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_root_folders
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Describes the specified users. You can describe all users or filter the results
    #             (for example, by status or organization).</p>
    #         <p>By default, Amazon WorkDocs returns the first 24 active or pending users. If there
    #             are more results, the response includes a marker that you can use to request the next
    #             set of results.</p>
    #
    # @param [Hash] params
    #   See {Types::DescribeUsersInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :organization_id
    #   <p>The ID of the organization.</p>
    #
    # @option params [String] :user_ids
    #   <p>The IDs of the users.</p>
    #
    # @option params [String] :query
    #   <p>A query to filter users by user name.</p>
    #
    # @option params [String] :include
    #   <p>The state of the users. Specify "ALL" to include inactive users.</p>
    #
    # @option params [String] :order
    #   <p>The order for the results.</p>
    #
    # @option params [String] :sort
    #   <p>The sorting criteria.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results. (You received this marker from a previous
    #               call.)</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of items to return.</p>
    #
    # @option params [String] :fields
    #   <p>A comma-separated list of values. Specify "STORAGE_METADATA" to include the user
    #               storage quota and utilization information.</p>
    #
    # @return [Types::DescribeUsersOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.describe_users(
    #     authentication_token: 'AuthenticationToken',
    #     organization_id: 'OrganizationId',
    #     user_ids: 'UserIds',
    #     query: 'Query',
    #     include: 'ALL', # accepts ["ALL", "ACTIVE_PENDING"]
    #     order: 'ASCENDING', # accepts ["ASCENDING", "DESCENDING"]
    #     sort: 'USER_NAME', # accepts ["USER_NAME", "FULL_NAME", "STORAGE_LIMIT", "USER_STATUS", "STORAGE_USED"]
    #     marker: 'Marker',
    #     limit: 1,
    #     fields: 'Fields'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::DescribeUsersOutput
    #   resp.data.users #=> Array<User>
    #   resp.data.users[0] #=> Types::User
    #   resp.data.users[0].id #=> String
    #   resp.data.users[0].username #=> String
    #   resp.data.users[0].email_address #=> String
    #   resp.data.users[0].given_name #=> String
    #   resp.data.users[0].surname #=> String
    #   resp.data.users[0].organization_id #=> String
    #   resp.data.users[0].root_folder_id #=> String
    #   resp.data.users[0].recycle_bin_folder_id #=> String
    #   resp.data.users[0].status #=> String, one of ["ACTIVE", "INACTIVE", "PENDING"]
    #   resp.data.users[0].type #=> String, one of ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"]
    #   resp.data.users[0].created_timestamp #=> Time
    #   resp.data.users[0].modified_timestamp #=> Time
    #   resp.data.users[0].time_zone_id #=> String
    #   resp.data.users[0].locale #=> String, one of ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"]
    #   resp.data.users[0].storage #=> Types::UserStorageMetadata
    #   resp.data.users[0].storage.storage_utilized_in_bytes #=> Integer
    #   resp.data.users[0].storage.storage_rule #=> Types::StorageRuleType
    #   resp.data.users[0].storage.storage_rule.storage_allocated_in_bytes #=> Integer
    #   resp.data.users[0].storage.storage_rule.storage_type #=> String, one of ["UNLIMITED", "QUOTA"]
    #   resp.data.total_number_of_users #=> Integer
    #   resp.data.marker #=> String
    #
    def describe_users(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::DescribeUsersInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::DescribeUsersInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::DescribeUsers
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::RequestedEntityTooLargeException, Errors::FailedDependencyException, Errors::InvalidArgumentException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::DescribeUsers
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::DescribeUsers,
        stubs: @stubs,
        params_class: Params::DescribeUsersOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :describe_users
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves details of the current user for whom the authentication token was
    #             generated. This is not a valid action for SigV4 (administrative API) clients.</p>
    #         <p>This action requires an authentication token. To get an authentication token,
    #             register an application with Amazon WorkDocs. For more information, see <a href="https://docs.aws.amazon.com/workdocs/latest/developerguide/wd-auth-user.html">Authentication and Access
    #                 Control for User Applications</a> in the
    #             <i>Amazon
    #                 WorkDocs Developer Guide</i>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetCurrentUserInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token.</p>
    #
    # @return [Types::GetCurrentUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_current_user(
    #     authentication_token: 'AuthenticationToken' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetCurrentUserOutput
    #   resp.data.user #=> Types::User
    #   resp.data.user.id #=> String
    #   resp.data.user.username #=> String
    #   resp.data.user.email_address #=> String
    #   resp.data.user.given_name #=> String
    #   resp.data.user.surname #=> String
    #   resp.data.user.organization_id #=> String
    #   resp.data.user.root_folder_id #=> String
    #   resp.data.user.recycle_bin_folder_id #=> String
    #   resp.data.user.status #=> String, one of ["ACTIVE", "INACTIVE", "PENDING"]
    #   resp.data.user.type #=> String, one of ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"]
    #   resp.data.user.created_timestamp #=> Time
    #   resp.data.user.modified_timestamp #=> Time
    #   resp.data.user.time_zone_id #=> String
    #   resp.data.user.locale #=> String, one of ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"]
    #   resp.data.user.storage #=> Types::UserStorageMetadata
    #   resp.data.user.storage.storage_utilized_in_bytes #=> Integer
    #   resp.data.user.storage.storage_rule #=> Types::StorageRuleType
    #   resp.data.user.storage.storage_rule.storage_allocated_in_bytes #=> Integer
    #   resp.data.user.storage.storage_rule.storage_type #=> String, one of ["UNLIMITED", "QUOTA"]
    #
    def get_current_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetCurrentUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetCurrentUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetCurrentUser
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetCurrentUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetCurrentUser,
        stubs: @stubs,
        params_class: Params::GetCurrentUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_current_user
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves details of a document.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDocumentInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    #
    # @option params [Boolean] :include_custom_metadata
    #   <p>Set this to <code>TRUE</code> to include custom metadata in the response.</p>
    #
    # @return [Types::GetDocumentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_document(
    #     authentication_token: 'AuthenticationToken',
    #     document_id: 'DocumentId', # required
    #     include_custom_metadata: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDocumentOutput
    #   resp.data.metadata #=> Types::DocumentMetadata
    #   resp.data.metadata.id #=> String
    #   resp.data.metadata.creator_id #=> String
    #   resp.data.metadata.parent_folder_id #=> String
    #   resp.data.metadata.created_timestamp #=> Time
    #   resp.data.metadata.modified_timestamp #=> Time
    #   resp.data.metadata.latest_version_metadata #=> Types::DocumentVersionMetadata
    #   resp.data.metadata.latest_version_metadata.id #=> String
    #   resp.data.metadata.latest_version_metadata.name #=> String
    #   resp.data.metadata.latest_version_metadata.content_type #=> String
    #   resp.data.metadata.latest_version_metadata.size #=> Integer
    #   resp.data.metadata.latest_version_metadata.signature #=> String
    #   resp.data.metadata.latest_version_metadata.status #=> String, one of ["INITIALIZED", "ACTIVE"]
    #   resp.data.metadata.latest_version_metadata.created_timestamp #=> Time
    #   resp.data.metadata.latest_version_metadata.modified_timestamp #=> Time
    #   resp.data.metadata.latest_version_metadata.content_created_timestamp #=> Time
    #   resp.data.metadata.latest_version_metadata.content_modified_timestamp #=> Time
    #   resp.data.metadata.latest_version_metadata.creator_id #=> String
    #   resp.data.metadata.latest_version_metadata.thumbnail #=> Hash<String, String>
    #   resp.data.metadata.latest_version_metadata.thumbnail['key'] #=> String
    #   resp.data.metadata.latest_version_metadata.source #=> Hash<String, String>
    #   resp.data.metadata.latest_version_metadata.source['key'] #=> String
    #   resp.data.metadata.resource_state #=> String, one of ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"]
    #   resp.data.metadata.labels #=> Array<String>
    #   resp.data.metadata.labels[0] #=> String
    #   resp.data.custom_metadata #=> Hash<String, String>
    #   resp.data.custom_metadata['key'] #=> String
    #
    def get_document(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDocumentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDocumentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDocument
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidPasswordException, Errors::FailedDependencyException, Errors::InvalidArgumentException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetDocument
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDocument,
        stubs: @stubs,
        params_class: Params::GetDocumentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_document
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the path information (the hierarchy from the root folder) for the
    #             requested document.</p>
    #         <p>By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the
    #             requested document and only includes the IDs of the parent folders in the path. You can
    #             limit the maximum number of levels. You can also request the names of the parent
    #             folders.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDocumentPathInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of levels in the hierarchy to return.</p>
    #
    # @option params [String] :fields
    #   <p>A comma-separated list of values. Specify <code>NAME</code> to include the names of
    #               the parent folders.</p>
    #
    # @option params [String] :marker
    #   <p>This value is not supported.</p>
    #
    # @return [Types::GetDocumentPathOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_document_path(
    #     authentication_token: 'AuthenticationToken',
    #     document_id: 'DocumentId', # required
    #     limit: 1,
    #     fields: 'Fields',
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDocumentPathOutput
    #   resp.data.path #=> Types::ResourcePath
    #   resp.data.path.components #=> Array<ResourcePathComponent>
    #   resp.data.path.components[0] #=> Types::ResourcePathComponent
    #   resp.data.path.components[0].id #=> String
    #   resp.data.path.components[0].name #=> String
    #
    def get_document_path(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDocumentPathInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDocumentPathInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDocumentPath
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetDocumentPath
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDocumentPath,
        stubs: @stubs,
        params_class: Params::GetDocumentPathOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_document_path
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves version metadata for the specified document.</p>
    #
    # @param [Hash] params
    #   See {Types::GetDocumentVersionInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    #
    # @option params [String] :version_id
    #   <p>The version ID of the document.</p>
    #
    # @option params [String] :fields
    #   <p>A comma-separated list of values. Specify "SOURCE" to include a URL for the source
    #               document.</p>
    #
    # @option params [Boolean] :include_custom_metadata
    #   <p>Set this to TRUE to include custom metadata in the response.</p>
    #
    # @return [Types::GetDocumentVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_document_version(
    #     authentication_token: 'AuthenticationToken',
    #     document_id: 'DocumentId', # required
    #     version_id: 'VersionId', # required
    #     fields: 'Fields',
    #     include_custom_metadata: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetDocumentVersionOutput
    #   resp.data.metadata #=> Types::DocumentVersionMetadata
    #   resp.data.metadata.id #=> String
    #   resp.data.metadata.name #=> String
    #   resp.data.metadata.content_type #=> String
    #   resp.data.metadata.size #=> Integer
    #   resp.data.metadata.signature #=> String
    #   resp.data.metadata.status #=> String, one of ["INITIALIZED", "ACTIVE"]
    #   resp.data.metadata.created_timestamp #=> Time
    #   resp.data.metadata.modified_timestamp #=> Time
    #   resp.data.metadata.content_created_timestamp #=> Time
    #   resp.data.metadata.content_modified_timestamp #=> Time
    #   resp.data.metadata.creator_id #=> String
    #   resp.data.metadata.thumbnail #=> Hash<String, String>
    #   resp.data.metadata.thumbnail['key'] #=> String
    #   resp.data.metadata.source #=> Hash<String, String>
    #   resp.data.metadata.source['key'] #=> String
    #   resp.data.custom_metadata #=> Hash<String, String>
    #   resp.data.custom_metadata['key'] #=> String
    #
    def get_document_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetDocumentVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetDocumentVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetDocumentVersion
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::InvalidPasswordException, Errors::FailedDependencyException, Errors::ProhibitedStateException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetDocumentVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetDocumentVersion,
        stubs: @stubs,
        params_class: Params::GetDocumentVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_document_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves the metadata of the specified folder.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFolderInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    #
    # @option params [Boolean] :include_custom_metadata
    #   <p>Set to TRUE to include custom metadata in the response.</p>
    #
    # @return [Types::GetFolderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_folder(
    #     authentication_token: 'AuthenticationToken',
    #     folder_id: 'FolderId', # required
    #     include_custom_metadata: false
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFolderOutput
    #   resp.data.metadata #=> Types::FolderMetadata
    #   resp.data.metadata.id #=> String
    #   resp.data.metadata.name #=> String
    #   resp.data.metadata.creator_id #=> String
    #   resp.data.metadata.parent_folder_id #=> String
    #   resp.data.metadata.created_timestamp #=> Time
    #   resp.data.metadata.modified_timestamp #=> Time
    #   resp.data.metadata.resource_state #=> String, one of ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"]
    #   resp.data.metadata.signature #=> String
    #   resp.data.metadata.labels #=> Array<String>
    #   resp.data.metadata.labels[0] #=> String
    #   resp.data.metadata.size #=> Integer
    #   resp.data.metadata.latest_version_size #=> Integer
    #   resp.data.custom_metadata #=> Hash<String, String>
    #   resp.data.custom_metadata['key'] #=> String
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
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::ProhibitedStateException, Errors::InvalidArgumentException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
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

    # <p>Retrieves the path information (the hierarchy from the root folder) for the
    #             specified folder.</p>
    #         <p>By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the
    #             requested folder and only includes the IDs of the parent folders in the path. You can
    #             limit the maximum number of levels. You can also request the parent folder
    #             names.</p>
    #
    # @param [Hash] params
    #   See {Types::GetFolderPathInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of levels in the hierarchy to return.</p>
    #
    # @option params [String] :fields
    #   <p>A comma-separated list of values. Specify "NAME" to include the names of the parent
    #               folders.</p>
    #
    # @option params [String] :marker
    #   <p>This value is not supported.</p>
    #
    # @return [Types::GetFolderPathOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_folder_path(
    #     authentication_token: 'AuthenticationToken',
    #     folder_id: 'FolderId', # required
    #     limit: 1,
    #     fields: 'Fields',
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetFolderPathOutput
    #   resp.data.path #=> Types::ResourcePath
    #   resp.data.path.components #=> Array<ResourcePathComponent>
    #   resp.data.path.components[0] #=> Types::ResourcePathComponent
    #   resp.data.path.components[0].id #=> String
    #   resp.data.path.components[0].name #=> String
    #
    def get_folder_path(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetFolderPathInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetFolderPathInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetFolderPath
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetFolderPath
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetFolderPath,
        stubs: @stubs,
        params_class: Params::GetFolderPathOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_folder_path
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Retrieves a collection of resources, including folders and documents. The only
    #             <code>CollectionType</code> supported is <code>SHARED_WITH_ME</code>.</p>
    #
    # @param [Hash] params
    #   See {Types::GetResourcesInput}.
    #
    # @option params [String] :authentication_token
    #   <p>The Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :user_id
    #   <p>The user ID for the resource collection. This is a required field for accessing the
    #               API operation using IAM credentials.</p>
    #
    # @option params [String] :collection_type
    #   <p>The collection type.</p>
    #
    # @option params [Integer] :limit
    #   <p>The maximum number of resources to return.</p>
    #
    # @option params [String] :marker
    #   <p>The marker for the next set of results. This marker was received from a previous call.</p>
    #
    # @return [Types::GetResourcesOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_resources(
    #     authentication_token: 'AuthenticationToken',
    #     user_id: 'UserId',
    #     collection_type: 'SHARED_WITH_ME', # accepts ["SHARED_WITH_ME"]
    #     limit: 1,
    #     marker: 'Marker'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetResourcesOutput
    #   resp.data.folders #=> Array<FolderMetadata>
    #   resp.data.folders[0] #=> Types::FolderMetadata
    #   resp.data.folders[0].id #=> String
    #   resp.data.folders[0].name #=> String
    #   resp.data.folders[0].creator_id #=> String
    #   resp.data.folders[0].parent_folder_id #=> String
    #   resp.data.folders[0].created_timestamp #=> Time
    #   resp.data.folders[0].modified_timestamp #=> Time
    #   resp.data.folders[0].resource_state #=> String, one of ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"]
    #   resp.data.folders[0].signature #=> String
    #   resp.data.folders[0].labels #=> Array<String>
    #   resp.data.folders[0].labels[0] #=> String
    #   resp.data.folders[0].size #=> Integer
    #   resp.data.folders[0].latest_version_size #=> Integer
    #   resp.data.documents #=> Array<DocumentMetadata>
    #   resp.data.documents[0] #=> Types::DocumentMetadata
    #   resp.data.documents[0].id #=> String
    #   resp.data.documents[0].creator_id #=> String
    #   resp.data.documents[0].parent_folder_id #=> String
    #   resp.data.documents[0].created_timestamp #=> Time
    #   resp.data.documents[0].modified_timestamp #=> Time
    #   resp.data.documents[0].latest_version_metadata #=> Types::DocumentVersionMetadata
    #   resp.data.documents[0].latest_version_metadata.id #=> String
    #   resp.data.documents[0].latest_version_metadata.name #=> String
    #   resp.data.documents[0].latest_version_metadata.content_type #=> String
    #   resp.data.documents[0].latest_version_metadata.size #=> Integer
    #   resp.data.documents[0].latest_version_metadata.signature #=> String
    #   resp.data.documents[0].latest_version_metadata.status #=> String, one of ["INITIALIZED", "ACTIVE"]
    #   resp.data.documents[0].latest_version_metadata.created_timestamp #=> Time
    #   resp.data.documents[0].latest_version_metadata.modified_timestamp #=> Time
    #   resp.data.documents[0].latest_version_metadata.content_created_timestamp #=> Time
    #   resp.data.documents[0].latest_version_metadata.content_modified_timestamp #=> Time
    #   resp.data.documents[0].latest_version_metadata.creator_id #=> String
    #   resp.data.documents[0].latest_version_metadata.thumbnail #=> Hash<String, String>
    #   resp.data.documents[0].latest_version_metadata.thumbnail['key'] #=> String
    #   resp.data.documents[0].latest_version_metadata.source #=> Hash<String, String>
    #   resp.data.documents[0].latest_version_metadata.source['key'] #=> String
    #   resp.data.documents[0].resource_state #=> String, one of ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"]
    #   resp.data.documents[0].labels #=> Array<String>
    #   resp.data.marker #=> String
    #
    def get_resources(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetResourcesInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetResourcesInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetResources
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::InvalidArgumentException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::GetResources
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetResources,
        stubs: @stubs,
        params_class: Params::GetResourcesOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_resources
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Creates a new document object and version object.</p>
    #         <p>The client specifies the parent folder ID and name of the document to upload. The
    #             ID is optionally specified when creating a new version of an existing document. This is
    #             the first step to upload a document. Next, upload the document to the URL returned from
    #             the call, and then call <a>UpdateDocumentVersion</a>.</p>
    #         <p>To cancel the document upload, call <a>AbortDocumentVersionUpload</a>.</p>
    #
    # @param [Hash] params
    #   See {Types::InitiateDocumentVersionUploadInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :id
    #   <p>The ID of the document.</p>
    #
    # @option params [String] :name
    #   <p>The name of the document.</p>
    #
    # @option params [Time] :content_created_timestamp
    #   <p>The timestamp when the content of the document was originally created.</p>
    #
    # @option params [Time] :content_modified_timestamp
    #   <p>The timestamp when the content of the document was modified.</p>
    #
    # @option params [String] :content_type
    #   <p>The content type of the document.</p>
    #
    # @option params [Integer] :document_size_in_bytes
    #   <p>The size of the document, in bytes.</p>
    #
    # @option params [String] :parent_folder_id
    #   <p>The ID of the parent folder.</p>
    #
    # @return [Types::InitiateDocumentVersionUploadOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.initiate_document_version_upload(
    #     authentication_token: 'AuthenticationToken',
    #     id: 'Id',
    #     name: 'Name',
    #     content_created_timestamp: Time.now,
    #     content_modified_timestamp: Time.now,
    #     content_type: 'ContentType',
    #     document_size_in_bytes: 1,
    #     parent_folder_id: 'ParentFolderId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::InitiateDocumentVersionUploadOutput
    #   resp.data.metadata #=> Types::DocumentMetadata
    #   resp.data.metadata.id #=> String
    #   resp.data.metadata.creator_id #=> String
    #   resp.data.metadata.parent_folder_id #=> String
    #   resp.data.metadata.created_timestamp #=> Time
    #   resp.data.metadata.modified_timestamp #=> Time
    #   resp.data.metadata.latest_version_metadata #=> Types::DocumentVersionMetadata
    #   resp.data.metadata.latest_version_metadata.id #=> String
    #   resp.data.metadata.latest_version_metadata.name #=> String
    #   resp.data.metadata.latest_version_metadata.content_type #=> String
    #   resp.data.metadata.latest_version_metadata.size #=> Integer
    #   resp.data.metadata.latest_version_metadata.signature #=> String
    #   resp.data.metadata.latest_version_metadata.status #=> String, one of ["INITIALIZED", "ACTIVE"]
    #   resp.data.metadata.latest_version_metadata.created_timestamp #=> Time
    #   resp.data.metadata.latest_version_metadata.modified_timestamp #=> Time
    #   resp.data.metadata.latest_version_metadata.content_created_timestamp #=> Time
    #   resp.data.metadata.latest_version_metadata.content_modified_timestamp #=> Time
    #   resp.data.metadata.latest_version_metadata.creator_id #=> String
    #   resp.data.metadata.latest_version_metadata.thumbnail #=> Hash<String, String>
    #   resp.data.metadata.latest_version_metadata.thumbnail['key'] #=> String
    #   resp.data.metadata.latest_version_metadata.source #=> Hash<String, String>
    #   resp.data.metadata.latest_version_metadata.source['key'] #=> String
    #   resp.data.metadata.resource_state #=> String, one of ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"]
    #   resp.data.metadata.labels #=> Array<String>
    #   resp.data.metadata.labels[0] #=> String
    #   resp.data.upload_metadata #=> Types::UploadMetadata
    #   resp.data.upload_metadata.upload_url #=> String
    #   resp.data.upload_metadata.signed_headers #=> Hash<String, String>
    #   resp.data.upload_metadata.signed_headers['key'] #=> String
    #
    def initiate_document_version_upload(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::InitiateDocumentVersionUploadInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::InitiateDocumentVersionUploadInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::InitiateDocumentVersionUpload
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 201, errors: [Errors::ResourceAlreadyCheckedOutException, Errors::FailedDependencyException, Errors::DraftUploadOutOfSyncException, Errors::ProhibitedStateException, Errors::EntityAlreadyExistsException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::StorageLimitExceededException, Errors::StorageLimitWillExceedException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::InitiateDocumentVersionUpload
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::InitiateDocumentVersionUpload,
        stubs: @stubs,
        params_class: Params::InitiateDocumentVersionUploadOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :initiate_document_version_upload
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes all the permissions from the specified resource.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveAllResourcePermissionsInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :resource_id
    #   <p>The ID of the resource.</p>
    #
    # @return [Types::RemoveAllResourcePermissionsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_all_resource_permissions(
    #     authentication_token: 'AuthenticationToken',
    #     resource_id: 'ResourceId' # required
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveAllResourcePermissionsOutput
    #
    def remove_all_resource_permissions(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveAllResourcePermissionsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveAllResourcePermissionsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveAllResourcePermissions
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::FailedDependencyException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::RemoveAllResourcePermissions
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveAllResourcePermissions,
        stubs: @stubs,
        params_class: Params::RemoveAllResourcePermissionsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_all_resource_permissions
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Removes the permission for the specified principal from the specified
    #             resource.</p>
    #
    # @param [Hash] params
    #   See {Types::RemoveResourcePermissionInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :resource_id
    #   <p>The ID of the resource.</p>
    #
    # @option params [String] :principal_id
    #   <p>The principal ID of the resource.</p>
    #
    # @option params [String] :principal_type
    #   <p>The principal type of the resource.</p>
    #
    # @return [Types::RemoveResourcePermissionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.remove_resource_permission(
    #     authentication_token: 'AuthenticationToken',
    #     resource_id: 'ResourceId', # required
    #     principal_id: 'PrincipalId', # required
    #     principal_type: 'USER' # accepts ["USER", "GROUP", "INVITE", "ANONYMOUS", "ORGANIZATION"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::RemoveResourcePermissionOutput
    #
    def remove_resource_permission(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::RemoveResourcePermissionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::RemoveResourcePermissionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::RemoveResourcePermission
      )
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 204, errors: [Errors::FailedDependencyException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::RemoveResourcePermission
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::RemoveResourcePermission,
        stubs: @stubs,
        params_class: Params::RemoveResourcePermissionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :remove_resource_permission
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified attributes of a document. The user must have access to both
    #             the document and its parent folder, if applicable.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDocumentInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    #
    # @option params [String] :name
    #   <p>The name of the document.</p>
    #
    # @option params [String] :parent_folder_id
    #   <p>The ID of the parent folder.</p>
    #
    # @option params [String] :resource_state
    #   <p>The resource state of the document. Only ACTIVE and RECYCLED are
    #               supported.</p>
    #
    # @return [Types::UpdateDocumentOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_document(
    #     authentication_token: 'AuthenticationToken',
    #     document_id: 'DocumentId', # required
    #     name: 'Name',
    #     parent_folder_id: 'ParentFolderId',
    #     resource_state: 'ACTIVE' # accepts ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDocumentOutput
    #
    def update_document(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDocumentInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDocumentInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDocument
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::ConcurrentModificationException, Errors::ConflictingOperationException, Errors::ProhibitedStateException, Errors::EntityAlreadyExistsException, Errors::UnauthorizedOperationException, Errors::LimitExceededException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::UpdateDocument
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDocument,
        stubs: @stubs,
        params_class: Params::UpdateDocumentOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_document
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Changes the status of the document version to ACTIVE. </p>
    #         <p>Amazon WorkDocs also sets its document container to ACTIVE. This is the last step
    #             in a document upload, after the client uploads the document to an S3-presigned URL
    #             returned by <a>InitiateDocumentVersionUpload</a>. </p>
    #
    # @param [Hash] params
    #   See {Types::UpdateDocumentVersionInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :document_id
    #   <p>The ID of the document.</p>
    #
    # @option params [String] :version_id
    #   <p>The version ID of the document.</p>
    #
    # @option params [String] :version_status
    #   <p>The status of the version.</p>
    #
    # @return [Types::UpdateDocumentVersionOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_document_version(
    #     authentication_token: 'AuthenticationToken',
    #     document_id: 'DocumentId', # required
    #     version_id: 'VersionId', # required
    #     version_status: 'ACTIVE' # accepts ["ACTIVE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateDocumentVersionOutput
    #
    def update_document_version(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateDocumentVersionInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateDocumentVersionInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateDocumentVersion
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::InvalidOperationException, Errors::ConcurrentModificationException, Errors::ProhibitedStateException, Errors::UnauthorizedOperationException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::UpdateDocumentVersion
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateDocumentVersion,
        stubs: @stubs,
        params_class: Params::UpdateDocumentVersionOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_document_version
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified attributes of the specified folder. The user must have access
    #             to both the folder and its parent folder, if applicable.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateFolderInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :folder_id
    #   <p>The ID of the folder.</p>
    #
    # @option params [String] :name
    #   <p>The name of the folder.</p>
    #
    # @option params [String] :parent_folder_id
    #   <p>The ID of the parent folder.</p>
    #
    # @option params [String] :resource_state
    #   <p>The resource state of the folder. Only ACTIVE and RECYCLED are accepted values from
    #               the API.</p>
    #
    # @return [Types::UpdateFolderOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_folder(
    #     authentication_token: 'AuthenticationToken',
    #     folder_id: 'FolderId', # required
    #     name: 'Name',
    #     parent_folder_id: 'ParentFolderId',
    #     resource_state: 'ACTIVE' # accepts ["ACTIVE", "RESTORING", "RECYCLING", "RECYCLED"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateFolderOutput
    #
    def update_folder(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateFolderInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateFolderInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateFolder
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::FailedDependencyException, Errors::ConcurrentModificationException, Errors::ConflictingOperationException, Errors::ProhibitedStateException, Errors::EntityAlreadyExistsException, Errors::UnauthorizedOperationException, Errors::LimitExceededException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::UpdateFolder
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateFolder,
        stubs: @stubs,
        params_class: Params::UpdateFolderOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_folder
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Updates the specified attributes of the specified user, and grants or revokes
    #             administrative privileges to the Amazon WorkDocs site.</p>
    #
    # @param [Hash] params
    #   See {Types::UpdateUserInput}.
    #
    # @option params [String] :authentication_token
    #   <p>Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.</p>
    #
    # @option params [String] :user_id
    #   <p>The ID of the user.</p>
    #
    # @option params [String] :given_name
    #   <p>The given name of the user.</p>
    #
    # @option params [String] :surname
    #   <p>The surname of the user.</p>
    #
    # @option params [String] :type
    #   <p>The type of the user.</p>
    #
    # @option params [StorageRuleType] :storage_rule
    #   <p>The amount of storage for the user.</p>
    #
    # @option params [String] :time_zone_id
    #   <p>The time zone ID of the user.</p>
    #
    # @option params [String] :locale
    #   <p>The locale of the user.</p>
    #
    # @option params [String] :grant_poweruser_privileges
    #   <p>Boolean value to determine whether the user is granted Poweruser privileges.</p>
    #
    # @return [Types::UpdateUserOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.update_user(
    #     authentication_token: 'AuthenticationToken',
    #     user_id: 'UserId', # required
    #     given_name: 'GivenName',
    #     surname: 'Surname',
    #     type: 'USER', # accepts ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"]
    #     storage_rule: {
    #       storage_allocated_in_bytes: 1,
    #       storage_type: 'UNLIMITED' # accepts ["UNLIMITED", "QUOTA"]
    #     },
    #     time_zone_id: 'TimeZoneId',
    #     locale: 'en', # accepts ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"]
    #     grant_poweruser_privileges: 'TRUE' # accepts ["TRUE", "FALSE"]
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::UpdateUserOutput
    #   resp.data.user #=> Types::User
    #   resp.data.user.id #=> String
    #   resp.data.user.username #=> String
    #   resp.data.user.email_address #=> String
    #   resp.data.user.given_name #=> String
    #   resp.data.user.surname #=> String
    #   resp.data.user.organization_id #=> String
    #   resp.data.user.root_folder_id #=> String
    #   resp.data.user.recycle_bin_folder_id #=> String
    #   resp.data.user.status #=> String, one of ["ACTIVE", "INACTIVE", "PENDING"]
    #   resp.data.user.type #=> String, one of ["USER", "ADMIN", "POWERUSER", "MINIMALUSER", "WORKSPACESUSER"]
    #   resp.data.user.created_timestamp #=> Time
    #   resp.data.user.modified_timestamp #=> Time
    #   resp.data.user.time_zone_id #=> String
    #   resp.data.user.locale #=> String, one of ["en", "fr", "ko", "de", "es", "ja", "ru", "zh_CN", "zh_TW", "pt_BR", "default"]
    #   resp.data.user.storage #=> Types::UserStorageMetadata
    #   resp.data.user.storage.storage_utilized_in_bytes #=> Integer
    #   resp.data.user.storage.storage_rule #=> Types::StorageRuleType
    #   resp.data.user.storage.storage_rule.storage_allocated_in_bytes #=> Integer
    #   resp.data.user.storage.storage_rule.storage_type #=> String, one of ["UNLIMITED", "QUOTA"]
    #
    def update_user(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::UpdateUserInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::UpdateUserInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::UpdateUser
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
      stack.use(AWS::SDK::Core::Middleware::Signer,
        signer: @config.signer
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::IllegalUserStateException, Errors::FailedDependencyException, Errors::InvalidArgumentException, Errors::UnauthorizedOperationException, Errors::DeactivatingLastSystemUserException, Errors::UnauthorizedResourceAccessException, Errors::EntityNotExistsException, Errors::ServiceUnavailableException]),
        data_parser: Parsers::UpdateUser
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::UpdateUser,
        stubs: @stubs,
        params_class: Params::UpdateUserOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :update_user
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
