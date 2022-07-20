# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::Kendra
  module Stubs

    # Operation Stubber for AssociateEntitiesToExperience
    class AssociateEntitiesToExperience
      def self.default(visited=[])
        {
          failed_entity_list: AssociateEntitiesToExperienceFailedEntityList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedEntityList'] = AssociateEntitiesToExperienceFailedEntityList.stub(stub[:failed_entity_list]) unless stub[:failed_entity_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AssociateEntitiesToExperienceFailedEntityList
    class AssociateEntitiesToExperienceFailedEntityList
      def self.default(visited=[])
        return nil if visited.include?('AssociateEntitiesToExperienceFailedEntityList')
        visited = visited + ['AssociateEntitiesToExperienceFailedEntityList']
        [
          FailedEntity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FailedEntity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FailedEntity
    class FailedEntity
      def self.default(visited=[])
        return nil if visited.include?('FailedEntity')
        visited = visited + ['FailedEntity']
        {
          entity_id: 'entity_id',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::FailedEntity.new
        data = {}
        data['EntityId'] = stub[:entity_id] unless stub[:entity_id].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for AssociatePersonasToEntities
    class AssociatePersonasToEntities
      def self.default(visited=[])
        {
          failed_entity_list: FailedEntityList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedEntityList'] = FailedEntityList.stub(stub[:failed_entity_list]) unless stub[:failed_entity_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FailedEntityList
    class FailedEntityList
      def self.default(visited=[])
        return nil if visited.include?('FailedEntityList')
        visited = visited + ['FailedEntityList']
        [
          FailedEntity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FailedEntity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for BatchDeleteDocument
    class BatchDeleteDocument
      def self.default(visited=[])
        {
          failed_documents: BatchDeleteDocumentResponseFailedDocuments.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedDocuments'] = BatchDeleteDocumentResponseFailedDocuments.stub(stub[:failed_documents]) unless stub[:failed_documents].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BatchDeleteDocumentResponseFailedDocuments
    class BatchDeleteDocumentResponseFailedDocuments
      def self.default(visited=[])
        return nil if visited.include?('BatchDeleteDocumentResponseFailedDocuments')
        visited = visited + ['BatchDeleteDocumentResponseFailedDocuments']
        [
          BatchDeleteDocumentResponseFailedDocument.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchDeleteDocumentResponseFailedDocument.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchDeleteDocumentResponseFailedDocument
    class BatchDeleteDocumentResponseFailedDocument
      def self.default(visited=[])
        return nil if visited.include?('BatchDeleteDocumentResponseFailedDocument')
        visited = visited + ['BatchDeleteDocumentResponseFailedDocument']
        {
          id: 'id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchDeleteDocumentResponseFailedDocument.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for BatchGetDocumentStatus
    class BatchGetDocumentStatus
      def self.default(visited=[])
        {
          errors: BatchGetDocumentStatusResponseErrors.default(visited),
          document_status_list: DocumentStatusList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Errors'] = BatchGetDocumentStatusResponseErrors.stub(stub[:errors]) unless stub[:errors].nil?
        data['DocumentStatusList'] = DocumentStatusList.stub(stub[:document_status_list]) unless stub[:document_status_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DocumentStatusList
    class DocumentStatusList
      def self.default(visited=[])
        return nil if visited.include?('DocumentStatusList')
        visited = visited + ['DocumentStatusList']
        [
          Status.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Status.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Status
    class Status
      def self.default(visited=[])
        return nil if visited.include?('Status')
        visited = visited + ['Status']
        {
          document_id: 'document_id',
          document_status: 'document_status',
          failure_code: 'failure_code',
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::Status.new
        data = {}
        data['DocumentId'] = stub[:document_id] unless stub[:document_id].nil?
        data['DocumentStatus'] = stub[:document_status] unless stub[:document_status].nil?
        data['FailureCode'] = stub[:failure_code] unless stub[:failure_code].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # List Stubber for BatchGetDocumentStatusResponseErrors
    class BatchGetDocumentStatusResponseErrors
      def self.default(visited=[])
        return nil if visited.include?('BatchGetDocumentStatusResponseErrors')
        visited = visited + ['BatchGetDocumentStatusResponseErrors']
        [
          BatchGetDocumentStatusResponseError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchGetDocumentStatusResponseError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchGetDocumentStatusResponseError
    class BatchGetDocumentStatusResponseError
      def self.default(visited=[])
        return nil if visited.include?('BatchGetDocumentStatusResponseError')
        visited = visited + ['BatchGetDocumentStatusResponseError']
        {
          document_id: 'document_id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchGetDocumentStatusResponseError.new
        data = {}
        data['DocumentId'] = stub[:document_id] unless stub[:document_id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for BatchPutDocument
    class BatchPutDocument
      def self.default(visited=[])
        {
          failed_documents: BatchPutDocumentResponseFailedDocuments.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedDocuments'] = BatchPutDocumentResponseFailedDocuments.stub(stub[:failed_documents]) unless stub[:failed_documents].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BatchPutDocumentResponseFailedDocuments
    class BatchPutDocumentResponseFailedDocuments
      def self.default(visited=[])
        return nil if visited.include?('BatchPutDocumentResponseFailedDocuments')
        visited = visited + ['BatchPutDocumentResponseFailedDocuments']
        [
          BatchPutDocumentResponseFailedDocument.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BatchPutDocumentResponseFailedDocument.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BatchPutDocumentResponseFailedDocument
    class BatchPutDocumentResponseFailedDocument
      def self.default(visited=[])
        return nil if visited.include?('BatchPutDocumentResponseFailedDocument')
        visited = visited + ['BatchPutDocumentResponseFailedDocument']
        {
          id: 'id',
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::BatchPutDocumentResponseFailedDocument.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for ClearQuerySuggestions
    class ClearQuerySuggestions
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateDataSource
    class CreateDataSource
      def self.default(visited=[])
        {
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateExperience
    class CreateExperience
      def self.default(visited=[])
        {
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateFaq
    class CreateFaq
      def self.default(visited=[])
        {
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateIndex
    class CreateIndex
      def self.default(visited=[])
        {
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateQuerySuggestionsBlockList
    class CreateQuerySuggestionsBlockList
      def self.default(visited=[])
        {
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateThesaurus
    class CreateThesaurus
      def self.default(visited=[])
        {
          id: 'id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteDataSource
    class DeleteDataSource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteExperience
    class DeleteExperience
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFaq
    class DeleteFaq
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteIndex
    class DeleteIndex
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeletePrincipalMapping
    class DeletePrincipalMapping
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteQuerySuggestionsBlockList
    class DeleteQuerySuggestionsBlockList
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteThesaurus
    class DeleteThesaurus
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeDataSource
    class DescribeDataSource
      def self.default(visited=[])
        {
          id: 'id',
          index_id: 'index_id',
          name: 'name',
          type: 'type',
          configuration: DataSourceConfiguration.default(visited),
          created_at: Time.now,
          updated_at: Time.now,
          description: 'description',
          status: 'status',
          schedule: 'schedule',
          role_arn: 'role_arn',
          error_message: 'error_message',
          language_code: 'language_code',
          custom_document_enrichment_configuration: CustomDocumentEnrichmentConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['IndexId'] = stub[:index_id] unless stub[:index_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Configuration'] = DataSourceConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Schedule'] = stub[:schedule] unless stub[:schedule].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data['CustomDocumentEnrichmentConfiguration'] = CustomDocumentEnrichmentConfiguration.stub(stub[:custom_document_enrichment_configuration]) unless stub[:custom_document_enrichment_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for CustomDocumentEnrichmentConfiguration
    class CustomDocumentEnrichmentConfiguration
      def self.default(visited=[])
        return nil if visited.include?('CustomDocumentEnrichmentConfiguration')
        visited = visited + ['CustomDocumentEnrichmentConfiguration']
        {
          inline_configurations: InlineCustomDocumentEnrichmentConfigurationList.default(visited),
          pre_extraction_hook_configuration: HookConfiguration.default(visited),
          post_extraction_hook_configuration: HookConfiguration.default(visited),
          role_arn: 'role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::CustomDocumentEnrichmentConfiguration.new
        data = {}
        data['InlineConfigurations'] = InlineCustomDocumentEnrichmentConfigurationList.stub(stub[:inline_configurations]) unless stub[:inline_configurations].nil?
        data['PreExtractionHookConfiguration'] = HookConfiguration.stub(stub[:pre_extraction_hook_configuration]) unless stub[:pre_extraction_hook_configuration].nil?
        data['PostExtractionHookConfiguration'] = HookConfiguration.stub(stub[:post_extraction_hook_configuration]) unless stub[:post_extraction_hook_configuration].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data
      end
    end

    # Structure Stubber for HookConfiguration
    class HookConfiguration
      def self.default(visited=[])
        return nil if visited.include?('HookConfiguration')
        visited = visited + ['HookConfiguration']
        {
          invocation_condition: DocumentAttributeCondition.default(visited),
          lambda_arn: 'lambda_arn',
          s3_bucket: 's3_bucket',
        }
      end

      def self.stub(stub)
        stub ||= Types::HookConfiguration.new
        data = {}
        data['InvocationCondition'] = DocumentAttributeCondition.stub(stub[:invocation_condition]) unless stub[:invocation_condition].nil?
        data['LambdaArn'] = stub[:lambda_arn] unless stub[:lambda_arn].nil?
        data['S3Bucket'] = stub[:s3_bucket] unless stub[:s3_bucket].nil?
        data
      end
    end

    # Structure Stubber for DocumentAttributeCondition
    class DocumentAttributeCondition
      def self.default(visited=[])
        return nil if visited.include?('DocumentAttributeCondition')
        visited = visited + ['DocumentAttributeCondition']
        {
          condition_document_attribute_key: 'condition_document_attribute_key',
          operator: 'operator',
          condition_on_value: DocumentAttributeValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentAttributeCondition.new
        data = {}
        data['ConditionDocumentAttributeKey'] = stub[:condition_document_attribute_key] unless stub[:condition_document_attribute_key].nil?
        data['Operator'] = stub[:operator] unless stub[:operator].nil?
        data['ConditionOnValue'] = DocumentAttributeValue.stub(stub[:condition_on_value]) unless stub[:condition_on_value].nil?
        data
      end
    end

    # Structure Stubber for DocumentAttributeValue
    class DocumentAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('DocumentAttributeValue')
        visited = visited + ['DocumentAttributeValue']
        {
          string_value: 'string_value',
          string_list_value: DocumentAttributeStringListValue.default(visited),
          long_value: 1,
          date_value: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentAttributeValue.new
        data = {}
        data['StringValue'] = stub[:string_value] unless stub[:string_value].nil?
        data['StringListValue'] = DocumentAttributeStringListValue.stub(stub[:string_list_value]) unless stub[:string_list_value].nil?
        data['LongValue'] = stub[:long_value] unless stub[:long_value].nil?
        data['DateValue'] = Hearth::TimeHelper.to_epoch_seconds(stub[:date_value]).to_i unless stub[:date_value].nil?
        data
      end
    end

    # List Stubber for DocumentAttributeStringListValue
    class DocumentAttributeStringListValue
      def self.default(visited=[])
        return nil if visited.include?('DocumentAttributeStringListValue')
        visited = visited + ['DocumentAttributeStringListValue']
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

    # List Stubber for InlineCustomDocumentEnrichmentConfigurationList
    class InlineCustomDocumentEnrichmentConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('InlineCustomDocumentEnrichmentConfigurationList')
        visited = visited + ['InlineCustomDocumentEnrichmentConfigurationList']
        [
          InlineCustomDocumentEnrichmentConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InlineCustomDocumentEnrichmentConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InlineCustomDocumentEnrichmentConfiguration
    class InlineCustomDocumentEnrichmentConfiguration
      def self.default(visited=[])
        return nil if visited.include?('InlineCustomDocumentEnrichmentConfiguration')
        visited = visited + ['InlineCustomDocumentEnrichmentConfiguration']
        {
          condition: DocumentAttributeCondition.default(visited),
          target: DocumentAttributeTarget.default(visited),
          document_content_deletion: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::InlineCustomDocumentEnrichmentConfiguration.new
        data = {}
        data['Condition'] = DocumentAttributeCondition.stub(stub[:condition]) unless stub[:condition].nil?
        data['Target'] = DocumentAttributeTarget.stub(stub[:target]) unless stub[:target].nil?
        data['DocumentContentDeletion'] = stub[:document_content_deletion] unless stub[:document_content_deletion].nil?
        data
      end
    end

    # Structure Stubber for DocumentAttributeTarget
    class DocumentAttributeTarget
      def self.default(visited=[])
        return nil if visited.include?('DocumentAttributeTarget')
        visited = visited + ['DocumentAttributeTarget']
        {
          target_document_attribute_key: 'target_document_attribute_key',
          target_document_attribute_value_deletion: false,
          target_document_attribute_value: DocumentAttributeValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentAttributeTarget.new
        data = {}
        data['TargetDocumentAttributeKey'] = stub[:target_document_attribute_key] unless stub[:target_document_attribute_key].nil?
        data['TargetDocumentAttributeValueDeletion'] = stub[:target_document_attribute_value_deletion] unless stub[:target_document_attribute_value_deletion].nil?
        data['TargetDocumentAttributeValue'] = DocumentAttributeValue.stub(stub[:target_document_attribute_value]) unless stub[:target_document_attribute_value].nil?
        data
      end
    end

    # Structure Stubber for DataSourceConfiguration
    class DataSourceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DataSourceConfiguration')
        visited = visited + ['DataSourceConfiguration']
        {
          s3_configuration: S3DataSourceConfiguration.default(visited),
          share_point_configuration: SharePointConfiguration.default(visited),
          database_configuration: DatabaseConfiguration.default(visited),
          salesforce_configuration: SalesforceConfiguration.default(visited),
          one_drive_configuration: OneDriveConfiguration.default(visited),
          service_now_configuration: ServiceNowConfiguration.default(visited),
          confluence_configuration: ConfluenceConfiguration.default(visited),
          google_drive_configuration: GoogleDriveConfiguration.default(visited),
          web_crawler_configuration: WebCrawlerConfiguration.default(visited),
          work_docs_configuration: WorkDocsConfiguration.default(visited),
          fsx_configuration: FsxConfiguration.default(visited),
          slack_configuration: SlackConfiguration.default(visited),
          box_configuration: BoxConfiguration.default(visited),
          quip_configuration: QuipConfiguration.default(visited),
          jira_configuration: JiraConfiguration.default(visited),
          git_hub_configuration: GitHubConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSourceConfiguration.new
        data = {}
        data['S3Configuration'] = S3DataSourceConfiguration.stub(stub[:s3_configuration]) unless stub[:s3_configuration].nil?
        data['SharePointConfiguration'] = SharePointConfiguration.stub(stub[:share_point_configuration]) unless stub[:share_point_configuration].nil?
        data['DatabaseConfiguration'] = DatabaseConfiguration.stub(stub[:database_configuration]) unless stub[:database_configuration].nil?
        data['SalesforceConfiguration'] = SalesforceConfiguration.stub(stub[:salesforce_configuration]) unless stub[:salesforce_configuration].nil?
        data['OneDriveConfiguration'] = OneDriveConfiguration.stub(stub[:one_drive_configuration]) unless stub[:one_drive_configuration].nil?
        data['ServiceNowConfiguration'] = ServiceNowConfiguration.stub(stub[:service_now_configuration]) unless stub[:service_now_configuration].nil?
        data['ConfluenceConfiguration'] = ConfluenceConfiguration.stub(stub[:confluence_configuration]) unless stub[:confluence_configuration].nil?
        data['GoogleDriveConfiguration'] = GoogleDriveConfiguration.stub(stub[:google_drive_configuration]) unless stub[:google_drive_configuration].nil?
        data['WebCrawlerConfiguration'] = WebCrawlerConfiguration.stub(stub[:web_crawler_configuration]) unless stub[:web_crawler_configuration].nil?
        data['WorkDocsConfiguration'] = WorkDocsConfiguration.stub(stub[:work_docs_configuration]) unless stub[:work_docs_configuration].nil?
        data['FsxConfiguration'] = FsxConfiguration.stub(stub[:fsx_configuration]) unless stub[:fsx_configuration].nil?
        data['SlackConfiguration'] = SlackConfiguration.stub(stub[:slack_configuration]) unless stub[:slack_configuration].nil?
        data['BoxConfiguration'] = BoxConfiguration.stub(stub[:box_configuration]) unless stub[:box_configuration].nil?
        data['QuipConfiguration'] = QuipConfiguration.stub(stub[:quip_configuration]) unless stub[:quip_configuration].nil?
        data['JiraConfiguration'] = JiraConfiguration.stub(stub[:jira_configuration]) unless stub[:jira_configuration].nil?
        data['GitHubConfiguration'] = GitHubConfiguration.stub(stub[:git_hub_configuration]) unless stub[:git_hub_configuration].nil?
        data
      end
    end

    # Structure Stubber for GitHubConfiguration
    class GitHubConfiguration
      def self.default(visited=[])
        return nil if visited.include?('GitHubConfiguration')
        visited = visited + ['GitHubConfiguration']
        {
          saa_s_configuration: SaaSConfiguration.default(visited),
          on_premise_configuration: OnPremiseConfiguration.default(visited),
          type: 'type',
          secret_arn: 'secret_arn',
          use_change_log: false,
          git_hub_document_crawl_properties: GitHubDocumentCrawlProperties.default(visited),
          repository_filter: RepositoryNames.default(visited),
          inclusion_folder_name_patterns: StringList.default(visited),
          inclusion_file_type_patterns: StringList.default(visited),
          inclusion_file_name_patterns: StringList.default(visited),
          exclusion_folder_name_patterns: StringList.default(visited),
          exclusion_file_type_patterns: StringList.default(visited),
          exclusion_file_name_patterns: StringList.default(visited),
          vpc_configuration: DataSourceVpcConfiguration.default(visited),
          git_hub_repository_configuration_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          git_hub_commit_configuration_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          git_hub_issue_document_configuration_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          git_hub_issue_comment_configuration_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          git_hub_issue_attachment_configuration_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          git_hub_pull_request_comment_configuration_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          git_hub_pull_request_document_configuration_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          git_hub_pull_request_document_attachment_configuration_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GitHubConfiguration.new
        data = {}
        data['SaaSConfiguration'] = SaaSConfiguration.stub(stub[:saa_s_configuration]) unless stub[:saa_s_configuration].nil?
        data['OnPremiseConfiguration'] = OnPremiseConfiguration.stub(stub[:on_premise_configuration]) unless stub[:on_premise_configuration].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data['UseChangeLog'] = stub[:use_change_log] unless stub[:use_change_log].nil?
        data['GitHubDocumentCrawlProperties'] = GitHubDocumentCrawlProperties.stub(stub[:git_hub_document_crawl_properties]) unless stub[:git_hub_document_crawl_properties].nil?
        data['RepositoryFilter'] = RepositoryNames.stub(stub[:repository_filter]) unless stub[:repository_filter].nil?
        data['InclusionFolderNamePatterns'] = StringList.stub(stub[:inclusion_folder_name_patterns]) unless stub[:inclusion_folder_name_patterns].nil?
        data['InclusionFileTypePatterns'] = StringList.stub(stub[:inclusion_file_type_patterns]) unless stub[:inclusion_file_type_patterns].nil?
        data['InclusionFileNamePatterns'] = StringList.stub(stub[:inclusion_file_name_patterns]) unless stub[:inclusion_file_name_patterns].nil?
        data['ExclusionFolderNamePatterns'] = StringList.stub(stub[:exclusion_folder_name_patterns]) unless stub[:exclusion_folder_name_patterns].nil?
        data['ExclusionFileTypePatterns'] = StringList.stub(stub[:exclusion_file_type_patterns]) unless stub[:exclusion_file_type_patterns].nil?
        data['ExclusionFileNamePatterns'] = StringList.stub(stub[:exclusion_file_name_patterns]) unless stub[:exclusion_file_name_patterns].nil?
        data['VpcConfiguration'] = DataSourceVpcConfiguration.stub(stub[:vpc_configuration]) unless stub[:vpc_configuration].nil?
        data['GitHubRepositoryConfigurationFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:git_hub_repository_configuration_field_mappings]) unless stub[:git_hub_repository_configuration_field_mappings].nil?
        data['GitHubCommitConfigurationFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:git_hub_commit_configuration_field_mappings]) unless stub[:git_hub_commit_configuration_field_mappings].nil?
        data['GitHubIssueDocumentConfigurationFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:git_hub_issue_document_configuration_field_mappings]) unless stub[:git_hub_issue_document_configuration_field_mappings].nil?
        data['GitHubIssueCommentConfigurationFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:git_hub_issue_comment_configuration_field_mappings]) unless stub[:git_hub_issue_comment_configuration_field_mappings].nil?
        data['GitHubIssueAttachmentConfigurationFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:git_hub_issue_attachment_configuration_field_mappings]) unless stub[:git_hub_issue_attachment_configuration_field_mappings].nil?
        data['GitHubPullRequestCommentConfigurationFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:git_hub_pull_request_comment_configuration_field_mappings]) unless stub[:git_hub_pull_request_comment_configuration_field_mappings].nil?
        data['GitHubPullRequestDocumentConfigurationFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:git_hub_pull_request_document_configuration_field_mappings]) unless stub[:git_hub_pull_request_document_configuration_field_mappings].nil?
        data['GitHubPullRequestDocumentAttachmentConfigurationFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:git_hub_pull_request_document_attachment_configuration_field_mappings]) unless stub[:git_hub_pull_request_document_attachment_configuration_field_mappings].nil?
        data
      end
    end

    # List Stubber for DataSourceToIndexFieldMappingList
    class DataSourceToIndexFieldMappingList
      def self.default(visited=[])
        return nil if visited.include?('DataSourceToIndexFieldMappingList')
        visited = visited + ['DataSourceToIndexFieldMappingList']
        [
          DataSourceToIndexFieldMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DataSourceToIndexFieldMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataSourceToIndexFieldMapping
    class DataSourceToIndexFieldMapping
      def self.default(visited=[])
        return nil if visited.include?('DataSourceToIndexFieldMapping')
        visited = visited + ['DataSourceToIndexFieldMapping']
        {
          data_source_field_name: 'data_source_field_name',
          date_field_format: 'date_field_format',
          index_field_name: 'index_field_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSourceToIndexFieldMapping.new
        data = {}
        data['DataSourceFieldName'] = stub[:data_source_field_name] unless stub[:data_source_field_name].nil?
        data['DateFieldFormat'] = stub[:date_field_format] unless stub[:date_field_format].nil?
        data['IndexFieldName'] = stub[:index_field_name] unless stub[:index_field_name].nil?
        data
      end
    end

    # Structure Stubber for DataSourceVpcConfiguration
    class DataSourceVpcConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DataSourceVpcConfiguration')
        visited = visited + ['DataSourceVpcConfiguration']
        {
          subnet_ids: SubnetIdList.default(visited),
          security_group_ids: SecurityGroupIdList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSourceVpcConfiguration.new
        data = {}
        data['SubnetIds'] = SubnetIdList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['SecurityGroupIds'] = SecurityGroupIdList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data
      end
    end

    # List Stubber for SecurityGroupIdList
    class SecurityGroupIdList
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIdList')
        visited = visited + ['SecurityGroupIdList']
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

    # List Stubber for SubnetIdList
    class SubnetIdList
      def self.default(visited=[])
        return nil if visited.include?('SubnetIdList')
        visited = visited + ['SubnetIdList']
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

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
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

    # List Stubber for RepositoryNames
    class RepositoryNames
      def self.default(visited=[])
        return nil if visited.include?('RepositoryNames')
        visited = visited + ['RepositoryNames']
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

    # Structure Stubber for GitHubDocumentCrawlProperties
    class GitHubDocumentCrawlProperties
      def self.default(visited=[])
        return nil if visited.include?('GitHubDocumentCrawlProperties')
        visited = visited + ['GitHubDocumentCrawlProperties']
        {
          crawl_repository_documents: false,
          crawl_issue: false,
          crawl_issue_comment: false,
          crawl_issue_comment_attachment: false,
          crawl_pull_request: false,
          crawl_pull_request_comment: false,
          crawl_pull_request_comment_attachment: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::GitHubDocumentCrawlProperties.new
        data = {}
        data['CrawlRepositoryDocuments'] = stub[:crawl_repository_documents] unless stub[:crawl_repository_documents].nil?
        data['CrawlIssue'] = stub[:crawl_issue] unless stub[:crawl_issue].nil?
        data['CrawlIssueComment'] = stub[:crawl_issue_comment] unless stub[:crawl_issue_comment].nil?
        data['CrawlIssueCommentAttachment'] = stub[:crawl_issue_comment_attachment] unless stub[:crawl_issue_comment_attachment].nil?
        data['CrawlPullRequest'] = stub[:crawl_pull_request] unless stub[:crawl_pull_request].nil?
        data['CrawlPullRequestComment'] = stub[:crawl_pull_request_comment] unless stub[:crawl_pull_request_comment].nil?
        data['CrawlPullRequestCommentAttachment'] = stub[:crawl_pull_request_comment_attachment] unless stub[:crawl_pull_request_comment_attachment].nil?
        data
      end
    end

    # Structure Stubber for OnPremiseConfiguration
    class OnPremiseConfiguration
      def self.default(visited=[])
        return nil if visited.include?('OnPremiseConfiguration')
        visited = visited + ['OnPremiseConfiguration']
        {
          host_url: 'host_url',
          organization_name: 'organization_name',
          ssl_certificate_s3_path: S3Path.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OnPremiseConfiguration.new
        data = {}
        data['HostUrl'] = stub[:host_url] unless stub[:host_url].nil?
        data['OrganizationName'] = stub[:organization_name] unless stub[:organization_name].nil?
        data['SslCertificateS3Path'] = S3Path.stub(stub[:ssl_certificate_s3_path]) unless stub[:ssl_certificate_s3_path].nil?
        data
      end
    end

    # Structure Stubber for S3Path
    class S3Path
      def self.default(visited=[])
        return nil if visited.include?('S3Path')
        visited = visited + ['S3Path']
        {
          bucket: 'bucket',
          key: 'key',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Path.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['Key'] = stub[:key] unless stub[:key].nil?
        data
      end
    end

    # Structure Stubber for SaaSConfiguration
    class SaaSConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SaaSConfiguration')
        visited = visited + ['SaaSConfiguration']
        {
          organization_name: 'organization_name',
          host_url: 'host_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::SaaSConfiguration.new
        data = {}
        data['OrganizationName'] = stub[:organization_name] unless stub[:organization_name].nil?
        data['HostUrl'] = stub[:host_url] unless stub[:host_url].nil?
        data
      end
    end

    # Structure Stubber for JiraConfiguration
    class JiraConfiguration
      def self.default(visited=[])
        return nil if visited.include?('JiraConfiguration')
        visited = visited + ['JiraConfiguration']
        {
          jira_account_url: 'jira_account_url',
          secret_arn: 'secret_arn',
          use_change_log: false,
          project: Project.default(visited),
          issue_type: IssueType.default(visited),
          status: JiraStatus.default(visited),
          issue_sub_entity_filter: IssueSubEntityFilter.default(visited),
          attachment_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          comment_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          issue_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          project_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          work_log_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          inclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          exclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          vpc_configuration: DataSourceVpcConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::JiraConfiguration.new
        data = {}
        data['JiraAccountUrl'] = stub[:jira_account_url] unless stub[:jira_account_url].nil?
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data['UseChangeLog'] = stub[:use_change_log] unless stub[:use_change_log].nil?
        data['Project'] = Project.stub(stub[:project]) unless stub[:project].nil?
        data['IssueType'] = IssueType.stub(stub[:issue_type]) unless stub[:issue_type].nil?
        data['Status'] = JiraStatus.stub(stub[:status]) unless stub[:status].nil?
        data['IssueSubEntityFilter'] = IssueSubEntityFilter.stub(stub[:issue_sub_entity_filter]) unless stub[:issue_sub_entity_filter].nil?
        data['AttachmentFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:attachment_field_mappings]) unless stub[:attachment_field_mappings].nil?
        data['CommentFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:comment_field_mappings]) unless stub[:comment_field_mappings].nil?
        data['IssueFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:issue_field_mappings]) unless stub[:issue_field_mappings].nil?
        data['ProjectFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:project_field_mappings]) unless stub[:project_field_mappings].nil?
        data['WorkLogFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:work_log_field_mappings]) unless stub[:work_log_field_mappings].nil?
        data['InclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:inclusion_patterns]) unless stub[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:exclusion_patterns]) unless stub[:exclusion_patterns].nil?
        data['VpcConfiguration'] = DataSourceVpcConfiguration.stub(stub[:vpc_configuration]) unless stub[:vpc_configuration].nil?
        data
      end
    end

    # List Stubber for DataSourceInclusionsExclusionsStrings
    class DataSourceInclusionsExclusionsStrings
      def self.default(visited=[])
        return nil if visited.include?('DataSourceInclusionsExclusionsStrings')
        visited = visited + ['DataSourceInclusionsExclusionsStrings']
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

    # List Stubber for IssueSubEntityFilter
    class IssueSubEntityFilter
      def self.default(visited=[])
        return nil if visited.include?('IssueSubEntityFilter')
        visited = visited + ['IssueSubEntityFilter']
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

    # List Stubber for JiraStatus
    class JiraStatus
      def self.default(visited=[])
        return nil if visited.include?('JiraStatus')
        visited = visited + ['JiraStatus']
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

    # List Stubber for IssueType
    class IssueType
      def self.default(visited=[])
        return nil if visited.include?('IssueType')
        visited = visited + ['IssueType']
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

    # List Stubber for Project
    class Project
      def self.default(visited=[])
        return nil if visited.include?('Project')
        visited = visited + ['Project']
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

    # Structure Stubber for QuipConfiguration
    class QuipConfiguration
      def self.default(visited=[])
        return nil if visited.include?('QuipConfiguration')
        visited = visited + ['QuipConfiguration']
        {
          domain: 'domain',
          secret_arn: 'secret_arn',
          crawl_file_comments: false,
          crawl_chat_rooms: false,
          crawl_attachments: false,
          folder_ids: FolderIdList.default(visited),
          thread_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          message_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          attachment_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          inclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          exclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          vpc_configuration: DataSourceVpcConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::QuipConfiguration.new
        data = {}
        data['Domain'] = stub[:domain] unless stub[:domain].nil?
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data['CrawlFileComments'] = stub[:crawl_file_comments] unless stub[:crawl_file_comments].nil?
        data['CrawlChatRooms'] = stub[:crawl_chat_rooms] unless stub[:crawl_chat_rooms].nil?
        data['CrawlAttachments'] = stub[:crawl_attachments] unless stub[:crawl_attachments].nil?
        data['FolderIds'] = FolderIdList.stub(stub[:folder_ids]) unless stub[:folder_ids].nil?
        data['ThreadFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:thread_field_mappings]) unless stub[:thread_field_mappings].nil?
        data['MessageFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:message_field_mappings]) unless stub[:message_field_mappings].nil?
        data['AttachmentFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:attachment_field_mappings]) unless stub[:attachment_field_mappings].nil?
        data['InclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:inclusion_patterns]) unless stub[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:exclusion_patterns]) unless stub[:exclusion_patterns].nil?
        data['VpcConfiguration'] = DataSourceVpcConfiguration.stub(stub[:vpc_configuration]) unless stub[:vpc_configuration].nil?
        data
      end
    end

    # List Stubber for FolderIdList
    class FolderIdList
      def self.default(visited=[])
        return nil if visited.include?('FolderIdList')
        visited = visited + ['FolderIdList']
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

    # Structure Stubber for BoxConfiguration
    class BoxConfiguration
      def self.default(visited=[])
        return nil if visited.include?('BoxConfiguration')
        visited = visited + ['BoxConfiguration']
        {
          enterprise_id: 'enterprise_id',
          secret_arn: 'secret_arn',
          use_change_log: false,
          crawl_comments: false,
          crawl_tasks: false,
          crawl_web_links: false,
          file_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          task_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          comment_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          web_link_field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          inclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          exclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          vpc_configuration: DataSourceVpcConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::BoxConfiguration.new
        data = {}
        data['EnterpriseId'] = stub[:enterprise_id] unless stub[:enterprise_id].nil?
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data['UseChangeLog'] = stub[:use_change_log] unless stub[:use_change_log].nil?
        data['CrawlComments'] = stub[:crawl_comments] unless stub[:crawl_comments].nil?
        data['CrawlTasks'] = stub[:crawl_tasks] unless stub[:crawl_tasks].nil?
        data['CrawlWebLinks'] = stub[:crawl_web_links] unless stub[:crawl_web_links].nil?
        data['FileFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:file_field_mappings]) unless stub[:file_field_mappings].nil?
        data['TaskFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:task_field_mappings]) unless stub[:task_field_mappings].nil?
        data['CommentFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:comment_field_mappings]) unless stub[:comment_field_mappings].nil?
        data['WebLinkFieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:web_link_field_mappings]) unless stub[:web_link_field_mappings].nil?
        data['InclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:inclusion_patterns]) unless stub[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:exclusion_patterns]) unless stub[:exclusion_patterns].nil?
        data['VpcConfiguration'] = DataSourceVpcConfiguration.stub(stub[:vpc_configuration]) unless stub[:vpc_configuration].nil?
        data
      end
    end

    # Structure Stubber for SlackConfiguration
    class SlackConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SlackConfiguration')
        visited = visited + ['SlackConfiguration']
        {
          team_id: 'team_id',
          secret_arn: 'secret_arn',
          vpc_configuration: DataSourceVpcConfiguration.default(visited),
          slack_entity_list: SlackEntityList.default(visited),
          use_change_log: false,
          crawl_bot_message: false,
          exclude_archived: false,
          since_crawl_date: 'since_crawl_date',
          look_back_period: 1,
          private_channel_filter: PrivateChannelFilter.default(visited),
          public_channel_filter: PublicChannelFilter.default(visited),
          inclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          exclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          field_mappings: DataSourceToIndexFieldMappingList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SlackConfiguration.new
        data = {}
        data['TeamId'] = stub[:team_id] unless stub[:team_id].nil?
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data['VpcConfiguration'] = DataSourceVpcConfiguration.stub(stub[:vpc_configuration]) unless stub[:vpc_configuration].nil?
        data['SlackEntityList'] = SlackEntityList.stub(stub[:slack_entity_list]) unless stub[:slack_entity_list].nil?
        data['UseChangeLog'] = stub[:use_change_log] unless stub[:use_change_log].nil?
        data['CrawlBotMessage'] = stub[:crawl_bot_message] unless stub[:crawl_bot_message].nil?
        data['ExcludeArchived'] = stub[:exclude_archived] unless stub[:exclude_archived].nil?
        data['SinceCrawlDate'] = stub[:since_crawl_date] unless stub[:since_crawl_date].nil?
        data['LookBackPeriod'] = stub[:look_back_period] unless stub[:look_back_period].nil?
        data['PrivateChannelFilter'] = PrivateChannelFilter.stub(stub[:private_channel_filter]) unless stub[:private_channel_filter].nil?
        data['PublicChannelFilter'] = PublicChannelFilter.stub(stub[:public_channel_filter]) unless stub[:public_channel_filter].nil?
        data['InclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:inclusion_patterns]) unless stub[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:exclusion_patterns]) unless stub[:exclusion_patterns].nil?
        data['FieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:field_mappings]) unless stub[:field_mappings].nil?
        data
      end
    end

    # List Stubber for PublicChannelFilter
    class PublicChannelFilter
      def self.default(visited=[])
        return nil if visited.include?('PublicChannelFilter')
        visited = visited + ['PublicChannelFilter']
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

    # List Stubber for PrivateChannelFilter
    class PrivateChannelFilter
      def self.default(visited=[])
        return nil if visited.include?('PrivateChannelFilter')
        visited = visited + ['PrivateChannelFilter']
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

    # List Stubber for SlackEntityList
    class SlackEntityList
      def self.default(visited=[])
        return nil if visited.include?('SlackEntityList')
        visited = visited + ['SlackEntityList']
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

    # Structure Stubber for FsxConfiguration
    class FsxConfiguration
      def self.default(visited=[])
        return nil if visited.include?('FsxConfiguration')
        visited = visited + ['FsxConfiguration']
        {
          file_system_id: 'file_system_id',
          file_system_type: 'file_system_type',
          vpc_configuration: DataSourceVpcConfiguration.default(visited),
          secret_arn: 'secret_arn',
          inclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          exclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          field_mappings: DataSourceToIndexFieldMappingList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FsxConfiguration.new
        data = {}
        data['FileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['FileSystemType'] = stub[:file_system_type] unless stub[:file_system_type].nil?
        data['VpcConfiguration'] = DataSourceVpcConfiguration.stub(stub[:vpc_configuration]) unless stub[:vpc_configuration].nil?
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data['InclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:inclusion_patterns]) unless stub[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:exclusion_patterns]) unless stub[:exclusion_patterns].nil?
        data['FieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:field_mappings]) unless stub[:field_mappings].nil?
        data
      end
    end

    # Structure Stubber for WorkDocsConfiguration
    class WorkDocsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('WorkDocsConfiguration')
        visited = visited + ['WorkDocsConfiguration']
        {
          organization_id: 'organization_id',
          crawl_comments: false,
          use_change_log: false,
          inclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          exclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          field_mappings: DataSourceToIndexFieldMappingList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WorkDocsConfiguration.new
        data = {}
        data['OrganizationId'] = stub[:organization_id] unless stub[:organization_id].nil?
        data['CrawlComments'] = stub[:crawl_comments] unless stub[:crawl_comments].nil?
        data['UseChangeLog'] = stub[:use_change_log] unless stub[:use_change_log].nil?
        data['InclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:inclusion_patterns]) unless stub[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:exclusion_patterns]) unless stub[:exclusion_patterns].nil?
        data['FieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:field_mappings]) unless stub[:field_mappings].nil?
        data
      end
    end

    # Structure Stubber for WebCrawlerConfiguration
    class WebCrawlerConfiguration
      def self.default(visited=[])
        return nil if visited.include?('WebCrawlerConfiguration')
        visited = visited + ['WebCrawlerConfiguration']
        {
          urls: Urls.default(visited),
          crawl_depth: 1,
          max_links_per_page: 1,
          max_content_size_per_page_in_mega_bytes: 1.0,
          max_urls_per_minute_crawl_rate: 1,
          url_inclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          url_exclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          proxy_configuration: ProxyConfiguration.default(visited),
          authentication_configuration: AuthenticationConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::WebCrawlerConfiguration.new
        data = {}
        data['Urls'] = Urls.stub(stub[:urls]) unless stub[:urls].nil?
        data['CrawlDepth'] = stub[:crawl_depth] unless stub[:crawl_depth].nil?
        data['MaxLinksPerPage'] = stub[:max_links_per_page] unless stub[:max_links_per_page].nil?
        data['MaxContentSizePerPageInMegaBytes'] = Hearth::NumberHelper.serialize(stub[:max_content_size_per_page_in_mega_bytes])
        data['MaxUrlsPerMinuteCrawlRate'] = stub[:max_urls_per_minute_crawl_rate] unless stub[:max_urls_per_minute_crawl_rate].nil?
        data['UrlInclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:url_inclusion_patterns]) unless stub[:url_inclusion_patterns].nil?
        data['UrlExclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:url_exclusion_patterns]) unless stub[:url_exclusion_patterns].nil?
        data['ProxyConfiguration'] = ProxyConfiguration.stub(stub[:proxy_configuration]) unless stub[:proxy_configuration].nil?
        data['AuthenticationConfiguration'] = AuthenticationConfiguration.stub(stub[:authentication_configuration]) unless stub[:authentication_configuration].nil?
        data
      end
    end

    # Structure Stubber for AuthenticationConfiguration
    class AuthenticationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AuthenticationConfiguration')
        visited = visited + ['AuthenticationConfiguration']
        {
          basic_authentication: BasicAuthenticationConfigurationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AuthenticationConfiguration.new
        data = {}
        data['BasicAuthentication'] = BasicAuthenticationConfigurationList.stub(stub[:basic_authentication]) unless stub[:basic_authentication].nil?
        data
      end
    end

    # List Stubber for BasicAuthenticationConfigurationList
    class BasicAuthenticationConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('BasicAuthenticationConfigurationList')
        visited = visited + ['BasicAuthenticationConfigurationList']
        [
          BasicAuthenticationConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << BasicAuthenticationConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for BasicAuthenticationConfiguration
    class BasicAuthenticationConfiguration
      def self.default(visited=[])
        return nil if visited.include?('BasicAuthenticationConfiguration')
        visited = visited + ['BasicAuthenticationConfiguration']
        {
          host: 'host',
          port: 1,
          credentials: 'credentials',
        }
      end

      def self.stub(stub)
        stub ||= Types::BasicAuthenticationConfiguration.new
        data = {}
        data['Host'] = stub[:host] unless stub[:host].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['Credentials'] = stub[:credentials] unless stub[:credentials].nil?
        data
      end
    end

    # Structure Stubber for ProxyConfiguration
    class ProxyConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ProxyConfiguration')
        visited = visited + ['ProxyConfiguration']
        {
          host: 'host',
          port: 1,
          credentials: 'credentials',
        }
      end

      def self.stub(stub)
        stub ||= Types::ProxyConfiguration.new
        data = {}
        data['Host'] = stub[:host] unless stub[:host].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['Credentials'] = stub[:credentials] unless stub[:credentials].nil?
        data
      end
    end

    # Structure Stubber for Urls
    class Urls
      def self.default(visited=[])
        return nil if visited.include?('Urls')
        visited = visited + ['Urls']
        {
          seed_url_configuration: SeedUrlConfiguration.default(visited),
          site_maps_configuration: SiteMapsConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Urls.new
        data = {}
        data['SeedUrlConfiguration'] = SeedUrlConfiguration.stub(stub[:seed_url_configuration]) unless stub[:seed_url_configuration].nil?
        data['SiteMapsConfiguration'] = SiteMapsConfiguration.stub(stub[:site_maps_configuration]) unless stub[:site_maps_configuration].nil?
        data
      end
    end

    # Structure Stubber for SiteMapsConfiguration
    class SiteMapsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SiteMapsConfiguration')
        visited = visited + ['SiteMapsConfiguration']
        {
          site_maps: SiteMapsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SiteMapsConfiguration.new
        data = {}
        data['SiteMaps'] = SiteMapsList.stub(stub[:site_maps]) unless stub[:site_maps].nil?
        data
      end
    end

    # List Stubber for SiteMapsList
    class SiteMapsList
      def self.default(visited=[])
        return nil if visited.include?('SiteMapsList')
        visited = visited + ['SiteMapsList']
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

    # Structure Stubber for SeedUrlConfiguration
    class SeedUrlConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SeedUrlConfiguration')
        visited = visited + ['SeedUrlConfiguration']
        {
          seed_urls: SeedUrlList.default(visited),
          web_crawler_mode: 'web_crawler_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::SeedUrlConfiguration.new
        data = {}
        data['SeedUrls'] = SeedUrlList.stub(stub[:seed_urls]) unless stub[:seed_urls].nil?
        data['WebCrawlerMode'] = stub[:web_crawler_mode] unless stub[:web_crawler_mode].nil?
        data
      end
    end

    # List Stubber for SeedUrlList
    class SeedUrlList
      def self.default(visited=[])
        return nil if visited.include?('SeedUrlList')
        visited = visited + ['SeedUrlList']
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

    # Structure Stubber for GoogleDriveConfiguration
    class GoogleDriveConfiguration
      def self.default(visited=[])
        return nil if visited.include?('GoogleDriveConfiguration')
        visited = visited + ['GoogleDriveConfiguration']
        {
          secret_arn: 'secret_arn',
          inclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          exclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          exclude_mime_types: ExcludeMimeTypesList.default(visited),
          exclude_user_accounts: ExcludeUserAccountsList.default(visited),
          exclude_shared_drives: ExcludeSharedDrivesList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GoogleDriveConfiguration.new
        data = {}
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data['InclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:inclusion_patterns]) unless stub[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:exclusion_patterns]) unless stub[:exclusion_patterns].nil?
        data['FieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:field_mappings]) unless stub[:field_mappings].nil?
        data['ExcludeMimeTypes'] = ExcludeMimeTypesList.stub(stub[:exclude_mime_types]) unless stub[:exclude_mime_types].nil?
        data['ExcludeUserAccounts'] = ExcludeUserAccountsList.stub(stub[:exclude_user_accounts]) unless stub[:exclude_user_accounts].nil?
        data['ExcludeSharedDrives'] = ExcludeSharedDrivesList.stub(stub[:exclude_shared_drives]) unless stub[:exclude_shared_drives].nil?
        data
      end
    end

    # List Stubber for ExcludeSharedDrivesList
    class ExcludeSharedDrivesList
      def self.default(visited=[])
        return nil if visited.include?('ExcludeSharedDrivesList')
        visited = visited + ['ExcludeSharedDrivesList']
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

    # List Stubber for ExcludeUserAccountsList
    class ExcludeUserAccountsList
      def self.default(visited=[])
        return nil if visited.include?('ExcludeUserAccountsList')
        visited = visited + ['ExcludeUserAccountsList']
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

    # List Stubber for ExcludeMimeTypesList
    class ExcludeMimeTypesList
      def self.default(visited=[])
        return nil if visited.include?('ExcludeMimeTypesList')
        visited = visited + ['ExcludeMimeTypesList']
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

    # Structure Stubber for ConfluenceConfiguration
    class ConfluenceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ConfluenceConfiguration')
        visited = visited + ['ConfluenceConfiguration']
        {
          server_url: 'server_url',
          secret_arn: 'secret_arn',
          version: 'version',
          space_configuration: ConfluenceSpaceConfiguration.default(visited),
          page_configuration: ConfluencePageConfiguration.default(visited),
          blog_configuration: ConfluenceBlogConfiguration.default(visited),
          attachment_configuration: ConfluenceAttachmentConfiguration.default(visited),
          vpc_configuration: DataSourceVpcConfiguration.default(visited),
          inclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          exclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfluenceConfiguration.new
        data = {}
        data['ServerUrl'] = stub[:server_url] unless stub[:server_url].nil?
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['SpaceConfiguration'] = ConfluenceSpaceConfiguration.stub(stub[:space_configuration]) unless stub[:space_configuration].nil?
        data['PageConfiguration'] = ConfluencePageConfiguration.stub(stub[:page_configuration]) unless stub[:page_configuration].nil?
        data['BlogConfiguration'] = ConfluenceBlogConfiguration.stub(stub[:blog_configuration]) unless stub[:blog_configuration].nil?
        data['AttachmentConfiguration'] = ConfluenceAttachmentConfiguration.stub(stub[:attachment_configuration]) unless stub[:attachment_configuration].nil?
        data['VpcConfiguration'] = DataSourceVpcConfiguration.stub(stub[:vpc_configuration]) unless stub[:vpc_configuration].nil?
        data['InclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:inclusion_patterns]) unless stub[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:exclusion_patterns]) unless stub[:exclusion_patterns].nil?
        data
      end
    end

    # Structure Stubber for ConfluenceAttachmentConfiguration
    class ConfluenceAttachmentConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ConfluenceAttachmentConfiguration')
        visited = visited + ['ConfluenceAttachmentConfiguration']
        {
          crawl_attachments: false,
          attachment_field_mappings: ConfluenceAttachmentFieldMappingsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfluenceAttachmentConfiguration.new
        data = {}
        data['CrawlAttachments'] = stub[:crawl_attachments] unless stub[:crawl_attachments].nil?
        data['AttachmentFieldMappings'] = ConfluenceAttachmentFieldMappingsList.stub(stub[:attachment_field_mappings]) unless stub[:attachment_field_mappings].nil?
        data
      end
    end

    # List Stubber for ConfluenceAttachmentFieldMappingsList
    class ConfluenceAttachmentFieldMappingsList
      def self.default(visited=[])
        return nil if visited.include?('ConfluenceAttachmentFieldMappingsList')
        visited = visited + ['ConfluenceAttachmentFieldMappingsList']
        [
          ConfluenceAttachmentToIndexFieldMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConfluenceAttachmentToIndexFieldMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConfluenceAttachmentToIndexFieldMapping
    class ConfluenceAttachmentToIndexFieldMapping
      def self.default(visited=[])
        return nil if visited.include?('ConfluenceAttachmentToIndexFieldMapping')
        visited = visited + ['ConfluenceAttachmentToIndexFieldMapping']
        {
          data_source_field_name: 'data_source_field_name',
          date_field_format: 'date_field_format',
          index_field_name: 'index_field_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfluenceAttachmentToIndexFieldMapping.new
        data = {}
        data['DataSourceFieldName'] = stub[:data_source_field_name] unless stub[:data_source_field_name].nil?
        data['DateFieldFormat'] = stub[:date_field_format] unless stub[:date_field_format].nil?
        data['IndexFieldName'] = stub[:index_field_name] unless stub[:index_field_name].nil?
        data
      end
    end

    # Structure Stubber for ConfluenceBlogConfiguration
    class ConfluenceBlogConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ConfluenceBlogConfiguration')
        visited = visited + ['ConfluenceBlogConfiguration']
        {
          blog_field_mappings: ConfluenceBlogFieldMappingsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfluenceBlogConfiguration.new
        data = {}
        data['BlogFieldMappings'] = ConfluenceBlogFieldMappingsList.stub(stub[:blog_field_mappings]) unless stub[:blog_field_mappings].nil?
        data
      end
    end

    # List Stubber for ConfluenceBlogFieldMappingsList
    class ConfluenceBlogFieldMappingsList
      def self.default(visited=[])
        return nil if visited.include?('ConfluenceBlogFieldMappingsList')
        visited = visited + ['ConfluenceBlogFieldMappingsList']
        [
          ConfluenceBlogToIndexFieldMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConfluenceBlogToIndexFieldMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConfluenceBlogToIndexFieldMapping
    class ConfluenceBlogToIndexFieldMapping
      def self.default(visited=[])
        return nil if visited.include?('ConfluenceBlogToIndexFieldMapping')
        visited = visited + ['ConfluenceBlogToIndexFieldMapping']
        {
          data_source_field_name: 'data_source_field_name',
          date_field_format: 'date_field_format',
          index_field_name: 'index_field_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfluenceBlogToIndexFieldMapping.new
        data = {}
        data['DataSourceFieldName'] = stub[:data_source_field_name] unless stub[:data_source_field_name].nil?
        data['DateFieldFormat'] = stub[:date_field_format] unless stub[:date_field_format].nil?
        data['IndexFieldName'] = stub[:index_field_name] unless stub[:index_field_name].nil?
        data
      end
    end

    # Structure Stubber for ConfluencePageConfiguration
    class ConfluencePageConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ConfluencePageConfiguration')
        visited = visited + ['ConfluencePageConfiguration']
        {
          page_field_mappings: ConfluencePageFieldMappingsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfluencePageConfiguration.new
        data = {}
        data['PageFieldMappings'] = ConfluencePageFieldMappingsList.stub(stub[:page_field_mappings]) unless stub[:page_field_mappings].nil?
        data
      end
    end

    # List Stubber for ConfluencePageFieldMappingsList
    class ConfluencePageFieldMappingsList
      def self.default(visited=[])
        return nil if visited.include?('ConfluencePageFieldMappingsList')
        visited = visited + ['ConfluencePageFieldMappingsList']
        [
          ConfluencePageToIndexFieldMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConfluencePageToIndexFieldMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConfluencePageToIndexFieldMapping
    class ConfluencePageToIndexFieldMapping
      def self.default(visited=[])
        return nil if visited.include?('ConfluencePageToIndexFieldMapping')
        visited = visited + ['ConfluencePageToIndexFieldMapping']
        {
          data_source_field_name: 'data_source_field_name',
          date_field_format: 'date_field_format',
          index_field_name: 'index_field_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfluencePageToIndexFieldMapping.new
        data = {}
        data['DataSourceFieldName'] = stub[:data_source_field_name] unless stub[:data_source_field_name].nil?
        data['DateFieldFormat'] = stub[:date_field_format] unless stub[:date_field_format].nil?
        data['IndexFieldName'] = stub[:index_field_name] unless stub[:index_field_name].nil?
        data
      end
    end

    # Structure Stubber for ConfluenceSpaceConfiguration
    class ConfluenceSpaceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ConfluenceSpaceConfiguration')
        visited = visited + ['ConfluenceSpaceConfiguration']
        {
          crawl_personal_spaces: false,
          crawl_archived_spaces: false,
          include_spaces: ConfluenceSpaceList.default(visited),
          exclude_spaces: ConfluenceSpaceList.default(visited),
          space_field_mappings: ConfluenceSpaceFieldMappingsList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfluenceSpaceConfiguration.new
        data = {}
        data['CrawlPersonalSpaces'] = stub[:crawl_personal_spaces] unless stub[:crawl_personal_spaces].nil?
        data['CrawlArchivedSpaces'] = stub[:crawl_archived_spaces] unless stub[:crawl_archived_spaces].nil?
        data['IncludeSpaces'] = ConfluenceSpaceList.stub(stub[:include_spaces]) unless stub[:include_spaces].nil?
        data['ExcludeSpaces'] = ConfluenceSpaceList.stub(stub[:exclude_spaces]) unless stub[:exclude_spaces].nil?
        data['SpaceFieldMappings'] = ConfluenceSpaceFieldMappingsList.stub(stub[:space_field_mappings]) unless stub[:space_field_mappings].nil?
        data
      end
    end

    # List Stubber for ConfluenceSpaceFieldMappingsList
    class ConfluenceSpaceFieldMappingsList
      def self.default(visited=[])
        return nil if visited.include?('ConfluenceSpaceFieldMappingsList')
        visited = visited + ['ConfluenceSpaceFieldMappingsList']
        [
          ConfluenceSpaceToIndexFieldMapping.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ConfluenceSpaceToIndexFieldMapping.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ConfluenceSpaceToIndexFieldMapping
    class ConfluenceSpaceToIndexFieldMapping
      def self.default(visited=[])
        return nil if visited.include?('ConfluenceSpaceToIndexFieldMapping')
        visited = visited + ['ConfluenceSpaceToIndexFieldMapping']
        {
          data_source_field_name: 'data_source_field_name',
          date_field_format: 'date_field_format',
          index_field_name: 'index_field_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConfluenceSpaceToIndexFieldMapping.new
        data = {}
        data['DataSourceFieldName'] = stub[:data_source_field_name] unless stub[:data_source_field_name].nil?
        data['DateFieldFormat'] = stub[:date_field_format] unless stub[:date_field_format].nil?
        data['IndexFieldName'] = stub[:index_field_name] unless stub[:index_field_name].nil?
        data
      end
    end

    # List Stubber for ConfluenceSpaceList
    class ConfluenceSpaceList
      def self.default(visited=[])
        return nil if visited.include?('ConfluenceSpaceList')
        visited = visited + ['ConfluenceSpaceList']
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

    # Structure Stubber for ServiceNowConfiguration
    class ServiceNowConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ServiceNowConfiguration')
        visited = visited + ['ServiceNowConfiguration']
        {
          host_url: 'host_url',
          secret_arn: 'secret_arn',
          service_now_build_version: 'service_now_build_version',
          knowledge_article_configuration: ServiceNowKnowledgeArticleConfiguration.default(visited),
          service_catalog_configuration: ServiceNowServiceCatalogConfiguration.default(visited),
          authentication_type: 'authentication_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceNowConfiguration.new
        data = {}
        data['HostUrl'] = stub[:host_url] unless stub[:host_url].nil?
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data['ServiceNowBuildVersion'] = stub[:service_now_build_version] unless stub[:service_now_build_version].nil?
        data['KnowledgeArticleConfiguration'] = ServiceNowKnowledgeArticleConfiguration.stub(stub[:knowledge_article_configuration]) unless stub[:knowledge_article_configuration].nil?
        data['ServiceCatalogConfiguration'] = ServiceNowServiceCatalogConfiguration.stub(stub[:service_catalog_configuration]) unless stub[:service_catalog_configuration].nil?
        data['AuthenticationType'] = stub[:authentication_type] unless stub[:authentication_type].nil?
        data
      end
    end

    # Structure Stubber for ServiceNowServiceCatalogConfiguration
    class ServiceNowServiceCatalogConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ServiceNowServiceCatalogConfiguration')
        visited = visited + ['ServiceNowServiceCatalogConfiguration']
        {
          crawl_attachments: false,
          include_attachment_file_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          exclude_attachment_file_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          document_data_field_name: 'document_data_field_name',
          document_title_field_name: 'document_title_field_name',
          field_mappings: DataSourceToIndexFieldMappingList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceNowServiceCatalogConfiguration.new
        data = {}
        data['CrawlAttachments'] = stub[:crawl_attachments] unless stub[:crawl_attachments].nil?
        data['IncludeAttachmentFilePatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:include_attachment_file_patterns]) unless stub[:include_attachment_file_patterns].nil?
        data['ExcludeAttachmentFilePatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:exclude_attachment_file_patterns]) unless stub[:exclude_attachment_file_patterns].nil?
        data['DocumentDataFieldName'] = stub[:document_data_field_name] unless stub[:document_data_field_name].nil?
        data['DocumentTitleFieldName'] = stub[:document_title_field_name] unless stub[:document_title_field_name].nil?
        data['FieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:field_mappings]) unless stub[:field_mappings].nil?
        data
      end
    end

    # Structure Stubber for ServiceNowKnowledgeArticleConfiguration
    class ServiceNowKnowledgeArticleConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ServiceNowKnowledgeArticleConfiguration')
        visited = visited + ['ServiceNowKnowledgeArticleConfiguration']
        {
          crawl_attachments: false,
          include_attachment_file_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          exclude_attachment_file_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          document_data_field_name: 'document_data_field_name',
          document_title_field_name: 'document_title_field_name',
          field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          filter_query: 'filter_query',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceNowKnowledgeArticleConfiguration.new
        data = {}
        data['CrawlAttachments'] = stub[:crawl_attachments] unless stub[:crawl_attachments].nil?
        data['IncludeAttachmentFilePatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:include_attachment_file_patterns]) unless stub[:include_attachment_file_patterns].nil?
        data['ExcludeAttachmentFilePatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:exclude_attachment_file_patterns]) unless stub[:exclude_attachment_file_patterns].nil?
        data['DocumentDataFieldName'] = stub[:document_data_field_name] unless stub[:document_data_field_name].nil?
        data['DocumentTitleFieldName'] = stub[:document_title_field_name] unless stub[:document_title_field_name].nil?
        data['FieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:field_mappings]) unless stub[:field_mappings].nil?
        data['FilterQuery'] = stub[:filter_query] unless stub[:filter_query].nil?
        data
      end
    end

    # Structure Stubber for OneDriveConfiguration
    class OneDriveConfiguration
      def self.default(visited=[])
        return nil if visited.include?('OneDriveConfiguration')
        visited = visited + ['OneDriveConfiguration']
        {
          tenant_domain: 'tenant_domain',
          secret_arn: 'secret_arn',
          one_drive_users: OneDriveUsers.default(visited),
          inclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          exclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          disable_local_groups: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::OneDriveConfiguration.new
        data = {}
        data['TenantDomain'] = stub[:tenant_domain] unless stub[:tenant_domain].nil?
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data['OneDriveUsers'] = OneDriveUsers.stub(stub[:one_drive_users]) unless stub[:one_drive_users].nil?
        data['InclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:inclusion_patterns]) unless stub[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:exclusion_patterns]) unless stub[:exclusion_patterns].nil?
        data['FieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:field_mappings]) unless stub[:field_mappings].nil?
        data['DisableLocalGroups'] = stub[:disable_local_groups] unless stub[:disable_local_groups].nil?
        data
      end
    end

    # Structure Stubber for OneDriveUsers
    class OneDriveUsers
      def self.default(visited=[])
        return nil if visited.include?('OneDriveUsers')
        visited = visited + ['OneDriveUsers']
        {
          one_drive_user_list: OneDriveUserList.default(visited),
          one_drive_user_s3_path: S3Path.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::OneDriveUsers.new
        data = {}
        data['OneDriveUserList'] = OneDriveUserList.stub(stub[:one_drive_user_list]) unless stub[:one_drive_user_list].nil?
        data['OneDriveUserS3Path'] = S3Path.stub(stub[:one_drive_user_s3_path]) unless stub[:one_drive_user_s3_path].nil?
        data
      end
    end

    # List Stubber for OneDriveUserList
    class OneDriveUserList
      def self.default(visited=[])
        return nil if visited.include?('OneDriveUserList')
        visited = visited + ['OneDriveUserList']
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

    # Structure Stubber for SalesforceConfiguration
    class SalesforceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SalesforceConfiguration')
        visited = visited + ['SalesforceConfiguration']
        {
          server_url: 'server_url',
          secret_arn: 'secret_arn',
          standard_object_configurations: SalesforceStandardObjectConfigurationList.default(visited),
          knowledge_article_configuration: SalesforceKnowledgeArticleConfiguration.default(visited),
          chatter_feed_configuration: SalesforceChatterFeedConfiguration.default(visited),
          crawl_attachments: false,
          standard_object_attachment_configuration: SalesforceStandardObjectAttachmentConfiguration.default(visited),
          include_attachment_file_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          exclude_attachment_file_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SalesforceConfiguration.new
        data = {}
        data['ServerUrl'] = stub[:server_url] unless stub[:server_url].nil?
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data['StandardObjectConfigurations'] = SalesforceStandardObjectConfigurationList.stub(stub[:standard_object_configurations]) unless stub[:standard_object_configurations].nil?
        data['KnowledgeArticleConfiguration'] = SalesforceKnowledgeArticleConfiguration.stub(stub[:knowledge_article_configuration]) unless stub[:knowledge_article_configuration].nil?
        data['ChatterFeedConfiguration'] = SalesforceChatterFeedConfiguration.stub(stub[:chatter_feed_configuration]) unless stub[:chatter_feed_configuration].nil?
        data['CrawlAttachments'] = stub[:crawl_attachments] unless stub[:crawl_attachments].nil?
        data['StandardObjectAttachmentConfiguration'] = SalesforceStandardObjectAttachmentConfiguration.stub(stub[:standard_object_attachment_configuration]) unless stub[:standard_object_attachment_configuration].nil?
        data['IncludeAttachmentFilePatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:include_attachment_file_patterns]) unless stub[:include_attachment_file_patterns].nil?
        data['ExcludeAttachmentFilePatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:exclude_attachment_file_patterns]) unless stub[:exclude_attachment_file_patterns].nil?
        data
      end
    end

    # Structure Stubber for SalesforceStandardObjectAttachmentConfiguration
    class SalesforceStandardObjectAttachmentConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SalesforceStandardObjectAttachmentConfiguration')
        visited = visited + ['SalesforceStandardObjectAttachmentConfiguration']
        {
          document_title_field_name: 'document_title_field_name',
          field_mappings: DataSourceToIndexFieldMappingList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SalesforceStandardObjectAttachmentConfiguration.new
        data = {}
        data['DocumentTitleFieldName'] = stub[:document_title_field_name] unless stub[:document_title_field_name].nil?
        data['FieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:field_mappings]) unless stub[:field_mappings].nil?
        data
      end
    end

    # Structure Stubber for SalesforceChatterFeedConfiguration
    class SalesforceChatterFeedConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SalesforceChatterFeedConfiguration')
        visited = visited + ['SalesforceChatterFeedConfiguration']
        {
          document_data_field_name: 'document_data_field_name',
          document_title_field_name: 'document_title_field_name',
          field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          include_filter_types: SalesforceChatterFeedIncludeFilterTypes.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SalesforceChatterFeedConfiguration.new
        data = {}
        data['DocumentDataFieldName'] = stub[:document_data_field_name] unless stub[:document_data_field_name].nil?
        data['DocumentTitleFieldName'] = stub[:document_title_field_name] unless stub[:document_title_field_name].nil?
        data['FieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:field_mappings]) unless stub[:field_mappings].nil?
        data['IncludeFilterTypes'] = SalesforceChatterFeedIncludeFilterTypes.stub(stub[:include_filter_types]) unless stub[:include_filter_types].nil?
        data
      end
    end

    # List Stubber for SalesforceChatterFeedIncludeFilterTypes
    class SalesforceChatterFeedIncludeFilterTypes
      def self.default(visited=[])
        return nil if visited.include?('SalesforceChatterFeedIncludeFilterTypes')
        visited = visited + ['SalesforceChatterFeedIncludeFilterTypes']
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

    # Structure Stubber for SalesforceKnowledgeArticleConfiguration
    class SalesforceKnowledgeArticleConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SalesforceKnowledgeArticleConfiguration')
        visited = visited + ['SalesforceKnowledgeArticleConfiguration']
        {
          included_states: SalesforceKnowledgeArticleStateList.default(visited),
          standard_knowledge_article_type_configuration: SalesforceStandardKnowledgeArticleTypeConfiguration.default(visited),
          custom_knowledge_article_type_configurations: SalesforceCustomKnowledgeArticleTypeConfigurationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SalesforceKnowledgeArticleConfiguration.new
        data = {}
        data['IncludedStates'] = SalesforceKnowledgeArticleStateList.stub(stub[:included_states]) unless stub[:included_states].nil?
        data['StandardKnowledgeArticleTypeConfiguration'] = SalesforceStandardKnowledgeArticleTypeConfiguration.stub(stub[:standard_knowledge_article_type_configuration]) unless stub[:standard_knowledge_article_type_configuration].nil?
        data['CustomKnowledgeArticleTypeConfigurations'] = SalesforceCustomKnowledgeArticleTypeConfigurationList.stub(stub[:custom_knowledge_article_type_configurations]) unless stub[:custom_knowledge_article_type_configurations].nil?
        data
      end
    end

    # List Stubber for SalesforceCustomKnowledgeArticleTypeConfigurationList
    class SalesforceCustomKnowledgeArticleTypeConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('SalesforceCustomKnowledgeArticleTypeConfigurationList')
        visited = visited + ['SalesforceCustomKnowledgeArticleTypeConfigurationList']
        [
          SalesforceCustomKnowledgeArticleTypeConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SalesforceCustomKnowledgeArticleTypeConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SalesforceCustomKnowledgeArticleTypeConfiguration
    class SalesforceCustomKnowledgeArticleTypeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SalesforceCustomKnowledgeArticleTypeConfiguration')
        visited = visited + ['SalesforceCustomKnowledgeArticleTypeConfiguration']
        {
          name: 'name',
          document_data_field_name: 'document_data_field_name',
          document_title_field_name: 'document_title_field_name',
          field_mappings: DataSourceToIndexFieldMappingList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SalesforceCustomKnowledgeArticleTypeConfiguration.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DocumentDataFieldName'] = stub[:document_data_field_name] unless stub[:document_data_field_name].nil?
        data['DocumentTitleFieldName'] = stub[:document_title_field_name] unless stub[:document_title_field_name].nil?
        data['FieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:field_mappings]) unless stub[:field_mappings].nil?
        data
      end
    end

    # Structure Stubber for SalesforceStandardKnowledgeArticleTypeConfiguration
    class SalesforceStandardKnowledgeArticleTypeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SalesforceStandardKnowledgeArticleTypeConfiguration')
        visited = visited + ['SalesforceStandardKnowledgeArticleTypeConfiguration']
        {
          document_data_field_name: 'document_data_field_name',
          document_title_field_name: 'document_title_field_name',
          field_mappings: DataSourceToIndexFieldMappingList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SalesforceStandardKnowledgeArticleTypeConfiguration.new
        data = {}
        data['DocumentDataFieldName'] = stub[:document_data_field_name] unless stub[:document_data_field_name].nil?
        data['DocumentTitleFieldName'] = stub[:document_title_field_name] unless stub[:document_title_field_name].nil?
        data['FieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:field_mappings]) unless stub[:field_mappings].nil?
        data
      end
    end

    # List Stubber for SalesforceKnowledgeArticleStateList
    class SalesforceKnowledgeArticleStateList
      def self.default(visited=[])
        return nil if visited.include?('SalesforceKnowledgeArticleStateList')
        visited = visited + ['SalesforceKnowledgeArticleStateList']
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

    # List Stubber for SalesforceStandardObjectConfigurationList
    class SalesforceStandardObjectConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('SalesforceStandardObjectConfigurationList')
        visited = visited + ['SalesforceStandardObjectConfigurationList']
        [
          SalesforceStandardObjectConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SalesforceStandardObjectConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SalesforceStandardObjectConfiguration
    class SalesforceStandardObjectConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SalesforceStandardObjectConfiguration')
        visited = visited + ['SalesforceStandardObjectConfiguration']
        {
          name: 'name',
          document_data_field_name: 'document_data_field_name',
          document_title_field_name: 'document_title_field_name',
          field_mappings: DataSourceToIndexFieldMappingList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SalesforceStandardObjectConfiguration.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DocumentDataFieldName'] = stub[:document_data_field_name] unless stub[:document_data_field_name].nil?
        data['DocumentTitleFieldName'] = stub[:document_title_field_name] unless stub[:document_title_field_name].nil?
        data['FieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:field_mappings]) unless stub[:field_mappings].nil?
        data
      end
    end

    # Structure Stubber for DatabaseConfiguration
    class DatabaseConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DatabaseConfiguration')
        visited = visited + ['DatabaseConfiguration']
        {
          database_engine_type: 'database_engine_type',
          connection_configuration: ConnectionConfiguration.default(visited),
          vpc_configuration: DataSourceVpcConfiguration.default(visited),
          column_configuration: ColumnConfiguration.default(visited),
          acl_configuration: AclConfiguration.default(visited),
          sql_configuration: SqlConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DatabaseConfiguration.new
        data = {}
        data['DatabaseEngineType'] = stub[:database_engine_type] unless stub[:database_engine_type].nil?
        data['ConnectionConfiguration'] = ConnectionConfiguration.stub(stub[:connection_configuration]) unless stub[:connection_configuration].nil?
        data['VpcConfiguration'] = DataSourceVpcConfiguration.stub(stub[:vpc_configuration]) unless stub[:vpc_configuration].nil?
        data['ColumnConfiguration'] = ColumnConfiguration.stub(stub[:column_configuration]) unless stub[:column_configuration].nil?
        data['AclConfiguration'] = AclConfiguration.stub(stub[:acl_configuration]) unless stub[:acl_configuration].nil?
        data['SqlConfiguration'] = SqlConfiguration.stub(stub[:sql_configuration]) unless stub[:sql_configuration].nil?
        data
      end
    end

    # Structure Stubber for SqlConfiguration
    class SqlConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SqlConfiguration')
        visited = visited + ['SqlConfiguration']
        {
          query_identifiers_enclosing_option: 'query_identifiers_enclosing_option',
        }
      end

      def self.stub(stub)
        stub ||= Types::SqlConfiguration.new
        data = {}
        data['QueryIdentifiersEnclosingOption'] = stub[:query_identifiers_enclosing_option] unless stub[:query_identifiers_enclosing_option].nil?
        data
      end
    end

    # Structure Stubber for AclConfiguration
    class AclConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AclConfiguration')
        visited = visited + ['AclConfiguration']
        {
          allowed_groups_column_name: 'allowed_groups_column_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::AclConfiguration.new
        data = {}
        data['AllowedGroupsColumnName'] = stub[:allowed_groups_column_name] unless stub[:allowed_groups_column_name].nil?
        data
      end
    end

    # Structure Stubber for ColumnConfiguration
    class ColumnConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ColumnConfiguration')
        visited = visited + ['ColumnConfiguration']
        {
          document_id_column_name: 'document_id_column_name',
          document_data_column_name: 'document_data_column_name',
          document_title_column_name: 'document_title_column_name',
          field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          change_detecting_columns: ChangeDetectingColumns.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ColumnConfiguration.new
        data = {}
        data['DocumentIdColumnName'] = stub[:document_id_column_name] unless stub[:document_id_column_name].nil?
        data['DocumentDataColumnName'] = stub[:document_data_column_name] unless stub[:document_data_column_name].nil?
        data['DocumentTitleColumnName'] = stub[:document_title_column_name] unless stub[:document_title_column_name].nil?
        data['FieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:field_mappings]) unless stub[:field_mappings].nil?
        data['ChangeDetectingColumns'] = ChangeDetectingColumns.stub(stub[:change_detecting_columns]) unless stub[:change_detecting_columns].nil?
        data
      end
    end

    # List Stubber for ChangeDetectingColumns
    class ChangeDetectingColumns
      def self.default(visited=[])
        return nil if visited.include?('ChangeDetectingColumns')
        visited = visited + ['ChangeDetectingColumns']
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

    # Structure Stubber for ConnectionConfiguration
    class ConnectionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ConnectionConfiguration')
        visited = visited + ['ConnectionConfiguration']
        {
          database_host: 'database_host',
          database_port: 1,
          database_name: 'database_name',
          table_name: 'table_name',
          secret_arn: 'secret_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ConnectionConfiguration.new
        data = {}
        data['DatabaseHost'] = stub[:database_host] unless stub[:database_host].nil?
        data['DatabasePort'] = stub[:database_port] unless stub[:database_port].nil?
        data['DatabaseName'] = stub[:database_name] unless stub[:database_name].nil?
        data['TableName'] = stub[:table_name] unless stub[:table_name].nil?
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data
      end
    end

    # Structure Stubber for SharePointConfiguration
    class SharePointConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SharePointConfiguration')
        visited = visited + ['SharePointConfiguration']
        {
          share_point_version: 'share_point_version',
          urls: SharePointUrlList.default(visited),
          secret_arn: 'secret_arn',
          crawl_attachments: false,
          use_change_log: false,
          inclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          exclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          vpc_configuration: DataSourceVpcConfiguration.default(visited),
          field_mappings: DataSourceToIndexFieldMappingList.default(visited),
          document_title_field_name: 'document_title_field_name',
          disable_local_groups: false,
          ssl_certificate_s3_path: S3Path.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SharePointConfiguration.new
        data = {}
        data['SharePointVersion'] = stub[:share_point_version] unless stub[:share_point_version].nil?
        data['Urls'] = SharePointUrlList.stub(stub[:urls]) unless stub[:urls].nil?
        data['SecretArn'] = stub[:secret_arn] unless stub[:secret_arn].nil?
        data['CrawlAttachments'] = stub[:crawl_attachments] unless stub[:crawl_attachments].nil?
        data['UseChangeLog'] = stub[:use_change_log] unless stub[:use_change_log].nil?
        data['InclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:inclusion_patterns]) unless stub[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:exclusion_patterns]) unless stub[:exclusion_patterns].nil?
        data['VpcConfiguration'] = DataSourceVpcConfiguration.stub(stub[:vpc_configuration]) unless stub[:vpc_configuration].nil?
        data['FieldMappings'] = DataSourceToIndexFieldMappingList.stub(stub[:field_mappings]) unless stub[:field_mappings].nil?
        data['DocumentTitleFieldName'] = stub[:document_title_field_name] unless stub[:document_title_field_name].nil?
        data['DisableLocalGroups'] = stub[:disable_local_groups] unless stub[:disable_local_groups].nil?
        data['SslCertificateS3Path'] = S3Path.stub(stub[:ssl_certificate_s3_path]) unless stub[:ssl_certificate_s3_path].nil?
        data
      end
    end

    # List Stubber for SharePointUrlList
    class SharePointUrlList
      def self.default(visited=[])
        return nil if visited.include?('SharePointUrlList')
        visited = visited + ['SharePointUrlList']
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

    # Structure Stubber for S3DataSourceConfiguration
    class S3DataSourceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('S3DataSourceConfiguration')
        visited = visited + ['S3DataSourceConfiguration']
        {
          bucket_name: 'bucket_name',
          inclusion_prefixes: DataSourceInclusionsExclusionsStrings.default(visited),
          inclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          exclusion_patterns: DataSourceInclusionsExclusionsStrings.default(visited),
          documents_metadata_configuration: DocumentsMetadataConfiguration.default(visited),
          access_control_list_configuration: AccessControlListConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::S3DataSourceConfiguration.new
        data = {}
        data['BucketName'] = stub[:bucket_name] unless stub[:bucket_name].nil?
        data['InclusionPrefixes'] = DataSourceInclusionsExclusionsStrings.stub(stub[:inclusion_prefixes]) unless stub[:inclusion_prefixes].nil?
        data['InclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:inclusion_patterns]) unless stub[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = DataSourceInclusionsExclusionsStrings.stub(stub[:exclusion_patterns]) unless stub[:exclusion_patterns].nil?
        data['DocumentsMetadataConfiguration'] = DocumentsMetadataConfiguration.stub(stub[:documents_metadata_configuration]) unless stub[:documents_metadata_configuration].nil?
        data['AccessControlListConfiguration'] = AccessControlListConfiguration.stub(stub[:access_control_list_configuration]) unless stub[:access_control_list_configuration].nil?
        data
      end
    end

    # Structure Stubber for AccessControlListConfiguration
    class AccessControlListConfiguration
      def self.default(visited=[])
        return nil if visited.include?('AccessControlListConfiguration')
        visited = visited + ['AccessControlListConfiguration']
        {
          key_path: 'key_path',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessControlListConfiguration.new
        data = {}
        data['KeyPath'] = stub[:key_path] unless stub[:key_path].nil?
        data
      end
    end

    # Structure Stubber for DocumentsMetadataConfiguration
    class DocumentsMetadataConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DocumentsMetadataConfiguration')
        visited = visited + ['DocumentsMetadataConfiguration']
        {
          s3_prefix: 's3_prefix',
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentsMetadataConfiguration.new
        data = {}
        data['S3Prefix'] = stub[:s3_prefix] unless stub[:s3_prefix].nil?
        data
      end
    end

    # Operation Stubber for DescribeExperience
    class DescribeExperience
      def self.default(visited=[])
        {
          id: 'id',
          index_id: 'index_id',
          name: 'name',
          endpoints: ExperienceEndpoints.default(visited),
          configuration: ExperienceConfiguration.default(visited),
          created_at: Time.now,
          updated_at: Time.now,
          description: 'description',
          status: 'status',
          role_arn: 'role_arn',
          error_message: 'error_message',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['IndexId'] = stub[:index_id] unless stub[:index_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Endpoints'] = ExperienceEndpoints.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        data['Configuration'] = ExperienceConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ExperienceConfiguration
    class ExperienceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ExperienceConfiguration')
        visited = visited + ['ExperienceConfiguration']
        {
          content_source_configuration: ContentSourceConfiguration.default(visited),
          user_identity_configuration: UserIdentityConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperienceConfiguration.new
        data = {}
        data['ContentSourceConfiguration'] = ContentSourceConfiguration.stub(stub[:content_source_configuration]) unless stub[:content_source_configuration].nil?
        data['UserIdentityConfiguration'] = UserIdentityConfiguration.stub(stub[:user_identity_configuration]) unless stub[:user_identity_configuration].nil?
        data
      end
    end

    # Structure Stubber for UserIdentityConfiguration
    class UserIdentityConfiguration
      def self.default(visited=[])
        return nil if visited.include?('UserIdentityConfiguration')
        visited = visited + ['UserIdentityConfiguration']
        {
          identity_attribute_name: 'identity_attribute_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserIdentityConfiguration.new
        data = {}
        data['IdentityAttributeName'] = stub[:identity_attribute_name] unless stub[:identity_attribute_name].nil?
        data
      end
    end

    # Structure Stubber for ContentSourceConfiguration
    class ContentSourceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ContentSourceConfiguration')
        visited = visited + ['ContentSourceConfiguration']
        {
          data_source_ids: DataSourceIdList.default(visited),
          faq_ids: FaqIdsList.default(visited),
          direct_put_content: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ContentSourceConfiguration.new
        data = {}
        data['DataSourceIds'] = DataSourceIdList.stub(stub[:data_source_ids]) unless stub[:data_source_ids].nil?
        data['FaqIds'] = FaqIdsList.stub(stub[:faq_ids]) unless stub[:faq_ids].nil?
        data['DirectPutContent'] = stub[:direct_put_content] unless stub[:direct_put_content].nil?
        data
      end
    end

    # List Stubber for FaqIdsList
    class FaqIdsList
      def self.default(visited=[])
        return nil if visited.include?('FaqIdsList')
        visited = visited + ['FaqIdsList']
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

    # List Stubber for DataSourceIdList
    class DataSourceIdList
      def self.default(visited=[])
        return nil if visited.include?('DataSourceIdList')
        visited = visited + ['DataSourceIdList']
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

    # List Stubber for ExperienceEndpoints
    class ExperienceEndpoints
      def self.default(visited=[])
        return nil if visited.include?('ExperienceEndpoints')
        visited = visited + ['ExperienceEndpoints']
        [
          ExperienceEndpoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ExperienceEndpoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExperienceEndpoint
    class ExperienceEndpoint
      def self.default(visited=[])
        return nil if visited.include?('ExperienceEndpoint')
        visited = visited + ['ExperienceEndpoint']
        {
          endpoint_type: 'endpoint_type',
          endpoint: 'endpoint',
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperienceEndpoint.new
        data = {}
        data['EndpointType'] = stub[:endpoint_type] unless stub[:endpoint_type].nil?
        data['Endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data
      end
    end

    # Operation Stubber for DescribeFaq
    class DescribeFaq
      def self.default(visited=[])
        {
          id: 'id',
          index_id: 'index_id',
          name: 'name',
          description: 'description',
          created_at: Time.now,
          updated_at: Time.now,
          s3_path: S3Path.default(visited),
          status: 'status',
          role_arn: 'role_arn',
          error_message: 'error_message',
          file_format: 'file_format',
          language_code: 'language_code',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['IndexId'] = stub[:index_id] unless stub[:index_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['S3Path'] = S3Path.stub(stub[:s3_path]) unless stub[:s3_path].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['FileFormat'] = stub[:file_format] unless stub[:file_format].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeIndex
    class DescribeIndex
      def self.default(visited=[])
        {
          name: 'name',
          id: 'id',
          edition: 'edition',
          role_arn: 'role_arn',
          server_side_encryption_configuration: ServerSideEncryptionConfiguration.default(visited),
          status: 'status',
          description: 'description',
          created_at: Time.now,
          updated_at: Time.now,
          document_metadata_configurations: DocumentMetadataConfigurationList.default(visited),
          index_statistics: IndexStatistics.default(visited),
          error_message: 'error_message',
          capacity_units: CapacityUnitsConfiguration.default(visited),
          user_token_configurations: UserTokenConfigurationList.default(visited),
          user_context_policy: 'user_context_policy',
          user_group_resolution_configuration: UserGroupResolutionConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Edition'] = stub[:edition] unless stub[:edition].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['ServerSideEncryptionConfiguration'] = ServerSideEncryptionConfiguration.stub(stub[:server_side_encryption_configuration]) unless stub[:server_side_encryption_configuration].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['DocumentMetadataConfigurations'] = DocumentMetadataConfigurationList.stub(stub[:document_metadata_configurations]) unless stub[:document_metadata_configurations].nil?
        data['IndexStatistics'] = IndexStatistics.stub(stub[:index_statistics]) unless stub[:index_statistics].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['CapacityUnits'] = CapacityUnitsConfiguration.stub(stub[:capacity_units]) unless stub[:capacity_units].nil?
        data['UserTokenConfigurations'] = UserTokenConfigurationList.stub(stub[:user_token_configurations]) unless stub[:user_token_configurations].nil?
        data['UserContextPolicy'] = stub[:user_context_policy] unless stub[:user_context_policy].nil?
        data['UserGroupResolutionConfiguration'] = UserGroupResolutionConfiguration.stub(stub[:user_group_resolution_configuration]) unless stub[:user_group_resolution_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for UserGroupResolutionConfiguration
    class UserGroupResolutionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('UserGroupResolutionConfiguration')
        visited = visited + ['UserGroupResolutionConfiguration']
        {
          user_group_resolution_mode: 'user_group_resolution_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserGroupResolutionConfiguration.new
        data = {}
        data['UserGroupResolutionMode'] = stub[:user_group_resolution_mode] unless stub[:user_group_resolution_mode].nil?
        data
      end
    end

    # List Stubber for UserTokenConfigurationList
    class UserTokenConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('UserTokenConfigurationList')
        visited = visited + ['UserTokenConfigurationList']
        [
          UserTokenConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << UserTokenConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UserTokenConfiguration
    class UserTokenConfiguration
      def self.default(visited=[])
        return nil if visited.include?('UserTokenConfiguration')
        visited = visited + ['UserTokenConfiguration']
        {
          jwt_token_type_configuration: JwtTokenTypeConfiguration.default(visited),
          json_token_type_configuration: JsonTokenTypeConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UserTokenConfiguration.new
        data = {}
        data['JwtTokenTypeConfiguration'] = JwtTokenTypeConfiguration.stub(stub[:jwt_token_type_configuration]) unless stub[:jwt_token_type_configuration].nil?
        data['JsonTokenTypeConfiguration'] = JsonTokenTypeConfiguration.stub(stub[:json_token_type_configuration]) unless stub[:json_token_type_configuration].nil?
        data
      end
    end

    # Structure Stubber for JsonTokenTypeConfiguration
    class JsonTokenTypeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('JsonTokenTypeConfiguration')
        visited = visited + ['JsonTokenTypeConfiguration']
        {
          user_name_attribute_field: 'user_name_attribute_field',
          group_attribute_field: 'group_attribute_field',
        }
      end

      def self.stub(stub)
        stub ||= Types::JsonTokenTypeConfiguration.new
        data = {}
        data['UserNameAttributeField'] = stub[:user_name_attribute_field] unless stub[:user_name_attribute_field].nil?
        data['GroupAttributeField'] = stub[:group_attribute_field] unless stub[:group_attribute_field].nil?
        data
      end
    end

    # Structure Stubber for JwtTokenTypeConfiguration
    class JwtTokenTypeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('JwtTokenTypeConfiguration')
        visited = visited + ['JwtTokenTypeConfiguration']
        {
          key_location: 'key_location',
          url: 'url',
          secret_manager_arn: 'secret_manager_arn',
          user_name_attribute_field: 'user_name_attribute_field',
          group_attribute_field: 'group_attribute_field',
          issuer: 'issuer',
          claim_regex: 'claim_regex',
        }
      end

      def self.stub(stub)
        stub ||= Types::JwtTokenTypeConfiguration.new
        data = {}
        data['KeyLocation'] = stub[:key_location] unless stub[:key_location].nil?
        data['URL'] = stub[:url] unless stub[:url].nil?
        data['SecretManagerArn'] = stub[:secret_manager_arn] unless stub[:secret_manager_arn].nil?
        data['UserNameAttributeField'] = stub[:user_name_attribute_field] unless stub[:user_name_attribute_field].nil?
        data['GroupAttributeField'] = stub[:group_attribute_field] unless stub[:group_attribute_field].nil?
        data['Issuer'] = stub[:issuer] unless stub[:issuer].nil?
        data['ClaimRegex'] = stub[:claim_regex] unless stub[:claim_regex].nil?
        data
      end
    end

    # Structure Stubber for CapacityUnitsConfiguration
    class CapacityUnitsConfiguration
      def self.default(visited=[])
        return nil if visited.include?('CapacityUnitsConfiguration')
        visited = visited + ['CapacityUnitsConfiguration']
        {
          storage_capacity_units: 1,
          query_capacity_units: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::CapacityUnitsConfiguration.new
        data = {}
        data['StorageCapacityUnits'] = stub[:storage_capacity_units] unless stub[:storage_capacity_units].nil?
        data['QueryCapacityUnits'] = stub[:query_capacity_units] unless stub[:query_capacity_units].nil?
        data
      end
    end

    # Structure Stubber for IndexStatistics
    class IndexStatistics
      def self.default(visited=[])
        return nil if visited.include?('IndexStatistics')
        visited = visited + ['IndexStatistics']
        {
          faq_statistics: FaqStatistics.default(visited),
          text_document_statistics: TextDocumentStatistics.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::IndexStatistics.new
        data = {}
        data['FaqStatistics'] = FaqStatistics.stub(stub[:faq_statistics]) unless stub[:faq_statistics].nil?
        data['TextDocumentStatistics'] = TextDocumentStatistics.stub(stub[:text_document_statistics]) unless stub[:text_document_statistics].nil?
        data
      end
    end

    # Structure Stubber for TextDocumentStatistics
    class TextDocumentStatistics
      def self.default(visited=[])
        return nil if visited.include?('TextDocumentStatistics')
        visited = visited + ['TextDocumentStatistics']
        {
          indexed_text_documents_count: 1,
          indexed_text_bytes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::TextDocumentStatistics.new
        data = {}
        data['IndexedTextDocumentsCount'] = stub[:indexed_text_documents_count] unless stub[:indexed_text_documents_count].nil?
        data['IndexedTextBytes'] = stub[:indexed_text_bytes] unless stub[:indexed_text_bytes].nil?
        data
      end
    end

    # Structure Stubber for FaqStatistics
    class FaqStatistics
      def self.default(visited=[])
        return nil if visited.include?('FaqStatistics')
        visited = visited + ['FaqStatistics']
        {
          indexed_question_answers_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::FaqStatistics.new
        data = {}
        data['IndexedQuestionAnswersCount'] = stub[:indexed_question_answers_count] unless stub[:indexed_question_answers_count].nil?
        data
      end
    end

    # List Stubber for DocumentMetadataConfigurationList
    class DocumentMetadataConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('DocumentMetadataConfigurationList')
        visited = visited + ['DocumentMetadataConfigurationList']
        [
          DocumentMetadataConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DocumentMetadataConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DocumentMetadataConfiguration
    class DocumentMetadataConfiguration
      def self.default(visited=[])
        return nil if visited.include?('DocumentMetadataConfiguration')
        visited = visited + ['DocumentMetadataConfiguration']
        {
          name: 'name',
          type: 'type',
          relevance: Relevance.default(visited),
          search: Search.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentMetadataConfiguration.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Relevance'] = Relevance.stub(stub[:relevance]) unless stub[:relevance].nil?
        data['Search'] = Search.stub(stub[:search]) unless stub[:search].nil?
        data
      end
    end

    # Structure Stubber for Search
    class Search
      def self.default(visited=[])
        return nil if visited.include?('Search')
        visited = visited + ['Search']
        {
          facetable: false,
          searchable: false,
          displayable: false,
          sortable: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::Search.new
        data = {}
        data['Facetable'] = stub[:facetable] unless stub[:facetable].nil?
        data['Searchable'] = stub[:searchable] unless stub[:searchable].nil?
        data['Displayable'] = stub[:displayable] unless stub[:displayable].nil?
        data['Sortable'] = stub[:sortable] unless stub[:sortable].nil?
        data
      end
    end

    # Structure Stubber for Relevance
    class Relevance
      def self.default(visited=[])
        return nil if visited.include?('Relevance')
        visited = visited + ['Relevance']
        {
          freshness: false,
          importance: 1,
          duration: 'duration',
          rank_order: 'rank_order',
          value_importance_map: ValueImportanceMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Relevance.new
        data = {}
        data['Freshness'] = stub[:freshness] unless stub[:freshness].nil?
        data['Importance'] = stub[:importance] unless stub[:importance].nil?
        data['Duration'] = stub[:duration] unless stub[:duration].nil?
        data['RankOrder'] = stub[:rank_order] unless stub[:rank_order].nil?
        data['ValueImportanceMap'] = ValueImportanceMap.stub(stub[:value_importance_map]) unless stub[:value_importance_map].nil?
        data
      end
    end

    # Map Stubber for ValueImportanceMap
    class ValueImportanceMap
      def self.default(visited=[])
        return nil if visited.include?('ValueImportanceMap')
        visited = visited + ['ValueImportanceMap']
        {
          test_key: 1
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
        data['KmsKeyId'] = stub[:kms_key_id] unless stub[:kms_key_id].nil?
        data
      end
    end

    # Operation Stubber for DescribePrincipalMapping
    class DescribePrincipalMapping
      def self.default(visited=[])
        {
          index_id: 'index_id',
          data_source_id: 'data_source_id',
          group_id: 'group_id',
          group_ordering_id_summaries: GroupOrderingIdSummaries.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IndexId'] = stub[:index_id] unless stub[:index_id].nil?
        data['DataSourceId'] = stub[:data_source_id] unless stub[:data_source_id].nil?
        data['GroupId'] = stub[:group_id] unless stub[:group_id].nil?
        data['GroupOrderingIdSummaries'] = GroupOrderingIdSummaries.stub(stub[:group_ordering_id_summaries]) unless stub[:group_ordering_id_summaries].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GroupOrderingIdSummaries
    class GroupOrderingIdSummaries
      def self.default(visited=[])
        return nil if visited.include?('GroupOrderingIdSummaries')
        visited = visited + ['GroupOrderingIdSummaries']
        [
          GroupOrderingIdSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GroupOrderingIdSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GroupOrderingIdSummary
    class GroupOrderingIdSummary
      def self.default(visited=[])
        return nil if visited.include?('GroupOrderingIdSummary')
        visited = visited + ['GroupOrderingIdSummary']
        {
          status: 'status',
          last_updated_at: Time.now,
          received_at: Time.now,
          ordering_id: 1,
          failure_reason: 'failure_reason',
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupOrderingIdSummary.new
        data = {}
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LastUpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_at]).to_i unless stub[:last_updated_at].nil?
        data['ReceivedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:received_at]).to_i unless stub[:received_at].nil?
        data['OrderingId'] = stub[:ordering_id] unless stub[:ordering_id].nil?
        data['FailureReason'] = stub[:failure_reason] unless stub[:failure_reason].nil?
        data
      end
    end

    # Operation Stubber for DescribeQuerySuggestionsBlockList
    class DescribeQuerySuggestionsBlockList
      def self.default(visited=[])
        {
          index_id: 'index_id',
          id: 'id',
          name: 'name',
          description: 'description',
          status: 'status',
          error_message: 'error_message',
          created_at: Time.now,
          updated_at: Time.now,
          source_s3_path: S3Path.default(visited),
          item_count: 1,
          file_size_bytes: 1,
          role_arn: 'role_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IndexId'] = stub[:index_id] unless stub[:index_id].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['SourceS3Path'] = S3Path.stub(stub[:source_s3_path]) unless stub[:source_s3_path].nil?
        data['ItemCount'] = stub[:item_count] unless stub[:item_count].nil?
        data['FileSizeBytes'] = stub[:file_size_bytes] unless stub[:file_size_bytes].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeQuerySuggestionsConfig
    class DescribeQuerySuggestionsConfig
      def self.default(visited=[])
        {
          mode: 'mode',
          status: 'status',
          query_log_look_back_window_in_days: 1,
          include_queries_without_user_information: false,
          minimum_number_of_querying_users: 1,
          minimum_query_count: 1,
          last_suggestions_build_time: Time.now,
          last_clear_time: Time.now,
          total_suggestions_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Mode'] = stub[:mode] unless stub[:mode].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['QueryLogLookBackWindowInDays'] = stub[:query_log_look_back_window_in_days] unless stub[:query_log_look_back_window_in_days].nil?
        data['IncludeQueriesWithoutUserInformation'] = stub[:include_queries_without_user_information] unless stub[:include_queries_without_user_information].nil?
        data['MinimumNumberOfQueryingUsers'] = stub[:minimum_number_of_querying_users] unless stub[:minimum_number_of_querying_users].nil?
        data['MinimumQueryCount'] = stub[:minimum_query_count] unless stub[:minimum_query_count].nil?
        data['LastSuggestionsBuildTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_suggestions_build_time]).to_i unless stub[:last_suggestions_build_time].nil?
        data['LastClearTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_clear_time]).to_i unless stub[:last_clear_time].nil?
        data['TotalSuggestionsCount'] = stub[:total_suggestions_count] unless stub[:total_suggestions_count].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeThesaurus
    class DescribeThesaurus
      def self.default(visited=[])
        {
          id: 'id',
          index_id: 'index_id',
          name: 'name',
          description: 'description',
          status: 'status',
          error_message: 'error_message',
          created_at: Time.now,
          updated_at: Time.now,
          role_arn: 'role_arn',
          source_s3_path: S3Path.default(visited),
          file_size_bytes: 1,
          term_count: 1,
          synonym_rule_count: 1,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['IndexId'] = stub[:index_id] unless stub[:index_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['SourceS3Path'] = S3Path.stub(stub[:source_s3_path]) unless stub[:source_s3_path].nil?
        data['FileSizeBytes'] = stub[:file_size_bytes] unless stub[:file_size_bytes].nil?
        data['TermCount'] = stub[:term_count] unless stub[:term_count].nil?
        data['SynonymRuleCount'] = stub[:synonym_rule_count] unless stub[:synonym_rule_count].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociateEntitiesFromExperience
    class DisassociateEntitiesFromExperience
      def self.default(visited=[])
        {
          failed_entity_list: FailedEntityList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedEntityList'] = FailedEntityList.stub(stub[:failed_entity_list]) unless stub[:failed_entity_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DisassociatePersonasFromEntities
    class DisassociatePersonasFromEntities
      def self.default(visited=[])
        {
          failed_entity_list: FailedEntityList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FailedEntityList'] = FailedEntityList.stub(stub[:failed_entity_list]) unless stub[:failed_entity_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetQuerySuggestions
    class GetQuerySuggestions
      def self.default(visited=[])
        {
          query_suggestions_id: 'query_suggestions_id',
          suggestions: SuggestionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['QuerySuggestionsId'] = stub[:query_suggestions_id] unless stub[:query_suggestions_id].nil?
        data['Suggestions'] = SuggestionList.stub(stub[:suggestions]) unless stub[:suggestions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SuggestionList
    class SuggestionList
      def self.default(visited=[])
        return nil if visited.include?('SuggestionList')
        visited = visited + ['SuggestionList']
        [
          Suggestion.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Suggestion.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Suggestion
    class Suggestion
      def self.default(visited=[])
        return nil if visited.include?('Suggestion')
        visited = visited + ['Suggestion']
        {
          id: 'id',
          value: SuggestionValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Suggestion.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Value'] = SuggestionValue.stub(stub[:value]) unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for SuggestionValue
    class SuggestionValue
      def self.default(visited=[])
        return nil if visited.include?('SuggestionValue')
        visited = visited + ['SuggestionValue']
        {
          text: SuggestionTextWithHighlights.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SuggestionValue.new
        data = {}
        data['Text'] = SuggestionTextWithHighlights.stub(stub[:text]) unless stub[:text].nil?
        data
      end
    end

    # Structure Stubber for SuggestionTextWithHighlights
    class SuggestionTextWithHighlights
      def self.default(visited=[])
        return nil if visited.include?('SuggestionTextWithHighlights')
        visited = visited + ['SuggestionTextWithHighlights']
        {
          text: 'text',
          highlights: SuggestionHighlightList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SuggestionTextWithHighlights.new
        data = {}
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['Highlights'] = SuggestionHighlightList.stub(stub[:highlights]) unless stub[:highlights].nil?
        data
      end
    end

    # List Stubber for SuggestionHighlightList
    class SuggestionHighlightList
      def self.default(visited=[])
        return nil if visited.include?('SuggestionHighlightList')
        visited = visited + ['SuggestionHighlightList']
        [
          SuggestionHighlight.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SuggestionHighlight.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SuggestionHighlight
    class SuggestionHighlight
      def self.default(visited=[])
        return nil if visited.include?('SuggestionHighlight')
        visited = visited + ['SuggestionHighlight']
        {
          begin_offset: 1,
          end_offset: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::SuggestionHighlight.new
        data = {}
        data['BeginOffset'] = stub[:begin_offset] unless stub[:begin_offset].nil?
        data['EndOffset'] = stub[:end_offset] unless stub[:end_offset].nil?
        data
      end
    end

    # Operation Stubber for GetSnapshots
    class GetSnapshots
      def self.default(visited=[])
        {
          snap_shot_time_filter: TimeRange.default(visited),
          snapshots_data_header: SnapshotsDataHeaderFields.default(visited),
          snapshots_data: SnapshotsDataRecords.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SnapShotTimeFilter'] = TimeRange.stub(stub[:snap_shot_time_filter]) unless stub[:snap_shot_time_filter].nil?
        data['SnapshotsDataHeader'] = SnapshotsDataHeaderFields.stub(stub[:snapshots_data_header]) unless stub[:snapshots_data_header].nil?
        data['SnapshotsData'] = SnapshotsDataRecords.stub(stub[:snapshots_data]) unless stub[:snapshots_data].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SnapshotsDataRecords
    class SnapshotsDataRecords
      def self.default(visited=[])
        return nil if visited.include?('SnapshotsDataRecords')
        visited = visited + ['SnapshotsDataRecords']
        [
          SnapshotsDataRecord.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SnapshotsDataRecord.stub(element) unless element.nil?
        end
        data
      end
    end

    # List Stubber for SnapshotsDataRecord
    class SnapshotsDataRecord
      def self.default(visited=[])
        return nil if visited.include?('SnapshotsDataRecord')
        visited = visited + ['SnapshotsDataRecord']
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

    # List Stubber for SnapshotsDataHeaderFields
    class SnapshotsDataHeaderFields
      def self.default(visited=[])
        return nil if visited.include?('SnapshotsDataHeaderFields')
        visited = visited + ['SnapshotsDataHeaderFields']
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

    # Structure Stubber for TimeRange
    class TimeRange
      def self.default(visited=[])
        return nil if visited.include?('TimeRange')
        visited = visited + ['TimeRange']
        {
          start_time: Time.now,
          end_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::TimeRange.new
        data = {}
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data
      end
    end

    # Operation Stubber for ListDataSourceSyncJobs
    class ListDataSourceSyncJobs
      def self.default(visited=[])
        {
          history: DataSourceSyncJobHistoryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['History'] = DataSourceSyncJobHistoryList.stub(stub[:history]) unless stub[:history].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DataSourceSyncJobHistoryList
    class DataSourceSyncJobHistoryList
      def self.default(visited=[])
        return nil if visited.include?('DataSourceSyncJobHistoryList')
        visited = visited + ['DataSourceSyncJobHistoryList']
        [
          DataSourceSyncJob.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DataSourceSyncJob.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataSourceSyncJob
    class DataSourceSyncJob
      def self.default(visited=[])
        return nil if visited.include?('DataSourceSyncJob')
        visited = visited + ['DataSourceSyncJob']
        {
          execution_id: 'execution_id',
          start_time: Time.now,
          end_time: Time.now,
          status: 'status',
          error_message: 'error_message',
          error_code: 'error_code',
          data_source_error_code: 'data_source_error_code',
          metrics: DataSourceSyncJobMetrics.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSourceSyncJob.new
        data = {}
        data['ExecutionId'] = stub[:execution_id] unless stub[:execution_id].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['DataSourceErrorCode'] = stub[:data_source_error_code] unless stub[:data_source_error_code].nil?
        data['Metrics'] = DataSourceSyncJobMetrics.stub(stub[:metrics]) unless stub[:metrics].nil?
        data
      end
    end

    # Structure Stubber for DataSourceSyncJobMetrics
    class DataSourceSyncJobMetrics
      def self.default(visited=[])
        return nil if visited.include?('DataSourceSyncJobMetrics')
        visited = visited + ['DataSourceSyncJobMetrics']
        {
          documents_added: 'documents_added',
          documents_modified: 'documents_modified',
          documents_deleted: 'documents_deleted',
          documents_failed: 'documents_failed',
          documents_scanned: 'documents_scanned',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSourceSyncJobMetrics.new
        data = {}
        data['DocumentsAdded'] = stub[:documents_added] unless stub[:documents_added].nil?
        data['DocumentsModified'] = stub[:documents_modified] unless stub[:documents_modified].nil?
        data['DocumentsDeleted'] = stub[:documents_deleted] unless stub[:documents_deleted].nil?
        data['DocumentsFailed'] = stub[:documents_failed] unless stub[:documents_failed].nil?
        data['DocumentsScanned'] = stub[:documents_scanned] unless stub[:documents_scanned].nil?
        data
      end
    end

    # Operation Stubber for ListDataSources
    class ListDataSources
      def self.default(visited=[])
        {
          summary_items: DataSourceSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SummaryItems'] = DataSourceSummaryList.stub(stub[:summary_items]) unless stub[:summary_items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DataSourceSummaryList
    class DataSourceSummaryList
      def self.default(visited=[])
        return nil if visited.include?('DataSourceSummaryList')
        visited = visited + ['DataSourceSummaryList']
        [
          DataSourceSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DataSourceSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataSourceSummary
    class DataSourceSummary
      def self.default(visited=[])
        return nil if visited.include?('DataSourceSummary')
        visited = visited + ['DataSourceSummary']
        {
          name: 'name',
          id: 'id',
          type: 'type',
          created_at: Time.now,
          updated_at: Time.now,
          status: 'status',
          language_code: 'language_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::DataSourceSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data
      end
    end

    # Operation Stubber for ListEntityPersonas
    class ListEntityPersonas
      def self.default(visited=[])
        {
          summary_items: PersonasSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SummaryItems'] = PersonasSummaryList.stub(stub[:summary_items]) unless stub[:summary_items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PersonasSummaryList
    class PersonasSummaryList
      def self.default(visited=[])
        return nil if visited.include?('PersonasSummaryList')
        visited = visited + ['PersonasSummaryList']
        [
          PersonasSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PersonasSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PersonasSummary
    class PersonasSummary
      def self.default(visited=[])
        return nil if visited.include?('PersonasSummary')
        visited = visited + ['PersonasSummary']
        {
          entity_id: 'entity_id',
          persona: 'persona',
          created_at: Time.now,
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::PersonasSummary.new
        data = {}
        data['EntityId'] = stub[:entity_id] unless stub[:entity_id].nil?
        data['Persona'] = stub[:persona] unless stub[:persona].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data
      end
    end

    # Operation Stubber for ListExperienceEntities
    class ListExperienceEntities
      def self.default(visited=[])
        {
          summary_items: ExperienceEntitiesSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SummaryItems'] = ExperienceEntitiesSummaryList.stub(stub[:summary_items]) unless stub[:summary_items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ExperienceEntitiesSummaryList
    class ExperienceEntitiesSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ExperienceEntitiesSummaryList')
        visited = visited + ['ExperienceEntitiesSummaryList']
        [
          ExperienceEntitiesSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ExperienceEntitiesSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExperienceEntitiesSummary
    class ExperienceEntitiesSummary
      def self.default(visited=[])
        return nil if visited.include?('ExperienceEntitiesSummary')
        visited = visited + ['ExperienceEntitiesSummary']
        {
          entity_id: 'entity_id',
          entity_type: 'entity_type',
          display_data: EntityDisplayData.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperienceEntitiesSummary.new
        data = {}
        data['EntityId'] = stub[:entity_id] unless stub[:entity_id].nil?
        data['EntityType'] = stub[:entity_type] unless stub[:entity_type].nil?
        data['DisplayData'] = EntityDisplayData.stub(stub[:display_data]) unless stub[:display_data].nil?
        data
      end
    end

    # Structure Stubber for EntityDisplayData
    class EntityDisplayData
      def self.default(visited=[])
        return nil if visited.include?('EntityDisplayData')
        visited = visited + ['EntityDisplayData']
        {
          user_name: 'user_name',
          group_name: 'group_name',
          identified_user_name: 'identified_user_name',
          first_name: 'first_name',
          last_name: 'last_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::EntityDisplayData.new
        data = {}
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        data['GroupName'] = stub[:group_name] unless stub[:group_name].nil?
        data['IdentifiedUserName'] = stub[:identified_user_name] unless stub[:identified_user_name].nil?
        data['FirstName'] = stub[:first_name] unless stub[:first_name].nil?
        data['LastName'] = stub[:last_name] unless stub[:last_name].nil?
        data
      end
    end

    # Operation Stubber for ListExperiences
    class ListExperiences
      def self.default(visited=[])
        {
          summary_items: ExperiencesSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['SummaryItems'] = ExperiencesSummaryList.stub(stub[:summary_items]) unless stub[:summary_items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ExperiencesSummaryList
    class ExperiencesSummaryList
      def self.default(visited=[])
        return nil if visited.include?('ExperiencesSummaryList')
        visited = visited + ['ExperiencesSummaryList']
        [
          ExperiencesSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ExperiencesSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ExperiencesSummary
    class ExperiencesSummary
      def self.default(visited=[])
        return nil if visited.include?('ExperiencesSummary')
        visited = visited + ['ExperiencesSummary']
        {
          name: 'name',
          id: 'id',
          created_at: Time.now,
          status: 'status',
          endpoints: ExperienceEndpoints.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ExperiencesSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['Endpoints'] = ExperienceEndpoints.stub(stub[:endpoints]) unless stub[:endpoints].nil?
        data
      end
    end

    # Operation Stubber for ListFaqs
    class ListFaqs
      def self.default(visited=[])
        {
          next_token: 'next_token',
          faq_summary_items: FaqSummaryItems.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['FaqSummaryItems'] = FaqSummaryItems.stub(stub[:faq_summary_items]) unless stub[:faq_summary_items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FaqSummaryItems
    class FaqSummaryItems
      def self.default(visited=[])
        return nil if visited.include?('FaqSummaryItems')
        visited = visited + ['FaqSummaryItems']
        [
          FaqSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FaqSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FaqSummary
    class FaqSummary
      def self.default(visited=[])
        return nil if visited.include?('FaqSummary')
        visited = visited + ['FaqSummary']
        {
          id: 'id',
          name: 'name',
          status: 'status',
          created_at: Time.now,
          updated_at: Time.now,
          file_format: 'file_format',
          language_code: 'language_code',
        }
      end

      def self.stub(stub)
        stub ||= Types::FaqSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['FileFormat'] = stub[:file_format] unless stub[:file_format].nil?
        data['LanguageCode'] = stub[:language_code] unless stub[:language_code].nil?
        data
      end
    end

    # Operation Stubber for ListGroupsOlderThanOrderingId
    class ListGroupsOlderThanOrderingId
      def self.default(visited=[])
        {
          groups_summaries: ListOfGroupSummaries.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GroupsSummaries'] = ListOfGroupSummaries.stub(stub[:groups_summaries]) unless stub[:groups_summaries].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ListOfGroupSummaries
    class ListOfGroupSummaries
      def self.default(visited=[])
        return nil if visited.include?('ListOfGroupSummaries')
        visited = visited + ['ListOfGroupSummaries']
        [
          GroupSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GroupSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GroupSummary
    class GroupSummary
      def self.default(visited=[])
        return nil if visited.include?('GroupSummary')
        visited = visited + ['GroupSummary']
        {
          group_id: 'group_id',
          ordering_id: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::GroupSummary.new
        data = {}
        data['GroupId'] = stub[:group_id] unless stub[:group_id].nil?
        data['OrderingId'] = stub[:ordering_id] unless stub[:ordering_id].nil?
        data
      end
    end

    # Operation Stubber for ListIndices
    class ListIndices
      def self.default(visited=[])
        {
          index_configuration_summary_items: IndexConfigurationSummaryList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['IndexConfigurationSummaryItems'] = IndexConfigurationSummaryList.stub(stub[:index_configuration_summary_items]) unless stub[:index_configuration_summary_items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for IndexConfigurationSummaryList
    class IndexConfigurationSummaryList
      def self.default(visited=[])
        return nil if visited.include?('IndexConfigurationSummaryList')
        visited = visited + ['IndexConfigurationSummaryList']
        [
          IndexConfigurationSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IndexConfigurationSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IndexConfigurationSummary
    class IndexConfigurationSummary
      def self.default(visited=[])
        return nil if visited.include?('IndexConfigurationSummary')
        visited = visited + ['IndexConfigurationSummary']
        {
          name: 'name',
          id: 'id',
          edition: 'edition',
          created_at: Time.now,
          updated_at: Time.now,
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::IndexConfigurationSummary.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Edition'] = stub[:edition] unless stub[:edition].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Operation Stubber for ListQuerySuggestionsBlockLists
    class ListQuerySuggestionsBlockLists
      def self.default(visited=[])
        {
          block_list_summary_items: QuerySuggestionsBlockListSummaryItems.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['BlockListSummaryItems'] = QuerySuggestionsBlockListSummaryItems.stub(stub[:block_list_summary_items]) unless stub[:block_list_summary_items].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for QuerySuggestionsBlockListSummaryItems
    class QuerySuggestionsBlockListSummaryItems
      def self.default(visited=[])
        return nil if visited.include?('QuerySuggestionsBlockListSummaryItems')
        visited = visited + ['QuerySuggestionsBlockListSummaryItems']
        [
          QuerySuggestionsBlockListSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << QuerySuggestionsBlockListSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for QuerySuggestionsBlockListSummary
    class QuerySuggestionsBlockListSummary
      def self.default(visited=[])
        return nil if visited.include?('QuerySuggestionsBlockListSummary')
        visited = visited + ['QuerySuggestionsBlockListSummary']
        {
          id: 'id',
          name: 'name',
          status: 'status',
          created_at: Time.now,
          updated_at: Time.now,
          item_count: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::QuerySuggestionsBlockListSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data['ItemCount'] = stub[:item_count] unless stub[:item_count].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for ListThesauri
    class ListThesauri
      def self.default(visited=[])
        {
          next_token: 'next_token',
          thesaurus_summary_items: ThesaurusSummaryItems.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['ThesaurusSummaryItems'] = ThesaurusSummaryItems.stub(stub[:thesaurus_summary_items]) unless stub[:thesaurus_summary_items].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ThesaurusSummaryItems
    class ThesaurusSummaryItems
      def self.default(visited=[])
        return nil if visited.include?('ThesaurusSummaryItems')
        visited = visited + ['ThesaurusSummaryItems']
        [
          ThesaurusSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ThesaurusSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ThesaurusSummary
    class ThesaurusSummary
      def self.default(visited=[])
        return nil if visited.include?('ThesaurusSummary')
        visited = visited + ['ThesaurusSummary']
        {
          id: 'id',
          name: 'name',
          status: 'status',
          created_at: Time.now,
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ThesaurusSummary.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['UpdatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:updated_at]).to_i unless stub[:updated_at].nil?
        data
      end
    end

    # Operation Stubber for PutPrincipalMapping
    class PutPrincipalMapping
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for Query
    class Query
      def self.default(visited=[])
        {
          query_id: 'query_id',
          result_items: QueryResultItemList.default(visited),
          facet_results: FacetResultList.default(visited),
          total_number_of_results: 1,
          warnings: WarningList.default(visited),
          spell_corrected_queries: SpellCorrectedQueryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['QueryId'] = stub[:query_id] unless stub[:query_id].nil?
        data['ResultItems'] = QueryResultItemList.stub(stub[:result_items]) unless stub[:result_items].nil?
        data['FacetResults'] = FacetResultList.stub(stub[:facet_results]) unless stub[:facet_results].nil?
        data['TotalNumberOfResults'] = stub[:total_number_of_results] unless stub[:total_number_of_results].nil?
        data['Warnings'] = WarningList.stub(stub[:warnings]) unless stub[:warnings].nil?
        data['SpellCorrectedQueries'] = SpellCorrectedQueryList.stub(stub[:spell_corrected_queries]) unless stub[:spell_corrected_queries].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SpellCorrectedQueryList
    class SpellCorrectedQueryList
      def self.default(visited=[])
        return nil if visited.include?('SpellCorrectedQueryList')
        visited = visited + ['SpellCorrectedQueryList']
        [
          SpellCorrectedQuery.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << SpellCorrectedQuery.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SpellCorrectedQuery
    class SpellCorrectedQuery
      def self.default(visited=[])
        return nil if visited.include?('SpellCorrectedQuery')
        visited = visited + ['SpellCorrectedQuery']
        {
          suggested_query_text: 'suggested_query_text',
          corrections: CorrectionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SpellCorrectedQuery.new
        data = {}
        data['SuggestedQueryText'] = stub[:suggested_query_text] unless stub[:suggested_query_text].nil?
        data['Corrections'] = CorrectionList.stub(stub[:corrections]) unless stub[:corrections].nil?
        data
      end
    end

    # List Stubber for CorrectionList
    class CorrectionList
      def self.default(visited=[])
        return nil if visited.include?('CorrectionList')
        visited = visited + ['CorrectionList']
        [
          Correction.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Correction.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Correction
    class Correction
      def self.default(visited=[])
        return nil if visited.include?('Correction')
        visited = visited + ['Correction']
        {
          begin_offset: 1,
          end_offset: 1,
          term: 'term',
          corrected_term: 'corrected_term',
        }
      end

      def self.stub(stub)
        stub ||= Types::Correction.new
        data = {}
        data['BeginOffset'] = stub[:begin_offset] unless stub[:begin_offset].nil?
        data['EndOffset'] = stub[:end_offset] unless stub[:end_offset].nil?
        data['Term'] = stub[:term] unless stub[:term].nil?
        data['CorrectedTerm'] = stub[:corrected_term] unless stub[:corrected_term].nil?
        data
      end
    end

    # List Stubber for WarningList
    class WarningList
      def self.default(visited=[])
        return nil if visited.include?('WarningList')
        visited = visited + ['WarningList']
        [
          Warning.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Warning.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Warning
    class Warning
      def self.default(visited=[])
        return nil if visited.include?('Warning')
        visited = visited + ['Warning']
        {
          message: 'message',
          code: 'code',
        }
      end

      def self.stub(stub)
        stub ||= Types::Warning.new
        data = {}
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['Code'] = stub[:code] unless stub[:code].nil?
        data
      end
    end

    # List Stubber for FacetResultList
    class FacetResultList
      def self.default(visited=[])
        return nil if visited.include?('FacetResultList')
        visited = visited + ['FacetResultList']
        [
          FacetResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FacetResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FacetResult
    class FacetResult
      def self.default(visited=[])
        return nil if visited.include?('FacetResult')
        visited = visited + ['FacetResult']
        {
          document_attribute_key: 'document_attribute_key',
          document_attribute_value_type: 'document_attribute_value_type',
          document_attribute_value_count_pairs: DocumentAttributeValueCountPairList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FacetResult.new
        data = {}
        data['DocumentAttributeKey'] = stub[:document_attribute_key] unless stub[:document_attribute_key].nil?
        data['DocumentAttributeValueType'] = stub[:document_attribute_value_type] unless stub[:document_attribute_value_type].nil?
        data['DocumentAttributeValueCountPairs'] = DocumentAttributeValueCountPairList.stub(stub[:document_attribute_value_count_pairs]) unless stub[:document_attribute_value_count_pairs].nil?
        data
      end
    end

    # List Stubber for DocumentAttributeValueCountPairList
    class DocumentAttributeValueCountPairList
      def self.default(visited=[])
        return nil if visited.include?('DocumentAttributeValueCountPairList')
        visited = visited + ['DocumentAttributeValueCountPairList']
        [
          DocumentAttributeValueCountPair.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DocumentAttributeValueCountPair.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DocumentAttributeValueCountPair
    class DocumentAttributeValueCountPair
      def self.default(visited=[])
        return nil if visited.include?('DocumentAttributeValueCountPair')
        visited = visited + ['DocumentAttributeValueCountPair']
        {
          document_attribute_value: DocumentAttributeValue.default(visited),
          count: 1,
          facet_results: FacetResultList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentAttributeValueCountPair.new
        data = {}
        data['DocumentAttributeValue'] = DocumentAttributeValue.stub(stub[:document_attribute_value]) unless stub[:document_attribute_value].nil?
        data['Count'] = stub[:count] unless stub[:count].nil?
        data['FacetResults'] = FacetResultList.stub(stub[:facet_results]) unless stub[:facet_results].nil?
        data
      end
    end

    # List Stubber for QueryResultItemList
    class QueryResultItemList
      def self.default(visited=[])
        return nil if visited.include?('QueryResultItemList')
        visited = visited + ['QueryResultItemList']
        [
          QueryResultItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << QueryResultItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for QueryResultItem
    class QueryResultItem
      def self.default(visited=[])
        return nil if visited.include?('QueryResultItem')
        visited = visited + ['QueryResultItem']
        {
          id: 'id',
          type: 'type',
          additional_attributes: AdditionalResultAttributeList.default(visited),
          document_id: 'document_id',
          document_title: TextWithHighlights.default(visited),
          document_excerpt: TextWithHighlights.default(visited),
          document_uri: 'document_uri',
          document_attributes: DocumentAttributeList.default(visited),
          score_attributes: ScoreAttributes.default(visited),
          feedback_token: 'feedback_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::QueryResultItem.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['AdditionalAttributes'] = AdditionalResultAttributeList.stub(stub[:additional_attributes]) unless stub[:additional_attributes].nil?
        data['DocumentId'] = stub[:document_id] unless stub[:document_id].nil?
        data['DocumentTitle'] = TextWithHighlights.stub(stub[:document_title]) unless stub[:document_title].nil?
        data['DocumentExcerpt'] = TextWithHighlights.stub(stub[:document_excerpt]) unless stub[:document_excerpt].nil?
        data['DocumentURI'] = stub[:document_uri] unless stub[:document_uri].nil?
        data['DocumentAttributes'] = DocumentAttributeList.stub(stub[:document_attributes]) unless stub[:document_attributes].nil?
        data['ScoreAttributes'] = ScoreAttributes.stub(stub[:score_attributes]) unless stub[:score_attributes].nil?
        data['FeedbackToken'] = stub[:feedback_token] unless stub[:feedback_token].nil?
        data
      end
    end

    # Structure Stubber for ScoreAttributes
    class ScoreAttributes
      def self.default(visited=[])
        return nil if visited.include?('ScoreAttributes')
        visited = visited + ['ScoreAttributes']
        {
          score_confidence: 'score_confidence',
        }
      end

      def self.stub(stub)
        stub ||= Types::ScoreAttributes.new
        data = {}
        data['ScoreConfidence'] = stub[:score_confidence] unless stub[:score_confidence].nil?
        data
      end
    end

    # List Stubber for DocumentAttributeList
    class DocumentAttributeList
      def self.default(visited=[])
        return nil if visited.include?('DocumentAttributeList')
        visited = visited + ['DocumentAttributeList']
        [
          DocumentAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << DocumentAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DocumentAttribute
    class DocumentAttribute
      def self.default(visited=[])
        return nil if visited.include?('DocumentAttribute')
        visited = visited + ['DocumentAttribute']
        {
          key: 'key',
          value: DocumentAttributeValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::DocumentAttribute.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = DocumentAttributeValue.stub(stub[:value]) unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for TextWithHighlights
    class TextWithHighlights
      def self.default(visited=[])
        return nil if visited.include?('TextWithHighlights')
        visited = visited + ['TextWithHighlights']
        {
          text: 'text',
          highlights: HighlightList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::TextWithHighlights.new
        data = {}
        data['Text'] = stub[:text] unless stub[:text].nil?
        data['Highlights'] = HighlightList.stub(stub[:highlights]) unless stub[:highlights].nil?
        data
      end
    end

    # List Stubber for HighlightList
    class HighlightList
      def self.default(visited=[])
        return nil if visited.include?('HighlightList')
        visited = visited + ['HighlightList']
        [
          Highlight.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Highlight.stub(element) unless element.nil?
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
          begin_offset: 1,
          end_offset: 1,
          top_answer: false,
          type: 'type',
        }
      end

      def self.stub(stub)
        stub ||= Types::Highlight.new
        data = {}
        data['BeginOffset'] = stub[:begin_offset] unless stub[:begin_offset].nil?
        data['EndOffset'] = stub[:end_offset] unless stub[:end_offset].nil?
        data['TopAnswer'] = stub[:top_answer] unless stub[:top_answer].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data
      end
    end

    # List Stubber for AdditionalResultAttributeList
    class AdditionalResultAttributeList
      def self.default(visited=[])
        return nil if visited.include?('AdditionalResultAttributeList')
        visited = visited + ['AdditionalResultAttributeList']
        [
          AdditionalResultAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << AdditionalResultAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AdditionalResultAttribute
    class AdditionalResultAttribute
      def self.default(visited=[])
        return nil if visited.include?('AdditionalResultAttribute')
        visited = visited + ['AdditionalResultAttribute']
        {
          key: 'key',
          value_type: 'value_type',
          value: AdditionalResultAttributeValue.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AdditionalResultAttribute.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['ValueType'] = stub[:value_type] unless stub[:value_type].nil?
        data['Value'] = AdditionalResultAttributeValue.stub(stub[:value]) unless stub[:value].nil?
        data
      end
    end

    # Structure Stubber for AdditionalResultAttributeValue
    class AdditionalResultAttributeValue
      def self.default(visited=[])
        return nil if visited.include?('AdditionalResultAttributeValue')
        visited = visited + ['AdditionalResultAttributeValue']
        {
          text_with_highlights_value: TextWithHighlights.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AdditionalResultAttributeValue.new
        data = {}
        data['TextWithHighlightsValue'] = TextWithHighlights.stub(stub[:text_with_highlights_value]) unless stub[:text_with_highlights_value].nil?
        data
      end
    end

    # Operation Stubber for StartDataSourceSyncJob
    class StartDataSourceSyncJob
      def self.default(visited=[])
        {
          execution_id: 'execution_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ExecutionId'] = stub[:execution_id] unless stub[:execution_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopDataSourceSyncJob
    class StopDataSourceSyncJob
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SubmitFeedback
    class SubmitFeedback
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDataSource
    class UpdateDataSource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateExperience
    class UpdateExperience
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateIndex
    class UpdateIndex
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateQuerySuggestionsBlockList
    class UpdateQuerySuggestionsBlockList
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateQuerySuggestionsConfig
    class UpdateQuerySuggestionsConfig
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateThesaurus
    class UpdateThesaurus
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
