# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Kendra
  module Validators

    class AccessControlListConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessControlListConfiguration, context: context)
        Hearth::Validator.validate!(input[:key_path], ::String, context: "#{context}[:key_path]")
      end
    end

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AclConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AclConfiguration, context: context)
        Hearth::Validator.validate!(input[:allowed_groups_column_name], ::String, context: "#{context}[:allowed_groups_column_name]")
      end
    end

    class AdditionalResultAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdditionalResultAttribute, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value_type], ::String, context: "#{context}[:value_type]")
        Validators::AdditionalResultAttributeValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class AdditionalResultAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AdditionalResultAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AdditionalResultAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AdditionalResultAttributeValue, context: context)
        Validators::TextWithHighlights.validate!(input[:text_with_highlights_value], context: "#{context}[:text_with_highlights_value]") unless input[:text_with_highlights_value].nil?
      end
    end

    class AssociateEntitiesToExperienceFailedEntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FailedEntity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociateEntitiesToExperienceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateEntitiesToExperienceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Validators::AssociateEntityList.validate!(input[:entity_list], context: "#{context}[:entity_list]") unless input[:entity_list].nil?
      end
    end

    class AssociateEntitiesToExperienceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociateEntitiesToExperienceOutput, context: context)
        Validators::AssociateEntitiesToExperienceFailedEntityList.validate!(input[:failed_entity_list], context: "#{context}[:failed_entity_list]") unless input[:failed_entity_list].nil?
      end
    end

    class AssociateEntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EntityConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AssociatePersonasToEntitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatePersonasToEntitiesInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Validators::EntityPersonaConfigurationList.validate!(input[:personas], context: "#{context}[:personas]") unless input[:personas].nil?
      end
    end

    class AssociatePersonasToEntitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AssociatePersonasToEntitiesOutput, context: context)
        Validators::FailedEntityList.validate!(input[:failed_entity_list], context: "#{context}[:failed_entity_list]") unless input[:failed_entity_list].nil?
      end
    end

    class AttributeFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributeFilter, context: context)
        Validators::AttributeFilterList.validate!(input[:and_all_filters], context: "#{context}[:and_all_filters]") unless input[:and_all_filters].nil?
        Validators::AttributeFilterList.validate!(input[:or_all_filters], context: "#{context}[:or_all_filters]") unless input[:or_all_filters].nil?
        Validators::AttributeFilter.validate!(input[:not_filter], context: "#{context}[:not_filter]") unless input[:not_filter].nil?
        Validators::DocumentAttribute.validate!(input[:equals_to], context: "#{context}[:equals_to]") unless input[:equals_to].nil?
        Validators::DocumentAttribute.validate!(input[:contains_all], context: "#{context}[:contains_all]") unless input[:contains_all].nil?
        Validators::DocumentAttribute.validate!(input[:contains_any], context: "#{context}[:contains_any]") unless input[:contains_any].nil?
        Validators::DocumentAttribute.validate!(input[:greater_than], context: "#{context}[:greater_than]") unless input[:greater_than].nil?
        Validators::DocumentAttribute.validate!(input[:greater_than_or_equals], context: "#{context}[:greater_than_or_equals]") unless input[:greater_than_or_equals].nil?
        Validators::DocumentAttribute.validate!(input[:less_than], context: "#{context}[:less_than]") unless input[:less_than].nil?
        Validators::DocumentAttribute.validate!(input[:less_than_or_equals], context: "#{context}[:less_than_or_equals]") unless input[:less_than_or_equals].nil?
      end
    end

    class AttributeFilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::AttributeFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AuthenticationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AuthenticationConfiguration, context: context)
        Validators::BasicAuthenticationConfigurationList.validate!(input[:basic_authentication], context: "#{context}[:basic_authentication]") unless input[:basic_authentication].nil?
      end
    end

    class BasicAuthenticationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BasicAuthenticationConfiguration, context: context)
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:credentials], ::String, context: "#{context}[:credentials]")
      end
    end

    class BasicAuthenticationConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BasicAuthenticationConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchDeleteDocumentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteDocumentInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Validators::DocumentIdList.validate!(input[:document_id_list], context: "#{context}[:document_id_list]") unless input[:document_id_list].nil?
        Validators::DataSourceSyncJobMetricTarget.validate!(input[:data_source_sync_job_metric_target], context: "#{context}[:data_source_sync_job_metric_target]") unless input[:data_source_sync_job_metric_target].nil?
      end
    end

    class BatchDeleteDocumentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteDocumentOutput, context: context)
        Validators::BatchDeleteDocumentResponseFailedDocuments.validate!(input[:failed_documents], context: "#{context}[:failed_documents]") unless input[:failed_documents].nil?
      end
    end

    class BatchDeleteDocumentResponseFailedDocument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchDeleteDocumentResponseFailedDocument, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchDeleteDocumentResponseFailedDocuments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchDeleteDocumentResponseFailedDocument.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchGetDocumentStatusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetDocumentStatusInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Validators::DocumentInfoList.validate!(input[:document_info_list], context: "#{context}[:document_info_list]") unless input[:document_info_list].nil?
      end
    end

    class BatchGetDocumentStatusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetDocumentStatusOutput, context: context)
        Validators::BatchGetDocumentStatusResponseErrors.validate!(input[:errors], context: "#{context}[:errors]") unless input[:errors].nil?
        Validators::DocumentStatusList.validate!(input[:document_status_list], context: "#{context}[:document_status_list]") unless input[:document_status_list].nil?
      end
    end

    class BatchGetDocumentStatusResponseError
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchGetDocumentStatusResponseError, context: context)
        Hearth::Validator.validate!(input[:document_id], ::String, context: "#{context}[:document_id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchGetDocumentStatusResponseErrors
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchGetDocumentStatusResponseError.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BatchPutDocumentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutDocumentInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::DocumentList.validate!(input[:documents], context: "#{context}[:documents]") unless input[:documents].nil?
        Validators::CustomDocumentEnrichmentConfiguration.validate!(input[:custom_document_enrichment_configuration], context: "#{context}[:custom_document_enrichment_configuration]") unless input[:custom_document_enrichment_configuration].nil?
      end
    end

    class BatchPutDocumentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutDocumentOutput, context: context)
        Validators::BatchPutDocumentResponseFailedDocuments.validate!(input[:failed_documents], context: "#{context}[:failed_documents]") unless input[:failed_documents].nil?
      end
    end

    class BatchPutDocumentResponseFailedDocument
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BatchPutDocumentResponseFailedDocument, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class BatchPutDocumentResponseFailedDocuments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::BatchPutDocumentResponseFailedDocument.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class BoxConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BoxConfiguration, context: context)
        Hearth::Validator.validate!(input[:enterprise_id], ::String, context: "#{context}[:enterprise_id]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:use_change_log], ::TrueClass, ::FalseClass, context: "#{context}[:use_change_log]")
        Hearth::Validator.validate!(input[:crawl_comments], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_comments]")
        Hearth::Validator.validate!(input[:crawl_tasks], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_tasks]")
        Hearth::Validator.validate!(input[:crawl_web_links], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_web_links]")
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:file_field_mappings], context: "#{context}[:file_field_mappings]") unless input[:file_field_mappings].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:task_field_mappings], context: "#{context}[:task_field_mappings]") unless input[:task_field_mappings].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:comment_field_mappings], context: "#{context}[:comment_field_mappings]") unless input[:comment_field_mappings].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:web_link_field_mappings], context: "#{context}[:web_link_field_mappings]") unless input[:web_link_field_mappings].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless input[:inclusion_patterns].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless input[:exclusion_patterns].nil?
        Validators::DataSourceVpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
      end
    end

    class CapacityUnitsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CapacityUnitsConfiguration, context: context)
        Hearth::Validator.validate!(input[:storage_capacity_units], ::Integer, context: "#{context}[:storage_capacity_units]")
        Hearth::Validator.validate!(input[:query_capacity_units], ::Integer, context: "#{context}[:query_capacity_units]")
      end
    end

    class ChangeDetectingColumns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ClearQuerySuggestionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClearQuerySuggestionsInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
      end
    end

    class ClearQuerySuggestionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClearQuerySuggestionsOutput, context: context)
      end
    end

    class ClickFeedback
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClickFeedback, context: context)
        Hearth::Validator.validate!(input[:result_id], ::String, context: "#{context}[:result_id]")
        Hearth::Validator.validate!(input[:click_time], ::Time, context: "#{context}[:click_time]")
      end
    end

    class ClickFeedbackList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ClickFeedback.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ColumnConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ColumnConfiguration, context: context)
        Hearth::Validator.validate!(input[:document_id_column_name], ::String, context: "#{context}[:document_id_column_name]")
        Hearth::Validator.validate!(input[:document_data_column_name], ::String, context: "#{context}[:document_data_column_name]")
        Hearth::Validator.validate!(input[:document_title_column_name], ::String, context: "#{context}[:document_title_column_name]")
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:field_mappings], context: "#{context}[:field_mappings]") unless input[:field_mappings].nil?
        Validators::ChangeDetectingColumns.validate!(input[:change_detecting_columns], context: "#{context}[:change_detecting_columns]") unless input[:change_detecting_columns].nil?
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ConfluenceAttachmentConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfluenceAttachmentConfiguration, context: context)
        Hearth::Validator.validate!(input[:crawl_attachments], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_attachments]")
        Validators::ConfluenceAttachmentFieldMappingsList.validate!(input[:attachment_field_mappings], context: "#{context}[:attachment_field_mappings]") unless input[:attachment_field_mappings].nil?
      end
    end

    class ConfluenceAttachmentFieldMappingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConfluenceAttachmentToIndexFieldMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfluenceAttachmentToIndexFieldMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfluenceAttachmentToIndexFieldMapping, context: context)
        Hearth::Validator.validate!(input[:data_source_field_name], ::String, context: "#{context}[:data_source_field_name]")
        Hearth::Validator.validate!(input[:date_field_format], ::String, context: "#{context}[:date_field_format]")
        Hearth::Validator.validate!(input[:index_field_name], ::String, context: "#{context}[:index_field_name]")
      end
    end

    class ConfluenceBlogConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfluenceBlogConfiguration, context: context)
        Validators::ConfluenceBlogFieldMappingsList.validate!(input[:blog_field_mappings], context: "#{context}[:blog_field_mappings]") unless input[:blog_field_mappings].nil?
      end
    end

    class ConfluenceBlogFieldMappingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConfluenceBlogToIndexFieldMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfluenceBlogToIndexFieldMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfluenceBlogToIndexFieldMapping, context: context)
        Hearth::Validator.validate!(input[:data_source_field_name], ::String, context: "#{context}[:data_source_field_name]")
        Hearth::Validator.validate!(input[:date_field_format], ::String, context: "#{context}[:date_field_format]")
        Hearth::Validator.validate!(input[:index_field_name], ::String, context: "#{context}[:index_field_name]")
      end
    end

    class ConfluenceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfluenceConfiguration, context: context)
        Hearth::Validator.validate!(input[:server_url], ::String, context: "#{context}[:server_url]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Validators::ConfluenceSpaceConfiguration.validate!(input[:space_configuration], context: "#{context}[:space_configuration]") unless input[:space_configuration].nil?
        Validators::ConfluencePageConfiguration.validate!(input[:page_configuration], context: "#{context}[:page_configuration]") unless input[:page_configuration].nil?
        Validators::ConfluenceBlogConfiguration.validate!(input[:blog_configuration], context: "#{context}[:blog_configuration]") unless input[:blog_configuration].nil?
        Validators::ConfluenceAttachmentConfiguration.validate!(input[:attachment_configuration], context: "#{context}[:attachment_configuration]") unless input[:attachment_configuration].nil?
        Validators::DataSourceVpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless input[:inclusion_patterns].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless input[:exclusion_patterns].nil?
      end
    end

    class ConfluencePageConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfluencePageConfiguration, context: context)
        Validators::ConfluencePageFieldMappingsList.validate!(input[:page_field_mappings], context: "#{context}[:page_field_mappings]") unless input[:page_field_mappings].nil?
      end
    end

    class ConfluencePageFieldMappingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConfluencePageToIndexFieldMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfluencePageToIndexFieldMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfluencePageToIndexFieldMapping, context: context)
        Hearth::Validator.validate!(input[:data_source_field_name], ::String, context: "#{context}[:data_source_field_name]")
        Hearth::Validator.validate!(input[:date_field_format], ::String, context: "#{context}[:date_field_format]")
        Hearth::Validator.validate!(input[:index_field_name], ::String, context: "#{context}[:index_field_name]")
      end
    end

    class ConfluenceSpaceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfluenceSpaceConfiguration, context: context)
        Hearth::Validator.validate!(input[:crawl_personal_spaces], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_personal_spaces]")
        Hearth::Validator.validate!(input[:crawl_archived_spaces], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_archived_spaces]")
        Validators::ConfluenceSpaceList.validate!(input[:include_spaces], context: "#{context}[:include_spaces]") unless input[:include_spaces].nil?
        Validators::ConfluenceSpaceList.validate!(input[:exclude_spaces], context: "#{context}[:exclude_spaces]") unless input[:exclude_spaces].nil?
        Validators::ConfluenceSpaceFieldMappingsList.validate!(input[:space_field_mappings], context: "#{context}[:space_field_mappings]") unless input[:space_field_mappings].nil?
      end
    end

    class ConfluenceSpaceFieldMappingsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ConfluenceSpaceToIndexFieldMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConfluenceSpaceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ConfluenceSpaceToIndexFieldMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConfluenceSpaceToIndexFieldMapping, context: context)
        Hearth::Validator.validate!(input[:data_source_field_name], ::String, context: "#{context}[:data_source_field_name]")
        Hearth::Validator.validate!(input[:date_field_format], ::String, context: "#{context}[:date_field_format]")
        Hearth::Validator.validate!(input[:index_field_name], ::String, context: "#{context}[:index_field_name]")
      end
    end

    class ConnectionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectionConfiguration, context: context)
        Hearth::Validator.validate!(input[:database_host], ::String, context: "#{context}[:database_host]")
        Hearth::Validator.validate!(input[:database_port], ::Integer, context: "#{context}[:database_port]")
        Hearth::Validator.validate!(input[:database_name], ::String, context: "#{context}[:database_name]")
        Hearth::Validator.validate!(input[:table_name], ::String, context: "#{context}[:table_name]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
      end
    end

    class ContentSourceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ContentSourceConfiguration, context: context)
        Validators::DataSourceIdList.validate!(input[:data_source_ids], context: "#{context}[:data_source_ids]") unless input[:data_source_ids].nil?
        Validators::FaqIdsList.validate!(input[:faq_ids], context: "#{context}[:faq_ids]") unless input[:faq_ids].nil?
        Hearth::Validator.validate!(input[:direct_put_content], ::TrueClass, ::FalseClass, context: "#{context}[:direct_put_content]")
      end
    end

    class Correction
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Correction, context: context)
        Hearth::Validator.validate!(input[:begin_offset], ::Integer, context: "#{context}[:begin_offset]")
        Hearth::Validator.validate!(input[:end_offset], ::Integer, context: "#{context}[:end_offset]")
        Hearth::Validator.validate!(input[:term], ::String, context: "#{context}[:term]")
        Hearth::Validator.validate!(input[:corrected_term], ::String, context: "#{context}[:corrected_term]")
      end
    end

    class CorrectionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Correction.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CreateDataSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataSourceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::DataSourceConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Validators::CustomDocumentEnrichmentConfiguration.validate!(input[:custom_document_enrichment_configuration], context: "#{context}[:custom_document_enrichment_configuration]") unless input[:custom_document_enrichment_configuration].nil?
      end
    end

    class CreateDataSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDataSourceOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CreateExperienceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExperienceInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::ExperienceConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateExperienceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateExperienceOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CreateFaqInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFaqInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::S3Path.validate!(input[:s3_path], context: "#{context}[:s3_path]") unless input[:s3_path].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:file_format], ::String, context: "#{context}[:file_format]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class CreateFaqOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFaqOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CreateIndexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIndexInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:edition], ::String, context: "#{context}[:edition]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::ServerSideEncryptionConfiguration.validate!(input[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless input[:server_side_encryption_configuration].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::UserTokenConfigurationList.validate!(input[:user_token_configurations], context: "#{context}[:user_token_configurations]") unless input[:user_token_configurations].nil?
        Hearth::Validator.validate!(input[:user_context_policy], ::String, context: "#{context}[:user_context_policy]")
        Validators::UserGroupResolutionConfiguration.validate!(input[:user_group_resolution_configuration], context: "#{context}[:user_group_resolution_configuration]") unless input[:user_group_resolution_configuration].nil?
      end
    end

    class CreateIndexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIndexOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CreateQuerySuggestionsBlockListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateQuerySuggestionsBlockListInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::S3Path.validate!(input[:source_s3_path], context: "#{context}[:source_s3_path]") unless input[:source_s3_path].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateQuerySuggestionsBlockListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateQuerySuggestionsBlockListOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CreateThesaurusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateThesaurusInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::S3Path.validate!(input[:source_s3_path], context: "#{context}[:source_s3_path]") unless input[:source_s3_path].nil?
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
      end
    end

    class CreateThesaurusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateThesaurusOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class CustomDocumentEnrichmentConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CustomDocumentEnrichmentConfiguration, context: context)
        Validators::InlineCustomDocumentEnrichmentConfigurationList.validate!(input[:inline_configurations], context: "#{context}[:inline_configurations]") unless input[:inline_configurations].nil?
        Validators::HookConfiguration.validate!(input[:pre_extraction_hook_configuration], context: "#{context}[:pre_extraction_hook_configuration]") unless input[:pre_extraction_hook_configuration].nil?
        Validators::HookConfiguration.validate!(input[:post_extraction_hook_configuration], context: "#{context}[:post_extraction_hook_configuration]") unless input[:post_extraction_hook_configuration].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class DataSourceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSourceConfiguration, context: context)
        Validators::S3DataSourceConfiguration.validate!(input[:s3_configuration], context: "#{context}[:s3_configuration]") unless input[:s3_configuration].nil?
        Validators::SharePointConfiguration.validate!(input[:share_point_configuration], context: "#{context}[:share_point_configuration]") unless input[:share_point_configuration].nil?
        Validators::DatabaseConfiguration.validate!(input[:database_configuration], context: "#{context}[:database_configuration]") unless input[:database_configuration].nil?
        Validators::SalesforceConfiguration.validate!(input[:salesforce_configuration], context: "#{context}[:salesforce_configuration]") unless input[:salesforce_configuration].nil?
        Validators::OneDriveConfiguration.validate!(input[:one_drive_configuration], context: "#{context}[:one_drive_configuration]") unless input[:one_drive_configuration].nil?
        Validators::ServiceNowConfiguration.validate!(input[:service_now_configuration], context: "#{context}[:service_now_configuration]") unless input[:service_now_configuration].nil?
        Validators::ConfluenceConfiguration.validate!(input[:confluence_configuration], context: "#{context}[:confluence_configuration]") unless input[:confluence_configuration].nil?
        Validators::GoogleDriveConfiguration.validate!(input[:google_drive_configuration], context: "#{context}[:google_drive_configuration]") unless input[:google_drive_configuration].nil?
        Validators::WebCrawlerConfiguration.validate!(input[:web_crawler_configuration], context: "#{context}[:web_crawler_configuration]") unless input[:web_crawler_configuration].nil?
        Validators::WorkDocsConfiguration.validate!(input[:work_docs_configuration], context: "#{context}[:work_docs_configuration]") unless input[:work_docs_configuration].nil?
        Validators::FsxConfiguration.validate!(input[:fsx_configuration], context: "#{context}[:fsx_configuration]") unless input[:fsx_configuration].nil?
        Validators::SlackConfiguration.validate!(input[:slack_configuration], context: "#{context}[:slack_configuration]") unless input[:slack_configuration].nil?
        Validators::BoxConfiguration.validate!(input[:box_configuration], context: "#{context}[:box_configuration]") unless input[:box_configuration].nil?
        Validators::QuipConfiguration.validate!(input[:quip_configuration], context: "#{context}[:quip_configuration]") unless input[:quip_configuration].nil?
        Validators::JiraConfiguration.validate!(input[:jira_configuration], context: "#{context}[:jira_configuration]") unless input[:jira_configuration].nil?
        Validators::GitHubConfiguration.validate!(input[:git_hub_configuration], context: "#{context}[:git_hub_configuration]") unless input[:git_hub_configuration].nil?
      end
    end

    class DataSourceGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSourceGroup, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
      end
    end

    class DataSourceGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataSourceGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataSourceIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DataSourceInclusionsExclusionsStrings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DataSourceSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSourceSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class DataSourceSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataSourceSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataSourceSyncJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSourceSyncJob, context: context)
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:data_source_error_code], ::String, context: "#{context}[:data_source_error_code]")
        Validators::DataSourceSyncJobMetrics.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
      end
    end

    class DataSourceSyncJobHistoryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataSourceSyncJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataSourceSyncJobMetricTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSourceSyncJobMetricTarget, context: context)
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:data_source_sync_job_id], ::String, context: "#{context}[:data_source_sync_job_id]")
      end
    end

    class DataSourceSyncJobMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSourceSyncJobMetrics, context: context)
        Hearth::Validator.validate!(input[:documents_added], ::String, context: "#{context}[:documents_added]")
        Hearth::Validator.validate!(input[:documents_modified], ::String, context: "#{context}[:documents_modified]")
        Hearth::Validator.validate!(input[:documents_deleted], ::String, context: "#{context}[:documents_deleted]")
        Hearth::Validator.validate!(input[:documents_failed], ::String, context: "#{context}[:documents_failed]")
        Hearth::Validator.validate!(input[:documents_scanned], ::String, context: "#{context}[:documents_scanned]")
      end
    end

    class DataSourceToIndexFieldMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSourceToIndexFieldMapping, context: context)
        Hearth::Validator.validate!(input[:data_source_field_name], ::String, context: "#{context}[:data_source_field_name]")
        Hearth::Validator.validate!(input[:date_field_format], ::String, context: "#{context}[:date_field_format]")
        Hearth::Validator.validate!(input[:index_field_name], ::String, context: "#{context}[:index_field_name]")
      end
    end

    class DataSourceToIndexFieldMappingList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DataSourceToIndexFieldMapping.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DataSourceVpcConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataSourceVpcConfiguration, context: context)
        Validators::SubnetIdList.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        Validators::SecurityGroupIdList.validate!(input[:security_group_ids], context: "#{context}[:security_group_ids]") unless input[:security_group_ids].nil?
      end
    end

    class DatabaseConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DatabaseConfiguration, context: context)
        Hearth::Validator.validate!(input[:database_engine_type], ::String, context: "#{context}[:database_engine_type]")
        Validators::ConnectionConfiguration.validate!(input[:connection_configuration], context: "#{context}[:connection_configuration]") unless input[:connection_configuration].nil?
        Validators::DataSourceVpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
        Validators::ColumnConfiguration.validate!(input[:column_configuration], context: "#{context}[:column_configuration]") unless input[:column_configuration].nil?
        Validators::AclConfiguration.validate!(input[:acl_configuration], context: "#{context}[:acl_configuration]") unless input[:acl_configuration].nil?
        Validators::SqlConfiguration.validate!(input[:sql_configuration], context: "#{context}[:sql_configuration]") unless input[:sql_configuration].nil?
      end
    end

    class DeleteDataSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataSourceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
      end
    end

    class DeleteDataSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDataSourceOutput, context: context)
      end
    end

    class DeleteExperienceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteExperienceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
      end
    end

    class DeleteExperienceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteExperienceOutput, context: context)
      end
    end

    class DeleteFaqInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFaqInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
      end
    end

    class DeleteFaqOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFaqOutput, context: context)
      end
    end

    class DeleteIndexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIndexInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteIndexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIndexOutput, context: context)
      end
    end

    class DeletePrincipalMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePrincipalMappingInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:ordering_id], ::Integer, context: "#{context}[:ordering_id]")
      end
    end

    class DeletePrincipalMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeletePrincipalMappingOutput, context: context)
      end
    end

    class DeleteQuerySuggestionsBlockListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteQuerySuggestionsBlockListInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DeleteQuerySuggestionsBlockListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteQuerySuggestionsBlockListOutput, context: context)
      end
    end

    class DeleteThesaurusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteThesaurusInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
      end
    end

    class DeleteThesaurusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteThesaurusOutput, context: context)
      end
    end

    class DescribeDataSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataSourceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
      end
    end

    class DescribeDataSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeDataSourceOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::DataSourceConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Validators::CustomDocumentEnrichmentConfiguration.validate!(input[:custom_document_enrichment_configuration], context: "#{context}[:custom_document_enrichment_configuration]") unless input[:custom_document_enrichment_configuration].nil?
      end
    end

    class DescribeExperienceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExperienceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
      end
    end

    class DescribeExperienceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeExperienceOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::ExperienceEndpoints.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
        Validators::ExperienceConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class DescribeFaqInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFaqInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
      end
    end

    class DescribeFaqOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFaqOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Validators::S3Path.validate!(input[:s3_path], context: "#{context}[:s3_path]") unless input[:s3_path].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:file_format], ::String, context: "#{context}[:file_format]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class DescribeIndexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIndexInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DescribeIndexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeIndexOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:edition], ::String, context: "#{context}[:edition]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::ServerSideEncryptionConfiguration.validate!(input[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless input[:server_side_encryption_configuration].nil?
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Validators::DocumentMetadataConfigurationList.validate!(input[:document_metadata_configurations], context: "#{context}[:document_metadata_configurations]") unless input[:document_metadata_configurations].nil?
        Validators::IndexStatistics.validate!(input[:index_statistics], context: "#{context}[:index_statistics]") unless input[:index_statistics].nil?
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Validators::CapacityUnitsConfiguration.validate!(input[:capacity_units], context: "#{context}[:capacity_units]") unless input[:capacity_units].nil?
        Validators::UserTokenConfigurationList.validate!(input[:user_token_configurations], context: "#{context}[:user_token_configurations]") unless input[:user_token_configurations].nil?
        Hearth::Validator.validate!(input[:user_context_policy], ::String, context: "#{context}[:user_context_policy]")
        Validators::UserGroupResolutionConfiguration.validate!(input[:user_group_resolution_configuration], context: "#{context}[:user_group_resolution_configuration]") unless input[:user_group_resolution_configuration].nil?
      end
    end

    class DescribePrincipalMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePrincipalMappingInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
      end
    end

    class DescribePrincipalMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePrincipalMappingOutput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Validators::GroupOrderingIdSummaries.validate!(input[:group_ordering_id_summaries], context: "#{context}[:group_ordering_id_summaries]") unless input[:group_ordering_id_summaries].nil?
      end
    end

    class DescribeQuerySuggestionsBlockListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeQuerySuggestionsBlockListInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
      end
    end

    class DescribeQuerySuggestionsBlockListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeQuerySuggestionsBlockListOutput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Validators::S3Path.validate!(input[:source_s3_path], context: "#{context}[:source_s3_path]") unless input[:source_s3_path].nil?
        Hearth::Validator.validate!(input[:item_count], ::Integer, context: "#{context}[:item_count]")
        Hearth::Validator.validate!(input[:file_size_bytes], ::Integer, context: "#{context}[:file_size_bytes]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class DescribeQuerySuggestionsConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeQuerySuggestionsConfigInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
      end
    end

    class DescribeQuerySuggestionsConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeQuerySuggestionsConfigOutput, context: context)
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:query_log_look_back_window_in_days], ::Integer, context: "#{context}[:query_log_look_back_window_in_days]")
        Hearth::Validator.validate!(input[:include_queries_without_user_information], ::TrueClass, ::FalseClass, context: "#{context}[:include_queries_without_user_information]")
        Hearth::Validator.validate!(input[:minimum_number_of_querying_users], ::Integer, context: "#{context}[:minimum_number_of_querying_users]")
        Hearth::Validator.validate!(input[:minimum_query_count], ::Integer, context: "#{context}[:minimum_query_count]")
        Hearth::Validator.validate!(input[:last_suggestions_build_time], ::Time, context: "#{context}[:last_suggestions_build_time]")
        Hearth::Validator.validate!(input[:last_clear_time], ::Time, context: "#{context}[:last_clear_time]")
        Hearth::Validator.validate!(input[:total_suggestions_count], ::Integer, context: "#{context}[:total_suggestions_count]")
      end
    end

    class DescribeThesaurusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeThesaurusInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
      end
    end

    class DescribeThesaurusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeThesaurusOutput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::S3Path.validate!(input[:source_s3_path], context: "#{context}[:source_s3_path]") unless input[:source_s3_path].nil?
        Hearth::Validator.validate!(input[:file_size_bytes], ::Integer, context: "#{context}[:file_size_bytes]")
        Hearth::Validator.validate!(input[:term_count], ::Integer, context: "#{context}[:term_count]")
        Hearth::Validator.validate!(input[:synonym_rule_count], ::Integer, context: "#{context}[:synonym_rule_count]")
      end
    end

    class DisassociateEntitiesFromExperienceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateEntitiesFromExperienceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Validators::DisassociateEntityList.validate!(input[:entity_list], context: "#{context}[:entity_list]") unless input[:entity_list].nil?
      end
    end

    class DisassociateEntitiesFromExperienceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociateEntitiesFromExperienceOutput, context: context)
        Validators::FailedEntityList.validate!(input[:failed_entity_list], context: "#{context}[:failed_entity_list]") unless input[:failed_entity_list].nil?
      end
    end

    class DisassociateEntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EntityConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DisassociatePersonasFromEntitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociatePersonasFromEntitiesInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Validators::EntityIdsList.validate!(input[:entity_ids], context: "#{context}[:entity_ids]") unless input[:entity_ids].nil?
      end
    end

    class DisassociatePersonasFromEntitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DisassociatePersonasFromEntitiesOutput, context: context)
        Validators::FailedEntityList.validate!(input[:failed_entity_list], context: "#{context}[:failed_entity_list]") unless input[:failed_entity_list].nil?
      end
    end

    class Document
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Document, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:title], ::String, context: "#{context}[:title]")
        Hearth::Validator.validate!(input[:blob], ::String, context: "#{context}[:blob]")
        Validators::S3Path.validate!(input[:s3_path], context: "#{context}[:s3_path]") unless input[:s3_path].nil?
        Validators::DocumentAttributeList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Validators::PrincipalList.validate!(input[:access_control_list], context: "#{context}[:access_control_list]") unless input[:access_control_list].nil?
        Validators::HierarchicalPrincipalList.validate!(input[:hierarchical_access_control_list], context: "#{context}[:hierarchical_access_control_list]") unless input[:hierarchical_access_control_list].nil?
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class DocumentAttribute
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentAttribute, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Validators::DocumentAttributeValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class DocumentAttributeCondition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentAttributeCondition, context: context)
        Hearth::Validator.validate!(input[:condition_document_attribute_key], ::String, context: "#{context}[:condition_document_attribute_key]")
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
        Validators::DocumentAttributeValue.validate!(input[:condition_on_value], context: "#{context}[:condition_on_value]") unless input[:condition_on_value].nil?
      end
    end

    class DocumentAttributeKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DocumentAttributeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DocumentAttribute.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentAttributeStringListValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DocumentAttributeTarget
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentAttributeTarget, context: context)
        Hearth::Validator.validate!(input[:target_document_attribute_key], ::String, context: "#{context}[:target_document_attribute_key]")
        Hearth::Validator.validate!(input[:target_document_attribute_value_deletion], ::TrueClass, ::FalseClass, context: "#{context}[:target_document_attribute_value_deletion]")
        Validators::DocumentAttributeValue.validate!(input[:target_document_attribute_value], context: "#{context}[:target_document_attribute_value]") unless input[:target_document_attribute_value].nil?
      end
    end

    class DocumentAttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentAttributeValue, context: context)
        Hearth::Validator.validate!(input[:string_value], ::String, context: "#{context}[:string_value]")
        Validators::DocumentAttributeStringListValue.validate!(input[:string_list_value], context: "#{context}[:string_list_value]") unless input[:string_list_value].nil?
        Hearth::Validator.validate!(input[:long_value], ::Integer, context: "#{context}[:long_value]")
        Hearth::Validator.validate!(input[:date_value], ::Time, context: "#{context}[:date_value]")
      end
    end

    class DocumentAttributeValueCountPair
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentAttributeValueCountPair, context: context)
        Validators::DocumentAttributeValue.validate!(input[:document_attribute_value], context: "#{context}[:document_attribute_value]") unless input[:document_attribute_value].nil?
        Hearth::Validator.validate!(input[:count], ::Integer, context: "#{context}[:count]")
        Validators::FacetResultList.validate!(input[:facet_results], context: "#{context}[:facet_results]") unless input[:facet_results].nil?
      end
    end

    class DocumentAttributeValueCountPairList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DocumentAttributeValueCountPair.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class DocumentInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentInfo, context: context)
        Hearth::Validator.validate!(input[:document_id], ::String, context: "#{context}[:document_id]")
        Validators::DocumentAttributeList.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class DocumentInfoList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DocumentInfo.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Document.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentMetadataConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentMetadataConfiguration, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::Relevance.validate!(input[:relevance], context: "#{context}[:relevance]") unless input[:relevance].nil?
        Validators::Search.validate!(input[:search], context: "#{context}[:search]") unless input[:search].nil?
      end
    end

    class DocumentMetadataConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DocumentMetadataConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentRelevanceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentRelevanceConfiguration, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Validators::Relevance.validate!(input[:relevance], context: "#{context}[:relevance]") unless input[:relevance].nil?
      end
    end

    class DocumentRelevanceOverrideConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::DocumentRelevanceConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentStatusList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Status.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DocumentsMetadataConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DocumentsMetadataConfiguration, context: context)
        Hearth::Validator.validate!(input[:s3_prefix], ::String, context: "#{context}[:s3_prefix]")
      end
    end

    class EntityConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityConfiguration, context: context)
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:entity_type], ::String, context: "#{context}[:entity_type]")
      end
    end

    class EntityDisplayData
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityDisplayData, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:group_name], ::String, context: "#{context}[:group_name]")
        Hearth::Validator.validate!(input[:identified_user_name], ::String, context: "#{context}[:identified_user_name]")
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
      end
    end

    class EntityIdsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class EntityPersonaConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EntityPersonaConfiguration, context: context)
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:persona], ::String, context: "#{context}[:persona]")
      end
    end

    class EntityPersonaConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::EntityPersonaConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExcludeMimeTypesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExcludeSharedDrivesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExcludeUserAccountsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ExperienceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperienceConfiguration, context: context)
        Validators::ContentSourceConfiguration.validate!(input[:content_source_configuration], context: "#{context}[:content_source_configuration]") unless input[:content_source_configuration].nil?
        Validators::UserIdentityConfiguration.validate!(input[:user_identity_configuration], context: "#{context}[:user_identity_configuration]") unless input[:user_identity_configuration].nil?
      end
    end

    class ExperienceEndpoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperienceEndpoint, context: context)
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        Hearth::Validator.validate!(input[:endpoint], ::String, context: "#{context}[:endpoint]")
      end
    end

    class ExperienceEndpoints
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExperienceEndpoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExperienceEntitiesSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperienceEntitiesSummary, context: context)
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:entity_type], ::String, context: "#{context}[:entity_type]")
        Validators::EntityDisplayData.validate!(input[:display_data], context: "#{context}[:display_data]") unless input[:display_data].nil?
      end
    end

    class ExperienceEntitiesSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExperienceEntitiesSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ExperiencesSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExperiencesSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Validators::ExperienceEndpoints.validate!(input[:endpoints], context: "#{context}[:endpoints]") unless input[:endpoints].nil?
      end
    end

    class ExperiencesSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ExperiencesSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Facet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Facet, context: context)
        Hearth::Validator.validate!(input[:document_attribute_key], ::String, context: "#{context}[:document_attribute_key]")
        Validators::FacetList.validate!(input[:facets], context: "#{context}[:facets]") unless input[:facets].nil?
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class FacetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Facet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FacetResult
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FacetResult, context: context)
        Hearth::Validator.validate!(input[:document_attribute_key], ::String, context: "#{context}[:document_attribute_key]")
        Hearth::Validator.validate!(input[:document_attribute_value_type], ::String, context: "#{context}[:document_attribute_value_type]")
        Validators::DocumentAttributeValueCountPairList.validate!(input[:document_attribute_value_count_pairs], context: "#{context}[:document_attribute_value_count_pairs]") unless input[:document_attribute_value_count_pairs].nil?
      end
    end

    class FacetResultList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FacetResult.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FailedEntity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FailedEntity, context: context)
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:error_message], ::String, context: "#{context}[:error_message]")
      end
    end

    class FailedEntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FailedEntity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FaqIdsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FaqStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FaqStatistics, context: context)
        Hearth::Validator.validate!(input[:indexed_question_answers_count], ::Integer, context: "#{context}[:indexed_question_answers_count]")
      end
    end

    class FaqSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FaqSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:file_format], ::String, context: "#{context}[:file_format]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
      end
    end

    class FaqSummaryItems
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::FaqSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FolderIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FsxConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FsxConfiguration, context: context)
        Hearth::Validator.validate!(input[:file_system_id], ::String, context: "#{context}[:file_system_id]")
        Hearth::Validator.validate!(input[:file_system_type], ::String, context: "#{context}[:file_system_type]")
        Validators::DataSourceVpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless input[:inclusion_patterns].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless input[:exclusion_patterns].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:field_mappings], context: "#{context}[:field_mappings]") unless input[:field_mappings].nil?
      end
    end

    class GetQuerySuggestionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQuerySuggestionsInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:query_text], ::String, context: "#{context}[:query_text]")
        Hearth::Validator.validate!(input[:max_suggestions_count], ::Integer, context: "#{context}[:max_suggestions_count]")
      end
    end

    class GetQuerySuggestionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetQuerySuggestionsOutput, context: context)
        Hearth::Validator.validate!(input[:query_suggestions_id], ::String, context: "#{context}[:query_suggestions_id]")
        Validators::SuggestionList.validate!(input[:suggestions], context: "#{context}[:suggestions]") unless input[:suggestions].nil?
      end
    end

    class GetSnapshotsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSnapshotsInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:interval], ::String, context: "#{context}[:interval]")
        Hearth::Validator.validate!(input[:metric_type], ::String, context: "#{context}[:metric_type]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetSnapshotsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSnapshotsOutput, context: context)
        Validators::TimeRange.validate!(input[:snap_shot_time_filter], context: "#{context}[:snap_shot_time_filter]") unless input[:snap_shot_time_filter].nil?
        Validators::SnapshotsDataHeaderFields.validate!(input[:snapshots_data_header], context: "#{context}[:snapshots_data_header]") unless input[:snapshots_data_header].nil?
        Validators::SnapshotsDataRecords.validate!(input[:snapshots_data], context: "#{context}[:snapshots_data]") unless input[:snapshots_data].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class GitHubConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GitHubConfiguration, context: context)
        Validators::SaaSConfiguration.validate!(input[:saa_s_configuration], context: "#{context}[:saa_s_configuration]") unless input[:saa_s_configuration].nil?
        Validators::OnPremiseConfiguration.validate!(input[:on_premise_configuration], context: "#{context}[:on_premise_configuration]") unless input[:on_premise_configuration].nil?
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:use_change_log], ::TrueClass, ::FalseClass, context: "#{context}[:use_change_log]")
        Validators::GitHubDocumentCrawlProperties.validate!(input[:git_hub_document_crawl_properties], context: "#{context}[:git_hub_document_crawl_properties]") unless input[:git_hub_document_crawl_properties].nil?
        Validators::RepositoryNames.validate!(input[:repository_filter], context: "#{context}[:repository_filter]") unless input[:repository_filter].nil?
        Validators::StringList.validate!(input[:inclusion_folder_name_patterns], context: "#{context}[:inclusion_folder_name_patterns]") unless input[:inclusion_folder_name_patterns].nil?
        Validators::StringList.validate!(input[:inclusion_file_type_patterns], context: "#{context}[:inclusion_file_type_patterns]") unless input[:inclusion_file_type_patterns].nil?
        Validators::StringList.validate!(input[:inclusion_file_name_patterns], context: "#{context}[:inclusion_file_name_patterns]") unless input[:inclusion_file_name_patterns].nil?
        Validators::StringList.validate!(input[:exclusion_folder_name_patterns], context: "#{context}[:exclusion_folder_name_patterns]") unless input[:exclusion_folder_name_patterns].nil?
        Validators::StringList.validate!(input[:exclusion_file_type_patterns], context: "#{context}[:exclusion_file_type_patterns]") unless input[:exclusion_file_type_patterns].nil?
        Validators::StringList.validate!(input[:exclusion_file_name_patterns], context: "#{context}[:exclusion_file_name_patterns]") unless input[:exclusion_file_name_patterns].nil?
        Validators::DataSourceVpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:git_hub_repository_configuration_field_mappings], context: "#{context}[:git_hub_repository_configuration_field_mappings]") unless input[:git_hub_repository_configuration_field_mappings].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:git_hub_commit_configuration_field_mappings], context: "#{context}[:git_hub_commit_configuration_field_mappings]") unless input[:git_hub_commit_configuration_field_mappings].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:git_hub_issue_document_configuration_field_mappings], context: "#{context}[:git_hub_issue_document_configuration_field_mappings]") unless input[:git_hub_issue_document_configuration_field_mappings].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:git_hub_issue_comment_configuration_field_mappings], context: "#{context}[:git_hub_issue_comment_configuration_field_mappings]") unless input[:git_hub_issue_comment_configuration_field_mappings].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:git_hub_issue_attachment_configuration_field_mappings], context: "#{context}[:git_hub_issue_attachment_configuration_field_mappings]") unless input[:git_hub_issue_attachment_configuration_field_mappings].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:git_hub_pull_request_comment_configuration_field_mappings], context: "#{context}[:git_hub_pull_request_comment_configuration_field_mappings]") unless input[:git_hub_pull_request_comment_configuration_field_mappings].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:git_hub_pull_request_document_configuration_field_mappings], context: "#{context}[:git_hub_pull_request_document_configuration_field_mappings]") unless input[:git_hub_pull_request_document_configuration_field_mappings].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:git_hub_pull_request_document_attachment_configuration_field_mappings], context: "#{context}[:git_hub_pull_request_document_attachment_configuration_field_mappings]") unless input[:git_hub_pull_request_document_attachment_configuration_field_mappings].nil?
      end
    end

    class GitHubDocumentCrawlProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GitHubDocumentCrawlProperties, context: context)
        Hearth::Validator.validate!(input[:crawl_repository_documents], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_repository_documents]")
        Hearth::Validator.validate!(input[:crawl_issue], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_issue]")
        Hearth::Validator.validate!(input[:crawl_issue_comment], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_issue_comment]")
        Hearth::Validator.validate!(input[:crawl_issue_comment_attachment], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_issue_comment_attachment]")
        Hearth::Validator.validate!(input[:crawl_pull_request], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_pull_request]")
        Hearth::Validator.validate!(input[:crawl_pull_request_comment], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_pull_request_comment]")
        Hearth::Validator.validate!(input[:crawl_pull_request_comment_attachment], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_pull_request_comment_attachment]")
      end
    end

    class GoogleDriveConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GoogleDriveConfiguration, context: context)
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless input[:inclusion_patterns].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless input[:exclusion_patterns].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:field_mappings], context: "#{context}[:field_mappings]") unless input[:field_mappings].nil?
        Validators::ExcludeMimeTypesList.validate!(input[:exclude_mime_types], context: "#{context}[:exclude_mime_types]") unless input[:exclude_mime_types].nil?
        Validators::ExcludeUserAccountsList.validate!(input[:exclude_user_accounts], context: "#{context}[:exclude_user_accounts]") unless input[:exclude_user_accounts].nil?
        Validators::ExcludeSharedDrivesList.validate!(input[:exclude_shared_drives], context: "#{context}[:exclude_shared_drives]") unless input[:exclude_shared_drives].nil?
      end
    end

    class GroupMembers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupMembers, context: context)
        Validators::MemberGroups.validate!(input[:member_groups], context: "#{context}[:member_groups]") unless input[:member_groups].nil?
        Validators::MemberUsers.validate!(input[:member_users], context: "#{context}[:member_users]") unless input[:member_users].nil?
        Validators::S3Path.validate!(input[:s3_pathfor_group_members], context: "#{context}[:s3_pathfor_group_members]") unless input[:s3_pathfor_group_members].nil?
      end
    end

    class GroupOrderingIdSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GroupOrderingIdSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GroupOrderingIdSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupOrderingIdSummary, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:received_at], ::Time, context: "#{context}[:received_at]")
        Hearth::Validator.validate!(input[:ordering_id], ::Integer, context: "#{context}[:ordering_id]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class GroupSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GroupSummary, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:ordering_id], ::Integer, context: "#{context}[:ordering_id]")
      end
    end

    class Groups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class HierarchicalPrincipal
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HierarchicalPrincipal, context: context)
        Validators::PrincipalList.validate!(input[:principal_list], context: "#{context}[:principal_list]") unless input[:principal_list].nil?
      end
    end

    class HierarchicalPrincipalList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::HierarchicalPrincipal.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Highlight
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Highlight, context: context)
        Hearth::Validator.validate!(input[:begin_offset], ::Integer, context: "#{context}[:begin_offset]")
        Hearth::Validator.validate!(input[:end_offset], ::Integer, context: "#{context}[:end_offset]")
        Hearth::Validator.validate!(input[:top_answer], ::TrueClass, ::FalseClass, context: "#{context}[:top_answer]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
      end
    end

    class HighlightList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Highlight.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class HookConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HookConfiguration, context: context)
        Validators::DocumentAttributeCondition.validate!(input[:invocation_condition], context: "#{context}[:invocation_condition]") unless input[:invocation_condition].nil?
        Hearth::Validator.validate!(input[:lambda_arn], ::String, context: "#{context}[:lambda_arn]")
        Hearth::Validator.validate!(input[:s3_bucket], ::String, context: "#{context}[:s3_bucket]")
      end
    end

    class IndexConfigurationSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IndexConfigurationSummary, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:edition], ::String, context: "#{context}[:edition]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class IndexConfigurationSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IndexConfigurationSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IndexStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IndexStatistics, context: context)
        Validators::FaqStatistics.validate!(input[:faq_statistics], context: "#{context}[:faq_statistics]") unless input[:faq_statistics].nil?
        Validators::TextDocumentStatistics.validate!(input[:text_document_statistics], context: "#{context}[:text_document_statistics]") unless input[:text_document_statistics].nil?
      end
    end

    class InlineCustomDocumentEnrichmentConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InlineCustomDocumentEnrichmentConfiguration, context: context)
        Validators::DocumentAttributeCondition.validate!(input[:condition], context: "#{context}[:condition]") unless input[:condition].nil?
        Validators::DocumentAttributeTarget.validate!(input[:target], context: "#{context}[:target]") unless input[:target].nil?
        Hearth::Validator.validate!(input[:document_content_deletion], ::TrueClass, ::FalseClass, context: "#{context}[:document_content_deletion]")
      end
    end

    class InlineCustomDocumentEnrichmentConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::InlineCustomDocumentEnrichmentConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IssueSubEntityFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class IssueType
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class JiraConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JiraConfiguration, context: context)
        Hearth::Validator.validate!(input[:jira_account_url], ::String, context: "#{context}[:jira_account_url]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:use_change_log], ::TrueClass, ::FalseClass, context: "#{context}[:use_change_log]")
        Validators::Project.validate!(input[:project], context: "#{context}[:project]") unless input[:project].nil?
        Validators::IssueType.validate!(input[:issue_type], context: "#{context}[:issue_type]") unless input[:issue_type].nil?
        Validators::JiraStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Validators::IssueSubEntityFilter.validate!(input[:issue_sub_entity_filter], context: "#{context}[:issue_sub_entity_filter]") unless input[:issue_sub_entity_filter].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:attachment_field_mappings], context: "#{context}[:attachment_field_mappings]") unless input[:attachment_field_mappings].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:comment_field_mappings], context: "#{context}[:comment_field_mappings]") unless input[:comment_field_mappings].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:issue_field_mappings], context: "#{context}[:issue_field_mappings]") unless input[:issue_field_mappings].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:project_field_mappings], context: "#{context}[:project_field_mappings]") unless input[:project_field_mappings].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:work_log_field_mappings], context: "#{context}[:work_log_field_mappings]") unless input[:work_log_field_mappings].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless input[:inclusion_patterns].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless input[:exclusion_patterns].nil?
        Validators::DataSourceVpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
      end
    end

    class JiraStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class JsonTokenTypeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JsonTokenTypeConfiguration, context: context)
        Hearth::Validator.validate!(input[:user_name_attribute_field], ::String, context: "#{context}[:user_name_attribute_field]")
        Hearth::Validator.validate!(input[:group_attribute_field], ::String, context: "#{context}[:group_attribute_field]")
      end
    end

    class JwtTokenTypeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JwtTokenTypeConfiguration, context: context)
        Hearth::Validator.validate!(input[:key_location], ::String, context: "#{context}[:key_location]")
        Hearth::Validator.validate!(input[:url], ::String, context: "#{context}[:url]")
        Hearth::Validator.validate!(input[:secret_manager_arn], ::String, context: "#{context}[:secret_manager_arn]")
        Hearth::Validator.validate!(input[:user_name_attribute_field], ::String, context: "#{context}[:user_name_attribute_field]")
        Hearth::Validator.validate!(input[:group_attribute_field], ::String, context: "#{context}[:group_attribute_field]")
        Hearth::Validator.validate!(input[:issuer], ::String, context: "#{context}[:issuer]")
        Hearth::Validator.validate!(input[:claim_regex], ::String, context: "#{context}[:claim_regex]")
      end
    end

    class ListDataSourceSyncJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataSourceSyncJobsInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Validators::TimeRange.validate!(input[:start_time_filter], context: "#{context}[:start_time_filter]") unless input[:start_time_filter].nil?
        Hearth::Validator.validate!(input[:status_filter], ::String, context: "#{context}[:status_filter]")
      end
    end

    class ListDataSourceSyncJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataSourceSyncJobsOutput, context: context)
        Validators::DataSourceSyncJobHistoryList.validate!(input[:history], context: "#{context}[:history]") unless input[:history].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDataSourcesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataSourcesInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDataSourcesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDataSourcesOutput, context: context)
        Validators::DataSourceSummaryList.validate!(input[:summary_items], context: "#{context}[:summary_items]") unless input[:summary_items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListEntityPersonasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntityPersonasInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListEntityPersonasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListEntityPersonasOutput, context: context)
        Validators::PersonasSummaryList.validate!(input[:summary_items], context: "#{context}[:summary_items]") unless input[:summary_items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExperienceEntitiesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExperienceEntitiesInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExperienceEntitiesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExperienceEntitiesOutput, context: context)
        Validators::ExperienceEntitiesSummaryList.validate!(input[:summary_items], context: "#{context}[:summary_items]") unless input[:summary_items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListExperiencesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExperiencesInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListExperiencesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListExperiencesOutput, context: context)
        Validators::ExperiencesSummaryList.validate!(input[:summary_items], context: "#{context}[:summary_items]") unless input[:summary_items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFaqsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFaqsInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListFaqsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFaqsOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::FaqSummaryItems.validate!(input[:faq_summary_items], context: "#{context}[:faq_summary_items]") unless input[:faq_summary_items].nil?
      end
    end

    class ListGroupsOlderThanOrderingIdInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupsOlderThanOrderingIdInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:ordering_id], ::Integer, context: "#{context}[:ordering_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListGroupsOlderThanOrderingIdOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGroupsOlderThanOrderingIdOutput, context: context)
        Validators::ListOfGroupSummaries.validate!(input[:groups_summaries], context: "#{context}[:groups_summaries]") unless input[:groups_summaries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIndicesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIndicesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListIndicesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIndicesOutput, context: context)
        Validators::IndexConfigurationSummaryList.validate!(input[:index_configuration_summary_items], context: "#{context}[:index_configuration_summary_items]") unless input[:index_configuration_summary_items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListOfGroupSummaries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::GroupSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListQuerySuggestionsBlockListsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQuerySuggestionsBlockListsInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListQuerySuggestionsBlockListsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListQuerySuggestionsBlockListsOutput, context: context)
        Validators::QuerySuggestionsBlockListSummaryItems.validate!(input[:block_list_summary_items], context: "#{context}[:block_list_summary_items]") unless input[:block_list_summary_items].nil?
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
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListThesauriInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThesauriInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListThesauriOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListThesauriOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Validators::ThesaurusSummaryItems.validate!(input[:thesaurus_summary_items], context: "#{context}[:thesaurus_summary_items]") unless input[:thesaurus_summary_items].nil?
      end
    end

    class MemberGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemberGroup, context: context)
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
      end
    end

    class MemberGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MemberGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MemberUser
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MemberUser, context: context)
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
      end
    end

    class MemberUsers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MemberUser.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class OnPremiseConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OnPremiseConfiguration, context: context)
        Hearth::Validator.validate!(input[:host_url], ::String, context: "#{context}[:host_url]")
        Hearth::Validator.validate!(input[:organization_name], ::String, context: "#{context}[:organization_name]")
        Validators::S3Path.validate!(input[:ssl_certificate_s3_path], context: "#{context}[:ssl_certificate_s3_path]") unless input[:ssl_certificate_s3_path].nil?
      end
    end

    class OneDriveConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OneDriveConfiguration, context: context)
        Hearth::Validator.validate!(input[:tenant_domain], ::String, context: "#{context}[:tenant_domain]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Validators::OneDriveUsers.validate!(input[:one_drive_users], context: "#{context}[:one_drive_users]") unless input[:one_drive_users].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless input[:inclusion_patterns].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless input[:exclusion_patterns].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:field_mappings], context: "#{context}[:field_mappings]") unless input[:field_mappings].nil?
        Hearth::Validator.validate!(input[:disable_local_groups], ::TrueClass, ::FalseClass, context: "#{context}[:disable_local_groups]")
      end
    end

    class OneDriveUserList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class OneDriveUsers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OneDriveUsers, context: context)
        Validators::OneDriveUserList.validate!(input[:one_drive_user_list], context: "#{context}[:one_drive_user_list]") unless input[:one_drive_user_list].nil?
        Validators::S3Path.validate!(input[:one_drive_user_s3_path], context: "#{context}[:one_drive_user_s3_path]") unless input[:one_drive_user_s3_path].nil?
      end
    end

    class PersonasSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PersonasSummary, context: context)
        Hearth::Validator.validate!(input[:entity_id], ::String, context: "#{context}[:entity_id]")
        Hearth::Validator.validate!(input[:persona], ::String, context: "#{context}[:persona]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class PersonasSummaryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::PersonasSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Principal
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Principal, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:access], ::String, context: "#{context}[:access]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
      end
    end

    class PrincipalList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Principal.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PrivateChannelFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Project
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProxyConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ProxyConfiguration, context: context)
        Hearth::Validator.validate!(input[:host], ::String, context: "#{context}[:host]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:credentials], ::String, context: "#{context}[:credentials]")
      end
    end

    class PublicChannelFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PutPrincipalMappingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPrincipalMappingInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:data_source_id], ::String, context: "#{context}[:data_source_id]")
        Hearth::Validator.validate!(input[:group_id], ::String, context: "#{context}[:group_id]")
        Validators::GroupMembers.validate!(input[:group_members], context: "#{context}[:group_members]") unless input[:group_members].nil?
        Hearth::Validator.validate!(input[:ordering_id], ::Integer, context: "#{context}[:ordering_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class PutPrincipalMappingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutPrincipalMappingOutput, context: context)
      end
    end

    class QueryInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:query_text], ::String, context: "#{context}[:query_text]")
        Validators::AttributeFilter.validate!(input[:attribute_filter], context: "#{context}[:attribute_filter]") unless input[:attribute_filter].nil?
        Validators::FacetList.validate!(input[:facets], context: "#{context}[:facets]") unless input[:facets].nil?
        Validators::DocumentAttributeKeyList.validate!(input[:requested_document_attributes], context: "#{context}[:requested_document_attributes]") unless input[:requested_document_attributes].nil?
        Hearth::Validator.validate!(input[:query_result_type_filter], ::String, context: "#{context}[:query_result_type_filter]")
        Validators::DocumentRelevanceOverrideConfigurationList.validate!(input[:document_relevance_override_configurations], context: "#{context}[:document_relevance_override_configurations]") unless input[:document_relevance_override_configurations].nil?
        Hearth::Validator.validate!(input[:page_number], ::Integer, context: "#{context}[:page_number]")
        Hearth::Validator.validate!(input[:page_size], ::Integer, context: "#{context}[:page_size]")
        Validators::SortingConfiguration.validate!(input[:sorting_configuration], context: "#{context}[:sorting_configuration]") unless input[:sorting_configuration].nil?
        Validators::UserContext.validate!(input[:user_context], context: "#{context}[:user_context]") unless input[:user_context].nil?
        Hearth::Validator.validate!(input[:visitor_id], ::String, context: "#{context}[:visitor_id]")
        Validators::SpellCorrectionConfiguration.validate!(input[:spell_correction_configuration], context: "#{context}[:spell_correction_configuration]") unless input[:spell_correction_configuration].nil?
      end
    end

    class QueryOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryOutput, context: context)
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
        Validators::QueryResultItemList.validate!(input[:result_items], context: "#{context}[:result_items]") unless input[:result_items].nil?
        Validators::FacetResultList.validate!(input[:facet_results], context: "#{context}[:facet_results]") unless input[:facet_results].nil?
        Hearth::Validator.validate!(input[:total_number_of_results], ::Integer, context: "#{context}[:total_number_of_results]")
        Validators::WarningList.validate!(input[:warnings], context: "#{context}[:warnings]") unless input[:warnings].nil?
        Validators::SpellCorrectedQueryList.validate!(input[:spell_corrected_queries], context: "#{context}[:spell_corrected_queries]") unless input[:spell_corrected_queries].nil?
      end
    end

    class QueryResultItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryResultItem, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Validators::AdditionalResultAttributeList.validate!(input[:additional_attributes], context: "#{context}[:additional_attributes]") unless input[:additional_attributes].nil?
        Hearth::Validator.validate!(input[:document_id], ::String, context: "#{context}[:document_id]")
        Validators::TextWithHighlights.validate!(input[:document_title], context: "#{context}[:document_title]") unless input[:document_title].nil?
        Validators::TextWithHighlights.validate!(input[:document_excerpt], context: "#{context}[:document_excerpt]") unless input[:document_excerpt].nil?
        Hearth::Validator.validate!(input[:document_uri], ::String, context: "#{context}[:document_uri]")
        Validators::DocumentAttributeList.validate!(input[:document_attributes], context: "#{context}[:document_attributes]") unless input[:document_attributes].nil?
        Validators::ScoreAttributes.validate!(input[:score_attributes], context: "#{context}[:score_attributes]") unless input[:score_attributes].nil?
        Hearth::Validator.validate!(input[:feedback_token], ::String, context: "#{context}[:feedback_token]")
      end
    end

    class QueryResultItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::QueryResultItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class QuerySuggestionsBlockListSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QuerySuggestionsBlockListSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
        Hearth::Validator.validate!(input[:item_count], ::Integer, context: "#{context}[:item_count]")
      end
    end

    class QuerySuggestionsBlockListSummaryItems
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::QuerySuggestionsBlockListSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class QuipConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QuipConfiguration, context: context)
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:crawl_file_comments], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_file_comments]")
        Hearth::Validator.validate!(input[:crawl_chat_rooms], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_chat_rooms]")
        Hearth::Validator.validate!(input[:crawl_attachments], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_attachments]")
        Validators::FolderIdList.validate!(input[:folder_ids], context: "#{context}[:folder_ids]") unless input[:folder_ids].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:thread_field_mappings], context: "#{context}[:thread_field_mappings]") unless input[:thread_field_mappings].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:message_field_mappings], context: "#{context}[:message_field_mappings]") unless input[:message_field_mappings].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:attachment_field_mappings], context: "#{context}[:attachment_field_mappings]") unless input[:attachment_field_mappings].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless input[:inclusion_patterns].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless input[:exclusion_patterns].nil?
        Validators::DataSourceVpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
      end
    end

    class Relevance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Relevance, context: context)
        Hearth::Validator.validate!(input[:freshness], ::TrueClass, ::FalseClass, context: "#{context}[:freshness]")
        Hearth::Validator.validate!(input[:importance], ::Integer, context: "#{context}[:importance]")
        Hearth::Validator.validate!(input[:duration], ::String, context: "#{context}[:duration]")
        Hearth::Validator.validate!(input[:rank_order], ::String, context: "#{context}[:rank_order]")
        Validators::ValueImportanceMap.validate!(input[:value_importance_map], context: "#{context}[:value_importance_map]") unless input[:value_importance_map].nil?
      end
    end

    class RelevanceFeedback
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RelevanceFeedback, context: context)
        Hearth::Validator.validate!(input[:result_id], ::String, context: "#{context}[:result_id]")
        Hearth::Validator.validate!(input[:relevance_value], ::String, context: "#{context}[:relevance_value]")
      end
    end

    class RelevanceFeedbackList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::RelevanceFeedback.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class RepositoryNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ResourceAlreadyExistException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceAlreadyExistException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceUnavailableException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceUnavailableException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3DataSourceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3DataSourceConfiguration, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:inclusion_prefixes], context: "#{context}[:inclusion_prefixes]") unless input[:inclusion_prefixes].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless input[:inclusion_patterns].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless input[:exclusion_patterns].nil?
        Validators::DocumentsMetadataConfiguration.validate!(input[:documents_metadata_configuration], context: "#{context}[:documents_metadata_configuration]") unless input[:documents_metadata_configuration].nil?
        Validators::AccessControlListConfiguration.validate!(input[:access_control_list_configuration], context: "#{context}[:access_control_list_configuration]") unless input[:access_control_list_configuration].nil?
      end
    end

    class S3Path
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Path, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
      end
    end

    class SaaSConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SaaSConfiguration, context: context)
        Hearth::Validator.validate!(input[:organization_name], ::String, context: "#{context}[:organization_name]")
        Hearth::Validator.validate!(input[:host_url], ::String, context: "#{context}[:host_url]")
      end
    end

    class SalesforceChatterFeedConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SalesforceChatterFeedConfiguration, context: context)
        Hearth::Validator.validate!(input[:document_data_field_name], ::String, context: "#{context}[:document_data_field_name]")
        Hearth::Validator.validate!(input[:document_title_field_name], ::String, context: "#{context}[:document_title_field_name]")
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:field_mappings], context: "#{context}[:field_mappings]") unless input[:field_mappings].nil?
        Validators::SalesforceChatterFeedIncludeFilterTypes.validate!(input[:include_filter_types], context: "#{context}[:include_filter_types]") unless input[:include_filter_types].nil?
      end
    end

    class SalesforceChatterFeedIncludeFilterTypes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SalesforceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SalesforceConfiguration, context: context)
        Hearth::Validator.validate!(input[:server_url], ::String, context: "#{context}[:server_url]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Validators::SalesforceStandardObjectConfigurationList.validate!(input[:standard_object_configurations], context: "#{context}[:standard_object_configurations]") unless input[:standard_object_configurations].nil?
        Validators::SalesforceKnowledgeArticleConfiguration.validate!(input[:knowledge_article_configuration], context: "#{context}[:knowledge_article_configuration]") unless input[:knowledge_article_configuration].nil?
        Validators::SalesforceChatterFeedConfiguration.validate!(input[:chatter_feed_configuration], context: "#{context}[:chatter_feed_configuration]") unless input[:chatter_feed_configuration].nil?
        Hearth::Validator.validate!(input[:crawl_attachments], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_attachments]")
        Validators::SalesforceStandardObjectAttachmentConfiguration.validate!(input[:standard_object_attachment_configuration], context: "#{context}[:standard_object_attachment_configuration]") unless input[:standard_object_attachment_configuration].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:include_attachment_file_patterns], context: "#{context}[:include_attachment_file_patterns]") unless input[:include_attachment_file_patterns].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:exclude_attachment_file_patterns], context: "#{context}[:exclude_attachment_file_patterns]") unless input[:exclude_attachment_file_patterns].nil?
      end
    end

    class SalesforceCustomKnowledgeArticleTypeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SalesforceCustomKnowledgeArticleTypeConfiguration, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:document_data_field_name], ::String, context: "#{context}[:document_data_field_name]")
        Hearth::Validator.validate!(input[:document_title_field_name], ::String, context: "#{context}[:document_title_field_name]")
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:field_mappings], context: "#{context}[:field_mappings]") unless input[:field_mappings].nil?
      end
    end

    class SalesforceCustomKnowledgeArticleTypeConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SalesforceCustomKnowledgeArticleTypeConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SalesforceKnowledgeArticleConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SalesforceKnowledgeArticleConfiguration, context: context)
        Validators::SalesforceKnowledgeArticleStateList.validate!(input[:included_states], context: "#{context}[:included_states]") unless input[:included_states].nil?
        Validators::SalesforceStandardKnowledgeArticleTypeConfiguration.validate!(input[:standard_knowledge_article_type_configuration], context: "#{context}[:standard_knowledge_article_type_configuration]") unless input[:standard_knowledge_article_type_configuration].nil?
        Validators::SalesforceCustomKnowledgeArticleTypeConfigurationList.validate!(input[:custom_knowledge_article_type_configurations], context: "#{context}[:custom_knowledge_article_type_configurations]") unless input[:custom_knowledge_article_type_configurations].nil?
      end
    end

    class SalesforceKnowledgeArticleStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SalesforceStandardKnowledgeArticleTypeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SalesforceStandardKnowledgeArticleTypeConfiguration, context: context)
        Hearth::Validator.validate!(input[:document_data_field_name], ::String, context: "#{context}[:document_data_field_name]")
        Hearth::Validator.validate!(input[:document_title_field_name], ::String, context: "#{context}[:document_title_field_name]")
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:field_mappings], context: "#{context}[:field_mappings]") unless input[:field_mappings].nil?
      end
    end

    class SalesforceStandardObjectAttachmentConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SalesforceStandardObjectAttachmentConfiguration, context: context)
        Hearth::Validator.validate!(input[:document_title_field_name], ::String, context: "#{context}[:document_title_field_name]")
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:field_mappings], context: "#{context}[:field_mappings]") unless input[:field_mappings].nil?
      end
    end

    class SalesforceStandardObjectConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SalesforceStandardObjectConfiguration, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:document_data_field_name], ::String, context: "#{context}[:document_data_field_name]")
        Hearth::Validator.validate!(input[:document_title_field_name], ::String, context: "#{context}[:document_title_field_name]")
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:field_mappings], context: "#{context}[:field_mappings]") unless input[:field_mappings].nil?
      end
    end

    class SalesforceStandardObjectConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SalesforceStandardObjectConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ScoreAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScoreAttributes, context: context)
        Hearth::Validator.validate!(input[:score_confidence], ::String, context: "#{context}[:score_confidence]")
      end
    end

    class Search
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Search, context: context)
        Hearth::Validator.validate!(input[:facetable], ::TrueClass, ::FalseClass, context: "#{context}[:facetable]")
        Hearth::Validator.validate!(input[:searchable], ::TrueClass, ::FalseClass, context: "#{context}[:searchable]")
        Hearth::Validator.validate!(input[:displayable], ::TrueClass, ::FalseClass, context: "#{context}[:displayable]")
        Hearth::Validator.validate!(input[:sortable], ::TrueClass, ::FalseClass, context: "#{context}[:sortable]")
      end
    end

    class SecurityGroupIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SeedUrlConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SeedUrlConfiguration, context: context)
        Validators::SeedUrlList.validate!(input[:seed_urls], context: "#{context}[:seed_urls]") unless input[:seed_urls].nil?
        Hearth::Validator.validate!(input[:web_crawler_mode], ::String, context: "#{context}[:web_crawler_mode]")
      end
    end

    class SeedUrlList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ServerSideEncryptionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerSideEncryptionConfiguration, context: context)
        Hearth::Validator.validate!(input[:kms_key_id], ::String, context: "#{context}[:kms_key_id]")
      end
    end

    class ServiceNowConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceNowConfiguration, context: context)
        Hearth::Validator.validate!(input[:host_url], ::String, context: "#{context}[:host_url]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:service_now_build_version], ::String, context: "#{context}[:service_now_build_version]")
        Validators::ServiceNowKnowledgeArticleConfiguration.validate!(input[:knowledge_article_configuration], context: "#{context}[:knowledge_article_configuration]") unless input[:knowledge_article_configuration].nil?
        Validators::ServiceNowServiceCatalogConfiguration.validate!(input[:service_catalog_configuration], context: "#{context}[:service_catalog_configuration]") unless input[:service_catalog_configuration].nil?
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
      end
    end

    class ServiceNowKnowledgeArticleConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceNowKnowledgeArticleConfiguration, context: context)
        Hearth::Validator.validate!(input[:crawl_attachments], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_attachments]")
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:include_attachment_file_patterns], context: "#{context}[:include_attachment_file_patterns]") unless input[:include_attachment_file_patterns].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:exclude_attachment_file_patterns], context: "#{context}[:exclude_attachment_file_patterns]") unless input[:exclude_attachment_file_patterns].nil?
        Hearth::Validator.validate!(input[:document_data_field_name], ::String, context: "#{context}[:document_data_field_name]")
        Hearth::Validator.validate!(input[:document_title_field_name], ::String, context: "#{context}[:document_title_field_name]")
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:field_mappings], context: "#{context}[:field_mappings]") unless input[:field_mappings].nil?
        Hearth::Validator.validate!(input[:filter_query], ::String, context: "#{context}[:filter_query]")
      end
    end

    class ServiceNowServiceCatalogConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceNowServiceCatalogConfiguration, context: context)
        Hearth::Validator.validate!(input[:crawl_attachments], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_attachments]")
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:include_attachment_file_patterns], context: "#{context}[:include_attachment_file_patterns]") unless input[:include_attachment_file_patterns].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:exclude_attachment_file_patterns], context: "#{context}[:exclude_attachment_file_patterns]") unless input[:exclude_attachment_file_patterns].nil?
        Hearth::Validator.validate!(input[:document_data_field_name], ::String, context: "#{context}[:document_data_field_name]")
        Hearth::Validator.validate!(input[:document_title_field_name], ::String, context: "#{context}[:document_title_field_name]")
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:field_mappings], context: "#{context}[:field_mappings]") unless input[:field_mappings].nil?
      end
    end

    class ServiceQuotaExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceQuotaExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class SharePointConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SharePointConfiguration, context: context)
        Hearth::Validator.validate!(input[:share_point_version], ::String, context: "#{context}[:share_point_version]")
        Validators::SharePointUrlList.validate!(input[:urls], context: "#{context}[:urls]") unless input[:urls].nil?
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Hearth::Validator.validate!(input[:crawl_attachments], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_attachments]")
        Hearth::Validator.validate!(input[:use_change_log], ::TrueClass, ::FalseClass, context: "#{context}[:use_change_log]")
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless input[:inclusion_patterns].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless input[:exclusion_patterns].nil?
        Validators::DataSourceVpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:field_mappings], context: "#{context}[:field_mappings]") unless input[:field_mappings].nil?
        Hearth::Validator.validate!(input[:document_title_field_name], ::String, context: "#{context}[:document_title_field_name]")
        Hearth::Validator.validate!(input[:disable_local_groups], ::TrueClass, ::FalseClass, context: "#{context}[:disable_local_groups]")
        Validators::S3Path.validate!(input[:ssl_certificate_s3_path], context: "#{context}[:ssl_certificate_s3_path]") unless input[:ssl_certificate_s3_path].nil?
      end
    end

    class SharePointUrlList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SiteMapsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SiteMapsConfiguration, context: context)
        Validators::SiteMapsList.validate!(input[:site_maps], context: "#{context}[:site_maps]") unless input[:site_maps].nil?
      end
    end

    class SiteMapsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SlackConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SlackConfiguration, context: context)
        Hearth::Validator.validate!(input[:team_id], ::String, context: "#{context}[:team_id]")
        Hearth::Validator.validate!(input[:secret_arn], ::String, context: "#{context}[:secret_arn]")
        Validators::DataSourceVpcConfiguration.validate!(input[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless input[:vpc_configuration].nil?
        Validators::SlackEntityList.validate!(input[:slack_entity_list], context: "#{context}[:slack_entity_list]") unless input[:slack_entity_list].nil?
        Hearth::Validator.validate!(input[:use_change_log], ::TrueClass, ::FalseClass, context: "#{context}[:use_change_log]")
        Hearth::Validator.validate!(input[:crawl_bot_message], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_bot_message]")
        Hearth::Validator.validate!(input[:exclude_archived], ::TrueClass, ::FalseClass, context: "#{context}[:exclude_archived]")
        Hearth::Validator.validate!(input[:since_crawl_date], ::String, context: "#{context}[:since_crawl_date]")
        Hearth::Validator.validate!(input[:look_back_period], ::Integer, context: "#{context}[:look_back_period]")
        Validators::PrivateChannelFilter.validate!(input[:private_channel_filter], context: "#{context}[:private_channel_filter]") unless input[:private_channel_filter].nil?
        Validators::PublicChannelFilter.validate!(input[:public_channel_filter], context: "#{context}[:public_channel_filter]") unless input[:public_channel_filter].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless input[:inclusion_patterns].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless input[:exclusion_patterns].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:field_mappings], context: "#{context}[:field_mappings]") unless input[:field_mappings].nil?
      end
    end

    class SlackEntityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SnapshotsDataHeaderFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SnapshotsDataRecord
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SnapshotsDataRecords
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SnapshotsDataRecord.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SortingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SortingConfiguration, context: context)
        Hearth::Validator.validate!(input[:document_attribute_key], ::String, context: "#{context}[:document_attribute_key]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
      end
    end

    class SpellCorrectedQuery
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpellCorrectedQuery, context: context)
        Hearth::Validator.validate!(input[:suggested_query_text], ::String, context: "#{context}[:suggested_query_text]")
        Validators::CorrectionList.validate!(input[:corrections], context: "#{context}[:corrections]") unless input[:corrections].nil?
      end
    end

    class SpellCorrectedQueryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SpellCorrectedQuery.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SpellCorrectionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SpellCorrectionConfiguration, context: context)
        Hearth::Validator.validate!(input[:include_query_spell_check_suggestions], ::TrueClass, ::FalseClass, context: "#{context}[:include_query_spell_check_suggestions]")
      end
    end

    class SqlConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SqlConfiguration, context: context)
        Hearth::Validator.validate!(input[:query_identifiers_enclosing_option], ::String, context: "#{context}[:query_identifiers_enclosing_option]")
      end
    end

    class StartDataSourceSyncJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDataSourceSyncJobInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
      end
    end

    class StartDataSourceSyncJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartDataSourceSyncJobOutput, context: context)
        Hearth::Validator.validate!(input[:execution_id], ::String, context: "#{context}[:execution_id]")
      end
    end

    class Status
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Status, context: context)
        Hearth::Validator.validate!(input[:document_id], ::String, context: "#{context}[:document_id]")
        Hearth::Validator.validate!(input[:document_status], ::String, context: "#{context}[:document_status]")
        Hearth::Validator.validate!(input[:failure_code], ::String, context: "#{context}[:failure_code]")
        Hearth::Validator.validate!(input[:failure_reason], ::String, context: "#{context}[:failure_reason]")
      end
    end

    class StopDataSourceSyncJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDataSourceSyncJobInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
      end
    end

    class StopDataSourceSyncJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopDataSourceSyncJobOutput, context: context)
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubmitFeedbackInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubmitFeedbackInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:query_id], ::String, context: "#{context}[:query_id]")
        Validators::ClickFeedbackList.validate!(input[:click_feedback_items], context: "#{context}[:click_feedback_items]") unless input[:click_feedback_items].nil?
        Validators::RelevanceFeedbackList.validate!(input[:relevance_feedback_items], context: "#{context}[:relevance_feedback_items]") unless input[:relevance_feedback_items].nil?
      end
    end

    class SubmitFeedbackOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SubmitFeedbackOutput, context: context)
      end
    end

    class SubnetIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Suggestion
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Suggestion, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Validators::SuggestionValue.validate!(input[:value], context: "#{context}[:value]") unless input[:value].nil?
      end
    end

    class SuggestionHighlight
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuggestionHighlight, context: context)
        Hearth::Validator.validate!(input[:begin_offset], ::Integer, context: "#{context}[:begin_offset]")
        Hearth::Validator.validate!(input[:end_offset], ::Integer, context: "#{context}[:end_offset]")
      end
    end

    class SuggestionHighlightList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::SuggestionHighlight.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SuggestionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Suggestion.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SuggestionTextWithHighlights
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuggestionTextWithHighlights, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Validators::SuggestionHighlightList.validate!(input[:highlights], context: "#{context}[:highlights]") unless input[:highlights].nil?
      end
    end

    class SuggestionValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuggestionValue, context: context)
        Validators::SuggestionTextWithHighlights.validate!(input[:text], context: "#{context}[:text]") unless input[:text].nil?
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
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

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TextDocumentStatistics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TextDocumentStatistics, context: context)
        Hearth::Validator.validate!(input[:indexed_text_documents_count], ::Integer, context: "#{context}[:indexed_text_documents_count]")
        Hearth::Validator.validate!(input[:indexed_text_bytes], ::Integer, context: "#{context}[:indexed_text_bytes]")
      end
    end

    class TextWithHighlights
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TextWithHighlights, context: context)
        Hearth::Validator.validate!(input[:text], ::String, context: "#{context}[:text]")
        Validators::HighlightList.validate!(input[:highlights], context: "#{context}[:highlights]") unless input[:highlights].nil?
      end
    end

    class ThesaurusSummary
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThesaurusSummary, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:updated_at], ::Time, context: "#{context}[:updated_at]")
      end
    end

    class ThesaurusSummaryItems
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ThesaurusSummary.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TimeRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TimeRange, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateDataSourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataSourceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Validators::DataSourceConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:schedule], ::String, context: "#{context}[:schedule]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:language_code], ::String, context: "#{context}[:language_code]")
        Validators::CustomDocumentEnrichmentConfiguration.validate!(input[:custom_document_enrichment_configuration], context: "#{context}[:custom_document_enrichment_configuration]") unless input[:custom_document_enrichment_configuration].nil?
      end
    end

    class UpdateDataSourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDataSourceOutput, context: context)
      end
    end

    class UpdateExperienceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateExperienceInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::ExperienceConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class UpdateExperienceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateExperienceOutput, context: context)
      end
    end

    class UpdateIndexInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIndexInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::DocumentMetadataConfigurationList.validate!(input[:document_metadata_configuration_updates], context: "#{context}[:document_metadata_configuration_updates]") unless input[:document_metadata_configuration_updates].nil?
        Validators::CapacityUnitsConfiguration.validate!(input[:capacity_units], context: "#{context}[:capacity_units]") unless input[:capacity_units].nil?
        Validators::UserTokenConfigurationList.validate!(input[:user_token_configurations], context: "#{context}[:user_token_configurations]") unless input[:user_token_configurations].nil?
        Hearth::Validator.validate!(input[:user_context_policy], ::String, context: "#{context}[:user_context_policy]")
        Validators::UserGroupResolutionConfiguration.validate!(input[:user_group_resolution_configuration], context: "#{context}[:user_group_resolution_configuration]") unless input[:user_group_resolution_configuration].nil?
      end
    end

    class UpdateIndexOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateIndexOutput, context: context)
      end
    end

    class UpdateQuerySuggestionsBlockListInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQuerySuggestionsBlockListInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Validators::S3Path.validate!(input[:source_s3_path], context: "#{context}[:source_s3_path]") unless input[:source_s3_path].nil?
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class UpdateQuerySuggestionsBlockListOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQuerySuggestionsBlockListOutput, context: context)
      end
    end

    class UpdateQuerySuggestionsConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQuerySuggestionsConfigInput, context: context)
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:mode], ::String, context: "#{context}[:mode]")
        Hearth::Validator.validate!(input[:query_log_look_back_window_in_days], ::Integer, context: "#{context}[:query_log_look_back_window_in_days]")
        Hearth::Validator.validate!(input[:include_queries_without_user_information], ::TrueClass, ::FalseClass, context: "#{context}[:include_queries_without_user_information]")
        Hearth::Validator.validate!(input[:minimum_number_of_querying_users], ::Integer, context: "#{context}[:minimum_number_of_querying_users]")
        Hearth::Validator.validate!(input[:minimum_query_count], ::Integer, context: "#{context}[:minimum_query_count]")
      end
    end

    class UpdateQuerySuggestionsConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateQuerySuggestionsConfigOutput, context: context)
      end
    end

    class UpdateThesaurusInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThesaurusInput, context: context)
        Hearth::Validator.validate!(input[:id], ::String, context: "#{context}[:id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:index_id], ::String, context: "#{context}[:index_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::S3Path.validate!(input[:source_s3_path], context: "#{context}[:source_s3_path]") unless input[:source_s3_path].nil?
      end
    end

    class UpdateThesaurusOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateThesaurusOutput, context: context)
      end
    end

    class Urls
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Urls, context: context)
        Validators::SeedUrlConfiguration.validate!(input[:seed_url_configuration], context: "#{context}[:seed_url_configuration]") unless input[:seed_url_configuration].nil?
        Validators::SiteMapsConfiguration.validate!(input[:site_maps_configuration], context: "#{context}[:site_maps_configuration]") unless input[:site_maps_configuration].nil?
      end
    end

    class UserContext
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserContext, context: context)
        Hearth::Validator.validate!(input[:token], ::String, context: "#{context}[:token]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Validators::Groups.validate!(input[:groups], context: "#{context}[:groups]") unless input[:groups].nil?
        Validators::DataSourceGroups.validate!(input[:data_source_groups], context: "#{context}[:data_source_groups]") unless input[:data_source_groups].nil?
      end
    end

    class UserGroupResolutionConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserGroupResolutionConfiguration, context: context)
        Hearth::Validator.validate!(input[:user_group_resolution_mode], ::String, context: "#{context}[:user_group_resolution_mode]")
      end
    end

    class UserIdentityConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserIdentityConfiguration, context: context)
        Hearth::Validator.validate!(input[:identity_attribute_name], ::String, context: "#{context}[:identity_attribute_name]")
      end
    end

    class UserTokenConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UserTokenConfiguration, context: context)
        Validators::JwtTokenTypeConfiguration.validate!(input[:jwt_token_type_configuration], context: "#{context}[:jwt_token_type_configuration]") unless input[:jwt_token_type_configuration].nil?
        Validators::JsonTokenTypeConfiguration.validate!(input[:json_token_type_configuration], context: "#{context}[:json_token_type_configuration]") unless input[:json_token_type_configuration].nil?
      end
    end

    class UserTokenConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::UserTokenConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ValidationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ValueImportanceMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

    class Warning
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Warning, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
      end
    end

    class WarningList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Warning.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WebCrawlerConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WebCrawlerConfiguration, context: context)
        Validators::Urls.validate!(input[:urls], context: "#{context}[:urls]") unless input[:urls].nil?
        Hearth::Validator.validate!(input[:crawl_depth], ::Integer, context: "#{context}[:crawl_depth]")
        Hearth::Validator.validate!(input[:max_links_per_page], ::Integer, context: "#{context}[:max_links_per_page]")
        Hearth::Validator.validate!(input[:max_content_size_per_page_in_mega_bytes], ::Float, context: "#{context}[:max_content_size_per_page_in_mega_bytes]")
        Hearth::Validator.validate!(input[:max_urls_per_minute_crawl_rate], ::Integer, context: "#{context}[:max_urls_per_minute_crawl_rate]")
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:url_inclusion_patterns], context: "#{context}[:url_inclusion_patterns]") unless input[:url_inclusion_patterns].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:url_exclusion_patterns], context: "#{context}[:url_exclusion_patterns]") unless input[:url_exclusion_patterns].nil?
        Validators::ProxyConfiguration.validate!(input[:proxy_configuration], context: "#{context}[:proxy_configuration]") unless input[:proxy_configuration].nil?
        Validators::AuthenticationConfiguration.validate!(input[:authentication_configuration], context: "#{context}[:authentication_configuration]") unless input[:authentication_configuration].nil?
      end
    end

    class WorkDocsConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkDocsConfiguration, context: context)
        Hearth::Validator.validate!(input[:organization_id], ::String, context: "#{context}[:organization_id]")
        Hearth::Validator.validate!(input[:crawl_comments], ::TrueClass, ::FalseClass, context: "#{context}[:crawl_comments]")
        Hearth::Validator.validate!(input[:use_change_log], ::TrueClass, ::FalseClass, context: "#{context}[:use_change_log]")
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless input[:inclusion_patterns].nil?
        Validators::DataSourceInclusionsExclusionsStrings.validate!(input[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless input[:exclusion_patterns].nil?
        Validators::DataSourceToIndexFieldMappingList.validate!(input[:field_mappings], context: "#{context}[:field_mappings]") unless input[:field_mappings].nil?
      end
    end

  end
end
