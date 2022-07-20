# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kendra
  module Parsers

    # Operation Parser for AssociateEntitiesToExperience
    class AssociateEntitiesToExperience
      def self.parse(http_resp)
        data = Types::AssociateEntitiesToExperienceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_entity_list = (Parsers::AssociateEntitiesToExperienceFailedEntityList.parse(map['FailedEntityList']) unless map['FailedEntityList'].nil?)
        data
      end
    end

    class AssociateEntitiesToExperienceFailedEntityList
      def self.parse(list)
        list.map do |value|
          Parsers::FailedEntity.parse(value) unless value.nil?
        end
      end
    end

    class FailedEntity
      def self.parse(map)
        data = Types::FailedEntity.new
        data.entity_id = map['EntityId']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServerException
    class InternalServerException
      def self.parse(http_resp)
        data = Types::InternalServerException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceAlreadyExistException
    class ResourceAlreadyExistException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociatePersonasToEntities
    class AssociatePersonasToEntities
      def self.parse(http_resp)
        data = Types::AssociatePersonasToEntitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_entity_list = (Parsers::FailedEntityList.parse(map['FailedEntityList']) unless map['FailedEntityList'].nil?)
        data
      end
    end

    class FailedEntityList
      def self.parse(list)
        list.map do |value|
          Parsers::FailedEntity.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for BatchDeleteDocument
    class BatchDeleteDocument
      def self.parse(http_resp)
        data = Types::BatchDeleteDocumentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_documents = (Parsers::BatchDeleteDocumentResponseFailedDocuments.parse(map['FailedDocuments']) unless map['FailedDocuments'].nil?)
        data
      end
    end

    class BatchDeleteDocumentResponseFailedDocuments
      def self.parse(list)
        list.map do |value|
          Parsers::BatchDeleteDocumentResponseFailedDocument.parse(value) unless value.nil?
        end
      end
    end

    class BatchDeleteDocumentResponseFailedDocument
      def self.parse(map)
        data = Types::BatchDeleteDocumentResponseFailedDocument.new
        data.id = map['Id']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for BatchGetDocumentStatus
    class BatchGetDocumentStatus
      def self.parse(http_resp)
        data = Types::BatchGetDocumentStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.errors = (Parsers::BatchGetDocumentStatusResponseErrors.parse(map['Errors']) unless map['Errors'].nil?)
        data.document_status_list = (Parsers::DocumentStatusList.parse(map['DocumentStatusList']) unless map['DocumentStatusList'].nil?)
        data
      end
    end

    class DocumentStatusList
      def self.parse(list)
        list.map do |value|
          Parsers::Status.parse(value) unless value.nil?
        end
      end
    end

    class Status
      def self.parse(map)
        data = Types::Status.new
        data.document_id = map['DocumentId']
        data.document_status = map['DocumentStatus']
        data.failure_code = map['FailureCode']
        data.failure_reason = map['FailureReason']
        return data
      end
    end

    class BatchGetDocumentStatusResponseErrors
      def self.parse(list)
        list.map do |value|
          Parsers::BatchGetDocumentStatusResponseError.parse(value) unless value.nil?
        end
      end
    end

    class BatchGetDocumentStatusResponseError
      def self.parse(map)
        data = Types::BatchGetDocumentStatusResponseError.new
        data.document_id = map['DocumentId']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Operation Parser for BatchPutDocument
    class BatchPutDocument
      def self.parse(http_resp)
        data = Types::BatchPutDocumentOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_documents = (Parsers::BatchPutDocumentResponseFailedDocuments.parse(map['FailedDocuments']) unless map['FailedDocuments'].nil?)
        data
      end
    end

    class BatchPutDocumentResponseFailedDocuments
      def self.parse(list)
        list.map do |value|
          Parsers::BatchPutDocumentResponseFailedDocument.parse(value) unless value.nil?
        end
      end
    end

    class BatchPutDocumentResponseFailedDocument
      def self.parse(map)
        data = Types::BatchPutDocumentResponseFailedDocument.new
        data.id = map['Id']
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ClearQuerySuggestions
    class ClearQuerySuggestions
      def self.parse(http_resp)
        data = Types::ClearQuerySuggestionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for CreateDataSource
    class CreateDataSource
      def self.parse(http_resp)
        data = Types::CreateDataSourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['Id']
        data
      end
    end

    # Operation Parser for CreateExperience
    class CreateExperience
      def self.parse(http_resp)
        data = Types::CreateExperienceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['Id']
        data
      end
    end

    # Operation Parser for CreateFaq
    class CreateFaq
      def self.parse(http_resp)
        data = Types::CreateFaqOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['Id']
        data
      end
    end

    # Operation Parser for CreateIndex
    class CreateIndex
      def self.parse(http_resp)
        data = Types::CreateIndexOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['Id']
        data
      end
    end

    # Operation Parser for CreateQuerySuggestionsBlockList
    class CreateQuerySuggestionsBlockList
      def self.parse(http_resp)
        data = Types::CreateQuerySuggestionsBlockListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['Id']
        data
      end
    end

    # Operation Parser for CreateThesaurus
    class CreateThesaurus
      def self.parse(http_resp)
        data = Types::CreateThesaurusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['Id']
        data
      end
    end

    # Operation Parser for DeleteDataSource
    class DeleteDataSource
      def self.parse(http_resp)
        data = Types::DeleteDataSourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteExperience
    class DeleteExperience
      def self.parse(http_resp)
        data = Types::DeleteExperienceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteFaq
    class DeleteFaq
      def self.parse(http_resp)
        data = Types::DeleteFaqOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteIndex
    class DeleteIndex
      def self.parse(http_resp)
        data = Types::DeleteIndexOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeletePrincipalMapping
    class DeletePrincipalMapping
      def self.parse(http_resp)
        data = Types::DeletePrincipalMappingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteQuerySuggestionsBlockList
    class DeleteQuerySuggestionsBlockList
      def self.parse(http_resp)
        data = Types::DeleteQuerySuggestionsBlockListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteThesaurus
    class DeleteThesaurus
      def self.parse(http_resp)
        data = Types::DeleteThesaurusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeDataSource
    class DescribeDataSource
      def self.parse(http_resp)
        data = Types::DescribeDataSourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['Id']
        data.index_id = map['IndexId']
        data.name = map['Name']
        data.type = map['Type']
        data.configuration = (Parsers::DataSourceConfiguration.parse(map['Configuration']) unless map['Configuration'].nil?)
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.description = map['Description']
        data.status = map['Status']
        data.schedule = map['Schedule']
        data.role_arn = map['RoleArn']
        data.error_message = map['ErrorMessage']
        data.language_code = map['LanguageCode']
        data.custom_document_enrichment_configuration = (Parsers::CustomDocumentEnrichmentConfiguration.parse(map['CustomDocumentEnrichmentConfiguration']) unless map['CustomDocumentEnrichmentConfiguration'].nil?)
        data
      end
    end

    class CustomDocumentEnrichmentConfiguration
      def self.parse(map)
        data = Types::CustomDocumentEnrichmentConfiguration.new
        data.inline_configurations = (Parsers::InlineCustomDocumentEnrichmentConfigurationList.parse(map['InlineConfigurations']) unless map['InlineConfigurations'].nil?)
        data.pre_extraction_hook_configuration = (Parsers::HookConfiguration.parse(map['PreExtractionHookConfiguration']) unless map['PreExtractionHookConfiguration'].nil?)
        data.post_extraction_hook_configuration = (Parsers::HookConfiguration.parse(map['PostExtractionHookConfiguration']) unless map['PostExtractionHookConfiguration'].nil?)
        data.role_arn = map['RoleArn']
        return data
      end
    end

    class HookConfiguration
      def self.parse(map)
        data = Types::HookConfiguration.new
        data.invocation_condition = (Parsers::DocumentAttributeCondition.parse(map['InvocationCondition']) unless map['InvocationCondition'].nil?)
        data.lambda_arn = map['LambdaArn']
        data.s3_bucket = map['S3Bucket']
        return data
      end
    end

    class DocumentAttributeCondition
      def self.parse(map)
        data = Types::DocumentAttributeCondition.new
        data.condition_document_attribute_key = map['ConditionDocumentAttributeKey']
        data.operator = map['Operator']
        data.condition_on_value = (Parsers::DocumentAttributeValue.parse(map['ConditionOnValue']) unless map['ConditionOnValue'].nil?)
        return data
      end
    end

    class DocumentAttributeValue
      def self.parse(map)
        data = Types::DocumentAttributeValue.new
        data.string_value = map['StringValue']
        data.string_list_value = (Parsers::DocumentAttributeStringListValue.parse(map['StringListValue']) unless map['StringListValue'].nil?)
        data.long_value = map['LongValue']
        data.date_value = Time.at(map['DateValue'].to_i) if map['DateValue']
        return data
      end
    end

    class DocumentAttributeStringListValue
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class InlineCustomDocumentEnrichmentConfigurationList
      def self.parse(list)
        list.map do |value|
          Parsers::InlineCustomDocumentEnrichmentConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class InlineCustomDocumentEnrichmentConfiguration
      def self.parse(map)
        data = Types::InlineCustomDocumentEnrichmentConfiguration.new
        data.condition = (Parsers::DocumentAttributeCondition.parse(map['Condition']) unless map['Condition'].nil?)
        data.target = (Parsers::DocumentAttributeTarget.parse(map['Target']) unless map['Target'].nil?)
        data.document_content_deletion = map['DocumentContentDeletion']
        return data
      end
    end

    class DocumentAttributeTarget
      def self.parse(map)
        data = Types::DocumentAttributeTarget.new
        data.target_document_attribute_key = map['TargetDocumentAttributeKey']
        data.target_document_attribute_value_deletion = map['TargetDocumentAttributeValueDeletion']
        data.target_document_attribute_value = (Parsers::DocumentAttributeValue.parse(map['TargetDocumentAttributeValue']) unless map['TargetDocumentAttributeValue'].nil?)
        return data
      end
    end

    class DataSourceConfiguration
      def self.parse(map)
        data = Types::DataSourceConfiguration.new
        data.s3_configuration = (Parsers::S3DataSourceConfiguration.parse(map['S3Configuration']) unless map['S3Configuration'].nil?)
        data.share_point_configuration = (Parsers::SharePointConfiguration.parse(map['SharePointConfiguration']) unless map['SharePointConfiguration'].nil?)
        data.database_configuration = (Parsers::DatabaseConfiguration.parse(map['DatabaseConfiguration']) unless map['DatabaseConfiguration'].nil?)
        data.salesforce_configuration = (Parsers::SalesforceConfiguration.parse(map['SalesforceConfiguration']) unless map['SalesforceConfiguration'].nil?)
        data.one_drive_configuration = (Parsers::OneDriveConfiguration.parse(map['OneDriveConfiguration']) unless map['OneDriveConfiguration'].nil?)
        data.service_now_configuration = (Parsers::ServiceNowConfiguration.parse(map['ServiceNowConfiguration']) unless map['ServiceNowConfiguration'].nil?)
        data.confluence_configuration = (Parsers::ConfluenceConfiguration.parse(map['ConfluenceConfiguration']) unless map['ConfluenceConfiguration'].nil?)
        data.google_drive_configuration = (Parsers::GoogleDriveConfiguration.parse(map['GoogleDriveConfiguration']) unless map['GoogleDriveConfiguration'].nil?)
        data.web_crawler_configuration = (Parsers::WebCrawlerConfiguration.parse(map['WebCrawlerConfiguration']) unless map['WebCrawlerConfiguration'].nil?)
        data.work_docs_configuration = (Parsers::WorkDocsConfiguration.parse(map['WorkDocsConfiguration']) unless map['WorkDocsConfiguration'].nil?)
        data.fsx_configuration = (Parsers::FsxConfiguration.parse(map['FsxConfiguration']) unless map['FsxConfiguration'].nil?)
        data.slack_configuration = (Parsers::SlackConfiguration.parse(map['SlackConfiguration']) unless map['SlackConfiguration'].nil?)
        data.box_configuration = (Parsers::BoxConfiguration.parse(map['BoxConfiguration']) unless map['BoxConfiguration'].nil?)
        data.quip_configuration = (Parsers::QuipConfiguration.parse(map['QuipConfiguration']) unless map['QuipConfiguration'].nil?)
        data.jira_configuration = (Parsers::JiraConfiguration.parse(map['JiraConfiguration']) unless map['JiraConfiguration'].nil?)
        data.git_hub_configuration = (Parsers::GitHubConfiguration.parse(map['GitHubConfiguration']) unless map['GitHubConfiguration'].nil?)
        return data
      end
    end

    class GitHubConfiguration
      def self.parse(map)
        data = Types::GitHubConfiguration.new
        data.saa_s_configuration = (Parsers::SaaSConfiguration.parse(map['SaaSConfiguration']) unless map['SaaSConfiguration'].nil?)
        data.on_premise_configuration = (Parsers::OnPremiseConfiguration.parse(map['OnPremiseConfiguration']) unless map['OnPremiseConfiguration'].nil?)
        data.type = map['Type']
        data.secret_arn = map['SecretArn']
        data.use_change_log = map['UseChangeLog']
        data.git_hub_document_crawl_properties = (Parsers::GitHubDocumentCrawlProperties.parse(map['GitHubDocumentCrawlProperties']) unless map['GitHubDocumentCrawlProperties'].nil?)
        data.repository_filter = (Parsers::RepositoryNames.parse(map['RepositoryFilter']) unless map['RepositoryFilter'].nil?)
        data.inclusion_folder_name_patterns = (Parsers::StringList.parse(map['InclusionFolderNamePatterns']) unless map['InclusionFolderNamePatterns'].nil?)
        data.inclusion_file_type_patterns = (Parsers::StringList.parse(map['InclusionFileTypePatterns']) unless map['InclusionFileTypePatterns'].nil?)
        data.inclusion_file_name_patterns = (Parsers::StringList.parse(map['InclusionFileNamePatterns']) unless map['InclusionFileNamePatterns'].nil?)
        data.exclusion_folder_name_patterns = (Parsers::StringList.parse(map['ExclusionFolderNamePatterns']) unless map['ExclusionFolderNamePatterns'].nil?)
        data.exclusion_file_type_patterns = (Parsers::StringList.parse(map['ExclusionFileTypePatterns']) unless map['ExclusionFileTypePatterns'].nil?)
        data.exclusion_file_name_patterns = (Parsers::StringList.parse(map['ExclusionFileNamePatterns']) unless map['ExclusionFileNamePatterns'].nil?)
        data.vpc_configuration = (Parsers::DataSourceVpcConfiguration.parse(map['VpcConfiguration']) unless map['VpcConfiguration'].nil?)
        data.git_hub_repository_configuration_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['GitHubRepositoryConfigurationFieldMappings']) unless map['GitHubRepositoryConfigurationFieldMappings'].nil?)
        data.git_hub_commit_configuration_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['GitHubCommitConfigurationFieldMappings']) unless map['GitHubCommitConfigurationFieldMappings'].nil?)
        data.git_hub_issue_document_configuration_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['GitHubIssueDocumentConfigurationFieldMappings']) unless map['GitHubIssueDocumentConfigurationFieldMappings'].nil?)
        data.git_hub_issue_comment_configuration_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['GitHubIssueCommentConfigurationFieldMappings']) unless map['GitHubIssueCommentConfigurationFieldMappings'].nil?)
        data.git_hub_issue_attachment_configuration_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['GitHubIssueAttachmentConfigurationFieldMappings']) unless map['GitHubIssueAttachmentConfigurationFieldMappings'].nil?)
        data.git_hub_pull_request_comment_configuration_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['GitHubPullRequestCommentConfigurationFieldMappings']) unless map['GitHubPullRequestCommentConfigurationFieldMappings'].nil?)
        data.git_hub_pull_request_document_configuration_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['GitHubPullRequestDocumentConfigurationFieldMappings']) unless map['GitHubPullRequestDocumentConfigurationFieldMappings'].nil?)
        data.git_hub_pull_request_document_attachment_configuration_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['GitHubPullRequestDocumentAttachmentConfigurationFieldMappings']) unless map['GitHubPullRequestDocumentAttachmentConfigurationFieldMappings'].nil?)
        return data
      end
    end

    class DataSourceToIndexFieldMappingList
      def self.parse(list)
        list.map do |value|
          Parsers::DataSourceToIndexFieldMapping.parse(value) unless value.nil?
        end
      end
    end

    class DataSourceToIndexFieldMapping
      def self.parse(map)
        data = Types::DataSourceToIndexFieldMapping.new
        data.data_source_field_name = map['DataSourceFieldName']
        data.date_field_format = map['DateFieldFormat']
        data.index_field_name = map['IndexFieldName']
        return data
      end
    end

    class DataSourceVpcConfiguration
      def self.parse(map)
        data = Types::DataSourceVpcConfiguration.new
        data.subnet_ids = (Parsers::SubnetIdList.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.security_group_ids = (Parsers::SecurityGroupIdList.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        return data
      end
    end

    class SecurityGroupIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SubnetIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class StringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class RepositoryNames
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class GitHubDocumentCrawlProperties
      def self.parse(map)
        data = Types::GitHubDocumentCrawlProperties.new
        data.crawl_repository_documents = map['CrawlRepositoryDocuments']
        data.crawl_issue = map['CrawlIssue']
        data.crawl_issue_comment = map['CrawlIssueComment']
        data.crawl_issue_comment_attachment = map['CrawlIssueCommentAttachment']
        data.crawl_pull_request = map['CrawlPullRequest']
        data.crawl_pull_request_comment = map['CrawlPullRequestComment']
        data.crawl_pull_request_comment_attachment = map['CrawlPullRequestCommentAttachment']
        return data
      end
    end

    class OnPremiseConfiguration
      def self.parse(map)
        data = Types::OnPremiseConfiguration.new
        data.host_url = map['HostUrl']
        data.organization_name = map['OrganizationName']
        data.ssl_certificate_s3_path = (Parsers::S3Path.parse(map['SslCertificateS3Path']) unless map['SslCertificateS3Path'].nil?)
        return data
      end
    end

    class S3Path
      def self.parse(map)
        data = Types::S3Path.new
        data.bucket = map['Bucket']
        data.key = map['Key']
        return data
      end
    end

    class SaaSConfiguration
      def self.parse(map)
        data = Types::SaaSConfiguration.new
        data.organization_name = map['OrganizationName']
        data.host_url = map['HostUrl']
        return data
      end
    end

    class JiraConfiguration
      def self.parse(map)
        data = Types::JiraConfiguration.new
        data.jira_account_url = map['JiraAccountUrl']
        data.secret_arn = map['SecretArn']
        data.use_change_log = map['UseChangeLog']
        data.project = (Parsers::Project.parse(map['Project']) unless map['Project'].nil?)
        data.issue_type = (Parsers::IssueType.parse(map['IssueType']) unless map['IssueType'].nil?)
        data.status = (Parsers::JiraStatus.parse(map['Status']) unless map['Status'].nil?)
        data.issue_sub_entity_filter = (Parsers::IssueSubEntityFilter.parse(map['IssueSubEntityFilter']) unless map['IssueSubEntityFilter'].nil?)
        data.attachment_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['AttachmentFieldMappings']) unless map['AttachmentFieldMappings'].nil?)
        data.comment_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['CommentFieldMappings']) unless map['CommentFieldMappings'].nil?)
        data.issue_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['IssueFieldMappings']) unless map['IssueFieldMappings'].nil?)
        data.project_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['ProjectFieldMappings']) unless map['ProjectFieldMappings'].nil?)
        data.work_log_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['WorkLogFieldMappings']) unless map['WorkLogFieldMappings'].nil?)
        data.inclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['InclusionPatterns']) unless map['InclusionPatterns'].nil?)
        data.exclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['ExclusionPatterns']) unless map['ExclusionPatterns'].nil?)
        data.vpc_configuration = (Parsers::DataSourceVpcConfiguration.parse(map['VpcConfiguration']) unless map['VpcConfiguration'].nil?)
        return data
      end
    end

    class DataSourceInclusionsExclusionsStrings
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class IssueSubEntityFilter
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class JiraStatus
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class IssueType
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Project
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class QuipConfiguration
      def self.parse(map)
        data = Types::QuipConfiguration.new
        data.domain = map['Domain']
        data.secret_arn = map['SecretArn']
        data.crawl_file_comments = map['CrawlFileComments']
        data.crawl_chat_rooms = map['CrawlChatRooms']
        data.crawl_attachments = map['CrawlAttachments']
        data.folder_ids = (Parsers::FolderIdList.parse(map['FolderIds']) unless map['FolderIds'].nil?)
        data.thread_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['ThreadFieldMappings']) unless map['ThreadFieldMappings'].nil?)
        data.message_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['MessageFieldMappings']) unless map['MessageFieldMappings'].nil?)
        data.attachment_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['AttachmentFieldMappings']) unless map['AttachmentFieldMappings'].nil?)
        data.inclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['InclusionPatterns']) unless map['InclusionPatterns'].nil?)
        data.exclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['ExclusionPatterns']) unless map['ExclusionPatterns'].nil?)
        data.vpc_configuration = (Parsers::DataSourceVpcConfiguration.parse(map['VpcConfiguration']) unless map['VpcConfiguration'].nil?)
        return data
      end
    end

    class FolderIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class BoxConfiguration
      def self.parse(map)
        data = Types::BoxConfiguration.new
        data.enterprise_id = map['EnterpriseId']
        data.secret_arn = map['SecretArn']
        data.use_change_log = map['UseChangeLog']
        data.crawl_comments = map['CrawlComments']
        data.crawl_tasks = map['CrawlTasks']
        data.crawl_web_links = map['CrawlWebLinks']
        data.file_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['FileFieldMappings']) unless map['FileFieldMappings'].nil?)
        data.task_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['TaskFieldMappings']) unless map['TaskFieldMappings'].nil?)
        data.comment_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['CommentFieldMappings']) unless map['CommentFieldMappings'].nil?)
        data.web_link_field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['WebLinkFieldMappings']) unless map['WebLinkFieldMappings'].nil?)
        data.inclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['InclusionPatterns']) unless map['InclusionPatterns'].nil?)
        data.exclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['ExclusionPatterns']) unless map['ExclusionPatterns'].nil?)
        data.vpc_configuration = (Parsers::DataSourceVpcConfiguration.parse(map['VpcConfiguration']) unless map['VpcConfiguration'].nil?)
        return data
      end
    end

    class SlackConfiguration
      def self.parse(map)
        data = Types::SlackConfiguration.new
        data.team_id = map['TeamId']
        data.secret_arn = map['SecretArn']
        data.vpc_configuration = (Parsers::DataSourceVpcConfiguration.parse(map['VpcConfiguration']) unless map['VpcConfiguration'].nil?)
        data.slack_entity_list = (Parsers::SlackEntityList.parse(map['SlackEntityList']) unless map['SlackEntityList'].nil?)
        data.use_change_log = map['UseChangeLog']
        data.crawl_bot_message = map['CrawlBotMessage']
        data.exclude_archived = map['ExcludeArchived']
        data.since_crawl_date = map['SinceCrawlDate']
        data.look_back_period = map['LookBackPeriod']
        data.private_channel_filter = (Parsers::PrivateChannelFilter.parse(map['PrivateChannelFilter']) unless map['PrivateChannelFilter'].nil?)
        data.public_channel_filter = (Parsers::PublicChannelFilter.parse(map['PublicChannelFilter']) unless map['PublicChannelFilter'].nil?)
        data.inclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['InclusionPatterns']) unless map['InclusionPatterns'].nil?)
        data.exclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['ExclusionPatterns']) unless map['ExclusionPatterns'].nil?)
        data.field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['FieldMappings']) unless map['FieldMappings'].nil?)
        return data
      end
    end

    class PublicChannelFilter
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class PrivateChannelFilter
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SlackEntityList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class FsxConfiguration
      def self.parse(map)
        data = Types::FsxConfiguration.new
        data.file_system_id = map['FileSystemId']
        data.file_system_type = map['FileSystemType']
        data.vpc_configuration = (Parsers::DataSourceVpcConfiguration.parse(map['VpcConfiguration']) unless map['VpcConfiguration'].nil?)
        data.secret_arn = map['SecretArn']
        data.inclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['InclusionPatterns']) unless map['InclusionPatterns'].nil?)
        data.exclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['ExclusionPatterns']) unless map['ExclusionPatterns'].nil?)
        data.field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['FieldMappings']) unless map['FieldMappings'].nil?)
        return data
      end
    end

    class WorkDocsConfiguration
      def self.parse(map)
        data = Types::WorkDocsConfiguration.new
        data.organization_id = map['OrganizationId']
        data.crawl_comments = map['CrawlComments']
        data.use_change_log = map['UseChangeLog']
        data.inclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['InclusionPatterns']) unless map['InclusionPatterns'].nil?)
        data.exclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['ExclusionPatterns']) unless map['ExclusionPatterns'].nil?)
        data.field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['FieldMappings']) unless map['FieldMappings'].nil?)
        return data
      end
    end

    class WebCrawlerConfiguration
      def self.parse(map)
        data = Types::WebCrawlerConfiguration.new
        data.urls = (Parsers::Urls.parse(map['Urls']) unless map['Urls'].nil?)
        data.crawl_depth = map['CrawlDepth']
        data.max_links_per_page = map['MaxLinksPerPage']
        data.max_content_size_per_page_in_mega_bytes = Hearth::NumberHelper.deserialize(map['MaxContentSizePerPageInMegaBytes'])
        data.max_urls_per_minute_crawl_rate = map['MaxUrlsPerMinuteCrawlRate']
        data.url_inclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['UrlInclusionPatterns']) unless map['UrlInclusionPatterns'].nil?)
        data.url_exclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['UrlExclusionPatterns']) unless map['UrlExclusionPatterns'].nil?)
        data.proxy_configuration = (Parsers::ProxyConfiguration.parse(map['ProxyConfiguration']) unless map['ProxyConfiguration'].nil?)
        data.authentication_configuration = (Parsers::AuthenticationConfiguration.parse(map['AuthenticationConfiguration']) unless map['AuthenticationConfiguration'].nil?)
        return data
      end
    end

    class AuthenticationConfiguration
      def self.parse(map)
        data = Types::AuthenticationConfiguration.new
        data.basic_authentication = (Parsers::BasicAuthenticationConfigurationList.parse(map['BasicAuthentication']) unless map['BasicAuthentication'].nil?)
        return data
      end
    end

    class BasicAuthenticationConfigurationList
      def self.parse(list)
        list.map do |value|
          Parsers::BasicAuthenticationConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class BasicAuthenticationConfiguration
      def self.parse(map)
        data = Types::BasicAuthenticationConfiguration.new
        data.host = map['Host']
        data.port = map['Port']
        data.credentials = map['Credentials']
        return data
      end
    end

    class ProxyConfiguration
      def self.parse(map)
        data = Types::ProxyConfiguration.new
        data.host = map['Host']
        data.port = map['Port']
        data.credentials = map['Credentials']
        return data
      end
    end

    class Urls
      def self.parse(map)
        data = Types::Urls.new
        data.seed_url_configuration = (Parsers::SeedUrlConfiguration.parse(map['SeedUrlConfiguration']) unless map['SeedUrlConfiguration'].nil?)
        data.site_maps_configuration = (Parsers::SiteMapsConfiguration.parse(map['SiteMapsConfiguration']) unless map['SiteMapsConfiguration'].nil?)
        return data
      end
    end

    class SiteMapsConfiguration
      def self.parse(map)
        data = Types::SiteMapsConfiguration.new
        data.site_maps = (Parsers::SiteMapsList.parse(map['SiteMaps']) unless map['SiteMaps'].nil?)
        return data
      end
    end

    class SiteMapsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SeedUrlConfiguration
      def self.parse(map)
        data = Types::SeedUrlConfiguration.new
        data.seed_urls = (Parsers::SeedUrlList.parse(map['SeedUrls']) unless map['SeedUrls'].nil?)
        data.web_crawler_mode = map['WebCrawlerMode']
        return data
      end
    end

    class SeedUrlList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class GoogleDriveConfiguration
      def self.parse(map)
        data = Types::GoogleDriveConfiguration.new
        data.secret_arn = map['SecretArn']
        data.inclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['InclusionPatterns']) unless map['InclusionPatterns'].nil?)
        data.exclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['ExclusionPatterns']) unless map['ExclusionPatterns'].nil?)
        data.field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['FieldMappings']) unless map['FieldMappings'].nil?)
        data.exclude_mime_types = (Parsers::ExcludeMimeTypesList.parse(map['ExcludeMimeTypes']) unless map['ExcludeMimeTypes'].nil?)
        data.exclude_user_accounts = (Parsers::ExcludeUserAccountsList.parse(map['ExcludeUserAccounts']) unless map['ExcludeUserAccounts'].nil?)
        data.exclude_shared_drives = (Parsers::ExcludeSharedDrivesList.parse(map['ExcludeSharedDrives']) unless map['ExcludeSharedDrives'].nil?)
        return data
      end
    end

    class ExcludeSharedDrivesList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ExcludeUserAccountsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ExcludeMimeTypesList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ConfluenceConfiguration
      def self.parse(map)
        data = Types::ConfluenceConfiguration.new
        data.server_url = map['ServerUrl']
        data.secret_arn = map['SecretArn']
        data.version = map['Version']
        data.space_configuration = (Parsers::ConfluenceSpaceConfiguration.parse(map['SpaceConfiguration']) unless map['SpaceConfiguration'].nil?)
        data.page_configuration = (Parsers::ConfluencePageConfiguration.parse(map['PageConfiguration']) unless map['PageConfiguration'].nil?)
        data.blog_configuration = (Parsers::ConfluenceBlogConfiguration.parse(map['BlogConfiguration']) unless map['BlogConfiguration'].nil?)
        data.attachment_configuration = (Parsers::ConfluenceAttachmentConfiguration.parse(map['AttachmentConfiguration']) unless map['AttachmentConfiguration'].nil?)
        data.vpc_configuration = (Parsers::DataSourceVpcConfiguration.parse(map['VpcConfiguration']) unless map['VpcConfiguration'].nil?)
        data.inclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['InclusionPatterns']) unless map['InclusionPatterns'].nil?)
        data.exclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['ExclusionPatterns']) unless map['ExclusionPatterns'].nil?)
        return data
      end
    end

    class ConfluenceAttachmentConfiguration
      def self.parse(map)
        data = Types::ConfluenceAttachmentConfiguration.new
        data.crawl_attachments = map['CrawlAttachments']
        data.attachment_field_mappings = (Parsers::ConfluenceAttachmentFieldMappingsList.parse(map['AttachmentFieldMappings']) unless map['AttachmentFieldMappings'].nil?)
        return data
      end
    end

    class ConfluenceAttachmentFieldMappingsList
      def self.parse(list)
        list.map do |value|
          Parsers::ConfluenceAttachmentToIndexFieldMapping.parse(value) unless value.nil?
        end
      end
    end

    class ConfluenceAttachmentToIndexFieldMapping
      def self.parse(map)
        data = Types::ConfluenceAttachmentToIndexFieldMapping.new
        data.data_source_field_name = map['DataSourceFieldName']
        data.date_field_format = map['DateFieldFormat']
        data.index_field_name = map['IndexFieldName']
        return data
      end
    end

    class ConfluenceBlogConfiguration
      def self.parse(map)
        data = Types::ConfluenceBlogConfiguration.new
        data.blog_field_mappings = (Parsers::ConfluenceBlogFieldMappingsList.parse(map['BlogFieldMappings']) unless map['BlogFieldMappings'].nil?)
        return data
      end
    end

    class ConfluenceBlogFieldMappingsList
      def self.parse(list)
        list.map do |value|
          Parsers::ConfluenceBlogToIndexFieldMapping.parse(value) unless value.nil?
        end
      end
    end

    class ConfluenceBlogToIndexFieldMapping
      def self.parse(map)
        data = Types::ConfluenceBlogToIndexFieldMapping.new
        data.data_source_field_name = map['DataSourceFieldName']
        data.date_field_format = map['DateFieldFormat']
        data.index_field_name = map['IndexFieldName']
        return data
      end
    end

    class ConfluencePageConfiguration
      def self.parse(map)
        data = Types::ConfluencePageConfiguration.new
        data.page_field_mappings = (Parsers::ConfluencePageFieldMappingsList.parse(map['PageFieldMappings']) unless map['PageFieldMappings'].nil?)
        return data
      end
    end

    class ConfluencePageFieldMappingsList
      def self.parse(list)
        list.map do |value|
          Parsers::ConfluencePageToIndexFieldMapping.parse(value) unless value.nil?
        end
      end
    end

    class ConfluencePageToIndexFieldMapping
      def self.parse(map)
        data = Types::ConfluencePageToIndexFieldMapping.new
        data.data_source_field_name = map['DataSourceFieldName']
        data.date_field_format = map['DateFieldFormat']
        data.index_field_name = map['IndexFieldName']
        return data
      end
    end

    class ConfluenceSpaceConfiguration
      def self.parse(map)
        data = Types::ConfluenceSpaceConfiguration.new
        data.crawl_personal_spaces = map['CrawlPersonalSpaces']
        data.crawl_archived_spaces = map['CrawlArchivedSpaces']
        data.include_spaces = (Parsers::ConfluenceSpaceList.parse(map['IncludeSpaces']) unless map['IncludeSpaces'].nil?)
        data.exclude_spaces = (Parsers::ConfluenceSpaceList.parse(map['ExcludeSpaces']) unless map['ExcludeSpaces'].nil?)
        data.space_field_mappings = (Parsers::ConfluenceSpaceFieldMappingsList.parse(map['SpaceFieldMappings']) unless map['SpaceFieldMappings'].nil?)
        return data
      end
    end

    class ConfluenceSpaceFieldMappingsList
      def self.parse(list)
        list.map do |value|
          Parsers::ConfluenceSpaceToIndexFieldMapping.parse(value) unless value.nil?
        end
      end
    end

    class ConfluenceSpaceToIndexFieldMapping
      def self.parse(map)
        data = Types::ConfluenceSpaceToIndexFieldMapping.new
        data.data_source_field_name = map['DataSourceFieldName']
        data.date_field_format = map['DateFieldFormat']
        data.index_field_name = map['IndexFieldName']
        return data
      end
    end

    class ConfluenceSpaceList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ServiceNowConfiguration
      def self.parse(map)
        data = Types::ServiceNowConfiguration.new
        data.host_url = map['HostUrl']
        data.secret_arn = map['SecretArn']
        data.service_now_build_version = map['ServiceNowBuildVersion']
        data.knowledge_article_configuration = (Parsers::ServiceNowKnowledgeArticleConfiguration.parse(map['KnowledgeArticleConfiguration']) unless map['KnowledgeArticleConfiguration'].nil?)
        data.service_catalog_configuration = (Parsers::ServiceNowServiceCatalogConfiguration.parse(map['ServiceCatalogConfiguration']) unless map['ServiceCatalogConfiguration'].nil?)
        data.authentication_type = map['AuthenticationType']
        return data
      end
    end

    class ServiceNowServiceCatalogConfiguration
      def self.parse(map)
        data = Types::ServiceNowServiceCatalogConfiguration.new
        data.crawl_attachments = map['CrawlAttachments']
        data.include_attachment_file_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['IncludeAttachmentFilePatterns']) unless map['IncludeAttachmentFilePatterns'].nil?)
        data.exclude_attachment_file_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['ExcludeAttachmentFilePatterns']) unless map['ExcludeAttachmentFilePatterns'].nil?)
        data.document_data_field_name = map['DocumentDataFieldName']
        data.document_title_field_name = map['DocumentTitleFieldName']
        data.field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['FieldMappings']) unless map['FieldMappings'].nil?)
        return data
      end
    end

    class ServiceNowKnowledgeArticleConfiguration
      def self.parse(map)
        data = Types::ServiceNowKnowledgeArticleConfiguration.new
        data.crawl_attachments = map['CrawlAttachments']
        data.include_attachment_file_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['IncludeAttachmentFilePatterns']) unless map['IncludeAttachmentFilePatterns'].nil?)
        data.exclude_attachment_file_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['ExcludeAttachmentFilePatterns']) unless map['ExcludeAttachmentFilePatterns'].nil?)
        data.document_data_field_name = map['DocumentDataFieldName']
        data.document_title_field_name = map['DocumentTitleFieldName']
        data.field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['FieldMappings']) unless map['FieldMappings'].nil?)
        data.filter_query = map['FilterQuery']
        return data
      end
    end

    class OneDriveConfiguration
      def self.parse(map)
        data = Types::OneDriveConfiguration.new
        data.tenant_domain = map['TenantDomain']
        data.secret_arn = map['SecretArn']
        data.one_drive_users = (Parsers::OneDriveUsers.parse(map['OneDriveUsers']) unless map['OneDriveUsers'].nil?)
        data.inclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['InclusionPatterns']) unless map['InclusionPatterns'].nil?)
        data.exclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['ExclusionPatterns']) unless map['ExclusionPatterns'].nil?)
        data.field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['FieldMappings']) unless map['FieldMappings'].nil?)
        data.disable_local_groups = map['DisableLocalGroups']
        return data
      end
    end

    class OneDriveUsers
      def self.parse(map)
        data = Types::OneDriveUsers.new
        data.one_drive_user_list = (Parsers::OneDriveUserList.parse(map['OneDriveUserList']) unless map['OneDriveUserList'].nil?)
        data.one_drive_user_s3_path = (Parsers::S3Path.parse(map['OneDriveUserS3Path']) unless map['OneDriveUserS3Path'].nil?)
        return data
      end
    end

    class OneDriveUserList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SalesforceConfiguration
      def self.parse(map)
        data = Types::SalesforceConfiguration.new
        data.server_url = map['ServerUrl']
        data.secret_arn = map['SecretArn']
        data.standard_object_configurations = (Parsers::SalesforceStandardObjectConfigurationList.parse(map['StandardObjectConfigurations']) unless map['StandardObjectConfigurations'].nil?)
        data.knowledge_article_configuration = (Parsers::SalesforceKnowledgeArticleConfiguration.parse(map['KnowledgeArticleConfiguration']) unless map['KnowledgeArticleConfiguration'].nil?)
        data.chatter_feed_configuration = (Parsers::SalesforceChatterFeedConfiguration.parse(map['ChatterFeedConfiguration']) unless map['ChatterFeedConfiguration'].nil?)
        data.crawl_attachments = map['CrawlAttachments']
        data.standard_object_attachment_configuration = (Parsers::SalesforceStandardObjectAttachmentConfiguration.parse(map['StandardObjectAttachmentConfiguration']) unless map['StandardObjectAttachmentConfiguration'].nil?)
        data.include_attachment_file_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['IncludeAttachmentFilePatterns']) unless map['IncludeAttachmentFilePatterns'].nil?)
        data.exclude_attachment_file_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['ExcludeAttachmentFilePatterns']) unless map['ExcludeAttachmentFilePatterns'].nil?)
        return data
      end
    end

    class SalesforceStandardObjectAttachmentConfiguration
      def self.parse(map)
        data = Types::SalesforceStandardObjectAttachmentConfiguration.new
        data.document_title_field_name = map['DocumentTitleFieldName']
        data.field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['FieldMappings']) unless map['FieldMappings'].nil?)
        return data
      end
    end

    class SalesforceChatterFeedConfiguration
      def self.parse(map)
        data = Types::SalesforceChatterFeedConfiguration.new
        data.document_data_field_name = map['DocumentDataFieldName']
        data.document_title_field_name = map['DocumentTitleFieldName']
        data.field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['FieldMappings']) unless map['FieldMappings'].nil?)
        data.include_filter_types = (Parsers::SalesforceChatterFeedIncludeFilterTypes.parse(map['IncludeFilterTypes']) unless map['IncludeFilterTypes'].nil?)
        return data
      end
    end

    class SalesforceChatterFeedIncludeFilterTypes
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SalesforceKnowledgeArticleConfiguration
      def self.parse(map)
        data = Types::SalesforceKnowledgeArticleConfiguration.new
        data.included_states = (Parsers::SalesforceKnowledgeArticleStateList.parse(map['IncludedStates']) unless map['IncludedStates'].nil?)
        data.standard_knowledge_article_type_configuration = (Parsers::SalesforceStandardKnowledgeArticleTypeConfiguration.parse(map['StandardKnowledgeArticleTypeConfiguration']) unless map['StandardKnowledgeArticleTypeConfiguration'].nil?)
        data.custom_knowledge_article_type_configurations = (Parsers::SalesforceCustomKnowledgeArticleTypeConfigurationList.parse(map['CustomKnowledgeArticleTypeConfigurations']) unless map['CustomKnowledgeArticleTypeConfigurations'].nil?)
        return data
      end
    end

    class SalesforceCustomKnowledgeArticleTypeConfigurationList
      def self.parse(list)
        list.map do |value|
          Parsers::SalesforceCustomKnowledgeArticleTypeConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class SalesforceCustomKnowledgeArticleTypeConfiguration
      def self.parse(map)
        data = Types::SalesforceCustomKnowledgeArticleTypeConfiguration.new
        data.name = map['Name']
        data.document_data_field_name = map['DocumentDataFieldName']
        data.document_title_field_name = map['DocumentTitleFieldName']
        data.field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['FieldMappings']) unless map['FieldMappings'].nil?)
        return data
      end
    end

    class SalesforceStandardKnowledgeArticleTypeConfiguration
      def self.parse(map)
        data = Types::SalesforceStandardKnowledgeArticleTypeConfiguration.new
        data.document_data_field_name = map['DocumentDataFieldName']
        data.document_title_field_name = map['DocumentTitleFieldName']
        data.field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['FieldMappings']) unless map['FieldMappings'].nil?)
        return data
      end
    end

    class SalesforceKnowledgeArticleStateList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SalesforceStandardObjectConfigurationList
      def self.parse(list)
        list.map do |value|
          Parsers::SalesforceStandardObjectConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class SalesforceStandardObjectConfiguration
      def self.parse(map)
        data = Types::SalesforceStandardObjectConfiguration.new
        data.name = map['Name']
        data.document_data_field_name = map['DocumentDataFieldName']
        data.document_title_field_name = map['DocumentTitleFieldName']
        data.field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['FieldMappings']) unless map['FieldMappings'].nil?)
        return data
      end
    end

    class DatabaseConfiguration
      def self.parse(map)
        data = Types::DatabaseConfiguration.new
        data.database_engine_type = map['DatabaseEngineType']
        data.connection_configuration = (Parsers::ConnectionConfiguration.parse(map['ConnectionConfiguration']) unless map['ConnectionConfiguration'].nil?)
        data.vpc_configuration = (Parsers::DataSourceVpcConfiguration.parse(map['VpcConfiguration']) unless map['VpcConfiguration'].nil?)
        data.column_configuration = (Parsers::ColumnConfiguration.parse(map['ColumnConfiguration']) unless map['ColumnConfiguration'].nil?)
        data.acl_configuration = (Parsers::AclConfiguration.parse(map['AclConfiguration']) unless map['AclConfiguration'].nil?)
        data.sql_configuration = (Parsers::SqlConfiguration.parse(map['SqlConfiguration']) unless map['SqlConfiguration'].nil?)
        return data
      end
    end

    class SqlConfiguration
      def self.parse(map)
        data = Types::SqlConfiguration.new
        data.query_identifiers_enclosing_option = map['QueryIdentifiersEnclosingOption']
        return data
      end
    end

    class AclConfiguration
      def self.parse(map)
        data = Types::AclConfiguration.new
        data.allowed_groups_column_name = map['AllowedGroupsColumnName']
        return data
      end
    end

    class ColumnConfiguration
      def self.parse(map)
        data = Types::ColumnConfiguration.new
        data.document_id_column_name = map['DocumentIdColumnName']
        data.document_data_column_name = map['DocumentDataColumnName']
        data.document_title_column_name = map['DocumentTitleColumnName']
        data.field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['FieldMappings']) unless map['FieldMappings'].nil?)
        data.change_detecting_columns = (Parsers::ChangeDetectingColumns.parse(map['ChangeDetectingColumns']) unless map['ChangeDetectingColumns'].nil?)
        return data
      end
    end

    class ChangeDetectingColumns
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ConnectionConfiguration
      def self.parse(map)
        data = Types::ConnectionConfiguration.new
        data.database_host = map['DatabaseHost']
        data.database_port = map['DatabasePort']
        data.database_name = map['DatabaseName']
        data.table_name = map['TableName']
        data.secret_arn = map['SecretArn']
        return data
      end
    end

    class SharePointConfiguration
      def self.parse(map)
        data = Types::SharePointConfiguration.new
        data.share_point_version = map['SharePointVersion']
        data.urls = (Parsers::SharePointUrlList.parse(map['Urls']) unless map['Urls'].nil?)
        data.secret_arn = map['SecretArn']
        data.crawl_attachments = map['CrawlAttachments']
        data.use_change_log = map['UseChangeLog']
        data.inclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['InclusionPatterns']) unless map['InclusionPatterns'].nil?)
        data.exclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['ExclusionPatterns']) unless map['ExclusionPatterns'].nil?)
        data.vpc_configuration = (Parsers::DataSourceVpcConfiguration.parse(map['VpcConfiguration']) unless map['VpcConfiguration'].nil?)
        data.field_mappings = (Parsers::DataSourceToIndexFieldMappingList.parse(map['FieldMappings']) unless map['FieldMappings'].nil?)
        data.document_title_field_name = map['DocumentTitleFieldName']
        data.disable_local_groups = map['DisableLocalGroups']
        data.ssl_certificate_s3_path = (Parsers::S3Path.parse(map['SslCertificateS3Path']) unless map['SslCertificateS3Path'].nil?)
        return data
      end
    end

    class SharePointUrlList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class S3DataSourceConfiguration
      def self.parse(map)
        data = Types::S3DataSourceConfiguration.new
        data.bucket_name = map['BucketName']
        data.inclusion_prefixes = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['InclusionPrefixes']) unless map['InclusionPrefixes'].nil?)
        data.inclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['InclusionPatterns']) unless map['InclusionPatterns'].nil?)
        data.exclusion_patterns = (Parsers::DataSourceInclusionsExclusionsStrings.parse(map['ExclusionPatterns']) unless map['ExclusionPatterns'].nil?)
        data.documents_metadata_configuration = (Parsers::DocumentsMetadataConfiguration.parse(map['DocumentsMetadataConfiguration']) unless map['DocumentsMetadataConfiguration'].nil?)
        data.access_control_list_configuration = (Parsers::AccessControlListConfiguration.parse(map['AccessControlListConfiguration']) unless map['AccessControlListConfiguration'].nil?)
        return data
      end
    end

    class AccessControlListConfiguration
      def self.parse(map)
        data = Types::AccessControlListConfiguration.new
        data.key_path = map['KeyPath']
        return data
      end
    end

    class DocumentsMetadataConfiguration
      def self.parse(map)
        data = Types::DocumentsMetadataConfiguration.new
        data.s3_prefix = map['S3Prefix']
        return data
      end
    end

    # Operation Parser for DescribeExperience
    class DescribeExperience
      def self.parse(http_resp)
        data = Types::DescribeExperienceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['Id']
        data.index_id = map['IndexId']
        data.name = map['Name']
        data.endpoints = (Parsers::ExperienceEndpoints.parse(map['Endpoints']) unless map['Endpoints'].nil?)
        data.configuration = (Parsers::ExperienceConfiguration.parse(map['Configuration']) unless map['Configuration'].nil?)
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.description = map['Description']
        data.status = map['Status']
        data.role_arn = map['RoleArn']
        data.error_message = map['ErrorMessage']
        data
      end
    end

    class ExperienceConfiguration
      def self.parse(map)
        data = Types::ExperienceConfiguration.new
        data.content_source_configuration = (Parsers::ContentSourceConfiguration.parse(map['ContentSourceConfiguration']) unless map['ContentSourceConfiguration'].nil?)
        data.user_identity_configuration = (Parsers::UserIdentityConfiguration.parse(map['UserIdentityConfiguration']) unless map['UserIdentityConfiguration'].nil?)
        return data
      end
    end

    class UserIdentityConfiguration
      def self.parse(map)
        data = Types::UserIdentityConfiguration.new
        data.identity_attribute_name = map['IdentityAttributeName']
        return data
      end
    end

    class ContentSourceConfiguration
      def self.parse(map)
        data = Types::ContentSourceConfiguration.new
        data.data_source_ids = (Parsers::DataSourceIdList.parse(map['DataSourceIds']) unless map['DataSourceIds'].nil?)
        data.faq_ids = (Parsers::FaqIdsList.parse(map['FaqIds']) unless map['FaqIds'].nil?)
        data.direct_put_content = map['DirectPutContent']
        return data
      end
    end

    class FaqIdsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class DataSourceIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ExperienceEndpoints
      def self.parse(list)
        list.map do |value|
          Parsers::ExperienceEndpoint.parse(value) unless value.nil?
        end
      end
    end

    class ExperienceEndpoint
      def self.parse(map)
        data = Types::ExperienceEndpoint.new
        data.endpoint_type = map['EndpointType']
        data.endpoint = map['Endpoint']
        return data
      end
    end

    # Operation Parser for DescribeFaq
    class DescribeFaq
      def self.parse(http_resp)
        data = Types::DescribeFaqOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['Id']
        data.index_id = map['IndexId']
        data.name = map['Name']
        data.description = map['Description']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.s3_path = (Parsers::S3Path.parse(map['S3Path']) unless map['S3Path'].nil?)
        data.status = map['Status']
        data.role_arn = map['RoleArn']
        data.error_message = map['ErrorMessage']
        data.file_format = map['FileFormat']
        data.language_code = map['LanguageCode']
        data
      end
    end

    # Operation Parser for DescribeIndex
    class DescribeIndex
      def self.parse(http_resp)
        data = Types::DescribeIndexOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.id = map['Id']
        data.edition = map['Edition']
        data.role_arn = map['RoleArn']
        data.server_side_encryption_configuration = (Parsers::ServerSideEncryptionConfiguration.parse(map['ServerSideEncryptionConfiguration']) unless map['ServerSideEncryptionConfiguration'].nil?)
        data.status = map['Status']
        data.description = map['Description']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.document_metadata_configurations = (Parsers::DocumentMetadataConfigurationList.parse(map['DocumentMetadataConfigurations']) unless map['DocumentMetadataConfigurations'].nil?)
        data.index_statistics = (Parsers::IndexStatistics.parse(map['IndexStatistics']) unless map['IndexStatistics'].nil?)
        data.error_message = map['ErrorMessage']
        data.capacity_units = (Parsers::CapacityUnitsConfiguration.parse(map['CapacityUnits']) unless map['CapacityUnits'].nil?)
        data.user_token_configurations = (Parsers::UserTokenConfigurationList.parse(map['UserTokenConfigurations']) unless map['UserTokenConfigurations'].nil?)
        data.user_context_policy = map['UserContextPolicy']
        data.user_group_resolution_configuration = (Parsers::UserGroupResolutionConfiguration.parse(map['UserGroupResolutionConfiguration']) unless map['UserGroupResolutionConfiguration'].nil?)
        data
      end
    end

    class UserGroupResolutionConfiguration
      def self.parse(map)
        data = Types::UserGroupResolutionConfiguration.new
        data.user_group_resolution_mode = map['UserGroupResolutionMode']
        return data
      end
    end

    class UserTokenConfigurationList
      def self.parse(list)
        list.map do |value|
          Parsers::UserTokenConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class UserTokenConfiguration
      def self.parse(map)
        data = Types::UserTokenConfiguration.new
        data.jwt_token_type_configuration = (Parsers::JwtTokenTypeConfiguration.parse(map['JwtTokenTypeConfiguration']) unless map['JwtTokenTypeConfiguration'].nil?)
        data.json_token_type_configuration = (Parsers::JsonTokenTypeConfiguration.parse(map['JsonTokenTypeConfiguration']) unless map['JsonTokenTypeConfiguration'].nil?)
        return data
      end
    end

    class JsonTokenTypeConfiguration
      def self.parse(map)
        data = Types::JsonTokenTypeConfiguration.new
        data.user_name_attribute_field = map['UserNameAttributeField']
        data.group_attribute_field = map['GroupAttributeField']
        return data
      end
    end

    class JwtTokenTypeConfiguration
      def self.parse(map)
        data = Types::JwtTokenTypeConfiguration.new
        data.key_location = map['KeyLocation']
        data.url = map['URL']
        data.secret_manager_arn = map['SecretManagerArn']
        data.user_name_attribute_field = map['UserNameAttributeField']
        data.group_attribute_field = map['GroupAttributeField']
        data.issuer = map['Issuer']
        data.claim_regex = map['ClaimRegex']
        return data
      end
    end

    class CapacityUnitsConfiguration
      def self.parse(map)
        data = Types::CapacityUnitsConfiguration.new
        data.storage_capacity_units = map['StorageCapacityUnits']
        data.query_capacity_units = map['QueryCapacityUnits']
        return data
      end
    end

    class IndexStatistics
      def self.parse(map)
        data = Types::IndexStatistics.new
        data.faq_statistics = (Parsers::FaqStatistics.parse(map['FaqStatistics']) unless map['FaqStatistics'].nil?)
        data.text_document_statistics = (Parsers::TextDocumentStatistics.parse(map['TextDocumentStatistics']) unless map['TextDocumentStatistics'].nil?)
        return data
      end
    end

    class TextDocumentStatistics
      def self.parse(map)
        data = Types::TextDocumentStatistics.new
        data.indexed_text_documents_count = map['IndexedTextDocumentsCount']
        data.indexed_text_bytes = map['IndexedTextBytes']
        return data
      end
    end

    class FaqStatistics
      def self.parse(map)
        data = Types::FaqStatistics.new
        data.indexed_question_answers_count = map['IndexedQuestionAnswersCount']
        return data
      end
    end

    class DocumentMetadataConfigurationList
      def self.parse(list)
        list.map do |value|
          Parsers::DocumentMetadataConfiguration.parse(value) unless value.nil?
        end
      end
    end

    class DocumentMetadataConfiguration
      def self.parse(map)
        data = Types::DocumentMetadataConfiguration.new
        data.name = map['Name']
        data.type = map['Type']
        data.relevance = (Parsers::Relevance.parse(map['Relevance']) unless map['Relevance'].nil?)
        data.search = (Parsers::Search.parse(map['Search']) unless map['Search'].nil?)
        return data
      end
    end

    class Search
      def self.parse(map)
        data = Types::Search.new
        data.facetable = map['Facetable']
        data.searchable = map['Searchable']
        data.displayable = map['Displayable']
        data.sortable = map['Sortable']
        return data
      end
    end

    class Relevance
      def self.parse(map)
        data = Types::Relevance.new
        data.freshness = map['Freshness']
        data.importance = map['Importance']
        data.duration = map['Duration']
        data.rank_order = map['RankOrder']
        data.value_importance_map = (Parsers::ValueImportanceMap.parse(map['ValueImportanceMap']) unless map['ValueImportanceMap'].nil?)
        return data
      end
    end

    class ValueImportanceMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class ServerSideEncryptionConfiguration
      def self.parse(map)
        data = Types::ServerSideEncryptionConfiguration.new
        data.kms_key_id = map['KmsKeyId']
        return data
      end
    end

    # Operation Parser for DescribePrincipalMapping
    class DescribePrincipalMapping
      def self.parse(http_resp)
        data = Types::DescribePrincipalMappingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.index_id = map['IndexId']
        data.data_source_id = map['DataSourceId']
        data.group_id = map['GroupId']
        data.group_ordering_id_summaries = (Parsers::GroupOrderingIdSummaries.parse(map['GroupOrderingIdSummaries']) unless map['GroupOrderingIdSummaries'].nil?)
        data
      end
    end

    class GroupOrderingIdSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::GroupOrderingIdSummary.parse(value) unless value.nil?
        end
      end
    end

    class GroupOrderingIdSummary
      def self.parse(map)
        data = Types::GroupOrderingIdSummary.new
        data.status = map['Status']
        data.last_updated_at = Time.at(map['LastUpdatedAt'].to_i) if map['LastUpdatedAt']
        data.received_at = Time.at(map['ReceivedAt'].to_i) if map['ReceivedAt']
        data.ordering_id = map['OrderingId']
        data.failure_reason = map['FailureReason']
        return data
      end
    end

    # Operation Parser for DescribeQuerySuggestionsBlockList
    class DescribeQuerySuggestionsBlockList
      def self.parse(http_resp)
        data = Types::DescribeQuerySuggestionsBlockListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.index_id = map['IndexId']
        data.id = map['Id']
        data.name = map['Name']
        data.description = map['Description']
        data.status = map['Status']
        data.error_message = map['ErrorMessage']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.source_s3_path = (Parsers::S3Path.parse(map['SourceS3Path']) unless map['SourceS3Path'].nil?)
        data.item_count = map['ItemCount']
        data.file_size_bytes = map['FileSizeBytes']
        data.role_arn = map['RoleArn']
        data
      end
    end

    # Operation Parser for DescribeQuerySuggestionsConfig
    class DescribeQuerySuggestionsConfig
      def self.parse(http_resp)
        data = Types::DescribeQuerySuggestionsConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.mode = map['Mode']
        data.status = map['Status']
        data.query_log_look_back_window_in_days = map['QueryLogLookBackWindowInDays']
        data.include_queries_without_user_information = map['IncludeQueriesWithoutUserInformation']
        data.minimum_number_of_querying_users = map['MinimumNumberOfQueryingUsers']
        data.minimum_query_count = map['MinimumQueryCount']
        data.last_suggestions_build_time = Time.at(map['LastSuggestionsBuildTime'].to_i) if map['LastSuggestionsBuildTime']
        data.last_clear_time = Time.at(map['LastClearTime'].to_i) if map['LastClearTime']
        data.total_suggestions_count = map['TotalSuggestionsCount']
        data
      end
    end

    # Operation Parser for DescribeThesaurus
    class DescribeThesaurus
      def self.parse(http_resp)
        data = Types::DescribeThesaurusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.id = map['Id']
        data.index_id = map['IndexId']
        data.name = map['Name']
        data.description = map['Description']
        data.status = map['Status']
        data.error_message = map['ErrorMessage']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.role_arn = map['RoleArn']
        data.source_s3_path = (Parsers::S3Path.parse(map['SourceS3Path']) unless map['SourceS3Path'].nil?)
        data.file_size_bytes = map['FileSizeBytes']
        data.term_count = map['TermCount']
        data.synonym_rule_count = map['SynonymRuleCount']
        data
      end
    end

    # Operation Parser for DisassociateEntitiesFromExperience
    class DisassociateEntitiesFromExperience
      def self.parse(http_resp)
        data = Types::DisassociateEntitiesFromExperienceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_entity_list = (Parsers::FailedEntityList.parse(map['FailedEntityList']) unless map['FailedEntityList'].nil?)
        data
      end
    end

    # Operation Parser for DisassociatePersonasFromEntities
    class DisassociatePersonasFromEntities
      def self.parse(http_resp)
        data = Types::DisassociatePersonasFromEntitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.failed_entity_list = (Parsers::FailedEntityList.parse(map['FailedEntityList']) unless map['FailedEntityList'].nil?)
        data
      end
    end

    # Operation Parser for GetQuerySuggestions
    class GetQuerySuggestions
      def self.parse(http_resp)
        data = Types::GetQuerySuggestionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.query_suggestions_id = map['QuerySuggestionsId']
        data.suggestions = (Parsers::SuggestionList.parse(map['Suggestions']) unless map['Suggestions'].nil?)
        data
      end
    end

    class SuggestionList
      def self.parse(list)
        list.map do |value|
          Parsers::Suggestion.parse(value) unless value.nil?
        end
      end
    end

    class Suggestion
      def self.parse(map)
        data = Types::Suggestion.new
        data.id = map['Id']
        data.value = (Parsers::SuggestionValue.parse(map['Value']) unless map['Value'].nil?)
        return data
      end
    end

    class SuggestionValue
      def self.parse(map)
        data = Types::SuggestionValue.new
        data.text = (Parsers::SuggestionTextWithHighlights.parse(map['Text']) unless map['Text'].nil?)
        return data
      end
    end

    class SuggestionTextWithHighlights
      def self.parse(map)
        data = Types::SuggestionTextWithHighlights.new
        data.text = map['Text']
        data.highlights = (Parsers::SuggestionHighlightList.parse(map['Highlights']) unless map['Highlights'].nil?)
        return data
      end
    end

    class SuggestionHighlightList
      def self.parse(list)
        list.map do |value|
          Parsers::SuggestionHighlight.parse(value) unless value.nil?
        end
      end
    end

    class SuggestionHighlight
      def self.parse(map)
        data = Types::SuggestionHighlight.new
        data.begin_offset = map['BeginOffset']
        data.end_offset = map['EndOffset']
        return data
      end
    end

    # Operation Parser for GetSnapshots
    class GetSnapshots
      def self.parse(http_resp)
        data = Types::GetSnapshotsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.snap_shot_time_filter = (Parsers::TimeRange.parse(map['SnapShotTimeFilter']) unless map['SnapShotTimeFilter'].nil?)
        data.snapshots_data_header = (Parsers::SnapshotsDataHeaderFields.parse(map['SnapshotsDataHeader']) unless map['SnapshotsDataHeader'].nil?)
        data.snapshots_data = (Parsers::SnapshotsDataRecords.parse(map['SnapshotsData']) unless map['SnapshotsData'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SnapshotsDataRecords
      def self.parse(list)
        list.map do |value|
          Parsers::SnapshotsDataRecord.parse(value) unless value.nil?
        end
      end
    end

    class SnapshotsDataRecord
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SnapshotsDataHeaderFields
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class TimeRange
      def self.parse(map)
        data = Types::TimeRange.new
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        return data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListDataSourceSyncJobs
    class ListDataSourceSyncJobs
      def self.parse(http_resp)
        data = Types::ListDataSourceSyncJobsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.history = (Parsers::DataSourceSyncJobHistoryList.parse(map['History']) unless map['History'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DataSourceSyncJobHistoryList
      def self.parse(list)
        list.map do |value|
          Parsers::DataSourceSyncJob.parse(value) unless value.nil?
        end
      end
    end

    class DataSourceSyncJob
      def self.parse(map)
        data = Types::DataSourceSyncJob.new
        data.execution_id = map['ExecutionId']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.status = map['Status']
        data.error_message = map['ErrorMessage']
        data.error_code = map['ErrorCode']
        data.data_source_error_code = map['DataSourceErrorCode']
        data.metrics = (Parsers::DataSourceSyncJobMetrics.parse(map['Metrics']) unless map['Metrics'].nil?)
        return data
      end
    end

    class DataSourceSyncJobMetrics
      def self.parse(map)
        data = Types::DataSourceSyncJobMetrics.new
        data.documents_added = map['DocumentsAdded']
        data.documents_modified = map['DocumentsModified']
        data.documents_deleted = map['DocumentsDeleted']
        data.documents_failed = map['DocumentsFailed']
        data.documents_scanned = map['DocumentsScanned']
        return data
      end
    end

    # Operation Parser for ListDataSources
    class ListDataSources
      def self.parse(http_resp)
        data = Types::ListDataSourcesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summary_items = (Parsers::DataSourceSummaryList.parse(map['SummaryItems']) unless map['SummaryItems'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DataSourceSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::DataSourceSummary.parse(value) unless value.nil?
        end
      end
    end

    class DataSourceSummary
      def self.parse(map)
        data = Types::DataSourceSummary.new
        data.name = map['Name']
        data.id = map['Id']
        data.type = map['Type']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.status = map['Status']
        data.language_code = map['LanguageCode']
        return data
      end
    end

    # Operation Parser for ListEntityPersonas
    class ListEntityPersonas
      def self.parse(http_resp)
        data = Types::ListEntityPersonasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summary_items = (Parsers::PersonasSummaryList.parse(map['SummaryItems']) unless map['SummaryItems'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class PersonasSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::PersonasSummary.parse(value) unless value.nil?
        end
      end
    end

    class PersonasSummary
      def self.parse(map)
        data = Types::PersonasSummary.new
        data.entity_id = map['EntityId']
        data.persona = map['Persona']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        return data
      end
    end

    # Operation Parser for ListExperienceEntities
    class ListExperienceEntities
      def self.parse(http_resp)
        data = Types::ListExperienceEntitiesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summary_items = (Parsers::ExperienceEntitiesSummaryList.parse(map['SummaryItems']) unless map['SummaryItems'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ExperienceEntitiesSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::ExperienceEntitiesSummary.parse(value) unless value.nil?
        end
      end
    end

    class ExperienceEntitiesSummary
      def self.parse(map)
        data = Types::ExperienceEntitiesSummary.new
        data.entity_id = map['EntityId']
        data.entity_type = map['EntityType']
        data.display_data = (Parsers::EntityDisplayData.parse(map['DisplayData']) unless map['DisplayData'].nil?)
        return data
      end
    end

    class EntityDisplayData
      def self.parse(map)
        data = Types::EntityDisplayData.new
        data.user_name = map['UserName']
        data.group_name = map['GroupName']
        data.identified_user_name = map['IdentifiedUserName']
        data.first_name = map['FirstName']
        data.last_name = map['LastName']
        return data
      end
    end

    # Operation Parser for ListExperiences
    class ListExperiences
      def self.parse(http_resp)
        data = Types::ListExperiencesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.summary_items = (Parsers::ExperiencesSummaryList.parse(map['SummaryItems']) unless map['SummaryItems'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ExperiencesSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::ExperiencesSummary.parse(value) unless value.nil?
        end
      end
    end

    class ExperiencesSummary
      def self.parse(map)
        data = Types::ExperiencesSummary.new
        data.name = map['Name']
        data.id = map['Id']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.status = map['Status']
        data.endpoints = (Parsers::ExperienceEndpoints.parse(map['Endpoints']) unless map['Endpoints'].nil?)
        return data
      end
    end

    # Operation Parser for ListFaqs
    class ListFaqs
      def self.parse(http_resp)
        data = Types::ListFaqsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.faq_summary_items = (Parsers::FaqSummaryItems.parse(map['FaqSummaryItems']) unless map['FaqSummaryItems'].nil?)
        data
      end
    end

    class FaqSummaryItems
      def self.parse(list)
        list.map do |value|
          Parsers::FaqSummary.parse(value) unless value.nil?
        end
      end
    end

    class FaqSummary
      def self.parse(map)
        data = Types::FaqSummary.new
        data.id = map['Id']
        data.name = map['Name']
        data.status = map['Status']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.file_format = map['FileFormat']
        data.language_code = map['LanguageCode']
        return data
      end
    end

    # Operation Parser for ListGroupsOlderThanOrderingId
    class ListGroupsOlderThanOrderingId
      def self.parse(http_resp)
        data = Types::ListGroupsOlderThanOrderingIdOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.groups_summaries = (Parsers::ListOfGroupSummaries.parse(map['GroupsSummaries']) unless map['GroupsSummaries'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ListOfGroupSummaries
      def self.parse(list)
        list.map do |value|
          Parsers::GroupSummary.parse(value) unless value.nil?
        end
      end
    end

    class GroupSummary
      def self.parse(map)
        data = Types::GroupSummary.new
        data.group_id = map['GroupId']
        data.ordering_id = map['OrderingId']
        return data
      end
    end

    # Operation Parser for ListIndices
    class ListIndices
      def self.parse(http_resp)
        data = Types::ListIndicesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.index_configuration_summary_items = (Parsers::IndexConfigurationSummaryList.parse(map['IndexConfigurationSummaryItems']) unless map['IndexConfigurationSummaryItems'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class IndexConfigurationSummaryList
      def self.parse(list)
        list.map do |value|
          Parsers::IndexConfigurationSummary.parse(value) unless value.nil?
        end
      end
    end

    class IndexConfigurationSummary
      def self.parse(map)
        data = Types::IndexConfigurationSummary.new
        data.name = map['Name']
        data.id = map['Id']
        data.edition = map['Edition']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.status = map['Status']
        return data
      end
    end

    # Operation Parser for ListQuerySuggestionsBlockLists
    class ListQuerySuggestionsBlockLists
      def self.parse(http_resp)
        data = Types::ListQuerySuggestionsBlockListsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.block_list_summary_items = (Parsers::QuerySuggestionsBlockListSummaryItems.parse(map['BlockListSummaryItems']) unless map['BlockListSummaryItems'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class QuerySuggestionsBlockListSummaryItems
      def self.parse(list)
        list.map do |value|
          Parsers::QuerySuggestionsBlockListSummary.parse(value) unless value.nil?
        end
      end
    end

    class QuerySuggestionsBlockListSummary
      def self.parse(map)
        data = Types::QuerySuggestionsBlockListSummary.new
        data.id = map['Id']
        data.name = map['Name']
        data.status = map['Status']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        data.item_count = map['ItemCount']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Parsers::Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Error Parser for ResourceUnavailableException
    class ResourceUnavailableException
      def self.parse(http_resp)
        data = Types::ResourceUnavailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ListThesauri
    class ListThesauri
      def self.parse(http_resp)
        data = Types::ListThesauriOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.next_token = map['NextToken']
        data.thesaurus_summary_items = (Parsers::ThesaurusSummaryItems.parse(map['ThesaurusSummaryItems']) unless map['ThesaurusSummaryItems'].nil?)
        data
      end
    end

    class ThesaurusSummaryItems
      def self.parse(list)
        list.map do |value|
          Parsers::ThesaurusSummary.parse(value) unless value.nil?
        end
      end
    end

    class ThesaurusSummary
      def self.parse(map)
        data = Types::ThesaurusSummary.new
        data.id = map['Id']
        data.name = map['Name']
        data.status = map['Status']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.updated_at = Time.at(map['UpdatedAt'].to_i) if map['UpdatedAt']
        return data
      end
    end

    # Operation Parser for PutPrincipalMapping
    class PutPrincipalMapping
      def self.parse(http_resp)
        data = Types::PutPrincipalMappingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for Query
    class Query
      def self.parse(http_resp)
        data = Types::QueryOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.query_id = map['QueryId']
        data.result_items = (Parsers::QueryResultItemList.parse(map['ResultItems']) unless map['ResultItems'].nil?)
        data.facet_results = (Parsers::FacetResultList.parse(map['FacetResults']) unless map['FacetResults'].nil?)
        data.total_number_of_results = map['TotalNumberOfResults']
        data.warnings = (Parsers::WarningList.parse(map['Warnings']) unless map['Warnings'].nil?)
        data.spell_corrected_queries = (Parsers::SpellCorrectedQueryList.parse(map['SpellCorrectedQueries']) unless map['SpellCorrectedQueries'].nil?)
        data
      end
    end

    class SpellCorrectedQueryList
      def self.parse(list)
        list.map do |value|
          Parsers::SpellCorrectedQuery.parse(value) unless value.nil?
        end
      end
    end

    class SpellCorrectedQuery
      def self.parse(map)
        data = Types::SpellCorrectedQuery.new
        data.suggested_query_text = map['SuggestedQueryText']
        data.corrections = (Parsers::CorrectionList.parse(map['Corrections']) unless map['Corrections'].nil?)
        return data
      end
    end

    class CorrectionList
      def self.parse(list)
        list.map do |value|
          Parsers::Correction.parse(value) unless value.nil?
        end
      end
    end

    class Correction
      def self.parse(map)
        data = Types::Correction.new
        data.begin_offset = map['BeginOffset']
        data.end_offset = map['EndOffset']
        data.term = map['Term']
        data.corrected_term = map['CorrectedTerm']
        return data
      end
    end

    class WarningList
      def self.parse(list)
        list.map do |value|
          Parsers::Warning.parse(value) unless value.nil?
        end
      end
    end

    class Warning
      def self.parse(map)
        data = Types::Warning.new
        data.message = map['Message']
        data.code = map['Code']
        return data
      end
    end

    class FacetResultList
      def self.parse(list)
        list.map do |value|
          Parsers::FacetResult.parse(value) unless value.nil?
        end
      end
    end

    class FacetResult
      def self.parse(map)
        data = Types::FacetResult.new
        data.document_attribute_key = map['DocumentAttributeKey']
        data.document_attribute_value_type = map['DocumentAttributeValueType']
        data.document_attribute_value_count_pairs = (Parsers::DocumentAttributeValueCountPairList.parse(map['DocumentAttributeValueCountPairs']) unless map['DocumentAttributeValueCountPairs'].nil?)
        return data
      end
    end

    class DocumentAttributeValueCountPairList
      def self.parse(list)
        list.map do |value|
          Parsers::DocumentAttributeValueCountPair.parse(value) unless value.nil?
        end
      end
    end

    class DocumentAttributeValueCountPair
      def self.parse(map)
        data = Types::DocumentAttributeValueCountPair.new
        data.document_attribute_value = (Parsers::DocumentAttributeValue.parse(map['DocumentAttributeValue']) unless map['DocumentAttributeValue'].nil?)
        data.count = map['Count']
        data.facet_results = (Parsers::FacetResultList.parse(map['FacetResults']) unless map['FacetResults'].nil?)
        return data
      end
    end

    class QueryResultItemList
      def self.parse(list)
        list.map do |value|
          Parsers::QueryResultItem.parse(value) unless value.nil?
        end
      end
    end

    class QueryResultItem
      def self.parse(map)
        data = Types::QueryResultItem.new
        data.id = map['Id']
        data.type = map['Type']
        data.additional_attributes = (Parsers::AdditionalResultAttributeList.parse(map['AdditionalAttributes']) unless map['AdditionalAttributes'].nil?)
        data.document_id = map['DocumentId']
        data.document_title = (Parsers::TextWithHighlights.parse(map['DocumentTitle']) unless map['DocumentTitle'].nil?)
        data.document_excerpt = (Parsers::TextWithHighlights.parse(map['DocumentExcerpt']) unless map['DocumentExcerpt'].nil?)
        data.document_uri = map['DocumentURI']
        data.document_attributes = (Parsers::DocumentAttributeList.parse(map['DocumentAttributes']) unless map['DocumentAttributes'].nil?)
        data.score_attributes = (Parsers::ScoreAttributes.parse(map['ScoreAttributes']) unless map['ScoreAttributes'].nil?)
        data.feedback_token = map['FeedbackToken']
        return data
      end
    end

    class ScoreAttributes
      def self.parse(map)
        data = Types::ScoreAttributes.new
        data.score_confidence = map['ScoreConfidence']
        return data
      end
    end

    class DocumentAttributeList
      def self.parse(list)
        list.map do |value|
          Parsers::DocumentAttribute.parse(value) unless value.nil?
        end
      end
    end

    class DocumentAttribute
      def self.parse(map)
        data = Types::DocumentAttribute.new
        data.key = map['Key']
        data.value = (Parsers::DocumentAttributeValue.parse(map['Value']) unless map['Value'].nil?)
        return data
      end
    end

    class TextWithHighlights
      def self.parse(map)
        data = Types::TextWithHighlights.new
        data.text = map['Text']
        data.highlights = (Parsers::HighlightList.parse(map['Highlights']) unless map['Highlights'].nil?)
        return data
      end
    end

    class HighlightList
      def self.parse(list)
        list.map do |value|
          Parsers::Highlight.parse(value) unless value.nil?
        end
      end
    end

    class Highlight
      def self.parse(map)
        data = Types::Highlight.new
        data.begin_offset = map['BeginOffset']
        data.end_offset = map['EndOffset']
        data.top_answer = map['TopAnswer']
        data.type = map['Type']
        return data
      end
    end

    class AdditionalResultAttributeList
      def self.parse(list)
        list.map do |value|
          Parsers::AdditionalResultAttribute.parse(value) unless value.nil?
        end
      end
    end

    class AdditionalResultAttribute
      def self.parse(map)
        data = Types::AdditionalResultAttribute.new
        data.key = map['Key']
        data.value_type = map['ValueType']
        data.value = (Parsers::AdditionalResultAttributeValue.parse(map['Value']) unless map['Value'].nil?)
        return data
      end
    end

    class AdditionalResultAttributeValue
      def self.parse(map)
        data = Types::AdditionalResultAttributeValue.new
        data.text_with_highlights_value = (Parsers::TextWithHighlights.parse(map['TextWithHighlightsValue']) unless map['TextWithHighlightsValue'].nil?)
        return data
      end
    end

    # Operation Parser for StartDataSourceSyncJob
    class StartDataSourceSyncJob
      def self.parse(http_resp)
        data = Types::StartDataSourceSyncJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.execution_id = map['ExecutionId']
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for StopDataSourceSyncJob
    class StopDataSourceSyncJob
      def self.parse(http_resp)
        data = Types::StopDataSourceSyncJobOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for SubmitFeedback
    class SubmitFeedback
      def self.parse(http_resp)
        data = Types::SubmitFeedbackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateDataSource
    class UpdateDataSource
      def self.parse(http_resp)
        data = Types::UpdateDataSourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateExperience
    class UpdateExperience
      def self.parse(http_resp)
        data = Types::UpdateExperienceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateIndex
    class UpdateIndex
      def self.parse(http_resp)
        data = Types::UpdateIndexOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateQuerySuggestionsBlockList
    class UpdateQuerySuggestionsBlockList
      def self.parse(http_resp)
        data = Types::UpdateQuerySuggestionsBlockListOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateQuerySuggestionsConfig
    class UpdateQuerySuggestionsConfig
      def self.parse(http_resp)
        data = Types::UpdateQuerySuggestionsConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateThesaurus
    class UpdateThesaurus
      def self.parse(http_resp)
        data = Types::UpdateThesaurusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end
  end
end
