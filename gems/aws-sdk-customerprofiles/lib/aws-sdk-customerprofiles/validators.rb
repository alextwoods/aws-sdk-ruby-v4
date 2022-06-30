# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CustomerProfiles
  module Validators

    class AccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class AddProfileKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddProfileKeyInput, context: context)
        Hearth::Validator.validate!(input[:profile_id], ::String, context: "#{context}[:profile_id]")
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Validators::RequestValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class AddProfileKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddProfileKeyOutput, context: context)
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Validators::RequestValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class Address
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Address, context: context)
        Hearth::Validator.validate!(input[:address1], ::String, context: "#{context}[:address1]")
        Hearth::Validator.validate!(input[:address2], ::String, context: "#{context}[:address2]")
        Hearth::Validator.validate!(input[:address3], ::String, context: "#{context}[:address3]")
        Hearth::Validator.validate!(input[:address4], ::String, context: "#{context}[:address4]")
        Hearth::Validator.validate!(input[:city], ::String, context: "#{context}[:city]")
        Hearth::Validator.validate!(input[:county], ::String, context: "#{context}[:county]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:province], ::String, context: "#{context}[:province]")
        Hearth::Validator.validate!(input[:country], ::String, context: "#{context}[:country]")
        Hearth::Validator.validate!(input[:postal_code], ::String, context: "#{context}[:postal_code]")
      end
    end

    class AppflowIntegration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppflowIntegration, context: context)
        Validators::FlowDefinition.validate!(input[:flow_definition], context: "#{context}[:flow_definition]") unless input[:flow_definition].nil?
        Validators::Batches.validate!(input[:batches], context: "#{context}[:batches]") unless input[:batches].nil?
      end
    end

    class AppflowIntegrationWorkflowAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppflowIntegrationWorkflowAttributes, context: context)
        Hearth::Validator.validate!(input[:source_connector_type], ::String, context: "#{context}[:source_connector_type]")
        Hearth::Validator.validate!(input[:connector_profile_name], ::String, context: "#{context}[:connector_profile_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
      end
    end

    class AppflowIntegrationWorkflowMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppflowIntegrationWorkflowMetrics, context: context)
        Hearth::Validator.validate!(input[:records_processed], ::Integer, context: "#{context}[:records_processed]")
        Hearth::Validator.validate!(input[:steps_completed], ::Integer, context: "#{context}[:steps_completed]")
        Hearth::Validator.validate!(input[:total_steps], ::Integer, context: "#{context}[:total_steps]")
      end
    end

    class AppflowIntegrationWorkflowStep
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AppflowIntegrationWorkflowStep, context: context)
        Hearth::Validator.validate!(input[:flow_name], ::String, context: "#{context}[:flow_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:execution_message], ::String, context: "#{context}[:execution_message]")
        Hearth::Validator.validate!(input[:records_processed], ::Integer, context: "#{context}[:records_processed]")
        Hearth::Validator.validate!(input[:batch_records_start_time], ::String, context: "#{context}[:batch_records_start_time]")
        Hearth::Validator.validate!(input[:batch_records_end_time], ::String, context: "#{context}[:batch_records_end_time]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
      end
    end

    class AttributeSourceIdMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Attributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class AutoMerging
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AutoMerging, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::Consolidation.validate!(input[:consolidation], context: "#{context}[:consolidation]") unless input[:consolidation].nil?
        Validators::ConflictResolution.validate!(input[:conflict_resolution], context: "#{context}[:conflict_resolution]") unless input[:conflict_resolution].nil?
      end
    end

    class BadRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BadRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Batch
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Batch, context: context)
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
      end
    end

    class Batches
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Batch.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictResolution
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictResolution, context: context)
        Hearth::Validator.validate!(input[:conflict_resolving_model], ::String, context: "#{context}[:conflict_resolving_model]")
        Hearth::Validator.validate!(input[:source_name], ::String, context: "#{context}[:source_name]")
      end
    end

    class ConnectorOperator
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConnectorOperator, context: context)
        Hearth::Validator.validate!(input[:marketo], ::String, context: "#{context}[:marketo]")
        Hearth::Validator.validate!(input[:s3], ::String, context: "#{context}[:s3]")
        Hearth::Validator.validate!(input[:salesforce], ::String, context: "#{context}[:salesforce]")
        Hearth::Validator.validate!(input[:service_now], ::String, context: "#{context}[:service_now]")
        Hearth::Validator.validate!(input[:zendesk], ::String, context: "#{context}[:zendesk]")
      end
    end

    class Consolidation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Consolidation, context: context)
        Validators::MatchingAttributesList.validate!(input[:matching_attributes_list], context: "#{context}[:matching_attributes_list]") unless input[:matching_attributes_list].nil?
      end
    end

    class CreateDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:default_expiration_days], ::Integer, context: "#{context}[:default_expiration_days]")
        Hearth::Validator.validate!(input[:default_encryption_key], ::String, context: "#{context}[:default_encryption_key]")
        Hearth::Validator.validate!(input[:dead_letter_queue_url], ::String, context: "#{context}[:dead_letter_queue_url]")
        Validators::MatchingRequest.validate!(input[:matching], context: "#{context}[:matching]") unless input[:matching].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateDomainOutput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:default_expiration_days], ::Integer, context: "#{context}[:default_expiration_days]")
        Hearth::Validator.validate!(input[:default_encryption_key], ::String, context: "#{context}[:default_encryption_key]")
        Hearth::Validator.validate!(input[:dead_letter_queue_url], ::String, context: "#{context}[:dead_letter_queue_url]")
        Validators::MatchingResponse.validate!(input[:matching], context: "#{context}[:matching]") unless input[:matching].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateIntegrationWorkflowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIntegrationWorkflowInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:workflow_type], ::String, context: "#{context}[:workflow_type]")
        Validators::IntegrationConfig.validate!(input[:integration_config], context: "#{context}[:integration_config]") unless input[:integration_config].nil?
        Hearth::Validator.validate!(input[:object_type_name], ::String, context: "#{context}[:object_type_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateIntegrationWorkflowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateIntegrationWorkflowOutput, context: context)
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProfileInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:account_number], ::String, context: "#{context}[:account_number]")
        Hearth::Validator.validate!(input[:additional_information], ::String, context: "#{context}[:additional_information]")
        Hearth::Validator.validate!(input[:party_type], ::String, context: "#{context}[:party_type]")
        Hearth::Validator.validate!(input[:business_name], ::String, context: "#{context}[:business_name]")
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:middle_name], ::String, context: "#{context}[:middle_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
        Hearth::Validator.validate!(input[:birth_date], ::String, context: "#{context}[:birth_date]")
        Hearth::Validator.validate!(input[:gender], ::String, context: "#{context}[:gender]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:mobile_phone_number], ::String, context: "#{context}[:mobile_phone_number]")
        Hearth::Validator.validate!(input[:home_phone_number], ::String, context: "#{context}[:home_phone_number]")
        Hearth::Validator.validate!(input[:business_phone_number], ::String, context: "#{context}[:business_phone_number]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:personal_email_address], ::String, context: "#{context}[:personal_email_address]")
        Hearth::Validator.validate!(input[:business_email_address], ::String, context: "#{context}[:business_email_address]")
        Validators::Address.validate!(input[:address], context: "#{context}[:address]") unless input[:address].nil?
        Validators::Address.validate!(input[:shipping_address], context: "#{context}[:shipping_address]") unless input[:shipping_address].nil?
        Validators::Address.validate!(input[:mailing_address], context: "#{context}[:mailing_address]") unless input[:mailing_address].nil?
        Validators::Address.validate!(input[:billing_address], context: "#{context}[:billing_address]") unless input[:billing_address].nil?
        Validators::Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class CreateProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateProfileOutput, context: context)
        Hearth::Validator.validate!(input[:profile_id], ::String, context: "#{context}[:profile_id]")
      end
    end

    class DeleteDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DeleteDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteDomainOutput, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIntegrationInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
      end
    end

    class DeleteIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteIntegrationOutput, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProfileInput, context: context)
        Hearth::Validator.validate!(input[:profile_id], ::String, context: "#{context}[:profile_id]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DeleteProfileKeyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProfileKeyInput, context: context)
        Hearth::Validator.validate!(input[:profile_id], ::String, context: "#{context}[:profile_id]")
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Validators::RequestValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DeleteProfileKeyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProfileKeyOutput, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteProfileObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProfileObjectInput, context: context)
        Hearth::Validator.validate!(input[:profile_id], ::String, context: "#{context}[:profile_id]")
        Hearth::Validator.validate!(input[:profile_object_unique_key], ::String, context: "#{context}[:profile_object_unique_key]")
        Hearth::Validator.validate!(input[:object_type_name], ::String, context: "#{context}[:object_type_name]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class DeleteProfileObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProfileObjectOutput, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteProfileObjectTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProfileObjectTypeInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:object_type_name], ::String, context: "#{context}[:object_type_name]")
      end
    end

    class DeleteProfileObjectTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProfileObjectTypeOutput, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteProfileOutput, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class DeleteWorkflowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkflowInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
      end
    end

    class DeleteWorkflowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteWorkflowOutput, context: context)
      end
    end

    class DomainList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ListDomainItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class DomainStats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DomainStats, context: context)
        Hearth::Validator.validate!(input[:profile_count], ::Integer, context: "#{context}[:profile_count]")
        Hearth::Validator.validate!(input[:metering_profile_count], ::Integer, context: "#{context}[:metering_profile_count]")
        Hearth::Validator.validate!(input[:object_count], ::Integer, context: "#{context}[:object_count]")
        Hearth::Validator.validate!(input[:total_size], ::Integer, context: "#{context}[:total_size]")
      end
    end

    class ExportingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportingConfig, context: context)
        Validators::S3ExportingConfig.validate!(input[:s3_exporting], context: "#{context}[:s3_exporting]") unless input[:s3_exporting].nil?
      end
    end

    class ExportingLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ExportingLocation, context: context)
        Validators::S3ExportingLocation.validate!(input[:s3_exporting], context: "#{context}[:s3_exporting]") unless input[:s3_exporting].nil?
      end
    end

    class FieldMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ObjectTypeField.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class FieldNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FieldSourceProfileIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FieldSourceProfileIds, context: context)
        Hearth::Validator.validate!(input[:account_number], ::String, context: "#{context}[:account_number]")
        Hearth::Validator.validate!(input[:additional_information], ::String, context: "#{context}[:additional_information]")
        Hearth::Validator.validate!(input[:party_type], ::String, context: "#{context}[:party_type]")
        Hearth::Validator.validate!(input[:business_name], ::String, context: "#{context}[:business_name]")
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:middle_name], ::String, context: "#{context}[:middle_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
        Hearth::Validator.validate!(input[:birth_date], ::String, context: "#{context}[:birth_date]")
        Hearth::Validator.validate!(input[:gender], ::String, context: "#{context}[:gender]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:mobile_phone_number], ::String, context: "#{context}[:mobile_phone_number]")
        Hearth::Validator.validate!(input[:home_phone_number], ::String, context: "#{context}[:home_phone_number]")
        Hearth::Validator.validate!(input[:business_phone_number], ::String, context: "#{context}[:business_phone_number]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:personal_email_address], ::String, context: "#{context}[:personal_email_address]")
        Hearth::Validator.validate!(input[:business_email_address], ::String, context: "#{context}[:business_email_address]")
        Hearth::Validator.validate!(input[:address], ::String, context: "#{context}[:address]")
        Hearth::Validator.validate!(input[:shipping_address], ::String, context: "#{context}[:shipping_address]")
        Hearth::Validator.validate!(input[:mailing_address], ::String, context: "#{context}[:mailing_address]")
        Hearth::Validator.validate!(input[:billing_address], ::String, context: "#{context}[:billing_address]")
        Validators::AttributeSourceIdMap.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class FlowDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FlowDefinition, context: context)
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:flow_name], ::String, context: "#{context}[:flow_name]")
        Hearth::Validator.validate!(input[:kms_arn], ::String, context: "#{context}[:kms_arn]")
        Validators::SourceFlowConfig.validate!(input[:source_flow_config], context: "#{context}[:source_flow_config]") unless input[:source_flow_config].nil?
        Validators::Tasks.validate!(input[:tasks], context: "#{context}[:tasks]") unless input[:tasks].nil?
        Validators::TriggerConfig.validate!(input[:trigger_config], context: "#{context}[:trigger_config]") unless input[:trigger_config].nil?
      end
    end

    class GetAutoMergingPreviewInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAutoMergingPreviewInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Validators::Consolidation.validate!(input[:consolidation], context: "#{context}[:consolidation]") unless input[:consolidation].nil?
        Validators::ConflictResolution.validate!(input[:conflict_resolution], context: "#{context}[:conflict_resolution]") unless input[:conflict_resolution].nil?
      end
    end

    class GetAutoMergingPreviewOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetAutoMergingPreviewOutput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:number_of_matches_in_sample], ::Integer, context: "#{context}[:number_of_matches_in_sample]")
        Hearth::Validator.validate!(input[:number_of_profiles_in_sample], ::Integer, context: "#{context}[:number_of_profiles_in_sample]")
        Hearth::Validator.validate!(input[:number_of_profiles_will_be_merged], ::Integer, context: "#{context}[:number_of_profiles_will_be_merged]")
      end
    end

    class GetDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class GetDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetDomainOutput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:default_expiration_days], ::Integer, context: "#{context}[:default_expiration_days]")
        Hearth::Validator.validate!(input[:default_encryption_key], ::String, context: "#{context}[:default_encryption_key]")
        Hearth::Validator.validate!(input[:dead_letter_queue_url], ::String, context: "#{context}[:dead_letter_queue_url]")
        Validators::DomainStats.validate!(input[:stats], context: "#{context}[:stats]") unless input[:stats].nil?
        Validators::MatchingResponse.validate!(input[:matching], context: "#{context}[:matching]") unless input[:matching].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetIdentityResolutionJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityResolutionJobInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class GetIdentityResolutionJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIdentityResolutionJobOutput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:job_start_time], ::Time, context: "#{context}[:job_start_time]")
        Hearth::Validator.validate!(input[:job_end_time], ::Time, context: "#{context}[:job_end_time]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Hearth::Validator.validate!(input[:job_expiration_time], ::Time, context: "#{context}[:job_expiration_time]")
        Validators::AutoMerging.validate!(input[:auto_merging], context: "#{context}[:auto_merging]") unless input[:auto_merging].nil?
        Validators::ExportingLocation.validate!(input[:exporting_location], context: "#{context}[:exporting_location]") unless input[:exporting_location].nil?
        Validators::JobStats.validate!(input[:job_stats], context: "#{context}[:job_stats]") unless input[:job_stats].nil?
      end
    end

    class GetIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntegrationInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
      end
    end

    class GetIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetIntegrationOutput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:object_type_name], ::String, context: "#{context}[:object_type_name]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::ObjectTypeNames.validate!(input[:object_type_names], context: "#{context}[:object_type_names]") unless input[:object_type_names].nil?
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
      end
    end

    class GetMatchesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMatchesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class GetMatchesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetMatchesOutput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:match_generation_date], ::Time, context: "#{context}[:match_generation_date]")
        Hearth::Validator.validate!(input[:potential_matches], ::Integer, context: "#{context}[:potential_matches]")
        Validators::MatchesList.validate!(input[:matches], context: "#{context}[:matches]") unless input[:matches].nil?
      end
    end

    class GetProfileObjectTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProfileObjectTypeInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:object_type_name], ::String, context: "#{context}[:object_type_name]")
      end
    end

    class GetProfileObjectTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProfileObjectTypeOutput, context: context)
        Hearth::Validator.validate!(input[:object_type_name], ::String, context: "#{context}[:object_type_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:expiration_days], ::Integer, context: "#{context}[:expiration_days]")
        Hearth::Validator.validate!(input[:encryption_key], ::String, context: "#{context}[:encryption_key]")
        Hearth::Validator.validate!(input[:allow_profile_creation], ::TrueClass, ::FalseClass, context: "#{context}[:allow_profile_creation]")
        Hearth::Validator.validate!(input[:source_last_updated_timestamp_format], ::String, context: "#{context}[:source_last_updated_timestamp_format]")
        Validators::FieldMap.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
        Validators::KeyMap.validate!(input[:keys], context: "#{context}[:keys]") unless input[:keys].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class GetProfileObjectTypeTemplateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProfileObjectTypeTemplateInput, context: context)
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
      end
    end

    class GetProfileObjectTypeTemplateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetProfileObjectTypeTemplateOutput, context: context)
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:source_name], ::String, context: "#{context}[:source_name]")
        Hearth::Validator.validate!(input[:source_object], ::String, context: "#{context}[:source_object]")
        Hearth::Validator.validate!(input[:allow_profile_creation], ::TrueClass, ::FalseClass, context: "#{context}[:allow_profile_creation]")
        Hearth::Validator.validate!(input[:source_last_updated_timestamp_format], ::String, context: "#{context}[:source_last_updated_timestamp_format]")
        Validators::FieldMap.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
        Validators::KeyMap.validate!(input[:keys], context: "#{context}[:keys]") unless input[:keys].nil?
      end
    end

    class GetWorkflowInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkflowInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
      end
    end

    class GetWorkflowOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkflowOutput, context: context)
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:workflow_type], ::String, context: "#{context}[:workflow_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:error_description], ::String, context: "#{context}[:error_description]")
        Hearth::Validator.validate!(input[:start_date], ::Time, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Validators::WorkflowAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
        Validators::WorkflowMetrics.validate!(input[:metrics], context: "#{context}[:metrics]") unless input[:metrics].nil?
      end
    end

    class GetWorkflowStepsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkflowStepsInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class GetWorkflowStepsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetWorkflowStepsOutput, context: context)
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:workflow_type], ::String, context: "#{context}[:workflow_type]")
        Validators::WorkflowStepsList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class IdentityResolutionJob
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdentityResolutionJob, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:job_start_time], ::Time, context: "#{context}[:job_start_time]")
        Hearth::Validator.validate!(input[:job_end_time], ::Time, context: "#{context}[:job_end_time]")
        Validators::JobStats.validate!(input[:job_stats], context: "#{context}[:job_stats]") unless input[:job_stats].nil?
        Validators::ExportingLocation.validate!(input[:exporting_location], context: "#{context}[:exporting_location]") unless input[:exporting_location].nil?
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IdentityResolutionJobsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::IdentityResolutionJob.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class IncrementalPullConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IncrementalPullConfig, context: context)
        Hearth::Validator.validate!(input[:datetime_type_field_name], ::String, context: "#{context}[:datetime_type_field_name]")
      end
    end

    class IntegrationConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IntegrationConfig, context: context)
        Validators::AppflowIntegration.validate!(input[:appflow_integration], context: "#{context}[:appflow_integration]") unless input[:appflow_integration].nil?
      end
    end

    class IntegrationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ListIntegrationItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServerException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServerException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class JobSchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobSchedule, context: context)
        Hearth::Validator.validate!(input[:day_of_the_week], ::String, context: "#{context}[:day_of_the_week]")
        Hearth::Validator.validate!(input[:time], ::String, context: "#{context}[:time]")
      end
    end

    class JobStats
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobStats, context: context)
        Hearth::Validator.validate!(input[:number_of_profiles_reviewed], ::Integer, context: "#{context}[:number_of_profiles_reviewed]")
        Hearth::Validator.validate!(input[:number_of_matches_found], ::Integer, context: "#{context}[:number_of_matches_found]")
        Hearth::Validator.validate!(input[:number_of_merges_done], ::Integer, context: "#{context}[:number_of_merges_done]")
      end
    end

    class KeyMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Validators::ObjectTypeKeyList.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class ListAccountIntegrationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountIntegrationsInput, context: context)
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:include_hidden], ::TrueClass, ::FalseClass, context: "#{context}[:include_hidden]")
      end
    end

    class ListAccountIntegrationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAccountIntegrationsOutput, context: context)
        Validators::IntegrationList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListDomainItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainItem, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListDomainsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListDomainsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListDomainsOutput, context: context)
        Validators::DomainList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIdentityResolutionJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIdentityResolutionJobsInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListIdentityResolutionJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIdentityResolutionJobsOutput, context: context)
        Validators::IdentityResolutionJobsList.validate!(input[:identity_resolution_jobs_list], context: "#{context}[:identity_resolution_jobs_list]") unless input[:identity_resolution_jobs_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListIntegrationItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIntegrationItem, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:object_type_name], ::String, context: "#{context}[:object_type_name]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::ObjectTypeNames.validate!(input[:object_type_names], context: "#{context}[:object_type_names]") unless input[:object_type_names].nil?
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
      end
    end

    class ListIntegrationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIntegrationsInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:include_hidden], ::TrueClass, ::FalseClass, context: "#{context}[:include_hidden]")
      end
    end

    class ListIntegrationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListIntegrationsOutput, context: context)
        Validators::IntegrationList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProfileObjectTypeItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProfileObjectTypeItem, context: context)
        Hearth::Validator.validate!(input[:object_type_name], ::String, context: "#{context}[:object_type_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListProfileObjectTypeTemplateItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProfileObjectTypeTemplateItem, context: context)
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:source_name], ::String, context: "#{context}[:source_name]")
        Hearth::Validator.validate!(input[:source_object], ::String, context: "#{context}[:source_object]")
      end
    end

    class ListProfileObjectTypeTemplatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProfileObjectTypeTemplatesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListProfileObjectTypeTemplatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProfileObjectTypeTemplatesOutput, context: context)
        Validators::ProfileObjectTypeTemplateList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProfileObjectTypesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProfileObjectTypesInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListProfileObjectTypesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProfileObjectTypesOutput, context: context)
        Validators::ProfileObjectTypeList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListProfileObjectsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProfileObjectsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:object_type_name], ::String, context: "#{context}[:object_type_name]")
        Hearth::Validator.validate!(input[:profile_id], ::String, context: "#{context}[:profile_id]")
        Validators::ObjectFilter.validate!(input[:object_filter], context: "#{context}[:object_filter]") unless input[:object_filter].nil?
      end
    end

    class ListProfileObjectsItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProfileObjectsItem, context: context)
        Hearth::Validator.validate!(input[:object_type_name], ::String, context: "#{context}[:object_type_name]")
        Hearth::Validator.validate!(input[:profile_object_unique_key], ::String, context: "#{context}[:profile_object_unique_key]")
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
      end
    end

    class ListProfileObjectsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListProfileObjectsOutput, context: context)
        Validators::ProfileObjectList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
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
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ListWorkflowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkflowsInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:workflow_type], ::String, context: "#{context}[:workflow_type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:query_start_date], ::Time, context: "#{context}[:query_start_date]")
        Hearth::Validator.validate!(input[:query_end_date], ::Time, context: "#{context}[:query_end_date]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListWorkflowsItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkflowsItem, context: context)
        Hearth::Validator.validate!(input[:workflow_type], ::String, context: "#{context}[:workflow_type]")
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_description], ::String, context: "#{context}[:status_description]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
      end
    end

    class ListWorkflowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListWorkflowsOutput, context: context)
        Validators::WorkflowList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class MarketoSourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MarketoSourceProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
      end
    end

    class MatchItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MatchItem, context: context)
        Hearth::Validator.validate!(input[:match_id], ::String, context: "#{context}[:match_id]")
        Validators::ProfileIdList.validate!(input[:profile_ids], context: "#{context}[:profile_ids]") unless input[:profile_ids].nil?
        Hearth::Validator.validate!(input[:confidence_score], ::Float, context: "#{context}[:confidence_score]")
      end
    end

    class MatchesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MatchItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MatchingAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MatchingAttributesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::MatchingAttributes.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MatchingRequest
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MatchingRequest, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::JobSchedule.validate!(input[:job_schedule], context: "#{context}[:job_schedule]") unless input[:job_schedule].nil?
        Validators::AutoMerging.validate!(input[:auto_merging], context: "#{context}[:auto_merging]") unless input[:auto_merging].nil?
        Validators::ExportingConfig.validate!(input[:exporting_config], context: "#{context}[:exporting_config]") unless input[:exporting_config].nil?
      end
    end

    class MatchingResponse
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MatchingResponse, context: context)
        Hearth::Validator.validate!(input[:enabled], ::TrueClass, ::FalseClass, context: "#{context}[:enabled]")
        Validators::JobSchedule.validate!(input[:job_schedule], context: "#{context}[:job_schedule]") unless input[:job_schedule].nil?
        Validators::AutoMerging.validate!(input[:auto_merging], context: "#{context}[:auto_merging]") unless input[:auto_merging].nil?
        Validators::ExportingConfig.validate!(input[:exporting_config], context: "#{context}[:exporting_config]") unless input[:exporting_config].nil?
      end
    end

    class MergeProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergeProfilesInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:main_profile_id], ::String, context: "#{context}[:main_profile_id]")
        Validators::ProfileIdToBeMergedList.validate!(input[:profile_ids_to_be_merged], context: "#{context}[:profile_ids_to_be_merged]") unless input[:profile_ids_to_be_merged].nil?
        Validators::FieldSourceProfileIds.validate!(input[:field_source_profile_ids], context: "#{context}[:field_source_profile_ids]") unless input[:field_source_profile_ids].nil?
      end
    end

    class MergeProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MergeProfilesOutput, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ObjectFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectFilter, context: context)
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Validators::RequestValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class ObjectTypeField
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectTypeField, context: context)
        Hearth::Validator.validate!(input[:source], ::String, context: "#{context}[:source]")
        Hearth::Validator.validate!(input[:target], ::String, context: "#{context}[:target]")
        Hearth::Validator.validate!(input[:content_type], ::String, context: "#{context}[:content_type]")
      end
    end

    class ObjectTypeKey
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ObjectTypeKey, context: context)
        Validators::StandardIdentifierList.validate!(input[:standard_identifiers], context: "#{context}[:standard_identifiers]") unless input[:standard_identifiers].nil?
        Validators::FieldNameList.validate!(input[:field_names], context: "#{context}[:field_names]") unless input[:field_names].nil?
      end
    end

    class ObjectTypeKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ObjectTypeKey.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ObjectTypeNames
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Profile
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Profile, context: context)
        Hearth::Validator.validate!(input[:profile_id], ::String, context: "#{context}[:profile_id]")
        Hearth::Validator.validate!(input[:account_number], ::String, context: "#{context}[:account_number]")
        Hearth::Validator.validate!(input[:additional_information], ::String, context: "#{context}[:additional_information]")
        Hearth::Validator.validate!(input[:party_type], ::String, context: "#{context}[:party_type]")
        Hearth::Validator.validate!(input[:business_name], ::String, context: "#{context}[:business_name]")
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:middle_name], ::String, context: "#{context}[:middle_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
        Hearth::Validator.validate!(input[:birth_date], ::String, context: "#{context}[:birth_date]")
        Hearth::Validator.validate!(input[:gender], ::String, context: "#{context}[:gender]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:mobile_phone_number], ::String, context: "#{context}[:mobile_phone_number]")
        Hearth::Validator.validate!(input[:home_phone_number], ::String, context: "#{context}[:home_phone_number]")
        Hearth::Validator.validate!(input[:business_phone_number], ::String, context: "#{context}[:business_phone_number]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:personal_email_address], ::String, context: "#{context}[:personal_email_address]")
        Hearth::Validator.validate!(input[:business_email_address], ::String, context: "#{context}[:business_email_address]")
        Validators::Address.validate!(input[:address], context: "#{context}[:address]") unless input[:address].nil?
        Validators::Address.validate!(input[:shipping_address], context: "#{context}[:shipping_address]") unless input[:shipping_address].nil?
        Validators::Address.validate!(input[:mailing_address], context: "#{context}[:mailing_address]") unless input[:mailing_address].nil?
        Validators::Address.validate!(input[:billing_address], context: "#{context}[:billing_address]") unless input[:billing_address].nil?
        Validators::Attributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class ProfileIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProfileIdToBeMergedList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class ProfileList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Profile.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProfileObjectList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ListProfileObjectsItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProfileObjectTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ListProfileObjectTypeItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ProfileObjectTypeTemplateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ListProfileObjectTypeTemplateItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PutIntegrationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutIntegrationInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:object_type_name], ::String, context: "#{context}[:object_type_name]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::FlowDefinition.validate!(input[:flow_definition], context: "#{context}[:flow_definition]") unless input[:flow_definition].nil?
        Validators::ObjectTypeNames.validate!(input[:object_type_names], context: "#{context}[:object_type_names]") unless input[:object_type_names].nil?
      end
    end

    class PutIntegrationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutIntegrationOutput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:uri], ::String, context: "#{context}[:uri]")
        Hearth::Validator.validate!(input[:object_type_name], ::String, context: "#{context}[:object_type_name]")
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Validators::ObjectTypeNames.validate!(input[:object_type_names], context: "#{context}[:object_type_names]") unless input[:object_type_names].nil?
        Hearth::Validator.validate!(input[:workflow_id], ::String, context: "#{context}[:workflow_id]")
      end
    end

    class PutProfileObjectInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutProfileObjectInput, context: context)
        Hearth::Validator.validate!(input[:object_type_name], ::String, context: "#{context}[:object_type_name]")
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
      end
    end

    class PutProfileObjectOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutProfileObjectOutput, context: context)
        Hearth::Validator.validate!(input[:profile_object_unique_key], ::String, context: "#{context}[:profile_object_unique_key]")
      end
    end

    class PutProfileObjectTypeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutProfileObjectTypeInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:object_type_name], ::String, context: "#{context}[:object_type_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:expiration_days], ::Integer, context: "#{context}[:expiration_days]")
        Hearth::Validator.validate!(input[:encryption_key], ::String, context: "#{context}[:encryption_key]")
        Hearth::Validator.validate!(input[:allow_profile_creation], ::TrueClass, ::FalseClass, context: "#{context}[:allow_profile_creation]")
        Hearth::Validator.validate!(input[:source_last_updated_timestamp_format], ::String, context: "#{context}[:source_last_updated_timestamp_format]")
        Validators::FieldMap.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
        Validators::KeyMap.validate!(input[:keys], context: "#{context}[:keys]") unless input[:keys].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class PutProfileObjectTypeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutProfileObjectTypeOutput, context: context)
        Hearth::Validator.validate!(input[:object_type_name], ::String, context: "#{context}[:object_type_name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:template_id], ::String, context: "#{context}[:template_id]")
        Hearth::Validator.validate!(input[:expiration_days], ::Integer, context: "#{context}[:expiration_days]")
        Hearth::Validator.validate!(input[:encryption_key], ::String, context: "#{context}[:encryption_key]")
        Hearth::Validator.validate!(input[:allow_profile_creation], ::TrueClass, ::FalseClass, context: "#{context}[:allow_profile_creation]")
        Hearth::Validator.validate!(input[:source_last_updated_timestamp_format], ::String, context: "#{context}[:source_last_updated_timestamp_format]")
        Validators::FieldMap.validate!(input[:fields], context: "#{context}[:fields]") unless input[:fields].nil?
        Validators::KeyMap.validate!(input[:keys], context: "#{context}[:keys]") unless input[:keys].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3ExportingConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ExportingConfig, context: context)
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_key_name], ::String, context: "#{context}[:s3_key_name]")
      end
    end

    class S3ExportingLocation
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3ExportingLocation, context: context)
        Hearth::Validator.validate!(input[:s3_bucket_name], ::String, context: "#{context}[:s3_bucket_name]")
        Hearth::Validator.validate!(input[:s3_key_name], ::String, context: "#{context}[:s3_key_name]")
      end
    end

    class S3SourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3SourceProperties, context: context)
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:bucket_prefix], ::String, context: "#{context}[:bucket_prefix]")
      end
    end

    class SalesforceSourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SalesforceSourceProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
        Hearth::Validator.validate!(input[:enable_dynamic_field_update], ::TrueClass, ::FalseClass, context: "#{context}[:enable_dynamic_field_update]")
        Hearth::Validator.validate!(input[:include_deleted_records], ::TrueClass, ::FalseClass, context: "#{context}[:include_deleted_records]")
      end
    end

    class ScheduledTriggerProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScheduledTriggerProperties, context: context)
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
        Hearth::Validator.validate!(input[:data_pull_mode], ::String, context: "#{context}[:data_pull_mode]")
        Hearth::Validator.validate!(input[:schedule_start_time], ::Time, context: "#{context}[:schedule_start_time]")
        Hearth::Validator.validate!(input[:schedule_end_time], ::Time, context: "#{context}[:schedule_end_time]")
        Hearth::Validator.validate!(input[:timezone], ::String, context: "#{context}[:timezone]")
        Hearth::Validator.validate!(input[:schedule_offset], ::Integer, context: "#{context}[:schedule_offset]")
        Hearth::Validator.validate!(input[:first_execution_from], ::Time, context: "#{context}[:first_execution_from]")
      end
    end

    class SearchProfilesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchProfilesInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:key_name], ::String, context: "#{context}[:key_name]")
        Validators::RequestValueList.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
      end
    end

    class SearchProfilesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchProfilesOutput, context: context)
        Validators::ProfileList.validate!(input[:items], context: "#{context}[:items]") unless input[:items].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ServiceNowSourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServiceNowSourceProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
      end
    end

    class SourceConnectorProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceConnectorProperties, context: context)
        Validators::MarketoSourceProperties.validate!(input[:marketo], context: "#{context}[:marketo]") unless input[:marketo].nil?
        Validators::S3SourceProperties.validate!(input[:s3], context: "#{context}[:s3]") unless input[:s3].nil?
        Validators::SalesforceSourceProperties.validate!(input[:salesforce], context: "#{context}[:salesforce]") unless input[:salesforce].nil?
        Validators::ServiceNowSourceProperties.validate!(input[:service_now], context: "#{context}[:service_now]") unless input[:service_now].nil?
        Validators::ZendeskSourceProperties.validate!(input[:zendesk], context: "#{context}[:zendesk]") unless input[:zendesk].nil?
      end
    end

    class SourceFields
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SourceFlowConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SourceFlowConfig, context: context)
        Hearth::Validator.validate!(input[:connector_profile_name], ::String, context: "#{context}[:connector_profile_name]")
        Hearth::Validator.validate!(input[:connector_type], ::String, context: "#{context}[:connector_type]")
        Validators::IncrementalPullConfig.validate!(input[:incremental_pull_config], context: "#{context}[:incremental_pull_config]") unless input[:incremental_pull_config].nil?
        Validators::SourceConnectorProperties.validate!(input[:source_connector_properties], context: "#{context}[:source_connector_properties]") unless input[:source_connector_properties].nil?
      end
    end

    class StandardIdentifierList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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

    class TagMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class Task
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Task, context: context)
        Validators::ConnectorOperator.validate!(input[:connector_operator], context: "#{context}[:connector_operator]") unless input[:connector_operator].nil?
        Hearth::Validator.validate!(input[:destination_field], ::String, context: "#{context}[:destination_field]")
        Validators::SourceFields.validate!(input[:source_fields], context: "#{context}[:source_fields]") unless input[:source_fields].nil?
        Validators::TaskPropertiesMap.validate!(input[:task_properties], context: "#{context}[:task_properties]") unless input[:task_properties].nil?
        Hearth::Validator.validate!(input[:task_type], ::String, context: "#{context}[:task_type]")
      end
    end

    class TaskPropertiesMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Tasks
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::Task.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ThrottlingException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ThrottlingException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TriggerConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TriggerConfig, context: context)
        Hearth::Validator.validate!(input[:trigger_type], ::String, context: "#{context}[:trigger_type]")
        Validators::TriggerProperties.validate!(input[:trigger_properties], context: "#{context}[:trigger_properties]") unless input[:trigger_properties].nil?
      end
    end

    class TriggerProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TriggerProperties, context: context)
        Validators::ScheduledTriggerProperties.validate!(input[:scheduled], context: "#{context}[:scheduled]") unless input[:scheduled].nil?
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

    class UpdateAddress
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAddress, context: context)
        Hearth::Validator.validate!(input[:address1], ::String, context: "#{context}[:address1]")
        Hearth::Validator.validate!(input[:address2], ::String, context: "#{context}[:address2]")
        Hearth::Validator.validate!(input[:address3], ::String, context: "#{context}[:address3]")
        Hearth::Validator.validate!(input[:address4], ::String, context: "#{context}[:address4]")
        Hearth::Validator.validate!(input[:city], ::String, context: "#{context}[:city]")
        Hearth::Validator.validate!(input[:county], ::String, context: "#{context}[:county]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:province], ::String, context: "#{context}[:province]")
        Hearth::Validator.validate!(input[:country], ::String, context: "#{context}[:country]")
        Hearth::Validator.validate!(input[:postal_code], ::String, context: "#{context}[:postal_code]")
      end
    end

    class UpdateAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class UpdateDomainInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:default_expiration_days], ::Integer, context: "#{context}[:default_expiration_days]")
        Hearth::Validator.validate!(input[:default_encryption_key], ::String, context: "#{context}[:default_encryption_key]")
        Hearth::Validator.validate!(input[:dead_letter_queue_url], ::String, context: "#{context}[:dead_letter_queue_url]")
        Validators::MatchingRequest.validate!(input[:matching], context: "#{context}[:matching]") unless input[:matching].nil?
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateDomainOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateDomainOutput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:default_expiration_days], ::Integer, context: "#{context}[:default_expiration_days]")
        Hearth::Validator.validate!(input[:default_encryption_key], ::String, context: "#{context}[:default_encryption_key]")
        Hearth::Validator.validate!(input[:dead_letter_queue_url], ::String, context: "#{context}[:dead_letter_queue_url]")
        Validators::MatchingResponse.validate!(input[:matching], context: "#{context}[:matching]") unless input[:matching].nil?
        Hearth::Validator.validate!(input[:created_at], ::Time, context: "#{context}[:created_at]")
        Hearth::Validator.validate!(input[:last_updated_at], ::Time, context: "#{context}[:last_updated_at]")
        Validators::TagMap.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class UpdateProfileInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProfileInput, context: context)
        Hearth::Validator.validate!(input[:domain_name], ::String, context: "#{context}[:domain_name]")
        Hearth::Validator.validate!(input[:profile_id], ::String, context: "#{context}[:profile_id]")
        Hearth::Validator.validate!(input[:additional_information], ::String, context: "#{context}[:additional_information]")
        Hearth::Validator.validate!(input[:account_number], ::String, context: "#{context}[:account_number]")
        Hearth::Validator.validate!(input[:party_type], ::String, context: "#{context}[:party_type]")
        Hearth::Validator.validate!(input[:business_name], ::String, context: "#{context}[:business_name]")
        Hearth::Validator.validate!(input[:first_name], ::String, context: "#{context}[:first_name]")
        Hearth::Validator.validate!(input[:middle_name], ::String, context: "#{context}[:middle_name]")
        Hearth::Validator.validate!(input[:last_name], ::String, context: "#{context}[:last_name]")
        Hearth::Validator.validate!(input[:birth_date], ::String, context: "#{context}[:birth_date]")
        Hearth::Validator.validate!(input[:gender], ::String, context: "#{context}[:gender]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:mobile_phone_number], ::String, context: "#{context}[:mobile_phone_number]")
        Hearth::Validator.validate!(input[:home_phone_number], ::String, context: "#{context}[:home_phone_number]")
        Hearth::Validator.validate!(input[:business_phone_number], ::String, context: "#{context}[:business_phone_number]")
        Hearth::Validator.validate!(input[:email_address], ::String, context: "#{context}[:email_address]")
        Hearth::Validator.validate!(input[:personal_email_address], ::String, context: "#{context}[:personal_email_address]")
        Hearth::Validator.validate!(input[:business_email_address], ::String, context: "#{context}[:business_email_address]")
        Validators::UpdateAddress.validate!(input[:address], context: "#{context}[:address]") unless input[:address].nil?
        Validators::UpdateAddress.validate!(input[:shipping_address], context: "#{context}[:shipping_address]") unless input[:shipping_address].nil?
        Validators::UpdateAddress.validate!(input[:mailing_address], context: "#{context}[:mailing_address]") unless input[:mailing_address].nil?
        Validators::UpdateAddress.validate!(input[:billing_address], context: "#{context}[:billing_address]") unless input[:billing_address].nil?
        Validators::UpdateAttributes.validate!(input[:attributes], context: "#{context}[:attributes]") unless input[:attributes].nil?
      end
    end

    class UpdateProfileOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateProfileOutput, context: context)
        Hearth::Validator.validate!(input[:profile_id], ::String, context: "#{context}[:profile_id]")
      end
    end

    class WorkflowAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowAttributes, context: context)
        Validators::AppflowIntegrationWorkflowAttributes.validate!(input[:appflow_integration], context: "#{context}[:appflow_integration]") unless input[:appflow_integration].nil?
      end
    end

    class WorkflowList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::ListWorkflowsItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class WorkflowMetrics
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowMetrics, context: context)
        Validators::AppflowIntegrationWorkflowMetrics.validate!(input[:appflow_integration], context: "#{context}[:appflow_integration]") unless input[:appflow_integration].nil?
      end
    end

    class WorkflowStepItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WorkflowStepItem, context: context)
        Validators::AppflowIntegrationWorkflowStep.validate!(input[:appflow_integration], context: "#{context}[:appflow_integration]") unless input[:appflow_integration].nil?
      end
    end

    class WorkflowStepsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Validators::WorkflowStepItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ZendeskSourceProperties
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ZendeskSourceProperties, context: context)
        Hearth::Validator.validate!(input[:object], ::String, context: "#{context}[:object]")
      end
    end

    class RequestValueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
