# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudHSM
  module Validators

    class AZList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AddTagsToResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class AddTagsToResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AddTagsToResourceOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class ClientList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class CloudHsmInternalException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudHsmInternalException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retryable], ::TrueClass, ::FalseClass, context: "#{context}[:retryable]")
      end
    end

    class CloudHsmServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudHsmServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retryable], ::TrueClass, ::FalseClass, context: "#{context}[:retryable]")
      end
    end

    class CreateHapgInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHapgInput, context: context)
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
      end
    end

    class CreateHapgOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHapgOutput, context: context)
        Hearth::Validator.validate!(input[:hapg_arn], ::String, context: "#{context}[:hapg_arn]")
      end
    end

    class CreateHsmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHsmInput, context: context)
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:ssh_key], ::String, context: "#{context}[:ssh_key]")
        Hearth::Validator.validate!(input[:eni_ip], ::String, context: "#{context}[:eni_ip]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
        Hearth::Validator.validate!(input[:subscription_type], ::String, context: "#{context}[:subscription_type]")
        Hearth::Validator.validate!(input[:client_token], ::String, context: "#{context}[:client_token]")
        Hearth::Validator.validate!(input[:syslog_ip], ::String, context: "#{context}[:syslog_ip]")
      end
    end

    class CreateHsmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHsmOutput, context: context)
        Hearth::Validator.validate!(input[:hsm_arn], ::String, context: "#{context}[:hsm_arn]")
      end
    end

    class CreateLunaClientInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLunaClientInput, context: context)
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
      end
    end

    class CreateLunaClientOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLunaClientOutput, context: context)
        Hearth::Validator.validate!(input[:client_arn], ::String, context: "#{context}[:client_arn]")
      end
    end

    class DeleteHapgInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHapgInput, context: context)
        Hearth::Validator.validate!(input[:hapg_arn], ::String, context: "#{context}[:hapg_arn]")
      end
    end

    class DeleteHapgOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHapgOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DeleteHsmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHsmInput, context: context)
        Hearth::Validator.validate!(input[:hsm_arn], ::String, context: "#{context}[:hsm_arn]")
      end
    end

    class DeleteHsmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHsmOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DeleteLunaClientInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLunaClientInput, context: context)
        Hearth::Validator.validate!(input[:client_arn], ::String, context: "#{context}[:client_arn]")
      end
    end

    class DeleteLunaClientOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLunaClientOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class DescribeHapgInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHapgInput, context: context)
        Hearth::Validator.validate!(input[:hapg_arn], ::String, context: "#{context}[:hapg_arn]")
      end
    end

    class DescribeHapgOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHapgOutput, context: context)
        Hearth::Validator.validate!(input[:hapg_arn], ::String, context: "#{context}[:hapg_arn]")
        Hearth::Validator.validate!(input[:hapg_serial], ::String, context: "#{context}[:hapg_serial]")
        Validators::HsmList.validate!(input[:hsms_last_action_failed], context: "#{context}[:hsms_last_action_failed]") unless input[:hsms_last_action_failed].nil?
        Validators::HsmList.validate!(input[:hsms_pending_deletion], context: "#{context}[:hsms_pending_deletion]") unless input[:hsms_pending_deletion].nil?
        Validators::HsmList.validate!(input[:hsms_pending_registration], context: "#{context}[:hsms_pending_registration]") unless input[:hsms_pending_registration].nil?
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Hearth::Validator.validate!(input[:last_modified_timestamp], ::String, context: "#{context}[:last_modified_timestamp]")
        Validators::PartitionSerialList.validate!(input[:partition_serial_list], context: "#{context}[:partition_serial_list]") unless input[:partition_serial_list].nil?
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
      end
    end

    class DescribeHsmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHsmInput, context: context)
        Hearth::Validator.validate!(input[:hsm_arn], ::String, context: "#{context}[:hsm_arn]")
        Hearth::Validator.validate!(input[:hsm_serial_number], ::String, context: "#{context}[:hsm_serial_number]")
      end
    end

    class DescribeHsmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeHsmOutput, context: context)
        Hearth::Validator.validate!(input[:hsm_arn], ::String, context: "#{context}[:hsm_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_details], ::String, context: "#{context}[:status_details]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:eni_id], ::String, context: "#{context}[:eni_id]")
        Hearth::Validator.validate!(input[:eni_ip], ::String, context: "#{context}[:eni_ip]")
        Hearth::Validator.validate!(input[:subscription_type], ::String, context: "#{context}[:subscription_type]")
        Hearth::Validator.validate!(input[:subscription_start_date], ::String, context: "#{context}[:subscription_start_date]")
        Hearth::Validator.validate!(input[:subscription_end_date], ::String, context: "#{context}[:subscription_end_date]")
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:serial_number], ::String, context: "#{context}[:serial_number]")
        Hearth::Validator.validate!(input[:vendor_name], ::String, context: "#{context}[:vendor_name]")
        Hearth::Validator.validate!(input[:hsm_type], ::String, context: "#{context}[:hsm_type]")
        Hearth::Validator.validate!(input[:software_version], ::String, context: "#{context}[:software_version]")
        Hearth::Validator.validate!(input[:ssh_public_key], ::String, context: "#{context}[:ssh_public_key]")
        Hearth::Validator.validate!(input[:ssh_key_last_updated], ::String, context: "#{context}[:ssh_key_last_updated]")
        Hearth::Validator.validate!(input[:server_cert_uri], ::String, context: "#{context}[:server_cert_uri]")
        Hearth::Validator.validate!(input[:server_cert_last_updated], ::String, context: "#{context}[:server_cert_last_updated]")
        Validators::PartitionList.validate!(input[:partitions], context: "#{context}[:partitions]") unless input[:partitions].nil?
      end
    end

    class DescribeLunaClientInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLunaClientInput, context: context)
        Hearth::Validator.validate!(input[:client_arn], ::String, context: "#{context}[:client_arn]")
        Hearth::Validator.validate!(input[:certificate_fingerprint], ::String, context: "#{context}[:certificate_fingerprint]")
      end
    end

    class DescribeLunaClientOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLunaClientOutput, context: context)
        Hearth::Validator.validate!(input[:client_arn], ::String, context: "#{context}[:client_arn]")
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
        Hearth::Validator.validate!(input[:certificate_fingerprint], ::String, context: "#{context}[:certificate_fingerprint]")
        Hearth::Validator.validate!(input[:last_modified_timestamp], ::String, context: "#{context}[:last_modified_timestamp]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
      end
    end

    class GetConfigInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConfigInput, context: context)
        Hearth::Validator.validate!(input[:client_arn], ::String, context: "#{context}[:client_arn]")
        Hearth::Validator.validate!(input[:client_version], ::String, context: "#{context}[:client_version]")
        Validators::HapgList.validate!(input[:hapg_list], context: "#{context}[:hapg_list]") unless input[:hapg_list].nil?
      end
    end

    class GetConfigOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetConfigOutput, context: context)
        Hearth::Validator.validate!(input[:config_type], ::String, context: "#{context}[:config_type]")
        Hearth::Validator.validate!(input[:config_file], ::String, context: "#{context}[:config_file]")
        Hearth::Validator.validate!(input[:config_cred], ::String, context: "#{context}[:config_cred]")
      end
    end

    class HapgList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class HsmList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:retryable], ::TrueClass, ::FalseClass, context: "#{context}[:retryable]")
      end
    end

    class ListAvailableZonesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAvailableZonesInput, context: context)
      end
    end

    class ListAvailableZonesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAvailableZonesOutput, context: context)
        Validators::AZList.validate!(input[:az_list], context: "#{context}[:az_list]") unless input[:az_list].nil?
      end
    end

    class ListHapgsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHapgsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListHapgsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHapgsOutput, context: context)
        Validators::HapgList.validate!(input[:hapg_list], context: "#{context}[:hapg_list]") unless input[:hapg_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListHsmsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHsmsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListHsmsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListHsmsOutput, context: context)
        Validators::HsmList.validate!(input[:hsm_list], context: "#{context}[:hsm_list]") unless input[:hsm_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLunaClientsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLunaClientsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLunaClientsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLunaClientsOutput, context: context)
        Validators::ClientList.validate!(input[:client_list], context: "#{context}[:client_list]") unless input[:client_list].nil?
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
        Validators::TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class ModifyHapgInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyHapgInput, context: context)
        Hearth::Validator.validate!(input[:hapg_arn], ::String, context: "#{context}[:hapg_arn]")
        Hearth::Validator.validate!(input[:label], ::String, context: "#{context}[:label]")
        Validators::PartitionSerialList.validate!(input[:partition_serial_list], context: "#{context}[:partition_serial_list]") unless input[:partition_serial_list].nil?
      end
    end

    class ModifyHapgOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyHapgOutput, context: context)
        Hearth::Validator.validate!(input[:hapg_arn], ::String, context: "#{context}[:hapg_arn]")
      end
    end

    class ModifyHsmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyHsmInput, context: context)
        Hearth::Validator.validate!(input[:hsm_arn], ::String, context: "#{context}[:hsm_arn]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:eni_ip], ::String, context: "#{context}[:eni_ip]")
        Hearth::Validator.validate!(input[:iam_role_arn], ::String, context: "#{context}[:iam_role_arn]")
        Hearth::Validator.validate!(input[:external_id], ::String, context: "#{context}[:external_id]")
        Hearth::Validator.validate!(input[:syslog_ip], ::String, context: "#{context}[:syslog_ip]")
      end
    end

    class ModifyHsmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyHsmOutput, context: context)
        Hearth::Validator.validate!(input[:hsm_arn], ::String, context: "#{context}[:hsm_arn]")
      end
    end

    class ModifyLunaClientInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyLunaClientInput, context: context)
        Hearth::Validator.validate!(input[:client_arn], ::String, context: "#{context}[:client_arn]")
        Hearth::Validator.validate!(input[:certificate], ::String, context: "#{context}[:certificate]")
      end
    end

    class ModifyLunaClientOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyLunaClientOutput, context: context)
        Hearth::Validator.validate!(input[:client_arn], ::String, context: "#{context}[:client_arn]")
      end
    end

    class PartitionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PartitionSerialList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RemoveTagsFromResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Validators::TagKeyList.validate!(input[:tag_key_list], context: "#{context}[:tag_key_list]") unless input[:tag_key_list].nil?
      end
    end

    class RemoveTagsFromResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RemoveTagsFromResourceOutput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
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

  end
end
