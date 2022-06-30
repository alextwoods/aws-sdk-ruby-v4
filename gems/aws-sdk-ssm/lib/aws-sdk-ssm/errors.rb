# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SSM
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

    class AlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AlreadyExistsException]
      #
      attr_reader :data
    end

    class AssociatedInstances < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AssociatedInstances.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AssociatedInstances]
      #
      attr_reader :data
    end

    class AssociationAlreadyExists < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AssociationAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AssociationAlreadyExists]
      #
      attr_reader :data
    end

    class AssociationDoesNotExist < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AssociationDoesNotExist.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AssociationDoesNotExist]
      #
      attr_reader :data
    end

    class AssociationExecutionDoesNotExist < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AssociationExecutionDoesNotExist.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AssociationExecutionDoesNotExist]
      #
      attr_reader :data
    end

    class AssociationLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AssociationLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AssociationLimitExceeded]
      #
      attr_reader :data
    end

    class AssociationVersionLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AssociationVersionLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AssociationVersionLimitExceeded]
      #
      attr_reader :data
    end

    class AutomationDefinitionNotApprovedException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AutomationDefinitionNotApprovedException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AutomationDefinitionNotApprovedException]
      #
      attr_reader :data
    end

    class AutomationDefinitionNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AutomationDefinitionNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AutomationDefinitionNotFoundException]
      #
      attr_reader :data
    end

    class AutomationDefinitionVersionNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AutomationDefinitionVersionNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AutomationDefinitionVersionNotFoundException]
      #
      attr_reader :data
    end

    class AutomationExecutionLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AutomationExecutionLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AutomationExecutionLimitExceededException]
      #
      attr_reader :data
    end

    class AutomationExecutionNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AutomationExecutionNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AutomationExecutionNotFoundException]
      #
      attr_reader :data
    end

    class AutomationStepNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::AutomationStepNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::AutomationStepNotFoundException]
      #
      attr_reader :data
    end

    class ComplianceTypeCountLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ComplianceTypeCountLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ComplianceTypeCountLimitExceededException]
      #
      attr_reader :data
    end

    class CustomSchemaCountLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::CustomSchemaCountLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::CustomSchemaCountLimitExceededException]
      #
      attr_reader :data
    end

    class DocumentAlreadyExists < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DocumentAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DocumentAlreadyExists]
      #
      attr_reader :data
    end

    class DocumentLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DocumentLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DocumentLimitExceeded]
      #
      attr_reader :data
    end

    class DocumentPermissionLimit < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DocumentPermissionLimit.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DocumentPermissionLimit]
      #
      attr_reader :data
    end

    class DocumentVersionLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DocumentVersionLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DocumentVersionLimitExceeded]
      #
      attr_reader :data
    end

    class DoesNotExistException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DoesNotExistException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DoesNotExistException]
      #
      attr_reader :data
    end

    class DuplicateDocumentContent < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicateDocumentContent.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicateDocumentContent]
      #
      attr_reader :data
    end

    class DuplicateDocumentVersionName < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicateDocumentVersionName.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicateDocumentVersionName]
      #
      attr_reader :data
    end

    class DuplicateInstanceId < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::DuplicateInstanceId.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::DuplicateInstanceId]
      #
      attr_reader :data
    end

    class FeatureNotAvailableException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::FeatureNotAvailableException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::FeatureNotAvailableException]
      #
      attr_reader :data
    end

    class HierarchyLevelLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HierarchyLevelLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HierarchyLevelLimitExceededException]
      #
      attr_reader :data
    end

    class HierarchyTypeMismatchException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::HierarchyTypeMismatchException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::HierarchyTypeMismatchException]
      #
      attr_reader :data
    end

    class IdempotentParameterMismatch < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IdempotentParameterMismatch.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IdempotentParameterMismatch]
      #
      attr_reader :data
    end

    class IncompatiblePolicyException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::IncompatiblePolicyException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::IncompatiblePolicyException]
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

    class InvalidActivation < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidActivation.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidActivation]
      #
      attr_reader :data
    end

    class InvalidActivationId < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidActivationId.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidActivationId]
      #
      attr_reader :data
    end

    class InvalidAggregatorException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidAggregatorException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidAggregatorException]
      #
      attr_reader :data
    end

    class InvalidAllowedPatternException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidAllowedPatternException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidAllowedPatternException]
      #
      attr_reader :data
    end

    class InvalidAssociation < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidAssociation.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidAssociation]
      #
      attr_reader :data
    end

    class InvalidAssociationVersion < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidAssociationVersion.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidAssociationVersion]
      #
      attr_reader :data
    end

    class InvalidAutomationExecutionParametersException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidAutomationExecutionParametersException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidAutomationExecutionParametersException]
      #
      attr_reader :data
    end

    class InvalidAutomationSignalException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidAutomationSignalException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidAutomationSignalException]
      #
      attr_reader :data
    end

    class InvalidAutomationStatusUpdateException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidAutomationStatusUpdateException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidAutomationStatusUpdateException]
      #
      attr_reader :data
    end

    class InvalidCommandId < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidCommandId.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidCommandId]
      #
      attr_reader :data
    end

    class InvalidDeleteInventoryParametersException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDeleteInventoryParametersException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDeleteInventoryParametersException]
      #
      attr_reader :data
    end

    class InvalidDeletionIdException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDeletionIdException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDeletionIdException]
      #
      attr_reader :data
    end

    class InvalidDocument < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDocument.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDocument]
      #
      attr_reader :data
    end

    class InvalidDocumentContent < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDocumentContent.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDocumentContent]
      #
      attr_reader :data
    end

    class InvalidDocumentOperation < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDocumentOperation.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDocumentOperation]
      #
      attr_reader :data
    end

    class InvalidDocumentSchemaVersion < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDocumentSchemaVersion.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDocumentSchemaVersion]
      #
      attr_reader :data
    end

    class InvalidDocumentType < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDocumentType.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDocumentType]
      #
      attr_reader :data
    end

    class InvalidDocumentVersion < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidDocumentVersion.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidDocumentVersion]
      #
      attr_reader :data
    end

    class InvalidFilter < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidFilter.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidFilter]
      #
      attr_reader :data
    end

    class InvalidFilterKey < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidFilterKey.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidFilterKey]
      #
      attr_reader :data
    end

    class InvalidFilterOption < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidFilterOption.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidFilterOption]
      #
      attr_reader :data
    end

    class InvalidFilterValue < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidFilterValue.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidFilterValue]
      #
      attr_reader :data
    end

    class InvalidInstanceId < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidInstanceId.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidInstanceId]
      #
      attr_reader :data
    end

    class InvalidInstanceInformationFilterValue < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidInstanceInformationFilterValue.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidInstanceInformationFilterValue]
      #
      attr_reader :data
    end

    class InvalidInventoryGroupException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidInventoryGroupException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidInventoryGroupException]
      #
      attr_reader :data
    end

    class InvalidInventoryItemContextException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidInventoryItemContextException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidInventoryItemContextException]
      #
      attr_reader :data
    end

    class InvalidInventoryRequestException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidInventoryRequestException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidInventoryRequestException]
      #
      attr_reader :data
    end

    class InvalidItemContentException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidItemContentException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidItemContentException]
      #
      attr_reader :data
    end

    class InvalidKeyId < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidKeyId.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidKeyId]
      #
      attr_reader :data
    end

    class InvalidNextToken < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidNextToken.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidNextToken]
      #
      attr_reader :data
    end

    class InvalidNotificationConfig < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidNotificationConfig.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidNotificationConfig]
      #
      attr_reader :data
    end

    class InvalidOptionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidOptionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidOptionException]
      #
      attr_reader :data
    end

    class InvalidOutputFolder < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidOutputFolder.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidOutputFolder]
      #
      attr_reader :data
    end

    class InvalidOutputLocation < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidOutputLocation.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidOutputLocation]
      #
      attr_reader :data
    end

    class InvalidParameters < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidParameters.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidParameters]
      #
      attr_reader :data
    end

    class InvalidPermissionType < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidPermissionType.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidPermissionType]
      #
      attr_reader :data
    end

    class InvalidPluginName < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidPluginName.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidPluginName]
      #
      attr_reader :data
    end

    class InvalidPolicyAttributeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidPolicyAttributeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidPolicyAttributeException]
      #
      attr_reader :data
    end

    class InvalidPolicyTypeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidPolicyTypeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidPolicyTypeException]
      #
      attr_reader :data
    end

    class InvalidResourceId < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidResourceId.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidResourceId]
      #
      attr_reader :data
    end

    class InvalidResourceType < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidResourceType.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidResourceType]
      #
      attr_reader :data
    end

    class InvalidResultAttributeException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidResultAttributeException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidResultAttributeException]
      #
      attr_reader :data
    end

    class InvalidRole < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidRole.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidRole]
      #
      attr_reader :data
    end

    class InvalidSchedule < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidSchedule.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidSchedule]
      #
      attr_reader :data
    end

    class InvalidTarget < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTarget.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTarget]
      #
      attr_reader :data
    end

    class InvalidTargetMaps < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTargetMaps.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTargetMaps]
      #
      attr_reader :data
    end

    class InvalidTypeNameException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidTypeNameException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidTypeNameException]
      #
      attr_reader :data
    end

    class InvalidUpdate < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvalidUpdate.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvalidUpdate]
      #
      attr_reader :data
    end

    class InvocationDoesNotExist < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::InvocationDoesNotExist.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::InvocationDoesNotExist]
      #
      attr_reader :data
    end

    class ItemContentMismatchException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ItemContentMismatchException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ItemContentMismatchException]
      #
      attr_reader :data
    end

    class ItemSizeLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ItemSizeLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ItemSizeLimitExceededException]
      #
      attr_reader :data
    end

    class MaxDocumentSizeExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::MaxDocumentSizeExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::MaxDocumentSizeExceeded]
      #
      attr_reader :data
    end

    class OpsItemAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OpsItemAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OpsItemAlreadyExistsException]
      #
      attr_reader :data
    end

    class OpsItemInvalidParameterException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OpsItemInvalidParameterException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OpsItemInvalidParameterException]
      #
      attr_reader :data
    end

    class OpsItemLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OpsItemLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OpsItemLimitExceededException]
      #
      attr_reader :data
    end

    class OpsItemNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OpsItemNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OpsItemNotFoundException]
      #
      attr_reader :data
    end

    class OpsItemRelatedItemAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OpsItemRelatedItemAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OpsItemRelatedItemAlreadyExistsException]
      #
      attr_reader :data
    end

    class OpsItemRelatedItemAssociationNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OpsItemRelatedItemAssociationNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OpsItemRelatedItemAssociationNotFoundException]
      #
      attr_reader :data
    end

    class OpsMetadataAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OpsMetadataAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OpsMetadataAlreadyExistsException]
      #
      attr_reader :data
    end

    class OpsMetadataInvalidArgumentException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OpsMetadataInvalidArgumentException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OpsMetadataInvalidArgumentException]
      #
      attr_reader :data
    end

    class OpsMetadataKeyLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OpsMetadataKeyLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OpsMetadataKeyLimitExceededException]
      #
      attr_reader :data
    end

    class OpsMetadataLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OpsMetadataLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OpsMetadataLimitExceededException]
      #
      attr_reader :data
    end

    class OpsMetadataNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OpsMetadataNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OpsMetadataNotFoundException]
      #
      attr_reader :data
    end

    class OpsMetadataTooManyUpdatesException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::OpsMetadataTooManyUpdatesException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::OpsMetadataTooManyUpdatesException]
      #
      attr_reader :data
    end

    class ParameterAlreadyExists < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ParameterAlreadyExists.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ParameterAlreadyExists]
      #
      attr_reader :data
    end

    class ParameterLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ParameterLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ParameterLimitExceeded]
      #
      attr_reader :data
    end

    class ParameterMaxVersionLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ParameterMaxVersionLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ParameterMaxVersionLimitExceeded]
      #
      attr_reader :data
    end

    class ParameterNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ParameterNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ParameterNotFound]
      #
      attr_reader :data
    end

    class ParameterPatternMismatchException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ParameterPatternMismatchException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ParameterPatternMismatchException]
      #
      attr_reader :data
    end

    class ParameterVersionLabelLimitExceeded < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ParameterVersionLabelLimitExceeded.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ParameterVersionLabelLimitExceeded]
      #
      attr_reader :data
    end

    class ParameterVersionNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ParameterVersionNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ParameterVersionNotFound]
      #
      attr_reader :data
    end

    class PoliciesLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::PoliciesLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::PoliciesLimitExceededException]
      #
      attr_reader :data
    end

    class ResourceDataSyncAlreadyExistsException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceDataSyncAlreadyExistsException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceDataSyncAlreadyExistsException]
      #
      attr_reader :data
    end

    class ResourceDataSyncConflictException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceDataSyncConflictException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceDataSyncConflictException]
      #
      attr_reader :data
    end

    class ResourceDataSyncCountExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceDataSyncCountExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceDataSyncCountExceededException]
      #
      attr_reader :data
    end

    class ResourceDataSyncInvalidConfigurationException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceDataSyncInvalidConfigurationException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceDataSyncInvalidConfigurationException]
      #
      attr_reader :data
    end

    class ResourceDataSyncNotFoundException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceDataSyncNotFoundException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceDataSyncNotFoundException]
      #
      attr_reader :data
    end

    class ResourceInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceInUseException]
      #
      attr_reader :data
    end

    class ResourceLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ResourceLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ResourceLimitExceededException]
      #
      attr_reader :data
    end

    class ServiceSettingNotFound < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::ServiceSettingNotFound.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::ServiceSettingNotFound]
      #
      attr_reader :data
    end

    class StatusUnchanged < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::StatusUnchanged.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::StatusUnchanged]
      #
      attr_reader :data
    end

    class SubTypeCountLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::SubTypeCountLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::SubTypeCountLimitExceededException]
      #
      attr_reader :data
    end

    class TargetInUseException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TargetInUseException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TargetInUseException]
      #
      attr_reader :data
    end

    class TargetNotConnected < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TargetNotConnected.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TargetNotConnected]
      #
      attr_reader :data
    end

    class TooManyTagsError < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyTagsError.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyTagsError]
      #
      attr_reader :data
    end

    class TooManyUpdates < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TooManyUpdates.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TooManyUpdates]
      #
      attr_reader :data
    end

    class TotalSizeLimitExceededException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::TotalSizeLimitExceededException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::TotalSizeLimitExceededException]
      #
      attr_reader :data
    end

    class UnsupportedCalendarException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedCalendarException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedCalendarException]
      #
      attr_reader :data
    end

    class UnsupportedFeatureRequiredException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedFeatureRequiredException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedFeatureRequiredException]
      #
      attr_reader :data
    end

    class UnsupportedInventoryItemContextException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedInventoryItemContextException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedInventoryItemContextException]
      #
      attr_reader :data
    end

    class UnsupportedInventorySchemaVersionException < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedInventorySchemaVersionException.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedInventorySchemaVersionException]
      #
      attr_reader :data
    end

    class UnsupportedOperatingSystem < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedOperatingSystem.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedOperatingSystem]
      #
      attr_reader :data
    end

    class UnsupportedParameterType < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedParameterType.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedParameterType]
      #
      attr_reader :data
    end

    class UnsupportedPlatformType < ApiClientError
      def initialize(http_resp:, **kwargs)
        @data = Parsers::UnsupportedPlatformType.parse(http_resp)
        kwargs[:message] = @data.message if @data.respond_to?(:message)

        super(http_resp: http_resp, **kwargs)
      end

      # @return [Types::UnsupportedPlatformType]
      #
      attr_reader :data
    end

  end
end
