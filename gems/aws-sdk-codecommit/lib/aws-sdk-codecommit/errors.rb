# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CodeCommit
  module Errors
    def self.error_code(resp)

      if !(200..299).cover?(resp.status)
        json = Hearth::JSON.load(resp.body)
        resp.body.rewind
        code = json['__type'] || json['code'] if json
      end
      code ||= resp.headers['x-amzn-errortype']
      if code
        code.split('#').last.split(':').first
      end
    end

    # Base class for all errors returned by this service
    class ApiError < Hearth::HTTP::ApiError; end

    # Base class for all errors returned where the client is at fault.
    # These are generally errors with 4XX HTTP status codes.
    class ApiClientError < ApiError; end

    # Base class for all errors returned where the server is at fault.
    # These are generally errors with 5XX HTTP status codes.
    class ApiServerError < ApiError; end

    # Base class for all errors returned where the service returned
    # a 3XX redirection.
    class ApiRedirectError < ApiError
      def initialize(location:, **kwargs)
        @location = location
        super(**kwargs)
      end

      # @return [String] location
      attr_reader :location
    end

    class ActorDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ActorDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ActorDoesNotExistException]
      #
      attr_reader :data
    end

    class ApprovalRuleContentRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ApprovalRuleContentRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ApprovalRuleContentRequiredException]
      #
      attr_reader :data
    end

    class ApprovalRuleDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ApprovalRuleDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ApprovalRuleDoesNotExistException]
      #
      attr_reader :data
    end

    class ApprovalRuleNameAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ApprovalRuleNameAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ApprovalRuleNameAlreadyExistsException]
      #
      attr_reader :data
    end

    class ApprovalRuleNameRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ApprovalRuleNameRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ApprovalRuleNameRequiredException]
      #
      attr_reader :data
    end

    class ApprovalRuleTemplateContentRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ApprovalRuleTemplateContentRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ApprovalRuleTemplateContentRequiredException]
      #
      attr_reader :data
    end

    class ApprovalRuleTemplateDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ApprovalRuleTemplateDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ApprovalRuleTemplateDoesNotExistException]
      #
      attr_reader :data
    end

    class ApprovalRuleTemplateInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ApprovalRuleTemplateInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ApprovalRuleTemplateInUseException]
      #
      attr_reader :data
    end

    class ApprovalRuleTemplateNameAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ApprovalRuleTemplateNameAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ApprovalRuleTemplateNameAlreadyExistsException]
      #
      attr_reader :data
    end

    class ApprovalRuleTemplateNameRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ApprovalRuleTemplateNameRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ApprovalRuleTemplateNameRequiredException]
      #
      attr_reader :data
    end

    class ApprovalStateRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ApprovalStateRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ApprovalStateRequiredException]
      #
      attr_reader :data
    end

    class AuthorDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AuthorDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AuthorDoesNotExistException]
      #
      attr_reader :data
    end

    class BeforeCommitIdAndAfterCommitIdAreSameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BeforeCommitIdAndAfterCommitIdAreSameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BeforeCommitIdAndAfterCommitIdAreSameException]
      #
      attr_reader :data
    end

    class BlobIdDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BlobIdDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BlobIdDoesNotExistException]
      #
      attr_reader :data
    end

    class BlobIdRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BlobIdRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BlobIdRequiredException]
      #
      attr_reader :data
    end

    class BranchDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BranchDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BranchDoesNotExistException]
      #
      attr_reader :data
    end

    class BranchNameExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BranchNameExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BranchNameExistsException]
      #
      attr_reader :data
    end

    class BranchNameIsTagNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BranchNameIsTagNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BranchNameIsTagNameException]
      #
      attr_reader :data
    end

    class BranchNameRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BranchNameRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BranchNameRequiredException]
      #
      attr_reader :data
    end

    class CannotDeleteApprovalRuleFromTemplateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CannotDeleteApprovalRuleFromTemplateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CannotDeleteApprovalRuleFromTemplateException]
      #
      attr_reader :data
    end

    class CannotModifyApprovalRuleFromTemplateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CannotModifyApprovalRuleFromTemplateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CannotModifyApprovalRuleFromTemplateException]
      #
      attr_reader :data
    end

    class ClientRequestTokenRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ClientRequestTokenRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ClientRequestTokenRequiredException]
      #
      attr_reader :data
    end

    class CommentContentRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CommentContentRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CommentContentRequiredException]
      #
      attr_reader :data
    end

    class CommentContentSizeLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CommentContentSizeLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CommentContentSizeLimitExceededException]
      #
      attr_reader :data
    end

    class CommentDeletedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CommentDeletedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CommentDeletedException]
      #
      attr_reader :data
    end

    class CommentDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CommentDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CommentDoesNotExistException]
      #
      attr_reader :data
    end

    class CommentIdRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CommentIdRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CommentIdRequiredException]
      #
      attr_reader :data
    end

    class CommentNotCreatedByCallerException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CommentNotCreatedByCallerException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CommentNotCreatedByCallerException]
      #
      attr_reader :data
    end

    class CommitDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CommitDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CommitDoesNotExistException]
      #
      attr_reader :data
    end

    class CommitIdDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CommitIdDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CommitIdDoesNotExistException]
      #
      attr_reader :data
    end

    class CommitIdRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CommitIdRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CommitIdRequiredException]
      #
      attr_reader :data
    end

    class CommitIdsLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CommitIdsLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CommitIdsLimitExceededException]
      #
      attr_reader :data
    end

    class CommitIdsListRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CommitIdsListRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CommitIdsListRequiredException]
      #
      attr_reader :data
    end

    class CommitMessageLengthExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CommitMessageLengthExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CommitMessageLengthExceededException]
      #
      attr_reader :data
    end

    class CommitRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CommitRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CommitRequiredException]
      #
      attr_reader :data
    end

    class ConcurrentReferenceUpdateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ConcurrentReferenceUpdateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ConcurrentReferenceUpdateException]
      #
      attr_reader :data
    end

    class DefaultBranchCannotBeDeletedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DefaultBranchCannotBeDeletedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DefaultBranchCannotBeDeletedException]
      #
      attr_reader :data
    end

    class DirectoryNameConflictsWithFileNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DirectoryNameConflictsWithFileNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DirectoryNameConflictsWithFileNameException]
      #
      attr_reader :data
    end

    class EncryptionIntegrityChecksFailedException < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EncryptionIntegrityChecksFailedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EncryptionIntegrityChecksFailedException]
      #
      attr_reader :data
    end

    class EncryptionKeyAccessDeniedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EncryptionKeyAccessDeniedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EncryptionKeyAccessDeniedException]
      #
      attr_reader :data
    end

    class EncryptionKeyDisabledException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EncryptionKeyDisabledException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EncryptionKeyDisabledException]
      #
      attr_reader :data
    end

    class EncryptionKeyNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EncryptionKeyNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EncryptionKeyNotFoundException]
      #
      attr_reader :data
    end

    class EncryptionKeyUnavailableException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::EncryptionKeyUnavailableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::EncryptionKeyUnavailableException]
      #
      attr_reader :data
    end

    class FileContentAndSourceFileSpecifiedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FileContentAndSourceFileSpecifiedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FileContentAndSourceFileSpecifiedException]
      #
      attr_reader :data
    end

    class FileContentRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FileContentRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FileContentRequiredException]
      #
      attr_reader :data
    end

    class FileContentSizeLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FileContentSizeLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FileContentSizeLimitExceededException]
      #
      attr_reader :data
    end

    class FileDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FileDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FileDoesNotExistException]
      #
      attr_reader :data
    end

    class FileEntryRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FileEntryRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FileEntryRequiredException]
      #
      attr_reader :data
    end

    class FileModeRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FileModeRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FileModeRequiredException]
      #
      attr_reader :data
    end

    class FileNameConflictsWithDirectoryNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FileNameConflictsWithDirectoryNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FileNameConflictsWithDirectoryNameException]
      #
      attr_reader :data
    end

    class FilePathConflictsWithSubmodulePathException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FilePathConflictsWithSubmodulePathException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FilePathConflictsWithSubmodulePathException]
      #
      attr_reader :data
    end

    class FileTooLargeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FileTooLargeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FileTooLargeException]
      #
      attr_reader :data
    end

    class FolderContentSizeLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FolderContentSizeLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FolderContentSizeLimitExceededException]
      #
      attr_reader :data
    end

    class FolderDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FolderDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FolderDoesNotExistException]
      #
      attr_reader :data
    end

    class IdempotencyParameterMismatchException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IdempotencyParameterMismatchException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IdempotencyParameterMismatchException]
      #
      attr_reader :data
    end

    class InvalidActorArnException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidActorArnException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidActorArnException]
      #
      attr_reader :data
    end

    class InvalidApprovalRuleContentException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidApprovalRuleContentException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidApprovalRuleContentException]
      #
      attr_reader :data
    end

    class InvalidApprovalRuleNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidApprovalRuleNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidApprovalRuleNameException]
      #
      attr_reader :data
    end

    class InvalidApprovalRuleTemplateContentException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidApprovalRuleTemplateContentException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidApprovalRuleTemplateContentException]
      #
      attr_reader :data
    end

    class InvalidApprovalRuleTemplateDescriptionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidApprovalRuleTemplateDescriptionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidApprovalRuleTemplateDescriptionException]
      #
      attr_reader :data
    end

    class InvalidApprovalRuleTemplateNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidApprovalRuleTemplateNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidApprovalRuleTemplateNameException]
      #
      attr_reader :data
    end

    class InvalidApprovalStateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidApprovalStateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidApprovalStateException]
      #
      attr_reader :data
    end

    class InvalidAuthorArnException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidAuthorArnException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidAuthorArnException]
      #
      attr_reader :data
    end

    class InvalidBlobIdException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidBlobIdException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidBlobIdException]
      #
      attr_reader :data
    end

    class InvalidBranchNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidBranchNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidBranchNameException]
      #
      attr_reader :data
    end

    class InvalidClientRequestTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidClientRequestTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidClientRequestTokenException]
      #
      attr_reader :data
    end

    class InvalidCommentIdException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidCommentIdException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidCommentIdException]
      #
      attr_reader :data
    end

    class InvalidCommitException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidCommitException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidCommitException]
      #
      attr_reader :data
    end

    class InvalidCommitIdException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidCommitIdException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidCommitIdException]
      #
      attr_reader :data
    end

    class InvalidConflictDetailLevelException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidConflictDetailLevelException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidConflictDetailLevelException]
      #
      attr_reader :data
    end

    class InvalidConflictResolutionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidConflictResolutionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidConflictResolutionException]
      #
      attr_reader :data
    end

    class InvalidConflictResolutionStrategyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidConflictResolutionStrategyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidConflictResolutionStrategyException]
      #
      attr_reader :data
    end

    class InvalidContinuationTokenException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidContinuationTokenException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidContinuationTokenException]
      #
      attr_reader :data
    end

    class InvalidDeletionParameterException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDeletionParameterException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDeletionParameterException]
      #
      attr_reader :data
    end

    class InvalidDescriptionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDescriptionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDescriptionException]
      #
      attr_reader :data
    end

    class InvalidDestinationCommitSpecifierException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDestinationCommitSpecifierException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDestinationCommitSpecifierException]
      #
      attr_reader :data
    end

    class InvalidEmailException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidEmailException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidEmailException]
      #
      attr_reader :data
    end

    class InvalidFileLocationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidFileLocationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidFileLocationException]
      #
      attr_reader :data
    end

    class InvalidFileModeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidFileModeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidFileModeException]
      #
      attr_reader :data
    end

    class InvalidFilePositionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidFilePositionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidFilePositionException]
      #
      attr_reader :data
    end

    class InvalidMaxConflictFilesException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidMaxConflictFilesException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidMaxConflictFilesException]
      #
      attr_reader :data
    end

    class InvalidMaxMergeHunksException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidMaxMergeHunksException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidMaxMergeHunksException]
      #
      attr_reader :data
    end

    class InvalidMaxResultsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidMaxResultsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidMaxResultsException]
      #
      attr_reader :data
    end

    class InvalidMergeOptionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidMergeOptionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidMergeOptionException]
      #
      attr_reader :data
    end

    class InvalidOrderException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidOrderException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidOrderException]
      #
      attr_reader :data
    end

    class InvalidOverrideStatusException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidOverrideStatusException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidOverrideStatusException]
      #
      attr_reader :data
    end

    class InvalidParentCommitIdException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidParentCommitIdException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidParentCommitIdException]
      #
      attr_reader :data
    end

    class InvalidPathException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidPathException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidPathException]
      #
      attr_reader :data
    end

    class InvalidPullRequestEventTypeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidPullRequestEventTypeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidPullRequestEventTypeException]
      #
      attr_reader :data
    end

    class InvalidPullRequestIdException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidPullRequestIdException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidPullRequestIdException]
      #
      attr_reader :data
    end

    class InvalidPullRequestStatusException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidPullRequestStatusException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidPullRequestStatusException]
      #
      attr_reader :data
    end

    class InvalidPullRequestStatusUpdateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidPullRequestStatusUpdateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidPullRequestStatusUpdateException]
      #
      attr_reader :data
    end

    class InvalidReactionUserArnException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidReactionUserArnException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidReactionUserArnException]
      #
      attr_reader :data
    end

    class InvalidReactionValueException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidReactionValueException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidReactionValueException]
      #
      attr_reader :data
    end

    class InvalidReferenceNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidReferenceNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidReferenceNameException]
      #
      attr_reader :data
    end

    class InvalidRelativeFileVersionEnumException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRelativeFileVersionEnumException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRelativeFileVersionEnumException]
      #
      attr_reader :data
    end

    class InvalidReplacementContentException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidReplacementContentException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidReplacementContentException]
      #
      attr_reader :data
    end

    class InvalidReplacementTypeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidReplacementTypeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidReplacementTypeException]
      #
      attr_reader :data
    end

    class InvalidRepositoryDescriptionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRepositoryDescriptionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRepositoryDescriptionException]
      #
      attr_reader :data
    end

    class InvalidRepositoryNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRepositoryNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRepositoryNameException]
      #
      attr_reader :data
    end

    class InvalidRepositoryTriggerBranchNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRepositoryTriggerBranchNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRepositoryTriggerBranchNameException]
      #
      attr_reader :data
    end

    class InvalidRepositoryTriggerCustomDataException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRepositoryTriggerCustomDataException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRepositoryTriggerCustomDataException]
      #
      attr_reader :data
    end

    class InvalidRepositoryTriggerDestinationArnException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRepositoryTriggerDestinationArnException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRepositoryTriggerDestinationArnException]
      #
      attr_reader :data
    end

    class InvalidRepositoryTriggerEventsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRepositoryTriggerEventsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRepositoryTriggerEventsException]
      #
      attr_reader :data
    end

    class InvalidRepositoryTriggerNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRepositoryTriggerNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRepositoryTriggerNameException]
      #
      attr_reader :data
    end

    class InvalidRepositoryTriggerRegionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRepositoryTriggerRegionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRepositoryTriggerRegionException]
      #
      attr_reader :data
    end

    class InvalidResourceArnException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidResourceArnException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidResourceArnException]
      #
      attr_reader :data
    end

    class InvalidRevisionIdException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRevisionIdException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRevisionIdException]
      #
      attr_reader :data
    end

    class InvalidRuleContentSha256Exception < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRuleContentSha256Exception.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRuleContentSha256Exception]
      #
      attr_reader :data
    end

    class InvalidSortByException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSortByException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSortByException]
      #
      attr_reader :data
    end

    class InvalidSourceCommitSpecifierException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSourceCommitSpecifierException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSourceCommitSpecifierException]
      #
      attr_reader :data
    end

    class InvalidSystemTagUsageException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSystemTagUsageException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSystemTagUsageException]
      #
      attr_reader :data
    end

    class InvalidTagKeysListException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTagKeysListException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTagKeysListException]
      #
      attr_reader :data
    end

    class InvalidTagsMapException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTagsMapException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTagsMapException]
      #
      attr_reader :data
    end

    class InvalidTargetBranchException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTargetBranchException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTargetBranchException]
      #
      attr_reader :data
    end

    class InvalidTargetException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTargetException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTargetException]
      #
      attr_reader :data
    end

    class InvalidTargetsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTargetsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTargetsException]
      #
      attr_reader :data
    end

    class InvalidTitleException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTitleException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTitleException]
      #
      attr_reader :data
    end

    class ManualMergeRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ManualMergeRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ManualMergeRequiredException]
      #
      attr_reader :data
    end

    class MaximumBranchesExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaximumBranchesExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaximumBranchesExceededException]
      #
      attr_reader :data
    end

    class MaximumConflictResolutionEntriesExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaximumConflictResolutionEntriesExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaximumConflictResolutionEntriesExceededException]
      #
      attr_reader :data
    end

    class MaximumFileContentToLoadExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaximumFileContentToLoadExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaximumFileContentToLoadExceededException]
      #
      attr_reader :data
    end

    class MaximumFileEntriesExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaximumFileEntriesExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaximumFileEntriesExceededException]
      #
      attr_reader :data
    end

    class MaximumItemsToCompareExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaximumItemsToCompareExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaximumItemsToCompareExceededException]
      #
      attr_reader :data
    end

    class MaximumNumberOfApprovalsExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaximumNumberOfApprovalsExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaximumNumberOfApprovalsExceededException]
      #
      attr_reader :data
    end

    class MaximumOpenPullRequestsExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaximumOpenPullRequestsExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaximumOpenPullRequestsExceededException]
      #
      attr_reader :data
    end

    class MaximumRepositoryNamesExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaximumRepositoryNamesExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaximumRepositoryNamesExceededException]
      #
      attr_reader :data
    end

    class MaximumRepositoryTriggersExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaximumRepositoryTriggersExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaximumRepositoryTriggersExceededException]
      #
      attr_reader :data
    end

    class MaximumRuleTemplatesAssociatedWithRepositoryException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaximumRuleTemplatesAssociatedWithRepositoryException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaximumRuleTemplatesAssociatedWithRepositoryException]
      #
      attr_reader :data
    end

    class MergeOptionRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MergeOptionRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MergeOptionRequiredException]
      #
      attr_reader :data
    end

    class MultipleConflictResolutionEntriesException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MultipleConflictResolutionEntriesException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MultipleConflictResolutionEntriesException]
      #
      attr_reader :data
    end

    class MultipleRepositoriesInPullRequestException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MultipleRepositoriesInPullRequestException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MultipleRepositoriesInPullRequestException]
      #
      attr_reader :data
    end

    class NameLengthExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NameLengthExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NameLengthExceededException]
      #
      attr_reader :data
    end

    class NoChangeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NoChangeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NoChangeException]
      #
      attr_reader :data
    end

    class NumberOfRuleTemplatesExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NumberOfRuleTemplatesExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NumberOfRuleTemplatesExceededException]
      #
      attr_reader :data
    end

    class NumberOfRulesExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NumberOfRulesExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NumberOfRulesExceededException]
      #
      attr_reader :data
    end

    class OverrideAlreadySetException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OverrideAlreadySetException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OverrideAlreadySetException]
      #
      attr_reader :data
    end

    class OverrideStatusRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OverrideStatusRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OverrideStatusRequiredException]
      #
      attr_reader :data
    end

    class ParentCommitDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ParentCommitDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ParentCommitDoesNotExistException]
      #
      attr_reader :data
    end

    class ParentCommitIdOutdatedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ParentCommitIdOutdatedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ParentCommitIdOutdatedException]
      #
      attr_reader :data
    end

    class ParentCommitIdRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ParentCommitIdRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ParentCommitIdRequiredException]
      #
      attr_reader :data
    end

    class PathDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PathDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PathDoesNotExistException]
      #
      attr_reader :data
    end

    class PathRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PathRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PathRequiredException]
      #
      attr_reader :data
    end

    class PullRequestAlreadyClosedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PullRequestAlreadyClosedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PullRequestAlreadyClosedException]
      #
      attr_reader :data
    end

    class PullRequestApprovalRulesNotSatisfiedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PullRequestApprovalRulesNotSatisfiedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PullRequestApprovalRulesNotSatisfiedException]
      #
      attr_reader :data
    end

    class PullRequestCannotBeApprovedByAuthorException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PullRequestCannotBeApprovedByAuthorException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PullRequestCannotBeApprovedByAuthorException]
      #
      attr_reader :data
    end

    class PullRequestDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PullRequestDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PullRequestDoesNotExistException]
      #
      attr_reader :data
    end

    class PullRequestIdRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PullRequestIdRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PullRequestIdRequiredException]
      #
      attr_reader :data
    end

    class PullRequestStatusRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PullRequestStatusRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PullRequestStatusRequiredException]
      #
      attr_reader :data
    end

    class PutFileEntryConflictException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PutFileEntryConflictException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PutFileEntryConflictException]
      #
      attr_reader :data
    end

    class ReactionLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReactionLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReactionLimitExceededException]
      #
      attr_reader :data
    end

    class ReactionValueRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReactionValueRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReactionValueRequiredException]
      #
      attr_reader :data
    end

    class ReferenceDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReferenceDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReferenceDoesNotExistException]
      #
      attr_reader :data
    end

    class ReferenceNameRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReferenceNameRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReferenceNameRequiredException]
      #
      attr_reader :data
    end

    class ReferenceTypeNotSupportedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReferenceTypeNotSupportedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReferenceTypeNotSupportedException]
      #
      attr_reader :data
    end

    class ReplacementContentRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReplacementContentRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReplacementContentRequiredException]
      #
      attr_reader :data
    end

    class ReplacementTypeRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ReplacementTypeRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ReplacementTypeRequiredException]
      #
      attr_reader :data
    end

    class RepositoryDoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RepositoryDoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RepositoryDoesNotExistException]
      #
      attr_reader :data
    end

    class RepositoryLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RepositoryLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RepositoryLimitExceededException]
      #
      attr_reader :data
    end

    class RepositoryNameExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RepositoryNameExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RepositoryNameExistsException]
      #
      attr_reader :data
    end

    class RepositoryNameRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RepositoryNameRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RepositoryNameRequiredException]
      #
      attr_reader :data
    end

    class RepositoryNamesRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RepositoryNamesRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RepositoryNamesRequiredException]
      #
      attr_reader :data
    end

    class RepositoryNotAssociatedWithPullRequestException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RepositoryNotAssociatedWithPullRequestException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RepositoryNotAssociatedWithPullRequestException]
      #
      attr_reader :data
    end

    class RepositoryTriggerBranchNameListRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RepositoryTriggerBranchNameListRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RepositoryTriggerBranchNameListRequiredException]
      #
      attr_reader :data
    end

    class RepositoryTriggerDestinationArnRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RepositoryTriggerDestinationArnRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RepositoryTriggerDestinationArnRequiredException]
      #
      attr_reader :data
    end

    class RepositoryTriggerEventsListRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RepositoryTriggerEventsListRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RepositoryTriggerEventsListRequiredException]
      #
      attr_reader :data
    end

    class RepositoryTriggerNameRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RepositoryTriggerNameRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RepositoryTriggerNameRequiredException]
      #
      attr_reader :data
    end

    class RepositoryTriggersListRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RepositoryTriggersListRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RepositoryTriggersListRequiredException]
      #
      attr_reader :data
    end

    class ResourceArnRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceArnRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceArnRequiredException]
      #
      attr_reader :data
    end

    class RestrictedSourceFileException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RestrictedSourceFileException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RestrictedSourceFileException]
      #
      attr_reader :data
    end

    class RevisionIdRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RevisionIdRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RevisionIdRequiredException]
      #
      attr_reader :data
    end

    class RevisionNotCurrentException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::RevisionNotCurrentException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::RevisionNotCurrentException]
      #
      attr_reader :data
    end

    class SameFileContentException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SameFileContentException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SameFileContentException]
      #
      attr_reader :data
    end

    class SamePathRequestException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SamePathRequestException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SamePathRequestException]
      #
      attr_reader :data
    end

    class SourceAndDestinationAreSameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SourceAndDestinationAreSameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SourceAndDestinationAreSameException]
      #
      attr_reader :data
    end

    class SourceFileOrContentRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SourceFileOrContentRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SourceFileOrContentRequiredException]
      #
      attr_reader :data
    end

    class TagKeysListRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TagKeysListRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TagKeysListRequiredException]
      #
      attr_reader :data
    end

    class TagPolicyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TagPolicyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TagPolicyException]
      #
      attr_reader :data
    end

    class TagsMapRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TagsMapRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TagsMapRequiredException]
      #
      attr_reader :data
    end

    class TargetRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TargetRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TargetRequiredException]
      #
      attr_reader :data
    end

    class TargetsRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TargetsRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TargetsRequiredException]
      #
      attr_reader :data
    end

    class TipOfSourceReferenceIsDifferentException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TipOfSourceReferenceIsDifferentException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TipOfSourceReferenceIsDifferentException]
      #
      attr_reader :data
    end

    class TipsDivergenceExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TipsDivergenceExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TipsDivergenceExceededException]
      #
      attr_reader :data
    end

    class TitleRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TitleRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TitleRequiredException]
      #
      attr_reader :data
    end

    class TooManyTagsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyTagsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyTagsException]
      #
      attr_reader :data
    end

  end
end
