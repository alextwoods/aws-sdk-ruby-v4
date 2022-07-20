# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::Snowball
  module Validators

    class Address
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Address, context: context)
        Hearth::Validator.validate!(input[:address_id], ::String, context: "#{context}[:address_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:company], ::String, context: "#{context}[:company]")
        Hearth::Validator.validate!(input[:street1], ::String, context: "#{context}[:street1]")
        Hearth::Validator.validate!(input[:street2], ::String, context: "#{context}[:street2]")
        Hearth::Validator.validate!(input[:street3], ::String, context: "#{context}[:street3]")
        Hearth::Validator.validate!(input[:city], ::String, context: "#{context}[:city]")
        Hearth::Validator.validate!(input[:state_or_province], ::String, context: "#{context}[:state_or_province]")
        Hearth::Validator.validate!(input[:prefecture_or_district], ::String, context: "#{context}[:prefecture_or_district]")
        Hearth::Validator.validate!(input[:landmark], ::String, context: "#{context}[:landmark]")
        Hearth::Validator.validate!(input[:country], ::String, context: "#{context}[:country]")
        Hearth::Validator.validate!(input[:postal_code], ::String, context: "#{context}[:postal_code]")
        Hearth::Validator.validate!(input[:phone_number], ::String, context: "#{context}[:phone_number]")
        Hearth::Validator.validate!(input[:is_restricted], ::TrueClass, ::FalseClass, context: "#{context}[:is_restricted]")
      end
    end

    class AddressList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Address.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CancelClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
      end
    end

    class CancelClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelClusterOutput, context: context)
      end
    end

    class CancelJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class CancelJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelJobOutput, context: context)
      end
    end

    class ClusterLimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterLimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ClusterListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterListEntry, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:cluster_state], ::String, context: "#{context}[:cluster_state]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class ClusterListEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ClusterListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ClusterMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClusterMetadata, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:cluster_state], ::String, context: "#{context}[:cluster_state]")
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
        Hearth::Validator.validate!(input[:snowball_type], ::String, context: "#{context}[:snowball_type]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        JobResource.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Hearth::Validator.validate!(input[:address_id], ::String, context: "#{context}[:address_id]")
        Hearth::Validator.validate!(input[:shipping_option], ::String, context: "#{context}[:shipping_option]")
        Notification.validate!(input[:notification], context: "#{context}[:notification]") unless input[:notification].nil?
        Hearth::Validator.validate!(input[:forwarding_address_id], ::String, context: "#{context}[:forwarding_address_id]")
        TaxDocuments.validate!(input[:tax_documents], context: "#{context}[:tax_documents]") unless input[:tax_documents].nil?
        OnDeviceServiceConfiguration.validate!(input[:on_device_service_configuration], context: "#{context}[:on_device_service_configuration]") unless input[:on_device_service_configuration].nil?
      end
    end

    class CompatibleImage
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CompatibleImage, context: context)
        Hearth::Validator.validate!(input[:ami_id], ::String, context: "#{context}[:ami_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class CompatibleImageList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          CompatibleImage.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:conflict_resource], ::String, context: "#{context}[:conflict_resource]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateAddressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAddressInput, context: context)
        Address.validate!(input[:address], context: "#{context}[:address]") unless input[:address].nil?
      end
    end

    class CreateAddressOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAddressOutput, context: context)
        Hearth::Validator.validate!(input[:address_id], ::String, context: "#{context}[:address_id]")
      end
    end

    class CreateClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterInput, context: context)
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
        JobResource.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        OnDeviceServiceConfiguration.validate!(input[:on_device_service_configuration], context: "#{context}[:on_device_service_configuration]") unless input[:on_device_service_configuration].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:address_id], ::String, context: "#{context}[:address_id]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:snowball_type], ::String, context: "#{context}[:snowball_type]")
        Hearth::Validator.validate!(input[:shipping_option], ::String, context: "#{context}[:shipping_option]")
        Notification.validate!(input[:notification], context: "#{context}[:notification]") unless input[:notification].nil?
        Hearth::Validator.validate!(input[:forwarding_address_id], ::String, context: "#{context}[:forwarding_address_id]")
        TaxDocuments.validate!(input[:tax_documents], context: "#{context}[:tax_documents]") unless input[:tax_documents].nil?
        Hearth::Validator.validate!(input[:remote_management], ::String, context: "#{context}[:remote_management]")
      end
    end

    class CreateClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterOutput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
      end
    end

    class CreateJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobInput, context: context)
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
        JobResource.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        OnDeviceServiceConfiguration.validate!(input[:on_device_service_configuration], context: "#{context}[:on_device_service_configuration]") unless input[:on_device_service_configuration].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:address_id], ::String, context: "#{context}[:address_id]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:snowball_capacity_preference], ::String, context: "#{context}[:snowball_capacity_preference]")
        Hearth::Validator.validate!(input[:shipping_option], ::String, context: "#{context}[:shipping_option]")
        Notification.validate!(input[:notification], context: "#{context}[:notification]") unless input[:notification].nil?
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:snowball_type], ::String, context: "#{context}[:snowball_type]")
        Hearth::Validator.validate!(input[:forwarding_address_id], ::String, context: "#{context}[:forwarding_address_id]")
        TaxDocuments.validate!(input[:tax_documents], context: "#{context}[:tax_documents]") unless input[:tax_documents].nil?
        DeviceConfiguration.validate!(input[:device_configuration], context: "#{context}[:device_configuration]") unless input[:device_configuration].nil?
        Hearth::Validator.validate!(input[:remote_management], ::String, context: "#{context}[:remote_management]")
        Hearth::Validator.validate!(input[:long_term_pricing_id], ::String, context: "#{context}[:long_term_pricing_id]")
      end
    end

    class CreateJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateJobOutput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class CreateLongTermPricingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLongTermPricingInput, context: context)
        Hearth::Validator.validate!(input[:long_term_pricing_type], ::String, context: "#{context}[:long_term_pricing_type]")
        Hearth::Validator.validate!(input[:is_long_term_pricing_auto_renew], ::TrueClass, ::FalseClass, context: "#{context}[:is_long_term_pricing_auto_renew]")
        Hearth::Validator.validate!(input[:snowball_type], ::String, context: "#{context}[:snowball_type]")
      end
    end

    class CreateLongTermPricingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLongTermPricingOutput, context: context)
        Hearth::Validator.validate!(input[:long_term_pricing_id], ::String, context: "#{context}[:long_term_pricing_id]")
      end
    end

    class CreateReturnShippingLabelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReturnShippingLabelInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:shipping_option], ::String, context: "#{context}[:shipping_option]")
      end
    end

    class CreateReturnShippingLabelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateReturnShippingLabelOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DataTransfer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataTransfer, context: context)
        Hearth::Validator.validate!(input[:bytes_transferred], ::Integer, context: "#{context}[:bytes_transferred]")
        Hearth::Validator.validate!(input[:objects_transferred], ::Integer, context: "#{context}[:objects_transferred]")
        Hearth::Validator.validate!(input[:total_bytes], ::Integer, context: "#{context}[:total_bytes]")
        Hearth::Validator.validate!(input[:total_objects], ::Integer, context: "#{context}[:total_objects]")
      end
    end

    class DescribeAddressInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAddressInput, context: context)
        Hearth::Validator.validate!(input[:address_id], ::String, context: "#{context}[:address_id]")
      end
    end

    class DescribeAddressOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAddressOutput, context: context)
        Address.validate!(input[:address], context: "#{context}[:address]") unless input[:address].nil?
      end
    end

    class DescribeAddressesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAddressesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeAddressesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAddressesOutput, context: context)
        AddressList.validate!(input[:addresses], context: "#{context}[:addresses]") unless input[:addresses].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
      end
    end

    class DescribeClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClusterOutput, context: context)
        ClusterMetadata.validate!(input[:cluster_metadata], context: "#{context}[:cluster_metadata]") unless input[:cluster_metadata].nil?
      end
    end

    class DescribeJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeJobOutput, context: context)
        JobMetadata.validate!(input[:job_metadata], context: "#{context}[:job_metadata]") unless input[:job_metadata].nil?
        JobMetadataList.validate!(input[:sub_job_metadata], context: "#{context}[:sub_job_metadata]") unless input[:sub_job_metadata].nil?
      end
    end

    class DescribeReturnShippingLabelInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReturnShippingLabelInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class DescribeReturnShippingLabelOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeReturnShippingLabelOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:expiration_date], ::Time, context: "#{context}[:expiration_date]")
        Hearth::Validator.validate!(input[:return_shipping_label_uri], ::String, context: "#{context}[:return_shipping_label_uri]")
      end
    end

    class DeviceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeviceConfiguration, context: context)
        SnowconeDeviceConfiguration.validate!(input[:snowcone_device_configuration], context: "#{context}[:snowcone_device_configuration]") unless input[:snowcone_device_configuration].nil?
      end
    end

    class Ec2AmiResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ec2AmiResource, context: context)
        Hearth::Validator.validate!(input[:ami_id], ::String, context: "#{context}[:ami_id]")
        Hearth::Validator.validate!(input[:snowball_ami_id], ::String, context: "#{context}[:snowball_ami_id]")
      end
    end

    class Ec2AmiResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Ec2AmiResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Ec2RequestFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ec2RequestFailedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class EventTriggerDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EventTriggerDefinition, context: context)
        Hearth::Validator.validate!(input[:event_resource_arn], ::String, context: "#{context}[:event_resource_arn]")
      end
    end

    class EventTriggerDefinitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EventTriggerDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GetJobManifestInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobManifestInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class GetJobManifestOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobManifestOutput, context: context)
        Hearth::Validator.validate!(input[:manifest_uri], ::String, context: "#{context}[:manifest_uri]")
      end
    end

    class GetJobUnlockCodeInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobUnlockCodeInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class GetJobUnlockCodeOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetJobUnlockCodeOutput, context: context)
        Hearth::Validator.validate!(input[:unlock_code], ::String, context: "#{context}[:unlock_code]")
      end
    end

    class GetSnowballUsageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSnowballUsageInput, context: context)
      end
    end

    class GetSnowballUsageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSnowballUsageOutput, context: context)
        Hearth::Validator.validate!(input[:snowball_limit], ::Integer, context: "#{context}[:snowball_limit]")
        Hearth::Validator.validate!(input[:snowballs_in_use], ::Integer, context: "#{context}[:snowballs_in_use]")
      end
    end

    class GetSoftwareUpdatesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSoftwareUpdatesInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
      end
    end

    class GetSoftwareUpdatesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetSoftwareUpdatesOutput, context: context)
        Hearth::Validator.validate!(input[:updates_uri], ::String, context: "#{context}[:updates_uri]")
      end
    end

    class INDTaxDocuments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::INDTaxDocuments, context: context)
        Hearth::Validator.validate!(input[:gstin], ::String, context: "#{context}[:gstin]")
      end
    end

    class InvalidAddressException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidAddressException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidInputCombinationException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputCombinationException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidJobStateException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidJobStateException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidResourceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidResourceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:resource_type], ::String, context: "#{context}[:resource_type]")
      end
    end

    class JobListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobListEntry, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_state], ::String, context: "#{context}[:job_state]")
        Hearth::Validator.validate!(input[:is_master], ::TrueClass, ::FalseClass, context: "#{context}[:is_master]")
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
        Hearth::Validator.validate!(input[:snowball_type], ::String, context: "#{context}[:snowball_type]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
      end
    end

    class JobListEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          JobListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobLogs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobLogs, context: context)
        Hearth::Validator.validate!(input[:job_completion_report_uri], ::String, context: "#{context}[:job_completion_report_uri]")
        Hearth::Validator.validate!(input[:job_success_log_uri], ::String, context: "#{context}[:job_success_log_uri]")
        Hearth::Validator.validate!(input[:job_failure_log_uri], ::String, context: "#{context}[:job_failure_log_uri]")
      end
    end

    class JobMetadata
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobMetadata, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:job_state], ::String, context: "#{context}[:job_state]")
        Hearth::Validator.validate!(input[:job_type], ::String, context: "#{context}[:job_type]")
        Hearth::Validator.validate!(input[:snowball_type], ::String, context: "#{context}[:snowball_type]")
        Hearth::Validator.validate!(input[:creation_date], ::Time, context: "#{context}[:creation_date]")
        JobResource.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:kms_key_arn], ::String, context: "#{context}[:kms_key_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:address_id], ::String, context: "#{context}[:address_id]")
        ShippingDetails.validate!(input[:shipping_details], context: "#{context}[:shipping_details]") unless input[:shipping_details].nil?
        Hearth::Validator.validate!(input[:snowball_capacity_preference], ::String, context: "#{context}[:snowball_capacity_preference]")
        Notification.validate!(input[:notification], context: "#{context}[:notification]") unless input[:notification].nil?
        DataTransfer.validate!(input[:data_transfer_progress], context: "#{context}[:data_transfer_progress]") unless input[:data_transfer_progress].nil?
        JobLogs.validate!(input[:job_log_info], context: "#{context}[:job_log_info]") unless input[:job_log_info].nil?
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:forwarding_address_id], ::String, context: "#{context}[:forwarding_address_id]")
        TaxDocuments.validate!(input[:tax_documents], context: "#{context}[:tax_documents]") unless input[:tax_documents].nil?
        DeviceConfiguration.validate!(input[:device_configuration], context: "#{context}[:device_configuration]") unless input[:device_configuration].nil?
        Hearth::Validator.validate!(input[:remote_management], ::String, context: "#{context}[:remote_management]")
        Hearth::Validator.validate!(input[:long_term_pricing_id], ::String, context: "#{context}[:long_term_pricing_id]")
        OnDeviceServiceConfiguration.validate!(input[:on_device_service_configuration], context: "#{context}[:on_device_service_configuration]") unless input[:on_device_service_configuration].nil?
      end
    end

    class JobMetadataList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          JobMetadata.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class JobResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::JobResource, context: context)
        S3ResourceList.validate!(input[:s3_resources], context: "#{context}[:s3_resources]") unless input[:s3_resources].nil?
        LambdaResourceList.validate!(input[:lambda_resources], context: "#{context}[:lambda_resources]") unless input[:lambda_resources].nil?
        Ec2AmiResourceList.validate!(input[:ec2_ami_resources], context: "#{context}[:ec2_ami_resources]") unless input[:ec2_ami_resources].nil?
      end
    end

    class JobStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class KMSRequestFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KMSRequestFailedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class KeyRange
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::KeyRange, context: context)
        Hearth::Validator.validate!(input[:begin_marker], ::String, context: "#{context}[:begin_marker]")
        Hearth::Validator.validate!(input[:end_marker], ::String, context: "#{context}[:end_marker]")
      end
    end

    class LambdaResource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LambdaResource, context: context)
        Hearth::Validator.validate!(input[:lambda_arn], ::String, context: "#{context}[:lambda_arn]")
        EventTriggerDefinitionList.validate!(input[:event_triggers], context: "#{context}[:event_triggers]") unless input[:event_triggers].nil?
      end
    end

    class LambdaResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LambdaResource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class ListClusterJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClusterJobsInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListClusterJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClusterJobsOutput, context: context)
        JobListEntryList.validate!(input[:job_list_entries], context: "#{context}[:job_list_entries]") unless input[:job_list_entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListClustersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClustersInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListClustersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListClustersOutput, context: context)
        ClusterListEntryList.validate!(input[:cluster_list_entries], context: "#{context}[:cluster_list_entries]") unless input[:cluster_list_entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCompatibleImagesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCompatibleImagesInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListCompatibleImagesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListCompatibleImagesOutput, context: context)
        CompatibleImageList.validate!(input[:compatible_images], context: "#{context}[:compatible_images]") unless input[:compatible_images].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListJobsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListJobsOutput, context: context)
        JobListEntryList.validate!(input[:job_list_entries], context: "#{context}[:job_list_entries]") unless input[:job_list_entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLongTermPricingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLongTermPricingInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLongTermPricingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLongTermPricingOutput, context: context)
        LongTermPricingEntryList.validate!(input[:long_term_pricing_entries], context: "#{context}[:long_term_pricing_entries]") unless input[:long_term_pricing_entries].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LongTermPricingAssociatedJobIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LongTermPricingEntryList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LongTermPricingListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LongTermPricingListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LongTermPricingListEntry, context: context)
        Hearth::Validator.validate!(input[:long_term_pricing_id], ::String, context: "#{context}[:long_term_pricing_id]")
        Hearth::Validator.validate!(input[:long_term_pricing_end_date], ::Time, context: "#{context}[:long_term_pricing_end_date]")
        Hearth::Validator.validate!(input[:long_term_pricing_start_date], ::Time, context: "#{context}[:long_term_pricing_start_date]")
        Hearth::Validator.validate!(input[:long_term_pricing_type], ::String, context: "#{context}[:long_term_pricing_type]")
        Hearth::Validator.validate!(input[:current_active_job], ::String, context: "#{context}[:current_active_job]")
        Hearth::Validator.validate!(input[:replacement_job], ::String, context: "#{context}[:replacement_job]")
        Hearth::Validator.validate!(input[:is_long_term_pricing_auto_renew], ::TrueClass, ::FalseClass, context: "#{context}[:is_long_term_pricing_auto_renew]")
        Hearth::Validator.validate!(input[:long_term_pricing_status], ::String, context: "#{context}[:long_term_pricing_status]")
        Hearth::Validator.validate!(input[:snowball_type], ::String, context: "#{context}[:snowball_type]")
        LongTermPricingAssociatedJobIdList.validate!(input[:job_ids], context: "#{context}[:job_ids]") unless input[:job_ids].nil?
      end
    end

    class NFSOnDeviceServiceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NFSOnDeviceServiceConfiguration, context: context)
        Hearth::Validator.validate!(input[:storage_limit], ::Integer, context: "#{context}[:storage_limit]")
        Hearth::Validator.validate!(input[:storage_unit], ::String, context: "#{context}[:storage_unit]")
      end
    end

    class Notification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Notification, context: context)
        Hearth::Validator.validate!(input[:sns_topic_arn], ::String, context: "#{context}[:sns_topic_arn]")
        JobStateList.validate!(input[:job_states_to_notify], context: "#{context}[:job_states_to_notify]") unless input[:job_states_to_notify].nil?
        Hearth::Validator.validate!(input[:notify_all], ::TrueClass, ::FalseClass, context: "#{context}[:notify_all]")
      end
    end

    class OnDeviceServiceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OnDeviceServiceConfiguration, context: context)
        NFSOnDeviceServiceConfiguration.validate!(input[:nfs_on_device_service], context: "#{context}[:nfs_on_device_service]") unless input[:nfs_on_device_service].nil?
        TGWOnDeviceServiceConfiguration.validate!(input[:tgw_on_device_service], context: "#{context}[:tgw_on_device_service]") unless input[:tgw_on_device_service].nil?
      end
    end

    class ReturnShippingLabelAlreadyExistsException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ReturnShippingLabelAlreadyExistsException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class S3Resource
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Resource, context: context)
        Hearth::Validator.validate!(input[:bucket_arn], ::String, context: "#{context}[:bucket_arn]")
        KeyRange.validate!(input[:key_range], context: "#{context}[:key_range]") unless input[:key_range].nil?
        TargetOnDeviceServiceList.validate!(input[:target_on_device_services], context: "#{context}[:target_on_device_services]") unless input[:target_on_device_services].nil?
      end
    end

    class S3ResourceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          S3Resource.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Shipment
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Shipment, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:tracking_number], ::String, context: "#{context}[:tracking_number]")
      end
    end

    class ShippingDetails
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ShippingDetails, context: context)
        Hearth::Validator.validate!(input[:shipping_option], ::String, context: "#{context}[:shipping_option]")
        Shipment.validate!(input[:inbound_shipment], context: "#{context}[:inbound_shipment]") unless input[:inbound_shipment].nil?
        Shipment.validate!(input[:outbound_shipment], context: "#{context}[:outbound_shipment]") unless input[:outbound_shipment].nil?
      end
    end

    class SnowconeDeviceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SnowconeDeviceConfiguration, context: context)
        WirelessConnection.validate!(input[:wireless_connection], context: "#{context}[:wireless_connection]") unless input[:wireless_connection].nil?
      end
    end

    class TGWOnDeviceServiceConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TGWOnDeviceServiceConfiguration, context: context)
        Hearth::Validator.validate!(input[:storage_limit], ::Integer, context: "#{context}[:storage_limit]")
        Hearth::Validator.validate!(input[:storage_unit], ::String, context: "#{context}[:storage_unit]")
      end
    end

    class TargetOnDeviceService
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetOnDeviceService, context: context)
        Hearth::Validator.validate!(input[:service_name], ::String, context: "#{context}[:service_name]")
        Hearth::Validator.validate!(input[:transfer_option], ::String, context: "#{context}[:transfer_option]")
      end
    end

    class TargetOnDeviceServiceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TargetOnDeviceService.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TaxDocuments
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaxDocuments, context: context)
        INDTaxDocuments.validate!(input[:ind], context: "#{context}[:ind]") unless input[:ind].nil?
      end
    end

    class UnsupportedAddressException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedAddressException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UpdateClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        JobResource.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        OnDeviceServiceConfiguration.validate!(input[:on_device_service_configuration], context: "#{context}[:on_device_service_configuration]") unless input[:on_device_service_configuration].nil?
        Hearth::Validator.validate!(input[:address_id], ::String, context: "#{context}[:address_id]")
        Hearth::Validator.validate!(input[:shipping_option], ::String, context: "#{context}[:shipping_option]")
        Notification.validate!(input[:notification], context: "#{context}[:notification]") unless input[:notification].nil?
        Hearth::Validator.validate!(input[:forwarding_address_id], ::String, context: "#{context}[:forwarding_address_id]")
      end
    end

    class UpdateClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateClusterOutput, context: context)
      end
    end

    class UpdateJobInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJobInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Notification.validate!(input[:notification], context: "#{context}[:notification]") unless input[:notification].nil?
        JobResource.validate!(input[:resources], context: "#{context}[:resources]") unless input[:resources].nil?
        OnDeviceServiceConfiguration.validate!(input[:on_device_service_configuration], context: "#{context}[:on_device_service_configuration]") unless input[:on_device_service_configuration].nil?
        Hearth::Validator.validate!(input[:address_id], ::String, context: "#{context}[:address_id]")
        Hearth::Validator.validate!(input[:shipping_option], ::String, context: "#{context}[:shipping_option]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:snowball_capacity_preference], ::String, context: "#{context}[:snowball_capacity_preference]")
        Hearth::Validator.validate!(input[:forwarding_address_id], ::String, context: "#{context}[:forwarding_address_id]")
      end
    end

    class UpdateJobOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJobOutput, context: context)
      end
    end

    class UpdateJobShipmentStateInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJobShipmentStateInput, context: context)
        Hearth::Validator.validate!(input[:job_id], ::String, context: "#{context}[:job_id]")
        Hearth::Validator.validate!(input[:shipment_state], ::String, context: "#{context}[:shipment_state]")
      end
    end

    class UpdateJobShipmentStateOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateJobShipmentStateOutput, context: context)
      end
    end

    class UpdateLongTermPricingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLongTermPricingInput, context: context)
        Hearth::Validator.validate!(input[:long_term_pricing_id], ::String, context: "#{context}[:long_term_pricing_id]")
        Hearth::Validator.validate!(input[:replacement_job], ::String, context: "#{context}[:replacement_job]")
        Hearth::Validator.validate!(input[:is_long_term_pricing_auto_renew], ::TrueClass, ::FalseClass, context: "#{context}[:is_long_term_pricing_auto_renew]")
      end
    end

    class UpdateLongTermPricingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLongTermPricingOutput, context: context)
      end
    end

    class WirelessConnection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::WirelessConnection, context: context)
        Hearth::Validator.validate!(input[:is_wifi_enabled], ::TrueClass, ::FalseClass, context: "#{context}[:is_wifi_enabled]")
      end
    end

  end
end
