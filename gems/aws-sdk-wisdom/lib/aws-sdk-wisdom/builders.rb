# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Wisdom
  module Builders

    # Operation Builder for CreateAssistant
    class CreateAssistant
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/assistants')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['serverSideEncryptionConfiguration'] = Builders::ServerSideEncryptionConfiguration.build(input[:server_side_encryption_configuration]) unless input[:server_side_encryption_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ServerSideEncryptionConfiguration
    class ServerSideEncryptionConfiguration
      def self.build(input)
        data = {}
        data['kmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateAssistantAssociation
    class CreateAssistantAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:assistant_id].to_s.empty?
          raise ArgumentError, "HTTP label :assistant_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assistants/%<assistantId>s/associations',
            assistantId: Hearth::HTTP.uri_escape(input[:assistant_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['associationType'] = input[:association_type] unless input[:association_type].nil?
        data['association'] = Builders::AssistantAssociationInputData.build(input[:association]) unless input[:association].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for AssistantAssociationInputData
    class AssistantAssociationInputData
      def self.build(input)
        data = {}
        case input
        when Types::AssistantAssociationInputData::KnowledgeBaseId
          data['knowledgeBaseId'] = input
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AssistantAssociationInputData"
        end

        data
      end
    end

    # Operation Builder for CreateContent
    class CreateContent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:knowledge_base_id].to_s.empty?
          raise ArgumentError, "HTTP label :knowledge_base_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/knowledgeBases/%<knowledgeBaseId>s/contents',
            knowledgeBaseId: Hearth::HTTP.uri_escape(input[:knowledge_base_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['title'] = input[:title] unless input[:title].nil?
        data['overrideLinkOutUri'] = input[:override_link_out_uri] unless input[:override_link_out_uri].nil?
        data['metadata'] = Builders::ContentMetadata.build(input[:metadata]) unless input[:metadata].nil?
        data['uploadId'] = input[:upload_id] unless input[:upload_id].nil?
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for ContentMetadata
    class ContentMetadata
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Builder for CreateKnowledgeBase
    class CreateKnowledgeBase
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/knowledgeBases')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['knowledgeBaseType'] = input[:knowledge_base_type] unless input[:knowledge_base_type].nil?
        data['sourceConfiguration'] = Builders::SourceConfiguration.build(input[:source_configuration]) unless input[:source_configuration].nil?
        data['renderingConfiguration'] = Builders::RenderingConfiguration.build(input[:rendering_configuration]) unless input[:rendering_configuration].nil?
        data['serverSideEncryptionConfiguration'] = Builders::ServerSideEncryptionConfiguration.build(input[:server_side_encryption_configuration]) unless input[:server_side_encryption_configuration].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for RenderingConfiguration
    class RenderingConfiguration
      def self.build(input)
        data = {}
        data['templateUri'] = input[:template_uri] unless input[:template_uri].nil?
        data
      end
    end

    # Structure Builder for SourceConfiguration
    class SourceConfiguration
      def self.build(input)
        data = {}
        case input
        when Types::SourceConfiguration::AppIntegrations
          data['appIntegrations'] = (Builders::AppIntegrationsConfiguration.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::SourceConfiguration"
        end

        data
      end
    end

    # Structure Builder for AppIntegrationsConfiguration
    class AppIntegrationsConfiguration
      def self.build(input)
        data = {}
        data['appIntegrationArn'] = input[:app_integration_arn] unless input[:app_integration_arn].nil?
        data['objectFields'] = Builders::ObjectFieldsList.build(input[:object_fields]) unless input[:object_fields].nil?
        data
      end
    end

    # List Builder for ObjectFieldsList
    class ObjectFieldsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateSession
    class CreateSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:assistant_id].to_s.empty?
          raise ArgumentError, "HTTP label :assistant_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assistants/%<assistantId>s/sessions',
            assistantId: Hearth::HTTP.uri_escape(input[:assistant_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['clientToken'] = input[:client_token] unless input[:client_token].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAssistant
    class DeleteAssistant
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:assistant_id].to_s.empty?
          raise ArgumentError, "HTTP label :assistant_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assistants/%<assistantId>s',
            assistantId: Hearth::HTTP.uri_escape(input[:assistant_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteAssistantAssociation
    class DeleteAssistantAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:assistant_association_id].to_s.empty?
          raise ArgumentError, "HTTP label :assistant_association_id cannot be nil or empty."
        end
        if input[:assistant_id].to_s.empty?
          raise ArgumentError, "HTTP label :assistant_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assistants/%<assistantId>s/associations/%<assistantAssociationId>s',
            assistantAssociationId: Hearth::HTTP.uri_escape(input[:assistant_association_id].to_s),
            assistantId: Hearth::HTTP.uri_escape(input[:assistant_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteContent
    class DeleteContent
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:knowledge_base_id].to_s.empty?
          raise ArgumentError, "HTTP label :knowledge_base_id cannot be nil or empty."
        end
        if input[:content_id].to_s.empty?
          raise ArgumentError, "HTTP label :content_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/knowledgeBases/%<knowledgeBaseId>s/contents/%<contentId>s',
            knowledgeBaseId: Hearth::HTTP.uri_escape(input[:knowledge_base_id].to_s),
            contentId: Hearth::HTTP.uri_escape(input[:content_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for DeleteKnowledgeBase
    class DeleteKnowledgeBase
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:knowledge_base_id].to_s.empty?
          raise ArgumentError, "HTTP label :knowledge_base_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/knowledgeBases/%<knowledgeBaseId>s',
            knowledgeBaseId: Hearth::HTTP.uri_escape(input[:knowledge_base_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAssistant
    class GetAssistant
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:assistant_id].to_s.empty?
          raise ArgumentError, "HTTP label :assistant_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assistants/%<assistantId>s',
            assistantId: Hearth::HTTP.uri_escape(input[:assistant_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetAssistantAssociation
    class GetAssistantAssociation
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:assistant_association_id].to_s.empty?
          raise ArgumentError, "HTTP label :assistant_association_id cannot be nil or empty."
        end
        if input[:assistant_id].to_s.empty?
          raise ArgumentError, "HTTP label :assistant_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assistants/%<assistantId>s/associations/%<assistantAssociationId>s',
            assistantAssociationId: Hearth::HTTP.uri_escape(input[:assistant_association_id].to_s),
            assistantId: Hearth::HTTP.uri_escape(input[:assistant_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetContent
    class GetContent
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:content_id].to_s.empty?
          raise ArgumentError, "HTTP label :content_id cannot be nil or empty."
        end
        if input[:knowledge_base_id].to_s.empty?
          raise ArgumentError, "HTTP label :knowledge_base_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/knowledgeBases/%<knowledgeBaseId>s/contents/%<contentId>s',
            contentId: Hearth::HTTP.uri_escape(input[:content_id].to_s),
            knowledgeBaseId: Hearth::HTTP.uri_escape(input[:knowledge_base_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetContentSummary
    class GetContentSummary
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:content_id].to_s.empty?
          raise ArgumentError, "HTTP label :content_id cannot be nil or empty."
        end
        if input[:knowledge_base_id].to_s.empty?
          raise ArgumentError, "HTTP label :knowledge_base_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/knowledgeBases/%<knowledgeBaseId>s/contents/%<contentId>s/summary',
            contentId: Hearth::HTTP.uri_escape(input[:content_id].to_s),
            knowledgeBaseId: Hearth::HTTP.uri_escape(input[:knowledge_base_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetKnowledgeBase
    class GetKnowledgeBase
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:knowledge_base_id].to_s.empty?
          raise ArgumentError, "HTTP label :knowledge_base_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/knowledgeBases/%<knowledgeBaseId>s',
            knowledgeBaseId: Hearth::HTTP.uri_escape(input[:knowledge_base_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetRecommendations
    class GetRecommendations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:assistant_id].to_s.empty?
          raise ArgumentError, "HTTP label :assistant_id cannot be nil or empty."
        end
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assistants/%<assistantId>s/sessions/%<sessionId>s/recommendations',
            assistantId: Hearth::HTTP.uri_escape(input[:assistant_id].to_s),
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['waitTimeSeconds'] = input[:wait_time_seconds].to_s unless input[:wait_time_seconds].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetSession
    class GetSession
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:assistant_id].to_s.empty?
          raise ArgumentError, "HTTP label :assistant_id cannot be nil or empty."
        end
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assistants/%<assistantId>s/sessions/%<sessionId>s',
            assistantId: Hearth::HTTP.uri_escape(input[:assistant_id].to_s),
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAssistantAssociations
    class ListAssistantAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:assistant_id].to_s.empty?
          raise ArgumentError, "HTTP label :assistant_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assistants/%<assistantId>s/associations',
            assistantId: Hearth::HTTP.uri_escape(input[:assistant_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListAssistants
    class ListAssistants
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/assistants')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListContents
    class ListContents
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:knowledge_base_id].to_s.empty?
          raise ArgumentError, "HTTP label :knowledge_base_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/knowledgeBases/%<knowledgeBaseId>s/contents',
            knowledgeBaseId: Hearth::HTTP.uri_escape(input[:knowledge_base_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListKnowledgeBases
    class ListKnowledgeBases
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/knowledgeBases')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for NotifyRecommendationsReceived
    class NotifyRecommendationsReceived
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:assistant_id].to_s.empty?
          raise ArgumentError, "HTTP label :assistant_id cannot be nil or empty."
        end
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assistants/%<assistantId>s/sessions/%<sessionId>s/recommendations/notify',
            assistantId: Hearth::HTTP.uri_escape(input[:assistant_id].to_s),
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['recommendationIds'] = Builders::RecommendationIdList.build(input[:recommendation_ids]) unless input[:recommendation_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RecommendationIdList
    class RecommendationIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for QueryAssistant
    class QueryAssistant
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:assistant_id].to_s.empty?
          raise ArgumentError, "HTTP label :assistant_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assistants/%<assistantId>s/query',
            assistantId: Hearth::HTTP.uri_escape(input[:assistant_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['queryText'] = input[:query_text] unless input[:query_text].nil?
        data['nextToken'] = input[:next_token] unless input[:next_token].nil?
        data['maxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RemoveKnowledgeBaseTemplateUri
    class RemoveKnowledgeBaseTemplateUri
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:knowledge_base_id].to_s.empty?
          raise ArgumentError, "HTTP label :knowledge_base_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/knowledgeBases/%<knowledgeBaseId>s/templateUri',
            knowledgeBaseId: Hearth::HTTP.uri_escape(input[:knowledge_base_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for SearchContent
    class SearchContent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:knowledge_base_id].to_s.empty?
          raise ArgumentError, "HTTP label :knowledge_base_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/knowledgeBases/%<knowledgeBaseId>s/search',
            knowledgeBaseId: Hearth::HTTP.uri_escape(input[:knowledge_base_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['searchExpression'] = Builders::SearchExpression.build(input[:search_expression]) unless input[:search_expression].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SearchExpression
    class SearchExpression
      def self.build(input)
        data = {}
        data['filters'] = Builders::FilterList.build(input[:filters]) unless input[:filters].nil?
        data
      end
    end

    # List Builder for FilterList
    class FilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Filter.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Filter
    class Filter
      def self.build(input)
        data = {}
        data['field'] = input[:field] unless input[:field].nil?
        data['operator'] = input[:operator] unless input[:operator].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for SearchSessions
    class SearchSessions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:assistant_id].to_s.empty?
          raise ArgumentError, "HTTP label :assistant_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/assistants/%<assistantId>s/searchSessions',
            assistantId: Hearth::HTTP.uri_escape(input[:assistant_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['searchExpression'] = Builders::SearchExpression.build(input[:search_expression]) unless input[:search_expression].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartContentUpload
    class StartContentUpload
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:knowledge_base_id].to_s.empty?
          raise ArgumentError, "HTTP label :knowledge_base_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/knowledgeBases/%<knowledgeBaseId>s/upload',
            knowledgeBaseId: Hearth::HTTP.uri_escape(input[:knowledge_base_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['contentType'] = input[:content_type] unless input[:content_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateContent
    class UpdateContent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:knowledge_base_id].to_s.empty?
          raise ArgumentError, "HTTP label :knowledge_base_id cannot be nil or empty."
        end
        if input[:content_id].to_s.empty?
          raise ArgumentError, "HTTP label :content_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/knowledgeBases/%<knowledgeBaseId>s/contents/%<contentId>s',
            knowledgeBaseId: Hearth::HTTP.uri_escape(input[:knowledge_base_id].to_s),
            contentId: Hearth::HTTP.uri_escape(input[:content_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['revisionId'] = input[:revision_id] unless input[:revision_id].nil?
        data['title'] = input[:title] unless input[:title].nil?
        data['overrideLinkOutUri'] = input[:override_link_out_uri] unless input[:override_link_out_uri].nil?
        data['removeOverrideLinkOutUri'] = input[:remove_override_link_out_uri] unless input[:remove_override_link_out_uri].nil?
        data['metadata'] = Builders::ContentMetadata.build(input[:metadata]) unless input[:metadata].nil?
        data['uploadId'] = input[:upload_id] unless input[:upload_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateKnowledgeBaseTemplateUri
    class UpdateKnowledgeBaseTemplateUri
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:knowledge_base_id].to_s.empty?
          raise ArgumentError, "HTTP label :knowledge_base_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/knowledgeBases/%<knowledgeBaseId>s/templateUri',
            knowledgeBaseId: Hearth::HTTP.uri_escape(input[:knowledge_base_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['templateUri'] = input[:template_uri] unless input[:template_uri].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
