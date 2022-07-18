# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::CloudHSMV2
  module Validators

    class Backup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Backup, context: context)
        Hearth::Validator.validate!(input[:backup_id], ::String, context: "#{context}[:backup_id]")
        Hearth::Validator.validate!(input[:backup_state], ::String, context: "#{context}[:backup_state]")
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:create_timestamp], ::Time, context: "#{context}[:create_timestamp]")
        Hearth::Validator.validate!(input[:copy_timestamp], ::Time, context: "#{context}[:copy_timestamp]")
        Hearth::Validator.validate!(input[:never_expires], ::TrueClass, ::FalseClass, context: "#{context}[:never_expires]")
        Hearth::Validator.validate!(input[:source_region], ::String, context: "#{context}[:source_region]")
        Hearth::Validator.validate!(input[:source_backup], ::String, context: "#{context}[:source_backup]")
        Hearth::Validator.validate!(input[:source_cluster], ::String, context: "#{context}[:source_cluster]")
        Hearth::Validator.validate!(input[:delete_timestamp], ::Time, context: "#{context}[:delete_timestamp]")
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class BackupRetentionPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::BackupRetentionPolicy, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class Backups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Backup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Certificates
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Certificates, context: context)
        Hearth::Validator.validate!(input[:cluster_csr], ::String, context: "#{context}[:cluster_csr]")
        Hearth::Validator.validate!(input[:hsm_certificate], ::String, context: "#{context}[:hsm_certificate]")
        Hearth::Validator.validate!(input[:aws_hardware_certificate], ::String, context: "#{context}[:aws_hardware_certificate]")
        Hearth::Validator.validate!(input[:manufacturer_hardware_certificate], ::String, context: "#{context}[:manufacturer_hardware_certificate]")
        Hearth::Validator.validate!(input[:cluster_certificate], ::String, context: "#{context}[:cluster_certificate]")
      end
    end

    class CloudHsmAccessDeniedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudHsmAccessDeniedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudHsmInternalFailureException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudHsmInternalFailureException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudHsmInvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudHsmInvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudHsmResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudHsmResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudHsmServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudHsmServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CloudHsmTagException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CloudHsmTagException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Cluster
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Cluster, context: context)
        Hearth::Validator.validate!(input[:backup_policy], ::String, context: "#{context}[:backup_policy]")
        BackupRetentionPolicy.validate!(input[:backup_retention_policy], context: "#{context}[:backup_retention_policy]") unless input[:backup_retention_policy].nil?
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:create_timestamp], ::Time, context: "#{context}[:create_timestamp]")
        Hsms.validate!(input[:hsms], context: "#{context}[:hsms]") unless input[:hsms].nil?
        Hearth::Validator.validate!(input[:hsm_type], ::String, context: "#{context}[:hsm_type]")
        Hearth::Validator.validate!(input[:pre_co_password], ::String, context: "#{context}[:pre_co_password]")
        Hearth::Validator.validate!(input[:security_group], ::String, context: "#{context}[:security_group]")
        Hearth::Validator.validate!(input[:source_backup_id], ::String, context: "#{context}[:source_backup_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_message], ::String, context: "#{context}[:state_message]")
        ExternalSubnetMapping.validate!(input[:subnet_mapping], context: "#{context}[:subnet_mapping]") unless input[:subnet_mapping].nil?
        Hearth::Validator.validate!(input[:vpc_id], ::String, context: "#{context}[:vpc_id]")
        Certificates.validate!(input[:certificates], context: "#{context}[:certificates]") unless input[:certificates].nil?
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class Clusters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Cluster.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CopyBackupToRegionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyBackupToRegionInput, context: context)
        Hearth::Validator.validate!(input[:destination_region], ::String, context: "#{context}[:destination_region]")
        Hearth::Validator.validate!(input[:backup_id], ::String, context: "#{context}[:backup_id]")
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class CopyBackupToRegionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CopyBackupToRegionOutput, context: context)
        DestinationBackup.validate!(input[:destination_backup], context: "#{context}[:destination_backup]") unless input[:destination_backup].nil?
      end
    end

    class CreateClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterInput, context: context)
        BackupRetentionPolicy.validate!(input[:backup_retention_policy], context: "#{context}[:backup_retention_policy]") unless input[:backup_retention_policy].nil?
        Hearth::Validator.validate!(input[:hsm_type], ::String, context: "#{context}[:hsm_type]")
        Hearth::Validator.validate!(input[:source_backup_id], ::String, context: "#{context}[:source_backup_id]")
        SubnetIds.validate!(input[:subnet_ids], context: "#{context}[:subnet_ids]") unless input[:subnet_ids].nil?
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class CreateClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateClusterOutput, context: context)
        Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class CreateHsmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHsmInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
      end
    end

    class CreateHsmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateHsmOutput, context: context)
        Hsm.validate!(input[:hsm], context: "#{context}[:hsm]") unless input[:hsm].nil?
      end
    end

    class DeleteBackupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupInput, context: context)
        Hearth::Validator.validate!(input[:backup_id], ::String, context: "#{context}[:backup_id]")
      end
    end

    class DeleteBackupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBackupOutput, context: context)
        Backup.validate!(input[:backup], context: "#{context}[:backup]") unless input[:backup].nil?
      end
    end

    class DeleteClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
      end
    end

    class DeleteClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteClusterOutput, context: context)
        Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class DeleteHsmInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHsmInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:hsm_id], ::String, context: "#{context}[:hsm_id]")
        Hearth::Validator.validate!(input[:eni_id], ::String, context: "#{context}[:eni_id]")
        Hearth::Validator.validate!(input[:eni_ip], ::String, context: "#{context}[:eni_ip]")
      end
    end

    class DeleteHsmOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteHsmOutput, context: context)
        Hearth::Validator.validate!(input[:hsm_id], ::String, context: "#{context}[:hsm_id]")
      end
    end

    class DescribeBackupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBackupsInput, context: context)
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:sort_ascending], ::TrueClass, ::FalseClass, context: "#{context}[:sort_ascending]")
      end
    end

    class DescribeBackupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBackupsOutput, context: context)
        Backups.validate!(input[:backups], context: "#{context}[:backups]") unless input[:backups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeClustersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClustersInput, context: context)
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class DescribeClustersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeClustersOutput, context: context)
        Clusters.validate!(input[:clusters], context: "#{context}[:clusters]") unless input[:clusters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DestinationBackup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DestinationBackup, context: context)
        Hearth::Validator.validate!(input[:create_timestamp], ::Time, context: "#{context}[:create_timestamp]")
        Hearth::Validator.validate!(input[:source_region], ::String, context: "#{context}[:source_region]")
        Hearth::Validator.validate!(input[:source_backup], ::String, context: "#{context}[:source_backup]")
        Hearth::Validator.validate!(input[:source_cluster], ::String, context: "#{context}[:source_cluster]")
      end
    end

    class ExternalSubnetMapping
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Filters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Strings.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class Hsm
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Hsm, context: context)
        Hearth::Validator.validate!(input[:availability_zone], ::String, context: "#{context}[:availability_zone]")
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:subnet_id], ::String, context: "#{context}[:subnet_id]")
        Hearth::Validator.validate!(input[:eni_id], ::String, context: "#{context}[:eni_id]")
        Hearth::Validator.validate!(input[:eni_ip], ::String, context: "#{context}[:eni_ip]")
        Hearth::Validator.validate!(input[:hsm_id], ::String, context: "#{context}[:hsm_id]")
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_message], ::String, context: "#{context}[:state_message]")
      end
    end

    class Hsms
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hsm.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InitializeClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitializeClusterInput, context: context)
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
        Hearth::Validator.validate!(input[:signed_cert], ::String, context: "#{context}[:signed_cert]")
        Hearth::Validator.validate!(input[:trust_anchor], ::String, context: "#{context}[:trust_anchor]")
      end
    end

    class InitializeClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InitializeClusterOutput, context: context)
        Hearth::Validator.validate!(input[:state], ::String, context: "#{context}[:state]")
        Hearth::Validator.validate!(input[:state_message], ::String, context: "#{context}[:state_message]")
      end
    end

    class ListTagsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
      end
    end

    class ListTagsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsOutput, context: context)
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ModifyBackupAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyBackupAttributesInput, context: context)
        Hearth::Validator.validate!(input[:backup_id], ::String, context: "#{context}[:backup_id]")
        Hearth::Validator.validate!(input[:never_expires], ::TrueClass, ::FalseClass, context: "#{context}[:never_expires]")
      end
    end

    class ModifyBackupAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyBackupAttributesOutput, context: context)
        Backup.validate!(input[:backup], context: "#{context}[:backup]") unless input[:backup].nil?
      end
    end

    class ModifyClusterInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterInput, context: context)
        BackupRetentionPolicy.validate!(input[:backup_retention_policy], context: "#{context}[:backup_retention_policy]") unless input[:backup_retention_policy].nil?
        Hearth::Validator.validate!(input[:cluster_id], ::String, context: "#{context}[:cluster_id]")
      end
    end

    class ModifyClusterOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ModifyClusterOutput, context: context)
        Cluster.validate!(input[:cluster], context: "#{context}[:cluster]") unless input[:cluster].nil?
      end
    end

    class RestoreBackupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreBackupInput, context: context)
        Hearth::Validator.validate!(input[:backup_id], ::String, context: "#{context}[:backup_id]")
      end
    end

    class RestoreBackupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RestoreBackupOutput, context: context)
        Backup.validate!(input[:backup], context: "#{context}[:backup]") unless input[:backup].nil?
      end
    end

    class Strings
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SubnetIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
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
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        TagList.validate!(input[:tag_list], context: "#{context}[:tag_list]") unless input[:tag_list].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        TagKeyList.validate!(input[:tag_key_list], context: "#{context}[:tag_key_list]") unless input[:tag_key_list].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

  end
end
