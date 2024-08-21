# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DynamoDB
  module Errors
    def self.error_code(resp)

      if !(200..299).cover?(resp.status)
        json = Hearth::JSON.parse(resp.body.read)
        resp.body.rewind
        code = json['__type'] || json['code'] if json
      end
      code ||= resp.headers['x-amzn-errortype']
      if code
        code.split('#').last.split(':').first
      end
    rescue Hearth::JSON::ParseError
      "HTTP #{resp.status} Error"
    end

    # Base class for all errors returned by this service
    class ApiError < Hearth::ApiError; end

    # Base class for all errors returned where the client is at fault.
    class ApiClientError < ApiError; end

    # Base class for all errors returned where the server is at fault.
    class ApiServerError < ApiError; end

    # Base class for all errors returned where the service returned
    # a redirection.
    class ApiRedirectError < ApiError
      def initialize(location:, **kwargs)
        @location = location
        super(**kwargs)
      end

      # @return [String] location
      attr_reader :location
    end

    class BackupInUseException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::BackupInUseException]
      attr_reader :data
    end

    class BackupNotFoundException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::BackupNotFoundException]
      attr_reader :data
    end

    class ConditionalCheckFailedException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::ConditionalCheckFailedException]
      attr_reader :data
    end

    class ContinuousBackupsUnavailableException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::ContinuousBackupsUnavailableException]
      attr_reader :data
    end

    class DuplicateItemException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::DuplicateItemException]
      attr_reader :data
    end

    class ExportConflictException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::ExportConflictException]
      attr_reader :data
    end

    class ExportNotFoundException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::ExportNotFoundException]
      attr_reader :data
    end

    class GlobalTableAlreadyExistsException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::GlobalTableAlreadyExistsException]
      attr_reader :data
    end

    class GlobalTableNotFoundException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::GlobalTableNotFoundException]
      attr_reader :data
    end

    class IdempotentParameterMismatchException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::IdempotentParameterMismatchException]
      attr_reader :data
    end

    class ImportConflictException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::ImportConflictException]
      attr_reader :data
    end

    class ImportNotFoundException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::ImportNotFoundException]
      attr_reader :data
    end

    class IndexNotFoundException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::IndexNotFoundException]
      attr_reader :data
    end

    class InternalServerError < ApiServerError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::InternalServerError]
      attr_reader :data
    end

    class InvalidEndpointException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::InvalidEndpointException]
      attr_reader :data
    end

    class InvalidExportTimeException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::InvalidExportTimeException]
      attr_reader :data
    end

    class InvalidRestoreTimeException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::InvalidRestoreTimeException]
      attr_reader :data
    end

    class ItemCollectionSizeLimitExceededException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::ItemCollectionSizeLimitExceededException]
      attr_reader :data
    end

    class LimitExceededException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::LimitExceededException]
      attr_reader :data
    end

    class PointInTimeRecoveryUnavailableException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::PointInTimeRecoveryUnavailableException]
      attr_reader :data
    end

    class ProvisionedThroughputExceededException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::ProvisionedThroughputExceededException]
      attr_reader :data
    end

    class ReplicaAlreadyExistsException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::ReplicaAlreadyExistsException]
      attr_reader :data
    end

    class ReplicaNotFoundException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::ReplicaNotFoundException]
      attr_reader :data
    end

    class RequestLimitExceeded < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::RequestLimitExceeded]
      attr_reader :data
    end

    class ResourceInUseException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::ResourceInUseException]
      attr_reader :data
    end

    class ResourceNotFoundException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::ResourceNotFoundException]
      attr_reader :data
    end

    class TableAlreadyExistsException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::TableAlreadyExistsException]
      attr_reader :data
    end

    class TableInUseException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::TableInUseException]
      attr_reader :data
    end

    class TableNotFoundException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::TableNotFoundException]
      attr_reader :data
    end

    class TransactionCanceledException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::TransactionCanceledException]
      attr_reader :data
    end

    class TransactionConflictException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::TransactionConflictException]
      attr_reader :data
    end

    class TransactionInProgressException < ApiClientError
      def initialize(data:, **kwargs)
        @data = data
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(**kwargs)
      end

      # @return [Types::TransactionInProgressException]
      attr_reader :data
    end

  end
end
