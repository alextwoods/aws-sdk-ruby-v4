# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Snowball
  module Params

    module Address
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Address, context: context)
        type = Types::Address.new
        type.address_id = params[:address_id]
        type.name = params[:name]
        type.company = params[:company]
        type.street1 = params[:street1]
        type.street2 = params[:street2]
        type.street3 = params[:street3]
        type.city = params[:city]
        type.state_or_province = params[:state_or_province]
        type.prefecture_or_district = params[:prefecture_or_district]
        type.landmark = params[:landmark]
        type.country = params[:country]
        type.postal_code = params[:postal_code]
        type.phone_number = params[:phone_number]
        type.is_restricted = params[:is_restricted]
        type
      end
    end

    module AddressList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Address.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CancelClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelClusterInput, context: context)
        type = Types::CancelClusterInput.new
        type.cluster_id = params[:cluster_id]
        type
      end
    end

    module CancelClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelClusterOutput, context: context)
        type = Types::CancelClusterOutput.new
        type
      end
    end

    module CancelJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobInput, context: context)
        type = Types::CancelJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module CancelJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelJobOutput, context: context)
        type = Types::CancelJobOutput.new
        type
      end
    end

    module ClusterLimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterLimitExceededException, context: context)
        type = Types::ClusterLimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ClusterListEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterListEntry, context: context)
        type = Types::ClusterListEntry.new
        type.cluster_id = params[:cluster_id]
        type.cluster_state = params[:cluster_state]
        type.creation_date = params[:creation_date]
        type.description = params[:description]
        type
      end
    end

    module ClusterListEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ClusterListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ClusterMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClusterMetadata, context: context)
        type = Types::ClusterMetadata.new
        type.cluster_id = params[:cluster_id]
        type.description = params[:description]
        type.kms_key_arn = params[:kms_key_arn]
        type.role_arn = params[:role_arn]
        type.cluster_state = params[:cluster_state]
        type.job_type = params[:job_type]
        type.snowball_type = params[:snowball_type]
        type.creation_date = params[:creation_date]
        type.resources = JobResource.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.address_id = params[:address_id]
        type.shipping_option = params[:shipping_option]
        type.notification = Notification.build(params[:notification], context: "#{context}[:notification]") unless params[:notification].nil?
        type.forwarding_address_id = params[:forwarding_address_id]
        type.tax_documents = TaxDocuments.build(params[:tax_documents], context: "#{context}[:tax_documents]") unless params[:tax_documents].nil?
        type.on_device_service_configuration = OnDeviceServiceConfiguration.build(params[:on_device_service_configuration], context: "#{context}[:on_device_service_configuration]") unless params[:on_device_service_configuration].nil?
        type
      end
    end

    module CompatibleImage
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CompatibleImage, context: context)
        type = Types::CompatibleImage.new
        type.ami_id = params[:ami_id]
        type.name = params[:name]
        type
      end
    end

    module CompatibleImageList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << CompatibleImage.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.conflict_resource = params[:conflict_resource]
        type.message = params[:message]
        type
      end
    end

    module CreateAddressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAddressInput, context: context)
        type = Types::CreateAddressInput.new
        type.address = Address.build(params[:address], context: "#{context}[:address]") unless params[:address].nil?
        type
      end
    end

    module CreateAddressOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAddressOutput, context: context)
        type = Types::CreateAddressOutput.new
        type.address_id = params[:address_id]
        type
      end
    end

    module CreateClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterInput, context: context)
        type = Types::CreateClusterInput.new
        type.job_type = params[:job_type]
        type.resources = JobResource.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.on_device_service_configuration = OnDeviceServiceConfiguration.build(params[:on_device_service_configuration], context: "#{context}[:on_device_service_configuration]") unless params[:on_device_service_configuration].nil?
        type.description = params[:description]
        type.address_id = params[:address_id]
        type.kms_key_arn = params[:kms_key_arn]
        type.role_arn = params[:role_arn]
        type.snowball_type = params[:snowball_type]
        type.shipping_option = params[:shipping_option]
        type.notification = Notification.build(params[:notification], context: "#{context}[:notification]") unless params[:notification].nil?
        type.forwarding_address_id = params[:forwarding_address_id]
        type.tax_documents = TaxDocuments.build(params[:tax_documents], context: "#{context}[:tax_documents]") unless params[:tax_documents].nil?
        type.remote_management = params[:remote_management]
        type
      end
    end

    module CreateClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterOutput, context: context)
        type = Types::CreateClusterOutput.new
        type.cluster_id = params[:cluster_id]
        type
      end
    end

    module CreateJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobInput, context: context)
        type = Types::CreateJobInput.new
        type.job_type = params[:job_type]
        type.resources = JobResource.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.on_device_service_configuration = OnDeviceServiceConfiguration.build(params[:on_device_service_configuration], context: "#{context}[:on_device_service_configuration]") unless params[:on_device_service_configuration].nil?
        type.description = params[:description]
        type.address_id = params[:address_id]
        type.kms_key_arn = params[:kms_key_arn]
        type.role_arn = params[:role_arn]
        type.snowball_capacity_preference = params[:snowball_capacity_preference]
        type.shipping_option = params[:shipping_option]
        type.notification = Notification.build(params[:notification], context: "#{context}[:notification]") unless params[:notification].nil?
        type.cluster_id = params[:cluster_id]
        type.snowball_type = params[:snowball_type]
        type.forwarding_address_id = params[:forwarding_address_id]
        type.tax_documents = TaxDocuments.build(params[:tax_documents], context: "#{context}[:tax_documents]") unless params[:tax_documents].nil?
        type.device_configuration = DeviceConfiguration.build(params[:device_configuration], context: "#{context}[:device_configuration]") unless params[:device_configuration].nil?
        type.remote_management = params[:remote_management]
        type.long_term_pricing_id = params[:long_term_pricing_id]
        type
      end
    end

    module CreateJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateJobOutput, context: context)
        type = Types::CreateJobOutput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module CreateLongTermPricingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLongTermPricingInput, context: context)
        type = Types::CreateLongTermPricingInput.new
        type.long_term_pricing_type = params[:long_term_pricing_type]
        type.is_long_term_pricing_auto_renew = params[:is_long_term_pricing_auto_renew]
        type.snowball_type = params[:snowball_type]
        type
      end
    end

    module CreateLongTermPricingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLongTermPricingOutput, context: context)
        type = Types::CreateLongTermPricingOutput.new
        type.long_term_pricing_id = params[:long_term_pricing_id]
        type
      end
    end

    module CreateReturnShippingLabelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReturnShippingLabelInput, context: context)
        type = Types::CreateReturnShippingLabelInput.new
        type.job_id = params[:job_id]
        type.shipping_option = params[:shipping_option]
        type
      end
    end

    module CreateReturnShippingLabelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateReturnShippingLabelOutput, context: context)
        type = Types::CreateReturnShippingLabelOutput.new
        type.status = params[:status]
        type
      end
    end

    module DataTransfer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataTransfer, context: context)
        type = Types::DataTransfer.new
        type.bytes_transferred = params[:bytes_transferred]
        type.objects_transferred = params[:objects_transferred]
        type.total_bytes = params[:total_bytes]
        type.total_objects = params[:total_objects]
        type
      end
    end

    module DescribeAddressInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAddressInput, context: context)
        type = Types::DescribeAddressInput.new
        type.address_id = params[:address_id]
        type
      end
    end

    module DescribeAddressOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAddressOutput, context: context)
        type = Types::DescribeAddressOutput.new
        type.address = Address.build(params[:address], context: "#{context}[:address]") unless params[:address].nil?
        type
      end
    end

    module DescribeAddressesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAddressesInput, context: context)
        type = Types::DescribeAddressesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeAddressesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAddressesOutput, context: context)
        type = Types::DescribeAddressesOutput.new
        type.addresses = AddressList.build(params[:addresses], context: "#{context}[:addresses]") unless params[:addresses].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterInput, context: context)
        type = Types::DescribeClusterInput.new
        type.cluster_id = params[:cluster_id]
        type
      end
    end

    module DescribeClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClusterOutput, context: context)
        type = Types::DescribeClusterOutput.new
        type.cluster_metadata = ClusterMetadata.build(params[:cluster_metadata], context: "#{context}[:cluster_metadata]") unless params[:cluster_metadata].nil?
        type
      end
    end

    module DescribeJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobInput, context: context)
        type = Types::DescribeJobInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeJobOutput, context: context)
        type = Types::DescribeJobOutput.new
        type.job_metadata = JobMetadata.build(params[:job_metadata], context: "#{context}[:job_metadata]") unless params[:job_metadata].nil?
        type.sub_job_metadata = JobMetadataList.build(params[:sub_job_metadata], context: "#{context}[:sub_job_metadata]") unless params[:sub_job_metadata].nil?
        type
      end
    end

    module DescribeReturnShippingLabelInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReturnShippingLabelInput, context: context)
        type = Types::DescribeReturnShippingLabelInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module DescribeReturnShippingLabelOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeReturnShippingLabelOutput, context: context)
        type = Types::DescribeReturnShippingLabelOutput.new
        type.status = params[:status]
        type.expiration_date = params[:expiration_date]
        type.return_shipping_label_uri = params[:return_shipping_label_uri]
        type
      end
    end

    module DeviceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeviceConfiguration, context: context)
        type = Types::DeviceConfiguration.new
        type.snowcone_device_configuration = SnowconeDeviceConfiguration.build(params[:snowcone_device_configuration], context: "#{context}[:snowcone_device_configuration]") unless params[:snowcone_device_configuration].nil?
        type
      end
    end

    module Ec2AmiResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Ec2AmiResource, context: context)
        type = Types::Ec2AmiResource.new
        type.ami_id = params[:ami_id]
        type.snowball_ami_id = params[:snowball_ami_id]
        type
      end
    end

    module Ec2AmiResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Ec2AmiResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Ec2RequestFailedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Ec2RequestFailedException, context: context)
        type = Types::Ec2RequestFailedException.new
        type.message = params[:message]
        type
      end
    end

    module EventTriggerDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EventTriggerDefinition, context: context)
        type = Types::EventTriggerDefinition.new
        type.event_resource_arn = params[:event_resource_arn]
        type
      end
    end

    module EventTriggerDefinitionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EventTriggerDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GetJobManifestInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobManifestInput, context: context)
        type = Types::GetJobManifestInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module GetJobManifestOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobManifestOutput, context: context)
        type = Types::GetJobManifestOutput.new
        type.manifest_uri = params[:manifest_uri]
        type
      end
    end

    module GetJobUnlockCodeInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobUnlockCodeInput, context: context)
        type = Types::GetJobUnlockCodeInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module GetJobUnlockCodeOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetJobUnlockCodeOutput, context: context)
        type = Types::GetJobUnlockCodeOutput.new
        type.unlock_code = params[:unlock_code]
        type
      end
    end

    module GetSnowballUsageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSnowballUsageInput, context: context)
        type = Types::GetSnowballUsageInput.new
        type
      end
    end

    module GetSnowballUsageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSnowballUsageOutput, context: context)
        type = Types::GetSnowballUsageOutput.new
        type.snowball_limit = params[:snowball_limit]
        type.snowballs_in_use = params[:snowballs_in_use]
        type
      end
    end

    module GetSoftwareUpdatesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSoftwareUpdatesInput, context: context)
        type = Types::GetSoftwareUpdatesInput.new
        type.job_id = params[:job_id]
        type
      end
    end

    module GetSoftwareUpdatesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetSoftwareUpdatesOutput, context: context)
        type = Types::GetSoftwareUpdatesOutput.new
        type.updates_uri = params[:updates_uri]
        type
      end
    end

    module INDTaxDocuments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::INDTaxDocuments, context: context)
        type = Types::INDTaxDocuments.new
        type.gstin = params[:gstin]
        type
      end
    end

    module InvalidAddressException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidAddressException, context: context)
        type = Types::InvalidAddressException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidInputCombinationException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInputCombinationException, context: context)
        type = Types::InvalidInputCombinationException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidJobStateException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidJobStateException, context: context)
        type = Types::InvalidJobStateException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidResourceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidResourceException, context: context)
        type = Types::InvalidResourceException.new
        type.message = params[:message]
        type.resource_type = params[:resource_type]
        type
      end
    end

    module JobListEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobListEntry, context: context)
        type = Types::JobListEntry.new
        type.job_id = params[:job_id]
        type.job_state = params[:job_state]
        type.is_master = params[:is_master]
        type.job_type = params[:job_type]
        type.snowball_type = params[:snowball_type]
        type.creation_date = params[:creation_date]
        type.description = params[:description]
        type
      end
    end

    module JobListEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobLogs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobLogs, context: context)
        type = Types::JobLogs.new
        type.job_completion_report_uri = params[:job_completion_report_uri]
        type.job_success_log_uri = params[:job_success_log_uri]
        type.job_failure_log_uri = params[:job_failure_log_uri]
        type
      end
    end

    module JobMetadata
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobMetadata, context: context)
        type = Types::JobMetadata.new
        type.job_id = params[:job_id]
        type.job_state = params[:job_state]
        type.job_type = params[:job_type]
        type.snowball_type = params[:snowball_type]
        type.creation_date = params[:creation_date]
        type.resources = JobResource.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.description = params[:description]
        type.kms_key_arn = params[:kms_key_arn]
        type.role_arn = params[:role_arn]
        type.address_id = params[:address_id]
        type.shipping_details = ShippingDetails.build(params[:shipping_details], context: "#{context}[:shipping_details]") unless params[:shipping_details].nil?
        type.snowball_capacity_preference = params[:snowball_capacity_preference]
        type.notification = Notification.build(params[:notification], context: "#{context}[:notification]") unless params[:notification].nil?
        type.data_transfer_progress = DataTransfer.build(params[:data_transfer_progress], context: "#{context}[:data_transfer_progress]") unless params[:data_transfer_progress].nil?
        type.job_log_info = JobLogs.build(params[:job_log_info], context: "#{context}[:job_log_info]") unless params[:job_log_info].nil?
        type.cluster_id = params[:cluster_id]
        type.forwarding_address_id = params[:forwarding_address_id]
        type.tax_documents = TaxDocuments.build(params[:tax_documents], context: "#{context}[:tax_documents]") unless params[:tax_documents].nil?
        type.device_configuration = DeviceConfiguration.build(params[:device_configuration], context: "#{context}[:device_configuration]") unless params[:device_configuration].nil?
        type.remote_management = params[:remote_management]
        type.long_term_pricing_id = params[:long_term_pricing_id]
        type.on_device_service_configuration = OnDeviceServiceConfiguration.build(params[:on_device_service_configuration], context: "#{context}[:on_device_service_configuration]") unless params[:on_device_service_configuration].nil?
        type
      end
    end

    module JobMetadataList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << JobMetadata.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module JobResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::JobResource, context: context)
        type = Types::JobResource.new
        type.s3_resources = S3ResourceList.build(params[:s3_resources], context: "#{context}[:s3_resources]") unless params[:s3_resources].nil?
        type.lambda_resources = LambdaResourceList.build(params[:lambda_resources], context: "#{context}[:lambda_resources]") unless params[:lambda_resources].nil?
        type.ec2_ami_resources = Ec2AmiResourceList.build(params[:ec2_ami_resources], context: "#{context}[:ec2_ami_resources]") unless params[:ec2_ami_resources].nil?
        type
      end
    end

    module JobStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module KMSRequestFailedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KMSRequestFailedException, context: context)
        type = Types::KMSRequestFailedException.new
        type.message = params[:message]
        type
      end
    end

    module KeyRange
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::KeyRange, context: context)
        type = Types::KeyRange.new
        type.begin_marker = params[:begin_marker]
        type.end_marker = params[:end_marker]
        type
      end
    end

    module LambdaResource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LambdaResource, context: context)
        type = Types::LambdaResource.new
        type.lambda_arn = params[:lambda_arn]
        type.event_triggers = EventTriggerDefinitionList.build(params[:event_triggers], context: "#{context}[:event_triggers]") unless params[:event_triggers].nil?
        type
      end
    end

    module LambdaResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LambdaResource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module ListClusterJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClusterJobsInput, context: context)
        type = Types::ListClusterJobsInput.new
        type.cluster_id = params[:cluster_id]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListClusterJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClusterJobsOutput, context: context)
        type = Types::ListClusterJobsOutput.new
        type.job_list_entries = JobListEntryList.build(params[:job_list_entries], context: "#{context}[:job_list_entries]") unless params[:job_list_entries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListClustersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClustersInput, context: context)
        type = Types::ListClustersInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListClustersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListClustersOutput, context: context)
        type = Types::ListClustersOutput.new
        type.cluster_list_entries = ClusterListEntryList.build(params[:cluster_list_entries], context: "#{context}[:cluster_list_entries]") unless params[:cluster_list_entries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCompatibleImagesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCompatibleImagesInput, context: context)
        type = Types::ListCompatibleImagesInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListCompatibleImagesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListCompatibleImagesOutput, context: context)
        type = Types::ListCompatibleImagesOutput.new
        type.compatible_images = CompatibleImageList.build(params[:compatible_images], context: "#{context}[:compatible_images]") unless params[:compatible_images].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsInput, context: context)
        type = Types::ListJobsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListJobsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListJobsOutput, context: context)
        type = Types::ListJobsOutput.new
        type.job_list_entries = JobListEntryList.build(params[:job_list_entries], context: "#{context}[:job_list_entries]") unless params[:job_list_entries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLongTermPricingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLongTermPricingInput, context: context)
        type = Types::ListLongTermPricingInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLongTermPricingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLongTermPricingOutput, context: context)
        type = Types::ListLongTermPricingOutput.new
        type.long_term_pricing_entries = LongTermPricingEntryList.build(params[:long_term_pricing_entries], context: "#{context}[:long_term_pricing_entries]") unless params[:long_term_pricing_entries].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LongTermPricingAssociatedJobIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LongTermPricingEntryList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LongTermPricingListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LongTermPricingListEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LongTermPricingListEntry, context: context)
        type = Types::LongTermPricingListEntry.new
        type.long_term_pricing_id = params[:long_term_pricing_id]
        type.long_term_pricing_end_date = params[:long_term_pricing_end_date]
        type.long_term_pricing_start_date = params[:long_term_pricing_start_date]
        type.long_term_pricing_type = params[:long_term_pricing_type]
        type.current_active_job = params[:current_active_job]
        type.replacement_job = params[:replacement_job]
        type.is_long_term_pricing_auto_renew = params[:is_long_term_pricing_auto_renew]
        type.long_term_pricing_status = params[:long_term_pricing_status]
        type.snowball_type = params[:snowball_type]
        type.job_ids = LongTermPricingAssociatedJobIdList.build(params[:job_ids], context: "#{context}[:job_ids]") unless params[:job_ids].nil?
        type
      end
    end

    module NFSOnDeviceServiceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NFSOnDeviceServiceConfiguration, context: context)
        type = Types::NFSOnDeviceServiceConfiguration.new
        type.storage_limit = params[:storage_limit]
        type.storage_unit = params[:storage_unit]
        type
      end
    end

    module Notification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Notification, context: context)
        type = Types::Notification.new
        type.sns_topic_arn = params[:sns_topic_arn]
        type.job_states_to_notify = JobStateList.build(params[:job_states_to_notify], context: "#{context}[:job_states_to_notify]") unless params[:job_states_to_notify].nil?
        type.notify_all = params[:notify_all]
        type
      end
    end

    module OnDeviceServiceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OnDeviceServiceConfiguration, context: context)
        type = Types::OnDeviceServiceConfiguration.new
        type.nfs_on_device_service = NFSOnDeviceServiceConfiguration.build(params[:nfs_on_device_service], context: "#{context}[:nfs_on_device_service]") unless params[:nfs_on_device_service].nil?
        type.tgw_on_device_service = TGWOnDeviceServiceConfiguration.build(params[:tgw_on_device_service], context: "#{context}[:tgw_on_device_service]") unless params[:tgw_on_device_service].nil?
        type
      end
    end

    module ReturnShippingLabelAlreadyExistsException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ReturnShippingLabelAlreadyExistsException, context: context)
        type = Types::ReturnShippingLabelAlreadyExistsException.new
        type.message = params[:message]
        type
      end
    end

    module S3Resource
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Resource, context: context)
        type = Types::S3Resource.new
        type.bucket_arn = params[:bucket_arn]
        type.key_range = KeyRange.build(params[:key_range], context: "#{context}[:key_range]") unless params[:key_range].nil?
        type.target_on_device_services = TargetOnDeviceServiceList.build(params[:target_on_device_services], context: "#{context}[:target_on_device_services]") unless params[:target_on_device_services].nil?
        type
      end
    end

    module S3ResourceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << S3Resource.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Shipment
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Shipment, context: context)
        type = Types::Shipment.new
        type.status = params[:status]
        type.tracking_number = params[:tracking_number]
        type
      end
    end

    module ShippingDetails
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ShippingDetails, context: context)
        type = Types::ShippingDetails.new
        type.shipping_option = params[:shipping_option]
        type.inbound_shipment = Shipment.build(params[:inbound_shipment], context: "#{context}[:inbound_shipment]") unless params[:inbound_shipment].nil?
        type.outbound_shipment = Shipment.build(params[:outbound_shipment], context: "#{context}[:outbound_shipment]") unless params[:outbound_shipment].nil?
        type
      end
    end

    module SnowconeDeviceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SnowconeDeviceConfiguration, context: context)
        type = Types::SnowconeDeviceConfiguration.new
        type.wireless_connection = WirelessConnection.build(params[:wireless_connection], context: "#{context}[:wireless_connection]") unless params[:wireless_connection].nil?
        type
      end
    end

    module TGWOnDeviceServiceConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TGWOnDeviceServiceConfiguration, context: context)
        type = Types::TGWOnDeviceServiceConfiguration.new
        type.storage_limit = params[:storage_limit]
        type.storage_unit = params[:storage_unit]
        type
      end
    end

    module TargetOnDeviceService
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetOnDeviceService, context: context)
        type = Types::TargetOnDeviceService.new
        type.service_name = params[:service_name]
        type.transfer_option = params[:transfer_option]
        type
      end
    end

    module TargetOnDeviceServiceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TargetOnDeviceService.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TaxDocuments
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaxDocuments, context: context)
        type = Types::TaxDocuments.new
        type.ind = INDTaxDocuments.build(params[:ind], context: "#{context}[:ind]") unless params[:ind].nil?
        type
      end
    end

    module UnsupportedAddressException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedAddressException, context: context)
        type = Types::UnsupportedAddressException.new
        type.message = params[:message]
        type
      end
    end

    module UpdateClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClusterInput, context: context)
        type = Types::UpdateClusterInput.new
        type.cluster_id = params[:cluster_id]
        type.role_arn = params[:role_arn]
        type.description = params[:description]
        type.resources = JobResource.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.on_device_service_configuration = OnDeviceServiceConfiguration.build(params[:on_device_service_configuration], context: "#{context}[:on_device_service_configuration]") unless params[:on_device_service_configuration].nil?
        type.address_id = params[:address_id]
        type.shipping_option = params[:shipping_option]
        type.notification = Notification.build(params[:notification], context: "#{context}[:notification]") unless params[:notification].nil?
        type.forwarding_address_id = params[:forwarding_address_id]
        type
      end
    end

    module UpdateClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateClusterOutput, context: context)
        type = Types::UpdateClusterOutput.new
        type
      end
    end

    module UpdateJobInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJobInput, context: context)
        type = Types::UpdateJobInput.new
        type.job_id = params[:job_id]
        type.role_arn = params[:role_arn]
        type.notification = Notification.build(params[:notification], context: "#{context}[:notification]") unless params[:notification].nil?
        type.resources = JobResource.build(params[:resources], context: "#{context}[:resources]") unless params[:resources].nil?
        type.on_device_service_configuration = OnDeviceServiceConfiguration.build(params[:on_device_service_configuration], context: "#{context}[:on_device_service_configuration]") unless params[:on_device_service_configuration].nil?
        type.address_id = params[:address_id]
        type.shipping_option = params[:shipping_option]
        type.description = params[:description]
        type.snowball_capacity_preference = params[:snowball_capacity_preference]
        type.forwarding_address_id = params[:forwarding_address_id]
        type
      end
    end

    module UpdateJobOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJobOutput, context: context)
        type = Types::UpdateJobOutput.new
        type
      end
    end

    module UpdateJobShipmentStateInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJobShipmentStateInput, context: context)
        type = Types::UpdateJobShipmentStateInput.new
        type.job_id = params[:job_id]
        type.shipment_state = params[:shipment_state]
        type
      end
    end

    module UpdateJobShipmentStateOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateJobShipmentStateOutput, context: context)
        type = Types::UpdateJobShipmentStateOutput.new
        type
      end
    end

    module UpdateLongTermPricingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLongTermPricingInput, context: context)
        type = Types::UpdateLongTermPricingInput.new
        type.long_term_pricing_id = params[:long_term_pricing_id]
        type.replacement_job = params[:replacement_job]
        type.is_long_term_pricing_auto_renew = params[:is_long_term_pricing_auto_renew]
        type
      end
    end

    module UpdateLongTermPricingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLongTermPricingOutput, context: context)
        type = Types::UpdateLongTermPricingOutput.new
        type
      end
    end

    module WirelessConnection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::WirelessConnection, context: context)
        type = Types::WirelessConnection.new
        type.is_wifi_enabled = params[:is_wifi_enabled]
        type
      end
    end

  end
end
