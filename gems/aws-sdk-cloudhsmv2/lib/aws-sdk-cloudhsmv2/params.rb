# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::CloudHSMV2
  module Params

    module Backup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Backup, context: context)
        type = Types::Backup.new
        type.backup_id = params[:backup_id]
        type.backup_state = params[:backup_state]
        type.cluster_id = params[:cluster_id]
        type.create_timestamp = params[:create_timestamp]
        type.copy_timestamp = params[:copy_timestamp]
        type.never_expires = params[:never_expires]
        type.source_region = params[:source_region]
        type.source_backup = params[:source_backup]
        type.source_cluster = params[:source_cluster]
        type.delete_timestamp = params[:delete_timestamp]
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module BackupRetentionPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::BackupRetentionPolicy, context: context)
        type = Types::BackupRetentionPolicy.new
        type.type = params[:type]
        type.value = params[:value]
        type
      end
    end

    module Backups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Backup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Certificates
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Certificates, context: context)
        type = Types::Certificates.new
        type.cluster_csr = params[:cluster_csr]
        type.hsm_certificate = params[:hsm_certificate]
        type.aws_hardware_certificate = params[:aws_hardware_certificate]
        type.manufacturer_hardware_certificate = params[:manufacturer_hardware_certificate]
        type.cluster_certificate = params[:cluster_certificate]
        type
      end
    end

    module CloudHsmAccessDeniedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudHsmAccessDeniedException, context: context)
        type = Types::CloudHsmAccessDeniedException.new
        type.message = params[:message]
        type
      end
    end

    module CloudHsmInternalFailureException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudHsmInternalFailureException, context: context)
        type = Types::CloudHsmInternalFailureException.new
        type.message = params[:message]
        type
      end
    end

    module CloudHsmInvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudHsmInvalidRequestException, context: context)
        type = Types::CloudHsmInvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module CloudHsmResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudHsmResourceNotFoundException, context: context)
        type = Types::CloudHsmResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module CloudHsmServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudHsmServiceException, context: context)
        type = Types::CloudHsmServiceException.new
        type.message = params[:message]
        type
      end
    end

    module CloudHsmTagException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CloudHsmTagException, context: context)
        type = Types::CloudHsmTagException.new
        type.message = params[:message]
        type
      end
    end

    module Cluster
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Cluster, context: context)
        type = Types::Cluster.new
        type.backup_policy = params[:backup_policy]
        type.backup_retention_policy = BackupRetentionPolicy.build(params[:backup_retention_policy], context: "#{context}[:backup_retention_policy]") unless params[:backup_retention_policy].nil?
        type.cluster_id = params[:cluster_id]
        type.create_timestamp = params[:create_timestamp]
        type.hsms = Hsms.build(params[:hsms], context: "#{context}[:hsms]") unless params[:hsms].nil?
        type.hsm_type = params[:hsm_type]
        type.pre_co_password = params[:pre_co_password]
        type.security_group = params[:security_group]
        type.source_backup_id = params[:source_backup_id]
        type.state = params[:state]
        type.state_message = params[:state_message]
        type.subnet_mapping = ExternalSubnetMapping.build(params[:subnet_mapping], context: "#{context}[:subnet_mapping]") unless params[:subnet_mapping].nil?
        type.vpc_id = params[:vpc_id]
        type.certificates = Certificates.build(params[:certificates], context: "#{context}[:certificates]") unless params[:certificates].nil?
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module Clusters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Cluster.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CopyBackupToRegionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyBackupToRegionInput, context: context)
        type = Types::CopyBackupToRegionInput.new
        type.destination_region = params[:destination_region]
        type.backup_id = params[:backup_id]
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module CopyBackupToRegionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CopyBackupToRegionOutput, context: context)
        type = Types::CopyBackupToRegionOutput.new
        type.destination_backup = DestinationBackup.build(params[:destination_backup], context: "#{context}[:destination_backup]") unless params[:destination_backup].nil?
        type
      end
    end

    module CreateClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterInput, context: context)
        type = Types::CreateClusterInput.new
        type.backup_retention_policy = BackupRetentionPolicy.build(params[:backup_retention_policy], context: "#{context}[:backup_retention_policy]") unless params[:backup_retention_policy].nil?
        type.hsm_type = params[:hsm_type]
        type.source_backup_id = params[:source_backup_id]
        type.subnet_ids = SubnetIds.build(params[:subnet_ids], context: "#{context}[:subnet_ids]") unless params[:subnet_ids].nil?
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type
      end
    end

    module CreateClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateClusterOutput, context: context)
        type = Types::CreateClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module CreateHsmInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHsmInput, context: context)
        type = Types::CreateHsmInput.new
        type.cluster_id = params[:cluster_id]
        type.availability_zone = params[:availability_zone]
        type.ip_address = params[:ip_address]
        type
      end
    end

    module CreateHsmOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateHsmOutput, context: context)
        type = Types::CreateHsmOutput.new
        type.hsm = Hsm.build(params[:hsm], context: "#{context}[:hsm]") unless params[:hsm].nil?
        type
      end
    end

    module DeleteBackupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackupInput, context: context)
        type = Types::DeleteBackupInput.new
        type.backup_id = params[:backup_id]
        type
      end
    end

    module DeleteBackupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBackupOutput, context: context)
        type = Types::DeleteBackupOutput.new
        type.backup = Backup.build(params[:backup], context: "#{context}[:backup]") unless params[:backup].nil?
        type
      end
    end

    module DeleteClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterInput, context: context)
        type = Types::DeleteClusterInput.new
        type.cluster_id = params[:cluster_id]
        type
      end
    end

    module DeleteClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteClusterOutput, context: context)
        type = Types::DeleteClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module DeleteHsmInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHsmInput, context: context)
        type = Types::DeleteHsmInput.new
        type.cluster_id = params[:cluster_id]
        type.hsm_id = params[:hsm_id]
        type.eni_id = params[:eni_id]
        type.eni_ip = params[:eni_ip]
        type
      end
    end

    module DeleteHsmOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteHsmOutput, context: context)
        type = Types::DeleteHsmOutput.new
        type.hsm_id = params[:hsm_id]
        type
      end
    end

    module DescribeBackupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBackupsInput, context: context)
        type = Types::DescribeBackupsInput.new
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.sort_ascending = params[:sort_ascending]
        type
      end
    end

    module DescribeBackupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBackupsOutput, context: context)
        type = Types::DescribeBackupsOutput.new
        type.backups = Backups.build(params[:backups], context: "#{context}[:backups]") unless params[:backups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeClustersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClustersInput, context: context)
        type = Types::DescribeClustersInput.new
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module DescribeClustersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeClustersOutput, context: context)
        type = Types::DescribeClustersOutput.new
        type.clusters = Clusters.build(params[:clusters], context: "#{context}[:clusters]") unless params[:clusters].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DestinationBackup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DestinationBackup, context: context)
        type = Types::DestinationBackup.new
        type.create_timestamp = params[:create_timestamp]
        type.source_region = params[:source_region]
        type.source_backup = params[:source_backup]
        type.source_cluster = params[:source_cluster]
        type
      end
    end

    module ExternalSubnetMapping
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Filters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = Strings.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module Hsm
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Hsm, context: context)
        type = Types::Hsm.new
        type.availability_zone = params[:availability_zone]
        type.cluster_id = params[:cluster_id]
        type.subnet_id = params[:subnet_id]
        type.eni_id = params[:eni_id]
        type.eni_ip = params[:eni_ip]
        type.hsm_id = params[:hsm_id]
        type.state = params[:state]
        type.state_message = params[:state_message]
        type
      end
    end

    module Hsms
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Hsm.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InitializeClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitializeClusterInput, context: context)
        type = Types::InitializeClusterInput.new
        type.cluster_id = params[:cluster_id]
        type.signed_cert = params[:signed_cert]
        type.trust_anchor = params[:trust_anchor]
        type
      end
    end

    module InitializeClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InitializeClusterOutput, context: context)
        type = Types::InitializeClusterOutput.new
        type.state = params[:state]
        type.state_message = params[:state_message]
        type
      end
    end

    module ListTagsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsInput, context: context)
        type = Types::ListTagsInput.new
        type.resource_id = params[:resource_id]
        type.next_token = params[:next_token]
        type.max_results = params[:max_results]
        type
      end
    end

    module ListTagsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsOutput, context: context)
        type = Types::ListTagsOutput.new
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ModifyBackupAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyBackupAttributesInput, context: context)
        type = Types::ModifyBackupAttributesInput.new
        type.backup_id = params[:backup_id]
        type.never_expires = params[:never_expires]
        type
      end
    end

    module ModifyBackupAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyBackupAttributesOutput, context: context)
        type = Types::ModifyBackupAttributesOutput.new
        type.backup = Backup.build(params[:backup], context: "#{context}[:backup]") unless params[:backup].nil?
        type
      end
    end

    module ModifyClusterInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterInput, context: context)
        type = Types::ModifyClusterInput.new
        type.backup_retention_policy = BackupRetentionPolicy.build(params[:backup_retention_policy], context: "#{context}[:backup_retention_policy]") unless params[:backup_retention_policy].nil?
        type.cluster_id = params[:cluster_id]
        type
      end
    end

    module ModifyClusterOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ModifyClusterOutput, context: context)
        type = Types::ModifyClusterOutput.new
        type.cluster = Cluster.build(params[:cluster], context: "#{context}[:cluster]") unless params[:cluster].nil?
        type
      end
    end

    module RestoreBackupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreBackupInput, context: context)
        type = Types::RestoreBackupInput.new
        type.backup_id = params[:backup_id]
        type
      end
    end

    module RestoreBackupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RestoreBackupOutput, context: context)
        type = Types::RestoreBackupOutput.new
        type.backup = Backup.build(params[:backup], context: "#{context}[:backup]") unless params[:backup].nil?
        type
      end
    end

    module Strings
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SubnetIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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
        type.resource_id = params[:resource_id]
        type.tag_list = TagList.build(params[:tag_list], context: "#{context}[:tag_list]") unless params[:tag_list].nil?
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

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_id = params[:resource_id]
        type.tag_key_list = TagKeyList.build(params[:tag_key_list], context: "#{context}[:tag_key_list]") unless params[:tag_key_list].nil?
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

  end
end
