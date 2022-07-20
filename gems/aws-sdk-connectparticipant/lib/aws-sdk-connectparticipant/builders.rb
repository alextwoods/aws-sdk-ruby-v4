# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::ConnectParticipant
  module Builders

    # Operation Builder for CompleteAttachmentUpload
    class CompleteAttachmentUpload
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/participant/complete-attachment-upload')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AttachmentIds'] = AttachmentIdList.build(input[:attachment_ids]) unless input[:attachment_ids].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Bearer'] = input[:connection_token] unless input[:connection_token].nil? || input[:connection_token].empty?
      end
    end

    # List Builder for AttachmentIdList
    class AttachmentIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateParticipantConnection
    class CreateParticipantConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/participant/connection')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['Type'] = ConnectionTypeList.build(input[:type]) unless input[:type].nil?
        data['ConnectParticipant'] = input[:connect_participant] unless input[:connect_participant].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Bearer'] = input[:participant_token] unless input[:participant_token].nil? || input[:participant_token].empty?
      end
    end

    # List Builder for ConnectionTypeList
    class ConnectionTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DisconnectParticipant
    class DisconnectParticipant
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/participant/disconnect')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Bearer'] = input[:connection_token] unless input[:connection_token].nil? || input[:connection_token].empty?
      end
    end

    # Operation Builder for GetAttachment
    class GetAttachment
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/participant/attachment')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AttachmentId'] = input[:attachment_id] unless input[:attachment_id].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Bearer'] = input[:connection_token] unless input[:connection_token].nil? || input[:connection_token].empty?
      end
    end

    # Operation Builder for GetTranscript
    class GetTranscript
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/participant/transcript')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ContactId'] = input[:contact_id] unless input[:contact_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['ScanDirection'] = input[:scan_direction] unless input[:scan_direction].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['StartPosition'] = StartPosition.build(input[:start_position]) unless input[:start_position].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Bearer'] = input[:connection_token] unless input[:connection_token].nil? || input[:connection_token].empty?
      end
    end

    # Structure Builder for StartPosition
    class StartPosition
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['AbsoluteTime'] = input[:absolute_time] unless input[:absolute_time].nil?
        data['MostRecent'] = input[:most_recent] unless input[:most_recent].nil?
        data
      end
    end

    # Operation Builder for SendEvent
    class SendEvent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/participant/event')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ContentType'] = input[:content_type] unless input[:content_type].nil?
        data['Content'] = input[:content] unless input[:content].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Bearer'] = input[:connection_token] unless input[:connection_token].nil? || input[:connection_token].empty?
      end
    end

    # Operation Builder for SendMessage
    class SendMessage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/participant/message')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ContentType'] = input[:content_type] unless input[:content_type].nil?
        data['Content'] = input[:content] unless input[:content].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Bearer'] = input[:connection_token] unless input[:connection_token].nil? || input[:connection_token].empty?
      end
    end

    # Operation Builder for StartAttachmentUpload
    class StartAttachmentUpload
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/participant/start-attachment-upload')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ContentType'] = input[:content_type] unless input[:content_type].nil?
        data['AttachmentSizeInBytes'] = input[:attachment_size_in_bytes] unless input[:attachment_size_in_bytes].nil?
        data['AttachmentName'] = input[:attachment_name] unless input[:attachment_name].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Bearer'] = input[:connection_token] unless input[:connection_token].nil? || input[:connection_token].empty?
      end
    end
  end
end
