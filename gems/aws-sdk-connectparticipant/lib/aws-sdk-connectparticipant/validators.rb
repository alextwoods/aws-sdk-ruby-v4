# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ConnectParticipant
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AttachmentIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AttachmentItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttachmentItem, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:attachment_id], ::String, context: "#{context}[:attachment_id]")
        Hearth::Validator.validate!(input[:attachment_name], ::String, context: "#{context}[:attachment_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class Attachments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AttachmentItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CompleteAttachmentUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompleteAttachmentUploadInput, context: context)
        Validators::AttachmentIdList.validate!(input[:attachment_ids], context: "#{context}[:attachment_ids]") unless input[:attachment_ids].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:connection_token], ::String, context: "#{context}[:connection_token]")
      end
    end

    class CompleteAttachmentUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompleteAttachmentUploadOutput, context: context)
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConnectionCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionCredentials, context: context)
        Hearth::Validator.validate!(input[:connection_token], ::String, context: "#{context}[:connection_token]")
        Hearth::Validator.validate!(input[:expiry], ::String, context: "#{context}[:expiry]")
      end
    end

    class ConnectionTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CreateParticipantConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateParticipantConnectionInput, context: context)
        Validators::ConnectionTypeList.validate!(input[:type], context: "#{context}[:type]") unless input[:type].nil?
        Hearth::Validator.validate!(input[:participant_token], ::String, context: "#{context}[:participant_token]")
        Hearth::Validator.validate!(input[:connect_participant], ::TrueClass, ::FalseClass, context: "#{context}[:connect_participant]")
      end
    end

    class CreateParticipantConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateParticipantConnectionOutput, context: context)
        Validators::Websocket.validate!(input[:websocket], context: "#{context}[:websocket]") unless input[:websocket].nil?
        Validators::ConnectionCredentials.validate!(input[:connection_credentials], context: "#{context}[:connection_credentials]") unless input[:connection_credentials].nil?
      end
    end

    class DisconnectParticipantInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisconnectParticipantInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:connection_token], ::String, context: "#{context}[:connection_token]")
      end
    end

    class DisconnectParticipantOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisconnectParticipantOutput, context: context)
      end
    end

    class GetAttachmentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAttachmentInput, context: context)
        Hearth::Validator.validate!(input[:attachment_id], ::String, context: "#{context}[:attachment_id]")
        Hearth::Validator.validate!(input[:connection_token], ::String, context: "#{context}[:connection_token]")
      end
    end

    class GetAttachmentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAttachmentOutput, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:url_expiry], ::String, context: "#{context}[:url_expiry]")
      end
    end

    class GetTranscriptInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTranscriptInput, context: context)
        Hearth::Validator.validate!(input[:contact_id], ::String, context: "#{context}[:contact_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:scan_direction], ::String, context: "#{context}[:scan_direction]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Validators::StartPosition.validate!(input[:start_position], context: "#{context}[:start_position]") unless input[:start_position].nil?
        Hearth::Validator.validate!(input[:connection_token], ::String, context: "#{context}[:connection_token]")
      end
    end

    class GetTranscriptOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetTranscriptOutput, context: context)
        Hearth::Validator.validate!(input[:initial_contact_id], ::String, context: "#{context}[:initial_contact_id]")
        Validators::Transcript.validate!(input[:transcript], context: "#{context}[:transcript]") unless input[:transcript].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Item
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Item, context: context)
        Hearth::Validator.validate!(input[:absolute_time], ::String, context: "#{context}[:absolute_time]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:participant_id], ::String, context: "#{context}[:participant_id]")
        Hearth::Validator.validate!(input[:display_name], ::String, context: "#{context}[:display_name]")
        Hearth::Validator.validate!(input[:participant_role], ::String, context: "#{context}[:participant_role]")
        Validators::Attachments.validate!(input[:attachments], context: "#{context}[:attachments]") unless input[:attachments].nil?
      end
    end

    class SendEventInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendEventInput, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:connection_token], ::String, context: "#{context}[:connection_token]")
      end
    end

    class SendEventOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendEventOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:absolute_time], ::String, context: "#{context}[:absolute_time]")
      end
    end

    class SendMessageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendMessageInput, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:content], ::String, context: "#{context}[:content]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:connection_token], ::String, context: "#{context}[:connection_token]")
      end
    end

    class SendMessageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SendMessageOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:absolute_time], ::String, context: "#{context}[:absolute_time]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class StartAttachmentUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAttachmentUploadInput, context: context)
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:attachment_size_in_bytes], ::Integer, context: "#{context}[:attachment_size_in_bytes]")
        Hearth::Validator.validate!(input[:attachment_name], ::String, context: "#{context}[:attachment_name]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:connection_token], ::String, context: "#{context}[:connection_token]")
      end
    end

    class StartAttachmentUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartAttachmentUploadOutput, context: context)
        Hearth::Validator.validate!(input[:attachment_id], ::String, context: "#{context}[:attachment_id]")
        Validators::UploadMetadata.validate!(input[:upload_metadata], context: "#{context}[:upload_metadata]") unless input[:upload_metadata].nil?
      end
    end

    class StartPosition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartPosition, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:absolute_time], ::String, context: "#{context}[:absolute_time]")
        Hearth::Validator.validate!(input[:most_recent], ::Integer, context: "#{context}[:most_recent]")
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Transcript
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Item.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class UploadMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UploadMetadata, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:url_expiry], ::String, context: "#{context}[:url_expiry]")
        Validators::UploadMetadataSignedHeaders.validate!(input[:headers_to_include], context: "#{context}[:headers_to_include]") unless input[:headers_to_include].nil?
      end
    end

    class UploadMetadataSignedHeaders
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Websocket
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Websocket, context: context)
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:connection_expiry], ::String, context: "#{context}[:connection_expiry]")
      end
    end

  end
end
