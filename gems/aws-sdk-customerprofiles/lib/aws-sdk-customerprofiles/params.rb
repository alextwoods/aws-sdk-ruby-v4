# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CustomerProfiles
  module Params

    module AccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AccessDeniedException, context: context)
        type = Types::AccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module AddProfileKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddProfileKeyInput, context: context)
        type = Types::AddProfileKeyInput.new
        type.profile_id = params[:profile_id]
        type.key_name = params[:key_name]
        type.values = RequestValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.domain_name = params[:domain_name]
        type
      end
    end

    module AddProfileKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddProfileKeyOutput, context: context)
        type = Types::AddProfileKeyOutput.new
        type.key_name = params[:key_name]
        type.values = RequestValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module Address
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Address, context: context)
        type = Types::Address.new
        type.address1 = params[:address1]
        type.address2 = params[:address2]
        type.address3 = params[:address3]
        type.address4 = params[:address4]
        type.city = params[:city]
        type.county = params[:county]
        type.state = params[:state]
        type.province = params[:province]
        type.country = params[:country]
        type.postal_code = params[:postal_code]
        type
      end
    end

    module AppflowIntegration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppflowIntegration, context: context)
        type = Types::AppflowIntegration.new
        type.flow_definition = FlowDefinition.build(params[:flow_definition], context: "#{context}[:flow_definition]") unless params[:flow_definition].nil?
        type.batches = Batches.build(params[:batches], context: "#{context}[:batches]") unless params[:batches].nil?
        type
      end
    end

    module AppflowIntegrationWorkflowAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppflowIntegrationWorkflowAttributes, context: context)
        type = Types::AppflowIntegrationWorkflowAttributes.new
        type.source_connector_type = params[:source_connector_type]
        type.connector_profile_name = params[:connector_profile_name]
        type.role_arn = params[:role_arn]
        type
      end
    end

    module AppflowIntegrationWorkflowMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppflowIntegrationWorkflowMetrics, context: context)
        type = Types::AppflowIntegrationWorkflowMetrics.new
        type.records_processed = params[:records_processed]
        type.steps_completed = params[:steps_completed]
        type.total_steps = params[:total_steps]
        type
      end
    end

    module AppflowIntegrationWorkflowStep
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AppflowIntegrationWorkflowStep, context: context)
        type = Types::AppflowIntegrationWorkflowStep.new
        type.flow_name = params[:flow_name]
        type.status = params[:status]
        type.execution_message = params[:execution_message]
        type.records_processed = params[:records_processed]
        type.batch_records_start_time = params[:batch_records_start_time]
        type.batch_records_end_time = params[:batch_records_end_time]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type
      end
    end

    module AttributeSourceIdMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Attributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module AutoMerging
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AutoMerging, context: context)
        type = Types::AutoMerging.new
        type.enabled = params[:enabled]
        type.consolidation = Consolidation.build(params[:consolidation], context: "#{context}[:consolidation]") unless params[:consolidation].nil?
        type.conflict_resolution = ConflictResolution.build(params[:conflict_resolution], context: "#{context}[:conflict_resolution]") unless params[:conflict_resolution].nil?
        type
      end
    end

    module BadRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BadRequestException, context: context)
        type = Types::BadRequestException.new
        type.message = params[:message]
        type
      end
    end

    module Batch
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Batch, context: context)
        type = Types::Batch.new
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type
      end
    end

    module Batches
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Batch.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConflictResolution
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictResolution, context: context)
        type = Types::ConflictResolution.new
        type.conflict_resolving_model = params[:conflict_resolving_model]
        type.source_name = params[:source_name]
        type
      end
    end

    module ConnectorOperator
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConnectorOperator, context: context)
        type = Types::ConnectorOperator.new
        type.marketo = params[:marketo]
        type.s3 = params[:s3]
        type.salesforce = params[:salesforce]
        type.service_now = params[:service_now]
        type.zendesk = params[:zendesk]
        type
      end
    end

    module Consolidation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Consolidation, context: context)
        type = Types::Consolidation.new
        type.matching_attributes_list = MatchingAttributesList.build(params[:matching_attributes_list], context: "#{context}[:matching_attributes_list]") unless params[:matching_attributes_list].nil?
        type
      end
    end

    module CreateDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainInput, context: context)
        type = Types::CreateDomainInput.new
        type.domain_name = params[:domain_name]
        type.default_expiration_days = params[:default_expiration_days]
        type.default_encryption_key = params[:default_encryption_key]
        type.dead_letter_queue_url = params[:dead_letter_queue_url]
        type.matching = MatchingRequest.build(params[:matching], context: "#{context}[:matching]") unless params[:matching].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateDomainOutput, context: context)
        type = Types::CreateDomainOutput.new
        type.domain_name = params[:domain_name]
        type.default_expiration_days = params[:default_expiration_days]
        type.default_encryption_key = params[:default_encryption_key]
        type.dead_letter_queue_url = params[:dead_letter_queue_url]
        type.matching = MatchingResponse.build(params[:matching], context: "#{context}[:matching]") unless params[:matching].nil?
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateIntegrationWorkflowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIntegrationWorkflowInput, context: context)
        type = Types::CreateIntegrationWorkflowInput.new
        type.domain_name = params[:domain_name]
        type.workflow_type = params[:workflow_type]
        type.integration_config = IntegrationConfig.build(params[:integration_config], context: "#{context}[:integration_config]") unless params[:integration_config].nil?
        type.object_type_name = params[:object_type_name]
        type.role_arn = params[:role_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateIntegrationWorkflowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateIntegrationWorkflowOutput, context: context)
        type = Types::CreateIntegrationWorkflowOutput.new
        type.workflow_id = params[:workflow_id]
        type.message = params[:message]
        type
      end
    end

    module CreateProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProfileInput, context: context)
        type = Types::CreateProfileInput.new
        type.domain_name = params[:domain_name]
        type.account_number = params[:account_number]
        type.additional_information = params[:additional_information]
        type.party_type = params[:party_type]
        type.business_name = params[:business_name]
        type.first_name = params[:first_name]
        type.middle_name = params[:middle_name]
        type.last_name = params[:last_name]
        type.birth_date = params[:birth_date]
        type.gender = params[:gender]
        type.phone_number = params[:phone_number]
        type.mobile_phone_number = params[:mobile_phone_number]
        type.home_phone_number = params[:home_phone_number]
        type.business_phone_number = params[:business_phone_number]
        type.email_address = params[:email_address]
        type.personal_email_address = params[:personal_email_address]
        type.business_email_address = params[:business_email_address]
        type.address = Address.build(params[:address], context: "#{context}[:address]") unless params[:address].nil?
        type.shipping_address = Address.build(params[:shipping_address], context: "#{context}[:shipping_address]") unless params[:shipping_address].nil?
        type.mailing_address = Address.build(params[:mailing_address], context: "#{context}[:mailing_address]") unless params[:mailing_address].nil?
        type.billing_address = Address.build(params[:billing_address], context: "#{context}[:billing_address]") unless params[:billing_address].nil?
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module CreateProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateProfileOutput, context: context)
        type = Types::CreateProfileOutput.new
        type.profile_id = params[:profile_id]
        type
      end
    end

    module DeleteDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainInput, context: context)
        type = Types::DeleteDomainInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DeleteDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteDomainOutput, context: context)
        type = Types::DeleteDomainOutput.new
        type.message = params[:message]
        type
      end
    end

    module DeleteIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIntegrationInput, context: context)
        type = Types::DeleteIntegrationInput.new
        type.domain_name = params[:domain_name]
        type.uri = params[:uri]
        type
      end
    end

    module DeleteIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteIntegrationOutput, context: context)
        type = Types::DeleteIntegrationOutput.new
        type.message = params[:message]
        type
      end
    end

    module DeleteProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProfileInput, context: context)
        type = Types::DeleteProfileInput.new
        type.profile_id = params[:profile_id]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DeleteProfileKeyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProfileKeyInput, context: context)
        type = Types::DeleteProfileKeyInput.new
        type.profile_id = params[:profile_id]
        type.key_name = params[:key_name]
        type.values = RequestValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DeleteProfileKeyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProfileKeyOutput, context: context)
        type = Types::DeleteProfileKeyOutput.new
        type.message = params[:message]
        type
      end
    end

    module DeleteProfileObjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProfileObjectInput, context: context)
        type = Types::DeleteProfileObjectInput.new
        type.profile_id = params[:profile_id]
        type.profile_object_unique_key = params[:profile_object_unique_key]
        type.object_type_name = params[:object_type_name]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module DeleteProfileObjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProfileObjectOutput, context: context)
        type = Types::DeleteProfileObjectOutput.new
        type.message = params[:message]
        type
      end
    end

    module DeleteProfileObjectTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProfileObjectTypeInput, context: context)
        type = Types::DeleteProfileObjectTypeInput.new
        type.domain_name = params[:domain_name]
        type.object_type_name = params[:object_type_name]
        type
      end
    end

    module DeleteProfileObjectTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProfileObjectTypeOutput, context: context)
        type = Types::DeleteProfileObjectTypeOutput.new
        type.message = params[:message]
        type
      end
    end

    module DeleteProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteProfileOutput, context: context)
        type = Types::DeleteProfileOutput.new
        type.message = params[:message]
        type
      end
    end

    module DeleteWorkflowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkflowInput, context: context)
        type = Types::DeleteWorkflowInput.new
        type.domain_name = params[:domain_name]
        type.workflow_id = params[:workflow_id]
        type
      end
    end

    module DeleteWorkflowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteWorkflowOutput, context: context)
        type = Types::DeleteWorkflowOutput.new
        type
      end
    end

    module DomainList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListDomainItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module DomainStats
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DomainStats, context: context)
        type = Types::DomainStats.new
        type.profile_count = params[:profile_count]
        type.metering_profile_count = params[:metering_profile_count]
        type.object_count = params[:object_count]
        type.total_size = params[:total_size]
        type
      end
    end

    module ExportingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportingConfig, context: context)
        type = Types::ExportingConfig.new
        type.s3_exporting = S3ExportingConfig.build(params[:s3_exporting], context: "#{context}[:s3_exporting]") unless params[:s3_exporting].nil?
        type
      end
    end

    module ExportingLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ExportingLocation, context: context)
        type = Types::ExportingLocation.new
        type.s3_exporting = S3ExportingLocation.build(params[:s3_exporting], context: "#{context}[:s3_exporting]") unless params[:s3_exporting].nil?
        type
      end
    end

    module FieldMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ObjectTypeField.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module FieldNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FieldSourceProfileIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FieldSourceProfileIds, context: context)
        type = Types::FieldSourceProfileIds.new
        type.account_number = params[:account_number]
        type.additional_information = params[:additional_information]
        type.party_type = params[:party_type]
        type.business_name = params[:business_name]
        type.first_name = params[:first_name]
        type.middle_name = params[:middle_name]
        type.last_name = params[:last_name]
        type.birth_date = params[:birth_date]
        type.gender = params[:gender]
        type.phone_number = params[:phone_number]
        type.mobile_phone_number = params[:mobile_phone_number]
        type.home_phone_number = params[:home_phone_number]
        type.business_phone_number = params[:business_phone_number]
        type.email_address = params[:email_address]
        type.personal_email_address = params[:personal_email_address]
        type.business_email_address = params[:business_email_address]
        type.address = params[:address]
        type.shipping_address = params[:shipping_address]
        type.mailing_address = params[:mailing_address]
        type.billing_address = params[:billing_address]
        type.attributes = AttributeSourceIdMap.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module FlowDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FlowDefinition, context: context)
        type = Types::FlowDefinition.new
        type.description = params[:description]
        type.flow_name = params[:flow_name]
        type.kms_arn = params[:kms_arn]
        type.source_flow_config = SourceFlowConfig.build(params[:source_flow_config], context: "#{context}[:source_flow_config]") unless params[:source_flow_config].nil?
        type.tasks = Tasks.build(params[:tasks], context: "#{context}[:tasks]") unless params[:tasks].nil?
        type.trigger_config = TriggerConfig.build(params[:trigger_config], context: "#{context}[:trigger_config]") unless params[:trigger_config].nil?
        type
      end
    end

    module GetAutoMergingPreviewInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAutoMergingPreviewInput, context: context)
        type = Types::GetAutoMergingPreviewInput.new
        type.domain_name = params[:domain_name]
        type.consolidation = Consolidation.build(params[:consolidation], context: "#{context}[:consolidation]") unless params[:consolidation].nil?
        type.conflict_resolution = ConflictResolution.build(params[:conflict_resolution], context: "#{context}[:conflict_resolution]") unless params[:conflict_resolution].nil?
        type
      end
    end

    module GetAutoMergingPreviewOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetAutoMergingPreviewOutput, context: context)
        type = Types::GetAutoMergingPreviewOutput.new
        type.domain_name = params[:domain_name]
        type.number_of_matches_in_sample = params[:number_of_matches_in_sample]
        type.number_of_profiles_in_sample = params[:number_of_profiles_in_sample]
        type.number_of_profiles_will_be_merged = params[:number_of_profiles_will_be_merged]
        type
      end
    end

    module GetDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainInput, context: context)
        type = Types::GetDomainInput.new
        type.domain_name = params[:domain_name]
        type
      end
    end

    module GetDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetDomainOutput, context: context)
        type = Types::GetDomainOutput.new
        type.domain_name = params[:domain_name]
        type.default_expiration_days = params[:default_expiration_days]
        type.default_encryption_key = params[:default_encryption_key]
        type.dead_letter_queue_url = params[:dead_letter_queue_url]
        type.stats = DomainStats.build(params[:stats], context: "#{context}[:stats]") unless params[:stats].nil?
        type.matching = MatchingResponse.build(params[:matching], context: "#{context}[:matching]") unless params[:matching].nil?
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetIdentityResolutionJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityResolutionJobInput, context: context)
        type = Types::GetIdentityResolutionJobInput.new
        type.domain_name = params[:domain_name]
        type.job_id = params[:job_id]
        type
      end
    end

    module GetIdentityResolutionJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIdentityResolutionJobOutput, context: context)
        type = Types::GetIdentityResolutionJobOutput.new
        type.domain_name = params[:domain_name]
        type.job_id = params[:job_id]
        type.status = params[:status]
        type.message = params[:message]
        type.job_start_time = params[:job_start_time]
        type.job_end_time = params[:job_end_time]
        type.last_updated_at = params[:last_updated_at]
        type.job_expiration_time = params[:job_expiration_time]
        type.auto_merging = AutoMerging.build(params[:auto_merging], context: "#{context}[:auto_merging]") unless params[:auto_merging].nil?
        type.exporting_location = ExportingLocation.build(params[:exporting_location], context: "#{context}[:exporting_location]") unless params[:exporting_location].nil?
        type.job_stats = JobStats.build(params[:job_stats], context: "#{context}[:job_stats]") unless params[:job_stats].nil?
        type
      end
    end

    module GetIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntegrationInput, context: context)
        type = Types::GetIntegrationInput.new
        type.domain_name = params[:domain_name]
        type.uri = params[:uri]
        type
      end
    end

    module GetIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetIntegrationOutput, context: context)
        type = Types::GetIntegrationOutput.new
        type.domain_name = params[:domain_name]
        type.uri = params[:uri]
        type.object_type_name = params[:object_type_name]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.object_type_names = ObjectTypeNames.build(params[:object_type_names], context: "#{context}[:object_type_names]") unless params[:object_type_names].nil?
        type.workflow_id = params[:workflow_id]
        type
      end
    end

    module GetMatchesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMatchesInput, context: context)
        type = Types::GetMatchesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module GetMatchesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetMatchesOutput, context: context)
        type = Types::GetMatchesOutput.new
        type.next_token = params[:next_token]
        type.match_generation_date = params[:match_generation_date]
        type.potential_matches = params[:potential_matches]
        type.matches = MatchesList.build(params[:matches], context: "#{context}[:matches]") unless params[:matches].nil?
        type
      end
    end

    module GetProfileObjectTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProfileObjectTypeInput, context: context)
        type = Types::GetProfileObjectTypeInput.new
        type.domain_name = params[:domain_name]
        type.object_type_name = params[:object_type_name]
        type
      end
    end

    module GetProfileObjectTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProfileObjectTypeOutput, context: context)
        type = Types::GetProfileObjectTypeOutput.new
        type.object_type_name = params[:object_type_name]
        type.description = params[:description]
        type.template_id = params[:template_id]
        type.expiration_days = params[:expiration_days]
        type.encryption_key = params[:encryption_key]
        type.allow_profile_creation = params[:allow_profile_creation]
        type.source_last_updated_timestamp_format = params[:source_last_updated_timestamp_format]
        type.fields = FieldMap.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type.keys = KeyMap.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module GetProfileObjectTypeTemplateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProfileObjectTypeTemplateInput, context: context)
        type = Types::GetProfileObjectTypeTemplateInput.new
        type.template_id = params[:template_id]
        type
      end
    end

    module GetProfileObjectTypeTemplateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetProfileObjectTypeTemplateOutput, context: context)
        type = Types::GetProfileObjectTypeTemplateOutput.new
        type.template_id = params[:template_id]
        type.source_name = params[:source_name]
        type.source_object = params[:source_object]
        type.allow_profile_creation = params[:allow_profile_creation]
        type.source_last_updated_timestamp_format = params[:source_last_updated_timestamp_format]
        type.fields = FieldMap.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type.keys = KeyMap.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
        type
      end
    end

    module GetWorkflowInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkflowInput, context: context)
        type = Types::GetWorkflowInput.new
        type.domain_name = params[:domain_name]
        type.workflow_id = params[:workflow_id]
        type
      end
    end

    module GetWorkflowOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkflowOutput, context: context)
        type = Types::GetWorkflowOutput.new
        type.workflow_id = params[:workflow_id]
        type.workflow_type = params[:workflow_type]
        type.status = params[:status]
        type.error_description = params[:error_description]
        type.start_date = params[:start_date]
        type.last_updated_at = params[:last_updated_at]
        type.attributes = WorkflowAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type.metrics = WorkflowMetrics.build(params[:metrics], context: "#{context}[:metrics]") unless params[:metrics].nil?
        type
      end
    end

    module GetWorkflowStepsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkflowStepsInput, context: context)
        type = Types::GetWorkflowStepsInput.new
        type.domain_name = params[:domain_name]
        type.workflow_id = params[:workflow_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module GetWorkflowStepsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetWorkflowStepsOutput, context: context)
        type = Types::GetWorkflowStepsOutput.new
        type.workflow_id = params[:workflow_id]
        type.workflow_type = params[:workflow_type]
        type.items = WorkflowStepsList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module IdentityResolutionJob
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdentityResolutionJob, context: context)
        type = Types::IdentityResolutionJob.new
        type.domain_name = params[:domain_name]
        type.job_id = params[:job_id]
        type.status = params[:status]
        type.job_start_time = params[:job_start_time]
        type.job_end_time = params[:job_end_time]
        type.job_stats = JobStats.build(params[:job_stats], context: "#{context}[:job_stats]") unless params[:job_stats].nil?
        type.exporting_location = ExportingLocation.build(params[:exporting_location], context: "#{context}[:exporting_location]") unless params[:exporting_location].nil?
        type.message = params[:message]
        type
      end
    end

    module IdentityResolutionJobsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IdentityResolutionJob.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module IncrementalPullConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IncrementalPullConfig, context: context)
        type = Types::IncrementalPullConfig.new
        type.datetime_type_field_name = params[:datetime_type_field_name]
        type
      end
    end

    module IntegrationConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IntegrationConfig, context: context)
        type = Types::IntegrationConfig.new
        type.appflow_integration = AppflowIntegration.build(params[:appflow_integration], context: "#{context}[:appflow_integration]") unless params[:appflow_integration].nil?
        type
      end
    end

    module IntegrationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListIntegrationItem.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module JobSchedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobSchedule, context: context)
        type = Types::JobSchedule.new
        type.day_of_the_week = params[:day_of_the_week]
        type.time = params[:time]
        type
      end
    end

    module JobStats
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobStats, context: context)
        type = Types::JobStats.new
        type.number_of_profiles_reviewed = params[:number_of_profiles_reviewed]
        type.number_of_matches_found = params[:number_of_matches_found]
        type.number_of_merges_done = params[:number_of_merges_done]
        type
      end
    end

    module KeyMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = ObjectTypeKeyList.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module ListAccountIntegrationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountIntegrationsInput, context: context)
        type = Types::ListAccountIntegrationsInput.new
        type.uri = params[:uri]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.include_hidden = params[:include_hidden]
        type
      end
    end

    module ListAccountIntegrationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAccountIntegrationsOutput, context: context)
        type = Types::ListAccountIntegrationsOutput.new
        type.items = IntegrationList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListDomainItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainItem, context: context)
        type = Types::ListDomainItem.new
        type.domain_name = params[:domain_name]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListDomainsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainsInput, context: context)
        type = Types::ListDomainsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListDomainsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListDomainsOutput, context: context)
        type = Types::ListDomainsOutput.new
        type.items = DomainList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIdentityResolutionJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIdentityResolutionJobsInput, context: context)
        type = Types::ListIdentityResolutionJobsInput.new
        type.domain_name = params[:domain_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListIdentityResolutionJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIdentityResolutionJobsOutput, context: context)
        type = Types::ListIdentityResolutionJobsOutput.new
        type.identity_resolution_jobs_list = IdentityResolutionJobsList.build(params[:identity_resolution_jobs_list], context: "#{context}[:identity_resolution_jobs_list]") unless params[:identity_resolution_jobs_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListIntegrationItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIntegrationItem, context: context)
        type = Types::ListIntegrationItem.new
        type.domain_name = params[:domain_name]
        type.uri = params[:uri]
        type.object_type_name = params[:object_type_name]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.object_type_names = ObjectTypeNames.build(params[:object_type_names], context: "#{context}[:object_type_names]") unless params[:object_type_names].nil?
        type.workflow_id = params[:workflow_id]
        type
      end
    end

    module ListIntegrationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIntegrationsInput, context: context)
        type = Types::ListIntegrationsInput.new
        type.domain_name = params[:domain_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.include_hidden = params[:include_hidden]
        type
      end
    end

    module ListIntegrationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListIntegrationsOutput, context: context)
        type = Types::ListIntegrationsOutput.new
        type.items = IntegrationList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProfileObjectTypeItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProfileObjectTypeItem, context: context)
        type = Types::ListProfileObjectTypeItem.new
        type.object_type_name = params[:object_type_name]
        type.description = params[:description]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListProfileObjectTypeTemplateItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProfileObjectTypeTemplateItem, context: context)
        type = Types::ListProfileObjectTypeTemplateItem.new
        type.template_id = params[:template_id]
        type.source_name = params[:source_name]
        type.source_object = params[:source_object]
        type
      end
    end

    module ListProfileObjectTypeTemplatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProfileObjectTypeTemplatesInput, context: context)
        type = Types::ListProfileObjectTypeTemplatesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListProfileObjectTypeTemplatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProfileObjectTypeTemplatesOutput, context: context)
        type = Types::ListProfileObjectTypeTemplatesOutput.new
        type.items = ProfileObjectTypeTemplateList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProfileObjectTypesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProfileObjectTypesInput, context: context)
        type = Types::ListProfileObjectTypesInput.new
        type.domain_name = params[:domain_name]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListProfileObjectTypesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProfileObjectTypesOutput, context: context)
        type = Types::ListProfileObjectTypesOutput.new
        type.items = ProfileObjectTypeList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListProfileObjectsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProfileObjectsInput, context: context)
        type = Types::ListProfileObjectsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.domain_name = params[:domain_name]
        type.object_type_name = params[:object_type_name]
        type.profile_id = params[:profile_id]
        type.object_filter = ObjectFilter.build(params[:object_filter], context: "#{context}[:object_filter]") unless params[:object_filter].nil?
        type
      end
    end

    module ListProfileObjectsItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProfileObjectsItem, context: context)
        type = Types::ListProfileObjectsItem.new
        type.object_type_name = params[:object_type_name]
        type.profile_object_unique_key = params[:profile_object_unique_key]
        type.object = params[:object]
        type
      end
    end

    module ListProfileObjectsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListProfileObjectsOutput, context: context)
        type = Types::ListProfileObjectsOutput.new
        type.items = ProfileObjectList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
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
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module ListWorkflowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkflowsInput, context: context)
        type = Types::ListWorkflowsInput.new
        type.domain_name = params[:domain_name]
        type.workflow_type = params[:workflow_type]
        type.status = params[:status]
        type.query_start_date = params[:query_start_date]
        type.query_end_date = params[:query_end_date]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListWorkflowsItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkflowsItem, context: context)
        type = Types::ListWorkflowsItem.new
        type.workflow_type = params[:workflow_type]
        type.workflow_id = params[:workflow_id]
        type.status = params[:status]
        type.status_description = params[:status_description]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type
      end
    end

    module ListWorkflowsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListWorkflowsOutput, context: context)
        type = Types::ListWorkflowsOutput.new
        type.items = WorkflowList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module MarketoSourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MarketoSourceProperties, context: context)
        type = Types::MarketoSourceProperties.new
        type.object = params[:object]
        type
      end
    end

    module MatchItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MatchItem, context: context)
        type = Types::MatchItem.new
        type.match_id = params[:match_id]
        type.profile_ids = ProfileIdList.build(params[:profile_ids], context: "#{context}[:profile_ids]") unless params[:profile_ids].nil?
        type.confidence_score = params[:confidence_score]
        type
      end
    end

    module MatchesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MatchItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MatchingAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MatchingAttributesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MatchingAttributes.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MatchingRequest
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MatchingRequest, context: context)
        type = Types::MatchingRequest.new
        type.enabled = params[:enabled]
        type.job_schedule = JobSchedule.build(params[:job_schedule], context: "#{context}[:job_schedule]") unless params[:job_schedule].nil?
        type.auto_merging = AutoMerging.build(params[:auto_merging], context: "#{context}[:auto_merging]") unless params[:auto_merging].nil?
        type.exporting_config = ExportingConfig.build(params[:exporting_config], context: "#{context}[:exporting_config]") unless params[:exporting_config].nil?
        type
      end
    end

    module MatchingResponse
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MatchingResponse, context: context)
        type = Types::MatchingResponse.new
        type.enabled = params[:enabled]
        type.job_schedule = JobSchedule.build(params[:job_schedule], context: "#{context}[:job_schedule]") unless params[:job_schedule].nil?
        type.auto_merging = AutoMerging.build(params[:auto_merging], context: "#{context}[:auto_merging]") unless params[:auto_merging].nil?
        type.exporting_config = ExportingConfig.build(params[:exporting_config], context: "#{context}[:exporting_config]") unless params[:exporting_config].nil?
        type
      end
    end

    module MergeProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergeProfilesInput, context: context)
        type = Types::MergeProfilesInput.new
        type.domain_name = params[:domain_name]
        type.main_profile_id = params[:main_profile_id]
        type.profile_ids_to_be_merged = ProfileIdToBeMergedList.build(params[:profile_ids_to_be_merged], context: "#{context}[:profile_ids_to_be_merged]") unless params[:profile_ids_to_be_merged].nil?
        type.field_source_profile_ids = FieldSourceProfileIds.build(params[:field_source_profile_ids], context: "#{context}[:field_source_profile_ids]") unless params[:field_source_profile_ids].nil?
        type
      end
    end

    module MergeProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MergeProfilesOutput, context: context)
        type = Types::MergeProfilesOutput.new
        type.message = params[:message]
        type
      end
    end

    module ObjectFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectFilter, context: context)
        type = Types::ObjectFilter.new
        type.key_name = params[:key_name]
        type.values = RequestValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module ObjectTypeField
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectTypeField, context: context)
        type = Types::ObjectTypeField.new
        type.source = params[:source]
        type.target = params[:target]
        type.content_type = params[:content_type]
        type
      end
    end

    module ObjectTypeKey
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ObjectTypeKey, context: context)
        type = Types::ObjectTypeKey.new
        type.standard_identifiers = StandardIdentifierList.build(params[:standard_identifiers], context: "#{context}[:standard_identifiers]") unless params[:standard_identifiers].nil?
        type.field_names = FieldNameList.build(params[:field_names], context: "#{context}[:field_names]") unless params[:field_names].nil?
        type
      end
    end

    module ObjectTypeKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ObjectTypeKey.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ObjectTypeNames
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Profile
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Profile, context: context)
        type = Types::Profile.new
        type.profile_id = params[:profile_id]
        type.account_number = params[:account_number]
        type.additional_information = params[:additional_information]
        type.party_type = params[:party_type]
        type.business_name = params[:business_name]
        type.first_name = params[:first_name]
        type.middle_name = params[:middle_name]
        type.last_name = params[:last_name]
        type.birth_date = params[:birth_date]
        type.gender = params[:gender]
        type.phone_number = params[:phone_number]
        type.mobile_phone_number = params[:mobile_phone_number]
        type.home_phone_number = params[:home_phone_number]
        type.business_phone_number = params[:business_phone_number]
        type.email_address = params[:email_address]
        type.personal_email_address = params[:personal_email_address]
        type.business_email_address = params[:business_email_address]
        type.address = Address.build(params[:address], context: "#{context}[:address]") unless params[:address].nil?
        type.shipping_address = Address.build(params[:shipping_address], context: "#{context}[:shipping_address]") unless params[:shipping_address].nil?
        type.mailing_address = Address.build(params[:mailing_address], context: "#{context}[:mailing_address]") unless params[:mailing_address].nil?
        type.billing_address = Address.build(params[:billing_address], context: "#{context}[:billing_address]") unless params[:billing_address].nil?
        type.attributes = Attributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module ProfileIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProfileIdToBeMergedList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module ProfileList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Profile.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProfileObjectList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListProfileObjectsItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProfileObjectTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListProfileObjectTypeItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ProfileObjectTypeTemplateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListProfileObjectTypeTemplateItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PutIntegrationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutIntegrationInput, context: context)
        type = Types::PutIntegrationInput.new
        type.domain_name = params[:domain_name]
        type.uri = params[:uri]
        type.object_type_name = params[:object_type_name]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.flow_definition = FlowDefinition.build(params[:flow_definition], context: "#{context}[:flow_definition]") unless params[:flow_definition].nil?
        type.object_type_names = ObjectTypeNames.build(params[:object_type_names], context: "#{context}[:object_type_names]") unless params[:object_type_names].nil?
        type
      end
    end

    module PutIntegrationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutIntegrationOutput, context: context)
        type = Types::PutIntegrationOutput.new
        type.domain_name = params[:domain_name]
        type.uri = params[:uri]
        type.object_type_name = params[:object_type_name]
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.object_type_names = ObjectTypeNames.build(params[:object_type_names], context: "#{context}[:object_type_names]") unless params[:object_type_names].nil?
        type.workflow_id = params[:workflow_id]
        type
      end
    end

    module PutProfileObjectInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutProfileObjectInput, context: context)
        type = Types::PutProfileObjectInput.new
        type.object_type_name = params[:object_type_name]
        type.object = params[:object]
        type.domain_name = params[:domain_name]
        type
      end
    end

    module PutProfileObjectOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutProfileObjectOutput, context: context)
        type = Types::PutProfileObjectOutput.new
        type.profile_object_unique_key = params[:profile_object_unique_key]
        type
      end
    end

    module PutProfileObjectTypeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutProfileObjectTypeInput, context: context)
        type = Types::PutProfileObjectTypeInput.new
        type.domain_name = params[:domain_name]
        type.object_type_name = params[:object_type_name]
        type.description = params[:description]
        type.template_id = params[:template_id]
        type.expiration_days = params[:expiration_days]
        type.encryption_key = params[:encryption_key]
        type.allow_profile_creation = params[:allow_profile_creation]
        type.source_last_updated_timestamp_format = params[:source_last_updated_timestamp_format]
        type.fields = FieldMap.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type.keys = KeyMap.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module PutProfileObjectTypeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutProfileObjectTypeOutput, context: context)
        type = Types::PutProfileObjectTypeOutput.new
        type.object_type_name = params[:object_type_name]
        type.description = params[:description]
        type.template_id = params[:template_id]
        type.expiration_days = params[:expiration_days]
        type.encryption_key = params[:encryption_key]
        type.allow_profile_creation = params[:allow_profile_creation]
        type.source_last_updated_timestamp_format = params[:source_last_updated_timestamp_format]
        type.fields = FieldMap.build(params[:fields], context: "#{context}[:fields]") unless params[:fields].nil?
        type.keys = KeyMap.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module S3ExportingConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ExportingConfig, context: context)
        type = Types::S3ExportingConfig.new
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_key_name = params[:s3_key_name]
        type
      end
    end

    module S3ExportingLocation
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3ExportingLocation, context: context)
        type = Types::S3ExportingLocation.new
        type.s3_bucket_name = params[:s3_bucket_name]
        type.s3_key_name = params[:s3_key_name]
        type
      end
    end

    module S3SourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3SourceProperties, context: context)
        type = Types::S3SourceProperties.new
        type.bucket_name = params[:bucket_name]
        type.bucket_prefix = params[:bucket_prefix]
        type
      end
    end

    module SalesforceSourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SalesforceSourceProperties, context: context)
        type = Types::SalesforceSourceProperties.new
        type.object = params[:object]
        type.enable_dynamic_field_update = params[:enable_dynamic_field_update]
        type.include_deleted_records = params[:include_deleted_records]
        type
      end
    end

    module ScheduledTriggerProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScheduledTriggerProperties, context: context)
        type = Types::ScheduledTriggerProperties.new
        type.schedule_expression = params[:schedule_expression]
        type.data_pull_mode = params[:data_pull_mode]
        type.schedule_start_time = params[:schedule_start_time]
        type.schedule_end_time = params[:schedule_end_time]
        type.timezone = params[:timezone]
        type.schedule_offset = params[:schedule_offset]
        type.first_execution_from = params[:first_execution_from]
        type
      end
    end

    module SearchProfilesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchProfilesInput, context: context)
        type = Types::SearchProfilesInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.domain_name = params[:domain_name]
        type.key_name = params[:key_name]
        type.values = RequestValueList.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type
      end
    end

    module SearchProfilesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchProfilesOutput, context: context)
        type = Types::SearchProfilesOutput.new
        type.items = ProfileList.build(params[:items], context: "#{context}[:items]") unless params[:items].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ServiceNowSourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServiceNowSourceProperties, context: context)
        type = Types::ServiceNowSourceProperties.new
        type.object = params[:object]
        type
      end
    end

    module SourceConnectorProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceConnectorProperties, context: context)
        type = Types::SourceConnectorProperties.new
        type.marketo = MarketoSourceProperties.build(params[:marketo], context: "#{context}[:marketo]") unless params[:marketo].nil?
        type.s3 = S3SourceProperties.build(params[:s3], context: "#{context}[:s3]") unless params[:s3].nil?
        type.salesforce = SalesforceSourceProperties.build(params[:salesforce], context: "#{context}[:salesforce]") unless params[:salesforce].nil?
        type.service_now = ServiceNowSourceProperties.build(params[:service_now], context: "#{context}[:service_now]") unless params[:service_now].nil?
        type.zendesk = ZendeskSourceProperties.build(params[:zendesk], context: "#{context}[:zendesk]") unless params[:zendesk].nil?
        type
      end
    end

    module SourceFields
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SourceFlowConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SourceFlowConfig, context: context)
        type = Types::SourceFlowConfig.new
        type.connector_profile_name = params[:connector_profile_name]
        type.connector_type = params[:connector_type]
        type.incremental_pull_config = IncrementalPullConfig.build(params[:incremental_pull_config], context: "#{context}[:incremental_pull_config]") unless params[:incremental_pull_config].nil?
        type.source_connector_properties = SourceConnectorProperties.build(params[:source_connector_properties], context: "#{context}[:source_connector_properties]") unless params[:source_connector_properties].nil?
        type
      end
    end

    module StandardIdentifierList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module TagMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module Task
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Task, context: context)
        type = Types::Task.new
        type.connector_operator = ConnectorOperator.build(params[:connector_operator], context: "#{context}[:connector_operator]") unless params[:connector_operator].nil?
        type.destination_field = params[:destination_field]
        type.source_fields = SourceFields.build(params[:source_fields], context: "#{context}[:source_fields]") unless params[:source_fields].nil?
        type.task_properties = TaskPropertiesMap.build(params[:task_properties], context: "#{context}[:task_properties]") unless params[:task_properties].nil?
        type.task_type = params[:task_type]
        type
      end
    end

    module TaskPropertiesMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Tasks
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Task.build(element, context: "#{context}[#{index}]") unless element.nil?
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

    module TriggerConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TriggerConfig, context: context)
        type = Types::TriggerConfig.new
        type.trigger_type = params[:trigger_type]
        type.trigger_properties = TriggerProperties.build(params[:trigger_properties], context: "#{context}[:trigger_properties]") unless params[:trigger_properties].nil?
        type
      end
    end

    module TriggerProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TriggerProperties, context: context)
        type = Types::TriggerProperties.new
        type.scheduled = ScheduledTriggerProperties.build(params[:scheduled], context: "#{context}[:scheduled]") unless params[:scheduled].nil?
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

    module UpdateAddress
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAddress, context: context)
        type = Types::UpdateAddress.new
        type.address1 = params[:address1]
        type.address2 = params[:address2]
        type.address3 = params[:address3]
        type.address4 = params[:address4]
        type.city = params[:city]
        type.county = params[:county]
        type.state = params[:state]
        type.province = params[:province]
        type.country = params[:country]
        type.postal_code = params[:postal_code]
        type
      end
    end

    module UpdateAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module UpdateDomainInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainInput, context: context)
        type = Types::UpdateDomainInput.new
        type.domain_name = params[:domain_name]
        type.default_expiration_days = params[:default_expiration_days]
        type.default_encryption_key = params[:default_encryption_key]
        type.dead_letter_queue_url = params[:dead_letter_queue_url]
        type.matching = MatchingRequest.build(params[:matching], context: "#{context}[:matching]") unless params[:matching].nil?
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateDomainOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateDomainOutput, context: context)
        type = Types::UpdateDomainOutput.new
        type.domain_name = params[:domain_name]
        type.default_expiration_days = params[:default_expiration_days]
        type.default_encryption_key = params[:default_encryption_key]
        type.dead_letter_queue_url = params[:dead_letter_queue_url]
        type.matching = MatchingResponse.build(params[:matching], context: "#{context}[:matching]") unless params[:matching].nil?
        type.created_at = params[:created_at]
        type.last_updated_at = params[:last_updated_at]
        type.tags = TagMap.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module UpdateProfileInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProfileInput, context: context)
        type = Types::UpdateProfileInput.new
        type.domain_name = params[:domain_name]
        type.profile_id = params[:profile_id]
        type.additional_information = params[:additional_information]
        type.account_number = params[:account_number]
        type.party_type = params[:party_type]
        type.business_name = params[:business_name]
        type.first_name = params[:first_name]
        type.middle_name = params[:middle_name]
        type.last_name = params[:last_name]
        type.birth_date = params[:birth_date]
        type.gender = params[:gender]
        type.phone_number = params[:phone_number]
        type.mobile_phone_number = params[:mobile_phone_number]
        type.home_phone_number = params[:home_phone_number]
        type.business_phone_number = params[:business_phone_number]
        type.email_address = params[:email_address]
        type.personal_email_address = params[:personal_email_address]
        type.business_email_address = params[:business_email_address]
        type.address = UpdateAddress.build(params[:address], context: "#{context}[:address]") unless params[:address].nil?
        type.shipping_address = UpdateAddress.build(params[:shipping_address], context: "#{context}[:shipping_address]") unless params[:shipping_address].nil?
        type.mailing_address = UpdateAddress.build(params[:mailing_address], context: "#{context}[:mailing_address]") unless params[:mailing_address].nil?
        type.billing_address = UpdateAddress.build(params[:billing_address], context: "#{context}[:billing_address]") unless params[:billing_address].nil?
        type.attributes = UpdateAttributes.build(params[:attributes], context: "#{context}[:attributes]") unless params[:attributes].nil?
        type
      end
    end

    module UpdateProfileOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateProfileOutput, context: context)
        type = Types::UpdateProfileOutput.new
        type.profile_id = params[:profile_id]
        type
      end
    end

    module WorkflowAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowAttributes, context: context)
        type = Types::WorkflowAttributes.new
        type.appflow_integration = AppflowIntegrationWorkflowAttributes.build(params[:appflow_integration], context: "#{context}[:appflow_integration]") unless params[:appflow_integration].nil?
        type
      end
    end

    module WorkflowList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ListWorkflowsItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module WorkflowMetrics
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowMetrics, context: context)
        type = Types::WorkflowMetrics.new
        type.appflow_integration = AppflowIntegrationWorkflowMetrics.build(params[:appflow_integration], context: "#{context}[:appflow_integration]") unless params[:appflow_integration].nil?
        type
      end
    end

    module WorkflowStepItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WorkflowStepItem, context: context)
        type = Types::WorkflowStepItem.new
        type.appflow_integration = AppflowIntegrationWorkflowStep.build(params[:appflow_integration], context: "#{context}[:appflow_integration]") unless params[:appflow_integration].nil?
        type
      end
    end

    module WorkflowStepsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << WorkflowStepItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ZendeskSourceProperties
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ZendeskSourceProperties, context: context)
        type = Types::ZendeskSourceProperties.new
        type.object = params[:object]
        type
      end
    end

    module RequestValueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

  end
end
