# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Wisdom
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AppIntegrationsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppIntegrationsConfiguration, context: context)
        Hearth::Validator.validate!(input[:app_integration_arn], ::String, context: "#{context}[:app_integration_arn]")
        ObjectFieldsList.validate!(input[:object_fields], context: "#{context}[:object_fields]") unless input[:object_fields].nil?
      end
    end

    class AssistantAssociationData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssistantAssociationData, context: context)
        Hearth::Validator.validate!(input[:assistant_association_id], ::String, context: "#{context}[:assistant_association_id]")
        Hearth::Validator.validate!(input[:assistant_association_arn], ::String, context: "#{context}[:assistant_association_arn]")
        Hearth::Validator.validate!(input[:assistant_id], ::String, context: "#{context}[:assistant_id]")
        Hearth::Validator.validate!(input[:assistant_arn], ::String, context: "#{context}[:assistant_arn]")
        Hearth::Validator.validate!(input[:association_type], ::String, context: "#{context}[:association_type]")
        AssistantAssociationOutputData.validate!(input[:association_data], context: "#{context}[:association_data]") unless input[:association_data].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AssistantAssociationInputData
      def self.validate!(input, context:)
        case input
        when Types::AssistantAssociationInputData::KnowledgeBaseId
          Hearth::Validator.validate!(input.__getobj__, ::String, context: context)
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::AssistantAssociationInputData, got #{input.class}."
        end
      end

      class KnowledgeBaseId
        def self.validate!(input, context:)
          Hearth::Validator.validate!(input, ::String, context: context)
        end
      end
    end

    class AssistantAssociationOutputData
      def self.validate!(input, context:)
        case input
        when Types::AssistantAssociationOutputData::KnowledgeBaseAssociation
          KnowledgeBaseAssociationData.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::AssistantAssociationOutputData, got #{input.class}."
        end
      end

      class KnowledgeBaseAssociation
        def self.validate!(input, context:)
          Validators::KnowledgeBaseAssociationData.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class AssistantAssociationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssistantAssociationSummary, context: context)
        Hearth::Validator.validate!(input[:assistant_association_id], ::String, context: "#{context}[:assistant_association_id]")
        Hearth::Validator.validate!(input[:assistant_association_arn], ::String, context: "#{context}[:assistant_association_arn]")
        Hearth::Validator.validate!(input[:assistant_id], ::String, context: "#{context}[:assistant_id]")
        Hearth::Validator.validate!(input[:assistant_arn], ::String, context: "#{context}[:assistant_arn]")
        Hearth::Validator.validate!(input[:association_type], ::String, context: "#{context}[:association_type]")
        AssistantAssociationOutputData.validate!(input[:association_data], context: "#{context}[:association_data]") unless input[:association_data].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class AssistantAssociationSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssistantAssociationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssistantData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssistantData, context: context)
        Hearth::Validator.validate!(input[:assistant_id], ::String, context: "#{context}[:assistant_id]")
        Hearth::Validator.validate!(input[:assistant_arn], ::String, context: "#{context}[:assistant_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ServerSideEncryptionConfiguration.validate!(input[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless input[:server_side_encryption_configuration].nil?
      end
    end

    class AssistantList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AssistantSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssistantSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssistantSummary, context: context)
        Hearth::Validator.validate!(input[:assistant_id], ::String, context: "#{context}[:assistant_id]")
        Hearth::Validator.validate!(input[:assistant_arn], ::String, context: "#{context}[:assistant_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ServerSideEncryptionConfiguration.validate!(input[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless input[:server_side_encryption_configuration].nil?
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ContentData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContentData, context: context)
        Hearth::Validator.validate!(input[:content_arn], ::String, context: "#{context}[:content_arn]")
        Hearth::Validator.validate!(input[:content_id], ::String, context: "#{context}[:content_id]")
        Hearth::Validator.validate!(input[:knowledge_base_arn], ::String, context: "#{context}[:knowledge_base_arn]")
        Hearth::Validator.validate!(input[:knowledge_base_id], ::String, context: "#{context}[:knowledge_base_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        ContentMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:link_out_uri], ::String, context: "#{context}[:link_out_uri]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:url_expiry], ::Time, context: "#{context}[:url_expiry]")
      end
    end

    class ContentMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class ContentReference
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContentReference, context: context)
        Hearth::Validator.validate!(input[:knowledge_base_arn], ::String, context: "#{context}[:knowledge_base_arn]")
        Hearth::Validator.validate!(input[:knowledge_base_id], ::String, context: "#{context}[:knowledge_base_id]")
        Hearth::Validator.validate!(input[:content_arn], ::String, context: "#{context}[:content_arn]")
        Hearth::Validator.validate!(input[:content_id], ::String, context: "#{context}[:content_id]")
      end
    end

    class ContentSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContentSummary, context: context)
        Hearth::Validator.validate!(input[:content_arn], ::String, context: "#{context}[:content_arn]")
        Hearth::Validator.validate!(input[:content_id], ::String, context: "#{context}[:content_id]")
        Hearth::Validator.validate!(input[:knowledge_base_arn], ::String, context: "#{context}[:knowledge_base_arn]")
        Hearth::Validator.validate!(input[:knowledge_base_id], ::String, context: "#{context}[:knowledge_base_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        ContentMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ContentSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ContentSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateAssistantAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssistantAssociationInput, context: context)
        Hearth::Validator.validate!(input[:assistant_id], ::String, context: "#{context}[:assistant_id]")
        Hearth::Validator.validate!(input[:association_type], ::String, context: "#{context}[:association_type]")
        AssistantAssociationInputData.validate!(input[:association], context: "#{context}[:association]") unless input[:association].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAssistantAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssistantAssociationOutput, context: context)
        AssistantAssociationData.validate!(input[:assistant_association], context: "#{context}[:assistant_association]") unless input[:assistant_association].nil?
      end
    end

    class CreateAssistantInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssistantInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        ServerSideEncryptionConfiguration.validate!(input[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless input[:server_side_encryption_configuration].nil?
      end
    end

    class CreateAssistantOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAssistantOutput, context: context)
        AssistantData.validate!(input[:assistant], context: "#{context}[:assistant]") unless input[:assistant].nil?
      end
    end

    class CreateContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContentInput, context: context)
        Hearth::Validator.validate!(input[:knowledge_base_id], ::String, context: "#{context}[:knowledge_base_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:override_link_out_uri], ::String, context: "#{context}[:override_link_out_uri]")
        ContentMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateContentOutput, context: context)
        ContentData.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
      end
    end

    class CreateKnowledgeBaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateKnowledgeBaseInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:knowledge_base_type], ::String, context: "#{context}[:knowledge_base_type]")
        SourceConfiguration.validate!(input[:source_configuration], context: "#{context}[:source_configuration]") unless input[:source_configuration].nil?
        RenderingConfiguration.validate!(input[:rendering_configuration], context: "#{context}[:rendering_configuration]") unless input[:rendering_configuration].nil?
        ServerSideEncryptionConfiguration.validate!(input[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless input[:server_side_encryption_configuration].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateKnowledgeBaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateKnowledgeBaseOutput, context: context)
        KnowledgeBaseData.validate!(input[:knowledge_base], context: "#{context}[:knowledge_base]") unless input[:knowledge_base].nil?
      end
    end

    class CreateSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSessionInput, context: context)
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:assistant_id], ::String, context: "#{context}[:assistant_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateSessionOutput, context: context)
        SessionData.validate!(input[:session], context: "#{context}[:session]") unless input[:session].nil?
      end
    end

    class DeleteAssistantAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssistantAssociationInput, context: context)
        Hearth::Validator.validate!(input[:assistant_association_id], ::String, context: "#{context}[:assistant_association_id]")
        Hearth::Validator.validate!(input[:assistant_id], ::String, context: "#{context}[:assistant_id]")
      end
    end

    class DeleteAssistantAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssistantAssociationOutput, context: context)
      end
    end

    class DeleteAssistantInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssistantInput, context: context)
        Hearth::Validator.validate!(input[:assistant_id], ::String, context: "#{context}[:assistant_id]")
      end
    end

    class DeleteAssistantOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAssistantOutput, context: context)
      end
    end

    class DeleteContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContentInput, context: context)
        Hearth::Validator.validate!(input[:knowledge_base_id], ::String, context: "#{context}[:knowledge_base_id]")
        Hearth::Validator.validate!(input[:content_id], ::String, context: "#{context}[:content_id]")
      end
    end

    class DeleteContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteContentOutput, context: context)
      end
    end

    class DeleteKnowledgeBaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteKnowledgeBaseInput, context: context)
        Hearth::Validator.validate!(input[:knowledge_base_id], ::String, context: "#{context}[:knowledge_base_id]")
      end
    end

    class DeleteKnowledgeBaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteKnowledgeBaseOutput, context: context)
      end
    end

    class Document
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Document, context: context)
        ContentReference.validate!(input[:content_reference], context: "#{context}[:content_reference]") unless input[:content_reference].nil?
        DocumentText.validate!(input[:title], context: "#{context}[:title]") unless input[:title].nil?
        DocumentText.validate!(input[:excerpt], context: "#{context}[:excerpt]") unless input[:excerpt].nil?
      end
    end

    class DocumentText
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentText, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Highlights.validate!(input[:highlights], context: "#{context}[:highlights]") unless input[:highlights].nil?
      end
    end

    class Filter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Filter, context: context)
        Hearth::Validator.validate!(input[:field], ::String, context: "#{context}[:field]")
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class FilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Filter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetAssistantAssociationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssistantAssociationInput, context: context)
        Hearth::Validator.validate!(input[:assistant_association_id], ::String, context: "#{context}[:assistant_association_id]")
        Hearth::Validator.validate!(input[:assistant_id], ::String, context: "#{context}[:assistant_id]")
      end
    end

    class GetAssistantAssociationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssistantAssociationOutput, context: context)
        AssistantAssociationData.validate!(input[:assistant_association], context: "#{context}[:assistant_association]") unless input[:assistant_association].nil?
      end
    end

    class GetAssistantInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssistantInput, context: context)
        Hearth::Validator.validate!(input[:assistant_id], ::String, context: "#{context}[:assistant_id]")
      end
    end

    class GetAssistantOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAssistantOutput, context: context)
        AssistantData.validate!(input[:assistant], context: "#{context}[:assistant]") unless input[:assistant].nil?
      end
    end

    class GetContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContentInput, context: context)
        Hearth::Validator.validate!(input[:content_id], ::String, context: "#{context}[:content_id]")
        Hearth::Validator.validate!(input[:knowledge_base_id], ::String, context: "#{context}[:knowledge_base_id]")
      end
    end

    class GetContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContentOutput, context: context)
        ContentData.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
      end
    end

    class GetContentSummaryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContentSummaryInput, context: context)
        Hearth::Validator.validate!(input[:content_id], ::String, context: "#{context}[:content_id]")
        Hearth::Validator.validate!(input[:knowledge_base_id], ::String, context: "#{context}[:knowledge_base_id]")
      end
    end

    class GetContentSummaryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetContentSummaryOutput, context: context)
        ContentSummary.validate!(input[:content_summary], context: "#{context}[:content_summary]") unless input[:content_summary].nil?
      end
    end

    class GetKnowledgeBaseInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKnowledgeBaseInput, context: context)
        Hearth::Validator.validate!(input[:knowledge_base_id], ::String, context: "#{context}[:knowledge_base_id]")
      end
    end

    class GetKnowledgeBaseOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetKnowledgeBaseOutput, context: context)
        KnowledgeBaseData.validate!(input[:knowledge_base], context: "#{context}[:knowledge_base]") unless input[:knowledge_base].nil?
      end
    end

    class GetRecommendationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecommendationsInput, context: context)
        Hearth::Validator.validate!(input[:assistant_id], ::String, context: "#{context}[:assistant_id]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:wait_time_seconds], ::Integer, context: "#{context}[:wait_time_seconds]")
      end
    end

    class GetRecommendationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecommendationsOutput, context: context)
        RecommendationList.validate!(input[:recommendations], context: "#{context}[:recommendations]") unless input[:recommendations].nil?
        RecommendationTriggerList.validate!(input[:triggers], context: "#{context}[:triggers]") unless input[:triggers].nil?
      end
    end

    class GetSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSessionInput, context: context)
        Hearth::Validator.validate!(input[:assistant_id], ::String, context: "#{context}[:assistant_id]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
      end
    end

    class GetSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSessionOutput, context: context)
        SessionData.validate!(input[:session], context: "#{context}[:session]") unless input[:session].nil?
      end
    end

    class Headers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Highlight
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Highlight, context: context)
        Hearth::Validator.validate!(input[:begin_offset_inclusive], ::Integer, context: "#{context}[:begin_offset_inclusive]")
        Hearth::Validator.validate!(input[:end_offset_exclusive], ::Integer, context: "#{context}[:end_offset_exclusive]")
      end
    end

    class Highlights
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Highlight.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KnowledgeBaseAssociationData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KnowledgeBaseAssociationData, context: context)
        Hearth::Validator.validate!(input[:knowledge_base_id], ::String, context: "#{context}[:knowledge_base_id]")
        Hearth::Validator.validate!(input[:knowledge_base_arn], ::String, context: "#{context}[:knowledge_base_arn]")
      end
    end

    class KnowledgeBaseData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KnowledgeBaseData, context: context)
        Hearth::Validator.validate!(input[:knowledge_base_id], ::String, context: "#{context}[:knowledge_base_id]")
        Hearth::Validator.validate!(input[:knowledge_base_arn], ::String, context: "#{context}[:knowledge_base_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:knowledge_base_type], ::String, context: "#{context}[:knowledge_base_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_content_modification_time], ::Time, context: "#{context}[:last_content_modification_time]")
        SourceConfiguration.validate!(input[:source_configuration], context: "#{context}[:source_configuration]") unless input[:source_configuration].nil?
        RenderingConfiguration.validate!(input[:rendering_configuration], context: "#{context}[:rendering_configuration]") unless input[:rendering_configuration].nil?
        ServerSideEncryptionConfiguration.validate!(input[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless input[:server_side_encryption_configuration].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class KnowledgeBaseList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          KnowledgeBaseSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class KnowledgeBaseSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KnowledgeBaseSummary, context: context)
        Hearth::Validator.validate!(input[:knowledge_base_id], ::String, context: "#{context}[:knowledge_base_id]")
        Hearth::Validator.validate!(input[:knowledge_base_arn], ::String, context: "#{context}[:knowledge_base_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:knowledge_base_type], ::String, context: "#{context}[:knowledge_base_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        SourceConfiguration.validate!(input[:source_configuration], context: "#{context}[:source_configuration]") unless input[:source_configuration].nil?
        RenderingConfiguration.validate!(input[:rendering_configuration], context: "#{context}[:rendering_configuration]") unless input[:rendering_configuration].nil?
        ServerSideEncryptionConfiguration.validate!(input[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless input[:server_side_encryption_configuration].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListAssistantAssociationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssistantAssociationsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:assistant_id], ::String, context: "#{context}[:assistant_id]")
      end
    end

    class ListAssistantAssociationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssistantAssociationsOutput, context: context)
        AssistantAssociationSummaryList.validate!(input[:assistant_association_summaries], context: "#{context}[:assistant_association_summaries]") unless input[:assistant_association_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAssistantsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssistantsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListAssistantsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAssistantsOutput, context: context)
        AssistantList.validate!(input[:assistant_summaries], context: "#{context}[:assistant_summaries]") unless input[:assistant_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListContentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContentsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:knowledge_base_id], ::String, context: "#{context}[:knowledge_base_id]")
      end
    end

    class ListContentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListContentsOutput, context: context)
        ContentSummaryList.validate!(input[:content_summaries], context: "#{context}[:content_summaries]") unless input[:content_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListKnowledgeBasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListKnowledgeBasesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListKnowledgeBasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListKnowledgeBasesOutput, context: context)
        KnowledgeBaseList.validate!(input[:knowledge_base_summaries], context: "#{context}[:knowledge_base_summaries]") unless input[:knowledge_base_summaries].nil?
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
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class NotifyRecommendationsReceivedError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotifyRecommendationsReceivedError, context: context)
        Hearth::Validator.validate!(input[:recommendation_id], ::String, context: "#{context}[:recommendation_id]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class NotifyRecommendationsReceivedErrorList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          NotifyRecommendationsReceivedError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class NotifyRecommendationsReceivedInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotifyRecommendationsReceivedInput, context: context)
        Hearth::Validator.validate!(input[:assistant_id], ::String, context: "#{context}[:assistant_id]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        RecommendationIdList.validate!(input[:recommendation_ids], context: "#{context}[:recommendation_ids]") unless input[:recommendation_ids].nil?
      end
    end

    class NotifyRecommendationsReceivedOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotifyRecommendationsReceivedOutput, context: context)
        RecommendationIdList.validate!(input[:recommendation_ids], context: "#{context}[:recommendation_ids]") unless input[:recommendation_ids].nil?
        NotifyRecommendationsReceivedErrorList.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
      end
    end

    class ObjectFieldsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PreconditionFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PreconditionFailedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class QueryAssistantInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryAssistantInput, context: context)
        Hearth::Validator.validate!(input[:assistant_id], ::String, context: "#{context}[:assistant_id]")
        Hearth::Validator.validate!(input[:query_text], ::String, context: "#{context}[:query_text]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class QueryAssistantOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryAssistantOutput, context: context)
        QueryResultsList.validate!(input[:results], context: "#{context}[:results]") unless input[:results].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class QueryRecommendationTriggerData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryRecommendationTriggerData, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
      end
    end

    class QueryResultsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ResultData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecommendationData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationData, context: context)
        Hearth::Validator.validate!(input[:recommendation_id], ::String, context: "#{context}[:recommendation_id]")
        Document.validate!(input[:document], context: "#{context}[:document]") unless input[:document].nil?
        Hearth::Validator.validate!(input[:relevance_score], ::Float, context: "#{context}[:relevance_score]")
        Hearth::Validator.validate!(input[:relevance_level], ::String, context: "#{context}[:relevance_level]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class RecommendationIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RecommendationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecommendationData.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RecommendationTrigger
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RecommendationTrigger, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        RecommendationTriggerData.validate!(input[:data], context: "#{context}[:data]") unless input[:data].nil?
        RecommendationIdList.validate!(input[:recommendation_ids], context: "#{context}[:recommendation_ids]") unless input[:recommendation_ids].nil?
      end
    end

    class RecommendationTriggerData
      def self.validate!(input, context:)
        case input
        when Types::RecommendationTriggerData::Query
          QueryRecommendationTriggerData.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::RecommendationTriggerData, got #{input.class}."
        end
      end

      class Query
        def self.validate!(input, context:)
          Validators::QueryRecommendationTriggerData.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class RecommendationTriggerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          RecommendationTrigger.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RemoveKnowledgeBaseTemplateUriInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveKnowledgeBaseTemplateUriInput, context: context)
        Hearth::Validator.validate!(input[:knowledge_base_id], ::String, context: "#{context}[:knowledge_base_id]")
      end
    end

    class RemoveKnowledgeBaseTemplateUriOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveKnowledgeBaseTemplateUriOutput, context: context)
      end
    end

    class RenderingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RenderingConfiguration, context: context)
        Hearth::Validator.validate!(input[:template_uri], ::String, context: "#{context}[:template_uri]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class ResultData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResultData, context: context)
        Hearth::Validator.validate!(input[:result_id], ::String, context: "#{context}[:result_id]")
        Document.validate!(input[:document], context: "#{context}[:document]") unless input[:document].nil?
        Hearth::Validator.validate!(input[:relevance_score], ::Float, context: "#{context}[:relevance_score]")
      end
    end

    class SearchContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchContentInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:knowledge_base_id], ::String, context: "#{context}[:knowledge_base_id]")
        SearchExpression.validate!(input[:search_expression], context: "#{context}[:search_expression]") unless input[:search_expression].nil?
      end
    end

    class SearchContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchContentOutput, context: context)
        ContentSummaryList.validate!(input[:content_summaries], context: "#{context}[:content_summaries]") unless input[:content_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SearchExpression
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchExpression, context: context)
        FilterList.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class SearchSessionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchSessionsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:assistant_id], ::String, context: "#{context}[:assistant_id]")
        SearchExpression.validate!(input[:search_expression], context: "#{context}[:search_expression]") unless input[:search_expression].nil?
      end
    end

    class SearchSessionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchSessionsOutput, context: context)
        SessionSummaries.validate!(input[:session_summaries], context: "#{context}[:session_summaries]") unless input[:session_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ServerSideEncryptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerSideEncryptionConfiguration, context: context)
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SessionData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SessionData, context: context)
        Hearth::Validator.validate!(input[:session_arn], ::String, context: "#{context}[:session_arn]")
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class SessionSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          SessionSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SessionSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SessionSummary, context: context)
        Hearth::Validator.validate!(input[:session_id], ::String, context: "#{context}[:session_id]")
        Hearth::Validator.validate!(input[:session_arn], ::String, context: "#{context}[:session_arn]")
        Hearth::Validator.validate!(input[:assistant_id], ::String, context: "#{context}[:assistant_id]")
        Hearth::Validator.validate!(input[:assistant_arn], ::String, context: "#{context}[:assistant_arn]")
      end
    end

    class SourceConfiguration
      def self.validate!(input, context:)
        case input
        when Types::SourceConfiguration::AppIntegrations
          AppIntegrationsConfiguration.validate!(input.__getobj__, context: context) unless input.__getobj__.nil?
        else
          raise ArgumentError,
                "Expected #{context} to be a union member of "\
                "Types::SourceConfiguration, got #{input.class}."
        end
      end

      class AppIntegrations
        def self.validate!(input, context:)
          Validators::AppIntegrationsConfiguration.validate!(input, context: context) unless input.nil?
        end
      end
    end

    class StartContentUploadInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartContentUploadInput, context: context)
        Hearth::Validator.validate!(input[:knowledge_base_id], ::String, context: "#{context}[:knowledge_base_id]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class StartContentUploadOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartContentUploadOutput, context: context)
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:url_expiry], ::Time, context: "#{context}[:url_expiry]")
        Headers.validate!(input[:headers_to_include], context: "#{context}[:headers_to_include]") unless input[:headers_to_include].nil?
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

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Tags.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Tags
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TooManyTagsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TooManyTagsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_name], ::String, context: "#{context}[:resource_name]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateContentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContentInput, context: context)
        Hearth::Validator.validate!(input[:knowledge_base_id], ::String, context: "#{context}[:knowledge_base_id]")
        Hearth::Validator.validate!(input[:content_id], ::String, context: "#{context}[:content_id]")
        Hearth::Validator.validate!(input[:revision_id], ::String, context: "#{context}[:revision_id]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:override_link_out_uri], ::String, context: "#{context}[:override_link_out_uri]")
        Hearth::Validator.validate!(input[:remove_override_link_out_uri], ::TrueClass, ::FalseClass, context: "#{context}[:remove_override_link_out_uri]")
        ContentMetadata.validate!(input[:metadata], context: "#{context}[:metadata]") unless input[:metadata].nil?
        Hearth::Validator.validate!(input[:upload_id], ::String, context: "#{context}[:upload_id]")
      end
    end

    class UpdateContentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateContentOutput, context: context)
        ContentData.validate!(input[:content], context: "#{context}[:content]") unless input[:content].nil?
      end
    end

    class UpdateKnowledgeBaseTemplateUriInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateKnowledgeBaseTemplateUriInput, context: context)
        Hearth::Validator.validate!(input[:knowledge_base_id], ::String, context: "#{context}[:knowledge_base_id]")
        Hearth::Validator.validate!(input[:template_uri], ::String, context: "#{context}[:template_uri]")
      end
    end

    class UpdateKnowledgeBaseTemplateUriOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateKnowledgeBaseTemplateUriOutput, context: context)
        KnowledgeBaseData.validate!(input[:knowledge_base], context: "#{context}[:knowledge_base]") unless input[:knowledge_base].nil?
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
