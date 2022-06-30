# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Wisdom
  module Stubs

    # Operation Stubber for CreateAssistant
    class CreateAssistant
      def self.default(visited=[])
        {
          assistant: Stubs::AssistantData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assistant'] = Stubs::AssistantData.stub(stub[:assistant]) unless stub[:assistant].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AssistantData
    class AssistantData
      def self.default(visited=[])
        return nil if visited.include?('AssistantData')
        visited = visited + ['AssistantData']
        {
          assistant_id: 'assistant_id',
          assistant_arn: 'assistant_arn',
          name: 'name',
          type: 'type',
          status: 'status',
          description: 'description',
          tags: Stubs::Tags.default(visited),
          server_side_encryption_configuration: Stubs::ServerSideEncryptionConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssistantData.new
        data = {}
        data['assistantId'] = stub[:assistant_id] unless stub[:assistant_id].nil?
        data['assistantArn'] = stub[:assistant_arn] unless stub[:assistant_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['serverSideEncryptionConfiguration'] = Stubs::ServerSideEncryptionConfiguration.stub(stub[:server_side_encryption_configuration]) unless stub[:server_side_encryption_configuration].nil?
        data
      end
    end

    # Structure Stubber for ServerSideEncryptionConfiguration
    class ServerSideEncryptionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ServerSideEncryptionConfiguration')
        visited = visited + ['ServerSideEncryptionConfiguration']
        {
          kms_key_id: 'kms_key_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerSideEncryptionConfiguration.new
        data = {}
        data['kmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
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

    # Operation Stubber for CreateAssistantAssociation
    class CreateAssistantAssociation
      def self.default(visited=[])
        {
          assistant_association: Stubs::AssistantAssociationData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assistantAssociation'] = Stubs::AssistantAssociationData.stub(stub[:assistant_association]) unless stub[:assistant_association].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for AssistantAssociationData
    class AssistantAssociationData
      def self.default(visited=[])
        return nil if visited.include?('AssistantAssociationData')
        visited = visited + ['AssistantAssociationData']
        {
          assistant_association_id: 'assistant_association_id',
          assistant_association_arn: 'assistant_association_arn',
          assistant_id: 'assistant_id',
          assistant_arn: 'assistant_arn',
          association_type: 'association_type',
          association_data: Stubs::AssistantAssociationOutputData.default(visited),
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssistantAssociationData.new
        data = {}
        data['assistantAssociationId'] = stub[:assistant_association_id] unless stub[:assistant_association_id].nil?
        data['assistantAssociationArn'] = stub[:assistant_association_arn] unless stub[:assistant_association_arn].nil?
        data['assistantId'] = stub[:assistant_id] unless stub[:assistant_id].nil?
        data['assistantArn'] = stub[:assistant_arn] unless stub[:assistant_arn].nil?
        data['associationType'] = stub[:association_type] unless stub[:association_type].nil?
        data['associationData'] = Stubs::AssistantAssociationOutputData.stub(stub[:association_data]) unless stub[:association_data].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Union Stubber for AssistantAssociationOutputData
    class AssistantAssociationOutputData
      def self.default(visited=[])
        return nil if visited.include?('AssistantAssociationOutputData')
        visited = visited + ['AssistantAssociationOutputData']
        {
          knowledge_base_association: Stubs::KnowledgeBaseAssociationData.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::AssistantAssociationOutputData::KnowledgeBaseAssociation
          data['knowledgeBaseAssociation'] = (Stubs::KnowledgeBaseAssociationData.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::AssistantAssociationOutputData"
        end

        data
      end
    end

    # Structure Stubber for KnowledgeBaseAssociationData
    class KnowledgeBaseAssociationData
      def self.default(visited=[])
        return nil if visited.include?('KnowledgeBaseAssociationData')
        visited = visited + ['KnowledgeBaseAssociationData']
        {
          knowledge_base_id: 'knowledge_base_id',
          knowledge_base_arn: 'knowledge_base_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::KnowledgeBaseAssociationData.new
        data = {}
        data['knowledgeBaseId'] = stub[:knowledge_base_id] unless stub[:knowledge_base_id].nil?
        data['knowledgeBaseArn'] = stub[:knowledge_base_arn] unless stub[:knowledge_base_arn].nil?
        data
      end
    end

    # Operation Stubber for CreateContent
    class CreateContent
      def self.default(visited=[])
        {
          content: Stubs::ContentData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['content'] = Stubs::ContentData.stub(stub[:content]) unless stub[:content].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ContentData
    class ContentData
      def self.default(visited=[])
        return nil if visited.include?('ContentData')
        visited = visited + ['ContentData']
        {
          content_arn: 'content_arn',
          content_id: 'content_id',
          knowledge_base_arn: 'knowledge_base_arn',
          knowledge_base_id: 'knowledge_base_id',
          name: 'name',
          revision_id: 'revision_id',
          title: 'title',
          content_type: 'content_type',
          status: 'status',
          metadata: Stubs::ContentMetadata.default(visited),
          tags: Stubs::Tags.default(visited),
          link_out_uri: 'link_out_uri',
          url: 'url',
          url_expiry: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ContentData.new
        data = {}
        data['contentArn'] = stub[:content_arn] unless stub[:content_arn].nil?
        data['contentId'] = stub[:content_id] unless stub[:content_id].nil?
        data['knowledgeBaseArn'] = stub[:knowledge_base_arn] unless stub[:knowledge_base_arn].nil?
        data['knowledgeBaseId'] = stub[:knowledge_base_id] unless stub[:knowledge_base_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['title'] = stub[:title] unless stub[:title].nil?
        data['contentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['metadata'] = Stubs::ContentMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['linkOutUri'] = stub[:link_out_uri] unless stub[:link_out_uri].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data['urlExpiry'] = Hearth::TimeHelper.to_epoch_seconds(stub[:url_expiry]).to_i unless stub[:url_expiry].nil?
        data
      end
    end

    # Map Stubber for ContentMetadata
    class ContentMetadata
      def self.default(visited=[])
        return nil if visited.include?('ContentMetadata')
        visited = visited + ['ContentMetadata']
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

    # Operation Stubber for CreateKnowledgeBase
    class CreateKnowledgeBase
      def self.default(visited=[])
        {
          knowledge_base: Stubs::KnowledgeBaseData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['knowledgeBase'] = Stubs::KnowledgeBaseData.stub(stub[:knowledge_base]) unless stub[:knowledge_base].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for KnowledgeBaseData
    class KnowledgeBaseData
      def self.default(visited=[])
        return nil if visited.include?('KnowledgeBaseData')
        visited = visited + ['KnowledgeBaseData']
        {
          knowledge_base_id: 'knowledge_base_id',
          knowledge_base_arn: 'knowledge_base_arn',
          name: 'name',
          knowledge_base_type: 'knowledge_base_type',
          status: 'status',
          last_content_modification_time: Time.now,
          source_configuration: Stubs::SourceConfiguration.default(visited),
          rendering_configuration: Stubs::RenderingConfiguration.default(visited),
          server_side_encryption_configuration: Stubs::ServerSideEncryptionConfiguration.default(visited),
          description: 'description',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::KnowledgeBaseData.new
        data = {}
        data['knowledgeBaseId'] = stub[:knowledge_base_id] unless stub[:knowledge_base_id].nil?
        data['knowledgeBaseArn'] = stub[:knowledge_base_arn] unless stub[:knowledge_base_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['knowledgeBaseType'] = stub[:knowledge_base_type] unless stub[:knowledge_base_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['lastContentModificationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_content_modification_time]).to_i unless stub[:last_content_modification_time].nil?
        data['sourceConfiguration'] = Stubs::SourceConfiguration.stub(stub[:source_configuration]) unless stub[:source_configuration].nil?
        data['renderingConfiguration'] = Stubs::RenderingConfiguration.stub(stub[:rendering_configuration]) unless stub[:rendering_configuration].nil?
        data['serverSideEncryptionConfiguration'] = Stubs::ServerSideEncryptionConfiguration.stub(stub[:server_side_encryption_configuration]) unless stub[:server_side_encryption_configuration].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Structure Stubber for RenderingConfiguration
    class RenderingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('RenderingConfiguration')
        visited = visited + ['RenderingConfiguration']
        {
          template_uri: 'template_uri',
        }
      end

      def self.stub(stub)
        stub ||= Types::RenderingConfiguration.new
        data = {}
        data['templateUri'] = stub[:template_uri] unless stub[:template_uri].nil?
        data
      end
    end

    # Union Stubber for SourceConfiguration
    class SourceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SourceConfiguration')
        visited = visited + ['SourceConfiguration']
        {
          app_integrations: Stubs::AppIntegrationsConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::SourceConfiguration::AppIntegrations
          data['appIntegrations'] = (Stubs::AppIntegrationsConfiguration.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::SourceConfiguration"
        end

        data
      end
    end

    # Structure Stubber for AppIntegrationsConfiguration
    class AppIntegrationsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AppIntegrationsConfiguration')
        visited = visited + ['AppIntegrationsConfiguration']
        {
          app_integration_arn: 'app_integration_arn',
          object_fields: Stubs::ObjectFieldsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AppIntegrationsConfiguration.new
        data = {}
        data['appIntegrationArn'] = stub[:app_integration_arn] unless stub[:app_integration_arn].nil?
        data['objectFields'] = Stubs::ObjectFieldsList.stub(stub[:object_fields]) unless stub[:object_fields].nil?
        data
      end
    end

    # List Stubber for ObjectFieldsList
    class ObjectFieldsList
      def self.default(visited=[])
        return nil if visited.include?('ObjectFieldsList')
        visited = visited + ['ObjectFieldsList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateSession
    class CreateSession
      def self.default(visited=[])
        {
          session: Stubs::SessionData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['session'] = Stubs::SessionData.stub(stub[:session]) unless stub[:session].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for SessionData
    class SessionData
      def self.default(visited=[])
        return nil if visited.include?('SessionData')
        visited = visited + ['SessionData']
        {
          session_arn: 'session_arn',
          session_id: 'session_id',
          name: 'name',
          description: 'description',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SessionData.new
        data = {}
        data['sessionArn'] = stub[:session_arn] unless stub[:session_arn].nil?
        data['sessionId'] = stub[:session_id] unless stub[:session_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for DeleteAssistant
    class DeleteAssistant
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteAssistantAssociation
    class DeleteAssistantAssociation
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteContent
    class DeleteContent
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for DeleteKnowledgeBase
    class DeleteKnowledgeBase
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for GetAssistant
    class GetAssistant
      def self.default(visited=[])
        {
          assistant: Stubs::AssistantData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assistant'] = Stubs::AssistantData.stub(stub[:assistant]) unless stub[:assistant].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetAssistantAssociation
    class GetAssistantAssociation
      def self.default(visited=[])
        {
          assistant_association: Stubs::AssistantAssociationData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assistantAssociation'] = Stubs::AssistantAssociationData.stub(stub[:assistant_association]) unless stub[:assistant_association].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetContent
    class GetContent
      def self.default(visited=[])
        {
          content: Stubs::ContentData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['content'] = Stubs::ContentData.stub(stub[:content]) unless stub[:content].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetContentSummary
    class GetContentSummary
      def self.default(visited=[])
        {
          content_summary: Stubs::ContentSummary.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['contentSummary'] = Stubs::ContentSummary.stub(stub[:content_summary]) unless stub[:content_summary].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for ContentSummary
    class ContentSummary
      def self.default(visited=[])
        return nil if visited.include?('ContentSummary')
        visited = visited + ['ContentSummary']
        {
          content_arn: 'content_arn',
          content_id: 'content_id',
          knowledge_base_arn: 'knowledge_base_arn',
          knowledge_base_id: 'knowledge_base_id',
          name: 'name',
          revision_id: 'revision_id',
          title: 'title',
          content_type: 'content_type',
          status: 'status',
          metadata: Stubs::ContentMetadata.default(visited),
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ContentSummary.new
        data = {}
        data['contentArn'] = stub[:content_arn] unless stub[:content_arn].nil?
        data['contentId'] = stub[:content_id] unless stub[:content_id].nil?
        data['knowledgeBaseArn'] = stub[:knowledge_base_arn] unless stub[:knowledge_base_arn].nil?
        data['knowledgeBaseId'] = stub[:knowledge_base_id] unless stub[:knowledge_base_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['revisionId'] = stub[:revision_id] unless stub[:revision_id].nil?
        data['title'] = stub[:title] unless stub[:title].nil?
        data['contentType'] = stub[:content_type] unless stub[:content_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['metadata'] = Stubs::ContentMetadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for GetKnowledgeBase
    class GetKnowledgeBase
      def self.default(visited=[])
        {
          knowledge_base: Stubs::KnowledgeBaseData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['knowledgeBase'] = Stubs::KnowledgeBaseData.stub(stub[:knowledge_base]) unless stub[:knowledge_base].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetRecommendations
    class GetRecommendations
      def self.default(visited=[])
        {
          recommendations: Stubs::RecommendationList.default(visited),
          triggers: Stubs::RecommendationTriggerList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['recommendations'] = Stubs::RecommendationList.stub(stub[:recommendations]) unless stub[:recommendations].nil?
        data['triggers'] = Stubs::RecommendationTriggerList.stub(stub[:triggers]) unless stub[:triggers].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for RecommendationTriggerList
    class RecommendationTriggerList
      def self.default(visited=[])
        return nil if visited.include?('RecommendationTriggerList')
        visited = visited + ['RecommendationTriggerList']
        [
          Stubs::RecommendationTrigger.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecommendationTrigger.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecommendationTrigger
    class RecommendationTrigger
      def self.default(visited=[])
        return nil if visited.include?('RecommendationTrigger')
        visited = visited + ['RecommendationTrigger']
        {
          id: 'id',
          type: 'type',
          source: 'source',
          data: Stubs::RecommendationTriggerData.default(visited),
          recommendation_ids: Stubs::RecommendationIdList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationTrigger.new
        data = {}
        data['id'] = stub[:id] unless stub[:id].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['source'] = stub[:source] unless stub[:source].nil?
        data['data'] = Stubs::RecommendationTriggerData.stub(stub[:data]) unless stub[:data].nil?
        data['recommendationIds'] = Stubs::RecommendationIdList.stub(stub[:recommendation_ids]) unless stub[:recommendation_ids].nil?
        data
      end
    end

    # List Stubber for RecommendationIdList
    class RecommendationIdList
      def self.default(visited=[])
        return nil if visited.include?('RecommendationIdList')
        visited = visited + ['RecommendationIdList']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Union Stubber for RecommendationTriggerData
    class RecommendationTriggerData
      def self.default(visited=[])
        return nil if visited.include?('RecommendationTriggerData')
        visited = visited + ['RecommendationTriggerData']
        {
          query: Stubs::QueryRecommendationTriggerData.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::RecommendationTriggerData::Query
          data['query'] = (Stubs::QueryRecommendationTriggerData.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::RecommendationTriggerData"
        end

        data
      end
    end

    # Structure Stubber for QueryRecommendationTriggerData
    class QueryRecommendationTriggerData
      def self.default(visited=[])
        return nil if visited.include?('QueryRecommendationTriggerData')
        visited = visited + ['QueryRecommendationTriggerData']
        {
          text: 'text',
        }
      end

      def self.stub(stub)
        stub ||= Types::QueryRecommendationTriggerData.new
        data = {}
        data['text'] = stub[:text] unless stub[:text].nil?
        data
      end
    end

    # List Stubber for RecommendationList
    class RecommendationList
      def self.default(visited=[])
        return nil if visited.include?('RecommendationList')
        visited = visited + ['RecommendationList']
        [
          Stubs::RecommendationData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::RecommendationData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for RecommendationData
    class RecommendationData
      def self.default(visited=[])
        return nil if visited.include?('RecommendationData')
        visited = visited + ['RecommendationData']
        {
          recommendation_id: 'recommendation_id',
          document: Stubs::Document.default(visited),
          relevance_score: 1.0,
          relevance_level: 'relevance_level',
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::RecommendationData.new
        data = {}
        data['recommendationId'] = stub[:recommendation_id] unless stub[:recommendation_id].nil?
        data['document'] = Stubs::Document.stub(stub[:document]) unless stub[:document].nil?
        data['relevanceScore'] = Hearth::NumberHelper.serialize(stub[:relevance_score])
        data['relevanceLevel'] = stub[:relevance_level] unless stub[:relevance_level].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # Structure Stubber for Document
    class Document
      def self.default(visited=[])
        return nil if visited.include?('Document')
        visited = visited + ['Document']
        {
          content_reference: Stubs::ContentReference.default(visited),
          title: Stubs::DocumentText.default(visited),
          excerpt: Stubs::DocumentText.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Document.new
        data = {}
        data['contentReference'] = Stubs::ContentReference.stub(stub[:content_reference]) unless stub[:content_reference].nil?
        data['title'] = Stubs::DocumentText.stub(stub[:title]) unless stub[:title].nil?
        data['excerpt'] = Stubs::DocumentText.stub(stub[:excerpt]) unless stub[:excerpt].nil?
        data
      end
    end

    # Structure Stubber for DocumentText
    class DocumentText
      def self.default(visited=[])
        return nil if visited.include?('DocumentText')
        visited = visited + ['DocumentText']
        {
          text: 'text',
          highlights: Stubs::Highlights.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentText.new
        data = {}
        data['text'] = stub[:text] unless stub[:text].nil?
        data['highlights'] = Stubs::Highlights.stub(stub[:highlights]) unless stub[:highlights].nil?
        data
      end
    end

    # List Stubber for Highlights
    class Highlights
      def self.default(visited=[])
        return nil if visited.include?('Highlights')
        visited = visited + ['Highlights']
        [
          Stubs::Highlight.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Highlight.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Highlight
    class Highlight
      def self.default(visited=[])
        return nil if visited.include?('Highlight')
        visited = visited + ['Highlight']
        {
          begin_offset_inclusive: 1,
          end_offset_exclusive: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::Highlight.new
        data = {}
        data['beginOffsetInclusive'] = stub[:begin_offset_inclusive] unless stub[:begin_offset_inclusive].nil?
        data['endOffsetExclusive'] = stub[:end_offset_exclusive] unless stub[:end_offset_exclusive].nil?
        data
      end
    end

    # Structure Stubber for ContentReference
    class ContentReference
      def self.default(visited=[])
        return nil if visited.include?('ContentReference')
        visited = visited + ['ContentReference']
        {
          knowledge_base_arn: 'knowledge_base_arn',
          knowledge_base_id: 'knowledge_base_id',
          content_arn: 'content_arn',
          content_id: 'content_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::ContentReference.new
        data = {}
        data['knowledgeBaseArn'] = stub[:knowledge_base_arn] unless stub[:knowledge_base_arn].nil?
        data['knowledgeBaseId'] = stub[:knowledge_base_id] unless stub[:knowledge_base_id].nil?
        data['contentArn'] = stub[:content_arn] unless stub[:content_arn].nil?
        data['contentId'] = stub[:content_id] unless stub[:content_id].nil?
        data
      end
    end

    # Operation Stubber for GetSession
    class GetSession
      def self.default(visited=[])
        {
          session: Stubs::SessionData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['session'] = Stubs::SessionData.stub(stub[:session]) unless stub[:session].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListAssistantAssociations
    class ListAssistantAssociations
      def self.default(visited=[])
        {
          assistant_association_summaries: Stubs::AssistantAssociationSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assistantAssociationSummaries'] = Stubs::AssistantAssociationSummaryList.stub(stub[:assistant_association_summaries]) unless stub[:assistant_association_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssistantAssociationSummaryList
    class AssistantAssociationSummaryList
      def self.default(visited=[])
        return nil if visited.include?('AssistantAssociationSummaryList')
        visited = visited + ['AssistantAssociationSummaryList']
        [
          Stubs::AssistantAssociationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AssistantAssociationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssistantAssociationSummary
    class AssistantAssociationSummary
      def self.default(visited=[])
        return nil if visited.include?('AssistantAssociationSummary')
        visited = visited + ['AssistantAssociationSummary']
        {
          assistant_association_id: 'assistant_association_id',
          assistant_association_arn: 'assistant_association_arn',
          assistant_id: 'assistant_id',
          assistant_arn: 'assistant_arn',
          association_type: 'association_type',
          association_data: Stubs::AssistantAssociationOutputData.default(visited),
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssistantAssociationSummary.new
        data = {}
        data['assistantAssociationId'] = stub[:assistant_association_id] unless stub[:assistant_association_id].nil?
        data['assistantAssociationArn'] = stub[:assistant_association_arn] unless stub[:assistant_association_arn].nil?
        data['assistantId'] = stub[:assistant_id] unless stub[:assistant_id].nil?
        data['assistantArn'] = stub[:assistant_arn] unless stub[:assistant_arn].nil?
        data['associationType'] = stub[:association_type] unless stub[:association_type].nil?
        data['associationData'] = Stubs::AssistantAssociationOutputData.stub(stub[:association_data]) unless stub[:association_data].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListAssistants
    class ListAssistants
      def self.default(visited=[])
        {
          assistant_summaries: Stubs::AssistantList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['assistantSummaries'] = Stubs::AssistantList.stub(stub[:assistant_summaries]) unless stub[:assistant_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for AssistantList
    class AssistantList
      def self.default(visited=[])
        return nil if visited.include?('AssistantList')
        visited = visited + ['AssistantList']
        [
          Stubs::AssistantSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AssistantSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AssistantSummary
    class AssistantSummary
      def self.default(visited=[])
        return nil if visited.include?('AssistantSummary')
        visited = visited + ['AssistantSummary']
        {
          assistant_id: 'assistant_id',
          assistant_arn: 'assistant_arn',
          name: 'name',
          type: 'type',
          status: 'status',
          description: 'description',
          tags: Stubs::Tags.default(visited),
          server_side_encryption_configuration: Stubs::ServerSideEncryptionConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AssistantSummary.new
        data = {}
        data['assistantId'] = stub[:assistant_id] unless stub[:assistant_id].nil?
        data['assistantArn'] = stub[:assistant_arn] unless stub[:assistant_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['serverSideEncryptionConfiguration'] = Stubs::ServerSideEncryptionConfiguration.stub(stub[:server_side_encryption_configuration]) unless stub[:server_side_encryption_configuration].nil?
        data
      end
    end

    # Operation Stubber for ListContents
    class ListContents
      def self.default(visited=[])
        {
          content_summaries: Stubs::ContentSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['contentSummaries'] = Stubs::ContentSummaryList.stub(stub[:content_summaries]) unless stub[:content_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ContentSummaryList
    class ContentSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ContentSummaryList')
        visited = visited + ['ContentSummaryList']
        [
          Stubs::ContentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ContentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListKnowledgeBases
    class ListKnowledgeBases
      def self.default(visited=[])
        {
          knowledge_base_summaries: Stubs::KnowledgeBaseList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['knowledgeBaseSummaries'] = Stubs::KnowledgeBaseList.stub(stub[:knowledge_base_summaries]) unless stub[:knowledge_base_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for KnowledgeBaseList
    class KnowledgeBaseList
      def self.default(visited=[])
        return nil if visited.include?('KnowledgeBaseList')
        visited = visited + ['KnowledgeBaseList']
        [
          Stubs::KnowledgeBaseSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::KnowledgeBaseSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for KnowledgeBaseSummary
    class KnowledgeBaseSummary
      def self.default(visited=[])
        return nil if visited.include?('KnowledgeBaseSummary')
        visited = visited + ['KnowledgeBaseSummary']
        {
          knowledge_base_id: 'knowledge_base_id',
          knowledge_base_arn: 'knowledge_base_arn',
          name: 'name',
          knowledge_base_type: 'knowledge_base_type',
          status: 'status',
          source_configuration: Stubs::SourceConfiguration.default(visited),
          rendering_configuration: Stubs::RenderingConfiguration.default(visited),
          server_side_encryption_configuration: Stubs::ServerSideEncryptionConfiguration.default(visited),
          description: 'description',
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::KnowledgeBaseSummary.new
        data = {}
        data['knowledgeBaseId'] = stub[:knowledge_base_id] unless stub[:knowledge_base_id].nil?
        data['knowledgeBaseArn'] = stub[:knowledge_base_arn] unless stub[:knowledge_base_arn].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['knowledgeBaseType'] = stub[:knowledge_base_type] unless stub[:knowledge_base_type].nil?
        data['status'] = stub[:status] unless stub[:status].nil?
        data['sourceConfiguration'] = Stubs::SourceConfiguration.stub(stub[:source_configuration]) unless stub[:source_configuration].nil?
        data['renderingConfiguration'] = Stubs::RenderingConfiguration.stub(stub[:rendering_configuration]) unless stub[:rendering_configuration].nil?
        data['serverSideEncryptionConfiguration'] = Stubs::ServerSideEncryptionConfiguration.stub(stub[:server_side_encryption_configuration]) unless stub[:server_side_encryption_configuration].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for NotifyRecommendationsReceived
    class NotifyRecommendationsReceived
      def self.default(visited=[])
        {
          recommendation_ids: Stubs::RecommendationIdList.default(visited),
          errors: Stubs::NotifyRecommendationsReceivedErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['recommendationIds'] = Stubs::RecommendationIdList.stub(stub[:recommendation_ids]) unless stub[:recommendation_ids].nil?
        data['errors'] = Stubs::NotifyRecommendationsReceivedErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for NotifyRecommendationsReceivedErrorList
    class NotifyRecommendationsReceivedErrorList
      def self.default(visited=[])
        return nil if visited.include?('NotifyRecommendationsReceivedErrorList')
        visited = visited + ['NotifyRecommendationsReceivedErrorList']
        [
          Stubs::NotifyRecommendationsReceivedError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::NotifyRecommendationsReceivedError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for NotifyRecommendationsReceivedError
    class NotifyRecommendationsReceivedError
      def self.default(visited=[])
        return nil if visited.include?('NotifyRecommendationsReceivedError')
        visited = visited + ['NotifyRecommendationsReceivedError']
        {
          recommendation_id: 'recommendation_id',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::NotifyRecommendationsReceivedError.new
        data = {}
        data['recommendationId'] = stub[:recommendation_id] unless stub[:recommendation_id].nil?
        data['message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for QueryAssistant
    class QueryAssistant
      def self.default(visited=[])
        {
          results: Stubs::QueryResultsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['results'] = Stubs::QueryResultsList.stub(stub[:results]) unless stub[:results].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for QueryResultsList
    class QueryResultsList
      def self.default(visited=[])
        return nil if visited.include?('QueryResultsList')
        visited = visited + ['QueryResultsList']
        [
          Stubs::ResultData.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResultData.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResultData
    class ResultData
      def self.default(visited=[])
        return nil if visited.include?('ResultData')
        visited = visited + ['ResultData']
        {
          result_id: 'result_id',
          document: Stubs::Document.default(visited),
          relevance_score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResultData.new
        data = {}
        data['resultId'] = stub[:result_id] unless stub[:result_id].nil?
        data['document'] = Stubs::Document.stub(stub[:document]) unless stub[:document].nil?
        data['relevanceScore'] = Hearth::NumberHelper.serialize(stub[:relevance_score])
        data
      end
    end

    # Operation Stubber for RemoveKnowledgeBaseTemplateUri
    class RemoveKnowledgeBaseTemplateUri
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 204
      end
    end

    # Operation Stubber for SearchContent
    class SearchContent
      def self.default(visited=[])
        {
          content_summaries: Stubs::ContentSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['contentSummaries'] = Stubs::ContentSummaryList.stub(stub[:content_summaries]) unless stub[:content_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for SearchSessions
    class SearchSessions
      def self.default(visited=[])
        {
          session_summaries: Stubs::SessionSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['sessionSummaries'] = Stubs::SessionSummaries.stub(stub[:session_summaries]) unless stub[:session_summaries].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for SessionSummaries
    class SessionSummaries
      def self.default(visited=[])
        return nil if visited.include?('SessionSummaries')
        visited = visited + ['SessionSummaries']
        [
          Stubs::SessionSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SessionSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SessionSummary
    class SessionSummary
      def self.default(visited=[])
        return nil if visited.include?('SessionSummary')
        visited = visited + ['SessionSummary']
        {
          session_id: 'session_id',
          session_arn: 'session_arn',
          assistant_id: 'assistant_id',
          assistant_arn: 'assistant_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::SessionSummary.new
        data = {}
        data['sessionId'] = stub[:session_id] unless stub[:session_id].nil?
        data['sessionArn'] = stub[:session_arn] unless stub[:session_arn].nil?
        data['assistantId'] = stub[:assistant_id] unless stub[:assistant_id].nil?
        data['assistantArn'] = stub[:assistant_arn] unless stub[:assistant_arn].nil?
        data
      end
    end

    # Operation Stubber for StartContentUpload
    class StartContentUpload
      def self.default(visited=[])
        {
          upload_id: 'upload_id',
          url: 'url',
          url_expiry: Time.now,
          headers_to_include: Stubs::Headers.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['uploadId'] = stub[:upload_id] unless stub[:upload_id].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data['urlExpiry'] = Hearth::TimeHelper.to_epoch_seconds(stub[:url_expiry]).to_i unless stub[:url_expiry].nil?
        data['headersToInclude'] = Stubs::Headers.stub(stub[:headers_to_include]) unless stub[:headers_to_include].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Stubber for Headers
    class Headers
      def self.default(visited=[])
        return nil if visited.include?('Headers')
        visited = visited + ['Headers']
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

    # Operation Stubber for UpdateContent
    class UpdateContent
      def self.default(visited=[])
        {
          content: Stubs::ContentData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['content'] = Stubs::ContentData.stub(stub[:content]) unless stub[:content].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateKnowledgeBaseTemplateUri
    class UpdateKnowledgeBaseTemplateUri
      def self.default(visited=[])
        {
          knowledge_base: Stubs::KnowledgeBaseData.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['knowledgeBase'] = Stubs::KnowledgeBaseData.stub(stub[:knowledge_base]) unless stub[:knowledge_base].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
