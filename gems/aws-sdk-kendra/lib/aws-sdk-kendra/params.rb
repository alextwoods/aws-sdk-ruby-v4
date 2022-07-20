# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Kendra
  module Params

    module AccessControlListConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessControlListConfiguration, context: context)
        type = Types::AccessControlListConfiguration.new
        type.key_path = params[:key_path]
        type
      end
    end

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AclConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AclConfiguration, context: context)
        type = Types::AclConfiguration.new
        type.allowed_groups_column_name = params[:allowed_groups_column_name]
        type
      end
    end

    module AdditionalResultAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdditionalResultAttribute, context: context)
        type = Types::AdditionalResultAttribute.new
        type.key = params[:key]
        type.value_type = params[:value_type]
        type.value = AdditionalResultAttributeValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module AdditionalResultAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AdditionalResultAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AdditionalResultAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AdditionalResultAttributeValue, context: context)
        type = Types::AdditionalResultAttributeValue.new
        type.text_with_highlights_value = TextWithHighlights.build(params[:text_with_highlights_value], context: "#{context}[:text_with_highlights_value]") unless params[:text_with_highlights_value].nil?
        type
      end
    end

    module AssociateEntitiesToExperienceFailedEntityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailedEntity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociateEntitiesToExperienceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateEntitiesToExperienceInput, context: context)
        type = Types::AssociateEntitiesToExperienceInput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type.entity_list = AssociateEntityList.build(params[:entity_list], context: "#{context}[:entity_list]") unless params[:entity_list].nil?
        type
      end
    end

    module AssociateEntitiesToExperienceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociateEntitiesToExperienceOutput, context: context)
        type = Types::AssociateEntitiesToExperienceOutput.new
        type.failed_entity_list = AssociateEntitiesToExperienceFailedEntityList.build(params[:failed_entity_list], context: "#{context}[:failed_entity_list]") unless params[:failed_entity_list].nil?
        type
      end
    end

    module AssociateEntityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntityConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AssociatePersonasToEntitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatePersonasToEntitiesInput, context: context)
        type = Types::AssociatePersonasToEntitiesInput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type.personas = EntityPersonaConfigurationList.build(params[:personas], context: "#{context}[:personas]") unless params[:personas].nil?
        type
      end
    end

    module AssociatePersonasToEntitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AssociatePersonasToEntitiesOutput, context: context)
        type = Types::AssociatePersonasToEntitiesOutput.new
        type.failed_entity_list = FailedEntityList.build(params[:failed_entity_list], context: "#{context}[:failed_entity_list]") unless params[:failed_entity_list].nil?
        type
      end
    end

    module AttributeFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeFilter, context: context)
        type = Types::AttributeFilter.new
        type.and_all_filters = AttributeFilterList.build(params[:and_all_filters], context: "#{context}[:and_all_filters]") unless params[:and_all_filters].nil?
        type.or_all_filters = AttributeFilterList.build(params[:or_all_filters], context: "#{context}[:or_all_filters]") unless params[:or_all_filters].nil?
        type.not_filter = AttributeFilter.build(params[:not_filter], context: "#{context}[:not_filter]") unless params[:not_filter].nil?
        type.equals_to = DocumentAttribute.build(params[:equals_to], context: "#{context}[:equals_to]") unless params[:equals_to].nil?
        type.contains_all = DocumentAttribute.build(params[:contains_all], context: "#{context}[:contains_all]") unless params[:contains_all].nil?
        type.contains_any = DocumentAttribute.build(params[:contains_any], context: "#{context}[:contains_any]") unless params[:contains_any].nil?
        type.greater_than = DocumentAttribute.build(params[:greater_than], context: "#{context}[:greater_than]") unless params[:greater_than].nil?
        type.greater_than_or_equals = DocumentAttribute.build(params[:greater_than_or_equals], context: "#{context}[:greater_than_or_equals]") unless params[:greater_than_or_equals].nil?
        type.less_than = DocumentAttribute.build(params[:less_than], context: "#{context}[:less_than]") unless params[:less_than].nil?
        type.less_than_or_equals = DocumentAttribute.build(params[:less_than_or_equals], context: "#{context}[:less_than_or_equals]") unless params[:less_than_or_equals].nil?
        type
      end
    end

    module AttributeFilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AttributeFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AuthenticationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AuthenticationConfiguration, context: context)
        type = Types::AuthenticationConfiguration.new
        type.basic_authentication = BasicAuthenticationConfigurationList.build(params[:basic_authentication], context: "#{context}[:basic_authentication]") unless params[:basic_authentication].nil?
        type
      end
    end

    module BasicAuthenticationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BasicAuthenticationConfiguration, context: context)
        type = Types::BasicAuthenticationConfiguration.new
        type.host = params[:host]
        type.port = params[:port]
        type.credentials = params[:credentials]
        type
      end
    end

    module BasicAuthenticationConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BasicAuthenticationConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchDeleteDocumentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteDocumentInput, context: context)
        type = Types::BatchDeleteDocumentInput.new
        type.index_id = params[:index_id]
        type.document_id_list = DocumentIdList.build(params[:document_id_list], context: "#{context}[:document_id_list]") unless params[:document_id_list].nil?
        type.data_source_sync_job_metric_target = DataSourceSyncJobMetricTarget.build(params[:data_source_sync_job_metric_target], context: "#{context}[:data_source_sync_job_metric_target]") unless params[:data_source_sync_job_metric_target].nil?
        type
      end
    end

    module BatchDeleteDocumentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteDocumentOutput, context: context)
        type = Types::BatchDeleteDocumentOutput.new
        type.failed_documents = BatchDeleteDocumentResponseFailedDocuments.build(params[:failed_documents], context: "#{context}[:failed_documents]") unless params[:failed_documents].nil?
        type
      end
    end

    module BatchDeleteDocumentResponseFailedDocument
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchDeleteDocumentResponseFailedDocument, context: context)
        type = Types::BatchDeleteDocumentResponseFailedDocument.new
        type.id = params[:id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchDeleteDocumentResponseFailedDocuments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchDeleteDocumentResponseFailedDocument.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchGetDocumentStatusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetDocumentStatusInput, context: context)
        type = Types::BatchGetDocumentStatusInput.new
        type.index_id = params[:index_id]
        type.document_info_list = DocumentInfoList.build(params[:document_info_list], context: "#{context}[:document_info_list]") unless params[:document_info_list].nil?
        type
      end
    end

    module BatchGetDocumentStatusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetDocumentStatusOutput, context: context)
        type = Types::BatchGetDocumentStatusOutput.new
        type.errors = BatchGetDocumentStatusResponseErrors.build(params[:errors], context: "#{context}[:errors]") unless params[:errors].nil?
        type.document_status_list = DocumentStatusList.build(params[:document_status_list], context: "#{context}[:document_status_list]") unless params[:document_status_list].nil?
        type
      end
    end

    module BatchGetDocumentStatusResponseError
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchGetDocumentStatusResponseError, context: context)
        type = Types::BatchGetDocumentStatusResponseError.new
        type.document_id = params[:document_id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchGetDocumentStatusResponseErrors
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchGetDocumentStatusResponseError.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BatchPutDocumentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutDocumentInput, context: context)
        type = Types::BatchPutDocumentInput.new
        type.index_id = params[:index_id]
        type.role_arn = params[:role_arn]
        type.documents = DocumentList.build(params[:documents], context: "#{context}[:documents]") unless params[:documents].nil?
        type.custom_document_enrichment_configuration = CustomDocumentEnrichmentConfiguration.build(params[:custom_document_enrichment_configuration], context: "#{context}[:custom_document_enrichment_configuration]") unless params[:custom_document_enrichment_configuration].nil?
        type
      end
    end

    module BatchPutDocumentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutDocumentOutput, context: context)
        type = Types::BatchPutDocumentOutput.new
        type.failed_documents = BatchPutDocumentResponseFailedDocuments.build(params[:failed_documents], context: "#{context}[:failed_documents]") unless params[:failed_documents].nil?
        type
      end
    end

    module BatchPutDocumentResponseFailedDocument
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BatchPutDocumentResponseFailedDocument, context: context)
        type = Types::BatchPutDocumentResponseFailedDocument.new
        type.id = params[:id]
        type.error_code = params[:error_code]
        type.error_message = params[:error_message]
        type
      end
    end

    module BatchPutDocumentResponseFailedDocuments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << BatchPutDocumentResponseFailedDocument.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module BoxConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BoxConfiguration, context: context)
        type = Types::BoxConfiguration.new
        type.enterprise_id = params[:enterprise_id]
        type.secret_arn = params[:secret_arn]
        type.use_change_log = params[:use_change_log]
        type.crawl_comments = params[:crawl_comments]
        type.crawl_tasks = params[:crawl_tasks]
        type.crawl_web_links = params[:crawl_web_links]
        type.file_field_mappings = DataSourceToIndexFieldMappingList.build(params[:file_field_mappings], context: "#{context}[:file_field_mappings]") unless params[:file_field_mappings].nil?
        type.task_field_mappings = DataSourceToIndexFieldMappingList.build(params[:task_field_mappings], context: "#{context}[:task_field_mappings]") unless params[:task_field_mappings].nil?
        type.comment_field_mappings = DataSourceToIndexFieldMappingList.build(params[:comment_field_mappings], context: "#{context}[:comment_field_mappings]") unless params[:comment_field_mappings].nil?
        type.web_link_field_mappings = DataSourceToIndexFieldMappingList.build(params[:web_link_field_mappings], context: "#{context}[:web_link_field_mappings]") unless params[:web_link_field_mappings].nil?
        type.inclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless params[:inclusion_patterns].nil?
        type.exclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless params[:exclusion_patterns].nil?
        type.vpc_configuration = DataSourceVpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type
      end
    end

    module CapacityUnitsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CapacityUnitsConfiguration, context: context)
        type = Types::CapacityUnitsConfiguration.new
        type.storage_capacity_units = params[:storage_capacity_units]
        type.query_capacity_units = params[:query_capacity_units]
        type
      end
    end

    module ChangeDetectingColumns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ClearQuerySuggestionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClearQuerySuggestionsInput, context: context)
        type = Types::ClearQuerySuggestionsInput.new
        type.index_id = params[:index_id]
        type
      end
    end

    module ClearQuerySuggestionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClearQuerySuggestionsOutput, context: context)
        type = Types::ClearQuerySuggestionsOutput.new
        type
      end
    end

    module ClickFeedback
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClickFeedback, context: context)
        type = Types::ClickFeedback.new
        type.result_id = params[:result_id]
        type.click_time = params[:click_time]
        type
      end
    end

    module ClickFeedbackList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClickFeedback.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ColumnConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ColumnConfiguration, context: context)
        type = Types::ColumnConfiguration.new
        type.document_id_column_name = params[:document_id_column_name]
        type.document_data_column_name = params[:document_data_column_name]
        type.document_title_column_name = params[:document_title_column_name]
        type.field_mappings = DataSourceToIndexFieldMappingList.build(params[:field_mappings], context: "#{context}[:field_mappings]") unless params[:field_mappings].nil?
        type.change_detecting_columns = ChangeDetectingColumns.build(params[:change_detecting_columns], context: "#{context}[:change_detecting_columns]") unless params[:change_detecting_columns].nil?
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

    module ConfluenceAttachmentConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfluenceAttachmentConfiguration, context: context)
        type = Types::ConfluenceAttachmentConfiguration.new
        type.crawl_attachments = params[:crawl_attachments]
        type.attachment_field_mappings = ConfluenceAttachmentFieldMappingsList.build(params[:attachment_field_mappings], context: "#{context}[:attachment_field_mappings]") unless params[:attachment_field_mappings].nil?
        type
      end
    end

    module ConfluenceAttachmentFieldMappingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfluenceAttachmentToIndexFieldMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfluenceAttachmentToIndexFieldMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfluenceAttachmentToIndexFieldMapping, context: context)
        type = Types::ConfluenceAttachmentToIndexFieldMapping.new
        type.data_source_field_name = params[:data_source_field_name]
        type.date_field_format = params[:date_field_format]
        type.index_field_name = params[:index_field_name]
        type
      end
    end

    module ConfluenceBlogConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfluenceBlogConfiguration, context: context)
        type = Types::ConfluenceBlogConfiguration.new
        type.blog_field_mappings = ConfluenceBlogFieldMappingsList.build(params[:blog_field_mappings], context: "#{context}[:blog_field_mappings]") unless params[:blog_field_mappings].nil?
        type
      end
    end

    module ConfluenceBlogFieldMappingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfluenceBlogToIndexFieldMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfluenceBlogToIndexFieldMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfluenceBlogToIndexFieldMapping, context: context)
        type = Types::ConfluenceBlogToIndexFieldMapping.new
        type.data_source_field_name = params[:data_source_field_name]
        type.date_field_format = params[:date_field_format]
        type.index_field_name = params[:index_field_name]
        type
      end
    end

    module ConfluenceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfluenceConfiguration, context: context)
        type = Types::ConfluenceConfiguration.new
        type.server_url = params[:server_url]
        type.secret_arn = params[:secret_arn]
        type.version = params[:version]
        type.space_configuration = ConfluenceSpaceConfiguration.build(params[:space_configuration], context: "#{context}[:space_configuration]") unless params[:space_configuration].nil?
        type.page_configuration = ConfluencePageConfiguration.build(params[:page_configuration], context: "#{context}[:page_configuration]") unless params[:page_configuration].nil?
        type.blog_configuration = ConfluenceBlogConfiguration.build(params[:blog_configuration], context: "#{context}[:blog_configuration]") unless params[:blog_configuration].nil?
        type.attachment_configuration = ConfluenceAttachmentConfiguration.build(params[:attachment_configuration], context: "#{context}[:attachment_configuration]") unless params[:attachment_configuration].nil?
        type.vpc_configuration = DataSourceVpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type.inclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless params[:inclusion_patterns].nil?
        type.exclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless params[:exclusion_patterns].nil?
        type
      end
    end

    module ConfluencePageConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfluencePageConfiguration, context: context)
        type = Types::ConfluencePageConfiguration.new
        type.page_field_mappings = ConfluencePageFieldMappingsList.build(params[:page_field_mappings], context: "#{context}[:page_field_mappings]") unless params[:page_field_mappings].nil?
        type
      end
    end

    module ConfluencePageFieldMappingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfluencePageToIndexFieldMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfluencePageToIndexFieldMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfluencePageToIndexFieldMapping, context: context)
        type = Types::ConfluencePageToIndexFieldMapping.new
        type.data_source_field_name = params[:data_source_field_name]
        type.date_field_format = params[:date_field_format]
        type.index_field_name = params[:index_field_name]
        type
      end
    end

    module ConfluenceSpaceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfluenceSpaceConfiguration, context: context)
        type = Types::ConfluenceSpaceConfiguration.new
        type.crawl_personal_spaces = params[:crawl_personal_spaces]
        type.crawl_archived_spaces = params[:crawl_archived_spaces]
        type.include_spaces = ConfluenceSpaceList.build(params[:include_spaces], context: "#{context}[:include_spaces]") unless params[:include_spaces].nil?
        type.exclude_spaces = ConfluenceSpaceList.build(params[:exclude_spaces], context: "#{context}[:exclude_spaces]") unless params[:exclude_spaces].nil?
        type.space_field_mappings = ConfluenceSpaceFieldMappingsList.build(params[:space_field_mappings], context: "#{context}[:space_field_mappings]") unless params[:space_field_mappings].nil?
        type
      end
    end

    module ConfluenceSpaceFieldMappingsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ConfluenceSpaceToIndexFieldMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConfluenceSpaceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ConfluenceSpaceToIndexFieldMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConfluenceSpaceToIndexFieldMapping, context: context)
        type = Types::ConfluenceSpaceToIndexFieldMapping.new
        type.data_source_field_name = params[:data_source_field_name]
        type.date_field_format = params[:date_field_format]
        type.index_field_name = params[:index_field_name]
        type
      end
    end

    module ConnectionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectionConfiguration, context: context)
        type = Types::ConnectionConfiguration.new
        type.database_host = params[:database_host]
        type.database_port = params[:database_port]
        type.database_name = params[:database_name]
        type.table_name = params[:table_name]
        type.secret_arn = params[:secret_arn]
        type
      end
    end

    module ContentSourceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ContentSourceConfiguration, context: context)
        type = Types::ContentSourceConfiguration.new
        type.data_source_ids = DataSourceIdList.build(params[:data_source_ids], context: "#{context}[:data_source_ids]") unless params[:data_source_ids].nil?
        type.faq_ids = FaqIdsList.build(params[:faq_ids], context: "#{context}[:faq_ids]") unless params[:faq_ids].nil?
        type.direct_put_content = params[:direct_put_content]
        type
      end
    end

    module Correction
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Correction, context: context)
        type = Types::Correction.new
        type.begin_offset = params[:begin_offset]
        type.end_offset = params[:end_offset]
        type.term = params[:term]
        type.corrected_term = params[:corrected_term]
        type
      end
    end

    module CorrectionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Correction.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CreateDataSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataSourceInput, context: context)
        type = Types::CreateDataSourceInput.new
        type.name = params[:name]
        type.index_id = params[:index_id]
        type.type = params[:type]
        type.configuration = DataSourceConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.description = params[:description]
        type.schedule = params[:schedule]
        type.role_arn = params[:role_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.language_code = params[:language_code]
        type.custom_document_enrichment_configuration = CustomDocumentEnrichmentConfiguration.build(params[:custom_document_enrichment_configuration], context: "#{context}[:custom_document_enrichment_configuration]") unless params[:custom_document_enrichment_configuration].nil?
        type
      end
    end

    module CreateDataSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDataSourceOutput, context: context)
        type = Types::CreateDataSourceOutput.new
        type.id = params[:id]
        type
      end
    end

    module CreateExperienceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExperienceInput, context: context)
        type = Types::CreateExperienceInput.new
        type.name = params[:name]
        type.index_id = params[:index_id]
        type.role_arn = params[:role_arn]
        type.configuration = ExperienceConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.description = params[:description]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateExperienceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateExperienceOutput, context: context)
        type = Types::CreateExperienceOutput.new
        type.id = params[:id]
        type
      end
    end

    module CreateFaqInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFaqInput, context: context)
        type = Types::CreateFaqInput.new
        type.index_id = params[:index_id]
        type.name = params[:name]
        type.description = params[:description]
        type.s3_path = S3Path.build(params[:s3_path], context: "#{context}[:s3_path]") unless params[:s3_path].nil?
        type.role_arn = params[:role_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.file_format = params[:file_format]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.language_code = params[:language_code]
        type
      end
    end

    module CreateFaqOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFaqOutput, context: context)
        type = Types::CreateFaqOutput.new
        type.id = params[:id]
        type
      end
    end

    module CreateIndexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIndexInput, context: context)
        type = Types::CreateIndexInput.new
        type.name = params[:name]
        type.edition = params[:edition]
        type.role_arn = params[:role_arn]
        type.server_side_encryption_configuration = ServerSideEncryptionConfiguration.build(params[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless params[:server_side_encryption_configuration].nil?
        type.description = params[:description]
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.user_token_configurations = UserTokenConfigurationList.build(params[:user_token_configurations], context: "#{context}[:user_token_configurations]") unless params[:user_token_configurations].nil?
        type.user_context_policy = params[:user_context_policy]
        type.user_group_resolution_configuration = UserGroupResolutionConfiguration.build(params[:user_group_resolution_configuration], context: "#{context}[:user_group_resolution_configuration]") unless params[:user_group_resolution_configuration].nil?
        type
      end
    end

    module CreateIndexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIndexOutput, context: context)
        type = Types::CreateIndexOutput.new
        type.id = params[:id]
        type
      end
    end

    module CreateQuerySuggestionsBlockListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateQuerySuggestionsBlockListInput, context: context)
        type = Types::CreateQuerySuggestionsBlockListInput.new
        type.index_id = params[:index_id]
        type.name = params[:name]
        type.description = params[:description]
        type.source_s3_path = S3Path.build(params[:source_s3_path], context: "#{context}[:source_s3_path]") unless params[:source_s3_path].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type.role_arn = params[:role_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateQuerySuggestionsBlockListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateQuerySuggestionsBlockListOutput, context: context)
        type = Types::CreateQuerySuggestionsBlockListOutput.new
        type.id = params[:id]
        type
      end
    end

    module CreateThesaurusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateThesaurusInput, context: context)
        type = Types::CreateThesaurusInput.new
        type.index_id = params[:index_id]
        type.name = params[:name]
        type.description = params[:description]
        type.role_arn = params[:role_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.source_s3_path = S3Path.build(params[:source_s3_path], context: "#{context}[:source_s3_path]") unless params[:source_s3_path].nil?
        type.client_token = params[:client_token] || ::SecureRandom.uuid
        type
      end
    end

    module CreateThesaurusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateThesaurusOutput, context: context)
        type = Types::CreateThesaurusOutput.new
        type.id = params[:id]
        type
      end
    end

    module CustomDocumentEnrichmentConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CustomDocumentEnrichmentConfiguration, context: context)
        type = Types::CustomDocumentEnrichmentConfiguration.new
        type.inline_configurations = InlineCustomDocumentEnrichmentConfigurationList.build(params[:inline_configurations], context: "#{context}[:inline_configurations]") unless params[:inline_configurations].nil?
        type.pre_extraction_hook_configuration = HookConfiguration.build(params[:pre_extraction_hook_configuration], context: "#{context}[:pre_extraction_hook_configuration]") unless params[:pre_extraction_hook_configuration].nil?
        type.post_extraction_hook_configuration = HookConfiguration.build(params[:post_extraction_hook_configuration], context: "#{context}[:post_extraction_hook_configuration]") unless params[:post_extraction_hook_configuration].nil?
        type.role_arn = params[:role_arn]
        type
      end
    end

    module DataSourceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSourceConfiguration, context: context)
        type = Types::DataSourceConfiguration.new
        type.s3_configuration = S3DataSourceConfiguration.build(params[:s3_configuration], context: "#{context}[:s3_configuration]") unless params[:s3_configuration].nil?
        type.share_point_configuration = SharePointConfiguration.build(params[:share_point_configuration], context: "#{context}[:share_point_configuration]") unless params[:share_point_configuration].nil?
        type.database_configuration = DatabaseConfiguration.build(params[:database_configuration], context: "#{context}[:database_configuration]") unless params[:database_configuration].nil?
        type.salesforce_configuration = SalesforceConfiguration.build(params[:salesforce_configuration], context: "#{context}[:salesforce_configuration]") unless params[:salesforce_configuration].nil?
        type.one_drive_configuration = OneDriveConfiguration.build(params[:one_drive_configuration], context: "#{context}[:one_drive_configuration]") unless params[:one_drive_configuration].nil?
        type.service_now_configuration = ServiceNowConfiguration.build(params[:service_now_configuration], context: "#{context}[:service_now_configuration]") unless params[:service_now_configuration].nil?
        type.confluence_configuration = ConfluenceConfiguration.build(params[:confluence_configuration], context: "#{context}[:confluence_configuration]") unless params[:confluence_configuration].nil?
        type.google_drive_configuration = GoogleDriveConfiguration.build(params[:google_drive_configuration], context: "#{context}[:google_drive_configuration]") unless params[:google_drive_configuration].nil?
        type.web_crawler_configuration = WebCrawlerConfiguration.build(params[:web_crawler_configuration], context: "#{context}[:web_crawler_configuration]") unless params[:web_crawler_configuration].nil?
        type.work_docs_configuration = WorkDocsConfiguration.build(params[:work_docs_configuration], context: "#{context}[:work_docs_configuration]") unless params[:work_docs_configuration].nil?
        type.fsx_configuration = FsxConfiguration.build(params[:fsx_configuration], context: "#{context}[:fsx_configuration]") unless params[:fsx_configuration].nil?
        type.slack_configuration = SlackConfiguration.build(params[:slack_configuration], context: "#{context}[:slack_configuration]") unless params[:slack_configuration].nil?
        type.box_configuration = BoxConfiguration.build(params[:box_configuration], context: "#{context}[:box_configuration]") unless params[:box_configuration].nil?
        type.quip_configuration = QuipConfiguration.build(params[:quip_configuration], context: "#{context}[:quip_configuration]") unless params[:quip_configuration].nil?
        type.jira_configuration = JiraConfiguration.build(params[:jira_configuration], context: "#{context}[:jira_configuration]") unless params[:jira_configuration].nil?
        type.git_hub_configuration = GitHubConfiguration.build(params[:git_hub_configuration], context: "#{context}[:git_hub_configuration]") unless params[:git_hub_configuration].nil?
        type
      end
    end

    module DataSourceGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSourceGroup, context: context)
        type = Types::DataSourceGroup.new
        type.group_id = params[:group_id]
        type.data_source_id = params[:data_source_id]
        type
      end
    end

    module DataSourceGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataSourceGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataSourceIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DataSourceInclusionsExclusionsStrings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DataSourceSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSourceSummary, context: context)
        type = Types::DataSourceSummary.new
        type.name = params[:name]
        type.id = params[:id]
        type.type = params[:type]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.status = params[:status]
        type.language_code = params[:language_code]
        type
      end
    end

    module DataSourceSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataSourceSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataSourceSyncJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSourceSyncJob, context: context)
        type = Types::DataSourceSyncJob.new
        type.execution_id = params[:execution_id]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.status = params[:status]
        type.error_message = params[:error_message]
        type.error_code = params[:error_code]
        type.data_source_error_code = params[:data_source_error_code]
        type.metrics = DataSourceSyncJobMetrics.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type
      end
    end

    module DataSourceSyncJobHistoryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataSourceSyncJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataSourceSyncJobMetricTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSourceSyncJobMetricTarget, context: context)
        type = Types::DataSourceSyncJobMetricTarget.new
        type.data_source_id = params[:data_source_id]
        type.data_source_sync_job_id = params[:data_source_sync_job_id]
        type
      end
    end

    module DataSourceSyncJobMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSourceSyncJobMetrics, context: context)
        type = Types::DataSourceSyncJobMetrics.new
        type.documents_added = params[:documents_added]
        type.documents_modified = params[:documents_modified]
        type.documents_deleted = params[:documents_deleted]
        type.documents_failed = params[:documents_failed]
        type.documents_scanned = params[:documents_scanned]
        type
      end
    end

    module DataSourceToIndexFieldMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSourceToIndexFieldMapping, context: context)
        type = Types::DataSourceToIndexFieldMapping.new
        type.data_source_field_name = params[:data_source_field_name]
        type.date_field_format = params[:date_field_format]
        type.index_field_name = params[:index_field_name]
        type
      end
    end

    module DataSourceToIndexFieldMappingList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataSourceToIndexFieldMapping.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DataSourceVpcConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataSourceVpcConfiguration, context: context)
        type = Types::DataSourceVpcConfiguration.new
        type.subnet_ids = SubnetIdList.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.security_group_ids = SecurityGroupIdList.build(params[:security_group_ids], context: "#{context}[:security_group_ids]") unless params[:security_group_ids].nil?
        type
      end
    end

    module DatabaseConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DatabaseConfiguration, context: context)
        type = Types::DatabaseConfiguration.new
        type.database_engine_type = params[:database_engine_type]
        type.connection_configuration = ConnectionConfiguration.build(params[:connection_configuration], context: "#{context}[:connection_configuration]") unless params[:connection_configuration].nil?
        type.vpc_configuration = DataSourceVpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type.column_configuration = ColumnConfiguration.build(params[:column_configuration], context: "#{context}[:column_configuration]") unless params[:column_configuration].nil?
        type.acl_configuration = AclConfiguration.build(params[:acl_configuration], context: "#{context}[:acl_configuration]") unless params[:acl_configuration].nil?
        type.sql_configuration = SqlConfiguration.build(params[:sql_configuration], context: "#{context}[:sql_configuration]") unless params[:sql_configuration].nil?
        type
      end
    end

    module DeleteDataSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataSourceInput, context: context)
        type = Types::DeleteDataSourceInput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type
      end
    end

    module DeleteDataSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDataSourceOutput, context: context)
        type = Types::DeleteDataSourceOutput.new
        type
      end
    end

    module DeleteExperienceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteExperienceInput, context: context)
        type = Types::DeleteExperienceInput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type
      end
    end

    module DeleteExperienceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteExperienceOutput, context: context)
        type = Types::DeleteExperienceOutput.new
        type
      end
    end

    module DeleteFaqInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFaqInput, context: context)
        type = Types::DeleteFaqInput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type
      end
    end

    module DeleteFaqOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFaqOutput, context: context)
        type = Types::DeleteFaqOutput.new
        type
      end
    end

    module DeleteIndexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIndexInput, context: context)
        type = Types::DeleteIndexInput.new
        type.id = params[:id]
        type
      end
    end

    module DeleteIndexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIndexOutput, context: context)
        type = Types::DeleteIndexOutput.new
        type
      end
    end

    module DeletePrincipalMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePrincipalMappingInput, context: context)
        type = Types::DeletePrincipalMappingInput.new
        type.index_id = params[:index_id]
        type.data_source_id = params[:data_source_id]
        type.group_id = params[:group_id]
        type.ordering_id = params[:ordering_id]
        type
      end
    end

    module DeletePrincipalMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeletePrincipalMappingOutput, context: context)
        type = Types::DeletePrincipalMappingOutput.new
        type
      end
    end

    module DeleteQuerySuggestionsBlockListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteQuerySuggestionsBlockListInput, context: context)
        type = Types::DeleteQuerySuggestionsBlockListInput.new
        type.index_id = params[:index_id]
        type.id = params[:id]
        type
      end
    end

    module DeleteQuerySuggestionsBlockListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteQuerySuggestionsBlockListOutput, context: context)
        type = Types::DeleteQuerySuggestionsBlockListOutput.new
        type
      end
    end

    module DeleteThesaurusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteThesaurusInput, context: context)
        type = Types::DeleteThesaurusInput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type
      end
    end

    module DeleteThesaurusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteThesaurusOutput, context: context)
        type = Types::DeleteThesaurusOutput.new
        type
      end
    end

    module DescribeDataSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataSourceInput, context: context)
        type = Types::DescribeDataSourceInput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type
      end
    end

    module DescribeDataSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeDataSourceOutput, context: context)
        type = Types::DescribeDataSourceOutput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type.name = params[:name]
        type.type = params[:type]
        type.configuration = DataSourceConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.description = params[:description]
        type.status = params[:status]
        type.schedule = params[:schedule]
        type.role_arn = params[:role_arn]
        type.error_message = params[:error_message]
        type.language_code = params[:language_code]
        type.custom_document_enrichment_configuration = CustomDocumentEnrichmentConfiguration.build(params[:custom_document_enrichment_configuration], context: "#{context}[:custom_document_enrichment_configuration]") unless params[:custom_document_enrichment_configuration].nil?
        type
      end
    end

    module DescribeExperienceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExperienceInput, context: context)
        type = Types::DescribeExperienceInput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type
      end
    end

    module DescribeExperienceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeExperienceOutput, context: context)
        type = Types::DescribeExperienceOutput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type.name = params[:name]
        type.endpoints = ExperienceEndpoints.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type.configuration = ExperienceConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.description = params[:description]
        type.status = params[:status]
        type.role_arn = params[:role_arn]
        type.error_message = params[:error_message]
        type
      end
    end

    module DescribeFaqInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFaqInput, context: context)
        type = Types::DescribeFaqInput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type
      end
    end

    module DescribeFaqOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFaqOutput, context: context)
        type = Types::DescribeFaqOutput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type.name = params[:name]
        type.description = params[:description]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.s3_path = S3Path.build(params[:s3_path], context: "#{context}[:s3_path]") unless params[:s3_path].nil?
        type.status = params[:status]
        type.role_arn = params[:role_arn]
        type.error_message = params[:error_message]
        type.file_format = params[:file_format]
        type.language_code = params[:language_code]
        type
      end
    end

    module DescribeIndexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIndexInput, context: context)
        type = Types::DescribeIndexInput.new
        type.id = params[:id]
        type
      end
    end

    module DescribeIndexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeIndexOutput, context: context)
        type = Types::DescribeIndexOutput.new
        type.name = params[:name]
        type.id = params[:id]
        type.edition = params[:edition]
        type.role_arn = params[:role_arn]
        type.server_side_encryption_configuration = ServerSideEncryptionConfiguration.build(params[:server_side_encryption_configuration], context: "#{context}[:server_side_encryption_configuration]") unless params[:server_side_encryption_configuration].nil?
        type.status = params[:status]
        type.description = params[:description]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.document_metadata_configurations = DocumentMetadataConfigurationList.build(params[:document_metadata_configurations], context: "#{context}[:document_metadata_configurations]") unless params[:document_metadata_configurations].nil?
        type.index_statistics = IndexStatistics.build(params[:index_statistics], context: "#{context}[:index_statistics]") unless params[:index_statistics].nil?
        type.error_message = params[:error_message]
        type.capacity_units = CapacityUnitsConfiguration.build(params[:capacity_units], context: "#{context}[:capacity_units]") unless params[:capacity_units].nil?
        type.user_token_configurations = UserTokenConfigurationList.build(params[:user_token_configurations], context: "#{context}[:user_token_configurations]") unless params[:user_token_configurations].nil?
        type.user_context_policy = params[:user_context_policy]
        type.user_group_resolution_configuration = UserGroupResolutionConfiguration.build(params[:user_group_resolution_configuration], context: "#{context}[:user_group_resolution_configuration]") unless params[:user_group_resolution_configuration].nil?
        type
      end
    end

    module DescribePrincipalMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePrincipalMappingInput, context: context)
        type = Types::DescribePrincipalMappingInput.new
        type.index_id = params[:index_id]
        type.data_source_id = params[:data_source_id]
        type.group_id = params[:group_id]
        type
      end
    end

    module DescribePrincipalMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePrincipalMappingOutput, context: context)
        type = Types::DescribePrincipalMappingOutput.new
        type.index_id = params[:index_id]
        type.data_source_id = params[:data_source_id]
        type.group_id = params[:group_id]
        type.group_ordering_id_summaries = GroupOrderingIdSummaries.build(params[:group_ordering_id_summaries], context: "#{context}[:group_ordering_id_summaries]") unless params[:group_ordering_id_summaries].nil?
        type
      end
    end

    module DescribeQuerySuggestionsBlockListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeQuerySuggestionsBlockListInput, context: context)
        type = Types::DescribeQuerySuggestionsBlockListInput.new
        type.index_id = params[:index_id]
        type.id = params[:id]
        type
      end
    end

    module DescribeQuerySuggestionsBlockListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeQuerySuggestionsBlockListOutput, context: context)
        type = Types::DescribeQuerySuggestionsBlockListOutput.new
        type.index_id = params[:index_id]
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.status = params[:status]
        type.error_message = params[:error_message]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.source_s3_path = S3Path.build(params[:source_s3_path], context: "#{context}[:source_s3_path]") unless params[:source_s3_path].nil?
        type.item_count = params[:item_count]
        type.file_size_bytes = params[:file_size_bytes]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module DescribeQuerySuggestionsConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeQuerySuggestionsConfigInput, context: context)
        type = Types::DescribeQuerySuggestionsConfigInput.new
        type.index_id = params[:index_id]
        type
      end
    end

    module DescribeQuerySuggestionsConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeQuerySuggestionsConfigOutput, context: context)
        type = Types::DescribeQuerySuggestionsConfigOutput.new
        type.mode = params[:mode]
        type.status = params[:status]
        type.query_log_look_back_window_in_days = params[:query_log_look_back_window_in_days]
        type.include_queries_without_user_information = params[:include_queries_without_user_information]
        type.minimum_number_of_querying_users = params[:minimum_number_of_querying_users]
        type.minimum_query_count = params[:minimum_query_count]
        type.last_suggestions_build_time = params[:last_suggestions_build_time]
        type.last_clear_time = params[:last_clear_time]
        type.total_suggestions_count = params[:total_suggestions_count]
        type
      end
    end

    module DescribeThesaurusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeThesaurusInput, context: context)
        type = Types::DescribeThesaurusInput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type
      end
    end

    module DescribeThesaurusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeThesaurusOutput, context: context)
        type = Types::DescribeThesaurusOutput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type.name = params[:name]
        type.description = params[:description]
        type.status = params[:status]
        type.error_message = params[:error_message]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.role_arn = params[:role_arn]
        type.source_s3_path = S3Path.build(params[:source_s3_path], context: "#{context}[:source_s3_path]") unless params[:source_s3_path].nil?
        type.file_size_bytes = params[:file_size_bytes]
        type.term_count = params[:term_count]
        type.synonym_rule_count = params[:synonym_rule_count]
        type
      end
    end

    module DisassociateEntitiesFromExperienceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateEntitiesFromExperienceInput, context: context)
        type = Types::DisassociateEntitiesFromExperienceInput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type.entity_list = DisassociateEntityList.build(params[:entity_list], context: "#{context}[:entity_list]") unless params[:entity_list].nil?
        type
      end
    end

    module DisassociateEntitiesFromExperienceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociateEntitiesFromExperienceOutput, context: context)
        type = Types::DisassociateEntitiesFromExperienceOutput.new
        type.failed_entity_list = FailedEntityList.build(params[:failed_entity_list], context: "#{context}[:failed_entity_list]") unless params[:failed_entity_list].nil?
        type
      end
    end

    module DisassociateEntityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntityConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DisassociatePersonasFromEntitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociatePersonasFromEntitiesInput, context: context)
        type = Types::DisassociatePersonasFromEntitiesInput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type.entity_ids = EntityIdsList.build(params[:entity_ids], context: "#{context}[:entity_ids]") unless params[:entity_ids].nil?
        type
      end
    end

    module DisassociatePersonasFromEntitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DisassociatePersonasFromEntitiesOutput, context: context)
        type = Types::DisassociatePersonasFromEntitiesOutput.new
        type.failed_entity_list = FailedEntityList.build(params[:failed_entity_list], context: "#{context}[:failed_entity_list]") unless params[:failed_entity_list].nil?
        type
      end
    end

    module Document
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Document, context: context)
        type = Types::Document.new
        type.id = params[:id]
        type.title = params[:title]
        type.blob = params[:blob]
        type.s3_path = S3Path.build(params[:s3_path], context: "#{context}[:s3_path]") unless params[:s3_path].nil?
        type.attributes = DocumentAttributeList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.access_control_list = PrincipalList.build(params[:access_control_list], context: "#{context}[:access_control_list]") unless params[:access_control_list].nil?
        type.hierarchical_access_control_list = HierarchicalPrincipalList.build(params[:hierarchical_access_control_list], context: "#{context}[:hierarchical_access_control_list]") unless params[:hierarchical_access_control_list].nil?
        type.content_type = params[:content_type]
        type
      end
    end

    module DocumentAttribute
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentAttribute, context: context)
        type = Types::DocumentAttribute.new
        type.key = params[:key]
        type.value = DocumentAttributeValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module DocumentAttributeCondition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentAttributeCondition, context: context)
        type = Types::DocumentAttributeCondition.new
        type.condition_document_attribute_key = params[:condition_document_attribute_key]
        type.operator = params[:operator]
        type.condition_on_value = DocumentAttributeValue.build(params[:condition_on_value], context: "#{context}[:condition_on_value]") unless params[:condition_on_value].nil?
        type
      end
    end

    module DocumentAttributeKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DocumentAttributeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentAttribute.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentAttributeStringListValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DocumentAttributeTarget
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentAttributeTarget, context: context)
        type = Types::DocumentAttributeTarget.new
        type.target_document_attribute_key = params[:target_document_attribute_key]
        type.target_document_attribute_value_deletion = params[:target_document_attribute_value_deletion]
        type.target_document_attribute_value = DocumentAttributeValue.build(params[:target_document_attribute_value], context: "#{context}[:target_document_attribute_value]") unless params[:target_document_attribute_value].nil?
        type
      end
    end

    module DocumentAttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentAttributeValue, context: context)
        type = Types::DocumentAttributeValue.new
        type.string_value = params[:string_value]
        type.string_list_value = DocumentAttributeStringListValue.build(params[:string_list_value], context: "#{context}[:string_list_value]") unless params[:string_list_value].nil?
        type.long_value = params[:long_value]
        type.date_value = params[:date_value]
        type
      end
    end

    module DocumentAttributeValueCountPair
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentAttributeValueCountPair, context: context)
        type = Types::DocumentAttributeValueCountPair.new
        type.document_attribute_value = DocumentAttributeValue.build(params[:document_attribute_value], context: "#{context}[:document_attribute_value]") unless params[:document_attribute_value].nil?
        type.count = params[:count]
        type.facet_results = FacetResultList.build(params[:facet_results], context: "#{context}[:facet_results]") unless params[:facet_results].nil?
        type
      end
    end

    module DocumentAttributeValueCountPairList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentAttributeValueCountPair.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module DocumentInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentInfo, context: context)
        type = Types::DocumentInfo.new
        type.document_id = params[:document_id]
        type.attributes = DocumentAttributeList.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module DocumentInfoList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentInfo.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Document.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentMetadataConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentMetadataConfiguration, context: context)
        type = Types::DocumentMetadataConfiguration.new
        type.name = params[:name]
        type.type = params[:type]
        type.relevance = Relevance.build(params[:relevance], context: "#{context}[:relevance]") unless params[:relevance].nil?
        type.search = Search.build(params[:search], context: "#{context}[:search]") unless params[:search].nil?
        type
      end
    end

    module DocumentMetadataConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentMetadataConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentRelevanceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentRelevanceConfiguration, context: context)
        type = Types::DocumentRelevanceConfiguration.new
        type.name = params[:name]
        type.relevance = Relevance.build(params[:relevance], context: "#{context}[:relevance]") unless params[:relevance].nil?
        type
      end
    end

    module DocumentRelevanceOverrideConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DocumentRelevanceConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentStatusList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Status.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DocumentsMetadataConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DocumentsMetadataConfiguration, context: context)
        type = Types::DocumentsMetadataConfiguration.new
        type.s3_prefix = params[:s3_prefix]
        type
      end
    end

    module EntityConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityConfiguration, context: context)
        type = Types::EntityConfiguration.new
        type.entity_id = params[:entity_id]
        type.entity_type = params[:entity_type]
        type
      end
    end

    module EntityDisplayData
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityDisplayData, context: context)
        type = Types::EntityDisplayData.new
        type.user_name = params[:user_name]
        type.group_name = params[:group_name]
        type.identified_user_name = params[:identified_user_name]
        type.first_name = params[:first_name]
        type.last_name = params[:last_name]
        type
      end
    end

    module EntityIdsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module EntityPersonaConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EntityPersonaConfiguration, context: context)
        type = Types::EntityPersonaConfiguration.new
        type.entity_id = params[:entity_id]
        type.persona = params[:persona]
        type
      end
    end

    module EntityPersonaConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EntityPersonaConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExcludeMimeTypesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExcludeSharedDrivesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExcludeUserAccountsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ExperienceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperienceConfiguration, context: context)
        type = Types::ExperienceConfiguration.new
        type.content_source_configuration = ContentSourceConfiguration.build(params[:content_source_configuration], context: "#{context}[:content_source_configuration]") unless params[:content_source_configuration].nil?
        type.user_identity_configuration = UserIdentityConfiguration.build(params[:user_identity_configuration], context: "#{context}[:user_identity_configuration]") unless params[:user_identity_configuration].nil?
        type
      end
    end

    module ExperienceEndpoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperienceEndpoint, context: context)
        type = Types::ExperienceEndpoint.new
        type.endpoint_type = params[:endpoint_type]
        type.endpoint = params[:endpoint]
        type
      end
    end

    module ExperienceEndpoints
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExperienceEndpoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExperienceEntitiesSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperienceEntitiesSummary, context: context)
        type = Types::ExperienceEntitiesSummary.new
        type.entity_id = params[:entity_id]
        type.entity_type = params[:entity_type]
        type.display_data = EntityDisplayData.build(params[:display_data], context: "#{context}[:display_data]") unless params[:display_data].nil?
        type
      end
    end

    module ExperienceEntitiesSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExperienceEntitiesSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ExperiencesSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExperiencesSummary, context: context)
        type = Types::ExperiencesSummary.new
        type.name = params[:name]
        type.id = params[:id]
        type.created_at = params[:created_at]
        type.status = params[:status]
        type.endpoints = ExperienceEndpoints.build(params[:endpoints], context: "#{context}[:endpoints]") unless params[:endpoints].nil?
        type
      end
    end

    module ExperiencesSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ExperiencesSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Facet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Facet, context: context)
        type = Types::Facet.new
        type.document_attribute_key = params[:document_attribute_key]
        type.facets = FacetList.build(params[:facets], context: "#{context}[:facets]") unless params[:facets].nil?
        type.max_results = params[:max_results]
        type
      end
    end

    module FacetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Facet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FacetResult
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FacetResult, context: context)
        type = Types::FacetResult.new
        type.document_attribute_key = params[:document_attribute_key]
        type.document_attribute_value_type = params[:document_attribute_value_type]
        type.document_attribute_value_count_pairs = DocumentAttributeValueCountPairList.build(params[:document_attribute_value_count_pairs], context: "#{context}[:document_attribute_value_count_pairs]") unless params[:document_attribute_value_count_pairs].nil?
        type
      end
    end

    module FacetResultList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FacetResult.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FailedEntity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FailedEntity, context: context)
        type = Types::FailedEntity.new
        type.entity_id = params[:entity_id]
        type.error_message = params[:error_message]
        type
      end
    end

    module FailedEntityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FailedEntity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FaqIdsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FaqStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FaqStatistics, context: context)
        type = Types::FaqStatistics.new
        type.indexed_question_answers_count = params[:indexed_question_answers_count]
        type
      end
    end

    module FaqSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FaqSummary, context: context)
        type = Types::FaqSummary.new
        type.id = params[:id]
        type.name = params[:name]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.file_format = params[:file_format]
        type.language_code = params[:language_code]
        type
      end
    end

    module FaqSummaryItems
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FaqSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FolderIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FsxConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FsxConfiguration, context: context)
        type = Types::FsxConfiguration.new
        type.file_system_id = params[:file_system_id]
        type.file_system_type = params[:file_system_type]
        type.vpc_configuration = DataSourceVpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type.secret_arn = params[:secret_arn]
        type.inclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless params[:inclusion_patterns].nil?
        type.exclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless params[:exclusion_patterns].nil?
        type.field_mappings = DataSourceToIndexFieldMappingList.build(params[:field_mappings], context: "#{context}[:field_mappings]") unless params[:field_mappings].nil?
        type
      end
    end

    module GetQuerySuggestionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQuerySuggestionsInput, context: context)
        type = Types::GetQuerySuggestionsInput.new
        type.index_id = params[:index_id]
        type.query_text = params[:query_text]
        type.max_suggestions_count = params[:max_suggestions_count]
        type
      end
    end

    module GetQuerySuggestionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetQuerySuggestionsOutput, context: context)
        type = Types::GetQuerySuggestionsOutput.new
        type.query_suggestions_id = params[:query_suggestions_id]
        type.suggestions = SuggestionList.build(params[:suggestions], context: "#{context}[:suggestions]") unless params[:suggestions].nil?
        type
      end
    end

    module GetSnapshotsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSnapshotsInput, context: context)
        type = Types::GetSnapshotsInput.new
        type.index_id = params[:index_id]
        type.interval = params[:interval]
        type.metric_type = params[:metric_type]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetSnapshotsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSnapshotsOutput, context: context)
        type = Types::GetSnapshotsOutput.new
        type.snap_shot_time_filter = TimeRange.build(params[:snap_shot_time_filter], context: "#{context}[:snap_shot_time_filter]") unless params[:snap_shot_time_filter].nil?
        type.snapshots_data_header = SnapshotsDataHeaderFields.build(params[:snapshots_data_header], context: "#{context}[:snapshots_data_header]") unless params[:snapshots_data_header].nil?
        type.snapshots_data = SnapshotsDataRecords.build(params[:snapshots_data], context: "#{context}[:snapshots_data]") unless params[:snapshots_data].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module GitHubConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GitHubConfiguration, context: context)
        type = Types::GitHubConfiguration.new
        type.saa_s_configuration = SaaSConfiguration.build(params[:saa_s_configuration], context: "#{context}[:saa_s_configuration]") unless params[:saa_s_configuration].nil?
        type.on_premise_configuration = OnPremiseConfiguration.build(params[:on_premise_configuration], context: "#{context}[:on_premise_configuration]") unless params[:on_premise_configuration].nil?
        type.type = params[:type]
        type.secret_arn = params[:secret_arn]
        type.use_change_log = params[:use_change_log]
        type.git_hub_document_crawl_properties = GitHubDocumentCrawlProperties.build(params[:git_hub_document_crawl_properties], context: "#{context}[:git_hub_document_crawl_properties]") unless params[:git_hub_document_crawl_properties].nil?
        type.repository_filter = RepositoryNames.build(params[:repository_filter], context: "#{context}[:repository_filter]") unless params[:repository_filter].nil?
        type.inclusion_folder_name_patterns = StringList.build(params[:inclusion_folder_name_patterns], context: "#{context}[:inclusion_folder_name_patterns]") unless params[:inclusion_folder_name_patterns].nil?
        type.inclusion_file_type_patterns = StringList.build(params[:inclusion_file_type_patterns], context: "#{context}[:inclusion_file_type_patterns]") unless params[:inclusion_file_type_patterns].nil?
        type.inclusion_file_name_patterns = StringList.build(params[:inclusion_file_name_patterns], context: "#{context}[:inclusion_file_name_patterns]") unless params[:inclusion_file_name_patterns].nil?
        type.exclusion_folder_name_patterns = StringList.build(params[:exclusion_folder_name_patterns], context: "#{context}[:exclusion_folder_name_patterns]") unless params[:exclusion_folder_name_patterns].nil?
        type.exclusion_file_type_patterns = StringList.build(params[:exclusion_file_type_patterns], context: "#{context}[:exclusion_file_type_patterns]") unless params[:exclusion_file_type_patterns].nil?
        type.exclusion_file_name_patterns = StringList.build(params[:exclusion_file_name_patterns], context: "#{context}[:exclusion_file_name_patterns]") unless params[:exclusion_file_name_patterns].nil?
        type.vpc_configuration = DataSourceVpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type.git_hub_repository_configuration_field_mappings = DataSourceToIndexFieldMappingList.build(params[:git_hub_repository_configuration_field_mappings], context: "#{context}[:git_hub_repository_configuration_field_mappings]") unless params[:git_hub_repository_configuration_field_mappings].nil?
        type.git_hub_commit_configuration_field_mappings = DataSourceToIndexFieldMappingList.build(params[:git_hub_commit_configuration_field_mappings], context: "#{context}[:git_hub_commit_configuration_field_mappings]") unless params[:git_hub_commit_configuration_field_mappings].nil?
        type.git_hub_issue_document_configuration_field_mappings = DataSourceToIndexFieldMappingList.build(params[:git_hub_issue_document_configuration_field_mappings], context: "#{context}[:git_hub_issue_document_configuration_field_mappings]") unless params[:git_hub_issue_document_configuration_field_mappings].nil?
        type.git_hub_issue_comment_configuration_field_mappings = DataSourceToIndexFieldMappingList.build(params[:git_hub_issue_comment_configuration_field_mappings], context: "#{context}[:git_hub_issue_comment_configuration_field_mappings]") unless params[:git_hub_issue_comment_configuration_field_mappings].nil?
        type.git_hub_issue_attachment_configuration_field_mappings = DataSourceToIndexFieldMappingList.build(params[:git_hub_issue_attachment_configuration_field_mappings], context: "#{context}[:git_hub_issue_attachment_configuration_field_mappings]") unless params[:git_hub_issue_attachment_configuration_field_mappings].nil?
        type.git_hub_pull_request_comment_configuration_field_mappings = DataSourceToIndexFieldMappingList.build(params[:git_hub_pull_request_comment_configuration_field_mappings], context: "#{context}[:git_hub_pull_request_comment_configuration_field_mappings]") unless params[:git_hub_pull_request_comment_configuration_field_mappings].nil?
        type.git_hub_pull_request_document_configuration_field_mappings = DataSourceToIndexFieldMappingList.build(params[:git_hub_pull_request_document_configuration_field_mappings], context: "#{context}[:git_hub_pull_request_document_configuration_field_mappings]") unless params[:git_hub_pull_request_document_configuration_field_mappings].nil?
        type.git_hub_pull_request_document_attachment_configuration_field_mappings = DataSourceToIndexFieldMappingList.build(params[:git_hub_pull_request_document_attachment_configuration_field_mappings], context: "#{context}[:git_hub_pull_request_document_attachment_configuration_field_mappings]") unless params[:git_hub_pull_request_document_attachment_configuration_field_mappings].nil?
        type
      end
    end

    module GitHubDocumentCrawlProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GitHubDocumentCrawlProperties, context: context)
        type = Types::GitHubDocumentCrawlProperties.new
        type.crawl_repository_documents = params[:crawl_repository_documents]
        type.crawl_issue = params[:crawl_issue]
        type.crawl_issue_comment = params[:crawl_issue_comment]
        type.crawl_issue_comment_attachment = params[:crawl_issue_comment_attachment]
        type.crawl_pull_request = params[:crawl_pull_request]
        type.crawl_pull_request_comment = params[:crawl_pull_request_comment]
        type.crawl_pull_request_comment_attachment = params[:crawl_pull_request_comment_attachment]
        type
      end
    end

    module GoogleDriveConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GoogleDriveConfiguration, context: context)
        type = Types::GoogleDriveConfiguration.new
        type.secret_arn = params[:secret_arn]
        type.inclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless params[:inclusion_patterns].nil?
        type.exclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless params[:exclusion_patterns].nil?
        type.field_mappings = DataSourceToIndexFieldMappingList.build(params[:field_mappings], context: "#{context}[:field_mappings]") unless params[:field_mappings].nil?
        type.exclude_mime_types = ExcludeMimeTypesList.build(params[:exclude_mime_types], context: "#{context}[:exclude_mime_types]") unless params[:exclude_mime_types].nil?
        type.exclude_user_accounts = ExcludeUserAccountsList.build(params[:exclude_user_accounts], context: "#{context}[:exclude_user_accounts]") unless params[:exclude_user_accounts].nil?
        type.exclude_shared_drives = ExcludeSharedDrivesList.build(params[:exclude_shared_drives], context: "#{context}[:exclude_shared_drives]") unless params[:exclude_shared_drives].nil?
        type
      end
    end

    module GroupMembers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupMembers, context: context)
        type = Types::GroupMembers.new
        type.member_groups = MemberGroups.build(params[:member_groups], context: "#{context}[:member_groups]") unless params[:member_groups].nil?
        type.member_users = MemberUsers.build(params[:member_users], context: "#{context}[:member_users]") unless params[:member_users].nil?
        type.s3_pathfor_group_members = S3Path.build(params[:s3_pathfor_group_members], context: "#{context}[:s3_pathfor_group_members]") unless params[:s3_pathfor_group_members].nil?
        type
      end
    end

    module GroupOrderingIdSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupOrderingIdSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GroupOrderingIdSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupOrderingIdSummary, context: context)
        type = Types::GroupOrderingIdSummary.new
        type.status = params[:status]
        type.last_updated_at = params[:last_updated_at]
        type.received_at = params[:received_at]
        type.ordering_id = params[:ordering_id]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module GroupSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GroupSummary, context: context)
        type = Types::GroupSummary.new
        type.group_id = params[:group_id]
        type.ordering_id = params[:ordering_id]
        type
      end
    end

    module Groups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module HierarchicalPrincipal
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HierarchicalPrincipal, context: context)
        type = Types::HierarchicalPrincipal.new
        type.principal_list = PrincipalList.build(params[:principal_list], context: "#{context}[:principal_list]") unless params[:principal_list].nil?
        type
      end
    end

    module HierarchicalPrincipalList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HierarchicalPrincipal.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Highlight
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Highlight, context: context)
        type = Types::Highlight.new
        type.begin_offset = params[:begin_offset]
        type.end_offset = params[:end_offset]
        type.top_answer = params[:top_answer]
        type.type = params[:type]
        type
      end
    end

    module HighlightList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Highlight.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module HookConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HookConfiguration, context: context)
        type = Types::HookConfiguration.new
        type.invocation_condition = DocumentAttributeCondition.build(params[:invocation_condition], context: "#{context}[:invocation_condition]") unless params[:invocation_condition].nil?
        type.lambda_arn = params[:lambda_arn]
        type.s3_bucket = params[:s3_bucket]
        type
      end
    end

    module IndexConfigurationSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IndexConfigurationSummary, context: context)
        type = Types::IndexConfigurationSummary.new
        type.name = params[:name]
        type.id = params[:id]
        type.edition = params[:edition]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.status = params[:status]
        type
      end
    end

    module IndexConfigurationSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IndexConfigurationSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IndexStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IndexStatistics, context: context)
        type = Types::IndexStatistics.new
        type.faq_statistics = FaqStatistics.build(params[:faq_statistics], context: "#{context}[:faq_statistics]") unless params[:faq_statistics].nil?
        type.text_document_statistics = TextDocumentStatistics.build(params[:text_document_statistics], context: "#{context}[:text_document_statistics]") unless params[:text_document_statistics].nil?
        type
      end
    end

    module InlineCustomDocumentEnrichmentConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InlineCustomDocumentEnrichmentConfiguration, context: context)
        type = Types::InlineCustomDocumentEnrichmentConfiguration.new
        type.condition = DocumentAttributeCondition.build(params[:condition], context: "#{context}[:condition]") unless params[:condition].nil?
        type.target = DocumentAttributeTarget.build(params[:target], context: "#{context}[:target]") unless params[:target].nil?
        type.document_content_deletion = params[:document_content_deletion]
        type
      end
    end

    module InlineCustomDocumentEnrichmentConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InlineCustomDocumentEnrichmentConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServerException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServerException, context: context)
        type = Types::InternalServerException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module IssueSubEntityFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module IssueType
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module JiraConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JiraConfiguration, context: context)
        type = Types::JiraConfiguration.new
        type.jira_account_url = params[:jira_account_url]
        type.secret_arn = params[:secret_arn]
        type.use_change_log = params[:use_change_log]
        type.project = Project.build(params[:project], context: "#{context}[:project]") unless params[:project].nil?
        type.issue_type = IssueType.build(params[:issue_type], context: "#{context}[:issue_type]") unless params[:issue_type].nil?
        type.status = JiraStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.issue_sub_entity_filter = IssueSubEntityFilter.build(params[:issue_sub_entity_filter], context: "#{context}[:issue_sub_entity_filter]") unless params[:issue_sub_entity_filter].nil?
        type.attachment_field_mappings = DataSourceToIndexFieldMappingList.build(params[:attachment_field_mappings], context: "#{context}[:attachment_field_mappings]") unless params[:attachment_field_mappings].nil?
        type.comment_field_mappings = DataSourceToIndexFieldMappingList.build(params[:comment_field_mappings], context: "#{context}[:comment_field_mappings]") unless params[:comment_field_mappings].nil?
        type.issue_field_mappings = DataSourceToIndexFieldMappingList.build(params[:issue_field_mappings], context: "#{context}[:issue_field_mappings]") unless params[:issue_field_mappings].nil?
        type.project_field_mappings = DataSourceToIndexFieldMappingList.build(params[:project_field_mappings], context: "#{context}[:project_field_mappings]") unless params[:project_field_mappings].nil?
        type.work_log_field_mappings = DataSourceToIndexFieldMappingList.build(params[:work_log_field_mappings], context: "#{context}[:work_log_field_mappings]") unless params[:work_log_field_mappings].nil?
        type.inclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless params[:inclusion_patterns].nil?
        type.exclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless params[:exclusion_patterns].nil?
        type.vpc_configuration = DataSourceVpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type
      end
    end

    module JiraStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module JsonTokenTypeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JsonTokenTypeConfiguration, context: context)
        type = Types::JsonTokenTypeConfiguration.new
        type.user_name_attribute_field = params[:user_name_attribute_field]
        type.group_attribute_field = params[:group_attribute_field]
        type
      end
    end

    module JwtTokenTypeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JwtTokenTypeConfiguration, context: context)
        type = Types::JwtTokenTypeConfiguration.new
        type.key_location = params[:key_location]
        type.url = params[:url]
        type.secret_manager_arn = params[:secret_manager_arn]
        type.user_name_attribute_field = params[:user_name_attribute_field]
        type.group_attribute_field = params[:group_attribute_field]
        type.issuer = params[:issuer]
        type.claim_regex = params[:claim_regex]
        type
      end
    end

    module ListDataSourceSyncJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataSourceSyncJobsInput, context: context)
        type = Types::ListDataSourceSyncJobsInput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.start_time_filter = TimeRange.build(params[:start_time_filter], context: "#{context}[:start_time_filter]") unless params[:start_time_filter].nil?
        type.status_filter = params[:status_filter]
        type
      end
    end

    module ListDataSourceSyncJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataSourceSyncJobsOutput, context: context)
        type = Types::ListDataSourceSyncJobsOutput.new
        type.history = DataSourceSyncJobHistoryList.build(params[:history], context: "#{context}[:history]") unless params[:history].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDataSourcesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataSourcesInput, context: context)
        type = Types::ListDataSourcesInput.new
        type.index_id = params[:index_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDataSourcesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDataSourcesOutput, context: context)
        type = Types::ListDataSourcesOutput.new
        type.summary_items = DataSourceSummaryList.build(params[:summary_items], context: "#{context}[:summary_items]") unless params[:summary_items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListEntityPersonasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntityPersonasInput, context: context)
        type = Types::ListEntityPersonasInput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListEntityPersonasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListEntityPersonasOutput, context: context)
        type = Types::ListEntityPersonasOutput.new
        type.summary_items = PersonasSummaryList.build(params[:summary_items], context: "#{context}[:summary_items]") unless params[:summary_items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExperienceEntitiesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExperienceEntitiesInput, context: context)
        type = Types::ListExperienceEntitiesInput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExperienceEntitiesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExperienceEntitiesOutput, context: context)
        type = Types::ListExperienceEntitiesOutput.new
        type.summary_items = ExperienceEntitiesSummaryList.build(params[:summary_items], context: "#{context}[:summary_items]") unless params[:summary_items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListExperiencesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExperiencesInput, context: context)
        type = Types::ListExperiencesInput.new
        type.index_id = params[:index_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListExperiencesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListExperiencesOutput, context: context)
        type = Types::ListExperiencesOutput.new
        type.summary_items = ExperiencesSummaryList.build(params[:summary_items], context: "#{context}[:summary_items]") unless params[:summary_items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFaqsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFaqsInput, context: context)
        type = Types::ListFaqsInput.new
        type.index_id = params[:index_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListFaqsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFaqsOutput, context: context)
        type = Types::ListFaqsOutput.new
        type.next_token = params[:next_token]
        type.faq_summary_items = FaqSummaryItems.build(params[:faq_summary_items], context: "#{context}[:faq_summary_items]") unless params[:faq_summary_items].nil?
        type
      end
    end

    module ListGroupsOlderThanOrderingIdInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupsOlderThanOrderingIdInput, context: context)
        type = Types::ListGroupsOlderThanOrderingIdInput.new
        type.index_id = params[:index_id]
        type.data_source_id = params[:data_source_id]
        type.ordering_id = params[:ordering_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListGroupsOlderThanOrderingIdOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGroupsOlderThanOrderingIdOutput, context: context)
        type = Types::ListGroupsOlderThanOrderingIdOutput.new
        type.groups_summaries = ListOfGroupSummaries.build(params[:groups_summaries], context: "#{context}[:groups_summaries]") unless params[:groups_summaries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIndicesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIndicesInput, context: context)
        type = Types::ListIndicesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListIndicesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIndicesOutput, context: context)
        type = Types::ListIndicesOutput.new
        type.index_configuration_summary_items = IndexConfigurationSummaryList.build(params[:index_configuration_summary_items], context: "#{context}[:index_configuration_summary_items]") unless params[:index_configuration_summary_items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListOfGroupSummaries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GroupSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListQuerySuggestionsBlockListsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQuerySuggestionsBlockListsInput, context: context)
        type = Types::ListQuerySuggestionsBlockListsInput.new
        type.index_id = params[:index_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListQuerySuggestionsBlockListsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListQuerySuggestionsBlockListsOutput, context: context)
        type = Types::ListQuerySuggestionsBlockListsOutput.new
        type.block_list_summary_items = QuerySuggestionsBlockListSummaryItems.build(params[:block_list_summary_items], context: "#{context}[:block_list_summary_items]") unless params[:block_list_summary_items].nil?
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
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListThesauriInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThesauriInput, context: context)
        type = Types::ListThesauriInput.new
        type.index_id = params[:index_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListThesauriOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListThesauriOutput, context: context)
        type = Types::ListThesauriOutput.new
        type.next_token = params[:next_token]
        type.thesaurus_summary_items = ThesaurusSummaryItems.build(params[:thesaurus_summary_items], context: "#{context}[:thesaurus_summary_items]") unless params[:thesaurus_summary_items].nil?
        type
      end
    end

    module MemberGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemberGroup, context: context)
        type = Types::MemberGroup.new
        type.group_id = params[:group_id]
        type.data_source_id = params[:data_source_id]
        type
      end
    end

    module MemberGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MemberGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MemberUser
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MemberUser, context: context)
        type = Types::MemberUser.new
        type.user_id = params[:user_id]
        type
      end
    end

    module MemberUsers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MemberUser.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module OnPremiseConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OnPremiseConfiguration, context: context)
        type = Types::OnPremiseConfiguration.new
        type.host_url = params[:host_url]
        type.organization_name = params[:organization_name]
        type.ssl_certificate_s3_path = S3Path.build(params[:ssl_certificate_s3_path], context: "#{context}[:ssl_certificate_s3_path]") unless params[:ssl_certificate_s3_path].nil?
        type
      end
    end

    module OneDriveConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OneDriveConfiguration, context: context)
        type = Types::OneDriveConfiguration.new
        type.tenant_domain = params[:tenant_domain]
        type.secret_arn = params[:secret_arn]
        type.one_drive_users = OneDriveUsers.build(params[:one_drive_users], context: "#{context}[:one_drive_users]") unless params[:one_drive_users].nil?
        type.inclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless params[:inclusion_patterns].nil?
        type.exclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless params[:exclusion_patterns].nil?
        type.field_mappings = DataSourceToIndexFieldMappingList.build(params[:field_mappings], context: "#{context}[:field_mappings]") unless params[:field_mappings].nil?
        type.disable_local_groups = params[:disable_local_groups]
        type
      end
    end

    module OneDriveUserList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module OneDriveUsers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OneDriveUsers, context: context)
        type = Types::OneDriveUsers.new
        type.one_drive_user_list = OneDriveUserList.build(params[:one_drive_user_list], context: "#{context}[:one_drive_user_list]") unless params[:one_drive_user_list].nil?
        type.one_drive_user_s3_path = S3Path.build(params[:one_drive_user_s3_path], context: "#{context}[:one_drive_user_s3_path]") unless params[:one_drive_user_s3_path].nil?
        type
      end
    end

    module PersonasSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PersonasSummary, context: context)
        type = Types::PersonasSummary.new
        type.entity_id = params[:entity_id]
        type.persona = params[:persona]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module PersonasSummaryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PersonasSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Principal
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Principal, context: context)
        type = Types::Principal.new
        type.name = params[:name]
        type.type = params[:type]
        type.access = params[:access]
        type.data_source_id = params[:data_source_id]
        type
      end
    end

    module PrincipalList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Principal.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PrivateChannelFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Project
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProxyConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ProxyConfiguration, context: context)
        type = Types::ProxyConfiguration.new
        type.host = params[:host]
        type.port = params[:port]
        type.credentials = params[:credentials]
        type
      end
    end

    module PublicChannelFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PutPrincipalMappingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPrincipalMappingInput, context: context)
        type = Types::PutPrincipalMappingInput.new
        type.index_id = params[:index_id]
        type.data_source_id = params[:data_source_id]
        type.group_id = params[:group_id]
        type.group_members = GroupMembers.build(params[:group_members], context: "#{context}[:group_members]") unless params[:group_members].nil?
        type.ordering_id = params[:ordering_id]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module PutPrincipalMappingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutPrincipalMappingOutput, context: context)
        type = Types::PutPrincipalMappingOutput.new
        type
      end
    end

    module QueryInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryInput, context: context)
        type = Types::QueryInput.new
        type.index_id = params[:index_id]
        type.query_text = params[:query_text]
        type.attribute_filter = AttributeFilter.build(params[:attribute_filter], context: "#{context}[:attribute_filter]") unless params[:attribute_filter].nil?
        type.facets = FacetList.build(params[:facets], context: "#{context}[:facets]") unless params[:facets].nil?
        type.requested_document_attributes = DocumentAttributeKeyList.build(params[:requested_document_attributes], context: "#{context}[:requested_document_attributes]") unless params[:requested_document_attributes].nil?
        type.query_result_type_filter = params[:query_result_type_filter]
        type.document_relevance_override_configurations = DocumentRelevanceOverrideConfigurationList.build(params[:document_relevance_override_configurations], context: "#{context}[:document_relevance_override_configurations]") unless params[:document_relevance_override_configurations].nil?
        type.page_number = params[:page_number]
        type.page_size = params[:page_size]
        type.sorting_configuration = SortingConfiguration.build(params[:sorting_configuration], context: "#{context}[:sorting_configuration]") unless params[:sorting_configuration].nil?
        type.user_context = UserContext.build(params[:user_context], context: "#{context}[:user_context]") unless params[:user_context].nil?
        type.visitor_id = params[:visitor_id]
        type.spell_correction_configuration = SpellCorrectionConfiguration.build(params[:spell_correction_configuration], context: "#{context}[:spell_correction_configuration]") unless params[:spell_correction_configuration].nil?
        type
      end
    end

    module QueryOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryOutput, context: context)
        type = Types::QueryOutput.new
        type.query_id = params[:query_id]
        type.result_items = QueryResultItemList.build(params[:result_items], context: "#{context}[:result_items]") unless params[:result_items].nil?
        type.facet_results = FacetResultList.build(params[:facet_results], context: "#{context}[:facet_results]") unless params[:facet_results].nil?
        type.total_number_of_results = params[:total_number_of_results]
        type.warnings = WarningList.build(params[:warnings], context: "#{context}[:warnings]") unless params[:warnings].nil?
        type.spell_corrected_queries = SpellCorrectedQueryList.build(params[:spell_corrected_queries], context: "#{context}[:spell_corrected_queries]") unless params[:spell_corrected_queries].nil?
        type
      end
    end

    module QueryResultItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryResultItem, context: context)
        type = Types::QueryResultItem.new
        type.id = params[:id]
        type.type = params[:type]
        type.additional_attributes = AdditionalResultAttributeList.build(params[:additional_attributes], context: "#{context}[:additional_attributes]") unless params[:additional_attributes].nil?
        type.document_id = params[:document_id]
        type.document_title = TextWithHighlights.build(params[:document_title], context: "#{context}[:document_title]") unless params[:document_title].nil?
        type.document_excerpt = TextWithHighlights.build(params[:document_excerpt], context: "#{context}[:document_excerpt]") unless params[:document_excerpt].nil?
        type.document_uri = params[:document_uri]
        type.document_attributes = DocumentAttributeList.build(params[:document_attributes], context: "#{context}[:document_attributes]") unless params[:document_attributes].nil?
        type.score_attributes = ScoreAttributes.build(params[:score_attributes], context: "#{context}[:score_attributes]") unless params[:score_attributes].nil?
        type.feedback_token = params[:feedback_token]
        type
      end
    end

    module QueryResultItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QueryResultItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module QuerySuggestionsBlockListSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QuerySuggestionsBlockListSummary, context: context)
        type = Types::QuerySuggestionsBlockListSummary.new
        type.id = params[:id]
        type.name = params[:name]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type.item_count = params[:item_count]
        type
      end
    end

    module QuerySuggestionsBlockListSummaryItems
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << QuerySuggestionsBlockListSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module QuipConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QuipConfiguration, context: context)
        type = Types::QuipConfiguration.new
        type.domain = params[:domain]
        type.secret_arn = params[:secret_arn]
        type.crawl_file_comments = params[:crawl_file_comments]
        type.crawl_chat_rooms = params[:crawl_chat_rooms]
        type.crawl_attachments = params[:crawl_attachments]
        type.folder_ids = FolderIdList.build(params[:folder_ids], context: "#{context}[:folder_ids]") unless params[:folder_ids].nil?
        type.thread_field_mappings = DataSourceToIndexFieldMappingList.build(params[:thread_field_mappings], context: "#{context}[:thread_field_mappings]") unless params[:thread_field_mappings].nil?
        type.message_field_mappings = DataSourceToIndexFieldMappingList.build(params[:message_field_mappings], context: "#{context}[:message_field_mappings]") unless params[:message_field_mappings].nil?
        type.attachment_field_mappings = DataSourceToIndexFieldMappingList.build(params[:attachment_field_mappings], context: "#{context}[:attachment_field_mappings]") unless params[:attachment_field_mappings].nil?
        type.inclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless params[:inclusion_patterns].nil?
        type.exclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless params[:exclusion_patterns].nil?
        type.vpc_configuration = DataSourceVpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type
      end
    end

    module Relevance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Relevance, context: context)
        type = Types::Relevance.new
        type.freshness = params[:freshness]
        type.importance = params[:importance]
        type.duration = params[:duration]
        type.rank_order = params[:rank_order]
        type.value_importance_map = ValueImportanceMap.build(params[:value_importance_map], context: "#{context}[:value_importance_map]") unless params[:value_importance_map].nil?
        type
      end
    end

    module RelevanceFeedback
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RelevanceFeedback, context: context)
        type = Types::RelevanceFeedback.new
        type.result_id = params[:result_id]
        type.relevance_value = params[:relevance_value]
        type
      end
    end

    module RelevanceFeedbackList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << RelevanceFeedback.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module RepositoryNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ResourceAlreadyExistException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceAlreadyExistException, context: context)
        type = Types::ResourceAlreadyExistException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceUnavailableException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceUnavailableException, context: context)
        type = Types::ResourceUnavailableException.new
        type.message = params[:message]
        type
      end
    end

    module S3DataSourceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3DataSourceConfiguration, context: context)
        type = Types::S3DataSourceConfiguration.new
        type.bucket_name = params[:bucket_name]
        type.inclusion_prefixes = DataSourceInclusionsExclusionsStrings.build(params[:inclusion_prefixes], context: "#{context}[:inclusion_prefixes]") unless params[:inclusion_prefixes].nil?
        type.inclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless params[:inclusion_patterns].nil?
        type.exclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless params[:exclusion_patterns].nil?
        type.documents_metadata_configuration = DocumentsMetadataConfiguration.build(params[:documents_metadata_configuration], context: "#{context}[:documents_metadata_configuration]") unless params[:documents_metadata_configuration].nil?
        type.access_control_list_configuration = AccessControlListConfiguration.build(params[:access_control_list_configuration], context: "#{context}[:access_control_list_configuration]") unless params[:access_control_list_configuration].nil?
        type
      end
    end

    module S3Path
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Path, context: context)
        type = Types::S3Path.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type
      end
    end

    module SaaSConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SaaSConfiguration, context: context)
        type = Types::SaaSConfiguration.new
        type.organization_name = params[:organization_name]
        type.host_url = params[:host_url]
        type
      end
    end

    module SalesforceChatterFeedConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SalesforceChatterFeedConfiguration, context: context)
        type = Types::SalesforceChatterFeedConfiguration.new
        type.document_data_field_name = params[:document_data_field_name]
        type.document_title_field_name = params[:document_title_field_name]
        type.field_mappings = DataSourceToIndexFieldMappingList.build(params[:field_mappings], context: "#{context}[:field_mappings]") unless params[:field_mappings].nil?
        type.include_filter_types = SalesforceChatterFeedIncludeFilterTypes.build(params[:include_filter_types], context: "#{context}[:include_filter_types]") unless params[:include_filter_types].nil?
        type
      end
    end

    module SalesforceChatterFeedIncludeFilterTypes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SalesforceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SalesforceConfiguration, context: context)
        type = Types::SalesforceConfiguration.new
        type.server_url = params[:server_url]
        type.secret_arn = params[:secret_arn]
        type.standard_object_configurations = SalesforceStandardObjectConfigurationList.build(params[:standard_object_configurations], context: "#{context}[:standard_object_configurations]") unless params[:standard_object_configurations].nil?
        type.knowledge_article_configuration = SalesforceKnowledgeArticleConfiguration.build(params[:knowledge_article_configuration], context: "#{context}[:knowledge_article_configuration]") unless params[:knowledge_article_configuration].nil?
        type.chatter_feed_configuration = SalesforceChatterFeedConfiguration.build(params[:chatter_feed_configuration], context: "#{context}[:chatter_feed_configuration]") unless params[:chatter_feed_configuration].nil?
        type.crawl_attachments = params[:crawl_attachments]
        type.standard_object_attachment_configuration = SalesforceStandardObjectAttachmentConfiguration.build(params[:standard_object_attachment_configuration], context: "#{context}[:standard_object_attachment_configuration]") unless params[:standard_object_attachment_configuration].nil?
        type.include_attachment_file_patterns = DataSourceInclusionsExclusionsStrings.build(params[:include_attachment_file_patterns], context: "#{context}[:include_attachment_file_patterns]") unless params[:include_attachment_file_patterns].nil?
        type.exclude_attachment_file_patterns = DataSourceInclusionsExclusionsStrings.build(params[:exclude_attachment_file_patterns], context: "#{context}[:exclude_attachment_file_patterns]") unless params[:exclude_attachment_file_patterns].nil?
        type
      end
    end

    module SalesforceCustomKnowledgeArticleTypeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SalesforceCustomKnowledgeArticleTypeConfiguration, context: context)
        type = Types::SalesforceCustomKnowledgeArticleTypeConfiguration.new
        type.name = params[:name]
        type.document_data_field_name = params[:document_data_field_name]
        type.document_title_field_name = params[:document_title_field_name]
        type.field_mappings = DataSourceToIndexFieldMappingList.build(params[:field_mappings], context: "#{context}[:field_mappings]") unless params[:field_mappings].nil?
        type
      end
    end

    module SalesforceCustomKnowledgeArticleTypeConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SalesforceCustomKnowledgeArticleTypeConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SalesforceKnowledgeArticleConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SalesforceKnowledgeArticleConfiguration, context: context)
        type = Types::SalesforceKnowledgeArticleConfiguration.new
        type.included_states = SalesforceKnowledgeArticleStateList.build(params[:included_states], context: "#{context}[:included_states]") unless params[:included_states].nil?
        type.standard_knowledge_article_type_configuration = SalesforceStandardKnowledgeArticleTypeConfiguration.build(params[:standard_knowledge_article_type_configuration], context: "#{context}[:standard_knowledge_article_type_configuration]") unless params[:standard_knowledge_article_type_configuration].nil?
        type.custom_knowledge_article_type_configurations = SalesforceCustomKnowledgeArticleTypeConfigurationList.build(params[:custom_knowledge_article_type_configurations], context: "#{context}[:custom_knowledge_article_type_configurations]") unless params[:custom_knowledge_article_type_configurations].nil?
        type
      end
    end

    module SalesforceKnowledgeArticleStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SalesforceStandardKnowledgeArticleTypeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SalesforceStandardKnowledgeArticleTypeConfiguration, context: context)
        type = Types::SalesforceStandardKnowledgeArticleTypeConfiguration.new
        type.document_data_field_name = params[:document_data_field_name]
        type.document_title_field_name = params[:document_title_field_name]
        type.field_mappings = DataSourceToIndexFieldMappingList.build(params[:field_mappings], context: "#{context}[:field_mappings]") unless params[:field_mappings].nil?
        type
      end
    end

    module SalesforceStandardObjectAttachmentConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SalesforceStandardObjectAttachmentConfiguration, context: context)
        type = Types::SalesforceStandardObjectAttachmentConfiguration.new
        type.document_title_field_name = params[:document_title_field_name]
        type.field_mappings = DataSourceToIndexFieldMappingList.build(params[:field_mappings], context: "#{context}[:field_mappings]") unless params[:field_mappings].nil?
        type
      end
    end

    module SalesforceStandardObjectConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SalesforceStandardObjectConfiguration, context: context)
        type = Types::SalesforceStandardObjectConfiguration.new
        type.name = params[:name]
        type.document_data_field_name = params[:document_data_field_name]
        type.document_title_field_name = params[:document_title_field_name]
        type.field_mappings = DataSourceToIndexFieldMappingList.build(params[:field_mappings], context: "#{context}[:field_mappings]") unless params[:field_mappings].nil?
        type
      end
    end

    module SalesforceStandardObjectConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SalesforceStandardObjectConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ScoreAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScoreAttributes, context: context)
        type = Types::ScoreAttributes.new
        type.score_confidence = params[:score_confidence]
        type
      end
    end

    module Search
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Search, context: context)
        type = Types::Search.new
        type.facetable = params[:facetable]
        type.searchable = params[:searchable]
        type.displayable = params[:displayable]
        type.sortable = params[:sortable]
        type
      end
    end

    module SecurityGroupIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SeedUrlConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SeedUrlConfiguration, context: context)
        type = Types::SeedUrlConfiguration.new
        type.seed_urls = SeedUrlList.build(params[:seed_urls], context: "#{context}[:seed_urls]") unless params[:seed_urls].nil?
        type.web_crawler_mode = params[:web_crawler_mode]
        type
      end
    end

    module SeedUrlList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module ServiceNowConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceNowConfiguration, context: context)
        type = Types::ServiceNowConfiguration.new
        type.host_url = params[:host_url]
        type.secret_arn = params[:secret_arn]
        type.service_now_build_version = params[:service_now_build_version]
        type.knowledge_article_configuration = ServiceNowKnowledgeArticleConfiguration.build(params[:knowledge_article_configuration], context: "#{context}[:knowledge_article_configuration]") unless params[:knowledge_article_configuration].nil?
        type.service_catalog_configuration = ServiceNowServiceCatalogConfiguration.build(params[:service_catalog_configuration], context: "#{context}[:service_catalog_configuration]") unless params[:service_catalog_configuration].nil?
        type.authentication_type = params[:authentication_type]
        type
      end
    end

    module ServiceNowKnowledgeArticleConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceNowKnowledgeArticleConfiguration, context: context)
        type = Types::ServiceNowKnowledgeArticleConfiguration.new
        type.crawl_attachments = params[:crawl_attachments]
        type.include_attachment_file_patterns = DataSourceInclusionsExclusionsStrings.build(params[:include_attachment_file_patterns], context: "#{context}[:include_attachment_file_patterns]") unless params[:include_attachment_file_patterns].nil?
        type.exclude_attachment_file_patterns = DataSourceInclusionsExclusionsStrings.build(params[:exclude_attachment_file_patterns], context: "#{context}[:exclude_attachment_file_patterns]") unless params[:exclude_attachment_file_patterns].nil?
        type.document_data_field_name = params[:document_data_field_name]
        type.document_title_field_name = params[:document_title_field_name]
        type.field_mappings = DataSourceToIndexFieldMappingList.build(params[:field_mappings], context: "#{context}[:field_mappings]") unless params[:field_mappings].nil?
        type.filter_query = params[:filter_query]
        type
      end
    end

    module ServiceNowServiceCatalogConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceNowServiceCatalogConfiguration, context: context)
        type = Types::ServiceNowServiceCatalogConfiguration.new
        type.crawl_attachments = params[:crawl_attachments]
        type.include_attachment_file_patterns = DataSourceInclusionsExclusionsStrings.build(params[:include_attachment_file_patterns], context: "#{context}[:include_attachment_file_patterns]") unless params[:include_attachment_file_patterns].nil?
        type.exclude_attachment_file_patterns = DataSourceInclusionsExclusionsStrings.build(params[:exclude_attachment_file_patterns], context: "#{context}[:exclude_attachment_file_patterns]") unless params[:exclude_attachment_file_patterns].nil?
        type.document_data_field_name = params[:document_data_field_name]
        type.document_title_field_name = params[:document_title_field_name]
        type.field_mappings = DataSourceToIndexFieldMappingList.build(params[:field_mappings], context: "#{context}[:field_mappings]") unless params[:field_mappings].nil?
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

    module SharePointConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SharePointConfiguration, context: context)
        type = Types::SharePointConfiguration.new
        type.share_point_version = params[:share_point_version]
        type.urls = SharePointUrlList.build(params[:urls], context: "#{context}[:urls]") unless params[:urls].nil?
        type.secret_arn = params[:secret_arn]
        type.crawl_attachments = params[:crawl_attachments]
        type.use_change_log = params[:use_change_log]
        type.inclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless params[:inclusion_patterns].nil?
        type.exclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless params[:exclusion_patterns].nil?
        type.vpc_configuration = DataSourceVpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type.field_mappings = DataSourceToIndexFieldMappingList.build(params[:field_mappings], context: "#{context}[:field_mappings]") unless params[:field_mappings].nil?
        type.document_title_field_name = params[:document_title_field_name]
        type.disable_local_groups = params[:disable_local_groups]
        type.ssl_certificate_s3_path = S3Path.build(params[:ssl_certificate_s3_path], context: "#{context}[:ssl_certificate_s3_path]") unless params[:ssl_certificate_s3_path].nil?
        type
      end
    end

    module SharePointUrlList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SiteMapsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SiteMapsConfiguration, context: context)
        type = Types::SiteMapsConfiguration.new
        type.site_maps = SiteMapsList.build(params[:site_maps], context: "#{context}[:site_maps]") unless params[:site_maps].nil?
        type
      end
    end

    module SiteMapsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SlackConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SlackConfiguration, context: context)
        type = Types::SlackConfiguration.new
        type.team_id = params[:team_id]
        type.secret_arn = params[:secret_arn]
        type.vpc_configuration = DataSourceVpcConfiguration.build(params[:vpc_configuration], context: "#{context}[:vpc_configuration]") unless params[:vpc_configuration].nil?
        type.slack_entity_list = SlackEntityList.build(params[:slack_entity_list], context: "#{context}[:slack_entity_list]") unless params[:slack_entity_list].nil?
        type.use_change_log = params[:use_change_log]
        type.crawl_bot_message = params[:crawl_bot_message]
        type.exclude_archived = params[:exclude_archived]
        type.since_crawl_date = params[:since_crawl_date]
        type.look_back_period = params[:look_back_period]
        type.private_channel_filter = PrivateChannelFilter.build(params[:private_channel_filter], context: "#{context}[:private_channel_filter]") unless params[:private_channel_filter].nil?
        type.public_channel_filter = PublicChannelFilter.build(params[:public_channel_filter], context: "#{context}[:public_channel_filter]") unless params[:public_channel_filter].nil?
        type.inclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless params[:inclusion_patterns].nil?
        type.exclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless params[:exclusion_patterns].nil?
        type.field_mappings = DataSourceToIndexFieldMappingList.build(params[:field_mappings], context: "#{context}[:field_mappings]") unless params[:field_mappings].nil?
        type
      end
    end

    module SlackEntityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SnapshotsDataHeaderFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SnapshotsDataRecord
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SnapshotsDataRecords
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SnapshotsDataRecord.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SortingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SortingConfiguration, context: context)
        type = Types::SortingConfiguration.new
        type.document_attribute_key = params[:document_attribute_key]
        type.sort_order = params[:sort_order]
        type
      end
    end

    module SpellCorrectedQuery
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpellCorrectedQuery, context: context)
        type = Types::SpellCorrectedQuery.new
        type.suggested_query_text = params[:suggested_query_text]
        type.corrections = CorrectionList.build(params[:corrections], context: "#{context}[:corrections]") unless params[:corrections].nil?
        type
      end
    end

    module SpellCorrectedQueryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SpellCorrectedQuery.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SpellCorrectionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SpellCorrectionConfiguration, context: context)
        type = Types::SpellCorrectionConfiguration.new
        type.include_query_spell_check_suggestions = params[:include_query_spell_check_suggestions]
        type
      end
    end

    module SqlConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SqlConfiguration, context: context)
        type = Types::SqlConfiguration.new
        type.query_identifiers_enclosing_option = params[:query_identifiers_enclosing_option]
        type
      end
    end

    module StartDataSourceSyncJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDataSourceSyncJobInput, context: context)
        type = Types::StartDataSourceSyncJobInput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type
      end
    end

    module StartDataSourceSyncJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartDataSourceSyncJobOutput, context: context)
        type = Types::StartDataSourceSyncJobOutput.new
        type.execution_id = params[:execution_id]
        type
      end
    end

    module Status
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Status, context: context)
        type = Types::Status.new
        type.document_id = params[:document_id]
        type.document_status = params[:document_status]
        type.failure_code = params[:failure_code]
        type.failure_reason = params[:failure_reason]
        type
      end
    end

    module StopDataSourceSyncJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDataSourceSyncJobInput, context: context)
        type = Types::StopDataSourceSyncJobInput.new
        type.id = params[:id]
        type.index_id = params[:index_id]
        type
      end
    end

    module StopDataSourceSyncJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopDataSourceSyncJobOutput, context: context)
        type = Types::StopDataSourceSyncJobOutput.new
        type
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubmitFeedbackInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubmitFeedbackInput, context: context)
        type = Types::SubmitFeedbackInput.new
        type.index_id = params[:index_id]
        type.query_id = params[:query_id]
        type.click_feedback_items = ClickFeedbackList.build(params[:click_feedback_items], context: "#{context}[:click_feedback_items]") unless params[:click_feedback_items].nil?
        type.relevance_feedback_items = RelevanceFeedbackList.build(params[:relevance_feedback_items], context: "#{context}[:relevance_feedback_items]") unless params[:relevance_feedback_items].nil?
        type
      end
    end

    module SubmitFeedbackOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SubmitFeedbackOutput, context: context)
        type = Types::SubmitFeedbackOutput.new
        type
      end
    end

    module SubnetIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Suggestion
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Suggestion, context: context)
        type = Types::Suggestion.new
        type.id = params[:id]
        type.value = SuggestionValue.build(params[:value], context: "#{context}[:value]") unless params[:value].nil?
        type
      end
    end

    module SuggestionHighlight
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuggestionHighlight, context: context)
        type = Types::SuggestionHighlight.new
        type.begin_offset = params[:begin_offset]
        type.end_offset = params[:end_offset]
        type
      end
    end

    module SuggestionHighlightList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << SuggestionHighlight.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SuggestionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Suggestion.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SuggestionTextWithHighlights
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuggestionTextWithHighlights, context: context)
        type = Types::SuggestionTextWithHighlights.new
        type.text = params[:text]
        type.highlights = SuggestionHighlightList.build(params[:highlights], context: "#{context}[:highlights]") unless params[:highlights].nil?
        type
      end
    end

    module SuggestionValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuggestionValue, context: context)
        type = Types::SuggestionValue.new
        type.text = SuggestionTextWithHighlights.build(params[:text], context: "#{context}[:text]") unless params[:text].nil?
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
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

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TextDocumentStatistics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TextDocumentStatistics, context: context)
        type = Types::TextDocumentStatistics.new
        type.indexed_text_documents_count = params[:indexed_text_documents_count]
        type.indexed_text_bytes = params[:indexed_text_bytes]
        type
      end
    end

    module TextWithHighlights
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TextWithHighlights, context: context)
        type = Types::TextWithHighlights.new
        type.text = params[:text]
        type.highlights = HighlightList.build(params[:highlights], context: "#{context}[:highlights]") unless params[:highlights].nil?
        type
      end
    end

    module ThesaurusSummary
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThesaurusSummary, context: context)
        type = Types::ThesaurusSummary.new
        type.id = params[:id]
        type.name = params[:name]
        type.status = params[:status]
        type.created_at = params[:created_at]
        type.updated_at = params[:updated_at]
        type
      end
    end

    module ThesaurusSummaryItems
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ThesaurusSummary.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ThrottlingException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ThrottlingException, context: context)
        type = Types::ThrottlingException.new
        type.message = params[:message]
        type
      end
    end

    module TimeRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TimeRange, context: context)
        type = Types::TimeRange.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
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

    module UpdateDataSourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataSourceInput, context: context)
        type = Types::UpdateDataSourceInput.new
        type.id = params[:id]
        type.name = params[:name]
        type.index_id = params[:index_id]
        type.configuration = DataSourceConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.description = params[:description]
        type.schedule = params[:schedule]
        type.role_arn = params[:role_arn]
        type.language_code = params[:language_code]
        type.custom_document_enrichment_configuration = CustomDocumentEnrichmentConfiguration.build(params[:custom_document_enrichment_configuration], context: "#{context}[:custom_document_enrichment_configuration]") unless params[:custom_document_enrichment_configuration].nil?
        type
      end
    end

    module UpdateDataSourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDataSourceOutput, context: context)
        type = Types::UpdateDataSourceOutput.new
        type
      end
    end

    module UpdateExperienceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateExperienceInput, context: context)
        type = Types::UpdateExperienceInput.new
        type.id = params[:id]
        type.name = params[:name]
        type.index_id = params[:index_id]
        type.role_arn = params[:role_arn]
        type.configuration = ExperienceConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type.description = params[:description]
        type
      end
    end

    module UpdateExperienceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateExperienceOutput, context: context)
        type = Types::UpdateExperienceOutput.new
        type
      end
    end

    module UpdateIndexInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIndexInput, context: context)
        type = Types::UpdateIndexInput.new
        type.id = params[:id]
        type.name = params[:name]
        type.role_arn = params[:role_arn]
        type.description = params[:description]
        type.document_metadata_configuration_updates = DocumentMetadataConfigurationList.build(params[:document_metadata_configuration_updates], context: "#{context}[:document_metadata_configuration_updates]") unless params[:document_metadata_configuration_updates].nil?
        type.capacity_units = CapacityUnitsConfiguration.build(params[:capacity_units], context: "#{context}[:capacity_units]") unless params[:capacity_units].nil?
        type.user_token_configurations = UserTokenConfigurationList.build(params[:user_token_configurations], context: "#{context}[:user_token_configurations]") unless params[:user_token_configurations].nil?
        type.user_context_policy = params[:user_context_policy]
        type.user_group_resolution_configuration = UserGroupResolutionConfiguration.build(params[:user_group_resolution_configuration], context: "#{context}[:user_group_resolution_configuration]") unless params[:user_group_resolution_configuration].nil?
        type
      end
    end

    module UpdateIndexOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateIndexOutput, context: context)
        type = Types::UpdateIndexOutput.new
        type
      end
    end

    module UpdateQuerySuggestionsBlockListInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQuerySuggestionsBlockListInput, context: context)
        type = Types::UpdateQuerySuggestionsBlockListInput.new
        type.index_id = params[:index_id]
        type.id = params[:id]
        type.name = params[:name]
        type.description = params[:description]
        type.source_s3_path = S3Path.build(params[:source_s3_path], context: "#{context}[:source_s3_path]") unless params[:source_s3_path].nil?
        type.role_arn = params[:role_arn]
        type
      end
    end

    module UpdateQuerySuggestionsBlockListOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQuerySuggestionsBlockListOutput, context: context)
        type = Types::UpdateQuerySuggestionsBlockListOutput.new
        type
      end
    end

    module UpdateQuerySuggestionsConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQuerySuggestionsConfigInput, context: context)
        type = Types::UpdateQuerySuggestionsConfigInput.new
        type.index_id = params[:index_id]
        type.mode = params[:mode]
        type.query_log_look_back_window_in_days = params[:query_log_look_back_window_in_days]
        type.include_queries_without_user_information = params[:include_queries_without_user_information]
        type.minimum_number_of_querying_users = params[:minimum_number_of_querying_users]
        type.minimum_query_count = params[:minimum_query_count]
        type
      end
    end

    module UpdateQuerySuggestionsConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateQuerySuggestionsConfigOutput, context: context)
        type = Types::UpdateQuerySuggestionsConfigOutput.new
        type
      end
    end

    module UpdateThesaurusInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThesaurusInput, context: context)
        type = Types::UpdateThesaurusInput.new
        type.id = params[:id]
        type.name = params[:name]
        type.index_id = params[:index_id]
        type.description = params[:description]
        type.role_arn = params[:role_arn]
        type.source_s3_path = S3Path.build(params[:source_s3_path], context: "#{context}[:source_s3_path]") unless params[:source_s3_path].nil?
        type
      end
    end

    module UpdateThesaurusOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateThesaurusOutput, context: context)
        type = Types::UpdateThesaurusOutput.new
        type
      end
    end

    module Urls
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Urls, context: context)
        type = Types::Urls.new
        type.seed_url_configuration = SeedUrlConfiguration.build(params[:seed_url_configuration], context: "#{context}[:seed_url_configuration]") unless params[:seed_url_configuration].nil?
        type.site_maps_configuration = SiteMapsConfiguration.build(params[:site_maps_configuration], context: "#{context}[:site_maps_configuration]") unless params[:site_maps_configuration].nil?
        type
      end
    end

    module UserContext
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserContext, context: context)
        type = Types::UserContext.new
        type.token = params[:token]
        type.user_id = params[:user_id]
        type.groups = Groups.build(params[:groups], context: "#{context}[:groups]") unless params[:groups].nil?
        type.data_source_groups = DataSourceGroups.build(params[:data_source_groups], context: "#{context}[:data_source_groups]") unless params[:data_source_groups].nil?
        type
      end
    end

    module UserGroupResolutionConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserGroupResolutionConfiguration, context: context)
        type = Types::UserGroupResolutionConfiguration.new
        type.user_group_resolution_mode = params[:user_group_resolution_mode]
        type
      end
    end

    module UserIdentityConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserIdentityConfiguration, context: context)
        type = Types::UserIdentityConfiguration.new
        type.identity_attribute_name = params[:identity_attribute_name]
        type
      end
    end

    module UserTokenConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UserTokenConfiguration, context: context)
        type = Types::UserTokenConfiguration.new
        type.jwt_token_type_configuration = JwtTokenTypeConfiguration.build(params[:jwt_token_type_configuration], context: "#{context}[:jwt_token_type_configuration]") unless params[:jwt_token_type_configuration].nil?
        type.json_token_type_configuration = JsonTokenTypeConfiguration.build(params[:json_token_type_configuration], context: "#{context}[:json_token_type_configuration]") unless params[:json_token_type_configuration].nil?
        type
      end
    end

    module UserTokenConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << UserTokenConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
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

    module ValueImportanceMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Warning
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Warning, context: context)
        type = Types::Warning.new
        type.message = params[:message]
        type.code = params[:code]
        type
      end
    end

    module WarningList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Warning.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WebCrawlerConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WebCrawlerConfiguration, context: context)
        type = Types::WebCrawlerConfiguration.new
        type.urls = Urls.build(params[:urls], context: "#{context}[:urls]") unless params[:urls].nil?
        type.crawl_depth = params[:crawl_depth]
        type.max_links_per_page = params[:max_links_per_page]
        type.max_content_size_per_page_in_mega_bytes = params[:max_content_size_per_page_in_mega_bytes]
        type.max_urls_per_minute_crawl_rate = params[:max_urls_per_minute_crawl_rate]
        type.url_inclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:url_inclusion_patterns], context: "#{context}[:url_inclusion_patterns]") unless params[:url_inclusion_patterns].nil?
        type.url_exclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:url_exclusion_patterns], context: "#{context}[:url_exclusion_patterns]") unless params[:url_exclusion_patterns].nil?
        type.proxy_configuration = ProxyConfiguration.build(params[:proxy_configuration], context: "#{context}[:proxy_configuration]") unless params[:proxy_configuration].nil?
        type.authentication_configuration = AuthenticationConfiguration.build(params[:authentication_configuration], context: "#{context}[:authentication_configuration]") unless params[:authentication_configuration].nil?
        type
      end
    end

    module WorkDocsConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkDocsConfiguration, context: context)
        type = Types::WorkDocsConfiguration.new
        type.organization_id = params[:organization_id]
        type.crawl_comments = params[:crawl_comments]
        type.use_change_log = params[:use_change_log]
        type.inclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:inclusion_patterns], context: "#{context}[:inclusion_patterns]") unless params[:inclusion_patterns].nil?
        type.exclusion_patterns = DataSourceInclusionsExclusionsStrings.build(params[:exclusion_patterns], context: "#{context}[:exclusion_patterns]") unless params[:exclusion_patterns].nil?
        type.field_mappings = DataSourceToIndexFieldMappingList.build(params[:field_mappings], context: "#{context}[:field_mappings]") unless params[:field_mappings].nil?
        type
      end
    end

  end
end
