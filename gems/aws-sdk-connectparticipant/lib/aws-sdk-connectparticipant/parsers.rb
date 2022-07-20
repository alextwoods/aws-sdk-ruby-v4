# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ConnectParticipant
  module Parsers

    # Operation Parser for CompleteAttachmentUpload
    class CompleteAttachmentUpload
      def self.parse(http_resp)
        data = Types::CompleteAttachmentUploadOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateParticipantConnection
    class CreateParticipantConnection
      def self.parse(http_resp)
        data = Types::CreateParticipantConnectionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.websocket = (Websocket.parse(map['Websocket']) unless map['Websocket'].nil?)
        data.connection_credentials = (ConnectionCredentials.parse(map['ConnectionCredentials']) unless map['ConnectionCredentials'].nil?)
        data
      end
    end

    class ConnectionCredentials
      def self.parse(map)
        data = Types::ConnectionCredentials.new
        data.connection_token = map['ConnectionToken']
        data.expiry = map['Expiry']
        return data
      end
    end

    class Websocket
      def self.parse(map)
        data = Types::Websocket.new
        data.url = map['Url']
        data.connection_expiry = map['ConnectionExpiry']
        return data
      end
    end

    # Operation Parser for DisconnectParticipant
    class DisconnectParticipant
      def self.parse(http_resp)
        data = Types::DisconnectParticipantOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetAttachment
    class GetAttachment
      def self.parse(http_resp)
        data = Types::GetAttachmentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.url = map['Url']
        data.url_expiry = map['UrlExpiry']
        data
      end
    end

    # Operation Parser for GetTranscript
    class GetTranscript
      def self.parse(http_resp)
        data = Types::GetTranscriptOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.initial_contact_id = map['InitialContactId']
        data.transcript = (Transcript.parse(map['Transcript']) unless map['Transcript'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Transcript
      def self.parse(list)
        data = []
        list.map do |value|
          data << Item.parse(value) unless value.nil?
        end
        data
      end
    end

    class Item
      def self.parse(map)
        data = Types::Item.new
        data.absolute_time = map['AbsoluteTime']
        data.content = map['Content']
        data.content_type = map['ContentType']
        data.id = map['Id']
        data.type = map['Type']
        data.participant_id = map['ParticipantId']
        data.display_name = map['DisplayName']
        data.participant_role = map['ParticipantRole']
        data.attachments = (Attachments.parse(map['Attachments']) unless map['Attachments'].nil?)
        return data
      end
    end

    class Attachments
      def self.parse(list)
        data = []
        list.map do |value|
          data << AttachmentItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class AttachmentItem
      def self.parse(map)
        data = Types::AttachmentItem.new
        data.content_type = map['ContentType']
        data.attachment_id = map['AttachmentId']
        data.attachment_name = map['AttachmentName']
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for SendEvent
    class SendEvent
      def self.parse(http_resp)
        data = Types::SendEventOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['Id']
        data.absolute_time = map['AbsoluteTime']
        data
      end
    end

    # Operation Parser for SendMessage
    class SendMessage
      def self.parse(http_resp)
        data = Types::SendMessageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.id = map['Id']
        data.absolute_time = map['AbsoluteTime']
        data
      end
    end

    # Operation Parser for StartAttachmentUpload
    class StartAttachmentUpload
      def self.parse(http_resp)
        data = Types::StartAttachmentUploadOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.attachment_id = map['AttachmentId']
        data.upload_metadata = (UploadMetadata.parse(map['UploadMetadata']) unless map['UploadMetadata'].nil?)
        data
      end
    end

    class UploadMetadata
      def self.parse(map)
        data = Types::UploadMetadata.new
        data.url = map['Url']
        data.url_expiry = map['UrlExpiry']
        data.headers_to_include = (UploadMetadataSignedHeaders.parse(map['HeadersToInclude']) unless map['HeadersToInclude'].nil?)
        return data
      end
    end

    class UploadMetadataSignedHeaders
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end
  end
end
