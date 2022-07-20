# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppIntegrations
  module Parsers

    # Operation Parser for CreateDataIntegration
    class CreateDataIntegration
      def self.parse(http_resp)
        data = Types::CreateDataIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.kms_key = map['KmsKey']
        data.source_uri = map['SourceURI']
        data.schedule_configuration = (ScheduleConfiguration.parse(map['ScheduleConfiguration']) unless map['ScheduleConfiguration'].nil?)
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data.client_token = map['ClientToken']
        data
      end
    end

    class TagMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ScheduleConfiguration
      def self.parse(map)
        data = Types::ScheduleConfiguration.new
        data.first_execution_from = map['FirstExecutionFrom']
        data.object = map['Object']
        data.schedule_expression = map['ScheduleExpression']
        return data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
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

    # Error Parser for DuplicateResourceException
    class DuplicateResourceException
      def self.parse(http_resp)
        data = Types::DuplicateResourceException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
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

    # Error Parser for InternalServiceError
    class InternalServiceError
      def self.parse(http_resp)
        data = Types::InternalServiceError.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceQuotaExceededException
    class ResourceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ResourceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateEventIntegration
    class CreateEventIntegration
      def self.parse(http_resp)
        data = Types::CreateEventIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.event_integration_arn = map['EventIntegrationArn']
        data
      end
    end

    # Operation Parser for DeleteDataIntegration
    class DeleteDataIntegration
      def self.parse(http_resp)
        data = Types::DeleteDataIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteEventIntegration
    class DeleteEventIntegration
      def self.parse(http_resp)
        data = Types::DeleteEventIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetDataIntegration
    class GetDataIntegration
      def self.parse(http_resp)
        data = Types::GetDataIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.arn = map['Arn']
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.kms_key = map['KmsKey']
        data.source_uri = map['SourceURI']
        data.schedule_configuration = (ScheduleConfiguration.parse(map['ScheduleConfiguration']) unless map['ScheduleConfiguration'].nil?)
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    # Operation Parser for GetEventIntegration
    class GetEventIntegration
      def self.parse(http_resp)
        data = Types::GetEventIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.name = map['Name']
        data.description = map['Description']
        data.event_integration_arn = map['EventIntegrationArn']
        data.event_bridge_bus = map['EventBridgeBus']
        data.event_filter = (EventFilter.parse(map['EventFilter']) unless map['EventFilter'].nil?)
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class EventFilter
      def self.parse(map)
        data = Types::EventFilter.new
        data.source = map['Source']
        return data
      end
    end

    # Operation Parser for ListDataIntegrationAssociations
    class ListDataIntegrationAssociations
      def self.parse(http_resp)
        data = Types::ListDataIntegrationAssociationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.data_integration_associations = (DataIntegrationAssociationsList.parse(map['DataIntegrationAssociations']) unless map['DataIntegrationAssociations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DataIntegrationAssociationsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DataIntegrationAssociationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataIntegrationAssociationSummary
      def self.parse(map)
        data = Types::DataIntegrationAssociationSummary.new
        data.data_integration_association_arn = map['DataIntegrationAssociationArn']
        data.data_integration_arn = map['DataIntegrationArn']
        data.client_id = map['ClientId']
        return data
      end
    end

    # Operation Parser for ListDataIntegrations
    class ListDataIntegrations
      def self.parse(http_resp)
        data = Types::ListDataIntegrationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.data_integrations = (DataIntegrationsList.parse(map['DataIntegrations']) unless map['DataIntegrations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DataIntegrationsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << DataIntegrationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class DataIntegrationSummary
      def self.parse(map)
        data = Types::DataIntegrationSummary.new
        data.arn = map['Arn']
        data.name = map['Name']
        data.source_uri = map['SourceURI']
        return data
      end
    end

    # Operation Parser for ListEventIntegrationAssociations
    class ListEventIntegrationAssociations
      def self.parse(http_resp)
        data = Types::ListEventIntegrationAssociationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.event_integration_associations = (EventIntegrationAssociationsList.parse(map['EventIntegrationAssociations']) unless map['EventIntegrationAssociations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EventIntegrationAssociationsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << EventIntegrationAssociation.parse(value) unless value.nil?
        end
        data
      end
    end

    class EventIntegrationAssociation
      def self.parse(map)
        data = Types::EventIntegrationAssociation.new
        data.event_integration_association_arn = map['EventIntegrationAssociationArn']
        data.event_integration_association_id = map['EventIntegrationAssociationId']
        data.event_integration_name = map['EventIntegrationName']
        data.client_id = map['ClientId']
        data.event_bridge_rule_name = map['EventBridgeRuleName']
        data.client_association_metadata = (ClientAssociationMetadata.parse(map['ClientAssociationMetadata']) unless map['ClientAssociationMetadata'].nil?)
        return data
      end
    end

    class ClientAssociationMetadata
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListEventIntegrations
    class ListEventIntegrations
      def self.parse(http_resp)
        data = Types::ListEventIntegrationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.event_integrations = (EventIntegrationsList.parse(map['EventIntegrations']) unless map['EventIntegrations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EventIntegrationsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << EventIntegration.parse(value) unless value.nil?
        end
        data
      end
    end

    class EventIntegration
      def self.parse(map)
        data = Types::EventIntegration.new
        data.event_integration_arn = map['EventIntegrationArn']
        data.name = map['Name']
        data.description = map['Description']
        data.event_filter = (EventFilter.parse(map['EventFilter']) unless map['EventFilter'].nil?)
        data.event_bridge_bus = map['EventBridgeBus']
        data.tags = (TagMap.parse(map['Tags']) unless map['Tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (TagMap.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateDataIntegration
    class UpdateDataIntegration
      def self.parse(http_resp)
        data = Types::UpdateDataIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateEventIntegration
    class UpdateEventIntegration
      def self.parse(http_resp)
        data = Types::UpdateEventIntegrationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end
  end
end
