# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Wisdom
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    AccessDeniedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information for Amazon AppIntegrations to automatically ingest content.</p>
    #
    # @!attribute app_integration_arn
    #   <p>The Amazon Resource Name (ARN) of the AppIntegrations DataIntegration to use for ingesting content.</p>
    #
    #   @return [String]
    #
    # @!attribute object_fields
    #   <p>The fields from the source that are made available to your agents in Wisdom. </p>
    #            <ul>
    #               <li>
    #                  <p> For <a href="https://developer.salesforce.com/docs/atlas.en-us.knowledge_dev.meta/knowledge_dev/sforce_api_objects_knowledge__kav.htm"> Salesforce</a>, you must include at least <code>Id</code>,
    #               <code>ArticleNumber</code>, <code>VersionNumber</code>, <code>Title</code>,
    #               <code>PublishStatus</code>, and <code>IsDeleted</code>. </p>
    #               </li>
    #               <li>
    #                  <p>For <a href="https://developer.servicenow.com/dev.do !/reference/api/rome/rest/knowledge-management-api"> ServiceNow</a>, you must include at least <code>number</code>,
    #               <code>short_description</code>, <code>sys_mod_count</code>, <code>workflow_state</code>,
    #             and <code>active</code>. </p>
    #               </li>
    #            </ul>
    #            <p>Make sure to include additional fields. These fields are indexed and used to source
    #         recommendations. </p>
    #
    #   @return [Array<String>]
    #
    AppIntegrationsConfiguration = ::Struct.new(
      :app_integration_arn,
      :object_fields,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the assistant association.</p>
    #
    # @!attribute assistant_association_id
    #   <p>The identifier of the assistant association.</p>
    #
    #   @return [String]
    #
    # @!attribute assistant_association_arn
    #   <p>The Amazon Resource Name (ARN) of the assistant association.</p>
    #
    #   @return [String]
    #
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant.</p>
    #
    #   @return [String]
    #
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Wisdom assistant.</p>
    #
    #   @return [String]
    #
    # @!attribute association_type
    #   <p>The type of association.</p>
    #
    #   Enum, one of: ["KNOWLEDGE_BASE"]
    #
    #   @return [String]
    #
    # @!attribute association_data
    #   <p>A union type that currently has a single argument, the knowledge base ID.</p>
    #
    #   @return [AssistantAssociationOutputData]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    AssistantAssociationData = ::Struct.new(
      :assistant_association_id,
      :assistant_association_arn,
      :assistant_id,
      :assistant_arn,
      :association_type,
      :association_data,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The data that is input into Wisdom as a result of the assistant association.</p>
    #
    class AssistantAssociationInputData < Hearth::Union
      # <p>The identifier of the knowledge base.</p>
      #
      class KnowledgeBaseId < AssistantAssociationInputData
        def to_h
          { knowledge_base_id: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Wisdom::Types::KnowledgeBaseId #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < AssistantAssociationInputData
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Wisdom::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>The data that is output as a result of the assistant association.</p>
    #
    class AssistantAssociationOutputData < Hearth::Union
      # <p>The knowledge base where output data is sent.</p>
      #
      class KnowledgeBaseAssociation < AssistantAssociationOutputData
        def to_h
          { knowledge_base_association: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Wisdom::Types::KnowledgeBaseAssociation #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < AssistantAssociationOutputData
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Wisdom::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # <p>Summary information about the assistant association.</p>
    #
    # @!attribute assistant_association_id
    #   <p>The identifier of the assistant association.</p>
    #
    #   @return [String]
    #
    # @!attribute assistant_association_arn
    #   <p>The Amazon Resource Name (ARN) of the assistant association.</p>
    #
    #   @return [String]
    #
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant.</p>
    #
    #   @return [String]
    #
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Wisdom assistant.</p>
    #
    #   @return [String]
    #
    # @!attribute association_type
    #   <p>The type of association.</p>
    #
    #   Enum, one of: ["KNOWLEDGE_BASE"]
    #
    #   @return [String]
    #
    # @!attribute association_data
    #   <p>The association data.</p>
    #
    #   @return [AssistantAssociationOutputData]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    AssistantAssociationSummary = ::Struct.new(
      :assistant_association_id,
      :assistant_association_arn,
      :assistant_id,
      :assistant_arn,
      :association_type,
      :association_data,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The assistant data.</p>
    #
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant.</p>
    #
    #   @return [String]
    #
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Wisdom assistant.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of assistant.</p>
    #
    #   Enum, one of: ["AGENT"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the assistant.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute server_side_encryption_configuration
    #   <p>The KMS key used for encryption.</p>
    #
    #   @return [ServerSideEncryptionConfiguration]
    #
    AssistantData = ::Struct.new(
      :assistant_id,
      :assistant_arn,
      :name,
      :type,
      :status,
      :description,
      :tags,
      :server_side_encryption_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssistantStatus
    #
    module AssistantStatus
      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>Summary information about the assistant.</p>
    #
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant.</p>
    #
    #   @return [String]
    #
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Wisdom assistant.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the assistant.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of the assistant.</p>
    #
    #   Enum, one of: ["AGENT"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the assistant.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the assistant.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute server_side_encryption_configuration
    #   <p>The KMS key used for encryption.</p>
    #
    #   @return [ServerSideEncryptionConfiguration]
    #
    AssistantSummary = ::Struct.new(
      :assistant_id,
      :assistant_arn,
      :name,
      :type,
      :status,
      :description,
      :tags,
      :server_side_encryption_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for AssistantType
    #
    module AssistantType
      # No documentation available.
      #
      AGENT = "AGENT"
    end

    # Includes enum constants for AssociationType
    #
    module AssociationType
      # No documentation available.
      #
      KNOWLEDGE_BASE = "KNOWLEDGE_BASE"
    end

    # <p>The request could not be processed because of conflict in the current state of the
    #       resource. For example, if you're using a <code>Create</code> API (such as
    #         <code>CreateAssistant</code>) that accepts name, a conflicting resource (usually with the
    #       same name) is being created or mutated.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ConflictException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the content.</p>
    #
    # @!attribute content_arn
    #   <p>The Amazon Resource Name (ARN) of the content.</p>
    #
    #   @return [String]
    #
    # @!attribute content_id
    #   <p>The identifier of the content.</p>
    #
    #   @return [String]
    #
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #
    #   @return [String]
    #
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the content.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The identifier of the content revision.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The title of the content.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The media type of the content.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the content.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>A key/value map to store attributes without affecting tagging or recommendations.
    #   For example, when synchronizing data between an external system and Wisdom, you can store an external version identifier as metadata to utilize for determining drift.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute link_out_uri
    #   <p>The URI of the content.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The URL of the content.</p>
    #
    #   @return [String]
    #
    # @!attribute url_expiry
    #   <p>The expiration time of the URL as an epoch timestamp.</p>
    #
    #   @return [Time]
    #
    ContentData = ::Struct.new(
      :content_arn,
      :content_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :name,
      :revision_id,
      :title,
      :content_type,
      :status,
      :metadata,
      :tags,
      :link_out_uri,
      :url,
      :url_expiry,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Wisdom::Types::ContentData "\
          "content_arn=#{content_arn || 'nil'}, "\
          "content_id=#{content_id || 'nil'}, "\
          "knowledge_base_arn=#{knowledge_base_arn || 'nil'}, "\
          "knowledge_base_id=#{knowledge_base_id || 'nil'}, "\
          "name=#{name || 'nil'}, "\
          "revision_id=#{revision_id || 'nil'}, "\
          "title=#{title || 'nil'}, "\
          "content_type=#{content_type || 'nil'}, "\
          "status=#{status || 'nil'}, "\
          "metadata=#{metadata || 'nil'}, "\
          "tags=#{tags || 'nil'}, "\
          "link_out_uri=#{link_out_uri || 'nil'}, "\
          "url=\"[SENSITIVE]\", "\
          "url_expiry=#{url_expiry || 'nil'}>"
      end
    end

    # <p>Reference information about the content.</p>
    #
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #
    #   @return [String]
    #
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #
    #   @return [String]
    #
    # @!attribute content_arn
    #   <p>The Amazon Resource Name (ARN) of the content.</p>
    #
    #   @return [String]
    #
    # @!attribute content_id
    #   <p>The identifier of the content.</p>
    #
    #   @return [String]
    #
    ContentReference = ::Struct.new(
      :knowledge_base_arn,
      :knowledge_base_id,
      :content_arn,
      :content_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for ContentStatus
    #
    module ContentStatus
      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      DELETED = "DELETED"

      # No documentation available.
      #
      UPDATE_FAILED = "UPDATE_FAILED"
    end

    # <p>Summary information about the content.</p>
    #
    # @!attribute content_arn
    #   <p>The Amazon Resource Name (ARN) of the content.</p>
    #
    #   @return [String]
    #
    # @!attribute content_id
    #   <p>The identifier of the content.</p>
    #
    #   @return [String]
    #
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #
    #   @return [String]
    #
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the content.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The identifier of the revision of the content.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The title of the content.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The media type of the content.</p>
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the content.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED", "UPDATE_FAILED"]
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>A key/value map to store attributes without affecting tagging or recommendations.
    #   For example, when synchronizing data between an external system and Wisdom, you can store an external version identifier as metadata to utilize for determining drift.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ContentSummary = ::Struct.new(
      :content_arn,
      :content_id,
      :knowledge_base_arn,
      :knowledge_base_id,
      :name,
      :revision_id,
      :title,
      :content_type,
      :status,
      :metadata,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute association_type
    #   <p>The type of association.</p>
    #
    #   Enum, one of: ["KNOWLEDGE_BASE"]
    #
    #   @return [String]
    #
    # @!attribute association
    #   <p>The identifier of the associated resource.</p>
    #
    #   @return [AssistantAssociationInputData]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #      request.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateAssistantAssociationInput = ::Struct.new(
      :assistant_id,
      :association_type,
      :association,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assistant_association
    #   <p>The assistant association.</p>
    #
    #   @return [AssistantAssociationData]
    #
    CreateAssistantAssociationOutput = ::Struct.new(
      :assistant_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #      request.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the assistant.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of assistant.</p>
    #
    #   Enum, one of: ["AGENT"]
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the assistant.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute server_side_encryption_configuration
    #   <p>The KMS key used for encryption.</p>
    #
    #   @return [ServerSideEncryptionConfiguration]
    #
    CreateAssistantInput = ::Struct.new(
      :client_token,
      :name,
      :type,
      :description,
      :tags,
      :server_side_encryption_configuration,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assistant
    #   <p>Information about the assistant.</p>
    #
    #   @return [AssistantData]
    #
    CreateAssistantOutput = ::Struct.new(
      :assistant,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the content. Each piece of content in a knowledge base must have a unique
    #         name. You can retrieve a piece of content using only its knowledge base and its name with the
    #           <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_SearchContent.html">SearchContent</a> API.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The title of the content. If not set, the title is equal to the name.</p>
    #
    #   @return [String]
    #
    # @!attribute override_link_out_uri
    #   <p>The URI you want to use for the article. If the knowledge base has a templateUri, setting
    #         this argument overrides it for this piece of content.</p>
    #
    #   @return [String]
    #
    # @!attribute metadata
    #   <p>A key/value map to store attributes without affecting tagging or recommendations.
    #   For example, when synchronizing data between an external system and Wisdom, you can store an external version identifier as metadata to utilize for determining drift.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute upload_id
    #   <p>A pointer to the uploaded asset. This value is returned by <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #      request.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateContentInput = ::Struct.new(
      :knowledge_base_id,
      :name,
      :title,
      :override_link_out_uri,
      :metadata,
      :upload_id,
      :client_token,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content
    #   <p>The content.</p>
    #
    #   @return [ContentData]
    #
    CreateContentOutput = ::Struct.new(
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #      request.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the knowledge base.</p>
    #
    #   @return [String]
    #
    # @!attribute knowledge_base_type
    #   <p>The type of knowledge base. Only CUSTOM knowledge bases allow you to upload your own content.
    #         EXTERNAL knowledge bases support integrations with third-party systems whose content is
    #         synchronized automatically. </p>
    #
    #   Enum, one of: ["EXTERNAL", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute source_configuration
    #   <p>The source of the knowledge base content. Only set this argument for EXTERNAL knowledge
    #         bases.</p>
    #
    #   @return [SourceConfiguration]
    #
    # @!attribute rendering_configuration
    #   <p>Information about how to render the content.</p>
    #
    #   @return [RenderingConfiguration]
    #
    # @!attribute server_side_encryption_configuration
    #   <p>The KMS key used for encryption.</p>
    #
    #   @return [ServerSideEncryptionConfiguration]
    #
    # @!attribute description
    #   <p>The description.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateKnowledgeBaseInput = ::Struct.new(
      :client_token,
      :name,
      :knowledge_base_type,
      :source_configuration,
      :rendering_configuration,
      :server_side_encryption_configuration,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute knowledge_base
    #   <p>The knowledge base.</p>
    #
    #   @return [KnowledgeBaseData]
    #
    CreateKnowledgeBaseOutput = ::Struct.new(
      :knowledge_base,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute client_token
    #   <p>A unique, case-sensitive identifier that you provide to ensure the idempotency of the
    #      request.</p>
    #
    #   @return [String]
    #
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the session.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    CreateSessionInput = ::Struct.new(
      :client_token,
      :assistant_id,
      :name,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session
    #   <p>The session.</p>
    #
    #   @return [SessionData]
    #
    CreateSessionOutput = ::Struct.new(
      :session,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assistant_association_id
    #   <p>The identifier of the assistant association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    DeleteAssistantAssociationInput = ::Struct.new(
      :assistant_association_id,
      :assistant_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAssistantAssociationOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    DeleteAssistantInput = ::Struct.new(
      :assistant_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteAssistantOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    DeleteContentInput = ::Struct.new(
      :knowledge_base_id,
      :content_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteContentOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The knowledge base to delete content from. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    DeleteKnowledgeBaseInput = ::Struct.new(
      :knowledge_base_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    DeleteKnowledgeBaseOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The document.</p>
    #
    # @!attribute content_reference
    #   <p>A reference to the content resource.</p>
    #
    #   @return [ContentReference]
    #
    # @!attribute title
    #   <p>The title of the document.</p>
    #
    #   @return [DocumentText]
    #
    # @!attribute excerpt
    #   <p>The excerpt from the document.</p>
    #
    #   @return [DocumentText]
    #
    Document = ::Struct.new(
      :content_reference,
      :title,
      :excerpt,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The text of the document.</p>
    #
    # @!attribute text
    #   <p>Text in the document.</p>
    #
    #   @return [String]
    #
    # @!attribute highlights
    #   <p>Highlights in the document text.</p>
    #
    #   @return [Array<Highlight>]
    #
    DocumentText = ::Struct.new(
      :text,
      :highlights,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Wisdom::Types::DocumentText "\
          "text=\"[SENSITIVE]\", "\
          "highlights=#{highlights || 'nil'}>"
      end
    end

    # <p>A search filter.</p>
    #
    # @!attribute field
    #   <p>The field on which to filter.</p>
    #
    #   Enum, one of: ["NAME"]
    #
    #   @return [String]
    #
    # @!attribute operator
    #   <p>The operator to use for comparing the field’s value with the provided value.</p>
    #
    #   Enum, one of: ["EQUALS"]
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The desired field value on which to filter.</p>
    #
    #   @return [String]
    #
    Filter = ::Struct.new(
      :field,
      :operator,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for FilterField
    #
    module FilterField
      # No documentation available.
      #
      NAME = "NAME"
    end

    # Includes enum constants for FilterOperator
    #
    module FilterOperator
      # No documentation available.
      #
      EQUALS = "EQUALS"
    end

    # @!attribute assistant_association_id
    #   <p>The identifier of the assistant association. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    GetAssistantAssociationInput = ::Struct.new(
      :assistant_association_id,
      :assistant_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assistant_association
    #   <p>The assistant association.</p>
    #
    #   @return [AssistantAssociationData]
    #
    GetAssistantAssociationOutput = ::Struct.new(
      :assistant_association,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    GetAssistantInput = ::Struct.new(
      :assistant_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assistant
    #   <p>Information about the assistant.</p>
    #
    #   @return [AssistantData]
    #
    GetAssistantOutput = ::Struct.new(
      :assistant,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    GetContentInput = ::Struct.new(
      :content_id,
      :knowledge_base_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content
    #   <p>The content.</p>
    #
    #   @return [ContentData]
    #
    GetContentOutput = ::Struct.new(
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    GetContentSummaryInput = ::Struct.new(
      :content_id,
      :knowledge_base_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content_summary
    #   <p>The content summary.</p>
    #
    #   @return [ContentSummary]
    #
    GetContentSummaryOutput = ::Struct.new(
      :content_summary,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    GetKnowledgeBaseInput = ::Struct.new(
      :knowledge_base_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute knowledge_base
    #   <p>The knowledge base.</p>
    #
    #   @return [KnowledgeBaseData]
    #
    GetKnowledgeBaseOutput = ::Struct.new(
      :knowledge_base,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute wait_time_seconds
    #   <p>The duration (in seconds) for which the call waits for a recommendation to be made
    #         available before returning. If a recommendation is available, the call returns sooner than
    #           <code>WaitTimeSeconds</code>. If no messages are available and the wait time expires, the
    #         call returns successfully with an empty list.</p>
    #
    #   @return [Integer]
    #
    GetRecommendationsInput = ::Struct.new(
      :assistant_id,
      :session_id,
      :max_results,
      :wait_time_seconds,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.wait_time_seconds ||= 0
      end

    end

    # @!attribute recommendations
    #   <p>The recommendations.</p>
    #
    #   @return [Array<RecommendationData>]
    #
    # @!attribute triggers
    #   <p>The triggers corresponding to recommendations.</p>
    #
    #   @return [Array<RecommendationTrigger>]
    #
    GetRecommendationsOutput = ::Struct.new(
      :recommendations,
      :triggers,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    GetSessionInput = ::Struct.new(
      :assistant_id,
      :session_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session
    #   <p>The session.</p>
    #
    #   @return [SessionData]
    #
    GetSessionOutput = ::Struct.new(
      :session,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Offset specification to describe highlighting of document excerpts for rendering search
    #       results and recommendations.</p>
    #
    # @!attribute begin_offset_inclusive
    #   <p>The offset for the start of the highlight.</p>
    #
    #   @return [Integer]
    #
    # @!attribute end_offset_exclusive
    #   <p>The offset for the end of the highlight.</p>
    #
    #   @return [Integer]
    #
    Highlight = ::Struct.new(
      :begin_offset_inclusive,
      :end_offset_exclusive,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.begin_offset_inclusive ||= 0
        self.end_offset_exclusive ||= 0
      end

    end

    # <p>Association information about the knowledge base.</p>
    #
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #
    #   @return [String]
    #
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #
    #   @return [String]
    #
    KnowledgeBaseAssociationData = ::Struct.new(
      :knowledge_base_id,
      :knowledge_base_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the knowledge base.</p>
    #
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #
    #   @return [String]
    #
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the knowledge base.</p>
    #
    #   @return [String]
    #
    # @!attribute knowledge_base_type
    #   <p>The type of knowledge base.</p>
    #
    #   Enum, one of: ["EXTERNAL", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the knowledge base.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute last_content_modification_time
    #   <p>An epoch timestamp indicating the most recent content modification inside the knowledge
    #         base. If no content exists in a knowledge base, this value is unset.</p>
    #
    #   @return [Time]
    #
    # @!attribute source_configuration
    #   <p>Source configuration information about the knowledge base.</p>
    #
    #   @return [SourceConfiguration]
    #
    # @!attribute rendering_configuration
    #   <p>Information about how to render the content.</p>
    #
    #   @return [RenderingConfiguration]
    #
    # @!attribute server_side_encryption_configuration
    #   <p>The KMS key used for encryption.</p>
    #
    #   @return [ServerSideEncryptionConfiguration]
    #
    # @!attribute description
    #   <p>The description.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    KnowledgeBaseData = ::Struct.new(
      :knowledge_base_id,
      :knowledge_base_arn,
      :name,
      :knowledge_base_type,
      :status,
      :last_content_modification_time,
      :source_configuration,
      :rendering_configuration,
      :server_side_encryption_configuration,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for KnowledgeBaseStatus
    #
    module KnowledgeBaseStatus
      # No documentation available.
      #
      CREATE_IN_PROGRESS = "CREATE_IN_PROGRESS"

      # No documentation available.
      #
      CREATE_FAILED = "CREATE_FAILED"

      # No documentation available.
      #
      ACTIVE = "ACTIVE"

      # No documentation available.
      #
      DELETE_IN_PROGRESS = "DELETE_IN_PROGRESS"

      # No documentation available.
      #
      DELETE_FAILED = "DELETE_FAILED"

      # No documentation available.
      #
      DELETED = "DELETED"
    end

    # <p>Summary information about the knowledge base.</p>
    #
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base.</p>
    #
    #   @return [String]
    #
    # @!attribute knowledge_base_arn
    #   <p>The Amazon Resource Name (ARN) of the knowledge base.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the knowledge base.</p>
    #
    #   @return [String]
    #
    # @!attribute knowledge_base_type
    #   <p>The type of knowledge base.</p>
    #
    #   Enum, one of: ["EXTERNAL", "CUSTOM"]
    #
    #   @return [String]
    #
    # @!attribute status
    #   <p>The status of the knowledge base summary.</p>
    #
    #   Enum, one of: ["CREATE_IN_PROGRESS", "CREATE_FAILED", "ACTIVE", "DELETE_IN_PROGRESS", "DELETE_FAILED", "DELETED"]
    #
    #   @return [String]
    #
    # @!attribute source_configuration
    #   <p>Configuration information about the external data source.</p>
    #
    #   @return [SourceConfiguration]
    #
    # @!attribute rendering_configuration
    #   <p>Information about how to render the content.</p>
    #
    #   @return [RenderingConfiguration]
    #
    # @!attribute server_side_encryption_configuration
    #   <p>The KMS key used for encryption.</p>
    #
    #   @return [ServerSideEncryptionConfiguration]
    #
    # @!attribute description
    #   <p>The description of the knowledge base.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    KnowledgeBaseSummary = ::Struct.new(
      :knowledge_base_id,
      :knowledge_base_arn,
      :name,
      :knowledge_base_type,
      :status,
      :source_configuration,
      :rendering_configuration,
      :server_side_encryption_configuration,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # Includes enum constants for KnowledgeBaseType
    #
    module KnowledgeBaseType
      # No documentation available.
      #
      EXTERNAL = "EXTERNAL"

      # No documentation available.
      #
      CUSTOM = "CUSTOM"
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    ListAssistantAssociationsInput = ::Struct.new(
      :next_token,
      :max_results,
      :assistant_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assistant_association_summaries
    #   <p>Summary information about assistant associations.</p>
    #
    #   @return [Array<AssistantAssociationSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListAssistantAssociationsOutput = ::Struct.new(
      :assistant_association_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListAssistantsInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assistant_summaries
    #   <p>Information about the assistants.</p>
    #
    #   @return [Array<AssistantSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListAssistantsOutput = ::Struct.new(
      :assistant_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    ListContentsInput = ::Struct.new(
      :next_token,
      :max_results,
      :knowledge_base_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content_summaries
    #   <p>Information about the content.</p>
    #
    #   @return [Array<ContentSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListContentsOutput = ::Struct.new(
      :content_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    ListKnowledgeBasesInput = ::Struct.new(
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute knowledge_base_summaries
    #   <p>Information about the knowledge bases.</p>
    #
    #   @return [Array<KnowledgeBaseSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    ListKnowledgeBasesOutput = ::Struct.new(
      :knowledge_base_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    ListTagsForResourceInput = ::Struct.new(
      :resource_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    ListTagsForResourceOutput = ::Struct.new(
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>An error occurred when creating a recommendation.</p>
    #
    # @!attribute recommendation_id
    #   <p>The identifier of the recommendation that is in error.</p>
    #
    #   @return [String]
    #
    # @!attribute message
    #   <p>A recommendation is causing an error.</p>
    #
    #   @return [String]
    #
    NotifyRecommendationsReceivedError = ::Struct.new(
      :recommendation_id,
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The identifier of the session. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute recommendation_ids
    #   <p>The identifiers of the recommendations.</p>
    #
    #   @return [Array<String>]
    #
    NotifyRecommendationsReceivedInput = ::Struct.new(
      :assistant_id,
      :session_id,
      :recommendation_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute recommendation_ids
    #   <p>The identifiers of the recommendations.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute errors
    #   <p>The identifiers of recommendations that are causing errors.</p>
    #
    #   @return [Array<NotifyRecommendationsReceivedError>]
    #
    NotifyRecommendationsReceivedOutput = ::Struct.new(
      :recommendation_ids,
      :errors,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The provided <code>revisionId</code> does not match, indicating the content has been
    #       modified since it was last read.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    PreconditionFailedException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute query_text
    #   <p>The text to search for.</p>
    #
    #   @return [String]
    #
    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    QueryAssistantInput = ::Struct.new(
      :assistant_id,
      :query_text,
      :next_token,
      :max_results,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Wisdom::Types::QueryAssistantInput "\
          "assistant_id=#{assistant_id || 'nil'}, "\
          "query_text=\"[SENSITIVE]\", "\
          "next_token=#{next_token || 'nil'}, "\
          "max_results=#{max_results || 'nil'}>"
      end
    end

    # @!attribute results
    #   <p>The results of the query.</p>
    #
    #   @return [Array<ResultData>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    QueryAssistantOutput = ::Struct.new(
      :results,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Data associated with the QUERY RecommendationTriggerType.</p>
    #
    # @!attribute text
    #   <p>The text associated with the recommendation trigger.</p>
    #
    #   @return [String]
    #
    QueryRecommendationTriggerData = ::Struct.new(
      :text,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Wisdom::Types::QueryRecommendationTriggerData "\
          "text=\"[SENSITIVE]\">"
      end
    end

    # <p>Information about the recommendation.</p>
    #
    # @!attribute recommendation_id
    #   <p>The identifier of the recommendation.</p>
    #
    #   @return [String]
    #
    # @!attribute document
    #   <p>The recommended document.</p>
    #
    #   @return [Document]
    #
    # @!attribute relevance_score
    #   <p>The relevance score of the recommendation.</p>
    #
    #   @return [Float]
    #
    # @!attribute relevance_level
    #   <p>The relevance level of the recommendation.</p>
    #
    #   Enum, one of: ["HIGH", "MEDIUM", "LOW"]
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of recommendation.</p>
    #
    #   Enum, one of: ["KNOWLEDGE_CONTENT"]
    #
    #   @return [String]
    #
    RecommendationData = ::Struct.new(
      :recommendation_id,
      :document,
      :relevance_score,
      :relevance_level,
      :type,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.relevance_score ||= 0
      end

    end

    # Includes enum constants for RecommendationSourceType
    #
    module RecommendationSourceType
      # No documentation available.
      #
      ISSUE_DETECTION = "ISSUE_DETECTION"

      # No documentation available.
      #
      RULE_EVALUATION = "RULE_EVALUATION"

      # No documentation available.
      #
      OTHER = "OTHER"
    end

    # <p>A recommendation trigger provides context on the event that produced the referenced recommendations.
    #       Recommendations are only referenced in <code>recommendationIds</code> by a single RecommendationTrigger.</p>
    #
    # @!attribute id
    #   <p>The identifier of the recommendation trigger.</p>
    #
    #   @return [String]
    #
    # @!attribute type
    #   <p>The type of recommendation trigger.</p>
    #
    #   Enum, one of: ["QUERY"]
    #
    #   @return [String]
    #
    # @!attribute source
    #   <p>The source of the recommendation trigger.</p>
    #            <ul>
    #               <li>
    #                  <p>ISSUE_DETECTION: The corresponding recommendations were triggered
    #             by a Contact Lens issue.</p>
    #               </li>
    #               <li>
    #                  <p>RULE_EVALUATION: The corresponding recommendations were triggered
    #             by a Contact Lens rule.</p>
    #               </li>
    #            </ul>
    #
    #   Enum, one of: ["ISSUE_DETECTION", "RULE_EVALUATION", "OTHER"]
    #
    #   @return [String]
    #
    # @!attribute data
    #   <p>A union type containing information related to the trigger.</p>
    #
    #   @return [RecommendationTriggerData]
    #
    # @!attribute recommendation_ids
    #   <p>The identifiers of the recommendations.</p>
    #
    #   @return [Array<String>]
    #
    RecommendationTrigger = ::Struct.new(
      :id,
      :type,
      :source,
      :data,
      :recommendation_ids,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>A union type containing information related to the trigger.</p>
    #
    class RecommendationTriggerData < Hearth::Union
      # <p>Data associated with the QUERY RecommendationTriggerType.</p>
      #
      class Query < RecommendationTriggerData
        def to_h
          { query: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Wisdom::Types::Query #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < RecommendationTriggerData
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Wisdom::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # Includes enum constants for RecommendationTriggerType
    #
    module RecommendationTriggerType
      # No documentation available.
      #
      QUERY = "QUERY"
    end

    # Includes enum constants for RecommendationType
    #
    module RecommendationType
      # No documentation available.
      #
      KNOWLEDGE_CONTENT = "KNOWLEDGE_CONTENT"
    end

    # Includes enum constants for RelevanceLevel
    #
    module RelevanceLevel
      # No documentation available.
      #
      HIGH = "HIGH"

      # No documentation available.
      #
      MEDIUM = "MEDIUM"

      # No documentation available.
      #
      LOW = "LOW"
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    RemoveKnowledgeBaseTemplateUriInput = ::Struct.new(
      :knowledge_base_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    RemoveKnowledgeBaseTemplateUriOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about how to render the content.</p>
    #
    # @!attribute template_uri
    #   <p>A URI template containing exactly one variable in <code>${variableName} </code>format.
    #         This can only be set for <code>EXTERNAL</code> knowledge bases. For Salesforce and ServiceNow,
    #         the variable must be one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Salesforce: <code>Id</code>, <code>ArticleNumber</code>, <code>VersionNumber</code>,
    #               <code>Title</code>, <code>PublishStatus</code>, or <code>IsDeleted</code>
    #                  </p>
    #               </li>
    #               <li>
    #                  <p>ServiceNow: <code>number</code>, <code>short_description</code>,
    #               <code>sys_mod_count</code>, <code>workflow_state</code>, or <code>active</code>
    #                  </p>
    #               </li>
    #            </ul>
    #
    #            <p>The variable is replaced with the actual value for a piece of content when calling <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_GetContent.html">GetContent</a>. </p>
    #
    #   @return [String]
    #
    RenderingConfiguration = ::Struct.new(
      :template_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource does not exist.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The specified resource name.</p>
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the result.</p>
    #
    # @!attribute result_id
    #   <p>The identifier of the result data.</p>
    #
    #   @return [String]
    #
    # @!attribute document
    #   <p>The document.</p>
    #
    #   @return [Document]
    #
    # @!attribute relevance_score
    #   <p>The relevance score of the results.</p>
    #
    #   @return [Float]
    #
    ResultData = ::Struct.new(
      :result_id,
      :document,
      :relevance_score,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.relevance_score ||= 0
      end

    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute search_expression
    #   <p>The search expression to filter results.</p>
    #
    #   @return [SearchExpression]
    #
    SearchContentInput = ::Struct.new(
      :next_token,
      :max_results,
      :knowledge_base_id,
      :search_expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content_summaries
    #   <p>Summary information about the content.</p>
    #
    #   @return [Array<ContentSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    SearchContentOutput = ::Struct.new(
      :content_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The search expression.</p>
    #
    # @!attribute filters
    #   <p>The search expression filters.</p>
    #
    #   @return [Array<Filter>]
    #
    SearchExpression = ::Struct.new(
      :filters,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute next_token
    #   <p>The token for the next set of results. Use the value returned in the previous
    #   response in the next request to retrieve the next set of results.</p>
    #
    #   @return [String]
    #
    # @!attribute max_results
    #   <p>The maximum number of results to return per page.</p>
    #
    #   @return [Integer]
    #
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute search_expression
    #   <p>The search expression to filter results.</p>
    #
    #   @return [SearchExpression]
    #
    SearchSessionsInput = ::Struct.new(
      :next_token,
      :max_results,
      :assistant_id,
      :search_expression,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute session_summaries
    #   <p>Summary information about the sessions.</p>
    #
    #   @return [Array<SessionSummary>]
    #
    # @!attribute next_token
    #   <p>If there are additional results, this is the token for the next set of results.</p>
    #
    #   @return [String]
    #
    SearchSessionsOutput = ::Struct.new(
      :session_summaries,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The KMS key used for encryption.</p>
    #
    # @!attribute kms_key_id
    #   <p>The KMS key. For information about valid ID values, see <a href="https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html key-id">Key identifiers (KeyId)</a>.</p>
    #
    #   @return [String]
    #
    ServerSideEncryptionConfiguration = ::Struct.new(
      :kms_key_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>You've exceeded your service quota. To perform the requested action, remove some of the
    #       relevant resources, or use service quotas to request a service quota increase.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ServiceQuotaExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Information about the session.</p>
    #
    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the session.</p>
    #
    #   @return [String]
    #
    # @!attribute session_id
    #   <p>The identifier of the session.</p>
    #
    #   @return [String]
    #
    # @!attribute name
    #   <p>The name of the session.</p>
    #
    #   @return [String]
    #
    # @!attribute description
    #   <p>The description of the session.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    SessionData = ::Struct.new(
      :session_arn,
      :session_id,
      :name,
      :description,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Summary information about the session.</p>
    #
    # @!attribute session_id
    #   <p>The identifier of the session.</p>
    #
    #   @return [String]
    #
    # @!attribute session_arn
    #   <p>The Amazon Resource Name (ARN) of the session.</p>
    #
    #   @return [String]
    #
    # @!attribute assistant_id
    #   <p>The identifier of the Wisdom assistant.</p>
    #
    #   @return [String]
    #
    # @!attribute assistant_arn
    #   <p>The Amazon Resource Name (ARN) of the Wisdom assistant.</p>
    #
    #   @return [String]
    #
    SessionSummary = ::Struct.new(
      :session_id,
      :session_arn,
      :assistant_id,
      :assistant_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Configuration information about the external data source.</p>
    #
    class SourceConfiguration < Hearth::Union
      # <p>Configuration information for Amazon AppIntegrations to automatically ingest content.</p>
      #
      class AppIntegrations < SourceConfiguration
        def to_h
          { app_integrations: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Wisdom::Types::AppIntegrations #{__getobj__ || 'nil'}>"
        end
      end

      # Handles unknown future members
      #
      class Unknown < SourceConfiguration
        def to_h
          { unknown: super(__getobj__) }
        end

        def to_s
          "#<AWS::SDK::Wisdom::Types::Unknown #{__getobj__ || 'nil'}>"
        end
      end
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute content_type
    #   <p>The type of content to upload.</p>
    #
    #   @return [String]
    #
    StartContentUploadInput = ::Struct.new(
      :knowledge_base_id,
      :content_type,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute upload_id
    #   <p>The identifier of the upload.</p>
    #
    #   @return [String]
    #
    # @!attribute url
    #   <p>The URL of the upload.</p>
    #
    #   @return [String]
    #
    # @!attribute url_expiry
    #   <p>The expiration time of the URL as an epoch timestamp.</p>
    #
    #   @return [Time]
    #
    # @!attribute headers_to_include
    #   <p>The headers to include in the upload.</p>
    #
    #   @return [Hash<String, String>]
    #
    StartContentUploadOutput = ::Struct.new(
      :upload_id,
      :url,
      :url_expiry,
      :headers_to_include,
      keyword_init: true
    ) do
      include Hearth::Structure

      def to_s
        "#<struct AWS::SDK::Wisdom::Types::StartContentUploadOutput "\
          "upload_id=#{upload_id || 'nil'}, "\
          "url=\"[SENSITIVE]\", "\
          "url_expiry=#{url_expiry || 'nil'}, "\
          "headers_to_include=#{headers_to_include || 'nil'}>"
      end
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tags
    #   <p>The tags used to organize, track, or control access for this resource.</p>
    #
    #   @return [Hash<String, String>]
    #
    TagResourceInput = ::Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    TagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Amazon Connect Wisdom throws this exception if you have too many tags in your tag set.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    # @!attribute resource_name
    #   <p>The specified resource name.</p>
    #
    #   @return [String]
    #
    TooManyTagsException = ::Struct.new(
      :message,
      :resource_name,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #
    #   @return [String]
    #
    # @!attribute tag_keys
    #   <p>The tag keys.</p>
    #
    #   @return [Array<String>]
    #
    UntagResourceInput = ::Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    UntagResourceOutput = ::Struct.new(
      nil,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN</p>
    #
    #   @return [String]
    #
    # @!attribute content_id
    #   <p>The identifier of the content. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute revision_id
    #   <p>The <code>revisionId</code> of the content resource to update, taken from an earlier call
    #         to <code>GetContent</code>, <code>GetContentSummary</code>, <code>SearchContent</code>, or
    #           <code>ListContents</code>. If included, this argument acts as an optimistic lock to ensure
    #         content was not modified since it was last read. If it has been modified, this API throws a
    #           <code>PreconditionFailedException</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute title
    #   <p>The title of the content.</p>
    #
    #   @return [String]
    #
    # @!attribute override_link_out_uri
    #   <p>The URI for the article. If the knowledge base has a templateUri, setting this argument
    #         overrides it for this piece of content. To remove an existing <code>overrideLinkOurUri</code>,
    #         exclude this argument and set <code>removeOverrideLinkOutUri</code> to true.</p>
    #
    #   @return [String]
    #
    # @!attribute remove_override_link_out_uri
    #   <p>Unset the existing <code>overrideLinkOutUri</code> if it exists.</p>
    #
    #   @return [Boolean]
    #
    # @!attribute metadata
    #   <p>A key/value map to store attributes without affecting tagging or recommendations. For
    #         example, when synchronizing data between an external system and Wisdom, you can store an
    #         external version identifier as metadata to utilize for determining drift.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute upload_id
    #   <p>A pointer to the uploaded asset. This value is returned by <a href="https://docs.aws.amazon.com/wisdom/latest/APIReference/API_StartContentUpload.html">StartContentUpload</a>.
    #       </p>
    #
    #   @return [String]
    #
    UpdateContentInput = ::Struct.new(
      :knowledge_base_id,
      :content_id,
      :revision_id,
      :title,
      :override_link_out_uri,
      :remove_override_link_out_uri,
      :metadata,
      :upload_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute content
    #   <p>The content.</p>
    #
    #   @return [ContentData]
    #
    UpdateContentOutput = ::Struct.new(
      :content,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute knowledge_base_id
    #   <p>The identifier of the knowledge base. Can be either the ID or the ARN. URLs cannot contain the ARN.</p>
    #
    #   @return [String]
    #
    # @!attribute template_uri
    #   <p>The template URI to update.</p>
    #
    #   @return [String]
    #
    UpdateKnowledgeBaseTemplateUriInput = ::Struct.new(
      :knowledge_base_id,
      :template_uri,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute knowledge_base
    #   <p>The knowledge base to update.</p>
    #
    #   @return [KnowledgeBaseData]
    #
    UpdateKnowledgeBaseTemplateUriOutput = ::Struct.new(
      :knowledge_base,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The input fails to satisfy the constraints specified by a service.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ValidationException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
