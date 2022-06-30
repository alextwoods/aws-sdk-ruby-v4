# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppIntegrations
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClientAssociationMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class CreateDataIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataIntegrationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:source_uri], ::String, context: "#{context}[:source_uri]")
        Validators::ScheduleConfiguration.validate!(input[:schedule_config], context: "#{context}[:schedule_config]") unless input[:schedule_config].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateDataIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataIntegrationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:source_uri], ::String, context: "#{context}[:source_uri]")
        Validators::ScheduleConfiguration.validate!(input[:schedule_configuration], context: "#{context}[:schedule_configuration]") unless input[:schedule_configuration].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateEventIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventIntegrationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::EventFilter.validate!(input[:event_filter], context: "#{context}[:event_filter]") unless input[:event_filter].nil?
        Hearth::Validator.validate!(input[:event_bridge_bus], ::String, context: "#{context}[:event_bridge_bus]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateEventIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateEventIntegrationOutput, context: context)
        Hearth::Validator.validate!(input[:event_integration_arn], ::String, context: "#{context}[:event_integration_arn]")
      end
    end

    class DataIntegrationAssociationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataIntegrationAssociationSummary, context: context)
        Hearth::Validator.validate!(input[:data_integration_association_arn], ::String, context: "#{context}[:data_integration_association_arn]")
        Hearth::Validator.validate!(input[:data_integration_arn], ::String, context: "#{context}[:data_integration_arn]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
      end
    end

    class DataIntegrationAssociationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataIntegrationAssociationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataIntegrationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataIntegrationSummary, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:source_uri], ::String, context: "#{context}[:source_uri]")
      end
    end

    class DataIntegrationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataIntegrationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DeleteDataIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataIntegrationInput, context: context)
        Hearth::Validator.validate!(input[:data_integration_identifier], ::String, context: "#{context}[:data_integration_identifier]")
      end
    end

    class DeleteDataIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataIntegrationOutput, context: context)
      end
    end

    class DeleteEventIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventIntegrationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteEventIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteEventIntegrationOutput, context: context)
      end
    end

    class DuplicateResourceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DuplicateResourceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EventFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventFilter, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
      end
    end

    class EventIntegration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventIntegration, context: context)
        Hearth::Validator.validate!(input[:event_integration_arn], ::String, context: "#{context}[:event_integration_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::EventFilter.validate!(input[:event_filter], context: "#{context}[:event_filter]") unless input[:event_filter].nil?
        Hearth::Validator.validate!(input[:event_bridge_bus], ::String, context: "#{context}[:event_bridge_bus]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class EventIntegrationAssociation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventIntegrationAssociation, context: context)
        Hearth::Validator.validate!(input[:event_integration_association_arn], ::String, context: "#{context}[:event_integration_association_arn]")
        Hearth::Validator.validate!(input[:event_integration_association_id], ::String, context: "#{context}[:event_integration_association_id]")
        Hearth::Validator.validate!(input[:event_integration_name], ::String, context: "#{context}[:event_integration_name]")
        Hearth::Validator.validate!(input[:client_id], ::String, context: "#{context}[:client_id]")
        Hearth::Validator.validate!(input[:event_bridge_rule_name], ::String, context: "#{context}[:event_bridge_rule_name]")
        Validators::ClientAssociationMetadata.validate!(input[:client_association_metadata], context: "#{context}[:client_association_metadata]") unless input[:client_association_metadata].nil?
      end
    end

    class EventIntegrationAssociationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventIntegrationAssociation.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EventIntegrationsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EventIntegration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetDataIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataIntegrationInput, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
      end
    end

    class GetDataIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDataIntegrationOutput, context: context)
        Hearth::Validator.validate!(input[:arn], ::String, context: "#{context}[:arn]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:kms_key], ::String, context: "#{context}[:kms_key]")
        Hearth::Validator.validate!(input[:source_uri], ::String, context: "#{context}[:source_uri]")
        Validators::ScheduleConfiguration.validate!(input[:schedule_configuration], context: "#{context}[:schedule_configuration]") unless input[:schedule_configuration].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetEventIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventIntegrationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class GetEventIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetEventIntegrationOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:event_integration_arn], ::String, context: "#{context}[:event_integration_arn]")
        Hearth::Validator.validate!(input[:event_bridge_bus], ::String, context: "#{context}[:event_bridge_bus]")
        Validators::EventFilter.validate!(input[:event_filter], context: "#{context}[:event_filter]") unless input[:event_filter].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class InternalServiceError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceError, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListDataIntegrationAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataIntegrationAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:data_integration_identifier], ::String, context: "#{context}[:data_integration_identifier]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDataIntegrationAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataIntegrationAssociationsOutput, context: context)
        Validators::DataIntegrationAssociationsList.validate!(input[:data_integration_associations], context: "#{context}[:data_integration_associations]") unless input[:data_integration_associations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDataIntegrationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataIntegrationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDataIntegrationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataIntegrationsOutput, context: context)
        Validators::DataIntegrationsList.validate!(input[:data_integrations], context: "#{context}[:data_integrations]") unless input[:data_integrations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEventIntegrationAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventIntegrationAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:event_integration_name], ::String, context: "#{context}[:event_integration_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEventIntegrationAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventIntegrationAssociationsOutput, context: context)
        Validators::EventIntegrationAssociationsList.validate!(input[:event_integration_associations], context: "#{context}[:event_integration_associations]") unless input[:event_integration_associations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEventIntegrationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventIntegrationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEventIntegrationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEventIntegrationsOutput, context: context)
        Validators::EventIntegrationsList.validate!(input[:event_integrations], context: "#{context}[:event_integrations]") unless input[:event_integrations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ScheduleConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduleConfiguration, context: context)
        Hearth::Validator.validate!(input[:first_execution_from], ::String, context: "#{context}[:first_execution_from]")
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateDataIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataIntegrationInput, context: context)
        Hearth::Validator.validate!(input[:identifier], ::String, context: "#{context}[:identifier]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateDataIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataIntegrationOutput, context: context)
      end
    end

    class UpdateEventIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEventIntegrationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateEventIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateEventIntegrationOutput, context: context)
      end
    end

  end
end
