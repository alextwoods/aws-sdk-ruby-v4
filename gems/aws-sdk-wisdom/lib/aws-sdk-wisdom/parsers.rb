# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Wisdom
  module Parsers

    # Operation Parser for CreateAssistant
    class CreateAssistant
      def self.parse(http_resp)
        data = Types::CreateAssistantOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assistant = (Parsers::AssistantData.parse(map['assistant']) unless map['assistant'].nil?)
        data
      end
    end

    class AssistantData
      def self.parse(map)
        data = Types::AssistantData.new
        data.assistant_id = map['assistantId']
        data.assistant_arn = map['assistantArn']
        data.name = map['name']
        data.type = map['type']
        data.status = map['status']
        data.description = map['description']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.server_side_encryption_configuration = (Parsers::ServerSideEncryptionConfiguration.parse(map['serverSideEncryptionConfiguration']) unless map['serverSideEncryptionConfiguration'].nil?)
        return data
      end
    end

    class ServerSideEncryptionConfiguration
      def self.parse(map)
        data = Types::ServerSideEncryptionConfiguration.new
        data.kms_key_id = map['kmsKeyId']
        return data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateAssistantAssociation
    class CreateAssistantAssociation
      def self.parse(http_resp)
        data = Types::CreateAssistantAssociationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assistant_association = (Parsers::AssistantAssociationData.parse(map['assistantAssociation']) unless map['assistantAssociation'].nil?)
        data
      end
    end

    class AssistantAssociationData
      def self.parse(map)
        data = Types::AssistantAssociationData.new
        data.assistant_association_id = map['assistantAssociationId']
        data.assistant_association_arn = map['assistantAssociationArn']
        data.assistant_id = map['assistantId']
        data.assistant_arn = map['assistantArn']
        data.association_type = map['associationType']
        data.association_data = (Parsers::AssistantAssociationOutputData.parse(map['associationData']) unless map['associationData'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class AssistantAssociationOutputData
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'knowledgeBaseAssociation'
          value = (Parsers::KnowledgeBaseAssociationData.parse(value) unless value.nil?)
          Types::AssistantAssociationOutputData::KnowledgeBaseAssociation.new(value) if value
        else
          Types::AssistantAssociationOutputData::Unknown.new({name: key, value: value})
        end
      end
    end

    class KnowledgeBaseAssociationData
      def self.parse(map)
        data = Types::KnowledgeBaseAssociationData.new
        data.knowledge_base_id = map['knowledgeBaseId']
        data.knowledge_base_arn = map['knowledgeBaseArn']
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_name = map['resourceName']
        data
      end
    end

    # Operation Parser for CreateContent
    class CreateContent
      def self.parse(http_resp)
        data = Types::CreateContentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.content = (Parsers::ContentData.parse(map['content']) unless map['content'].nil?)
        data
      end
    end

    class ContentData
      def self.parse(map)
        data = Types::ContentData.new
        data.content_arn = map['contentArn']
        data.content_id = map['contentId']
        data.knowledge_base_arn = map['knowledgeBaseArn']
        data.knowledge_base_id = map['knowledgeBaseId']
        data.name = map['name']
        data.revision_id = map['revisionId']
        data.title = map['title']
        data.content_type = map['contentType']
        data.status = map['status']
        data.metadata = (Parsers::ContentMetadata.parse(map['metadata']) unless map['metadata'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.link_out_uri = map['linkOutUri']
        data.url = map['url']
        data.url_expiry = Time.at(map['urlExpiry'].to_i) if map['urlExpiry']
        return data
      end
    end

    class ContentMetadata
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateKnowledgeBase
    class CreateKnowledgeBase
      def self.parse(http_resp)
        data = Types::CreateKnowledgeBaseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.knowledge_base = (Parsers::KnowledgeBaseData.parse(map['knowledgeBase']) unless map['knowledgeBase'].nil?)
        data
      end
    end

    class KnowledgeBaseData
      def self.parse(map)
        data = Types::KnowledgeBaseData.new
        data.knowledge_base_id = map['knowledgeBaseId']
        data.knowledge_base_arn = map['knowledgeBaseArn']
        data.name = map['name']
        data.knowledge_base_type = map['knowledgeBaseType']
        data.status = map['status']
        data.last_content_modification_time = Time.at(map['lastContentModificationTime'].to_i) if map['lastContentModificationTime']
        data.source_configuration = (Parsers::SourceConfiguration.parse(map['sourceConfiguration']) unless map['sourceConfiguration'].nil?)
        data.rendering_configuration = (Parsers::RenderingConfiguration.parse(map['renderingConfiguration']) unless map['renderingConfiguration'].nil?)
        data.server_side_encryption_configuration = (Parsers::ServerSideEncryptionConfiguration.parse(map['serverSideEncryptionConfiguration']) unless map['serverSideEncryptionConfiguration'].nil?)
        data.description = map['description']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class RenderingConfiguration
      def self.parse(map)
        data = Types::RenderingConfiguration.new
        data.template_uri = map['templateUri']
        return data
      end
    end

    class SourceConfiguration
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'appIntegrations'
          value = (Parsers::AppIntegrationsConfiguration.parse(value) unless value.nil?)
          Types::SourceConfiguration::AppIntegrations.new(value) if value
        else
          Types::SourceConfiguration::Unknown.new({name: key, value: value})
        end
      end
    end

    class AppIntegrationsConfiguration
      def self.parse(map)
        data = Types::AppIntegrationsConfiguration.new
        data.app_integration_arn = map['appIntegrationArn']
        data.object_fields = (Parsers::ObjectFieldsList.parse(map['objectFields']) unless map['objectFields'].nil?)
        return data
      end
    end

    class ObjectFieldsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateSession
    class CreateSession
      def self.parse(http_resp)
        data = Types::CreateSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.session = (Parsers::SessionData.parse(map['session']) unless map['session'].nil?)
        data
      end
    end

    class SessionData
      def self.parse(map)
        data = Types::SessionData.new
        data.session_arn = map['sessionArn']
        data.session_id = map['sessionId']
        data.name = map['name']
        data.description = map['description']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for DeleteAssistant
    class DeleteAssistant
      def self.parse(http_resp)
        data = Types::DeleteAssistantOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteAssistantAssociation
    class DeleteAssistantAssociation
      def self.parse(http_resp)
        data = Types::DeleteAssistantAssociationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteContent
    class DeleteContent
      def self.parse(http_resp)
        data = Types::DeleteContentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteKnowledgeBase
    class DeleteKnowledgeBase
      def self.parse(http_resp)
        data = Types::DeleteKnowledgeBaseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetAssistant
    class GetAssistant
      def self.parse(http_resp)
        data = Types::GetAssistantOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assistant = (Parsers::AssistantData.parse(map['assistant']) unless map['assistant'].nil?)
        data
      end
    end

    # Operation Parser for GetAssistantAssociation
    class GetAssistantAssociation
      def self.parse(http_resp)
        data = Types::GetAssistantAssociationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assistant_association = (Parsers::AssistantAssociationData.parse(map['assistantAssociation']) unless map['assistantAssociation'].nil?)
        data
      end
    end

    # Operation Parser for GetContent
    class GetContent
      def self.parse(http_resp)
        data = Types::GetContentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.content = (Parsers::ContentData.parse(map['content']) unless map['content'].nil?)
        data
      end
    end

    # Operation Parser for GetContentSummary
    class GetContentSummary
      def self.parse(http_resp)
        data = Types::GetContentSummaryOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.content_summary = (Parsers::ContentSummary.parse(map['contentSummary']) unless map['contentSummary'].nil?)
        data
      end
    end

    class ContentSummary
      def self.parse(map)
        data = Types::ContentSummary.new
        data.content_arn = map['contentArn']
        data.content_id = map['contentId']
        data.knowledge_base_arn = map['knowledgeBaseArn']
        data.knowledge_base_id = map['knowledgeBaseId']
        data.name = map['name']
        data.revision_id = map['revisionId']
        data.title = map['title']
        data.content_type = map['contentType']
        data.status = map['status']
        data.metadata = (Parsers::ContentMetadata.parse(map['metadata']) unless map['metadata'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for GetKnowledgeBase
    class GetKnowledgeBase
      def self.parse(http_resp)
        data = Types::GetKnowledgeBaseOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.knowledge_base = (Parsers::KnowledgeBaseData.parse(map['knowledgeBase']) unless map['knowledgeBase'].nil?)
        data
      end
    end

    # Operation Parser for GetRecommendations
    class GetRecommendations
      def self.parse(http_resp)
        data = Types::GetRecommendationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.recommendations = (Parsers::RecommendationList.parse(map['recommendations']) unless map['recommendations'].nil?)
        data.triggers = (Parsers::RecommendationTriggerList.parse(map['triggers']) unless map['triggers'].nil?)
        data
      end
    end

    class RecommendationTriggerList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecommendationTrigger.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecommendationTrigger
      def self.parse(map)
        data = Types::RecommendationTrigger.new
        data.id = map['id']
        data.type = map['type']
        data.source = map['source']
        data.data = (Parsers::RecommendationTriggerData.parse(map['data']) unless map['data'].nil?)
        data.recommendation_ids = (Parsers::RecommendationIdList.parse(map['recommendationIds']) unless map['recommendationIds'].nil?)
        return data
      end
    end

    class RecommendationIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class RecommendationTriggerData
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'query'
          value = (Parsers::QueryRecommendationTriggerData.parse(value) unless value.nil?)
          Types::RecommendationTriggerData::Query.new(value) if value
        else
          Types::RecommendationTriggerData::Unknown.new({name: key, value: value})
        end
      end
    end

    class QueryRecommendationTriggerData
      def self.parse(map)
        data = Types::QueryRecommendationTriggerData.new
        data.text = map['text']
        return data
      end
    end

    class RecommendationList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::RecommendationData.parse(value) unless value.nil?
        end
        data
      end
    end

    class RecommendationData
      def self.parse(map)
        data = Types::RecommendationData.new
        data.recommendation_id = map['recommendationId']
        data.document = (Parsers::Document.parse(map['document']) unless map['document'].nil?)
        data.relevance_score = Hearth::NumberHelper.deserialize(map['relevanceScore'])
        data.relevance_level = map['relevanceLevel']
        data.type = map['type']
        return data
      end
    end

    class Document
      def self.parse(map)
        data = Types::Document.new
        data.content_reference = (Parsers::ContentReference.parse(map['contentReference']) unless map['contentReference'].nil?)
        data.title = (Parsers::DocumentText.parse(map['title']) unless map['title'].nil?)
        data.excerpt = (Parsers::DocumentText.parse(map['excerpt']) unless map['excerpt'].nil?)
        return data
      end
    end

    class DocumentText
      def self.parse(map)
        data = Types::DocumentText.new
        data.text = map['text']
        data.highlights = (Parsers::Highlights.parse(map['highlights']) unless map['highlights'].nil?)
        return data
      end
    end

    class Highlights
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Highlight.parse(value) unless value.nil?
        end
        data
      end
    end

    class Highlight
      def self.parse(map)
        data = Types::Highlight.new
        data.begin_offset_inclusive = map['beginOffsetInclusive']
        data.end_offset_exclusive = map['endOffsetExclusive']
        return data
      end
    end

    class ContentReference
      def self.parse(map)
        data = Types::ContentReference.new
        data.knowledge_base_arn = map['knowledgeBaseArn']
        data.knowledge_base_id = map['knowledgeBaseId']
        data.content_arn = map['contentArn']
        data.content_id = map['contentId']
        return data
      end
    end

    # Operation Parser for GetSession
    class GetSession
      def self.parse(http_resp)
        data = Types::GetSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.session = (Parsers::SessionData.parse(map['session']) unless map['session'].nil?)
        data
      end
    end

    # Operation Parser for ListAssistantAssociations
    class ListAssistantAssociations
      def self.parse(http_resp)
        data = Types::ListAssistantAssociationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assistant_association_summaries = (Parsers::AssistantAssociationSummaryList.parse(map['assistantAssociationSummaries']) unless map['assistantAssociationSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AssistantAssociationSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AssistantAssociationSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssistantAssociationSummary
      def self.parse(map)
        data = Types::AssistantAssociationSummary.new
        data.assistant_association_id = map['assistantAssociationId']
        data.assistant_association_arn = map['assistantAssociationArn']
        data.assistant_id = map['assistantId']
        data.assistant_arn = map['assistantArn']
        data.association_type = map['associationType']
        data.association_data = (Parsers::AssistantAssociationOutputData.parse(map['associationData']) unless map['associationData'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListAssistants
    class ListAssistants
      def self.parse(http_resp)
        data = Types::ListAssistantsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.assistant_summaries = (Parsers::AssistantList.parse(map['assistantSummaries']) unless map['assistantSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class AssistantList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::AssistantSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class AssistantSummary
      def self.parse(map)
        data = Types::AssistantSummary.new
        data.assistant_id = map['assistantId']
        data.assistant_arn = map['assistantArn']
        data.name = map['name']
        data.type = map['type']
        data.status = map['status']
        data.description = map['description']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.server_side_encryption_configuration = (Parsers::ServerSideEncryptionConfiguration.parse(map['serverSideEncryptionConfiguration']) unless map['serverSideEncryptionConfiguration'].nil?)
        return data
      end
    end

    # Operation Parser for ListContents
    class ListContents
      def self.parse(http_resp)
        data = Types::ListContentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.content_summaries = (Parsers::ContentSummaryList.parse(map['contentSummaries']) unless map['contentSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class ContentSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ContentSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListKnowledgeBases
    class ListKnowledgeBases
      def self.parse(http_resp)
        data = Types::ListKnowledgeBasesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.knowledge_base_summaries = (Parsers::KnowledgeBaseList.parse(map['knowledgeBaseSummaries']) unless map['knowledgeBaseSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class KnowledgeBaseList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::KnowledgeBaseSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class KnowledgeBaseSummary
      def self.parse(map)
        data = Types::KnowledgeBaseSummary.new
        data.knowledge_base_id = map['knowledgeBaseId']
        data.knowledge_base_arn = map['knowledgeBaseArn']
        data.name = map['name']
        data.knowledge_base_type = map['knowledgeBaseType']
        data.status = map['status']
        data.source_configuration = (Parsers::SourceConfiguration.parse(map['sourceConfiguration']) unless map['sourceConfiguration'].nil?)
        data.rendering_configuration = (Parsers::RenderingConfiguration.parse(map['renderingConfiguration']) unless map['renderingConfiguration'].nil?)
        data.server_side_encryption_configuration = (Parsers::ServerSideEncryptionConfiguration.parse(map['serverSideEncryptionConfiguration']) unless map['serverSideEncryptionConfiguration'].nil?)
        data.description = map['description']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for NotifyRecommendationsReceived
    class NotifyRecommendationsReceived
      def self.parse(http_resp)
        data = Types::NotifyRecommendationsReceivedOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.recommendation_ids = (Parsers::RecommendationIdList.parse(map['recommendationIds']) unless map['recommendationIds'].nil?)
        data.errors = (Parsers::NotifyRecommendationsReceivedErrorList.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class NotifyRecommendationsReceivedErrorList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::NotifyRecommendationsReceivedError.parse(value) unless value.nil?
        end
        data
      end
    end

    class NotifyRecommendationsReceivedError
      def self.parse(map)
        data = Types::NotifyRecommendationsReceivedError.new
        data.recommendation_id = map['recommendationId']
        data.message = map['message'] || map['Message']
        return data
      end
    end

    # Operation Parser for QueryAssistant
    class QueryAssistant
      def self.parse(http_resp)
        data = Types::QueryAssistantOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.results = (Parsers::QueryResultsList.parse(map['results']) unless map['results'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class QueryResultsList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ResultData.parse(value) unless value.nil?
        end
        data
      end
    end

    class ResultData
      def self.parse(map)
        data = Types::ResultData.new
        data.result_id = map['resultId']
        data.document = (Parsers::Document.parse(map['document']) unless map['document'].nil?)
        data.relevance_score = Hearth::NumberHelper.deserialize(map['relevanceScore'])
        return data
      end
    end

    # Operation Parser for RemoveKnowledgeBaseTemplateUri
    class RemoveKnowledgeBaseTemplateUri
      def self.parse(http_resp)
        data = Types::RemoveKnowledgeBaseTemplateUriOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for SearchContent
    class SearchContent
      def self.parse(http_resp)
        data = Types::SearchContentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.content_summaries = (Parsers::ContentSummaryList.parse(map['contentSummaries']) unless map['contentSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for SearchSessions
    class SearchSessions
      def self.parse(http_resp)
        data = Types::SearchSessionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.session_summaries = (Parsers::SessionSummaries.parse(map['sessionSummaries']) unless map['sessionSummaries'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class SessionSummaries
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::SessionSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class SessionSummary
      def self.parse(map)
        data = Types::SessionSummary.new
        data.session_id = map['sessionId']
        data.session_arn = map['sessionArn']
        data.assistant_id = map['assistantId']
        data.assistant_arn = map['assistantArn']
        return data
      end
    end

    # Operation Parser for StartContentUpload
    class StartContentUpload
      def self.parse(http_resp)
        data = Types::StartContentUploadOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.upload_id = map['uploadId']
        data.url = map['url']
        data.url_expiry = Time.at(map['urlExpiry'].to_i) if map['urlExpiry']
        data.headers_to_include = (Parsers::Headers.parse(map['headersToInclude']) unless map['headersToInclude'].nil?)
        data
      end
    end

    class Headers
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
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

    # Error Parser for TooManyTagsException
    class TooManyTagsException
      def self.parse(http_resp)
        data = Types::TooManyTagsException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data.resource_name = map['resourceName']
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

    # Operation Parser for UpdateContent
    class UpdateContent
      def self.parse(http_resp)
        data = Types::UpdateContentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.content = (Parsers::ContentData.parse(map['content']) unless map['content'].nil?)
        data
      end
    end

    # Error Parser for PreconditionFailedException
    class PreconditionFailedException
      def self.parse(http_resp)
        data = Types::PreconditionFailedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for UpdateKnowledgeBaseTemplateUri
    class UpdateKnowledgeBaseTemplateUri
      def self.parse(http_resp)
        data = Types::UpdateKnowledgeBaseTemplateUriOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.knowledge_base = (Parsers::KnowledgeBaseData.parse(map['knowledgeBase']) unless map['knowledgeBase'].nil?)
        data
      end
    end
  end
end
