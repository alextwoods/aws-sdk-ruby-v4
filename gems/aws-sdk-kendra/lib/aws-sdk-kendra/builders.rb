# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kendra
  module Builders

    # Operation Builder for AssociateEntitiesToExperience
    class AssociateEntitiesToExperience
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.AssociateEntitiesToExperience'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['EntityList'] = Builders::AssociateEntityList.build(input[:entity_list]) unless input[:entity_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AssociateEntityList
    class AssociateEntityList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EntityConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EntityConfiguration
    class EntityConfiguration
      def self.build(input)
        data = {}
        data['EntityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['EntityType'] = input[:entity_type] unless input[:entity_type].nil?
        data
      end
    end

    # Operation Builder for AssociatePersonasToEntities
    class AssociatePersonasToEntities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.AssociatePersonasToEntities'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['Personas'] = Builders::EntityPersonaConfigurationList.build(input[:personas]) unless input[:personas].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EntityPersonaConfigurationList
    class EntityPersonaConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EntityPersonaConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EntityPersonaConfiguration
    class EntityPersonaConfiguration
      def self.build(input)
        data = {}
        data['EntityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['Persona'] = input[:persona] unless input[:persona].nil?
        data
      end
    end

    # Operation Builder for BatchDeleteDocument
    class BatchDeleteDocument
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.BatchDeleteDocument'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['DocumentIdList'] = Builders::DocumentIdList.build(input[:document_id_list]) unless input[:document_id_list].nil?
        data['DataSourceSyncJobMetricTarget'] = Builders::DataSourceSyncJobMetricTarget.build(input[:data_source_sync_job_metric_target]) unless input[:data_source_sync_job_metric_target].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for DataSourceSyncJobMetricTarget
    class DataSourceSyncJobMetricTarget
      def self.build(input)
        data = {}
        data['DataSourceId'] = input[:data_source_id] unless input[:data_source_id].nil?
        data['DataSourceSyncJobId'] = input[:data_source_sync_job_id] unless input[:data_source_sync_job_id].nil?
        data
      end
    end

    # List Builder for DocumentIdList
    class DocumentIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchGetDocumentStatus
    class BatchGetDocumentStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.BatchGetDocumentStatus'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['DocumentInfoList'] = Builders::DocumentInfoList.build(input[:document_info_list]) unless input[:document_info_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DocumentInfoList
    class DocumentInfoList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DocumentInfo.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DocumentInfo
    class DocumentInfo
      def self.build(input)
        data = {}
        data['DocumentId'] = input[:document_id] unless input[:document_id].nil?
        data['Attributes'] = Builders::DocumentAttributeList.build(input[:attributes]) unless input[:attributes].nil?
        data
      end
    end

    # List Builder for DocumentAttributeList
    class DocumentAttributeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DocumentAttribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DocumentAttribute
    class DocumentAttribute
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = Builders::DocumentAttributeValue.build(input[:value]) unless input[:value].nil?
        data
      end
    end

    # Structure Builder for DocumentAttributeValue
    class DocumentAttributeValue
      def self.build(input)
        data = {}
        data['StringValue'] = input[:string_value] unless input[:string_value].nil?
        data['StringListValue'] = Builders::DocumentAttributeStringListValue.build(input[:string_list_value]) unless input[:string_list_value].nil?
        data['LongValue'] = input[:long_value] unless input[:long_value].nil?
        data['DateValue'] = Hearth::TimeHelper.to_epoch_seconds(input[:date_value]).to_i unless input[:date_value].nil?
        data
      end
    end

    # List Builder for DocumentAttributeStringListValue
    class DocumentAttributeStringListValue
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for BatchPutDocument
    class BatchPutDocument
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.BatchPutDocument'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Documents'] = Builders::DocumentList.build(input[:documents]) unless input[:documents].nil?
        data['CustomDocumentEnrichmentConfiguration'] = Builders::CustomDocumentEnrichmentConfiguration.build(input[:custom_document_enrichment_configuration]) unless input[:custom_document_enrichment_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CustomDocumentEnrichmentConfiguration
    class CustomDocumentEnrichmentConfiguration
      def self.build(input)
        data = {}
        data['InlineConfigurations'] = Builders::InlineCustomDocumentEnrichmentConfigurationList.build(input[:inline_configurations]) unless input[:inline_configurations].nil?
        data['PreExtractionHookConfiguration'] = Builders::HookConfiguration.build(input[:pre_extraction_hook_configuration]) unless input[:pre_extraction_hook_configuration].nil?
        data['PostExtractionHookConfiguration'] = Builders::HookConfiguration.build(input[:post_extraction_hook_configuration]) unless input[:post_extraction_hook_configuration].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data
      end
    end

    # Structure Builder for HookConfiguration
    class HookConfiguration
      def self.build(input)
        data = {}
        data['InvocationCondition'] = Builders::DocumentAttributeCondition.build(input[:invocation_condition]) unless input[:invocation_condition].nil?
        data['LambdaArn'] = input[:lambda_arn] unless input[:lambda_arn].nil?
        data['S3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data
      end
    end

    # Structure Builder for DocumentAttributeCondition
    class DocumentAttributeCondition
      def self.build(input)
        data = {}
        data['ConditionDocumentAttributeKey'] = input[:condition_document_attribute_key] unless input[:condition_document_attribute_key].nil?
        data['Operator'] = input[:operator] unless input[:operator].nil?
        data['ConditionOnValue'] = Builders::DocumentAttributeValue.build(input[:condition_on_value]) unless input[:condition_on_value].nil?
        data
      end
    end

    # List Builder for InlineCustomDocumentEnrichmentConfigurationList
    class InlineCustomDocumentEnrichmentConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InlineCustomDocumentEnrichmentConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InlineCustomDocumentEnrichmentConfiguration
    class InlineCustomDocumentEnrichmentConfiguration
      def self.build(input)
        data = {}
        data['Condition'] = Builders::DocumentAttributeCondition.build(input[:condition]) unless input[:condition].nil?
        data['Target'] = Builders::DocumentAttributeTarget.build(input[:target]) unless input[:target].nil?
        data['DocumentContentDeletion'] = input[:document_content_deletion] unless input[:document_content_deletion].nil?
        data
      end
    end

    # Structure Builder for DocumentAttributeTarget
    class DocumentAttributeTarget
      def self.build(input)
        data = {}
        data['TargetDocumentAttributeKey'] = input[:target_document_attribute_key] unless input[:target_document_attribute_key].nil?
        data['TargetDocumentAttributeValueDeletion'] = input[:target_document_attribute_value_deletion] unless input[:target_document_attribute_value_deletion].nil?
        data['TargetDocumentAttributeValue'] = Builders::DocumentAttributeValue.build(input[:target_document_attribute_value]) unless input[:target_document_attribute_value].nil?
        data
      end
    end

    # List Builder for DocumentList
    class DocumentList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Document.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Document
    class Document
      def self.build(input)
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Title'] = input[:title] unless input[:title].nil?
        data['Blob'] = Base64::encode64(input[:blob]).strip unless input[:blob].nil?
        data['S3Path'] = Builders::S3Path.build(input[:s3_path]) unless input[:s3_path].nil?
        data['Attributes'] = Builders::DocumentAttributeList.build(input[:attributes]) unless input[:attributes].nil?
        data['AccessControlList'] = Builders::PrincipalList.build(input[:access_control_list]) unless input[:access_control_list].nil?
        data['HierarchicalAccessControlList'] = Builders::HierarchicalPrincipalList.build(input[:hierarchical_access_control_list]) unless input[:hierarchical_access_control_list].nil?
        data['ContentType'] = input[:content_type] unless input[:content_type].nil?
        data
      end
    end

    # List Builder for HierarchicalPrincipalList
    class HierarchicalPrincipalList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::HierarchicalPrincipal.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for HierarchicalPrincipal
    class HierarchicalPrincipal
      def self.build(input)
        data = {}
        data['PrincipalList'] = Builders::PrincipalList.build(input[:principal_list]) unless input[:principal_list].nil?
        data
      end
    end

    # List Builder for PrincipalList
    class PrincipalList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Principal.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Principal
    class Principal
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Access'] = input[:access] unless input[:access].nil?
        data['DataSourceId'] = input[:data_source_id] unless input[:data_source_id].nil?
        data
      end
    end

    # Structure Builder for S3Path
    class S3Path
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['Key'] = input[:key] unless input[:key].nil?
        data
      end
    end

    # Operation Builder for ClearQuerySuggestions
    class ClearQuerySuggestions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.ClearQuerySuggestions'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateDataSource
    class CreateDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.CreateDataSource'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Configuration'] = Builders::DataSourceConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Schedule'] = input[:schedule] unless input[:schedule].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['CustomDocumentEnrichmentConfiguration'] = Builders::CustomDocumentEnrichmentConfiguration.build(input[:custom_document_enrichment_configuration]) unless input[:custom_document_enrichment_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Structure Builder for DataSourceConfiguration
    class DataSourceConfiguration
      def self.build(input)
        data = {}
        data['S3Configuration'] = Builders::S3DataSourceConfiguration.build(input[:s3_configuration]) unless input[:s3_configuration].nil?
        data['SharePointConfiguration'] = Builders::SharePointConfiguration.build(input[:share_point_configuration]) unless input[:share_point_configuration].nil?
        data['DatabaseConfiguration'] = Builders::DatabaseConfiguration.build(input[:database_configuration]) unless input[:database_configuration].nil?
        data['SalesforceConfiguration'] = Builders::SalesforceConfiguration.build(input[:salesforce_configuration]) unless input[:salesforce_configuration].nil?
        data['OneDriveConfiguration'] = Builders::OneDriveConfiguration.build(input[:one_drive_configuration]) unless input[:one_drive_configuration].nil?
        data['ServiceNowConfiguration'] = Builders::ServiceNowConfiguration.build(input[:service_now_configuration]) unless input[:service_now_configuration].nil?
        data['ConfluenceConfiguration'] = Builders::ConfluenceConfiguration.build(input[:confluence_configuration]) unless input[:confluence_configuration].nil?
        data['GoogleDriveConfiguration'] = Builders::GoogleDriveConfiguration.build(input[:google_drive_configuration]) unless input[:google_drive_configuration].nil?
        data['WebCrawlerConfiguration'] = Builders::WebCrawlerConfiguration.build(input[:web_crawler_configuration]) unless input[:web_crawler_configuration].nil?
        data['WorkDocsConfiguration'] = Builders::WorkDocsConfiguration.build(input[:work_docs_configuration]) unless input[:work_docs_configuration].nil?
        data['FsxConfiguration'] = Builders::FsxConfiguration.build(input[:fsx_configuration]) unless input[:fsx_configuration].nil?
        data['SlackConfiguration'] = Builders::SlackConfiguration.build(input[:slack_configuration]) unless input[:slack_configuration].nil?
        data['BoxConfiguration'] = Builders::BoxConfiguration.build(input[:box_configuration]) unless input[:box_configuration].nil?
        data['QuipConfiguration'] = Builders::QuipConfiguration.build(input[:quip_configuration]) unless input[:quip_configuration].nil?
        data['JiraConfiguration'] = Builders::JiraConfiguration.build(input[:jira_configuration]) unless input[:jira_configuration].nil?
        data['GitHubConfiguration'] = Builders::GitHubConfiguration.build(input[:git_hub_configuration]) unless input[:git_hub_configuration].nil?
        data
      end
    end

    # Structure Builder for GitHubConfiguration
    class GitHubConfiguration
      def self.build(input)
        data = {}
        data['SaaSConfiguration'] = Builders::SaaSConfiguration.build(input[:saa_s_configuration]) unless input[:saa_s_configuration].nil?
        data['OnPremiseConfiguration'] = Builders::OnPremiseConfiguration.build(input[:on_premise_configuration]) unless input[:on_premise_configuration].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['UseChangeLog'] = input[:use_change_log] unless input[:use_change_log].nil?
        data['GitHubDocumentCrawlProperties'] = Builders::GitHubDocumentCrawlProperties.build(input[:git_hub_document_crawl_properties]) unless input[:git_hub_document_crawl_properties].nil?
        data['RepositoryFilter'] = Builders::RepositoryNames.build(input[:repository_filter]) unless input[:repository_filter].nil?
        data['InclusionFolderNamePatterns'] = Builders::StringList.build(input[:inclusion_folder_name_patterns]) unless input[:inclusion_folder_name_patterns].nil?
        data['InclusionFileTypePatterns'] = Builders::StringList.build(input[:inclusion_file_type_patterns]) unless input[:inclusion_file_type_patterns].nil?
        data['InclusionFileNamePatterns'] = Builders::StringList.build(input[:inclusion_file_name_patterns]) unless input[:inclusion_file_name_patterns].nil?
        data['ExclusionFolderNamePatterns'] = Builders::StringList.build(input[:exclusion_folder_name_patterns]) unless input[:exclusion_folder_name_patterns].nil?
        data['ExclusionFileTypePatterns'] = Builders::StringList.build(input[:exclusion_file_type_patterns]) unless input[:exclusion_file_type_patterns].nil?
        data['ExclusionFileNamePatterns'] = Builders::StringList.build(input[:exclusion_file_name_patterns]) unless input[:exclusion_file_name_patterns].nil?
        data['VpcConfiguration'] = Builders::DataSourceVpcConfiguration.build(input[:vpc_configuration]) unless input[:vpc_configuration].nil?
        data['GitHubRepositoryConfigurationFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:git_hub_repository_configuration_field_mappings]) unless input[:git_hub_repository_configuration_field_mappings].nil?
        data['GitHubCommitConfigurationFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:git_hub_commit_configuration_field_mappings]) unless input[:git_hub_commit_configuration_field_mappings].nil?
        data['GitHubIssueDocumentConfigurationFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:git_hub_issue_document_configuration_field_mappings]) unless input[:git_hub_issue_document_configuration_field_mappings].nil?
        data['GitHubIssueCommentConfigurationFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:git_hub_issue_comment_configuration_field_mappings]) unless input[:git_hub_issue_comment_configuration_field_mappings].nil?
        data['GitHubIssueAttachmentConfigurationFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:git_hub_issue_attachment_configuration_field_mappings]) unless input[:git_hub_issue_attachment_configuration_field_mappings].nil?
        data['GitHubPullRequestCommentConfigurationFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:git_hub_pull_request_comment_configuration_field_mappings]) unless input[:git_hub_pull_request_comment_configuration_field_mappings].nil?
        data['GitHubPullRequestDocumentConfigurationFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:git_hub_pull_request_document_configuration_field_mappings]) unless input[:git_hub_pull_request_document_configuration_field_mappings].nil?
        data['GitHubPullRequestDocumentAttachmentConfigurationFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:git_hub_pull_request_document_attachment_configuration_field_mappings]) unless input[:git_hub_pull_request_document_attachment_configuration_field_mappings].nil?
        data
      end
    end

    # List Builder for DataSourceToIndexFieldMappingList
    class DataSourceToIndexFieldMappingList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DataSourceToIndexFieldMapping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DataSourceToIndexFieldMapping
    class DataSourceToIndexFieldMapping
      def self.build(input)
        data = {}
        data['DataSourceFieldName'] = input[:data_source_field_name] unless input[:data_source_field_name].nil?
        data['DateFieldFormat'] = input[:date_field_format] unless input[:date_field_format].nil?
        data['IndexFieldName'] = input[:index_field_name] unless input[:index_field_name].nil?
        data
      end
    end

    # Structure Builder for DataSourceVpcConfiguration
    class DataSourceVpcConfiguration
      def self.build(input)
        data = {}
        data['SubnetIds'] = Builders::SubnetIdList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['SecurityGroupIds'] = Builders::SecurityGroupIdList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data
      end
    end

    # List Builder for SecurityGroupIdList
    class SecurityGroupIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SubnetIdList
    class SubnetIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for RepositoryNames
    class RepositoryNames
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GitHubDocumentCrawlProperties
    class GitHubDocumentCrawlProperties
      def self.build(input)
        data = {}
        data['CrawlRepositoryDocuments'] = input[:crawl_repository_documents] unless input[:crawl_repository_documents].nil?
        data['CrawlIssue'] = input[:crawl_issue] unless input[:crawl_issue].nil?
        data['CrawlIssueComment'] = input[:crawl_issue_comment] unless input[:crawl_issue_comment].nil?
        data['CrawlIssueCommentAttachment'] = input[:crawl_issue_comment_attachment] unless input[:crawl_issue_comment_attachment].nil?
        data['CrawlPullRequest'] = input[:crawl_pull_request] unless input[:crawl_pull_request].nil?
        data['CrawlPullRequestComment'] = input[:crawl_pull_request_comment] unless input[:crawl_pull_request_comment].nil?
        data['CrawlPullRequestCommentAttachment'] = input[:crawl_pull_request_comment_attachment] unless input[:crawl_pull_request_comment_attachment].nil?
        data
      end
    end

    # Structure Builder for OnPremiseConfiguration
    class OnPremiseConfiguration
      def self.build(input)
        data = {}
        data['HostUrl'] = input[:host_url] unless input[:host_url].nil?
        data['OrganizationName'] = input[:organization_name] unless input[:organization_name].nil?
        data['SslCertificateS3Path'] = Builders::S3Path.build(input[:ssl_certificate_s3_path]) unless input[:ssl_certificate_s3_path].nil?
        data
      end
    end

    # Structure Builder for SaaSConfiguration
    class SaaSConfiguration
      def self.build(input)
        data = {}
        data['OrganizationName'] = input[:organization_name] unless input[:organization_name].nil?
        data['HostUrl'] = input[:host_url] unless input[:host_url].nil?
        data
      end
    end

    # Structure Builder for JiraConfiguration
    class JiraConfiguration
      def self.build(input)
        data = {}
        data['JiraAccountUrl'] = input[:jira_account_url] unless input[:jira_account_url].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['UseChangeLog'] = input[:use_change_log] unless input[:use_change_log].nil?
        data['Project'] = Builders::Project.build(input[:project]) unless input[:project].nil?
        data['IssueType'] = Builders::IssueType.build(input[:issue_type]) unless input[:issue_type].nil?
        data['Status'] = Builders::JiraStatus.build(input[:status]) unless input[:status].nil?
        data['IssueSubEntityFilter'] = Builders::IssueSubEntityFilter.build(input[:issue_sub_entity_filter]) unless input[:issue_sub_entity_filter].nil?
        data['AttachmentFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:attachment_field_mappings]) unless input[:attachment_field_mappings].nil?
        data['CommentFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:comment_field_mappings]) unless input[:comment_field_mappings].nil?
        data['IssueFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:issue_field_mappings]) unless input[:issue_field_mappings].nil?
        data['ProjectFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:project_field_mappings]) unless input[:project_field_mappings].nil?
        data['WorkLogFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:work_log_field_mappings]) unless input[:work_log_field_mappings].nil?
        data['InclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:inclusion_patterns]) unless input[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:exclusion_patterns]) unless input[:exclusion_patterns].nil?
        data['VpcConfiguration'] = Builders::DataSourceVpcConfiguration.build(input[:vpc_configuration]) unless input[:vpc_configuration].nil?
        data
      end
    end

    # List Builder for DataSourceInclusionsExclusionsStrings
    class DataSourceInclusionsExclusionsStrings
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for IssueSubEntityFilter
    class IssueSubEntityFilter
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for JiraStatus
    class JiraStatus
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for IssueType
    class IssueType
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for Project
    class Project
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for QuipConfiguration
    class QuipConfiguration
      def self.build(input)
        data = {}
        data['Domain'] = input[:domain] unless input[:domain].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['CrawlFileComments'] = input[:crawl_file_comments] unless input[:crawl_file_comments].nil?
        data['CrawlChatRooms'] = input[:crawl_chat_rooms] unless input[:crawl_chat_rooms].nil?
        data['CrawlAttachments'] = input[:crawl_attachments] unless input[:crawl_attachments].nil?
        data['FolderIds'] = Builders::FolderIdList.build(input[:folder_ids]) unless input[:folder_ids].nil?
        data['ThreadFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:thread_field_mappings]) unless input[:thread_field_mappings].nil?
        data['MessageFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:message_field_mappings]) unless input[:message_field_mappings].nil?
        data['AttachmentFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:attachment_field_mappings]) unless input[:attachment_field_mappings].nil?
        data['InclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:inclusion_patterns]) unless input[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:exclusion_patterns]) unless input[:exclusion_patterns].nil?
        data['VpcConfiguration'] = Builders::DataSourceVpcConfiguration.build(input[:vpc_configuration]) unless input[:vpc_configuration].nil?
        data
      end
    end

    # List Builder for FolderIdList
    class FolderIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BoxConfiguration
    class BoxConfiguration
      def self.build(input)
        data = {}
        data['EnterpriseId'] = input[:enterprise_id] unless input[:enterprise_id].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['UseChangeLog'] = input[:use_change_log] unless input[:use_change_log].nil?
        data['CrawlComments'] = input[:crawl_comments] unless input[:crawl_comments].nil?
        data['CrawlTasks'] = input[:crawl_tasks] unless input[:crawl_tasks].nil?
        data['CrawlWebLinks'] = input[:crawl_web_links] unless input[:crawl_web_links].nil?
        data['FileFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:file_field_mappings]) unless input[:file_field_mappings].nil?
        data['TaskFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:task_field_mappings]) unless input[:task_field_mappings].nil?
        data['CommentFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:comment_field_mappings]) unless input[:comment_field_mappings].nil?
        data['WebLinkFieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:web_link_field_mappings]) unless input[:web_link_field_mappings].nil?
        data['InclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:inclusion_patterns]) unless input[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:exclusion_patterns]) unless input[:exclusion_patterns].nil?
        data['VpcConfiguration'] = Builders::DataSourceVpcConfiguration.build(input[:vpc_configuration]) unless input[:vpc_configuration].nil?
        data
      end
    end

    # Structure Builder for SlackConfiguration
    class SlackConfiguration
      def self.build(input)
        data = {}
        data['TeamId'] = input[:team_id] unless input[:team_id].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['VpcConfiguration'] = Builders::DataSourceVpcConfiguration.build(input[:vpc_configuration]) unless input[:vpc_configuration].nil?
        data['SlackEntityList'] = Builders::SlackEntityList.build(input[:slack_entity_list]) unless input[:slack_entity_list].nil?
        data['UseChangeLog'] = input[:use_change_log] unless input[:use_change_log].nil?
        data['CrawlBotMessage'] = input[:crawl_bot_message] unless input[:crawl_bot_message].nil?
        data['ExcludeArchived'] = input[:exclude_archived] unless input[:exclude_archived].nil?
        data['SinceCrawlDate'] = input[:since_crawl_date] unless input[:since_crawl_date].nil?
        data['LookBackPeriod'] = input[:look_back_period] unless input[:look_back_period].nil?
        data['PrivateChannelFilter'] = Builders::PrivateChannelFilter.build(input[:private_channel_filter]) unless input[:private_channel_filter].nil?
        data['PublicChannelFilter'] = Builders::PublicChannelFilter.build(input[:public_channel_filter]) unless input[:public_channel_filter].nil?
        data['InclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:inclusion_patterns]) unless input[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:exclusion_patterns]) unless input[:exclusion_patterns].nil?
        data['FieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:field_mappings]) unless input[:field_mappings].nil?
        data
      end
    end

    # List Builder for PublicChannelFilter
    class PublicChannelFilter
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for PrivateChannelFilter
    class PrivateChannelFilter
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SlackEntityList
    class SlackEntityList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FsxConfiguration
    class FsxConfiguration
      def self.build(input)
        data = {}
        data['FileSystemId'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['FileSystemType'] = input[:file_system_type] unless input[:file_system_type].nil?
        data['VpcConfiguration'] = Builders::DataSourceVpcConfiguration.build(input[:vpc_configuration]) unless input[:vpc_configuration].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['InclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:inclusion_patterns]) unless input[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:exclusion_patterns]) unless input[:exclusion_patterns].nil?
        data['FieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:field_mappings]) unless input[:field_mappings].nil?
        data
      end
    end

    # Structure Builder for WorkDocsConfiguration
    class WorkDocsConfiguration
      def self.build(input)
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['CrawlComments'] = input[:crawl_comments] unless input[:crawl_comments].nil?
        data['UseChangeLog'] = input[:use_change_log] unless input[:use_change_log].nil?
        data['InclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:inclusion_patterns]) unless input[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:exclusion_patterns]) unless input[:exclusion_patterns].nil?
        data['FieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:field_mappings]) unless input[:field_mappings].nil?
        data
      end
    end

    # Structure Builder for WebCrawlerConfiguration
    class WebCrawlerConfiguration
      def self.build(input)
        data = {}
        data['Urls'] = Builders::Urls.build(input[:urls]) unless input[:urls].nil?
        data['CrawlDepth'] = input[:crawl_depth] unless input[:crawl_depth].nil?
        data['MaxLinksPerPage'] = input[:max_links_per_page] unless input[:max_links_per_page].nil?
        data['MaxContentSizePerPageInMegaBytes'] = Hearth::NumberHelper.serialize(input[:max_content_size_per_page_in_mega_bytes]) unless input[:max_content_size_per_page_in_mega_bytes].nil?
        data['MaxUrlsPerMinuteCrawlRate'] = input[:max_urls_per_minute_crawl_rate] unless input[:max_urls_per_minute_crawl_rate].nil?
        data['UrlInclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:url_inclusion_patterns]) unless input[:url_inclusion_patterns].nil?
        data['UrlExclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:url_exclusion_patterns]) unless input[:url_exclusion_patterns].nil?
        data['ProxyConfiguration'] = Builders::ProxyConfiguration.build(input[:proxy_configuration]) unless input[:proxy_configuration].nil?
        data['AuthenticationConfiguration'] = Builders::AuthenticationConfiguration.build(input[:authentication_configuration]) unless input[:authentication_configuration].nil?
        data
      end
    end

    # Structure Builder for AuthenticationConfiguration
    class AuthenticationConfiguration
      def self.build(input)
        data = {}
        data['BasicAuthentication'] = Builders::BasicAuthenticationConfigurationList.build(input[:basic_authentication]) unless input[:basic_authentication].nil?
        data
      end
    end

    # List Builder for BasicAuthenticationConfigurationList
    class BasicAuthenticationConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::BasicAuthenticationConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for BasicAuthenticationConfiguration
    class BasicAuthenticationConfiguration
      def self.build(input)
        data = {}
        data['Host'] = input[:host] unless input[:host].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['Credentials'] = input[:credentials] unless input[:credentials].nil?
        data
      end
    end

    # Structure Builder for ProxyConfiguration
    class ProxyConfiguration
      def self.build(input)
        data = {}
        data['Host'] = input[:host] unless input[:host].nil?
        data['Port'] = input[:port] unless input[:port].nil?
        data['Credentials'] = input[:credentials] unless input[:credentials].nil?
        data
      end
    end

    # Structure Builder for Urls
    class Urls
      def self.build(input)
        data = {}
        data['SeedUrlConfiguration'] = Builders::SeedUrlConfiguration.build(input[:seed_url_configuration]) unless input[:seed_url_configuration].nil?
        data['SiteMapsConfiguration'] = Builders::SiteMapsConfiguration.build(input[:site_maps_configuration]) unless input[:site_maps_configuration].nil?
        data
      end
    end

    # Structure Builder for SiteMapsConfiguration
    class SiteMapsConfiguration
      def self.build(input)
        data = {}
        data['SiteMaps'] = Builders::SiteMapsList.build(input[:site_maps]) unless input[:site_maps].nil?
        data
      end
    end

    # List Builder for SiteMapsList
    class SiteMapsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SeedUrlConfiguration
    class SeedUrlConfiguration
      def self.build(input)
        data = {}
        data['SeedUrls'] = Builders::SeedUrlList.build(input[:seed_urls]) unless input[:seed_urls].nil?
        data['WebCrawlerMode'] = input[:web_crawler_mode] unless input[:web_crawler_mode].nil?
        data
      end
    end

    # List Builder for SeedUrlList
    class SeedUrlList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GoogleDriveConfiguration
    class GoogleDriveConfiguration
      def self.build(input)
        data = {}
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['InclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:inclusion_patterns]) unless input[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:exclusion_patterns]) unless input[:exclusion_patterns].nil?
        data['FieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:field_mappings]) unless input[:field_mappings].nil?
        data['ExcludeMimeTypes'] = Builders::ExcludeMimeTypesList.build(input[:exclude_mime_types]) unless input[:exclude_mime_types].nil?
        data['ExcludeUserAccounts'] = Builders::ExcludeUserAccountsList.build(input[:exclude_user_accounts]) unless input[:exclude_user_accounts].nil?
        data['ExcludeSharedDrives'] = Builders::ExcludeSharedDrivesList.build(input[:exclude_shared_drives]) unless input[:exclude_shared_drives].nil?
        data
      end
    end

    # List Builder for ExcludeSharedDrivesList
    class ExcludeSharedDrivesList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ExcludeUserAccountsList
    class ExcludeUserAccountsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ExcludeMimeTypesList
    class ExcludeMimeTypesList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ConfluenceConfiguration
    class ConfluenceConfiguration
      def self.build(input)
        data = {}
        data['ServerUrl'] = input[:server_url] unless input[:server_url].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data['SpaceConfiguration'] = Builders::ConfluenceSpaceConfiguration.build(input[:space_configuration]) unless input[:space_configuration].nil?
        data['PageConfiguration'] = Builders::ConfluencePageConfiguration.build(input[:page_configuration]) unless input[:page_configuration].nil?
        data['BlogConfiguration'] = Builders::ConfluenceBlogConfiguration.build(input[:blog_configuration]) unless input[:blog_configuration].nil?
        data['AttachmentConfiguration'] = Builders::ConfluenceAttachmentConfiguration.build(input[:attachment_configuration]) unless input[:attachment_configuration].nil?
        data['VpcConfiguration'] = Builders::DataSourceVpcConfiguration.build(input[:vpc_configuration]) unless input[:vpc_configuration].nil?
        data['InclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:inclusion_patterns]) unless input[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:exclusion_patterns]) unless input[:exclusion_patterns].nil?
        data
      end
    end

    # Structure Builder for ConfluenceAttachmentConfiguration
    class ConfluenceAttachmentConfiguration
      def self.build(input)
        data = {}
        data['CrawlAttachments'] = input[:crawl_attachments] unless input[:crawl_attachments].nil?
        data['AttachmentFieldMappings'] = Builders::ConfluenceAttachmentFieldMappingsList.build(input[:attachment_field_mappings]) unless input[:attachment_field_mappings].nil?
        data
      end
    end

    # List Builder for ConfluenceAttachmentFieldMappingsList
    class ConfluenceAttachmentFieldMappingsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ConfluenceAttachmentToIndexFieldMapping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ConfluenceAttachmentToIndexFieldMapping
    class ConfluenceAttachmentToIndexFieldMapping
      def self.build(input)
        data = {}
        data['DataSourceFieldName'] = input[:data_source_field_name] unless input[:data_source_field_name].nil?
        data['DateFieldFormat'] = input[:date_field_format] unless input[:date_field_format].nil?
        data['IndexFieldName'] = input[:index_field_name] unless input[:index_field_name].nil?
        data
      end
    end

    # Structure Builder for ConfluenceBlogConfiguration
    class ConfluenceBlogConfiguration
      def self.build(input)
        data = {}
        data['BlogFieldMappings'] = Builders::ConfluenceBlogFieldMappingsList.build(input[:blog_field_mappings]) unless input[:blog_field_mappings].nil?
        data
      end
    end

    # List Builder for ConfluenceBlogFieldMappingsList
    class ConfluenceBlogFieldMappingsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ConfluenceBlogToIndexFieldMapping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ConfluenceBlogToIndexFieldMapping
    class ConfluenceBlogToIndexFieldMapping
      def self.build(input)
        data = {}
        data['DataSourceFieldName'] = input[:data_source_field_name] unless input[:data_source_field_name].nil?
        data['DateFieldFormat'] = input[:date_field_format] unless input[:date_field_format].nil?
        data['IndexFieldName'] = input[:index_field_name] unless input[:index_field_name].nil?
        data
      end
    end

    # Structure Builder for ConfluencePageConfiguration
    class ConfluencePageConfiguration
      def self.build(input)
        data = {}
        data['PageFieldMappings'] = Builders::ConfluencePageFieldMappingsList.build(input[:page_field_mappings]) unless input[:page_field_mappings].nil?
        data
      end
    end

    # List Builder for ConfluencePageFieldMappingsList
    class ConfluencePageFieldMappingsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ConfluencePageToIndexFieldMapping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ConfluencePageToIndexFieldMapping
    class ConfluencePageToIndexFieldMapping
      def self.build(input)
        data = {}
        data['DataSourceFieldName'] = input[:data_source_field_name] unless input[:data_source_field_name].nil?
        data['DateFieldFormat'] = input[:date_field_format] unless input[:date_field_format].nil?
        data['IndexFieldName'] = input[:index_field_name] unless input[:index_field_name].nil?
        data
      end
    end

    # Structure Builder for ConfluenceSpaceConfiguration
    class ConfluenceSpaceConfiguration
      def self.build(input)
        data = {}
        data['CrawlPersonalSpaces'] = input[:crawl_personal_spaces] unless input[:crawl_personal_spaces].nil?
        data['CrawlArchivedSpaces'] = input[:crawl_archived_spaces] unless input[:crawl_archived_spaces].nil?
        data['IncludeSpaces'] = Builders::ConfluenceSpaceList.build(input[:include_spaces]) unless input[:include_spaces].nil?
        data['ExcludeSpaces'] = Builders::ConfluenceSpaceList.build(input[:exclude_spaces]) unless input[:exclude_spaces].nil?
        data['SpaceFieldMappings'] = Builders::ConfluenceSpaceFieldMappingsList.build(input[:space_field_mappings]) unless input[:space_field_mappings].nil?
        data
      end
    end

    # List Builder for ConfluenceSpaceFieldMappingsList
    class ConfluenceSpaceFieldMappingsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ConfluenceSpaceToIndexFieldMapping.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ConfluenceSpaceToIndexFieldMapping
    class ConfluenceSpaceToIndexFieldMapping
      def self.build(input)
        data = {}
        data['DataSourceFieldName'] = input[:data_source_field_name] unless input[:data_source_field_name].nil?
        data['DateFieldFormat'] = input[:date_field_format] unless input[:date_field_format].nil?
        data['IndexFieldName'] = input[:index_field_name] unless input[:index_field_name].nil?
        data
      end
    end

    # List Builder for ConfluenceSpaceList
    class ConfluenceSpaceList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ServiceNowConfiguration
    class ServiceNowConfiguration
      def self.build(input)
        data = {}
        data['HostUrl'] = input[:host_url] unless input[:host_url].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['ServiceNowBuildVersion'] = input[:service_now_build_version] unless input[:service_now_build_version].nil?
        data['KnowledgeArticleConfiguration'] = Builders::ServiceNowKnowledgeArticleConfiguration.build(input[:knowledge_article_configuration]) unless input[:knowledge_article_configuration].nil?
        data['ServiceCatalogConfiguration'] = Builders::ServiceNowServiceCatalogConfiguration.build(input[:service_catalog_configuration]) unless input[:service_catalog_configuration].nil?
        data['AuthenticationType'] = input[:authentication_type] unless input[:authentication_type].nil?
        data
      end
    end

    # Structure Builder for ServiceNowServiceCatalogConfiguration
    class ServiceNowServiceCatalogConfiguration
      def self.build(input)
        data = {}
        data['CrawlAttachments'] = input[:crawl_attachments] unless input[:crawl_attachments].nil?
        data['IncludeAttachmentFilePatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:include_attachment_file_patterns]) unless input[:include_attachment_file_patterns].nil?
        data['ExcludeAttachmentFilePatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:exclude_attachment_file_patterns]) unless input[:exclude_attachment_file_patterns].nil?
        data['DocumentDataFieldName'] = input[:document_data_field_name] unless input[:document_data_field_name].nil?
        data['DocumentTitleFieldName'] = input[:document_title_field_name] unless input[:document_title_field_name].nil?
        data['FieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:field_mappings]) unless input[:field_mappings].nil?
        data
      end
    end

    # Structure Builder for ServiceNowKnowledgeArticleConfiguration
    class ServiceNowKnowledgeArticleConfiguration
      def self.build(input)
        data = {}
        data['CrawlAttachments'] = input[:crawl_attachments] unless input[:crawl_attachments].nil?
        data['IncludeAttachmentFilePatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:include_attachment_file_patterns]) unless input[:include_attachment_file_patterns].nil?
        data['ExcludeAttachmentFilePatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:exclude_attachment_file_patterns]) unless input[:exclude_attachment_file_patterns].nil?
        data['DocumentDataFieldName'] = input[:document_data_field_name] unless input[:document_data_field_name].nil?
        data['DocumentTitleFieldName'] = input[:document_title_field_name] unless input[:document_title_field_name].nil?
        data['FieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:field_mappings]) unless input[:field_mappings].nil?
        data['FilterQuery'] = input[:filter_query] unless input[:filter_query].nil?
        data
      end
    end

    # Structure Builder for OneDriveConfiguration
    class OneDriveConfiguration
      def self.build(input)
        data = {}
        data['TenantDomain'] = input[:tenant_domain] unless input[:tenant_domain].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['OneDriveUsers'] = Builders::OneDriveUsers.build(input[:one_drive_users]) unless input[:one_drive_users].nil?
        data['InclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:inclusion_patterns]) unless input[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:exclusion_patterns]) unless input[:exclusion_patterns].nil?
        data['FieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:field_mappings]) unless input[:field_mappings].nil?
        data['DisableLocalGroups'] = input[:disable_local_groups] unless input[:disable_local_groups].nil?
        data
      end
    end

    # Structure Builder for OneDriveUsers
    class OneDriveUsers
      def self.build(input)
        data = {}
        data['OneDriveUserList'] = Builders::OneDriveUserList.build(input[:one_drive_user_list]) unless input[:one_drive_user_list].nil?
        data['OneDriveUserS3Path'] = Builders::S3Path.build(input[:one_drive_user_s3_path]) unless input[:one_drive_user_s3_path].nil?
        data
      end
    end

    # List Builder for OneDriveUserList
    class OneDriveUserList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SalesforceConfiguration
    class SalesforceConfiguration
      def self.build(input)
        data = {}
        data['ServerUrl'] = input[:server_url] unless input[:server_url].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['StandardObjectConfigurations'] = Builders::SalesforceStandardObjectConfigurationList.build(input[:standard_object_configurations]) unless input[:standard_object_configurations].nil?
        data['KnowledgeArticleConfiguration'] = Builders::SalesforceKnowledgeArticleConfiguration.build(input[:knowledge_article_configuration]) unless input[:knowledge_article_configuration].nil?
        data['ChatterFeedConfiguration'] = Builders::SalesforceChatterFeedConfiguration.build(input[:chatter_feed_configuration]) unless input[:chatter_feed_configuration].nil?
        data['CrawlAttachments'] = input[:crawl_attachments] unless input[:crawl_attachments].nil?
        data['StandardObjectAttachmentConfiguration'] = Builders::SalesforceStandardObjectAttachmentConfiguration.build(input[:standard_object_attachment_configuration]) unless input[:standard_object_attachment_configuration].nil?
        data['IncludeAttachmentFilePatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:include_attachment_file_patterns]) unless input[:include_attachment_file_patterns].nil?
        data['ExcludeAttachmentFilePatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:exclude_attachment_file_patterns]) unless input[:exclude_attachment_file_patterns].nil?
        data
      end
    end

    # Structure Builder for SalesforceStandardObjectAttachmentConfiguration
    class SalesforceStandardObjectAttachmentConfiguration
      def self.build(input)
        data = {}
        data['DocumentTitleFieldName'] = input[:document_title_field_name] unless input[:document_title_field_name].nil?
        data['FieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:field_mappings]) unless input[:field_mappings].nil?
        data
      end
    end

    # Structure Builder for SalesforceChatterFeedConfiguration
    class SalesforceChatterFeedConfiguration
      def self.build(input)
        data = {}
        data['DocumentDataFieldName'] = input[:document_data_field_name] unless input[:document_data_field_name].nil?
        data['DocumentTitleFieldName'] = input[:document_title_field_name] unless input[:document_title_field_name].nil?
        data['FieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:field_mappings]) unless input[:field_mappings].nil?
        data['IncludeFilterTypes'] = Builders::SalesforceChatterFeedIncludeFilterTypes.build(input[:include_filter_types]) unless input[:include_filter_types].nil?
        data
      end
    end

    # List Builder for SalesforceChatterFeedIncludeFilterTypes
    class SalesforceChatterFeedIncludeFilterTypes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SalesforceKnowledgeArticleConfiguration
    class SalesforceKnowledgeArticleConfiguration
      def self.build(input)
        data = {}
        data['IncludedStates'] = Builders::SalesforceKnowledgeArticleStateList.build(input[:included_states]) unless input[:included_states].nil?
        data['StandardKnowledgeArticleTypeConfiguration'] = Builders::SalesforceStandardKnowledgeArticleTypeConfiguration.build(input[:standard_knowledge_article_type_configuration]) unless input[:standard_knowledge_article_type_configuration].nil?
        data['CustomKnowledgeArticleTypeConfigurations'] = Builders::SalesforceCustomKnowledgeArticleTypeConfigurationList.build(input[:custom_knowledge_article_type_configurations]) unless input[:custom_knowledge_article_type_configurations].nil?
        data
      end
    end

    # List Builder for SalesforceCustomKnowledgeArticleTypeConfigurationList
    class SalesforceCustomKnowledgeArticleTypeConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SalesforceCustomKnowledgeArticleTypeConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SalesforceCustomKnowledgeArticleTypeConfiguration
    class SalesforceCustomKnowledgeArticleTypeConfiguration
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['DocumentDataFieldName'] = input[:document_data_field_name] unless input[:document_data_field_name].nil?
        data['DocumentTitleFieldName'] = input[:document_title_field_name] unless input[:document_title_field_name].nil?
        data['FieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:field_mappings]) unless input[:field_mappings].nil?
        data
      end
    end

    # Structure Builder for SalesforceStandardKnowledgeArticleTypeConfiguration
    class SalesforceStandardKnowledgeArticleTypeConfiguration
      def self.build(input)
        data = {}
        data['DocumentDataFieldName'] = input[:document_data_field_name] unless input[:document_data_field_name].nil?
        data['DocumentTitleFieldName'] = input[:document_title_field_name] unless input[:document_title_field_name].nil?
        data['FieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:field_mappings]) unless input[:field_mappings].nil?
        data
      end
    end

    # List Builder for SalesforceKnowledgeArticleStateList
    class SalesforceKnowledgeArticleStateList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SalesforceStandardObjectConfigurationList
    class SalesforceStandardObjectConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::SalesforceStandardObjectConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SalesforceStandardObjectConfiguration
    class SalesforceStandardObjectConfiguration
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['DocumentDataFieldName'] = input[:document_data_field_name] unless input[:document_data_field_name].nil?
        data['DocumentTitleFieldName'] = input[:document_title_field_name] unless input[:document_title_field_name].nil?
        data['FieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:field_mappings]) unless input[:field_mappings].nil?
        data
      end
    end

    # Structure Builder for DatabaseConfiguration
    class DatabaseConfiguration
      def self.build(input)
        data = {}
        data['DatabaseEngineType'] = input[:database_engine_type] unless input[:database_engine_type].nil?
        data['ConnectionConfiguration'] = Builders::ConnectionConfiguration.build(input[:connection_configuration]) unless input[:connection_configuration].nil?
        data['VpcConfiguration'] = Builders::DataSourceVpcConfiguration.build(input[:vpc_configuration]) unless input[:vpc_configuration].nil?
        data['ColumnConfiguration'] = Builders::ColumnConfiguration.build(input[:column_configuration]) unless input[:column_configuration].nil?
        data['AclConfiguration'] = Builders::AclConfiguration.build(input[:acl_configuration]) unless input[:acl_configuration].nil?
        data['SqlConfiguration'] = Builders::SqlConfiguration.build(input[:sql_configuration]) unless input[:sql_configuration].nil?
        data
      end
    end

    # Structure Builder for SqlConfiguration
    class SqlConfiguration
      def self.build(input)
        data = {}
        data['QueryIdentifiersEnclosingOption'] = input[:query_identifiers_enclosing_option] unless input[:query_identifiers_enclosing_option].nil?
        data
      end
    end

    # Structure Builder for AclConfiguration
    class AclConfiguration
      def self.build(input)
        data = {}
        data['AllowedGroupsColumnName'] = input[:allowed_groups_column_name] unless input[:allowed_groups_column_name].nil?
        data
      end
    end

    # Structure Builder for ColumnConfiguration
    class ColumnConfiguration
      def self.build(input)
        data = {}
        data['DocumentIdColumnName'] = input[:document_id_column_name] unless input[:document_id_column_name].nil?
        data['DocumentDataColumnName'] = input[:document_data_column_name] unless input[:document_data_column_name].nil?
        data['DocumentTitleColumnName'] = input[:document_title_column_name] unless input[:document_title_column_name].nil?
        data['FieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:field_mappings]) unless input[:field_mappings].nil?
        data['ChangeDetectingColumns'] = Builders::ChangeDetectingColumns.build(input[:change_detecting_columns]) unless input[:change_detecting_columns].nil?
        data
      end
    end

    # List Builder for ChangeDetectingColumns
    class ChangeDetectingColumns
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ConnectionConfiguration
    class ConnectionConfiguration
      def self.build(input)
        data = {}
        data['DatabaseHost'] = input[:database_host] unless input[:database_host].nil?
        data['DatabasePort'] = input[:database_port] unless input[:database_port].nil?
        data['DatabaseName'] = input[:database_name] unless input[:database_name].nil?
        data['TableName'] = input[:table_name] unless input[:table_name].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data
      end
    end

    # Structure Builder for SharePointConfiguration
    class SharePointConfiguration
      def self.build(input)
        data = {}
        data['SharePointVersion'] = input[:share_point_version] unless input[:share_point_version].nil?
        data['Urls'] = Builders::SharePointUrlList.build(input[:urls]) unless input[:urls].nil?
        data['SecretArn'] = input[:secret_arn] unless input[:secret_arn].nil?
        data['CrawlAttachments'] = input[:crawl_attachments] unless input[:crawl_attachments].nil?
        data['UseChangeLog'] = input[:use_change_log] unless input[:use_change_log].nil?
        data['InclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:inclusion_patterns]) unless input[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:exclusion_patterns]) unless input[:exclusion_patterns].nil?
        data['VpcConfiguration'] = Builders::DataSourceVpcConfiguration.build(input[:vpc_configuration]) unless input[:vpc_configuration].nil?
        data['FieldMappings'] = Builders::DataSourceToIndexFieldMappingList.build(input[:field_mappings]) unless input[:field_mappings].nil?
        data['DocumentTitleFieldName'] = input[:document_title_field_name] unless input[:document_title_field_name].nil?
        data['DisableLocalGroups'] = input[:disable_local_groups] unless input[:disable_local_groups].nil?
        data['SslCertificateS3Path'] = Builders::S3Path.build(input[:ssl_certificate_s3_path]) unless input[:ssl_certificate_s3_path].nil?
        data
      end
    end

    # List Builder for SharePointUrlList
    class SharePointUrlList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for S3DataSourceConfiguration
    class S3DataSourceConfiguration
      def self.build(input)
        data = {}
        data['BucketName'] = input[:bucket_name] unless input[:bucket_name].nil?
        data['InclusionPrefixes'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:inclusion_prefixes]) unless input[:inclusion_prefixes].nil?
        data['InclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:inclusion_patterns]) unless input[:inclusion_patterns].nil?
        data['ExclusionPatterns'] = Builders::DataSourceInclusionsExclusionsStrings.build(input[:exclusion_patterns]) unless input[:exclusion_patterns].nil?
        data['DocumentsMetadataConfiguration'] = Builders::DocumentsMetadataConfiguration.build(input[:documents_metadata_configuration]) unless input[:documents_metadata_configuration].nil?
        data['AccessControlListConfiguration'] = Builders::AccessControlListConfiguration.build(input[:access_control_list_configuration]) unless input[:access_control_list_configuration].nil?
        data
      end
    end

    # Structure Builder for AccessControlListConfiguration
    class AccessControlListConfiguration
      def self.build(input)
        data = {}
        data['KeyPath'] = input[:key_path] unless input[:key_path].nil?
        data
      end
    end

    # Structure Builder for DocumentsMetadataConfiguration
    class DocumentsMetadataConfiguration
      def self.build(input)
        data = {}
        data['S3Prefix'] = input[:s3_prefix] unless input[:s3_prefix].nil?
        data
      end
    end

    # Operation Builder for CreateExperience
    class CreateExperience
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.CreateExperience'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Configuration'] = Builders::ExperienceConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ExperienceConfiguration
    class ExperienceConfiguration
      def self.build(input)
        data = {}
        data['ContentSourceConfiguration'] = Builders::ContentSourceConfiguration.build(input[:content_source_configuration]) unless input[:content_source_configuration].nil?
        data['UserIdentityConfiguration'] = Builders::UserIdentityConfiguration.build(input[:user_identity_configuration]) unless input[:user_identity_configuration].nil?
        data
      end
    end

    # Structure Builder for UserIdentityConfiguration
    class UserIdentityConfiguration
      def self.build(input)
        data = {}
        data['IdentityAttributeName'] = input[:identity_attribute_name] unless input[:identity_attribute_name].nil?
        data
      end
    end

    # Structure Builder for ContentSourceConfiguration
    class ContentSourceConfiguration
      def self.build(input)
        data = {}
        data['DataSourceIds'] = Builders::DataSourceIdList.build(input[:data_source_ids]) unless input[:data_source_ids].nil?
        data['FaqIds'] = Builders::FaqIdsList.build(input[:faq_ids]) unless input[:faq_ids].nil?
        data['DirectPutContent'] = input[:direct_put_content] unless input[:direct_put_content].nil?
        data
      end
    end

    # List Builder for FaqIdsList
    class FaqIdsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for DataSourceIdList
    class DataSourceIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateFaq
    class CreateFaq
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.CreateFaq'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['S3Path'] = Builders::S3Path.build(input[:s3_path]) unless input[:s3_path].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['FileFormat'] = input[:file_format] unless input[:file_format].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateIndex
    class CreateIndex
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.CreateIndex'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Edition'] = input[:edition] unless input[:edition].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['ServerSideEncryptionConfiguration'] = Builders::ServerSideEncryptionConfiguration.build(input[:server_side_encryption_configuration]) unless input[:server_side_encryption_configuration].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['UserTokenConfigurations'] = Builders::UserTokenConfigurationList.build(input[:user_token_configurations]) unless input[:user_token_configurations].nil?
        data['UserContextPolicy'] = input[:user_context_policy] unless input[:user_context_policy].nil?
        data['UserGroupResolutionConfiguration'] = Builders::UserGroupResolutionConfiguration.build(input[:user_group_resolution_configuration]) unless input[:user_group_resolution_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for UserGroupResolutionConfiguration
    class UserGroupResolutionConfiguration
      def self.build(input)
        data = {}
        data['UserGroupResolutionMode'] = input[:user_group_resolution_mode] unless input[:user_group_resolution_mode].nil?
        data
      end
    end

    # List Builder for UserTokenConfigurationList
    class UserTokenConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::UserTokenConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UserTokenConfiguration
    class UserTokenConfiguration
      def self.build(input)
        data = {}
        data['JwtTokenTypeConfiguration'] = Builders::JwtTokenTypeConfiguration.build(input[:jwt_token_type_configuration]) unless input[:jwt_token_type_configuration].nil?
        data['JsonTokenTypeConfiguration'] = Builders::JsonTokenTypeConfiguration.build(input[:json_token_type_configuration]) unless input[:json_token_type_configuration].nil?
        data
      end
    end

    # Structure Builder for JsonTokenTypeConfiguration
    class JsonTokenTypeConfiguration
      def self.build(input)
        data = {}
        data['UserNameAttributeField'] = input[:user_name_attribute_field] unless input[:user_name_attribute_field].nil?
        data['GroupAttributeField'] = input[:group_attribute_field] unless input[:group_attribute_field].nil?
        data
      end
    end

    # Structure Builder for JwtTokenTypeConfiguration
    class JwtTokenTypeConfiguration
      def self.build(input)
        data = {}
        data['KeyLocation'] = input[:key_location] unless input[:key_location].nil?
        data['URL'] = input[:url] unless input[:url].nil?
        data['SecretManagerArn'] = input[:secret_manager_arn] unless input[:secret_manager_arn].nil?
        data['UserNameAttributeField'] = input[:user_name_attribute_field] unless input[:user_name_attribute_field].nil?
        data['GroupAttributeField'] = input[:group_attribute_field] unless input[:group_attribute_field].nil?
        data['Issuer'] = input[:issuer] unless input[:issuer].nil?
        data['ClaimRegex'] = input[:claim_regex] unless input[:claim_regex].nil?
        data
      end
    end

    # Structure Builder for ServerSideEncryptionConfiguration
    class ServerSideEncryptionConfiguration
      def self.build(input)
        data = {}
        data['KmsKeyId'] = input[:kms_key_id] unless input[:kms_key_id].nil?
        data
      end
    end

    # Operation Builder for CreateQuerySuggestionsBlockList
    class CreateQuerySuggestionsBlockList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.CreateQuerySuggestionsBlockList'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['SourceS3Path'] = Builders::S3Path.build(input[:source_s3_path]) unless input[:source_s3_path].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateThesaurus
    class CreateThesaurus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.CreateThesaurus'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['SourceS3Path'] = Builders::S3Path.build(input[:source_s3_path]) unless input[:source_s3_path].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDataSource
    class DeleteDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.DeleteDataSource'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteExperience
    class DeleteExperience
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.DeleteExperience'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteFaq
    class DeleteFaq
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.DeleteFaq'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteIndex
    class DeleteIndex
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.DeleteIndex'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeletePrincipalMapping
    class DeletePrincipalMapping
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.DeletePrincipalMapping'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['DataSourceId'] = input[:data_source_id] unless input[:data_source_id].nil?
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        data['OrderingId'] = input[:ordering_id] unless input[:ordering_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteQuerySuggestionsBlockList
    class DeleteQuerySuggestionsBlockList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.DeleteQuerySuggestionsBlockList'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteThesaurus
    class DeleteThesaurus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.DeleteThesaurus'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDataSource
    class DescribeDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.DescribeDataSource'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeExperience
    class DescribeExperience
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.DescribeExperience'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFaq
    class DescribeFaq
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.DescribeFaq'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeIndex
    class DescribeIndex
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.DescribeIndex'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribePrincipalMapping
    class DescribePrincipalMapping
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.DescribePrincipalMapping'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['DataSourceId'] = input[:data_source_id] unless input[:data_source_id].nil?
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeQuerySuggestionsBlockList
    class DescribeQuerySuggestionsBlockList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.DescribeQuerySuggestionsBlockList'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeQuerySuggestionsConfig
    class DescribeQuerySuggestionsConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.DescribeQuerySuggestionsConfig'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeThesaurus
    class DescribeThesaurus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.DescribeThesaurus'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateEntitiesFromExperience
    class DisassociateEntitiesFromExperience
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.DisassociateEntitiesFromExperience'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['EntityList'] = Builders::DisassociateEntityList.build(input[:entity_list]) unless input[:entity_list].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DisassociateEntityList
    class DisassociateEntityList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EntityConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DisassociatePersonasFromEntities
    class DisassociatePersonasFromEntities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.DisassociatePersonasFromEntities'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['EntityIds'] = Builders::EntityIdsList.build(input[:entity_ids]) unless input[:entity_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EntityIdsList
    class EntityIdsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetQuerySuggestions
    class GetQuerySuggestions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.GetQuerySuggestions'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['QueryText'] = input[:query_text] unless input[:query_text].nil?
        data['MaxSuggestionsCount'] = input[:max_suggestions_count] unless input[:max_suggestions_count].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetSnapshots
    class GetSnapshots
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.GetSnapshots'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['Interval'] = input[:interval] unless input[:interval].nil?
        data['MetricType'] = input[:metric_type] unless input[:metric_type].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListDataSourceSyncJobs
    class ListDataSourceSyncJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.ListDataSourceSyncJobs'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['StartTimeFilter'] = Builders::TimeRange.build(input[:start_time_filter]) unless input[:start_time_filter].nil?
        data['StatusFilter'] = input[:status_filter] unless input[:status_filter].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TimeRange
    class TimeRange
      def self.build(input)
        data = {}
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data
      end
    end

    # Operation Builder for ListDataSources
    class ListDataSources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.ListDataSources'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEntityPersonas
    class ListEntityPersonas
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.ListEntityPersonas'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListExperienceEntities
    class ListExperienceEntities
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.ListExperienceEntities'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListExperiences
    class ListExperiences
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.ListExperiences'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFaqs
    class ListFaqs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.ListFaqs'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListGroupsOlderThanOrderingId
    class ListGroupsOlderThanOrderingId
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.ListGroupsOlderThanOrderingId'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['DataSourceId'] = input[:data_source_id] unless input[:data_source_id].nil?
        data['OrderingId'] = input[:ordering_id] unless input[:ordering_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListIndices
    class ListIndices
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.ListIndices'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListQuerySuggestionsBlockLists
    class ListQuerySuggestionsBlockLists
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.ListQuerySuggestionsBlockLists'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.ListTagsForResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListThesauri
    class ListThesauri
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.ListThesauri'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutPrincipalMapping
    class PutPrincipalMapping
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.PutPrincipalMapping'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['DataSourceId'] = input[:data_source_id] unless input[:data_source_id].nil?
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        data['GroupMembers'] = Builders::GroupMembers.build(input[:group_members]) unless input[:group_members].nil?
        data['OrderingId'] = input[:ordering_id] unless input[:ordering_id].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for GroupMembers
    class GroupMembers
      def self.build(input)
        data = {}
        data['MemberGroups'] = Builders::MemberGroups.build(input[:member_groups]) unless input[:member_groups].nil?
        data['MemberUsers'] = Builders::MemberUsers.build(input[:member_users]) unless input[:member_users].nil?
        data['S3PathforGroupMembers'] = Builders::S3Path.build(input[:s3_pathfor_group_members]) unless input[:s3_pathfor_group_members].nil?
        data
      end
    end

    # List Builder for MemberUsers
    class MemberUsers
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MemberUser.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MemberUser
    class MemberUser
      def self.build(input)
        data = {}
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        data
      end
    end

    # List Builder for MemberGroups
    class MemberGroups
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::MemberGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for MemberGroup
    class MemberGroup
      def self.build(input)
        data = {}
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        data['DataSourceId'] = input[:data_source_id] unless input[:data_source_id].nil?
        data
      end
    end

    # Operation Builder for Query
    class Query
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.Query'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['QueryText'] = input[:query_text] unless input[:query_text].nil?
        data['AttributeFilter'] = Builders::AttributeFilter.build(input[:attribute_filter]) unless input[:attribute_filter].nil?
        data['Facets'] = Builders::FacetList.build(input[:facets]) unless input[:facets].nil?
        data['RequestedDocumentAttributes'] = Builders::DocumentAttributeKeyList.build(input[:requested_document_attributes]) unless input[:requested_document_attributes].nil?
        data['QueryResultTypeFilter'] = input[:query_result_type_filter] unless input[:query_result_type_filter].nil?
        data['DocumentRelevanceOverrideConfigurations'] = Builders::DocumentRelevanceOverrideConfigurationList.build(input[:document_relevance_override_configurations]) unless input[:document_relevance_override_configurations].nil?
        data['PageNumber'] = input[:page_number] unless input[:page_number].nil?
        data['PageSize'] = input[:page_size] unless input[:page_size].nil?
        data['SortingConfiguration'] = Builders::SortingConfiguration.build(input[:sorting_configuration]) unless input[:sorting_configuration].nil?
        data['UserContext'] = Builders::UserContext.build(input[:user_context]) unless input[:user_context].nil?
        data['VisitorId'] = input[:visitor_id] unless input[:visitor_id].nil?
        data['SpellCorrectionConfiguration'] = Builders::SpellCorrectionConfiguration.build(input[:spell_correction_configuration]) unless input[:spell_correction_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for SpellCorrectionConfiguration
    class SpellCorrectionConfiguration
      def self.build(input)
        data = {}
        data['IncludeQuerySpellCheckSuggestions'] = input[:include_query_spell_check_suggestions] unless input[:include_query_spell_check_suggestions].nil?
        data
      end
    end

    # Structure Builder for UserContext
    class UserContext
      def self.build(input)
        data = {}
        data['Token'] = input[:token] unless input[:token].nil?
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        data['Groups'] = Builders::Groups.build(input[:groups]) unless input[:groups].nil?
        data['DataSourceGroups'] = Builders::DataSourceGroups.build(input[:data_source_groups]) unless input[:data_source_groups].nil?
        data
      end
    end

    # List Builder for DataSourceGroups
    class DataSourceGroups
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DataSourceGroup.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DataSourceGroup
    class DataSourceGroup
      def self.build(input)
        data = {}
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        data['DataSourceId'] = input[:data_source_id] unless input[:data_source_id].nil?
        data
      end
    end

    # List Builder for Groups
    class Groups
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for SortingConfiguration
    class SortingConfiguration
      def self.build(input)
        data = {}
        data['DocumentAttributeKey'] = input[:document_attribute_key] unless input[:document_attribute_key].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data
      end
    end

    # List Builder for DocumentRelevanceOverrideConfigurationList
    class DocumentRelevanceOverrideConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DocumentRelevanceConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DocumentRelevanceConfiguration
    class DocumentRelevanceConfiguration
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Relevance'] = Builders::Relevance.build(input[:relevance]) unless input[:relevance].nil?
        data
      end
    end

    # Structure Builder for Relevance
    class Relevance
      def self.build(input)
        data = {}
        data['Freshness'] = input[:freshness] unless input[:freshness].nil?
        data['Importance'] = input[:importance] unless input[:importance].nil?
        data['Duration'] = input[:duration] unless input[:duration].nil?
        data['RankOrder'] = input[:rank_order] unless input[:rank_order].nil?
        data['ValueImportanceMap'] = Builders::ValueImportanceMap.build(input[:value_importance_map]) unless input[:value_importance_map].nil?
        data
      end
    end

    # Map Builder for ValueImportanceMap
    class ValueImportanceMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for DocumentAttributeKeyList
    class DocumentAttributeKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for FacetList
    class FacetList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Facet.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Facet
    class Facet
      def self.build(input)
        data = {}
        data['DocumentAttributeKey'] = input[:document_attribute_key] unless input[:document_attribute_key].nil?
        data['Facets'] = Builders::FacetList.build(input[:facets]) unless input[:facets].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data
      end
    end

    # Structure Builder for AttributeFilter
    class AttributeFilter
      def self.build(input)
        data = {}
        data['AndAllFilters'] = Builders::AttributeFilterList.build(input[:and_all_filters]) unless input[:and_all_filters].nil?
        data['OrAllFilters'] = Builders::AttributeFilterList.build(input[:or_all_filters]) unless input[:or_all_filters].nil?
        data['NotFilter'] = Builders::AttributeFilter.build(input[:not_filter]) unless input[:not_filter].nil?
        data['EqualsTo'] = Builders::DocumentAttribute.build(input[:equals_to]) unless input[:equals_to].nil?
        data['ContainsAll'] = Builders::DocumentAttribute.build(input[:contains_all]) unless input[:contains_all].nil?
        data['ContainsAny'] = Builders::DocumentAttribute.build(input[:contains_any]) unless input[:contains_any].nil?
        data['GreaterThan'] = Builders::DocumentAttribute.build(input[:greater_than]) unless input[:greater_than].nil?
        data['GreaterThanOrEquals'] = Builders::DocumentAttribute.build(input[:greater_than_or_equals]) unless input[:greater_than_or_equals].nil?
        data['LessThan'] = Builders::DocumentAttribute.build(input[:less_than]) unless input[:less_than].nil?
        data['LessThanOrEquals'] = Builders::DocumentAttribute.build(input[:less_than_or_equals]) unless input[:less_than_or_equals].nil?
        data
      end
    end

    # List Builder for AttributeFilterList
    class AttributeFilterList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AttributeFilter.build(element) unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartDataSourceSyncJob
    class StartDataSourceSyncJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.StartDataSourceSyncJob'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopDataSourceSyncJob
    class StopDataSourceSyncJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.StopDataSourceSyncJob'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SubmitFeedback
    class SubmitFeedback
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.SubmitFeedback'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['QueryId'] = input[:query_id] unless input[:query_id].nil?
        data['ClickFeedbackItems'] = Builders::ClickFeedbackList.build(input[:click_feedback_items]) unless input[:click_feedback_items].nil?
        data['RelevanceFeedbackItems'] = Builders::RelevanceFeedbackList.build(input[:relevance_feedback_items]) unless input[:relevance_feedback_items].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for RelevanceFeedbackList
    class RelevanceFeedbackList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::RelevanceFeedback.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for RelevanceFeedback
    class RelevanceFeedback
      def self.build(input)
        data = {}
        data['ResultId'] = input[:result_id] unless input[:result_id].nil?
        data['RelevanceValue'] = input[:relevance_value] unless input[:relevance_value].nil?
        data
      end
    end

    # List Builder for ClickFeedbackList
    class ClickFeedbackList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ClickFeedback.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ClickFeedback
    class ClickFeedback
      def self.build(input)
        data = {}
        data['ResultId'] = input[:result_id] unless input[:result_id].nil?
        data['ClickTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:click_time]).to_i unless input[:click_time].nil?
        data
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.TagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.UntagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
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

    # Operation Builder for UpdateDataSource
    class UpdateDataSource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.UpdateDataSource'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['Configuration'] = Builders::DataSourceConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Schedule'] = input[:schedule] unless input[:schedule].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['LanguageCode'] = input[:language_code] unless input[:language_code].nil?
        data['CustomDocumentEnrichmentConfiguration'] = Builders::CustomDocumentEnrichmentConfiguration.build(input[:custom_document_enrichment_configuration]) unless input[:custom_document_enrichment_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateExperience
    class UpdateExperience
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.UpdateExperience'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Configuration'] = Builders::ExperienceConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateIndex
    class UpdateIndex
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.UpdateIndex'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DocumentMetadataConfigurationUpdates'] = Builders::DocumentMetadataConfigurationList.build(input[:document_metadata_configuration_updates]) unless input[:document_metadata_configuration_updates].nil?
        data['CapacityUnits'] = Builders::CapacityUnitsConfiguration.build(input[:capacity_units]) unless input[:capacity_units].nil?
        data['UserTokenConfigurations'] = Builders::UserTokenConfigurationList.build(input[:user_token_configurations]) unless input[:user_token_configurations].nil?
        data['UserContextPolicy'] = input[:user_context_policy] unless input[:user_context_policy].nil?
        data['UserGroupResolutionConfiguration'] = Builders::UserGroupResolutionConfiguration.build(input[:user_group_resolution_configuration]) unless input[:user_group_resolution_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for CapacityUnitsConfiguration
    class CapacityUnitsConfiguration
      def self.build(input)
        data = {}
        data['StorageCapacityUnits'] = input[:storage_capacity_units] unless input[:storage_capacity_units].nil?
        data['QueryCapacityUnits'] = input[:query_capacity_units] unless input[:query_capacity_units].nil?
        data
      end
    end

    # List Builder for DocumentMetadataConfigurationList
    class DocumentMetadataConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DocumentMetadataConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DocumentMetadataConfiguration
    class DocumentMetadataConfiguration
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['Relevance'] = Builders::Relevance.build(input[:relevance]) unless input[:relevance].nil?
        data['Search'] = Builders::Search.build(input[:search]) unless input[:search].nil?
        data
      end
    end

    # Structure Builder for Search
    class Search
      def self.build(input)
        data = {}
        data['Facetable'] = input[:facetable] unless input[:facetable].nil?
        data['Searchable'] = input[:searchable] unless input[:searchable].nil?
        data['Displayable'] = input[:displayable] unless input[:displayable].nil?
        data['Sortable'] = input[:sortable] unless input[:sortable].nil?
        data
      end
    end

    # Operation Builder for UpdateQuerySuggestionsBlockList
    class UpdateQuerySuggestionsBlockList
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.UpdateQuerySuggestionsBlockList'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['SourceS3Path'] = Builders::S3Path.build(input[:source_s3_path]) unless input[:source_s3_path].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateQuerySuggestionsConfig
    class UpdateQuerySuggestionsConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.UpdateQuerySuggestionsConfig'
        data = {}
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['Mode'] = input[:mode] unless input[:mode].nil?
        data['QueryLogLookBackWindowInDays'] = input[:query_log_look_back_window_in_days] unless input[:query_log_look_back_window_in_days].nil?
        data['IncludeQueriesWithoutUserInformation'] = input[:include_queries_without_user_information] unless input[:include_queries_without_user_information].nil?
        data['MinimumNumberOfQueryingUsers'] = input[:minimum_number_of_querying_users] unless input[:minimum_number_of_querying_users].nil?
        data['MinimumQueryCount'] = input[:minimum_query_count] unless input[:minimum_query_count].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateThesaurus
    class UpdateThesaurus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'AWSKendraFrontendService.UpdateThesaurus'
        data = {}
        data['Id'] = input[:id] unless input[:id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['IndexId'] = input[:index_id] unless input[:index_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['SourceS3Path'] = Builders::S3Path.build(input[:source_s3_path]) unless input[:source_s3_path].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
