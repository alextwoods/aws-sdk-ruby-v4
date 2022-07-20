# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudControl
  module Parsers

    # Operation Parser for CancelResourceRequest
    class CancelResourceRequest
      def self.parse(http_resp)
        data = Types::CancelResourceRequestOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.progress_event = (ProgressEvent.parse(map['ProgressEvent']) unless map['ProgressEvent'].nil?)
        data
      end
    end

    class ProgressEvent
      def self.parse(map)
        data = Types::ProgressEvent.new
        data.type_name = map['TypeName']
        data.identifier = map['Identifier']
        data.request_token = map['RequestToken']
        data.operation = map['Operation']
        data.operation_status = map['OperationStatus']
        data.event_time = Time.at(map['EventTime'].to_i) if map['EventTime']
        data.resource_model = map['ResourceModel']
        data.status_message = map['StatusMessage']
        data.error_code = map['ErrorCode']
        data.retry_after = Time.at(map['RetryAfter'].to_i) if map['RetryAfter']
        return data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for RequestTokenNotFoundException
    class RequestTokenNotFoundException
      def self.parse(http_resp)
        data = Types::RequestTokenNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateResource
    class CreateResource
      def self.parse(http_resp)
        data = Types::CreateResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.progress_event = (ProgressEvent.parse(map['ProgressEvent']) unless map['ProgressEvent'].nil?)
        data
      end
    end

    # Error Parser for AlreadyExistsException
    class AlreadyExistsException
      def self.parse(http_resp)
        data = Types::AlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ClientTokenConflictException
    class ClientTokenConflictException
      def self.parse(http_resp)
        data = Types::ClientTokenConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConcurrentOperationException
    class ConcurrentOperationException
      def self.parse(http_resp)
        data = Types::ConcurrentOperationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for GeneralServiceException
    class GeneralServiceException
      def self.parse(http_resp)
        data = Types::GeneralServiceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for HandlerFailureException
    class HandlerFailureException
      def self.parse(http_resp)
        data = Types::HandlerFailureException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for HandlerInternalFailureException
    class HandlerInternalFailureException
      def self.parse(http_resp)
        data = Types::HandlerInternalFailureException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidCredentialsException
    class InvalidCredentialsException
      def self.parse(http_resp)
        data = Types::InvalidCredentialsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for NetworkFailureException
    class NetworkFailureException
      def self.parse(http_resp)
        data = Types::NetworkFailureException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for NotStabilizedException
    class NotStabilizedException
      def self.parse(http_resp)
        data = Types::NotStabilizedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for NotUpdatableException
    class NotUpdatableException
      def self.parse(http_resp)
        data = Types::NotUpdatableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for PrivateTypeException
    class PrivateTypeException
      def self.parse(http_resp)
        data = Types::PrivateTypeException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceConflictException
    class ResourceConflictException
      def self.parse(http_resp)
        data = Types::ResourceConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceInternalErrorException
    class ServiceInternalErrorException
      def self.parse(http_resp)
        data = Types::ServiceInternalErrorException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceLimitExceededException
    class ServiceLimitExceededException
      def self.parse(http_resp)
        data = Types::ServiceLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for TypeNotFoundException
    class TypeNotFoundException
      def self.parse(http_resp)
        data = Types::TypeNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for UnsupportedActionException
    class UnsupportedActionException
      def self.parse(http_resp)
        data = Types::UnsupportedActionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteResource
    class DeleteResource
      def self.parse(http_resp)
        data = Types::DeleteResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.progress_event = (ProgressEvent.parse(map['ProgressEvent']) unless map['ProgressEvent'].nil?)
        data
      end
    end

    # Operation Parser for GetResource
    class GetResource
      def self.parse(http_resp)
        data = Types::GetResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.type_name = map['TypeName']
        data.resource_description = (ResourceDescription.parse(map['ResourceDescription']) unless map['ResourceDescription'].nil?)
        data
      end
    end

    class ResourceDescription
      def self.parse(map)
        data = Types::ResourceDescription.new
        data.identifier = map['Identifier']
        data.properties = map['Properties']
        return data
      end
    end

    # Operation Parser for GetResourceRequestStatus
    class GetResourceRequestStatus
      def self.parse(http_resp)
        data = Types::GetResourceRequestStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.progress_event = (ProgressEvent.parse(map['ProgressEvent']) unless map['ProgressEvent'].nil?)
        data
      end
    end

    # Operation Parser for ListResourceRequests
    class ListResourceRequests
      def self.parse(http_resp)
        data = Types::ListResourceRequestsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.resource_request_status_summaries = (ResourceRequestStatusSummaries.parse(map['ResourceRequestStatusSummaries']) unless map['ResourceRequestStatusSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ResourceRequestStatusSummaries
      def self.parse(list)
        list.map do |value|
          ProgressEvent.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListResources
    class ListResources
      def self.parse(http_resp)
        data = Types::ListResourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.type_name = map['TypeName']
        data.resource_descriptions = (ResourceDescriptions.parse(map['ResourceDescriptions']) unless map['ResourceDescriptions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ResourceDescriptions
      def self.parse(list)
        list.map do |value|
          ResourceDescription.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for UpdateResource
    class UpdateResource
      def self.parse(http_resp)
        data = Types::UpdateResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.progress_event = (ProgressEvent.parse(map['ProgressEvent']) unless map['ProgressEvent'].nil?)
        data
      end
    end
  end
end
