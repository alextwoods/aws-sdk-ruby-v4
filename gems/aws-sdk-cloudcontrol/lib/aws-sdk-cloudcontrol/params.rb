# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CloudControl
  module Params

    module AlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AlreadyExistsException, context: context)
        type = Types::AlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module CancelResourceRequestInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelResourceRequestInput, context: context)
        type = Types::CancelResourceRequestInput.new
        type.request_token = params[:request_token]
        type
      end
    end

    module CancelResourceRequestOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelResourceRequestOutput, context: context)
        type = Types::CancelResourceRequestOutput.new
        type.progress_event = ProgressEvent.build(params[:progress_event], context: "#{context}[:progress_event]") unless params[:progress_event].nil?
        type
      end
    end

    module ClientTokenConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClientTokenConflictException, context: context)
        type = Types::ClientTokenConflictException.new
        type.message = params[:message]
        type
      end
    end

    module ConcurrentModificationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentModificationException, context: context)
        type = Types::ConcurrentModificationException.new
        type.message = params[:message]
        type
      end
    end

    module ConcurrentOperationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConcurrentOperationException, context: context)
        type = Types::ConcurrentOperationException.new
        type.message = params[:message]
        type
      end
    end

    module CreateResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceInput, context: context)
        type = Types::CreateResourceInput.new
        type.type_name = params[:type_name]
        type.type_version_id = params[:type_version_id]
        type.role_arn = params[:role_arn]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.desired_state = params[:desired_state]
        type
      end
    end

    module CreateResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateResourceOutput, context: context)
        type = Types::CreateResourceOutput.new
        type.progress_event = ProgressEvent.build(params[:progress_event], context: "#{context}[:progress_event]") unless params[:progress_event].nil?
        type
      end
    end

    module DeleteResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceInput, context: context)
        type = Types::DeleteResourceInput.new
        type.type_name = params[:type_name]
        type.type_version_id = params[:type_version_id]
        type.role_arn = params[:role_arn]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.identifier = params[:identifier]
        type
      end
    end

    module DeleteResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteResourceOutput, context: context)
        type = Types::DeleteResourceOutput.new
        type.progress_event = ProgressEvent.build(params[:progress_event], context: "#{context}[:progress_event]") unless params[:progress_event].nil?
        type
      end
    end

    module GeneralServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GeneralServiceException, context: context)
        type = Types::GeneralServiceException.new
        type.message = params[:message]
        type
      end
    end

    module GetResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceInput, context: context)
        type = Types::GetResourceInput.new
        type.type_name = params[:type_name]
        type.type_version_id = params[:type_version_id]
        type.role_arn = params[:role_arn]
        type.identifier = params[:identifier]
        type
      end
    end

    module GetResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceOutput, context: context)
        type = Types::GetResourceOutput.new
        type.type_name = params[:type_name]
        type.resource_description = ResourceDescription.build(params[:resource_description], context: "#{context}[:resource_description]") unless params[:resource_description].nil?
        type
      end
    end

    module GetResourceRequestStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceRequestStatusInput, context: context)
        type = Types::GetResourceRequestStatusInput.new
        type.request_token = params[:request_token]
        type
      end
    end

    module GetResourceRequestStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetResourceRequestStatusOutput, context: context)
        type = Types::GetResourceRequestStatusOutput.new
        type.progress_event = ProgressEvent.build(params[:progress_event], context: "#{context}[:progress_event]") unless params[:progress_event].nil?
        type
      end
    end

    module HandlerFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HandlerFailureException, context: context)
        type = Types::HandlerFailureException.new
        type.message = params[:message]
        type
      end
    end

    module HandlerInternalFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HandlerInternalFailureException, context: context)
        type = Types::HandlerInternalFailureException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidCredentialsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidCredentialsException, context: context)
        type = Types::InvalidCredentialsException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module ListResourceRequestsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceRequestsInput, context: context)
        type = Types::ListResourceRequestsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.resource_request_status_filter = ResourceRequestStatusFilter.build(params[:resource_request_status_filter], context: "#{context}[:resource_request_status_filter]") unless params[:resource_request_status_filter].nil?
        type
      end
    end

    module ListResourceRequestsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourceRequestsOutput, context: context)
        type = Types::ListResourceRequestsOutput.new
        type.resource_request_status_summaries = ResourceRequestStatusSummaries.build(params[:resource_request_status_summaries], context: "#{context}[:resource_request_status_summaries]") unless params[:resource_request_status_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListResourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesInput, context: context)
        type = Types::ListResourcesInput.new
        type.type_name = params[:type_name]
        type.type_version_id = params[:type_version_id]
        type.role_arn = params[:role_arn]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.resource_model = params[:resource_model]
        type
      end
    end

    module ListResourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListResourcesOutput, context: context)
        type = Types::ListResourcesOutput.new
        type.type_name = params[:type_name]
        type.resource_descriptions = ResourceDescriptions.build(params[:resource_descriptions], context: "#{context}[:resource_descriptions]") unless params[:resource_descriptions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module NetworkFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NetworkFailureException, context: context)
        type = Types::NetworkFailureException.new
        type.message = params[:message]
        type
      end
    end

    module NotStabilizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotStabilizedException, context: context)
        type = Types::NotStabilizedException.new
        type.message = params[:message]
        type
      end
    end

    module NotUpdatableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotUpdatableException, context: context)
        type = Types::NotUpdatableException.new
        type.message = params[:message]
        type
      end
    end

    module OperationStatuses
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Operations
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PrivateTypeException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrivateTypeException, context: context)
        type = Types::PrivateTypeException.new
        type.message = params[:message]
        type
      end
    end

    module ProgressEvent
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProgressEvent, context: context)
        type = Types::ProgressEvent.new
        type.type_name = params[:type_name]
        type.identifier = params[:identifier]
        type.request_token = params[:request_token]
        type.operation = params[:operation]
        type.operation_status = params[:operation_status]
        type.event_time = params[:event_time]
        type.resource_model = params[:resource_model]
        type.status_message = params[:status_message]
        type.error_code = params[:error_code]
        type.retry_after = params[:retry_after]
        type
      end
    end

    module RequestTokenNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestTokenNotFoundException, context: context)
        type = Types::RequestTokenNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceConflictException, context: context)
        type = Types::ResourceConflictException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceDescription
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceDescription, context: context)
        type = Types::ResourceDescription.new
        type.identifier = params[:identifier]
        type.properties = params[:properties]
        type
      end
    end

    module ResourceDescriptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResourceDescription.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceRequestStatusFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceRequestStatusFilter, context: context)
        type = Types::ResourceRequestStatusFilter.new
        type.operations = Operations.build(params[:operations], context: "#{context}[:operations]") unless params[:operations].nil?
        type.operation_statuses = OperationStatuses.build(params[:operation_statuses], context: "#{context}[:operation_statuses]") unless params[:operation_statuses].nil?
        type
      end
    end

    module ResourceRequestStatusSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ProgressEvent.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ServiceInternalErrorException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceInternalErrorException, context: context)
        type = Types::ServiceInternalErrorException.new
        type.message = params[:message]
        type
      end
    end

    module ServiceLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceLimitExceededException, context: context)
        type = Types::ServiceLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module TypeNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TypeNotFoundException, context: context)
        type = Types::TypeNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedActionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedActionException, context: context)
        type = Types::UnsupportedActionException.new
        type.message = params[:message]
        type
      end
    end

    module UpdateResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceInput, context: context)
        type = Types::UpdateResourceInput.new
        type.type_name = params[:type_name]
        type.type_version_id = params[:type_version_id]
        type.role_arn = params[:role_arn]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.identifier = params[:identifier]
        type.patch_document = params[:patch_document]
        type
      end
    end

    module UpdateResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateResourceOutput, context: context)
        type = Types::UpdateResourceOutput.new
        type.progress_event = ProgressEvent.build(params[:progress_event], context: "#{context}[:progress_event]") unless params[:progress_event].nil?
        type
      end
    end

  end
end
