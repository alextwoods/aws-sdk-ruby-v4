# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::ConnectParticipant
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AttachmentIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AttachmentItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttachmentItem, context: context)
        type = Types::AttachmentItem.new
        type.content_type = params[:content_type]
        type.attachment_id = params[:attachment_id]
        type.attachment_name = params[:attachment_name]
        type.status = params[:status]
        type
      end
    end

    module Attachments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttachmentItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CompleteAttachmentUploadInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompleteAttachmentUploadInput, context: context)
        type = Types::CompleteAttachmentUploadInput.new
        type.attachment_ids = AttachmentIdList.build(params[:attachment_ids], context: "#{context}[:attachment_ids]") unless params[:attachment_ids].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.connection_token = params[:connection_token]
        type
      end
    end

    module CompleteAttachmentUploadOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompleteAttachmentUploadOutput, context: context)
        type = Types::CompleteAttachmentUploadOutput.new
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module ConnectionCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionCredentials, context: context)
        type = Types::ConnectionCredentials.new
        type.connection_token = params[:connection_token]
        type.expiry = params[:expiry]
        type
      end
    end

    module ConnectionTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CreateParticipantConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateParticipantConnectionInput, context: context)
        type = Types::CreateParticipantConnectionInput.new
        type.type = ConnectionTypeList.build(params[:type], context: "#{context}[:type]") unless params[:type].nil?
        type.participant_token = params[:participant_token]
        type.connect_participant = params[:connect_participant]
        type
      end
    end

    module CreateParticipantConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateParticipantConnectionOutput, context: context)
        type = Types::CreateParticipantConnectionOutput.new
        type.websocket = Websocket.build(params[:websocket], context: "#{context}[:websocket]") unless params[:websocket].nil?
        type.connection_credentials = ConnectionCredentials.build(params[:connection_credentials], context: "#{context}[:connection_credentials]") unless params[:connection_credentials].nil?
        type
      end
    end

    module DisconnectParticipantInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisconnectParticipantInput, context: context)
        type = Types::DisconnectParticipantInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.connection_token = params[:connection_token]
        type
      end
    end

    module DisconnectParticipantOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisconnectParticipantOutput, context: context)
        type = Types::DisconnectParticipantOutput.new
        type
      end
    end

    module GetAttachmentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAttachmentInput, context: context)
        type = Types::GetAttachmentInput.new
        type.attachment_id = params[:attachment_id]
        type.connection_token = params[:connection_token]
        type
      end
    end

    module GetAttachmentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAttachmentOutput, context: context)
        type = Types::GetAttachmentOutput.new
        type.url = params[:url]
        type.url_expiry = params[:url_expiry]
        type
      end
    end

    module GetTranscriptInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTranscriptInput, context: context)
        type = Types::GetTranscriptInput.new
        type.contact_id = params[:contact_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.scan_direction = params[:scan_direction]
        type.sort_order = params[:sort_order]
        type.start_position = StartPosition.build(params[:start_position], context: "#{context}[:start_position]") unless params[:start_position].nil?
        type.connection_token = params[:connection_token]
        type
      end
    end

    module GetTranscriptOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetTranscriptOutput, context: context)
        type = Types::GetTranscriptOutput.new
        type.initial_contact_id = params[:initial_contact_id]
        type.transcript = Transcript.build(params[:transcript], context: "#{context}[:transcript]") unless params[:transcript].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module Item
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Item, context: context)
        type = Types::Item.new
        type.absolute_time = params[:absolute_time]
        type.content = params[:content]
        type.content_type = params[:content_type]
        type.id = params[:id]
        type.type = params[:type]
        type.participant_id = params[:participant_id]
        type.display_name = params[:display_name]
        type.participant_role = params[:participant_role]
        type.attachments = Attachments.build(params[:attachments], context: "#{context}[:attachments]") unless params[:attachments].nil?
        type
      end
    end

    module SendEventInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendEventInput, context: context)
        type = Types::SendEventInput.new
        type.content_type = params[:content_type]
        type.content = params[:content]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.connection_token = params[:connection_token]
        type
      end
    end

    module SendEventOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendEventOutput, context: context)
        type = Types::SendEventOutput.new
        type.id = params[:id]
        type.absolute_time = params[:absolute_time]
        type
      end
    end

    module SendMessageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendMessageInput, context: context)
        type = Types::SendMessageInput.new
        type.content_type = params[:content_type]
        type.content = params[:content]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.connection_token = params[:connection_token]
        type
      end
    end

    module SendMessageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SendMessageOutput, context: context)
        type = Types::SendMessageOutput.new
        type.id = params[:id]
        type.absolute_time = params[:absolute_time]
        type
      end
    end

    module ServiceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceQuotaExceededException, context: context)
        type = Types::ServiceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module StartAttachmentUploadInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAttachmentUploadInput, context: context)
        type = Types::StartAttachmentUploadInput.new
        type.content_type = params[:content_type]
        type.attachment_size_in_bytes = params[:attachment_size_in_bytes]
        type.attachment_name = params[:attachment_name]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.connection_token = params[:connection_token]
        type
      end
    end

    module StartAttachmentUploadOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartAttachmentUploadOutput, context: context)
        type = Types::StartAttachmentUploadOutput.new
        type.attachment_id = params[:attachment_id]
        type.upload_metadata = UploadMetadata.build(params[:upload_metadata], context: "#{context}[:upload_metadata]") unless params[:upload_metadata].nil?
        type
      end
    end

    module StartPosition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartPosition, context: context)
        type = Types::StartPosition.new
        type.id = params[:id]
        type.absolute_time = params[:absolute_time]
        type.most_recent = params[:most_recent]
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

    module Transcript
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Item.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module UploadMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UploadMetadata, context: context)
        type = Types::UploadMetadata.new
        type.url = params[:url]
        type.url_expiry = params[:url_expiry]
        type.headers_to_include = UploadMetadataSignedHeaders.build(params[:headers_to_include], context: "#{context}[:headers_to_include]") unless params[:headers_to_include].nil?
        type
      end
    end

    module UploadMetadataSignedHeaders
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ValidationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidationException, context: context)
        type = Types::ValidationException.new
        type.message = params[:message]
        type
      end
    end

    module Websocket
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Websocket, context: context)
        type = Types::Websocket.new
        type.url = params[:url]
        type.connection_expiry = params[:connection_expiry]
        type
      end
    end

  end
end
