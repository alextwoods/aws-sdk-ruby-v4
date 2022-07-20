# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::DataSync
  module Params

    module AgentArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module AgentList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << AgentListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AgentListEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AgentListEntry, context: context)
        type = Types::AgentListEntry.new
        type.agent_arn = params[:agent_arn]
        type.name = params[:name]
        type.status = params[:status]
        type
      end
    end

    module CancelTaskExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelTaskExecutionInput, context: context)
        type = Types::CancelTaskExecutionInput.new
        type.task_execution_arn = params[:task_execution_arn]
        type
      end
    end

    module CancelTaskExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CancelTaskExecutionOutput, context: context)
        type = Types::CancelTaskExecutionOutput.new
        type
      end
    end

    module CreateAgentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAgentInput, context: context)
        type = Types::CreateAgentInput.new
        type.activation_key = params[:activation_key]
        type.agent_name = params[:agent_name]
        type.tags = InputTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.vpc_endpoint_id = params[:vpc_endpoint_id]
        type.subnet_arns = PLSubnetArnList.build(params[:subnet_arns], context: "#{context}[:subnet_arns]") unless params[:subnet_arns].nil?
        type.security_group_arns = PLSecurityGroupArnList.build(params[:security_group_arns], context: "#{context}[:security_group_arns]") unless params[:security_group_arns].nil?
        type
      end
    end

    module CreateAgentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAgentOutput, context: context)
        type = Types::CreateAgentOutput.new
        type.agent_arn = params[:agent_arn]
        type
      end
    end

    module CreateLocationEfsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocationEfsInput, context: context)
        type = Types::CreateLocationEfsInput.new
        type.subdirectory = params[:subdirectory]
        type.efs_filesystem_arn = params[:efs_filesystem_arn]
        type.ec2_config = Ec2Config.build(params[:ec2_config], context: "#{context}[:ec2_config]") unless params[:ec2_config].nil?
        type.tags = InputTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.access_point_arn = params[:access_point_arn]
        type.file_system_access_role_arn = params[:file_system_access_role_arn]
        type.in_transit_encryption = params[:in_transit_encryption]
        type
      end
    end

    module CreateLocationEfsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocationEfsOutput, context: context)
        type = Types::CreateLocationEfsOutput.new
        type.location_arn = params[:location_arn]
        type
      end
    end

    module CreateLocationFsxLustreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocationFsxLustreInput, context: context)
        type = Types::CreateLocationFsxLustreInput.new
        type.fsx_filesystem_arn = params[:fsx_filesystem_arn]
        type.security_group_arns = Ec2SecurityGroupArnList.build(params[:security_group_arns], context: "#{context}[:security_group_arns]") unless params[:security_group_arns].nil?
        type.subdirectory = params[:subdirectory]
        type.tags = InputTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateLocationFsxLustreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocationFsxLustreOutput, context: context)
        type = Types::CreateLocationFsxLustreOutput.new
        type.location_arn = params[:location_arn]
        type
      end
    end

    module CreateLocationFsxOpenZfsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocationFsxOpenZfsInput, context: context)
        type = Types::CreateLocationFsxOpenZfsInput.new
        type.fsx_filesystem_arn = params[:fsx_filesystem_arn]
        type.protocol = FsxProtocol.build(params[:protocol], context: "#{context}[:protocol]") unless params[:protocol].nil?
        type.security_group_arns = Ec2SecurityGroupArnList.build(params[:security_group_arns], context: "#{context}[:security_group_arns]") unless params[:security_group_arns].nil?
        type.subdirectory = params[:subdirectory]
        type.tags = InputTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateLocationFsxOpenZfsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocationFsxOpenZfsOutput, context: context)
        type = Types::CreateLocationFsxOpenZfsOutput.new
        type.location_arn = params[:location_arn]
        type
      end
    end

    module CreateLocationFsxWindowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocationFsxWindowsInput, context: context)
        type = Types::CreateLocationFsxWindowsInput.new
        type.subdirectory = params[:subdirectory]
        type.fsx_filesystem_arn = params[:fsx_filesystem_arn]
        type.security_group_arns = Ec2SecurityGroupArnList.build(params[:security_group_arns], context: "#{context}[:security_group_arns]") unless params[:security_group_arns].nil?
        type.tags = InputTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.user = params[:user]
        type.domain = params[:domain]
        type.password = params[:password]
        type
      end
    end

    module CreateLocationFsxWindowsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocationFsxWindowsOutput, context: context)
        type = Types::CreateLocationFsxWindowsOutput.new
        type.location_arn = params[:location_arn]
        type
      end
    end

    module CreateLocationHdfsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocationHdfsInput, context: context)
        type = Types::CreateLocationHdfsInput.new
        type.subdirectory = params[:subdirectory]
        type.name_nodes = HdfsNameNodeList.build(params[:name_nodes], context: "#{context}[:name_nodes]") unless params[:name_nodes].nil?
        type.block_size = params[:block_size]
        type.replication_factor = params[:replication_factor]
        type.kms_key_provider_uri = params[:kms_key_provider_uri]
        type.qop_configuration = QopConfiguration.build(params[:qop_configuration], context: "#{context}[:qop_configuration]") unless params[:qop_configuration].nil?
        type.authentication_type = params[:authentication_type]
        type.simple_user = params[:simple_user]
        type.kerberos_principal = params[:kerberos_principal]
        type.kerberos_keytab = params[:kerberos_keytab]
        type.kerberos_krb5_conf = params[:kerberos_krb5_conf]
        type.agent_arns = AgentArnList.build(params[:agent_arns], context: "#{context}[:agent_arns]") unless params[:agent_arns].nil?
        type.tags = InputTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateLocationHdfsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocationHdfsOutput, context: context)
        type = Types::CreateLocationHdfsOutput.new
        type.location_arn = params[:location_arn]
        type
      end
    end

    module CreateLocationNfsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocationNfsInput, context: context)
        type = Types::CreateLocationNfsInput.new
        type.subdirectory = params[:subdirectory]
        type.server_hostname = params[:server_hostname]
        type.on_prem_config = OnPremConfig.build(params[:on_prem_config], context: "#{context}[:on_prem_config]") unless params[:on_prem_config].nil?
        type.mount_options = NfsMountOptions.build(params[:mount_options], context: "#{context}[:mount_options]") unless params[:mount_options].nil?
        type.tags = InputTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateLocationNfsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocationNfsOutput, context: context)
        type = Types::CreateLocationNfsOutput.new
        type.location_arn = params[:location_arn]
        type
      end
    end

    module CreateLocationObjectStorageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocationObjectStorageInput, context: context)
        type = Types::CreateLocationObjectStorageInput.new
        type.server_hostname = params[:server_hostname]
        type.server_port = params[:server_port]
        type.server_protocol = params[:server_protocol]
        type.subdirectory = params[:subdirectory]
        type.bucket_name = params[:bucket_name]
        type.access_key = params[:access_key]
        type.secret_key = params[:secret_key]
        type.agent_arns = AgentArnList.build(params[:agent_arns], context: "#{context}[:agent_arns]") unless params[:agent_arns].nil?
        type.tags = InputTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateLocationObjectStorageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocationObjectStorageOutput, context: context)
        type = Types::CreateLocationObjectStorageOutput.new
        type.location_arn = params[:location_arn]
        type
      end
    end

    module CreateLocationS3Input
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocationS3Input, context: context)
        type = Types::CreateLocationS3Input.new
        type.subdirectory = params[:subdirectory]
        type.s3_bucket_arn = params[:s3_bucket_arn]
        type.s3_storage_class = params[:s3_storage_class]
        type.s3_config = S3Config.build(params[:s3_config], context: "#{context}[:s3_config]") unless params[:s3_config].nil?
        type.agent_arns = AgentArnList.build(params[:agent_arns], context: "#{context}[:agent_arns]") unless params[:agent_arns].nil?
        type.tags = InputTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateLocationS3Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocationS3Output, context: context)
        type = Types::CreateLocationS3Output.new
        type.location_arn = params[:location_arn]
        type
      end
    end

    module CreateLocationSmbInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocationSmbInput, context: context)
        type = Types::CreateLocationSmbInput.new
        type.subdirectory = params[:subdirectory]
        type.server_hostname = params[:server_hostname]
        type.user = params[:user]
        type.domain = params[:domain]
        type.password = params[:password]
        type.agent_arns = AgentArnList.build(params[:agent_arns], context: "#{context}[:agent_arns]") unless params[:agent_arns].nil?
        type.mount_options = SmbMountOptions.build(params[:mount_options], context: "#{context}[:mount_options]") unless params[:mount_options].nil?
        type.tags = InputTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateLocationSmbOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateLocationSmbOutput, context: context)
        type = Types::CreateLocationSmbOutput.new
        type.location_arn = params[:location_arn]
        type
      end
    end

    module CreateTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTaskInput, context: context)
        type = Types::CreateTaskInput.new
        type.source_location_arn = params[:source_location_arn]
        type.destination_location_arn = params[:destination_location_arn]
        type.cloud_watch_log_group_arn = params[:cloud_watch_log_group_arn]
        type.name = params[:name]
        type.options = Options.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.excludes = FilterList.build(params[:excludes], context: "#{context}[:excludes]") unless params[:excludes].nil?
        type.schedule = TaskSchedule.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.tags = InputTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.includes = FilterList.build(params[:includes], context: "#{context}[:includes]") unless params[:includes].nil?
        type
      end
    end

    module CreateTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateTaskOutput, context: context)
        type = Types::CreateTaskOutput.new
        type.task_arn = params[:task_arn]
        type
      end
    end

    module DeleteAgentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAgentInput, context: context)
        type = Types::DeleteAgentInput.new
        type.agent_arn = params[:agent_arn]
        type
      end
    end

    module DeleteAgentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAgentOutput, context: context)
        type = Types::DeleteAgentOutput.new
        type
      end
    end

    module DeleteLocationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLocationInput, context: context)
        type = Types::DeleteLocationInput.new
        type.location_arn = params[:location_arn]
        type
      end
    end

    module DeleteLocationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteLocationOutput, context: context)
        type = Types::DeleteLocationOutput.new
        type
      end
    end

    module DeleteTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTaskInput, context: context)
        type = Types::DeleteTaskInput.new
        type.task_arn = params[:task_arn]
        type
      end
    end

    module DeleteTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteTaskOutput, context: context)
        type = Types::DeleteTaskOutput.new
        type
      end
    end

    module DescribeAgentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAgentInput, context: context)
        type = Types::DescribeAgentInput.new
        type.agent_arn = params[:agent_arn]
        type
      end
    end

    module DescribeAgentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAgentOutput, context: context)
        type = Types::DescribeAgentOutput.new
        type.agent_arn = params[:agent_arn]
        type.name = params[:name]
        type.status = params[:status]
        type.last_connection_time = params[:last_connection_time]
        type.creation_time = params[:creation_time]
        type.endpoint_type = params[:endpoint_type]
        type.private_link_config = PrivateLinkConfig.build(params[:private_link_config], context: "#{context}[:private_link_config]") unless params[:private_link_config].nil?
        type
      end
    end

    module DescribeLocationEfsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationEfsInput, context: context)
        type = Types::DescribeLocationEfsInput.new
        type.location_arn = params[:location_arn]
        type
      end
    end

    module DescribeLocationEfsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationEfsOutput, context: context)
        type = Types::DescribeLocationEfsOutput.new
        type.location_arn = params[:location_arn]
        type.location_uri = params[:location_uri]
        type.ec2_config = Ec2Config.build(params[:ec2_config], context: "#{context}[:ec2_config]") unless params[:ec2_config].nil?
        type.creation_time = params[:creation_time]
        type.access_point_arn = params[:access_point_arn]
        type.file_system_access_role_arn = params[:file_system_access_role_arn]
        type.in_transit_encryption = params[:in_transit_encryption]
        type
      end
    end

    module DescribeLocationFsxLustreInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationFsxLustreInput, context: context)
        type = Types::DescribeLocationFsxLustreInput.new
        type.location_arn = params[:location_arn]
        type
      end
    end

    module DescribeLocationFsxLustreOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationFsxLustreOutput, context: context)
        type = Types::DescribeLocationFsxLustreOutput.new
        type.location_arn = params[:location_arn]
        type.location_uri = params[:location_uri]
        type.security_group_arns = Ec2SecurityGroupArnList.build(params[:security_group_arns], context: "#{context}[:security_group_arns]") unless params[:security_group_arns].nil?
        type.creation_time = params[:creation_time]
        type
      end
    end

    module DescribeLocationFsxOpenZfsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationFsxOpenZfsInput, context: context)
        type = Types::DescribeLocationFsxOpenZfsInput.new
        type.location_arn = params[:location_arn]
        type
      end
    end

    module DescribeLocationFsxOpenZfsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationFsxOpenZfsOutput, context: context)
        type = Types::DescribeLocationFsxOpenZfsOutput.new
        type.location_arn = params[:location_arn]
        type.location_uri = params[:location_uri]
        type.security_group_arns = Ec2SecurityGroupArnList.build(params[:security_group_arns], context: "#{context}[:security_group_arns]") unless params[:security_group_arns].nil?
        type.protocol = FsxProtocol.build(params[:protocol], context: "#{context}[:protocol]") unless params[:protocol].nil?
        type.creation_time = params[:creation_time]
        type
      end
    end

    module DescribeLocationFsxWindowsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationFsxWindowsInput, context: context)
        type = Types::DescribeLocationFsxWindowsInput.new
        type.location_arn = params[:location_arn]
        type
      end
    end

    module DescribeLocationFsxWindowsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationFsxWindowsOutput, context: context)
        type = Types::DescribeLocationFsxWindowsOutput.new
        type.location_arn = params[:location_arn]
        type.location_uri = params[:location_uri]
        type.security_group_arns = Ec2SecurityGroupArnList.build(params[:security_group_arns], context: "#{context}[:security_group_arns]") unless params[:security_group_arns].nil?
        type.creation_time = params[:creation_time]
        type.user = params[:user]
        type.domain = params[:domain]
        type
      end
    end

    module DescribeLocationHdfsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationHdfsInput, context: context)
        type = Types::DescribeLocationHdfsInput.new
        type.location_arn = params[:location_arn]
        type
      end
    end

    module DescribeLocationHdfsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationHdfsOutput, context: context)
        type = Types::DescribeLocationHdfsOutput.new
        type.location_arn = params[:location_arn]
        type.location_uri = params[:location_uri]
        type.name_nodes = HdfsNameNodeList.build(params[:name_nodes], context: "#{context}[:name_nodes]") unless params[:name_nodes].nil?
        type.block_size = params[:block_size]
        type.replication_factor = params[:replication_factor]
        type.kms_key_provider_uri = params[:kms_key_provider_uri]
        type.qop_configuration = QopConfiguration.build(params[:qop_configuration], context: "#{context}[:qop_configuration]") unless params[:qop_configuration].nil?
        type.authentication_type = params[:authentication_type]
        type.simple_user = params[:simple_user]
        type.kerberos_principal = params[:kerberos_principal]
        type.agent_arns = AgentArnList.build(params[:agent_arns], context: "#{context}[:agent_arns]") unless params[:agent_arns].nil?
        type.creation_time = params[:creation_time]
        type
      end
    end

    module DescribeLocationNfsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationNfsInput, context: context)
        type = Types::DescribeLocationNfsInput.new
        type.location_arn = params[:location_arn]
        type
      end
    end

    module DescribeLocationNfsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationNfsOutput, context: context)
        type = Types::DescribeLocationNfsOutput.new
        type.location_arn = params[:location_arn]
        type.location_uri = params[:location_uri]
        type.on_prem_config = OnPremConfig.build(params[:on_prem_config], context: "#{context}[:on_prem_config]") unless params[:on_prem_config].nil?
        type.mount_options = NfsMountOptions.build(params[:mount_options], context: "#{context}[:mount_options]") unless params[:mount_options].nil?
        type.creation_time = params[:creation_time]
        type
      end
    end

    module DescribeLocationObjectStorageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationObjectStorageInput, context: context)
        type = Types::DescribeLocationObjectStorageInput.new
        type.location_arn = params[:location_arn]
        type
      end
    end

    module DescribeLocationObjectStorageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationObjectStorageOutput, context: context)
        type = Types::DescribeLocationObjectStorageOutput.new
        type.location_arn = params[:location_arn]
        type.location_uri = params[:location_uri]
        type.access_key = params[:access_key]
        type.server_port = params[:server_port]
        type.server_protocol = params[:server_protocol]
        type.agent_arns = AgentArnList.build(params[:agent_arns], context: "#{context}[:agent_arns]") unless params[:agent_arns].nil?
        type.creation_time = params[:creation_time]
        type
      end
    end

    module DescribeLocationS3Input
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationS3Input, context: context)
        type = Types::DescribeLocationS3Input.new
        type.location_arn = params[:location_arn]
        type
      end
    end

    module DescribeLocationS3Output
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationS3Output, context: context)
        type = Types::DescribeLocationS3Output.new
        type.location_arn = params[:location_arn]
        type.location_uri = params[:location_uri]
        type.s3_storage_class = params[:s3_storage_class]
        type.s3_config = S3Config.build(params[:s3_config], context: "#{context}[:s3_config]") unless params[:s3_config].nil?
        type.agent_arns = AgentArnList.build(params[:agent_arns], context: "#{context}[:agent_arns]") unless params[:agent_arns].nil?
        type.creation_time = params[:creation_time]
        type
      end
    end

    module DescribeLocationSmbInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationSmbInput, context: context)
        type = Types::DescribeLocationSmbInput.new
        type.location_arn = params[:location_arn]
        type
      end
    end

    module DescribeLocationSmbOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeLocationSmbOutput, context: context)
        type = Types::DescribeLocationSmbOutput.new
        type.location_arn = params[:location_arn]
        type.location_uri = params[:location_uri]
        type.agent_arns = AgentArnList.build(params[:agent_arns], context: "#{context}[:agent_arns]") unless params[:agent_arns].nil?
        type.user = params[:user]
        type.domain = params[:domain]
        type.mount_options = SmbMountOptions.build(params[:mount_options], context: "#{context}[:mount_options]") unless params[:mount_options].nil?
        type.creation_time = params[:creation_time]
        type
      end
    end

    module DescribeTaskExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTaskExecutionInput, context: context)
        type = Types::DescribeTaskExecutionInput.new
        type.task_execution_arn = params[:task_execution_arn]
        type
      end
    end

    module DescribeTaskExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTaskExecutionOutput, context: context)
        type = Types::DescribeTaskExecutionOutput.new
        type.task_execution_arn = params[:task_execution_arn]
        type.status = params[:status]
        type.options = Options.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.excludes = FilterList.build(params[:excludes], context: "#{context}[:excludes]") unless params[:excludes].nil?
        type.includes = FilterList.build(params[:includes], context: "#{context}[:includes]") unless params[:includes].nil?
        type.start_time = params[:start_time]
        type.estimated_files_to_transfer = params[:estimated_files_to_transfer]
        type.estimated_bytes_to_transfer = params[:estimated_bytes_to_transfer]
        type.files_transferred = params[:files_transferred]
        type.bytes_written = params[:bytes_written]
        type.bytes_transferred = params[:bytes_transferred]
        type.result = TaskExecutionResultDetail.build(params[:result], context: "#{context}[:result]") unless params[:result].nil?
        type
      end
    end

    module DescribeTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTaskInput, context: context)
        type = Types::DescribeTaskInput.new
        type.task_arn = params[:task_arn]
        type
      end
    end

    module DescribeTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeTaskOutput, context: context)
        type = Types::DescribeTaskOutput.new
        type.task_arn = params[:task_arn]
        type.status = params[:status]
        type.name = params[:name]
        type.current_task_execution_arn = params[:current_task_execution_arn]
        type.source_location_arn = params[:source_location_arn]
        type.destination_location_arn = params[:destination_location_arn]
        type.cloud_watch_log_group_arn = params[:cloud_watch_log_group_arn]
        type.source_network_interface_arns = SourceNetworkInterfaceArns.build(params[:source_network_interface_arns], context: "#{context}[:source_network_interface_arns]") unless params[:source_network_interface_arns].nil?
        type.destination_network_interface_arns = DestinationNetworkInterfaceArns.build(params[:destination_network_interface_arns], context: "#{context}[:destination_network_interface_arns]") unless params[:destination_network_interface_arns].nil?
        type.options = Options.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.excludes = FilterList.build(params[:excludes], context: "#{context}[:excludes]") unless params[:excludes].nil?
        type.schedule = TaskSchedule.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.error_code = params[:error_code]
        type.error_detail = params[:error_detail]
        type.creation_time = params[:creation_time]
        type.includes = FilterList.build(params[:includes], context: "#{context}[:includes]") unless params[:includes].nil?
        type
      end
    end

    module DestinationNetworkInterfaceArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module Ec2Config
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Ec2Config, context: context)
        type = Types::Ec2Config.new
        type.subnet_arn = params[:subnet_arn]
        type.security_group_arns = Ec2SecurityGroupArnList.build(params[:security_group_arns], context: "#{context}[:security_group_arns]") unless params[:security_group_arns].nil?
        type
      end
    end

    module Ec2SecurityGroupArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FilterList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FilterRule.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FilterRule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FilterRule, context: context)
        type = Types::FilterRule.new
        type.filter_type = params[:filter_type]
        type.value = params[:value]
        type
      end
    end

    module FilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FsxProtocol
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FsxProtocol, context: context)
        type = Types::FsxProtocol.new
        type.nfs = FsxProtocolNfs.build(params[:nfs], context: "#{context}[:nfs]") unless params[:nfs].nil?
        type
      end
    end

    module FsxProtocolNfs
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FsxProtocolNfs, context: context)
        type = Types::FsxProtocolNfs.new
        type.mount_options = NfsMountOptions.build(params[:mount_options], context: "#{context}[:mount_options]") unless params[:mount_options].nil?
        type
      end
    end

    module HdfsNameNode
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::HdfsNameNode, context: context)
        type = Types::HdfsNameNode.new
        type.hostname = params[:hostname]
        type.port = params[:port]
        type
      end
    end

    module HdfsNameNodeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << HdfsNameNode.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InputTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalException, context: context)
        type = Types::InternalException.new
        type.message = params[:message]
        type.error_code = params[:error_code]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type.error_code = params[:error_code]
        type.datasync_error_code = params[:datasync_error_code]
        type
      end
    end

    module ListAgentsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAgentsInput, context: context)
        type = Types::ListAgentsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAgentsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAgentsOutput, context: context)
        type = Types::ListAgentsOutput.new
        type.agents = AgentList.build(params[:agents], context: "#{context}[:agents]") unless params[:agents].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListLocationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLocationsInput, context: context)
        type = Types::ListLocationsInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = LocationFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListLocationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListLocationsOutput, context: context)
        type = Types::ListLocationsOutput.new
        type.locations = LocationList.build(params[:locations], context: "#{context}[:locations]") unless params[:locations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = OutputTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTaskExecutionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTaskExecutionsInput, context: context)
        type = Types::ListTaskExecutionsInput.new
        type.task_arn = params[:task_arn]
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTaskExecutionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTaskExecutionsOutput, context: context)
        type = Types::ListTaskExecutionsOutput.new
        type.task_executions = TaskExecutionList.build(params[:task_executions], context: "#{context}[:task_executions]") unless params[:task_executions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTasksInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTasksInput, context: context)
        type = Types::ListTasksInput.new
        type.max_results = params[:max_results]
        type.next_token = params[:next_token]
        type.filters = TaskFilters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type
      end
    end

    module ListTasksOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTasksOutput, context: context)
        type = Types::ListTasksOutput.new
        type.tasks = TaskList.build(params[:tasks], context: "#{context}[:tasks]") unless params[:tasks].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module LocationFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LocationFilter, context: context)
        type = Types::LocationFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.operator = params[:operator]
        type
      end
    end

    module LocationFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LocationFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LocationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LocationListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LocationListEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LocationListEntry, context: context)
        type = Types::LocationListEntry.new
        type.location_arn = params[:location_arn]
        type.location_uri = params[:location_uri]
        type
      end
    end

    module NfsMountOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NfsMountOptions, context: context)
        type = Types::NfsMountOptions.new
        type.version = params[:version]
        type
      end
    end

    module OnPremConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OnPremConfig, context: context)
        type = Types::OnPremConfig.new
        type.agent_arns = AgentArnList.build(params[:agent_arns], context: "#{context}[:agent_arns]") unless params[:agent_arns].nil?
        type
      end
    end

    module Options
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Options, context: context)
        type = Types::Options.new
        type.verify_mode = params[:verify_mode]
        type.overwrite_mode = params[:overwrite_mode]
        type.atime = params[:atime]
        type.mtime = params[:mtime]
        type.uid = params[:uid]
        type.gid = params[:gid]
        type.preserve_deleted_files = params[:preserve_deleted_files]
        type.preserve_devices = params[:preserve_devices]
        type.posix_permissions = params[:posix_permissions]
        type.bytes_per_second = params[:bytes_per_second]
        type.task_queueing = params[:task_queueing]
        type.log_level = params[:log_level]
        type.transfer_mode = params[:transfer_mode]
        type.security_descriptor_copy_flags = params[:security_descriptor_copy_flags]
        type.object_tags = params[:object_tags]
        type
      end
    end

    module OutputTagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TagListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PLSecurityGroupArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PLSubnetArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PrivateLinkConfig
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PrivateLinkConfig, context: context)
        type = Types::PrivateLinkConfig.new
        type.vpc_endpoint_id = params[:vpc_endpoint_id]
        type.private_link_endpoint = params[:private_link_endpoint]
        type.subnet_arns = PLSubnetArnList.build(params[:subnet_arns], context: "#{context}[:subnet_arns]") unless params[:subnet_arns].nil?
        type.security_group_arns = PLSecurityGroupArnList.build(params[:security_group_arns], context: "#{context}[:security_group_arns]") unless params[:security_group_arns].nil?
        type
      end
    end

    module QopConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QopConfiguration, context: context)
        type = Types::QopConfiguration.new
        type.rpc_protection = params[:rpc_protection]
        type.data_transfer_protection = params[:data_transfer_protection]
        type
      end
    end

    module S3Config
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Config, context: context)
        type = Types::S3Config.new
        type.bucket_access_role_arn = params[:bucket_access_role_arn]
        type
      end
    end

    module SmbMountOptions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SmbMountOptions, context: context)
        type = Types::SmbMountOptions.new
        type.version = params[:version]
        type
      end
    end

    module SourceNetworkInterfaceArns
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module StartTaskExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTaskExecutionInput, context: context)
        type = Types::StartTaskExecutionInput.new
        type.task_arn = params[:task_arn]
        type.override_options = Options.build(params[:override_options], context: "#{context}[:override_options]") unless params[:override_options].nil?
        type.includes = FilterList.build(params[:includes], context: "#{context}[:includes]") unless params[:includes].nil?
        type.excludes = FilterList.build(params[:excludes], context: "#{context}[:excludes]") unless params[:excludes].nil?
        type
      end
    end

    module StartTaskExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartTaskExecutionOutput, context: context)
        type = Types::StartTaskExecutionOutput.new
        type.task_execution_arn = params[:task_execution_arn]
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

    module TagListEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagListEntry, context: context)
        type = Types::TagListEntry.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = InputTagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
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

    module TaskExecutionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TaskExecutionListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TaskExecutionListEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskExecutionListEntry, context: context)
        type = Types::TaskExecutionListEntry.new
        type.task_execution_arn = params[:task_execution_arn]
        type.status = params[:status]
        type
      end
    end

    module TaskExecutionResultDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskExecutionResultDetail, context: context)
        type = Types::TaskExecutionResultDetail.new
        type.prepare_duration = params[:prepare_duration]
        type.prepare_status = params[:prepare_status]
        type.total_duration = params[:total_duration]
        type.transfer_duration = params[:transfer_duration]
        type.transfer_status = params[:transfer_status]
        type.verify_duration = params[:verify_duration]
        type.verify_status = params[:verify_status]
        type.error_code = params[:error_code]
        type.error_detail = params[:error_detail]
        type
      end
    end

    module TaskFilter
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskFilter, context: context)
        type = Types::TaskFilter.new
        type.name = params[:name]
        type.values = FilterValues.build(params[:values], context: "#{context}[:values]") unless params[:values].nil?
        type.operator = params[:operator]
        type
      end
    end

    module TaskFilters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TaskFilter.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TaskList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << TaskListEntry.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TaskListEntry
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskListEntry, context: context)
        type = Types::TaskListEntry.new
        type.task_arn = params[:task_arn]
        type.status = params[:status]
        type.name = params[:name]
        type
      end
    end

    module TaskSchedule
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaskSchedule, context: context)
        type = Types::TaskSchedule.new
        type.schedule_expression = params[:schedule_expression]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.keys = TagKeyList.build(params[:keys], context: "#{context}[:keys]") unless params[:keys].nil?
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

    module UpdateAgentInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAgentInput, context: context)
        type = Types::UpdateAgentInput.new
        type.agent_arn = params[:agent_arn]
        type.name = params[:name]
        type
      end
    end

    module UpdateAgentOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAgentOutput, context: context)
        type = Types::UpdateAgentOutput.new
        type
      end
    end

    module UpdateLocationHdfsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLocationHdfsInput, context: context)
        type = Types::UpdateLocationHdfsInput.new
        type.location_arn = params[:location_arn]
        type.subdirectory = params[:subdirectory]
        type.name_nodes = HdfsNameNodeList.build(params[:name_nodes], context: "#{context}[:name_nodes]") unless params[:name_nodes].nil?
        type.block_size = params[:block_size]
        type.replication_factor = params[:replication_factor]
        type.kms_key_provider_uri = params[:kms_key_provider_uri]
        type.qop_configuration = QopConfiguration.build(params[:qop_configuration], context: "#{context}[:qop_configuration]") unless params[:qop_configuration].nil?
        type.authentication_type = params[:authentication_type]
        type.simple_user = params[:simple_user]
        type.kerberos_principal = params[:kerberos_principal]
        type.kerberos_keytab = params[:kerberos_keytab]
        type.kerberos_krb5_conf = params[:kerberos_krb5_conf]
        type.agent_arns = AgentArnList.build(params[:agent_arns], context: "#{context}[:agent_arns]") unless params[:agent_arns].nil?
        type
      end
    end

    module UpdateLocationHdfsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLocationHdfsOutput, context: context)
        type = Types::UpdateLocationHdfsOutput.new
        type
      end
    end

    module UpdateLocationNfsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLocationNfsInput, context: context)
        type = Types::UpdateLocationNfsInput.new
        type.location_arn = params[:location_arn]
        type.subdirectory = params[:subdirectory]
        type.on_prem_config = OnPremConfig.build(params[:on_prem_config], context: "#{context}[:on_prem_config]") unless params[:on_prem_config].nil?
        type.mount_options = NfsMountOptions.build(params[:mount_options], context: "#{context}[:mount_options]") unless params[:mount_options].nil?
        type
      end
    end

    module UpdateLocationNfsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLocationNfsOutput, context: context)
        type = Types::UpdateLocationNfsOutput.new
        type
      end
    end

    module UpdateLocationObjectStorageInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLocationObjectStorageInput, context: context)
        type = Types::UpdateLocationObjectStorageInput.new
        type.location_arn = params[:location_arn]
        type.server_port = params[:server_port]
        type.server_protocol = params[:server_protocol]
        type.subdirectory = params[:subdirectory]
        type.access_key = params[:access_key]
        type.secret_key = params[:secret_key]
        type.agent_arns = AgentArnList.build(params[:agent_arns], context: "#{context}[:agent_arns]") unless params[:agent_arns].nil?
        type
      end
    end

    module UpdateLocationObjectStorageOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLocationObjectStorageOutput, context: context)
        type = Types::UpdateLocationObjectStorageOutput.new
        type
      end
    end

    module UpdateLocationSmbInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLocationSmbInput, context: context)
        type = Types::UpdateLocationSmbInput.new
        type.location_arn = params[:location_arn]
        type.subdirectory = params[:subdirectory]
        type.user = params[:user]
        type.domain = params[:domain]
        type.password = params[:password]
        type.agent_arns = AgentArnList.build(params[:agent_arns], context: "#{context}[:agent_arns]") unless params[:agent_arns].nil?
        type.mount_options = SmbMountOptions.build(params[:mount_options], context: "#{context}[:mount_options]") unless params[:mount_options].nil?
        type
      end
    end

    module UpdateLocationSmbOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateLocationSmbOutput, context: context)
        type = Types::UpdateLocationSmbOutput.new
        type
      end
    end

    module UpdateTaskExecutionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTaskExecutionInput, context: context)
        type = Types::UpdateTaskExecutionInput.new
        type.task_execution_arn = params[:task_execution_arn]
        type.options = Options.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type
      end
    end

    module UpdateTaskExecutionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTaskExecutionOutput, context: context)
        type = Types::UpdateTaskExecutionOutput.new
        type
      end
    end

    module UpdateTaskInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTaskInput, context: context)
        type = Types::UpdateTaskInput.new
        type.task_arn = params[:task_arn]
        type.options = Options.build(params[:options], context: "#{context}[:options]") unless params[:options].nil?
        type.excludes = FilterList.build(params[:excludes], context: "#{context}[:excludes]") unless params[:excludes].nil?
        type.schedule = TaskSchedule.build(params[:schedule], context: "#{context}[:schedule]") unless params[:schedule].nil?
        type.name = params[:name]
        type.cloud_watch_log_group_arn = params[:cloud_watch_log_group_arn]
        type.includes = FilterList.build(params[:includes], context: "#{context}[:includes]") unless params[:includes].nil?
        type
      end
    end

    module UpdateTaskOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateTaskOutput, context: context)
        type = Types::UpdateTaskOutput.new
        type
      end
    end

  end
end
