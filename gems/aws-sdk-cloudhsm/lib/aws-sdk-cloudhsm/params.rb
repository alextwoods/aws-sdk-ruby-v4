# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudHSM
  module Params

    module AZList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AddTagsToResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToResourceInput, context: context)
        type = Types::AddTagsToResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module AddTagsToResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AddTagsToResourceOutput, context: context)
        type = Types::AddTagsToResourceOutput.new
        type.status = params[:status]
        type
      end
    end

    module ClientList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module CloudHsmInternalException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudHsmInternalException, context: context)
        type = Types::CloudHsmInternalException.new
        type.message = params[:message]
        type.retryable = params[:retryable]
        type
      end
    end

    module CloudHsmServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudHsmServiceException, context: context)
        type = Types::CloudHsmServiceException.new
        type.message = params[:message]
        type.retryable = params[:retryable]
        type
      end
    end

    module CreateHapgInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHapgInput, context: context)
        type = Types::CreateHapgInput.new
        type.label = params[:label]
        type
      end
    end

    module CreateHapgOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHapgOutput, context: context)
        type = Types::CreateHapgOutput.new
        type.hapg_arn = params[:hapg_arn]
        type
      end
    end

    module CreateHsmInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHsmInput, context: context)
        type = Types::CreateHsmInput.new
        type.subnet_id = params[:subnet_id]
        type.ssh_key = params[:ssh_key]
        type.eni_ip = params[:eni_ip]
        type.iam_role_arn = params[:iam_role_arn]
        type.external_id = params[:external_id]
        type.subscription_type = params[:subscription_type]
        type.client_token = params[:client_token]
        type.syslog_ip = params[:syslog_ip]
        type
      end
    end

    module CreateHsmOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHsmOutput, context: context)
        type = Types::CreateHsmOutput.new
        type.hsm_arn = params[:hsm_arn]
        type
      end
    end

    module CreateLunaClientInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLunaClientInput, context: context)
        type = Types::CreateLunaClientInput.new
        type.label = params[:label]
        type.certificate = params[:certificate]
        type
      end
    end

    module CreateLunaClientOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLunaClientOutput, context: context)
        type = Types::CreateLunaClientOutput.new
        type.client_arn = params[:client_arn]
        type
      end
    end

    module DeleteHapgInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHapgInput, context: context)
        type = Types::DeleteHapgInput.new
        type.hapg_arn = params[:hapg_arn]
        type
      end
    end

    module DeleteHapgOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHapgOutput, context: context)
        type = Types::DeleteHapgOutput.new
        type.status = params[:status]
        type
      end
    end

    module DeleteHsmInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHsmInput, context: context)
        type = Types::DeleteHsmInput.new
        type.hsm_arn = params[:hsm_arn]
        type
      end
    end

    module DeleteHsmOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHsmOutput, context: context)
        type = Types::DeleteHsmOutput.new
        type.status = params[:status]
        type
      end
    end

    module DeleteLunaClientInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLunaClientInput, context: context)
        type = Types::DeleteLunaClientInput.new
        type.client_arn = params[:client_arn]
        type
      end
    end

    module DeleteLunaClientOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLunaClientOutput, context: context)
        type = Types::DeleteLunaClientOutput.new
        type.status = params[:status]
        type
      end
    end

    module DescribeHapgInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHapgInput, context: context)
        type = Types::DescribeHapgInput.new
        type.hapg_arn = params[:hapg_arn]
        type
      end
    end

    module DescribeHapgOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHapgOutput, context: context)
        type = Types::DescribeHapgOutput.new
        type.hapg_arn = params[:hapg_arn]
        type.hapg_serial = params[:hapg_serial]
        type.hsms_last_action_failed = HsmList.build(params[:hsms_last_action_failed], context: "#{context}[:hsms_last_action_failed]") unless params[:hsms_last_action_failed].nil?
        type.hsms_pending_deletion = HsmList.build(params[:hsms_pending_deletion], context: "#{context}[:hsms_pending_deletion]") unless params[:hsms_pending_deletion].nil?
        type.hsms_pending_registration = HsmList.build(params[:hsms_pending_registration], context: "#{context}[:hsms_pending_registration]") unless params[:hsms_pending_registration].nil?
        type.label = params[:label]
        type.last_modified_timestamp = params[:last_modified_timestamp]
        type.partition_serial_list = PartitionSerialList.build(params[:partition_serial_list], context: "#{context}[:partition_serial_list]") unless params[:partition_serial_list].nil?
        type.state = params[:state]
        type
      end
    end

    module DescribeHsmInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHsmInput, context: context)
        type = Types::DescribeHsmInput.new
        type.hsm_arn = params[:hsm_arn]
        type.hsm_serial_number = params[:hsm_serial_number]
        type
      end
    end

    module DescribeHsmOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeHsmOutput, context: context)
        type = Types::DescribeHsmOutput.new
        type.hsm_arn = params[:hsm_arn]
        type.status = params[:status]
        type.status_details = params[:status_details]
        type.availability_zone = params[:availability_zone]
        type.eni_id = params[:eni_id]
        type.eni_ip = params[:eni_ip]
        type.subscription_type = params[:subscription_type]
        type.subscription_start_date = params[:subscription_start_date]
        type.subscription_end_date = params[:subscription_end_date]
        type.vpc_id = params[:vpc_id]
        type.subnet_id = params[:subnet_id]
        type.iam_role_arn = params[:iam_role_arn]
        type.serial_number = params[:serial_number]
        type.vendor_name = params[:vendor_name]
        type.hsm_type = params[:hsm_type]
        type.software_version = params[:software_version]
        type.ssh_public_key = params[:ssh_public_key]
        type.ssh_key_last_updated = params[:ssh_key_last_updated]
        type.server_cert_uri = params[:server_cert_uri]
        type.server_cert_last_updated = params[:server_cert_last_updated]
        type.partitions = PartitionList.build(params[:partitions], context: "#{context}[:partitions]") unless params[:partitions].nil?
        type
      end
    end

    module DescribeLunaClientInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLunaClientInput, context: context)
        type = Types::DescribeLunaClientInput.new
        type.client_arn = params[:client_arn]
        type.certificate_fingerprint = params[:certificate_fingerprint]
        type
      end
    end

    module DescribeLunaClientOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLunaClientOutput, context: context)
        type = Types::DescribeLunaClientOutput.new
        type.client_arn = params[:client_arn]
        type.certificate = params[:certificate]
        type.certificate_fingerprint = params[:certificate_fingerprint]
        type.last_modified_timestamp = params[:last_modified_timestamp]
        type.label = params[:label]
        type
      end
    end

    module GetConfigInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConfigInput, context: context)
        type = Types::GetConfigInput.new
        type.client_arn = params[:client_arn]
        type.client_version = params[:client_version]
        type.hapg_list = HapgList.build(params[:hapg_list], context: "#{context}[:hapg_list]") unless params[:hapg_list].nil?
        type
      end
    end

    module GetConfigOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetConfigOutput, context: context)
        type = Types::GetConfigOutput.new
        type.config_type = params[:config_type]
        type.config_file = params[:config_file]
        type.config_cred = params[:config_cred]
        type
      end
    end

    module HapgList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module HsmList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type.retryable = params[:retryable]
        type
      end
    end

    module ListAvailableZonesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAvailableZonesInput, context: context)
        type = Types::ListAvailableZonesInput.new
        type
      end
    end

    module ListAvailableZonesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAvailableZonesOutput, context: context)
        type = Types::ListAvailableZonesOutput.new
        type.az_list = AZList.build(params[:az_list], context: "#{context}[:az_list]") unless params[:az_list].nil?
        type
      end
    end

    module ListHapgsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHapgsInput, context: context)
        type = Types::ListHapgsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListHapgsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHapgsOutput, context: context)
        type = Types::ListHapgsOutput.new
        type.hapg_list = HapgList.build(params[:hapg_list], context: "#{context}[:hapg_list]") unless params[:hapg_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListHsmsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHsmsInput, context: context)
        type = Types::ListHsmsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListHsmsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListHsmsOutput, context: context)
        type = Types::ListHsmsOutput.new
        type.hsm_list = HsmList.build(params[:hsm_list], context: "#{context}[:hsm_list]") unless params[:hsm_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLunaClientsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLunaClientsInput, context: context)
        type = Types::ListLunaClientsInput.new
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLunaClientsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLunaClientsOutput, context: context)
        type = Types::ListLunaClientsOutput.new
        type.client_list = ClientList.build(params[:client_list], context: "#{context}[:client_list]") unless params[:client_list].nil?
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
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module ModifyHapgInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyHapgInput, context: context)
        type = Types::ModifyHapgInput.new
        type.hapg_arn = params[:hapg_arn]
        type.label = params[:label]
        type.partition_serial_list = PartitionSerialList.build(params[:partition_serial_list], context: "#{context}[:partition_serial_list]") unless params[:partition_serial_list].nil?
        type
      end
    end

    module ModifyHapgOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyHapgOutput, context: context)
        type = Types::ModifyHapgOutput.new
        type.hapg_arn = params[:hapg_arn]
        type
      end
    end

    module ModifyHsmInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyHsmInput, context: context)
        type = Types::ModifyHsmInput.new
        type.hsm_arn = params[:hsm_arn]
        type.subnet_id = params[:subnet_id]
        type.eni_ip = params[:eni_ip]
        type.iam_role_arn = params[:iam_role_arn]
        type.external_id = params[:external_id]
        type.syslog_ip = params[:syslog_ip]
        type
      end
    end

    module ModifyHsmOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyHsmOutput, context: context)
        type = Types::ModifyHsmOutput.new
        type.hsm_arn = params[:hsm_arn]
        type
      end
    end

    module ModifyLunaClientInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyLunaClientInput, context: context)
        type = Types::ModifyLunaClientInput.new
        type.client_arn = params[:client_arn]
        type.certificate = params[:certificate]
        type
      end
    end

    module ModifyLunaClientOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyLunaClientOutput, context: context)
        type = Types::ModifyLunaClientOutput.new
        type.client_arn = params[:client_arn]
        type
      end
    end

    module PartitionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PartitionSerialList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RemoveTagsFromResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromResourceInput, context: context)
        type = Types::RemoveTagsFromResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_key_list = TagKeyList.build(params[:tag_key_list], context: "#{context}[:tag_key_list]") unless params[:tag_key_list].nil?
        type
      end
    end

    module RemoveTagsFromResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RemoveTagsFromResourceOutput, context: context)
        type = Types::RemoveTagsFromResourceOutput.new
        type.status = params[:status]
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

  end
end
