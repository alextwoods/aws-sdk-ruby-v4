# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudControl
  module Stubs

    # Operation Stubber for CancelResourceRequest
    class CancelResourceRequest
      def self.default(visited=[])
        {
          progress_event: Stubs::ProgressEvent.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProgressEvent'] = Stubs::ProgressEvent.stub(stub[:progress_event]) unless stub[:progress_event].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ProgressEvent
    class ProgressEvent
      def self.default(visited=[])
        return nil if visited.include?('ProgressEvent')
        visited = visited + ['ProgressEvent']
        {
          type_name: 'type_name',
          identifier: 'identifier',
          request_token: 'request_token',
          operation: 'operation',
          operation_status: 'operation_status',
          event_time: Time.now,
          resource_model: 'resource_model',
          status_message: 'status_message',
          error_code: 'error_code',
          retry_after: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ProgressEvent.new
        data = {}
        data['TypeName'] = stub[:type_name] unless stub[:type_name].nil?
        data['Identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['RequestToken'] = stub[:request_token] unless stub[:request_token].nil?
        data['Operation'] = stub[:operation] unless stub[:operation].nil?
        data['OperationStatus'] = stub[:operation_status] unless stub[:operation_status].nil?
        data['EventTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:event_time]).to_i unless stub[:event_time].nil?
        data['ResourceModel'] = stub[:resource_model] unless stub[:resource_model].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['RetryAfter'] = Hearth::TimeHelper.to_epoch_seconds(stub[:retry_after]).to_i unless stub[:retry_after].nil?
        data
      end
    end

    # Operation Stubber for CreateResource
    class CreateResource
      def self.default(visited=[])
        {
          progress_event: Stubs::ProgressEvent.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProgressEvent'] = Stubs::ProgressEvent.stub(stub[:progress_event]) unless stub[:progress_event].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteResource
    class DeleteResource
      def self.default(visited=[])
        {
          progress_event: Stubs::ProgressEvent.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProgressEvent'] = Stubs::ProgressEvent.stub(stub[:progress_event]) unless stub[:progress_event].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetResource
    class GetResource
      def self.default(visited=[])
        {
          type_name: 'type_name',
          resource_description: Stubs::ResourceDescription.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TypeName'] = stub[:type_name] unless stub[:type_name].nil?
        data['ResourceDescription'] = Stubs::ResourceDescription.stub(stub[:resource_description]) unless stub[:resource_description].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ResourceDescription
    class ResourceDescription
      def self.default(visited=[])
        return nil if visited.include?('ResourceDescription')
        visited = visited + ['ResourceDescription']
        {
          identifier: 'identifier',
          properties: 'properties',
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceDescription.new
        data = {}
        data['Identifier'] = stub[:identifier] unless stub[:identifier].nil?
        data['Properties'] = stub[:properties] unless stub[:properties].nil?
        data
      end
    end

    # Operation Stubber for GetResourceRequestStatus
    class GetResourceRequestStatus
      def self.default(visited=[])
        {
          progress_event: Stubs::ProgressEvent.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProgressEvent'] = Stubs::ProgressEvent.stub(stub[:progress_event]) unless stub[:progress_event].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListResourceRequests
    class ListResourceRequests
      def self.default(visited=[])
        {
          resource_request_status_summaries: Stubs::ResourceRequestStatusSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ResourceRequestStatusSummaries'] = Stubs::ResourceRequestStatusSummaries.stub(stub[:resource_request_status_summaries]) unless stub[:resource_request_status_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceRequestStatusSummaries
    class ResourceRequestStatusSummaries
      def self.default(visited=[])
        return nil if visited.include?('ResourceRequestStatusSummaries')
        visited = visited + ['ResourceRequestStatusSummaries']
        [
          Stubs::ProgressEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ProgressEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListResources
    class ListResources
      def self.default(visited=[])
        {
          type_name: 'type_name',
          resource_descriptions: Stubs::ResourceDescriptions.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TypeName'] = stub[:type_name] unless stub[:type_name].nil?
        data['ResourceDescriptions'] = Stubs::ResourceDescriptions.stub(stub[:resource_descriptions]) unless stub[:resource_descriptions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ResourceDescriptions
    class ResourceDescriptions
      def self.default(visited=[])
        return nil if visited.include?('ResourceDescriptions')
        visited = visited + ['ResourceDescriptions']
        [
          Stubs::ResourceDescription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceDescription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for UpdateResource
    class UpdateResource
      def self.default(visited=[])
        {
          progress_event: Stubs::ProgressEvent.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ProgressEvent'] = Stubs::ProgressEvent.stub(stub[:progress_event]) unless stub[:progress_event].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
