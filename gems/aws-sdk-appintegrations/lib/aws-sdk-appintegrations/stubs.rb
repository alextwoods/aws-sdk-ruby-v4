# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::AppIntegrations
  module Stubs

    # Operation Stubber for CreateDataIntegration
    class CreateDataIntegration
      def self.default(visited=[])
        {
          arn: 'arn',
          id: 'id',
          name: 'name',
          description: 'description',
          kms_key: 'kms_key',
          source_uri: 'source_uri',
          schedule_configuration: ScheduleConfiguration.default(visited),
          tags: TagMap.default(visited),
          client_token: 'client_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['KmsKey'] = stub[:kms_key] unless stub[:kms_key].nil?
        data['SourceURI'] = stub[:source_uri] unless stub[:source_uri].nil?
        data['ScheduleConfiguration'] = ScheduleConfiguration.stub(stub[:schedule_configuration]) unless stub[:schedule_configuration].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data['ClientToken'] = stub[:client_token] unless stub[:client_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for TagMap
    class TagMap
      def self.default(visited=[])
        return nil if visited.include?('TagMap')
        visited = visited + ['TagMap']
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

    # Structure Stubber for ScheduleConfiguration
    class ScheduleConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ScheduleConfiguration')
        visited = visited + ['ScheduleConfiguration']
        {
          first_execution_from: 'first_execution_from',
          object: 'object',
          schedule_expression: 'schedule_expression',
        }
      end

      def self.stub(stub)
        stub ||= Types::ScheduleConfiguration.new
        data = {}
        data['FirstExecutionFrom'] = stub[:first_execution_from] unless stub[:first_execution_from].nil?
        data['Object'] = stub[:object] unless stub[:object].nil?
        data['ScheduleExpression'] = stub[:schedule_expression] unless stub[:schedule_expression].nil?
        data
      end
    end

    # Operation Stubber for CreateEventIntegration
    class CreateEventIntegration
      def self.default(visited=[])
        {
          event_integration_arn: 'event_integration_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['EventIntegrationArn'] = stub[:event_integration_arn] unless stub[:event_integration_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteDataIntegration
    class DeleteDataIntegration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteEventIntegration
    class DeleteEventIntegration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetDataIntegration
    class GetDataIntegration
      def self.default(visited=[])
        {
          arn: 'arn',
          id: 'id',
          name: 'name',
          description: 'description',
          kms_key: 'kms_key',
          source_uri: 'source_uri',
          schedule_configuration: ScheduleConfiguration.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['KmsKey'] = stub[:kms_key] unless stub[:kms_key].nil?
        data['SourceURI'] = stub[:source_uri] unless stub[:source_uri].nil?
        data['ScheduleConfiguration'] = ScheduleConfiguration.stub(stub[:schedule_configuration]) unless stub[:schedule_configuration].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetEventIntegration
    class GetEventIntegration
      def self.default(visited=[])
        {
          name: 'name',
          description: 'description',
          event_integration_arn: 'event_integration_arn',
          event_bridge_bus: 'event_bridge_bus',
          event_filter: EventFilter.default(visited),
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['EventIntegrationArn'] = stub[:event_integration_arn] unless stub[:event_integration_arn].nil?
        data['EventBridgeBus'] = stub[:event_bridge_bus] unless stub[:event_bridge_bus].nil?
        data['EventFilter'] = EventFilter.stub(stub[:event_filter]) unless stub[:event_filter].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for EventFilter
    class EventFilter
      def self.default(visited=[])
        return nil if visited.include?('EventFilter')
        visited = visited + ['EventFilter']
        {
          source: 'source',
        }
      end

      def self.stub(stub)
        stub ||= Types::EventFilter.new
        data = {}
        data['Source'] = stub[:source] unless stub[:source].nil?
        data
      end
    end

    # Operation Stubber for ListDataIntegrationAssociations
    class ListDataIntegrationAssociations
      def self.default(visited=[])
        {
          data_integration_associations: DataIntegrationAssociationsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DataIntegrationAssociations'] = DataIntegrationAssociationsList.stub(stub[:data_integration_associations]) unless stub[:data_integration_associations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DataIntegrationAssociationsList
    class DataIntegrationAssociationsList
      def self.default(visited=[])
        return nil if visited.include?('DataIntegrationAssociationsList')
        visited = visited + ['DataIntegrationAssociationsList']
        [
          DataIntegrationAssociationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DataIntegrationAssociationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataIntegrationAssociationSummary
    class DataIntegrationAssociationSummary
      def self.default(visited=[])
        return nil if visited.include?('DataIntegrationAssociationSummary')
        visited = visited + ['DataIntegrationAssociationSummary']
        {
          data_integration_association_arn: 'data_integration_association_arn',
          data_integration_arn: 'data_integration_arn',
          client_id: 'client_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataIntegrationAssociationSummary.new
        data = {}
        data['DataIntegrationAssociationArn'] = stub[:data_integration_association_arn] unless stub[:data_integration_association_arn].nil?
        data['DataIntegrationArn'] = stub[:data_integration_arn] unless stub[:data_integration_arn].nil?
        data['ClientId'] = stub[:client_id] unless stub[:client_id].nil?
        data
      end
    end

    # Operation Stubber for ListDataIntegrations
    class ListDataIntegrations
      def self.default(visited=[])
        {
          data_integrations: DataIntegrationsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['DataIntegrations'] = DataIntegrationsList.stub(stub[:data_integrations]) unless stub[:data_integrations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for DataIntegrationsList
    class DataIntegrationsList
      def self.default(visited=[])
        return nil if visited.include?('DataIntegrationsList')
        visited = visited + ['DataIntegrationsList']
        [
          DataIntegrationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DataIntegrationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataIntegrationSummary
    class DataIntegrationSummary
      def self.default(visited=[])
        return nil if visited.include?('DataIntegrationSummary')
        visited = visited + ['DataIntegrationSummary']
        {
          arn: 'arn',
          name: 'name',
          source_uri: 'source_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataIntegrationSummary.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['SourceURI'] = stub[:source_uri] unless stub[:source_uri].nil?
        data
      end
    end

    # Operation Stubber for ListEventIntegrationAssociations
    class ListEventIntegrationAssociations
      def self.default(visited=[])
        {
          event_integration_associations: EventIntegrationAssociationsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['EventIntegrationAssociations'] = EventIntegrationAssociationsList.stub(stub[:event_integration_associations]) unless stub[:event_integration_associations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EventIntegrationAssociationsList
    class EventIntegrationAssociationsList
      def self.default(visited=[])
        return nil if visited.include?('EventIntegrationAssociationsList')
        visited = visited + ['EventIntegrationAssociationsList']
        [
          EventIntegrationAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EventIntegrationAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventIntegrationAssociation
    class EventIntegrationAssociation
      def self.default(visited=[])
        return nil if visited.include?('EventIntegrationAssociation')
        visited = visited + ['EventIntegrationAssociation']
        {
          event_integration_association_arn: 'event_integration_association_arn',
          event_integration_association_id: 'event_integration_association_id',
          event_integration_name: 'event_integration_name',
          client_id: 'client_id',
          event_bridge_rule_name: 'event_bridge_rule_name',
          client_association_metadata: ClientAssociationMetadata.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EventIntegrationAssociation.new
        data = {}
        data['EventIntegrationAssociationArn'] = stub[:event_integration_association_arn] unless stub[:event_integration_association_arn].nil?
        data['EventIntegrationAssociationId'] = stub[:event_integration_association_id] unless stub[:event_integration_association_id].nil?
        data['EventIntegrationName'] = stub[:event_integration_name] unless stub[:event_integration_name].nil?
        data['ClientId'] = stub[:client_id] unless stub[:client_id].nil?
        data['EventBridgeRuleName'] = stub[:event_bridge_rule_name] unless stub[:event_bridge_rule_name].nil?
        data['ClientAssociationMetadata'] = ClientAssociationMetadata.stub(stub[:client_association_metadata]) unless stub[:client_association_metadata].nil?
        data
      end
    end

    # Map Stubber for ClientAssociationMetadata
    class ClientAssociationMetadata
      def self.default(visited=[])
        return nil if visited.include?('ClientAssociationMetadata')
        visited = visited + ['ClientAssociationMetadata']
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

    # Operation Stubber for ListEventIntegrations
    class ListEventIntegrations
      def self.default(visited=[])
        {
          event_integrations: EventIntegrationsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['EventIntegrations'] = EventIntegrationsList.stub(stub[:event_integrations]) unless stub[:event_integrations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EventIntegrationsList
    class EventIntegrationsList
      def self.default(visited=[])
        return nil if visited.include?('EventIntegrationsList')
        visited = visited + ['EventIntegrationsList']
        [
          EventIntegration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EventIntegration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EventIntegration
    class EventIntegration
      def self.default(visited=[])
        return nil if visited.include?('EventIntegration')
        visited = visited + ['EventIntegration']
        {
          event_integration_arn: 'event_integration_arn',
          name: 'name',
          description: 'description',
          event_filter: EventFilter.default(visited),
          event_bridge_bus: 'event_bridge_bus',
          tags: TagMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::EventIntegration.new
        data = {}
        data['EventIntegrationArn'] = stub[:event_integration_arn] unless stub[:event_integration_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['EventFilter'] = EventFilter.stub(stub[:event_filter]) unless stub[:event_filter].nil?
        data['EventBridgeBus'] = stub[:event_bridge_bus] unless stub[:event_bridge_bus].nil?
        data['Tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagMap.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = TagMap.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDataIntegration
    class UpdateDataIntegration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEventIntegration
    class UpdateEventIntegration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end
  end
end
