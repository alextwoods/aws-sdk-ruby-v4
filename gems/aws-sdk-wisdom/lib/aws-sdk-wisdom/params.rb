# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Wisdom
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AppIntegrationsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppIntegrationsConfiguration, context: context)
        type = Types::AppIntegrationsConfiguration.new
        type.app_integration_arn = params[:app_integration_arn]
        type.object_fields = ObjectFieldsList.build(params[:object_fields], context: "#{context}[:object_fields]") unless params[:object_fields].nil?
        type
      end
    end

    module AssistantAssociationData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssistantAssociationData, context: context)
        type = Types::AssistantAssociationData.new
        type.assistant_association_id = params[:assistant_association_id]
        type.assistant_association_arn = params[:assistant_association_arn]
        type.assistant_id = params[:assistant_id]
        type.assistant_arn = params[:assistant_arn]
        type.association_type = params[:association_type]
        type.association_data = AssistantAssociationOutputData.build(params[:association_data], context: "#{context}[:association_data]") unless params[:association_data].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AssistantAssociationInputData
      def self.build(params, context: '')
        return params if params.is_a?(Types::AssistantAssociationInputData)
        Hearth::Validator.validate!(params, ::Hash, Types::AssistantAssociationInputData, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :knowledge_base_id
          Types::AssistantAssociationInputData::KnowledgeBaseId.new(
            params[:knowledge_base_id]
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :knowledge_base_id set"
        end
      end
    end

    module AssistantAssociationOutputData
      def self.build(params, context: '')
        return params if params.is_a?(Types::AssistantAssociationOutputData)
        Hearth::Validator.validate!(params, ::Hash, Types::AssistantAssociationOutputData, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :knowledge_base_association
          Types::AssistantAssociationOutputData::KnowledgeBaseAssociation.new(
            (KnowledgeBaseAssociationData.build(params[:knowledge_base_association], context: "#{context}[:knowledge_base_association]") unless params[:knowledge_base_association].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :knowledge_base_association set"
        end
      end
    end

    module AssistantAssociationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssistantAssociationSummary, context: context)
        type = Types::AssistantAssociationSummary.new
        type.assistant_association_id = params[:assistant_association_id]
        type.assistant_association_arn = params[:assistant_association_arn]
        type.assistant_id = params[:assistant_id]
        type.assistant_arn = params[:assistant_arn]
        type.association_type = params[:association_type]
        type.association_data = AssistantAssociationOutputData.build(params[:association_data], context: "#{context}[:association_data]") unless params[:association_data].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module AssistantAssociationSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssistantAssociationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssistantData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssistantData, context: context)
        type = Types::AssistantData.new
        type.assistant_id = params[:assistant_id]
        type.assistant_arn = params[:assistant_arn]
        type.name = params[:name]
        type.type = params[:type]
        type.status = params[:status]
        type.description = params[:description]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.server_side_encryption_configuration = ServerSideEncryptionConfiguration.build(params[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless params[:server_side_encryption_configuration].nil?
        type
      end
    end

    module AssistantList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AssistantSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssistantSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssistantSummary, context: context)
        type = Types::AssistantSummary.new
        type.assistant_id = params[:assistant_id]
        type.assistant_arn = params[:assistant_arn]
        type.name = params[:name]
        type.type = params[:type]
        type.status = params[:status]
        type.description = params[:description]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.server_side_encryption_configuration = ServerSideEncryptionConfiguration.build(params[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless params[:server_side_encryption_configuration].nil?
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

    module ContentData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContentData, context: context)
        type = Types::ContentData.new
        type.content_arn = params[:content_arn]
        type.content_id = params[:content_id]
        type.knowledge_base_arn = params[:knowledge_base_arn]
        type.knowledge_base_id = params[:knowledge_base_id]
        type.name = params[:name]
        type.revision_id = params[:revision_id]
        type.title = params[:title]
        type.content_type = params[:content_type]
        type.status = params[:status]
        type.metadata = ContentMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.link_out_uri = params[:link_out_uri]
        type.url = params[:url]
        type.url_expiry = params[:url_expiry]
        type
      end
    end

    module ContentMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module ContentReference
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContentReference, context: context)
        type = Types::ContentReference.new
        type.knowledge_base_arn = params[:knowledge_base_arn]
        type.knowledge_base_id = params[:knowledge_base_id]
        type.content_arn = params[:content_arn]
        type.content_id = params[:content_id]
        type
      end
    end

    module ContentSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContentSummary, context: context)
        type = Types::ContentSummary.new
        type.content_arn = params[:content_arn]
        type.content_id = params[:content_id]
        type.knowledge_base_arn = params[:knowledge_base_arn]
        type.knowledge_base_id = params[:knowledge_base_id]
        type.name = params[:name]
        type.revision_id = params[:revision_id]
        type.title = params[:title]
        type.content_type = params[:content_type]
        type.status = params[:status]
        type.metadata = ContentMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ContentSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ContentSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateAssistantAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssistantAssociationInput, context: context)
        type = Types::CreateAssistantAssociationInput.new
        type.assistant_id = params[:assistant_id]
        type.association_type = params[:association_type]
        type.association = AssistantAssociationInputData.build(params[:association], context: "#{context}[:association]") unless params[:association].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAssistantAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssistantAssociationOutput, context: context)
        type = Types::CreateAssistantAssociationOutput.new
        type.assistant_association = AssistantAssociationData.build(params[:assistant_association], context: "#{context}[:assistant_association]") unless params[:assistant_association].nil?
        type
      end
    end

    module CreateAssistantInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssistantInput, context: context)
        type = Types::CreateAssistantInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.name = params[:name]
        type.type = params[:type]
        type.description = params[:description]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.server_side_encryption_configuration = ServerSideEncryptionConfiguration.build(params[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless params[:server_side_encryption_configuration].nil?
        type
      end
    end

    module CreateAssistantOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAssistantOutput, context: context)
        type = Types::CreateAssistantOutput.new
        type.assistant = AssistantData.build(params[:assistant], context: "#{context}[:assistant]") unless params[:assistant].nil?
        type
      end
    end

    module CreateContentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContentInput, context: context)
        type = Types::CreateContentInput.new
        type.knowledge_base_id = params[:knowledge_base_id]
        type.name = params[:name]
        type.title = params[:title]
        type.override_link_out_uri = params[:override_link_out_uri]
        type.metadata = ContentMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.upload_id = params[:upload_id]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateContentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateContentOutput, context: context)
        type = Types::CreateContentOutput.new
        type.content = ContentData.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type
      end
    end

    module CreateKnowledgeBaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateKnowledgeBaseInput, context: context)
        type = Types::CreateKnowledgeBaseInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.name = params[:name]
        type.knowledge_base_type = params[:knowledge_base_type]
        type.source_configuration = SourceConfiguration.build(params[:source_configuration], context: "#{context}[:source_configuration]") unless params[:source_configuration].nil?
        type.rendering_configuration = RenderingConfiguration.build(params[:rendering_configuration], context: "#{context}[:rendering_configuration]") unless params[:rendering_configuration].nil?
        type.server_side_encryption_configuration = ServerSideEncryptionConfiguration.build(params[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless params[:server_side_encryption_configuration].nil?
        type.description = params[:description]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateKnowledgeBaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateKnowledgeBaseOutput, context: context)
        type = Types::CreateKnowledgeBaseOutput.new
        type.knowledge_base = KnowledgeBaseData.build(params[:knowledge_base], context: "#{context}[:knowledge_base]") unless params[:knowledge_base].nil?
        type
      end
    end

    module CreateSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSessionInput, context: context)
        type = Types::CreateSessionInput.new
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.assistant_id = params[:assistant_id]
        type.name = params[:name]
        type.description = params[:description]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateSessionOutput, context: context)
        type = Types::CreateSessionOutput.new
        type.session = SessionData.build(params[:session], context: "#{context}[:session]") unless params[:session].nil?
        type
      end
    end

    module DeleteAssistantAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssistantAssociationInput, context: context)
        type = Types::DeleteAssistantAssociationInput.new
        type.assistant_association_id = params[:assistant_association_id]
        type.assistant_id = params[:assistant_id]
        type
      end
    end

    module DeleteAssistantAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssistantAssociationOutput, context: context)
        type = Types::DeleteAssistantAssociationOutput.new
        type
      end
    end

    module DeleteAssistantInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssistantInput, context: context)
        type = Types::DeleteAssistantInput.new
        type.assistant_id = params[:assistant_id]
        type
      end
    end

    module DeleteAssistantOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAssistantOutput, context: context)
        type = Types::DeleteAssistantOutput.new
        type
      end
    end

    module DeleteContentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContentInput, context: context)
        type = Types::DeleteContentInput.new
        type.knowledge_base_id = params[:knowledge_base_id]
        type.content_id = params[:content_id]
        type
      end
    end

    module DeleteContentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteContentOutput, context: context)
        type = Types::DeleteContentOutput.new
        type
      end
    end

    module DeleteKnowledgeBaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteKnowledgeBaseInput, context: context)
        type = Types::DeleteKnowledgeBaseInput.new
        type.knowledge_base_id = params[:knowledge_base_id]
        type
      end
    end

    module DeleteKnowledgeBaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteKnowledgeBaseOutput, context: context)
        type = Types::DeleteKnowledgeBaseOutput.new
        type
      end
    end

    module Document
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Document, context: context)
        type = Types::Document.new
        type.content_reference = ContentReference.build(params[:content_reference], context: "#{context}[:content_reference]") unless params[:content_reference].nil?
        type.title = DocumentText.build(params[:title], context: "#{context}[:title]") unless params[:title].nil?
        type.excerpt = DocumentText.build(params[:excerpt], context: "#{context}[:excerpt]") unless params[:excerpt].nil?
        type
      end
    end

    module DocumentText
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentText, context: context)
        type = Types::DocumentText.new
        type.text = params[:text]
        type.highlights = Highlights.build(params[:highlights], context: "#{context}[:highlights]") unless params[:highlights].nil?
        type
      end
    end

    module Filter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Filter, context: context)
        type = Types::Filter.new
        type.field = params[:field]
        type.operator = params[:operator]
        type.value = params[:value]
        type
      end
    end

    module FilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Filter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetAssistantAssociationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssistantAssociationInput, context: context)
        type = Types::GetAssistantAssociationInput.new
        type.assistant_association_id = params[:assistant_association_id]
        type.assistant_id = params[:assistant_id]
        type
      end
    end

    module GetAssistantAssociationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssistantAssociationOutput, context: context)
        type = Types::GetAssistantAssociationOutput.new
        type.assistant_association = AssistantAssociationData.build(params[:assistant_association], context: "#{context}[:assistant_association]") unless params[:assistant_association].nil?
        type
      end
    end

    module GetAssistantInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssistantInput, context: context)
        type = Types::GetAssistantInput.new
        type.assistant_id = params[:assistant_id]
        type
      end
    end

    module GetAssistantOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAssistantOutput, context: context)
        type = Types::GetAssistantOutput.new
        type.assistant = AssistantData.build(params[:assistant], context: "#{context}[:assistant]") unless params[:assistant].nil?
        type
      end
    end

    module GetContentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContentInput, context: context)
        type = Types::GetContentInput.new
        type.content_id = params[:content_id]
        type.knowledge_base_id = params[:knowledge_base_id]
        type
      end
    end

    module GetContentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContentOutput, context: context)
        type = Types::GetContentOutput.new
        type.content = ContentData.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type
      end
    end

    module GetContentSummaryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContentSummaryInput, context: context)
        type = Types::GetContentSummaryInput.new
        type.content_id = params[:content_id]
        type.knowledge_base_id = params[:knowledge_base_id]
        type
      end
    end

    module GetContentSummaryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetContentSummaryOutput, context: context)
        type = Types::GetContentSummaryOutput.new
        type.content_summary = ContentSummary.build(params[:content_summary], context: "#{context}[:content_summary]") unless params[:content_summary].nil?
        type
      end
    end

    module GetKnowledgeBaseInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetKnowledgeBaseInput, context: context)
        type = Types::GetKnowledgeBaseInput.new
        type.knowledge_base_id = params[:knowledge_base_id]
        type
      end
    end

    module GetKnowledgeBaseOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetKnowledgeBaseOutput, context: context)
        type = Types::GetKnowledgeBaseOutput.new
        type.knowledge_base = KnowledgeBaseData.build(params[:knowledge_base], context: "#{context}[:knowledge_base]") unless params[:knowledge_base].nil?
        type
      end
    end

    module GetRecommendationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecommendationsInput, context: context)
        type = Types::GetRecommendationsInput.new
        type.assistant_id = params[:assistant_id]
        type.session_id = params[:session_id]
        type.max_results = params[:max_results]
        type.wait_time_seconds = params[:wait_time_seconds]
        type
      end
    end

    module GetRecommendationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecommendationsOutput, context: context)
        type = Types::GetRecommendationsOutput.new
        type.recommendations = RecommendationList.build(params[:recommendations], context: "#{context}[:recommendations]") unless params[:recommendations].nil?
        type.triggers = RecommendationTriggerList.build(params[:triggers], context: "#{context}[:triggers]") unless params[:triggers].nil?
        type
      end
    end

    module GetSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSessionInput, context: context)
        type = Types::GetSessionInput.new
        type.assistant_id = params[:assistant_id]
        type.session_id = params[:session_id]
        type
      end
    end

    module GetSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSessionOutput, context: context)
        type = Types::GetSessionOutput.new
        type.session = SessionData.build(params[:session], context: "#{context}[:session]") unless params[:session].nil?
        type
      end
    end

    module Headers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Highlight
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Highlight, context: context)
        type = Types::Highlight.new
        type.begin_offset_inclusive = params[:begin_offset_inclusive]
        type.end_offset_exclusive = params[:end_offset_exclusive]
        type
      end
    end

    module Highlights
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Highlight.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module KnowledgeBaseAssociationData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KnowledgeBaseAssociationData, context: context)
        type = Types::KnowledgeBaseAssociationData.new
        type.knowledge_base_id = params[:knowledge_base_id]
        type.knowledge_base_arn = params[:knowledge_base_arn]
        type
      end
    end

    module KnowledgeBaseData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KnowledgeBaseData, context: context)
        type = Types::KnowledgeBaseData.new
        type.knowledge_base_id = params[:knowledge_base_id]
        type.knowledge_base_arn = params[:knowledge_base_arn]
        type.name = params[:name]
        type.knowledge_base_type = params[:knowledge_base_type]
        type.status = params[:status]
        type.last_content_modification_time = params[:last_content_modification_time]
        type.source_configuration = SourceConfiguration.build(params[:source_configuration], context: "#{context}[:source_configuration]") unless params[:source_configuration].nil?
        type.rendering_configuration = RenderingConfiguration.build(params[:rendering_configuration], context: "#{context}[:rendering_configuration]") unless params[:rendering_configuration].nil?
        type.server_side_encryption_configuration = ServerSideEncryptionConfiguration.build(params[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless params[:server_side_encryption_configuration].nil?
        type.description = params[:description]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module KnowledgeBaseList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << KnowledgeBaseSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module KnowledgeBaseSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KnowledgeBaseSummary, context: context)
        type = Types::KnowledgeBaseSummary.new
        type.knowledge_base_id = params[:knowledge_base_id]
        type.knowledge_base_arn = params[:knowledge_base_arn]
        type.name = params[:name]
        type.knowledge_base_type = params[:knowledge_base_type]
        type.status = params[:status]
        type.source_configuration = SourceConfiguration.build(params[:source_configuration], context: "#{context}[:source_configuration]") unless params[:source_configuration].nil?
        type.rendering_configuration = RenderingConfiguration.build(params[:rendering_configuration], context: "#{context}[:rendering_configuration]") unless params[:rendering_configuration].nil?
        type.server_side_encryption_configuration = ServerSideEncryptionConfiguration.build(params[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless params[:server_side_encryption_configuration].nil?
        type.description = params[:description]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListAssistantAssociationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssistantAssociationsInput, context: context)
        type = Types::ListAssistantAssociationsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.assistant_id = params[:assistant_id]
        type
      end
    end

    module ListAssistantAssociationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssistantAssociationsOutput, context: context)
        type = Types::ListAssistantAssociationsOutput.new
        type.assistant_association_summaries = AssistantAssociationSummaryList.build(params[:assistant_association_summaries], context: "#{context}[:assistant_association_summaries]") unless params[:assistant_association_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAssistantsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssistantsInput, context: context)
        type = Types::ListAssistantsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListAssistantsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAssistantsOutput, context: context)
        type = Types::ListAssistantsOutput.new
        type.assistant_summaries = AssistantList.build(params[:assistant_summaries], context: "#{context}[:assistant_summaries]") unless params[:assistant_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListContentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContentsInput, context: context)
        type = Types::ListContentsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.knowledge_base_id = params[:knowledge_base_id]
        type
      end
    end

    module ListContentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListContentsOutput, context: context)
        type = Types::ListContentsOutput.new
        type.content_summaries = ContentSummaryList.build(params[:content_summaries], context: "#{context}[:content_summaries]") unless params[:content_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListKnowledgeBasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListKnowledgeBasesInput, context: context)
        type = Types::ListKnowledgeBasesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListKnowledgeBasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListKnowledgeBasesOutput, context: context)
        type = Types::ListKnowledgeBasesOutput.new
        type.knowledge_base_summaries = KnowledgeBaseList.build(params[:knowledge_base_summaries], context: "#{context}[:knowledge_base_summaries]") unless params[:knowledge_base_summaries].nil?
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
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module NotifyRecommendationsReceivedError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotifyRecommendationsReceivedError, context: context)
        type = Types::NotifyRecommendationsReceivedError.new
        type.recommendation_id = params[:recommendation_id]
        type.message = params[:message]
        type
      end
    end

    module NotifyRecommendationsReceivedErrorList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << NotifyRecommendationsReceivedError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module NotifyRecommendationsReceivedInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotifyRecommendationsReceivedInput, context: context)
        type = Types::NotifyRecommendationsReceivedInput.new
        type.assistant_id = params[:assistant_id]
        type.session_id = params[:session_id]
        type.recommendation_ids = RecommendationIdList.build(params[:recommendation_ids], context: "#{context}[:recommendation_ids]") unless params[:recommendation_ids].nil?
        type
      end
    end

    module NotifyRecommendationsReceivedOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotifyRecommendationsReceivedOutput, context: context)
        type = Types::NotifyRecommendationsReceivedOutput.new
        type.recommendation_ids = RecommendationIdList.build(params[:recommendation_ids], context: "#{context}[:recommendation_ids]") unless params[:recommendation_ids].nil?
        type.errors = NotifyRecommendationsReceivedErrorList.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type
      end
    end

    module ObjectFieldsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PreconditionFailedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PreconditionFailedException, context: context)
        type = Types::PreconditionFailedException.new
        type.message = params[:message]
        type
      end
    end

    module QueryAssistantInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryAssistantInput, context: context)
        type = Types::QueryAssistantInput.new
        type.assistant_id = params[:assistant_id]
        type.query_text = params[:query_text]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module QueryAssistantOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryAssistantOutput, context: context)
        type = Types::QueryAssistantOutput.new
        type.results = QueryResultsList.build(params[:results], context: "#{context}[:results]") unless params[:results].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module QueryRecommendationTriggerData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryRecommendationTriggerData, context: context)
        type = Types::QueryRecommendationTriggerData.new
        type.text = params[:text]
        type
      end
    end

    module QueryResultsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ResultData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecommendationData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationData, context: context)
        type = Types::RecommendationData.new
        type.recommendation_id = params[:recommendation_id]
        type.document = Document.build(params[:document], context: "#{context}[:document]") unless params[:document].nil?
        type.relevance_score = params[:relevance_score]
        type.relevance_level = params[:relevance_level]
        type.type = params[:type]
        type
      end
    end

    module RecommendationIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RecommendationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommendationData.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RecommendationTrigger
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationTrigger, context: context)
        type = Types::RecommendationTrigger.new
        type.id = params[:id]
        type.type = params[:type]
        type.source = params[:source]
        type.data = RecommendationTriggerData.build(params[:data], context: "#{context}[:data]") unless params[:data].nil?
        type.recommendation_ids = RecommendationIdList.build(params[:recommendation_ids], context: "#{context}[:recommendation_ids]") unless params[:recommendation_ids].nil?
        type
      end
    end

    module RecommendationTriggerData
      def self.build(params, context: '')
        return params if params.is_a?(Types::RecommendationTriggerData)
        Hearth::Validator.validate!(params, ::Hash, Types::RecommendationTriggerData, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :query
          Types::RecommendationTriggerData::Query.new(
            (QueryRecommendationTriggerData.build(params[:query], context: "#{context}[:query]") unless params[:query].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :query set"
        end
      end
    end

    module RecommendationTriggerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RecommendationTrigger.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RemoveKnowledgeBaseTemplateUriInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveKnowledgeBaseTemplateUriInput, context: context)
        type = Types::RemoveKnowledgeBaseTemplateUriInput.new
        type.knowledge_base_id = params[:knowledge_base_id]
        type
      end
    end

    module RemoveKnowledgeBaseTemplateUriOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveKnowledgeBaseTemplateUriOutput, context: context)
        type = Types::RemoveKnowledgeBaseTemplateUriOutput.new
        type
      end
    end

    module RenderingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RenderingConfiguration, context: context)
        type = Types::RenderingConfiguration.new
        type.template_uri = params[:template_uri]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
        type
      end
    end

    module ResultData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResultData, context: context)
        type = Types::ResultData.new
        type.result_id = params[:result_id]
        type.document = Document.build(params[:document], context: "#{context}[:document]") unless params[:document].nil?
        type.relevance_score = params[:relevance_score]
        type
      end
    end

    module SearchContentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchContentInput, context: context)
        type = Types::SearchContentInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.knowledge_base_id = params[:knowledge_base_id]
        type.search_expression = SearchExpression.build(params[:search_expression], context: "#{context}[:search_expression]") unless params[:search_expression].nil?
        type
      end
    end

    module SearchContentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchContentOutput, context: context)
        type = Types::SearchContentOutput.new
        type.content_summaries = ContentSummaryList.build(params[:content_summaries], context: "#{context}[:content_summaries]") unless params[:content_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module SearchExpression
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchExpression, context: context)
        type = Types::SearchExpression.new
        type.filters = FilterList.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module SearchSessionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchSessionsInput, context: context)
        type = Types::SearchSessionsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.assistant_id = params[:assistant_id]
        type.search_expression = SearchExpression.build(params[:search_expression], context: "#{context}[:search_expression]") unless params[:search_expression].nil?
        type
      end
    end

    module SearchSessionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchSessionsOutput, context: context)
        type = Types::SearchSessionsOutput.new
        type.session_summaries = SessionSummaries.build(params[:session_summaries], context: "#{context}[:session_summaries]") unless params[:session_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ServerSideEncryptionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerSideEncryptionConfiguration, context: context)
        type = Types::ServerSideEncryptionConfiguration.new
        type.kms_key_id = params[:kms_key_id]
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

    module SessionData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SessionData, context: context)
        type = Types::SessionData.new
        type.session_arn = params[:session_arn]
        type.session_id = params[:session_id]
        type.name = params[:name]
        type.description = params[:description]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module SessionSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SessionSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SessionSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SessionSummary, context: context)
        type = Types::SessionSummary.new
        type.session_id = params[:session_id]
        type.session_arn = params[:session_arn]
        type.assistant_id = params[:assistant_id]
        type.assistant_arn = params[:assistant_arn]
        type
      end
    end

    module SourceConfiguration
      def self.build(params, context: '')
        return params if params.is_a?(Types::SourceConfiguration)
        Hearth::Validator.validate!(params, ::Hash, Types::SourceConfiguration, context: context)
        unless params.size == 1
          raise ArgumentError,
                "Expected #{context} to have exactly one member, got: #{params}"
        end
        key, value = params.flatten
        case key
        when :app_integrations
          Types::SourceConfiguration::AppIntegrations.new(
            (AppIntegrationsConfiguration.build(params[:app_integrations], context: "#{context}[:app_integrations]") unless params[:app_integrations].nil?)
          )
        else
          raise ArgumentError,
                "Expected #{context} to have one of :app_integrations set"
        end
      end
    end

    module StartContentUploadInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartContentUploadInput, context: context)
        type = Types::StartContentUploadInput.new
        type.knowledge_base_id = params[:knowledge_base_id]
        type.content_type = params[:content_type]
        type
      end
    end

    module StartContentUploadOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartContentUploadOutput, context: context)
        type = Types::StartContentUploadOutput.new
        type.upload_id = params[:upload_id]
        type.url = params[:url]
        type.url_expiry = params[:url_expiry]
        type.headers_to_include = Headers.build(params[:headers_to_include], context: "#{context}[:headers_to_include]") unless params[:headers_to_include].nil?
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

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = Tags.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Tags
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TooManyTagsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TooManyTagsException, context: context)
        type = Types::TooManyTagsException.new
        type.message = params[:message]
        type.resource_name = params[:resource_name]
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

    module UpdateContentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContentInput, context: context)
        type = Types::UpdateContentInput.new
        type.knowledge_base_id = params[:knowledge_base_id]
        type.content_id = params[:content_id]
        type.revision_id = params[:revision_id]
        type.title = params[:title]
        type.override_link_out_uri = params[:override_link_out_uri]
        type.remove_override_link_out_uri = params[:remove_override_link_out_uri]
        type.metadata = ContentMetadata.build(params[:metadata], context: "#{context}[:metadata]") unless params[:metadata].nil?
        type.upload_id = params[:upload_id]
        type
      end
    end

    module UpdateContentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateContentOutput, context: context)
        type = Types::UpdateContentOutput.new
        type.content = ContentData.build(params[:content], context: "#{context}[:content]") unless params[:content].nil?
        type
      end
    end

    module UpdateKnowledgeBaseTemplateUriInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateKnowledgeBaseTemplateUriInput, context: context)
        type = Types::UpdateKnowledgeBaseTemplateUriInput.new
        type.knowledge_base_id = params[:knowledge_base_id]
        type.template_uri = params[:template_uri]
        type
      end
    end

    module UpdateKnowledgeBaseTemplateUriOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateKnowledgeBaseTemplateUriOutput, context: context)
        type = Types::UpdateKnowledgeBaseTemplateUriOutput.new
        type.knowledge_base = KnowledgeBaseData.build(params[:knowledge_base], context: "#{context}[:knowledge_base]") unless params[:knowledge_base].nil?
        type
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

  end
end
