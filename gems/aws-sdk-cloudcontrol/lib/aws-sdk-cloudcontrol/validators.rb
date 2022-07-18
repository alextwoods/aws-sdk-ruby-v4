# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::CloudControl
  module Validators

    class AlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CancelResourceRequestInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelResourceRequestInput, context: context)
        Hearth::Validator.validate!(input[:request_token], ::String, context: "#{context}[:request_token]")
      end
    end

    class CancelResourceRequestOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelResourceRequestOutput, context: context)
        ProgressEvent.validate!(input[:progress_event], context: "#{context}[:progress_event]") unless input[:progress_event].nil?
      end
    end

    class ClientTokenConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClientTokenConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConcurrentModificationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentModificationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConcurrentOperationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConcurrentOperationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceInput, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:type_version_id], ::String, context: "#{context}[:type_version_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:desired_state], ::String, context: "#{context}[:desired_state]")
      end
    end

    class CreateResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateResourceOutput, context: context)
        ProgressEvent.validate!(input[:progress_event], context: "#{context}[:progress_event]") unless input[:progress_event].nil?
      end
    end

    class DeleteResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceInput, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:type_version_id], ::String, context: "#{context}[:type_version_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
      end
    end

    class DeleteResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteResourceOutput, context: context)
        ProgressEvent.validate!(input[:progress_event], context: "#{context}[:progress_event]") unless input[:progress_event].nil?
      end
    end

    class GeneralServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GeneralServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GetResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceInput, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:type_version_id], ::String, context: "#{context}[:type_version_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
      end
    end

    class GetResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceOutput, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        ResourceDescription.validate!(input[:resource_description], context: "#{context}[:resource_description]") unless input[:resource_description].nil?
      end
    end

    class GetResourceRequestStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceRequestStatusInput, context: context)
        Hearth::Validator.validate!(input[:request_token], ::String, context: "#{context}[:request_token]")
      end
    end

    class GetResourceRequestStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetResourceRequestStatusOutput, context: context)
        ProgressEvent.validate!(input[:progress_event], context: "#{context}[:progress_event]") unless input[:progress_event].nil?
      end
    end

    class HandlerFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HandlerFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class HandlerInternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HandlerInternalFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidCredentialsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidCredentialsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListResourceRequestsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceRequestsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        ResourceRequestStatusFilter.validate!(input[:resource_request_status_filter], context: "#{context}[:resource_request_status_filter]") unless input[:resource_request_status_filter].nil?
      end
    end

    class ListResourceRequestsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourceRequestsOutput, context: context)
        ResourceRequestStatusSummaries.validate!(input[:resource_request_status_summaries], context: "#{context}[:resource_request_status_summaries]") unless input[:resource_request_status_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListResourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesInput, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:type_version_id], ::String, context: "#{context}[:type_version_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:resource_model], ::String, context: "#{context}[:resource_model]")
      end
    end

    class ListResourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListResourcesOutput, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        ResourceDescriptions.validate!(input[:resource_descriptions], context: "#{context}[:resource_descriptions]") unless input[:resource_descriptions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class NetworkFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NetworkFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotStabilizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotStabilizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotUpdatableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotUpdatableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OperationStatuses
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Operations
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PrivateTypeException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrivateTypeException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ProgressEvent
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProgressEvent, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:request_token], ::String, context: "#{context}[:request_token]")
        Hearth::Validator.validate!(input[:operation], ::String, context: "#{context}[:operation]")
        Hearth::Validator.validate!(input[:operation_status], ::String, context: "#{context}[:operation_status]")
        Hearth::Validator.validate!(input[:event_time], ::Time, context: "#{context}[:event_time]")
        Hearth::Validator.validate!(input[:resource_model], ::String, context: "#{context}[:resource_model]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:retry_after], ::Time, context: "#{context}[:retry_after]")
      end
    end

    class RequestTokenNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestTokenNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceDescription
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceDescription, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:properties], ::String, context: "#{context}[:properties]")
      end
    end

    class ResourceDescriptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResourceDescription.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceRequestStatusFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceRequestStatusFilter, context: context)
        Operations.validate!(input[:operations], context: "#{context}[:operations]") unless input[:operations].nil?
        OperationStatuses.validate!(input[:operation_statuses], context: "#{context}[:operation_statuses]") unless input[:operation_statuses].nil?
      end
    end

    class ResourceRequestStatusSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ProgressEvent.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ServiceInternalErrorException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceInternalErrorException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ServiceLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TypeNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TypeNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedActionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedActionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdateResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceInput, context: context)
        Hearth::Validator.validate!(input[:type_name], ::String, context: "#{context}[:type_name]")
        Hearth::Validator.validate!(input[:type_version_id], ::String, context: "#{context}[:type_version_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:patch_document], ::String, context: "#{context}[:patch_document]")
      end
    end

    class UpdateResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateResourceOutput, context: context)
        ProgressEvent.validate!(input[:progress_event], context: "#{context}[:progress_event]") unless input[:progress_event].nil?
      end
    end

  end
end
