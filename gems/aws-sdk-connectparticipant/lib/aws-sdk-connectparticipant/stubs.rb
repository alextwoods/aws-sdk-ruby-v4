# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ConnectParticipant
  module Stubs

    # Operation Stubber for CompleteAttachmentUpload
    class CompleteAttachmentUpload
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateParticipantConnection
    class CreateParticipantConnection
      def self.default(visited=[])
        {
          websocket: Websocket.default(visited),
          connection_credentials: ConnectionCredentials.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Websocket'] = Websocket.stub(stub[:websocket]) unless stub[:websocket].nil?
        data['ConnectionCredentials'] = ConnectionCredentials.stub(stub[:connection_credentials]) unless stub[:connection_credentials].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ConnectionCredentials
    class ConnectionCredentials
      def self.default(visited=[])
        return nil if visited.include?('ConnectionCredentials')
        visited = visited + ['ConnectionCredentials']
        {
          connection_token: 'connection_token',
          expiry: 'expiry',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionCredentials.new
        data = {}
        data['ConnectionToken'] = stub[:connection_token] unless stub[:connection_token].nil?
        data['Expiry'] = stub[:expiry] unless stub[:expiry].nil?
        data
      end
    end

    # Structure Stubber for Websocket
    class Websocket
      def self.default(visited=[])
        return nil if visited.include?('Websocket')
        visited = visited + ['Websocket']
        {
          url: 'url',
          connection_expiry: 'connection_expiry',
        }
      end

      def self.stub(stub)
        stub ||= Types::Websocket.new
        data = {}
        data['Url'] = stub[:url] unless stub[:url].nil?
        data['ConnectionExpiry'] = stub[:connection_expiry] unless stub[:connection_expiry].nil?
        data
      end
    end

    # Operation Stubber for DisconnectParticipant
    class DisconnectParticipant
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetAttachment
    class GetAttachment
      def self.default(visited=[])
        {
          url: 'url',
          url_expiry: 'url_expiry',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Url'] = stub[:url] unless stub[:url].nil?
        data['UrlExpiry'] = stub[:url_expiry] unless stub[:url_expiry].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetTranscript
    class GetTranscript
      def self.default(visited=[])
        {
          initial_contact_id: 'initial_contact_id',
          transcript: Transcript.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['InitialContactId'] = stub[:initial_contact_id] unless stub[:initial_contact_id].nil?
        data['Transcript'] = Transcript.stub(stub[:transcript]) unless stub[:transcript].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for Transcript
    class Transcript
      def self.default(visited=[])
        return nil if visited.include?('Transcript')
        visited = visited + ['Transcript']
        [
          Item.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Item.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Item
    class Item
      def self.default(visited=[])
        return nil if visited.include?('Item')
        visited = visited + ['Item']
        {
          absolute_time: 'absolute_time',
          content: 'content',
          content_type: 'content_type',
          id: 'id',
          type: 'type',
          participant_id: 'participant_id',
          display_name: 'display_name',
          participant_role: 'participant_role',
          attachments: Attachments.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Item.new
        data = {}
        data['AbsoluteTime'] = stub[:absolute_time] unless stub[:absolute_time].nil?
        data['Content'] = stub[:content] unless stub[:content].nil?
        data['ContentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['ParticipantId'] = stub[:participant_id] unless stub[:participant_id].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['ParticipantRole'] = stub[:participant_role] unless stub[:participant_role].nil?
        data['Attachments'] = Attachments.stub(stub[:attachments]) unless stub[:attachments].nil?
        data
      end
    end

    # List Stubber for Attachments
    class Attachments
      def self.default(visited=[])
        return nil if visited.include?('Attachments')
        visited = visited + ['Attachments']
        [
          AttachmentItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AttachmentItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AttachmentItem
    class AttachmentItem
      def self.default(visited=[])
        return nil if visited.include?('AttachmentItem')
        visited = visited + ['AttachmentItem']
        {
          content_type: 'content_type',
          attachment_id: 'attachment_id',
          attachment_name: 'attachment_name',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::AttachmentItem.new
        data = {}
        data['ContentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['AttachmentId'] = stub[:attachment_id] unless stub[:attachment_id].nil?
        data['AttachmentName'] = stub[:attachment_name] unless stub[:attachment_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for SendEvent
    class SendEvent
      def self.default(visited=[])
        {
          id: 'id',
          absolute_time: 'absolute_time',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['AbsoluteTime'] = stub[:absolute_time] unless stub[:absolute_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SendMessage
    class SendMessage
      def self.default(visited=[])
        {
          id: 'id',
          absolute_time: 'absolute_time',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['AbsoluteTime'] = stub[:absolute_time] unless stub[:absolute_time].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartAttachmentUpload
    class StartAttachmentUpload
      def self.default(visited=[])
        {
          attachment_id: 'attachment_id',
          upload_metadata: UploadMetadata.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['AttachmentId'] = stub[:attachment_id] unless stub[:attachment_id].nil?
        data['UploadMetadata'] = UploadMetadata.stub(stub[:upload_metadata]) unless stub[:upload_metadata].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for UploadMetadata
    class UploadMetadata
      def self.default(visited=[])
        return nil if visited.include?('UploadMetadata')
        visited = visited + ['UploadMetadata']
        {
          url: 'url',
          url_expiry: 'url_expiry',
          headers_to_include: UploadMetadataSignedHeaders.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UploadMetadata.new
        data = {}
        data['Url'] = stub[:url] unless stub[:url].nil?
        data['UrlExpiry'] = stub[:url_expiry] unless stub[:url_expiry].nil?
        data['HeadersToInclude'] = UploadMetadataSignedHeaders.stub(stub[:headers_to_include]) unless stub[:headers_to_include].nil?
        data
      end
    end

    # Map Stubber for UploadMetadataSignedHeaders
    class UploadMetadataSignedHeaders
      def self.default(visited=[])
        return nil if visited.include?('UploadMetadataSignedHeaders')
        visited = visited + ['UploadMetadataSignedHeaders']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end
  end
end
