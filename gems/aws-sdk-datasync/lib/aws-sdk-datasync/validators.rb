# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::DataSync
  module Validators

    class AgentArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class AgentList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          AgentListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AgentListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AgentListEntry, context: context)
        Hearth::Validator.validate!(input[:agent_arn], ::String, context: "#{context}[:agent_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class CancelTaskExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelTaskExecutionInput, context: context)
        Hearth::Validator.validate!(input[:task_execution_arn], ::String, context: "#{context}[:task_execution_arn]")
      end
    end

    class CancelTaskExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CancelTaskExecutionOutput, context: context)
      end
    end

    class CreateAgentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAgentInput, context: context)
        Hearth::Validator.validate!(input[:activation_key], ::String, context: "#{context}[:activation_key]")
        Hearth::Validator.validate!(input[:agent_name], ::String, context: "#{context}[:agent_name]")
        InputTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:vpc_endpoint_id], ::String, context: "#{context}[:vpc_endpoint_id]")
        PLSubnetArnList.validate!(input[:subnet_arns], context: "#{context}[:subnet_arns]") unless input[:subnet_arns].nil?
        PLSecurityGroupArnList.validate!(input[:security_group_arns], context: "#{context}[:security_group_arns]") unless input[:security_group_arns].nil?
      end
    end

    class CreateAgentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAgentOutput, context: context)
        Hearth::Validator.validate!(input[:agent_arn], ::String, context: "#{context}[:agent_arn]")
      end
    end

    class CreateLocationEfsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocationEfsInput, context: context)
        Hearth::Validator.validate!(input[:subdirectory], ::String, context: "#{context}[:subdirectory]")
        Hearth::Validator.validate!(input[:efs_filesystem_arn], ::String, context: "#{context}[:efs_filesystem_arn]")
        Ec2Config.validate!(input[:ec2_config], context: "#{context}[:ec2_config]") unless input[:ec2_config].nil?
        InputTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:access_point_arn], ::String, context: "#{context}[:access_point_arn]")
        Hearth::Validator.validate!(input[:file_system_access_role_arn], ::String, context: "#{context}[:file_system_access_role_arn]")
        Hearth::Validator.validate!(input[:in_transit_encryption], ::String, context: "#{context}[:in_transit_encryption]")
      end
    end

    class CreateLocationEfsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocationEfsOutput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
      end
    end

    class CreateLocationFsxLustreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocationFsxLustreInput, context: context)
        Hearth::Validator.validate!(input[:fsx_filesystem_arn], ::String, context: "#{context}[:fsx_filesystem_arn]")
        Ec2SecurityGroupArnList.validate!(input[:security_group_arns], context: "#{context}[:security_group_arns]") unless input[:security_group_arns].nil?
        Hearth::Validator.validate!(input[:subdirectory], ::String, context: "#{context}[:subdirectory]")
        InputTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateLocationFsxLustreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocationFsxLustreOutput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
      end
    end

    class CreateLocationFsxOpenZfsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocationFsxOpenZfsInput, context: context)
        Hearth::Validator.validate!(input[:fsx_filesystem_arn], ::String, context: "#{context}[:fsx_filesystem_arn]")
        FsxProtocol.validate!(input[:protocol], context: "#{context}[:protocol]") unless input[:protocol].nil?
        Ec2SecurityGroupArnList.validate!(input[:security_group_arns], context: "#{context}[:security_group_arns]") unless input[:security_group_arns].nil?
        Hearth::Validator.validate!(input[:subdirectory], ::String, context: "#{context}[:subdirectory]")
        InputTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateLocationFsxOpenZfsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocationFsxOpenZfsOutput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
      end
    end

    class CreateLocationFsxWindowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocationFsxWindowsInput, context: context)
        Hearth::Validator.validate!(input[:subdirectory], ::String, context: "#{context}[:subdirectory]")
        Hearth::Validator.validate!(input[:fsx_filesystem_arn], ::String, context: "#{context}[:fsx_filesystem_arn]")
        Ec2SecurityGroupArnList.validate!(input[:security_group_arns], context: "#{context}[:security_group_arns]") unless input[:security_group_arns].nil?
        InputTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:user], ::String, context: "#{context}[:user]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
      end
    end

    class CreateLocationFsxWindowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocationFsxWindowsOutput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
      end
    end

    class CreateLocationHdfsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocationHdfsInput, context: context)
        Hearth::Validator.validate!(input[:subdirectory], ::String, context: "#{context}[:subdirectory]")
        HdfsNameNodeList.validate!(input[:name_nodes], context: "#{context}[:name_nodes]") unless input[:name_nodes].nil?
        Hearth::Validator.validate!(input[:block_size], ::Integer, context: "#{context}[:block_size]")
        Hearth::Validator.validate!(input[:replication_factor], ::Integer, context: "#{context}[:replication_factor]")
        Hearth::Validator.validate!(input[:kms_key_provider_uri], ::String, context: "#{context}[:kms_key_provider_uri]")
        QopConfiguration.validate!(input[:qop_configuration], context: "#{context}[:qop_configuration]") unless input[:qop_configuration].nil?
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
        Hearth::Validator.validate!(input[:simple_user], ::String, context: "#{context}[:simple_user]")
        Hearth::Validator.validate!(input[:kerberos_principal], ::String, context: "#{context}[:kerberos_principal]")
        Hearth::Validator.validate!(input[:kerberos_keytab], ::String, context: "#{context}[:kerberos_keytab]")
        Hearth::Validator.validate!(input[:kerberos_krb5_conf], ::String, context: "#{context}[:kerberos_krb5_conf]")
        AgentArnList.validate!(input[:agent_arns], context: "#{context}[:agent_arns]") unless input[:agent_arns].nil?
        InputTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateLocationHdfsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocationHdfsOutput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
      end
    end

    class CreateLocationNfsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocationNfsInput, context: context)
        Hearth::Validator.validate!(input[:subdirectory], ::String, context: "#{context}[:subdirectory]")
        Hearth::Validator.validate!(input[:server_hostname], ::String, context: "#{context}[:server_hostname]")
        OnPremConfig.validate!(input[:on_prem_config], context: "#{context}[:on_prem_config]") unless input[:on_prem_config].nil?
        NfsMountOptions.validate!(input[:mount_options], context: "#{context}[:mount_options]") unless input[:mount_options].nil?
        InputTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateLocationNfsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocationNfsOutput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
      end
    end

    class CreateLocationObjectStorageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocationObjectStorageInput, context: context)
        Hearth::Validator.validate!(input[:server_hostname], ::String, context: "#{context}[:server_hostname]")
        Hearth::Validator.validate!(input[:server_port], ::Integer, context: "#{context}[:server_port]")
        Hearth::Validator.validate!(input[:server_protocol], ::String, context: "#{context}[:server_protocol]")
        Hearth::Validator.validate!(input[:subdirectory], ::String, context: "#{context}[:subdirectory]")
        Hearth::Validator.validate!(input[:bucket_name], ::String, context: "#{context}[:bucket_name]")
        Hearth::Validator.validate!(input[:access_key], ::String, context: "#{context}[:access_key]")
        Hearth::Validator.validate!(input[:secret_key], ::String, context: "#{context}[:secret_key]")
        AgentArnList.validate!(input[:agent_arns], context: "#{context}[:agent_arns]") unless input[:agent_arns].nil?
        InputTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateLocationObjectStorageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocationObjectStorageOutput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
      end
    end

    class CreateLocationS3Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocationS3Input, context: context)
        Hearth::Validator.validate!(input[:subdirectory], ::String, context: "#{context}[:subdirectory]")
        Hearth::Validator.validate!(input[:s3_bucket_arn], ::String, context: "#{context}[:s3_bucket_arn]")
        Hearth::Validator.validate!(input[:s3_storage_class], ::String, context: "#{context}[:s3_storage_class]")
        S3Config.validate!(input[:s3_config], context: "#{context}[:s3_config]") unless input[:s3_config].nil?
        AgentArnList.validate!(input[:agent_arns], context: "#{context}[:agent_arns]") unless input[:agent_arns].nil?
        InputTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateLocationS3Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocationS3Output, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
      end
    end

    class CreateLocationSmbInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocationSmbInput, context: context)
        Hearth::Validator.validate!(input[:subdirectory], ::String, context: "#{context}[:subdirectory]")
        Hearth::Validator.validate!(input[:server_hostname], ::String, context: "#{context}[:server_hostname]")
        Hearth::Validator.validate!(input[:user], ::String, context: "#{context}[:user]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        AgentArnList.validate!(input[:agent_arns], context: "#{context}[:agent_arns]") unless input[:agent_arns].nil?
        SmbMountOptions.validate!(input[:mount_options], context: "#{context}[:mount_options]") unless input[:mount_options].nil?
        InputTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateLocationSmbOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateLocationSmbOutput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
      end
    end

    class CreateTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTaskInput, context: context)
        Hearth::Validator.validate!(input[:source_location_arn], ::String, context: "#{context}[:source_location_arn]")
        Hearth::Validator.validate!(input[:destination_location_arn], ::String, context: "#{context}[:destination_location_arn]")
        Hearth::Validator.validate!(input[:cloud_watch_log_group_arn], ::String, context: "#{context}[:cloud_watch_log_group_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Options.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        FilterList.validate!(input[:excludes], context: "#{context}[:excludes]") unless input[:excludes].nil?
        TaskSchedule.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        InputTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        FilterList.validate!(input[:includes], context: "#{context}[:includes]") unless input[:includes].nil?
      end
    end

    class CreateTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateTaskOutput, context: context)
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
      end
    end

    class DeleteAgentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAgentInput, context: context)
        Hearth::Validator.validate!(input[:agent_arn], ::String, context: "#{context}[:agent_arn]")
      end
    end

    class DeleteAgentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAgentOutput, context: context)
      end
    end

    class DeleteLocationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLocationInput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
      end
    end

    class DeleteLocationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteLocationOutput, context: context)
      end
    end

    class DeleteTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTaskInput, context: context)
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
      end
    end

    class DeleteTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteTaskOutput, context: context)
      end
    end

    class DescribeAgentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAgentInput, context: context)
        Hearth::Validator.validate!(input[:agent_arn], ::String, context: "#{context}[:agent_arn]")
      end
    end

    class DescribeAgentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAgentOutput, context: context)
        Hearth::Validator.validate!(input[:agent_arn], ::String, context: "#{context}[:agent_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:last_connection_time], ::Time, context: "#{context}[:last_connection_time]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:endpoint_type], ::String, context: "#{context}[:endpoint_type]")
        PrivateLinkConfig.validate!(input[:private_link_config], context: "#{context}[:private_link_config]") unless input[:private_link_config].nil?
      end
    end

    class DescribeLocationEfsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationEfsInput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
      end
    end

    class DescribeLocationEfsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationEfsOutput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Hearth::Validator.validate!(input[:location_uri], ::String, context: "#{context}[:location_uri]")
        Ec2Config.validate!(input[:ec2_config], context: "#{context}[:ec2_config]") unless input[:ec2_config].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:access_point_arn], ::String, context: "#{context}[:access_point_arn]")
        Hearth::Validator.validate!(input[:file_system_access_role_arn], ::String, context: "#{context}[:file_system_access_role_arn]")
        Hearth::Validator.validate!(input[:in_transit_encryption], ::String, context: "#{context}[:in_transit_encryption]")
      end
    end

    class DescribeLocationFsxLustreInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationFsxLustreInput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
      end
    end

    class DescribeLocationFsxLustreOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationFsxLustreOutput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Hearth::Validator.validate!(input[:location_uri], ::String, context: "#{context}[:location_uri]")
        Ec2SecurityGroupArnList.validate!(input[:security_group_arns], context: "#{context}[:security_group_arns]") unless input[:security_group_arns].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class DescribeLocationFsxOpenZfsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationFsxOpenZfsInput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
      end
    end

    class DescribeLocationFsxOpenZfsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationFsxOpenZfsOutput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Hearth::Validator.validate!(input[:location_uri], ::String, context: "#{context}[:location_uri]")
        Ec2SecurityGroupArnList.validate!(input[:security_group_arns], context: "#{context}[:security_group_arns]") unless input[:security_group_arns].nil?
        FsxProtocol.validate!(input[:protocol], context: "#{context}[:protocol]") unless input[:protocol].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class DescribeLocationFsxWindowsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationFsxWindowsInput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
      end
    end

    class DescribeLocationFsxWindowsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationFsxWindowsOutput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Hearth::Validator.validate!(input[:location_uri], ::String, context: "#{context}[:location_uri]")
        Ec2SecurityGroupArnList.validate!(input[:security_group_arns], context: "#{context}[:security_group_arns]") unless input[:security_group_arns].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:user], ::String, context: "#{context}[:user]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
      end
    end

    class DescribeLocationHdfsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationHdfsInput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
      end
    end

    class DescribeLocationHdfsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationHdfsOutput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Hearth::Validator.validate!(input[:location_uri], ::String, context: "#{context}[:location_uri]")
        HdfsNameNodeList.validate!(input[:name_nodes], context: "#{context}[:name_nodes]") unless input[:name_nodes].nil?
        Hearth::Validator.validate!(input[:block_size], ::Integer, context: "#{context}[:block_size]")
        Hearth::Validator.validate!(input[:replication_factor], ::Integer, context: "#{context}[:replication_factor]")
        Hearth::Validator.validate!(input[:kms_key_provider_uri], ::String, context: "#{context}[:kms_key_provider_uri]")
        QopConfiguration.validate!(input[:qop_configuration], context: "#{context}[:qop_configuration]") unless input[:qop_configuration].nil?
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
        Hearth::Validator.validate!(input[:simple_user], ::String, context: "#{context}[:simple_user]")
        Hearth::Validator.validate!(input[:kerberos_principal], ::String, context: "#{context}[:kerberos_principal]")
        AgentArnList.validate!(input[:agent_arns], context: "#{context}[:agent_arns]") unless input[:agent_arns].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class DescribeLocationNfsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationNfsInput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
      end
    end

    class DescribeLocationNfsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationNfsOutput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Hearth::Validator.validate!(input[:location_uri], ::String, context: "#{context}[:location_uri]")
        OnPremConfig.validate!(input[:on_prem_config], context: "#{context}[:on_prem_config]") unless input[:on_prem_config].nil?
        NfsMountOptions.validate!(input[:mount_options], context: "#{context}[:mount_options]") unless input[:mount_options].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class DescribeLocationObjectStorageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationObjectStorageInput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
      end
    end

    class DescribeLocationObjectStorageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationObjectStorageOutput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Hearth::Validator.validate!(input[:location_uri], ::String, context: "#{context}[:location_uri]")
        Hearth::Validator.validate!(input[:access_key], ::String, context: "#{context}[:access_key]")
        Hearth::Validator.validate!(input[:server_port], ::Integer, context: "#{context}[:server_port]")
        Hearth::Validator.validate!(input[:server_protocol], ::String, context: "#{context}[:server_protocol]")
        AgentArnList.validate!(input[:agent_arns], context: "#{context}[:agent_arns]") unless input[:agent_arns].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class DescribeLocationS3Input
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationS3Input, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
      end
    end

    class DescribeLocationS3Output
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationS3Output, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Hearth::Validator.validate!(input[:location_uri], ::String, context: "#{context}[:location_uri]")
        Hearth::Validator.validate!(input[:s3_storage_class], ::String, context: "#{context}[:s3_storage_class]")
        S3Config.validate!(input[:s3_config], context: "#{context}[:s3_config]") unless input[:s3_config].nil?
        AgentArnList.validate!(input[:agent_arns], context: "#{context}[:agent_arns]") unless input[:agent_arns].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class DescribeLocationSmbInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationSmbInput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
      end
    end

    class DescribeLocationSmbOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeLocationSmbOutput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Hearth::Validator.validate!(input[:location_uri], ::String, context: "#{context}[:location_uri]")
        AgentArnList.validate!(input[:agent_arns], context: "#{context}[:agent_arns]") unless input[:agent_arns].nil?
        Hearth::Validator.validate!(input[:user], ::String, context: "#{context}[:user]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        SmbMountOptions.validate!(input[:mount_options], context: "#{context}[:mount_options]") unless input[:mount_options].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class DescribeTaskExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTaskExecutionInput, context: context)
        Hearth::Validator.validate!(input[:task_execution_arn], ::String, context: "#{context}[:task_execution_arn]")
      end
    end

    class DescribeTaskExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTaskExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:task_execution_arn], ::String, context: "#{context}[:task_execution_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Options.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        FilterList.validate!(input[:excludes], context: "#{context}[:excludes]") unless input[:excludes].nil?
        FilterList.validate!(input[:includes], context: "#{context}[:includes]") unless input[:includes].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:estimated_files_to_transfer], ::Integer, context: "#{context}[:estimated_files_to_transfer]")
        Hearth::Validator.validate!(input[:estimated_bytes_to_transfer], ::Integer, context: "#{context}[:estimated_bytes_to_transfer]")
        Hearth::Validator.validate!(input[:files_transferred], ::Integer, context: "#{context}[:files_transferred]")
        Hearth::Validator.validate!(input[:bytes_written], ::Integer, context: "#{context}[:bytes_written]")
        Hearth::Validator.validate!(input[:bytes_transferred], ::Integer, context: "#{context}[:bytes_transferred]")
        TaskExecutionResultDetail.validate!(input[:result], context: "#{context}[:result]") unless input[:result].nil?
      end
    end

    class DescribeTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTaskInput, context: context)
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
      end
    end

    class DescribeTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeTaskOutput, context: context)
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:current_task_execution_arn], ::String, context: "#{context}[:current_task_execution_arn]")
        Hearth::Validator.validate!(input[:source_location_arn], ::String, context: "#{context}[:source_location_arn]")
        Hearth::Validator.validate!(input[:destination_location_arn], ::String, context: "#{context}[:destination_location_arn]")
        Hearth::Validator.validate!(input[:cloud_watch_log_group_arn], ::String, context: "#{context}[:cloud_watch_log_group_arn]")
        SourceNetworkInterfaceArns.validate!(input[:source_network_interface_arns], context: "#{context}[:source_network_interface_arns]") unless input[:source_network_interface_arns].nil?
        DestinationNetworkInterfaceArns.validate!(input[:destination_network_interface_arns], context: "#{context}[:destination_network_interface_arns]") unless input[:destination_network_interface_arns].nil?
        Options.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        FilterList.validate!(input[:excludes], context: "#{context}[:excludes]") unless input[:excludes].nil?
        TaskSchedule.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_detail], ::String, context: "#{context}[:error_detail]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        FilterList.validate!(input[:includes], context: "#{context}[:includes]") unless input[:includes].nil?
      end
    end

    class DestinationNetworkInterfaceArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class Ec2Config
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Ec2Config, context: context)
        Hearth::Validator.validate!(input[:subnet_arn], ::String, context: "#{context}[:subnet_arn]")
        Ec2SecurityGroupArnList.validate!(input[:security_group_arns], context: "#{context}[:security_group_arns]") unless input[:security_group_arns].nil?
      end
    end

    class Ec2SecurityGroupArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FilterList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FilterRule.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FilterRule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilterRule, context: context)
        Hearth::Validator.validate!(input[:filter_type], ::String, context: "#{context}[:filter_type]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class FilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FsxProtocol
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FsxProtocol, context: context)
        FsxProtocolNfs.validate!(input[:nfs], context: "#{context}[:nfs]") unless input[:nfs].nil?
      end
    end

    class FsxProtocolNfs
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FsxProtocolNfs, context: context)
        NfsMountOptions.validate!(input[:mount_options], context: "#{context}[:mount_options]") unless input[:mount_options].nil?
      end
    end

    class HdfsNameNode
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::HdfsNameNode, context: context)
        Hearth::Validator.validate!(input[:hostname], ::String, context: "#{context}[:hostname]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
      end
    end

    class HdfsNameNodeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          HdfsNameNode.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InputTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TagListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:datasync_error_code], ::String, context: "#{context}[:datasync_error_code]")
      end
    end

    class ListAgentsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAgentsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAgentsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAgentsOutput, context: context)
        AgentList.validate!(input[:agents], context: "#{context}[:agents]") unless input[:agents].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListLocationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLocationsInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        LocationFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListLocationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListLocationsOutput, context: context)
        LocationList.validate!(input[:locations], context: "#{context}[:locations]") unless input[:locations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        OutputTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTaskExecutionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTaskExecutionsInput, context: context)
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTaskExecutionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTaskExecutionsOutput, context: context)
        TaskExecutionList.validate!(input[:task_executions], context: "#{context}[:task_executions]") unless input[:task_executions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTasksInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTasksInput, context: context)
        Hearth::Validator.validate!(input[:max_results], ::Integer, context: "#{context}[:max_results]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        TaskFilters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
      end
    end

    class ListTasksOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTasksOutput, context: context)
        TaskList.validate!(input[:tasks], context: "#{context}[:tasks]") unless input[:tasks].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class LocationFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LocationFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class LocationFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LocationFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LocationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LocationListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LocationListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LocationListEntry, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Hearth::Validator.validate!(input[:location_uri], ::String, context: "#{context}[:location_uri]")
      end
    end

    class NfsMountOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NfsMountOptions, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class OnPremConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OnPremConfig, context: context)
        AgentArnList.validate!(input[:agent_arns], context: "#{context}[:agent_arns]") unless input[:agent_arns].nil?
      end
    end

    class Options
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Options, context: context)
        Hearth::Validator.validate!(input[:verify_mode], ::String, context: "#{context}[:verify_mode]")
        Hearth::Validator.validate!(input[:overwrite_mode], ::String, context: "#{context}[:overwrite_mode]")
        Hearth::Validator.validate!(input[:atime], ::String, context: "#{context}[:atime]")
        Hearth::Validator.validate!(input[:mtime], ::String, context: "#{context}[:mtime]")
        Hearth::Validator.validate!(input[:uid], ::String, context: "#{context}[:uid]")
        Hearth::Validator.validate!(input[:gid], ::String, context: "#{context}[:gid]")
        Hearth::Validator.validate!(input[:preserve_deleted_files], ::String, context: "#{context}[:preserve_deleted_files]")
        Hearth::Validator.validate!(input[:preserve_devices], ::String, context: "#{context}[:preserve_devices]")
        Hearth::Validator.validate!(input[:posix_permissions], ::String, context: "#{context}[:posix_permissions]")
        Hearth::Validator.validate!(input[:bytes_per_second], ::Integer, context: "#{context}[:bytes_per_second]")
        Hearth::Validator.validate!(input[:task_queueing], ::String, context: "#{context}[:task_queueing]")
        Hearth::Validator.validate!(input[:log_level], ::String, context: "#{context}[:log_level]")
        Hearth::Validator.validate!(input[:transfer_mode], ::String, context: "#{context}[:transfer_mode]")
        Hearth::Validator.validate!(input[:security_descriptor_copy_flags], ::String, context: "#{context}[:security_descriptor_copy_flags]")
        Hearth::Validator.validate!(input[:object_tags], ::String, context: "#{context}[:object_tags]")
      end
    end

    class OutputTagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TagListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PLSecurityGroupArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PLSubnetArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PrivateLinkConfig
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PrivateLinkConfig, context: context)
        Hearth::Validator.validate!(input[:vpc_endpoint_id], ::String, context: "#{context}[:vpc_endpoint_id]")
        Hearth::Validator.validate!(input[:private_link_endpoint], ::String, context: "#{context}[:private_link_endpoint]")
        PLSubnetArnList.validate!(input[:subnet_arns], context: "#{context}[:subnet_arns]") unless input[:subnet_arns].nil?
        PLSecurityGroupArnList.validate!(input[:security_group_arns], context: "#{context}[:security_group_arns]") unless input[:security_group_arns].nil?
      end
    end

    class QopConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QopConfiguration, context: context)
        Hearth::Validator.validate!(input[:rpc_protection], ::String, context: "#{context}[:rpc_protection]")
        Hearth::Validator.validate!(input[:data_transfer_protection], ::String, context: "#{context}[:data_transfer_protection]")
      end
    end

    class S3Config
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Config, context: context)
        Hearth::Validator.validate!(input[:bucket_access_role_arn], ::String, context: "#{context}[:bucket_access_role_arn]")
      end
    end

    class SmbMountOptions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SmbMountOptions, context: context)
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class SourceNetworkInterfaceArns
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class StartTaskExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTaskExecutionInput, context: context)
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
        Options.validate!(input[:override_options], context: "#{context}[:override_options]") unless input[:override_options].nil?
        FilterList.validate!(input[:includes], context: "#{context}[:includes]") unless input[:includes].nil?
        FilterList.validate!(input[:excludes], context: "#{context}[:excludes]") unless input[:excludes].nil?
      end
    end

    class StartTaskExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartTaskExecutionOutput, context: context)
        Hearth::Validator.validate!(input[:task_execution_arn], ::String, context: "#{context}[:task_execution_arn]")
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

    class TagListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagListEntry, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        InputTagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TaskExecutionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TaskExecutionListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TaskExecutionListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskExecutionListEntry, context: context)
        Hearth::Validator.validate!(input[:task_execution_arn], ::String, context: "#{context}[:task_execution_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class TaskExecutionResultDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskExecutionResultDetail, context: context)
        Hearth::Validator.validate!(input[:prepare_duration], ::Integer, context: "#{context}[:prepare_duration]")
        Hearth::Validator.validate!(input[:prepare_status], ::String, context: "#{context}[:prepare_status]")
        Hearth::Validator.validate!(input[:total_duration], ::Integer, context: "#{context}[:total_duration]")
        Hearth::Validator.validate!(input[:transfer_duration], ::Integer, context: "#{context}[:transfer_duration]")
        Hearth::Validator.validate!(input[:transfer_status], ::String, context: "#{context}[:transfer_status]")
        Hearth::Validator.validate!(input[:verify_duration], ::Integer, context: "#{context}[:verify_duration]")
        Hearth::Validator.validate!(input[:verify_status], ::String, context: "#{context}[:verify_status]")
        Hearth::Validator.validate!(input[:error_code], ::String, context: "#{context}[:error_code]")
        Hearth::Validator.validate!(input[:error_detail], ::String, context: "#{context}[:error_detail]")
      end
    end

    class TaskFilter
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskFilter, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        FilterValues.validate!(input[:values], context: "#{context}[:values]") unless input[:values].nil?
        Hearth::Validator.validate!(input[:operator], ::String, context: "#{context}[:operator]")
      end
    end

    class TaskFilters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TaskFilter.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TaskList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          TaskListEntry.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TaskListEntry
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskListEntry, context: context)
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class TaskSchedule
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaskSchedule, context: context)
        Hearth::Validator.validate!(input[:schedule_expression], ::String, context: "#{context}[:schedule_expression]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:keys], context: "#{context}[:keys]") unless input[:keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAgentInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAgentInput, context: context)
        Hearth::Validator.validate!(input[:agent_arn], ::String, context: "#{context}[:agent_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class UpdateAgentOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAgentOutput, context: context)
      end
    end

    class UpdateLocationHdfsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLocationHdfsInput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Hearth::Validator.validate!(input[:subdirectory], ::String, context: "#{context}[:subdirectory]")
        HdfsNameNodeList.validate!(input[:name_nodes], context: "#{context}[:name_nodes]") unless input[:name_nodes].nil?
        Hearth::Validator.validate!(input[:block_size], ::Integer, context: "#{context}[:block_size]")
        Hearth::Validator.validate!(input[:replication_factor], ::Integer, context: "#{context}[:replication_factor]")
        Hearth::Validator.validate!(input[:kms_key_provider_uri], ::String, context: "#{context}[:kms_key_provider_uri]")
        QopConfiguration.validate!(input[:qop_configuration], context: "#{context}[:qop_configuration]") unless input[:qop_configuration].nil?
        Hearth::Validator.validate!(input[:authentication_type], ::String, context: "#{context}[:authentication_type]")
        Hearth::Validator.validate!(input[:simple_user], ::String, context: "#{context}[:simple_user]")
        Hearth::Validator.validate!(input[:kerberos_principal], ::String, context: "#{context}[:kerberos_principal]")
        Hearth::Validator.validate!(input[:kerberos_keytab], ::String, context: "#{context}[:kerberos_keytab]")
        Hearth::Validator.validate!(input[:kerberos_krb5_conf], ::String, context: "#{context}[:kerberos_krb5_conf]")
        AgentArnList.validate!(input[:agent_arns], context: "#{context}[:agent_arns]") unless input[:agent_arns].nil?
      end
    end

    class UpdateLocationHdfsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLocationHdfsOutput, context: context)
      end
    end

    class UpdateLocationNfsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLocationNfsInput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Hearth::Validator.validate!(input[:subdirectory], ::String, context: "#{context}[:subdirectory]")
        OnPremConfig.validate!(input[:on_prem_config], context: "#{context}[:on_prem_config]") unless input[:on_prem_config].nil?
        NfsMountOptions.validate!(input[:mount_options], context: "#{context}[:mount_options]") unless input[:mount_options].nil?
      end
    end

    class UpdateLocationNfsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLocationNfsOutput, context: context)
      end
    end

    class UpdateLocationObjectStorageInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLocationObjectStorageInput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Hearth::Validator.validate!(input[:server_port], ::Integer, context: "#{context}[:server_port]")
        Hearth::Validator.validate!(input[:server_protocol], ::String, context: "#{context}[:server_protocol]")
        Hearth::Validator.validate!(input[:subdirectory], ::String, context: "#{context}[:subdirectory]")
        Hearth::Validator.validate!(input[:access_key], ::String, context: "#{context}[:access_key]")
        Hearth::Validator.validate!(input[:secret_key], ::String, context: "#{context}[:secret_key]")
        AgentArnList.validate!(input[:agent_arns], context: "#{context}[:agent_arns]") unless input[:agent_arns].nil?
      end
    end

    class UpdateLocationObjectStorageOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLocationObjectStorageOutput, context: context)
      end
    end

    class UpdateLocationSmbInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLocationSmbInput, context: context)
        Hearth::Validator.validate!(input[:location_arn], ::String, context: "#{context}[:location_arn]")
        Hearth::Validator.validate!(input[:subdirectory], ::String, context: "#{context}[:subdirectory]")
        Hearth::Validator.validate!(input[:user], ::String, context: "#{context}[:user]")
        Hearth::Validator.validate!(input[:domain], ::String, context: "#{context}[:domain]")
        Hearth::Validator.validate!(input[:password], ::String, context: "#{context}[:password]")
        AgentArnList.validate!(input[:agent_arns], context: "#{context}[:agent_arns]") unless input[:agent_arns].nil?
        SmbMountOptions.validate!(input[:mount_options], context: "#{context}[:mount_options]") unless input[:mount_options].nil?
      end
    end

    class UpdateLocationSmbOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateLocationSmbOutput, context: context)
      end
    end

    class UpdateTaskExecutionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTaskExecutionInput, context: context)
        Hearth::Validator.validate!(input[:task_execution_arn], ::String, context: "#{context}[:task_execution_arn]")
        Options.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
      end
    end

    class UpdateTaskExecutionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTaskExecutionOutput, context: context)
      end
    end

    class UpdateTaskInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTaskInput, context: context)
        Hearth::Validator.validate!(input[:task_arn], ::String, context: "#{context}[:task_arn]")
        Options.validate!(input[:options], context: "#{context}[:options]") unless input[:options].nil?
        FilterList.validate!(input[:excludes], context: "#{context}[:excludes]") unless input[:excludes].nil?
        TaskSchedule.validate!(input[:schedule], context: "#{context}[:schedule]") unless input[:schedule].nil?
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:cloud_watch_log_group_arn], ::String, context: "#{context}[:cloud_watch_log_group_arn]")
        FilterList.validate!(input[:includes], context: "#{context}[:includes]") unless input[:includes].nil?
      end
    end

    class UpdateTaskOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateTaskOutput, context: context)
      end
    end

  end
end
