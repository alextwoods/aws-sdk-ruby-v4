# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::FSx
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

    class ActiveDirectoryError < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ActiveDirectoryError.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ActiveDirectoryError]
      #
      attr_reader :data
    end

    class BackupBeingCopied < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BackupBeingCopied.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BackupBeingCopied]
      #
      attr_reader :data
    end

    class BackupInProgress < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BackupInProgress.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BackupInProgress]
      #
      attr_reader :data
    end

    class BackupNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BackupNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BackupNotFound]
      #
      attr_reader :data
    end

    class BackupRestoring < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BackupRestoring.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BackupRestoring]
      #
      attr_reader :data
    end

    class BadRequest < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::BadRequest.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::BadRequest]
      #
      attr_reader :data
    end

    class DataRepositoryAssociationNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DataRepositoryAssociationNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DataRepositoryAssociationNotFound]
      #
      attr_reader :data
    end

    class DataRepositoryTaskEnded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DataRepositoryTaskEnded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DataRepositoryTaskEnded]
      #
      attr_reader :data
    end

    class DataRepositoryTaskExecuting < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DataRepositoryTaskExecuting.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DataRepositoryTaskExecuting]
      #
      attr_reader :data
    end

    class DataRepositoryTaskNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DataRepositoryTaskNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DataRepositoryTaskNotFound]
      #
      attr_reader :data
    end

    class FileSystemNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FileSystemNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FileSystemNotFound]
      #
      attr_reader :data
    end

    class IncompatibleParameterError < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IncompatibleParameterError.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IncompatibleParameterError]
      #
      attr_reader :data
    end

    class IncompatibleRegionForMultiAZ < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IncompatibleRegionForMultiAZ.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IncompatibleRegionForMultiAZ]
      #
      attr_reader :data
    end

    class InternalServerError < ApiServerError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InternalServerError.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InternalServerError]
      #
      attr_reader :data
    end

    class InvalidDataRepositoryType < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDataRepositoryType.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDataRepositoryType]
      #
      attr_reader :data
    end

    class InvalidDestinationKmsKey < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDestinationKmsKey.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDestinationKmsKey]
      #
      attr_reader :data
    end

    class InvalidExportPath < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidExportPath.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidExportPath]
      #
      attr_reader :data
    end

    class InvalidImportPath < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidImportPath.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidImportPath]
      #
      attr_reader :data
    end

    class InvalidNetworkSettings < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidNetworkSettings.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidNetworkSettings]
      #
      attr_reader :data
    end

    class InvalidPerUnitStorageThroughput < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidPerUnitStorageThroughput.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidPerUnitStorageThroughput]
      #
      attr_reader :data
    end

    class InvalidRegion < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRegion.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRegion]
      #
      attr_reader :data
    end

    class InvalidSourceKmsKey < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSourceKmsKey.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSourceKmsKey]
      #
      attr_reader :data
    end

    class MissingFileSystemConfiguration < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MissingFileSystemConfiguration.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MissingFileSystemConfiguration]
      #
      attr_reader :data
    end

    class MissingVolumeConfiguration < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MissingVolumeConfiguration.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MissingVolumeConfiguration]
      #
      attr_reader :data
    end

    class NotServiceResourceError < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::NotServiceResourceError.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::NotServiceResourceError]
      #
      attr_reader :data
    end

    class ResourceDoesNotSupportTagging < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceDoesNotSupportTagging.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceDoesNotSupportTagging]
      #
      attr_reader :data
    end

    class ResourceNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceNotFound]
      #
      attr_reader :data
    end

    class ServiceLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceLimitExceeded]
      #
      attr_reader :data
    end

    class SnapshotNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SnapshotNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SnapshotNotFound]
      #
      attr_reader :data
    end

    class SourceBackupUnavailable < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SourceBackupUnavailable.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SourceBackupUnavailable]
      #
      attr_reader :data
    end

    class StorageVirtualMachineNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StorageVirtualMachineNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StorageVirtualMachineNotFound]
      #
      attr_reader :data
    end

    class UnsupportedOperation < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedOperation.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedOperation]
      #
      attr_reader :data
    end

    class VolumeNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::VolumeNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::VolumeNotFound]
      #
      attr_reader :data
    end

  end
end
