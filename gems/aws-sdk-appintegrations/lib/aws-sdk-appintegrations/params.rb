# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::AppIntegrations
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module ClientAssociationMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module CreateDataIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataIntegrationInput, context: context)
        type = Types::CreateDataIntegrationInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.kms_key = params[:kms_key]
        type.source_uri = params[:source_uri]
        type.schedule_config = ScheduleConfiguration.build(params[:schedule_config], context: "#{context}[:schedule_config]") unless params[:schedule_config].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateDataIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataIntegrationOutput, context: context)
        type = Types::CreateDataIntegrationOutput.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.kms_key = params[:kms_key]
        type.source_uri = params[:source_uri]
        type.schedule_configuration = ScheduleConfiguration.build(params[:schedule_configuration], context: "#{context}[:schedule_configuration]") unless params[:schedule_configuration].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token]
        type
      end
    end

    module CreateEventIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventIntegrationInput, context: context)
        type = Types::CreateEventIntegrationInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.event_filter = EventFilter.build(params[:event_filter], context: "#{context}[:event_filter]") unless params[:event_filter].nil?
        type.event_bridge_bus = params[:event_bridge_bus]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateEventIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateEventIntegrationOutput, context: context)
        type = Types::CreateEventIntegrationOutput.new
        type.event_integration_arn = params[:event_integration_arn]
        type
      end
    end

    module DataIntegrationAssociationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataIntegrationAssociationSummary, context: context)
        type = Types::DataIntegrationAssociationSummary.new
        type.data_integration_association_arn = params[:data_integration_association_arn]
        type.data_integration_arn = params[:data_integration_arn]
        type.client_id = params[:client_id]
        type
      end
    end

    module DataIntegrationAssociationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataIntegrationAssociationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataIntegrationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataIntegrationSummary, context: context)
        type = Types::DataIntegrationSummary.new
        type.arn = params[:arn]
        type.name = params[:name]
        type.source_uri = params[:source_uri]
        type
      end
    end

    module DataIntegrationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataIntegrationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DeleteDataIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataIntegrationInput, context: context)
        type = Types::DeleteDataIntegrationInput.new
        type.data_integration_identifier = params[:data_integration_identifier]
        type
      end
    end

    module DeleteDataIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataIntegrationOutput, context: context)
        type = Types::DeleteDataIntegrationOutput.new
        type
      end
    end

    module DeleteEventIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventIntegrationInput, context: context)
        type = Types::DeleteEventIntegrationInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteEventIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteEventIntegrationOutput, context: context)
        type = Types::DeleteEventIntegrationOutput.new
        type
      end
    end

    module DuplicateResourceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DuplicateResourceException, context: context)
        type = Types::DuplicateResourceException.new
        type.message = params[:message]
        type
      end
    end

    module EventFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventFilter, context: context)
        type = Types::EventFilter.new
        type.source = params[:source]
        type
      end
    end

    module EventIntegration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventIntegration, context: context)
        type = Types::EventIntegration.new
        type.event_integration_arn = params[:event_integration_arn]
        type.name = params[:name]
        type.description = params[:description]
        type.event_filter = EventFilter.build(params[:event_filter], context: "#{context}[:event_filter]") unless params[:event_filter].nil?
        type.event_bridge_bus = params[:event_bridge_bus]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module EventIntegrationAssociation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventIntegrationAssociation, context: context)
        type = Types::EventIntegrationAssociation.new
        type.event_integration_association_arn = params[:event_integration_association_arn]
        type.event_integration_association_id = params[:event_integration_association_id]
        type.event_integration_name = params[:event_integration_name]
        type.client_id = params[:client_id]
        type.event_bridge_rule_name = params[:event_bridge_rule_name]
        type.client_association_metadata = ClientAssociationMetadata.build(params[:client_association_metadata], context: "#{context}[:client_association_metadata]") unless params[:client_association_metadata].nil?
        type
      end
    end

    module EventIntegrationAssociationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventIntegrationAssociation.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EventIntegrationsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventIntegration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetDataIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataIntegrationInput, context: context)
        type = Types::GetDataIntegrationInput.new
        type.identifier = params[:identifier]
        type
      end
    end

    module GetDataIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDataIntegrationOutput, context: context)
        type = Types::GetDataIntegrationOutput.new
        type.arn = params[:arn]
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.kms_key = params[:kms_key]
        type.source_uri = params[:source_uri]
        type.schedule_configuration = ScheduleConfiguration.build(params[:schedule_configuration], context: "#{context}[:schedule_configuration]") unless params[:schedule_configuration].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetEventIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventIntegrationInput, context: context)
        type = Types::GetEventIntegrationInput.new
        type.name = params[:name]
        type
      end
    end

    module GetEventIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetEventIntegrationOutput, context: context)
        type = Types::GetEventIntegrationOutput.new
        type.name = params[:name]
        type.description = params[:description]
        type.event_integration_arn = params[:event_integration_arn]
        type.event_bridge_bus = params[:event_bridge_bus]
        type.event_filter = EventFilter.build(params[:event_filter], context: "#{context}[:event_filter]") unless params[:event_filter].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module InternalServiceError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceError, context: context)
        type = Types::InternalServiceError.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module ListDataIntegrationAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataIntegrationAssociationsInput, context: context)
        type = Types::ListDataIntegrationAssociationsInput.new
        type.data_integration_identifier = params[:data_integration_identifier]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDataIntegrationAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataIntegrationAssociationsOutput, context: context)
        type = Types::ListDataIntegrationAssociationsOutput.new
        type.data_integration_associations = DataIntegrationAssociationsList.build(params[:data_integration_associations], context: "#{context}[:data_integration_associations]") unless params[:data_integration_associations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDataIntegrationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataIntegrationsInput, context: context)
        type = Types::ListDataIntegrationsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDataIntegrationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataIntegrationsOutput, context: context)
        type = Types::ListDataIntegrationsOutput.new
        type.data_integrations = DataIntegrationsList.build(params[:data_integrations], context: "#{context}[:data_integrations]") unless params[:data_integrations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEventIntegrationAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventIntegrationAssociationsInput, context: context)
        type = Types::ListEventIntegrationAssociationsInput.new
        type.event_integration_name = params[:event_integration_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEventIntegrationAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventIntegrationAssociationsOutput, context: context)
        type = Types::ListEventIntegrationAssociationsOutput.new
        type.event_integration_associations = EventIntegrationAssociationsList.build(params[:event_integration_associations], context: "#{context}[:event_integration_associations]") unless params[:event_integration_associations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEventIntegrationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventIntegrationsInput, context: context)
        type = Types::ListEventIntegrationsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEventIntegrationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEventIntegrationsOutput, context: context)
        type = Types::ListEventIntegrationsOutput.new
        type.event_integrations = EventIntegrationsList.build(params[:event_integrations], context: "#{context}[:event_integrations]") unless params[:event_integrations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceQuotaExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceQuotaExceededException, context: context)
        type = Types::ResourceQuotaExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ScheduleConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduleConfiguration, context: context)
        type = Types::ScheduleConfiguration.new
        type.first_execution_from = params[:first_execution_from]
        type.object = params[:object]
        type.schedule_expression = params[:schedule_expression]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
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

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateDataIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataIntegrationInput, context: context)
        type = Types::UpdateDataIntegrationInput.new
        type.identifier = params[:identifier]
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module UpdateDataIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataIntegrationOutput, context: context)
        type = Types::UpdateDataIntegrationOutput.new
        type
      end
    end

    module UpdateEventIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEventIntegrationInput, context: context)
        type = Types::UpdateEventIntegrationInput.new
        type.name = params[:name]
        type.description = params[:description]
        type
      end
    end

    module UpdateEventIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateEventIntegrationOutput, context: context)
        type = Types::UpdateEventIntegrationOutput.new
        type
      end
    end

  end
end
