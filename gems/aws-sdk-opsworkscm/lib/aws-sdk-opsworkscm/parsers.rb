# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::OpsWorksCM
  module Parsers

    # Operation Parser for AssociateNode
    class AssociateNode
      def self.parse(http_resp)
        data = Types::AssociateNodeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.node_association_status_token = map['NodeAssociationStatusToken']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidStateException
    class InvalidStateException
      def self.parse(http_resp)
        data = Types::InvalidStateException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateBackup
    class CreateBackup
      def self.parse(http_resp)
        data = Types::CreateBackupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.backup = (Backup.parse(map['Backup']) unless map['Backup'].nil?)
        data
      end
    end

    class Backup
      def self.parse(map)
        data = Types::Backup.new
        data.backup_arn = map['BackupArn']
        data.backup_id = map['BackupId']
        data.backup_type = map['BackupType']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.description = map['Description']
        data.engine = map['Engine']
        data.engine_model = map['EngineModel']
        data.engine_version = map['EngineVersion']
        data.instance_profile_arn = map['InstanceProfileArn']
        data.instance_type = map['InstanceType']
        data.key_pair = map['KeyPair']
        data.preferred_backup_window = map['PreferredBackupWindow']
        data.preferred_maintenance_window = map['PreferredMaintenanceWindow']
        data.s3_data_size = map['S3DataSize']
        data.s3_data_url = map['S3DataUrl']
        data.s3_log_url = map['S3LogUrl']
        data.security_group_ids = (Strings.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        data.server_name = map['ServerName']
        data.service_role_arn = map['ServiceRoleArn']
        data.status = map['Status']
        data.status_description = map['StatusDescription']
        data.subnet_ids = (Strings.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.tools_version = map['ToolsVersion']
        data.user_arn = map['UserArn']
        return data
      end
    end

    class Strings
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateServer
    class CreateServer
      def self.parse(http_resp)
        data = Types::CreateServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.server = (Server.parse(map['Server']) unless map['Server'].nil?)
        data
      end
    end

    class Server
      def self.parse(map)
        data = Types::Server.new
        data.associate_public_ip_address = map['AssociatePublicIpAddress']
        data.backup_retention_count = map['BackupRetentionCount']
        data.server_name = map['ServerName']
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.cloud_formation_stack_arn = map['CloudFormationStackArn']
        data.custom_domain = map['CustomDomain']
        data.disable_automated_backup = map['DisableAutomatedBackup']
        data.endpoint = map['Endpoint']
        data.engine = map['Engine']
        data.engine_model = map['EngineModel']
        data.engine_attributes = (EngineAttributes.parse(map['EngineAttributes']) unless map['EngineAttributes'].nil?)
        data.engine_version = map['EngineVersion']
        data.instance_profile_arn = map['InstanceProfileArn']
        data.instance_type = map['InstanceType']
        data.key_pair = map['KeyPair']
        data.maintenance_status = map['MaintenanceStatus']
        data.preferred_maintenance_window = map['PreferredMaintenanceWindow']
        data.preferred_backup_window = map['PreferredBackupWindow']
        data.security_group_ids = (Strings.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        data.service_role_arn = map['ServiceRoleArn']
        data.status = map['Status']
        data.status_reason = map['StatusReason']
        data.subnet_ids = (Strings.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.server_arn = map['ServerArn']
        return data
      end
    end

    class EngineAttributes
      def self.parse(list)
        list.map do |value|
          EngineAttribute.parse(value) unless value.nil?
        end
      end
    end

    class EngineAttribute
      def self.parse(map)
        data = Types::EngineAttribute.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    # Error Parser for ResourceAlreadyExistsException
    class ResourceAlreadyExistsException
      def self.parse(http_resp)
        data = Types::ResourceAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteBackup
    class DeleteBackup
      def self.parse(http_resp)
        data = Types::DeleteBackupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteServer
    class DeleteServer
      def self.parse(http_resp)
        data = Types::DeleteServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.parse(http_resp)
        data = Types::DescribeAccountAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.attributes = (AccountAttributes.parse(map['Attributes']) unless map['Attributes'].nil?)
        data
      end
    end

    class AccountAttributes
      def self.parse(list)
        list.map do |value|
          AccountAttribute.parse(value) unless value.nil?
        end
      end
    end

    class AccountAttribute
      def self.parse(map)
        data = Types::AccountAttribute.new
        data.name = map['Name']
        data.maximum = map['Maximum']
        data.used = map['Used']
        return data
      end
    end

    # Operation Parser for DescribeBackups
    class DescribeBackups
      def self.parse(http_resp)
        data = Types::DescribeBackupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.backups = (Backups.parse(map['Backups']) unless map['Backups'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Backups
      def self.parse(list)
        list.map do |value|
          Backup.parse(value) unless value.nil?
        end
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DescribeEvents
    class DescribeEvents
      def self.parse(http_resp)
        data = Types::DescribeEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.server_events = (ServerEvents.parse(map['ServerEvents']) unless map['ServerEvents'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ServerEvents
      def self.parse(list)
        list.map do |value|
          ServerEvent.parse(value) unless value.nil?
        end
      end
    end

    class ServerEvent
      def self.parse(map)
        data = Types::ServerEvent.new
        data.created_at = Time.at(map['CreatedAt'].to_i) if map['CreatedAt']
        data.server_name = map['ServerName']
        data.message = map['Message']
        data.log_url = map['LogUrl']
        return data
      end
    end

    # Operation Parser for DescribeNodeAssociationStatus
    class DescribeNodeAssociationStatus
      def self.parse(http_resp)
        data = Types::DescribeNodeAssociationStatusOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.node_association_status = map['NodeAssociationStatus']
        data.engine_attributes = (EngineAttributes.parse(map['EngineAttributes']) unless map['EngineAttributes'].nil?)
        data
      end
    end

    # Operation Parser for DescribeServers
    class DescribeServers
      def self.parse(http_resp)
        data = Types::DescribeServersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.servers = (Servers.parse(map['Servers']) unless map['Servers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class Servers
      def self.parse(list)
        list.map do |value|
          Server.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DisassociateNode
    class DisassociateNode
      def self.parse(http_resp)
        data = Types::DisassociateNodeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.node_association_status_token = map['NodeAssociationStatusToken']
        data
      end
    end

    # Operation Parser for ExportServerEngineAttribute
    class ExportServerEngineAttribute
      def self.parse(http_resp)
        data = Types::ExportServerEngineAttributeOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.engine_attribute = (EngineAttribute.parse(map['EngineAttribute']) unless map['EngineAttribute'].nil?)
        data.server_name = map['ServerName']
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for RestoreServer
    class RestoreServer
      def self.parse(http_resp)
        data = Types::RestoreServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.server = (Server.parse(map['Server']) unless map['Server'].nil?)
        data
      end
    end

    # Operation Parser for StartMaintenance
    class StartMaintenance
      def self.parse(http_resp)
        data = Types::StartMaintenanceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.server = (Server.parse(map['Server']) unless map['Server'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateServer
    class UpdateServer
      def self.parse(http_resp)
        data = Types::UpdateServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.server = (Server.parse(map['Server']) unless map['Server'].nil?)
        data
      end
    end

    # Operation Parser for UpdateServerEngineAttributes
    class UpdateServerEngineAttributes
      def self.parse(http_resp)
        data = Types::UpdateServerEngineAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.server = (Server.parse(map['Server']) unless map['Server'].nil?)
        data
      end
    end
  end
end
