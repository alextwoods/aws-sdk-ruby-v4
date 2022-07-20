# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::OpsWorksCM
  module Stubs

    # Operation Stubber for AssociateNode
    class AssociateNode
      def self.default(visited=[])
        {
          node_association_status_token: 'node_association_status_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NodeAssociationStatusToken'] = stub[:node_association_status_token] unless stub[:node_association_status_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateBackup
    class CreateBackup
      def self.default(visited=[])
        {
          backup: Backup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Backup'] = Stubs::Backup.stub(stub[:backup]) unless stub[:backup].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Backup
    class Backup
      def self.default(visited=[])
        return nil if visited.include?('Backup')
        visited = visited + ['Backup']
        {
          backup_arn: 'backup_arn',
          backup_id: 'backup_id',
          backup_type: 'backup_type',
          created_at: Time.now,
          description: 'description',
          engine: 'engine',
          engine_model: 'engine_model',
          engine_version: 'engine_version',
          instance_profile_arn: 'instance_profile_arn',
          instance_type: 'instance_type',
          key_pair: 'key_pair',
          preferred_backup_window: 'preferred_backup_window',
          preferred_maintenance_window: 'preferred_maintenance_window',
          s3_data_size: 1,
          s3_data_url: 's3_data_url',
          s3_log_url: 's3_log_url',
          security_group_ids: Strings.default(visited),
          server_name: 'server_name',
          service_role_arn: 'service_role_arn',
          status: 'status',
          status_description: 'status_description',
          subnet_ids: Strings.default(visited),
          tools_version: 'tools_version',
          user_arn: 'user_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Backup.new
        data = {}
        data['BackupArn'] = stub[:backup_arn] unless stub[:backup_arn].nil?
        data['BackupId'] = stub[:backup_id] unless stub[:backup_id].nil?
        data['BackupType'] = stub[:backup_type] unless stub[:backup_type].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Engine'] = stub[:engine] unless stub[:engine].nil?
        data['EngineModel'] = stub[:engine_model] unless stub[:engine_model].nil?
        data['EngineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['InstanceProfileArn'] = stub[:instance_profile_arn] unless stub[:instance_profile_arn].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['KeyPair'] = stub[:key_pair] unless stub[:key_pair].nil?
        data['PreferredBackupWindow'] = stub[:preferred_backup_window] unless stub[:preferred_backup_window].nil?
        data['PreferredMaintenanceWindow'] = stub[:preferred_maintenance_window] unless stub[:preferred_maintenance_window].nil?
        data['S3DataSize'] = stub[:s3_data_size] unless stub[:s3_data_size].nil?
        data['S3DataUrl'] = stub[:s3_data_url] unless stub[:s3_data_url].nil?
        data['S3LogUrl'] = stub[:s3_log_url] unless stub[:s3_log_url].nil?
        data['SecurityGroupIds'] = Stubs::Strings.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['ServerName'] = stub[:server_name] unless stub[:server_name].nil?
        data['ServiceRoleArn'] = stub[:service_role_arn] unless stub[:service_role_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusDescription'] = stub[:status_description] unless stub[:status_description].nil?
        data['SubnetIds'] = Stubs::Strings.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['ToolsVersion'] = stub[:tools_version] unless stub[:tools_version].nil?
        data['UserArn'] = stub[:user_arn] unless stub[:user_arn].nil?
        data
      end
    end

    # List Stubber for Strings
    class Strings
      def self.default(visited=[])
        return nil if visited.include?('Strings')
        visited = visited + ['Strings']
        [
          'member'
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateServer
    class CreateServer
      def self.default(visited=[])
        {
          server: Server.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Server'] = Stubs::Server.stub(stub[:server]) unless stub[:server].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Server
    class Server
      def self.default(visited=[])
        return nil if visited.include?('Server')
        visited = visited + ['Server']
        {
          associate_public_ip_address: false,
          backup_retention_count: 1,
          server_name: 'server_name',
          created_at: Time.now,
          cloud_formation_stack_arn: 'cloud_formation_stack_arn',
          custom_domain: 'custom_domain',
          disable_automated_backup: false,
          endpoint: 'endpoint',
          engine: 'engine',
          engine_model: 'engine_model',
          engine_attributes: EngineAttributes.default(visited),
          engine_version: 'engine_version',
          instance_profile_arn: 'instance_profile_arn',
          instance_type: 'instance_type',
          key_pair: 'key_pair',
          maintenance_status: 'maintenance_status',
          preferred_maintenance_window: 'preferred_maintenance_window',
          preferred_backup_window: 'preferred_backup_window',
          security_group_ids: Strings.default(visited),
          service_role_arn: 'service_role_arn',
          status: 'status',
          status_reason: 'status_reason',
          subnet_ids: Strings.default(visited),
          server_arn: 'server_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Server.new
        data = {}
        data['AssociatePublicIpAddress'] = stub[:associate_public_ip_address] unless stub[:associate_public_ip_address].nil?
        data['BackupRetentionCount'] = stub[:backup_retention_count] unless stub[:backup_retention_count].nil?
        data['ServerName'] = stub[:server_name] unless stub[:server_name].nil?
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['CloudFormationStackArn'] = stub[:cloud_formation_stack_arn] unless stub[:cloud_formation_stack_arn].nil?
        data['CustomDomain'] = stub[:custom_domain] unless stub[:custom_domain].nil?
        data['DisableAutomatedBackup'] = stub[:disable_automated_backup] unless stub[:disable_automated_backup].nil?
        data['Endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['Engine'] = stub[:engine] unless stub[:engine].nil?
        data['EngineModel'] = stub[:engine_model] unless stub[:engine_model].nil?
        data['EngineAttributes'] = Stubs::EngineAttributes.stub(stub[:engine_attributes]) unless stub[:engine_attributes].nil?
        data['EngineVersion'] = stub[:engine_version] unless stub[:engine_version].nil?
        data['InstanceProfileArn'] = stub[:instance_profile_arn] unless stub[:instance_profile_arn].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['KeyPair'] = stub[:key_pair] unless stub[:key_pair].nil?
        data['MaintenanceStatus'] = stub[:maintenance_status] unless stub[:maintenance_status].nil?
        data['PreferredMaintenanceWindow'] = stub[:preferred_maintenance_window] unless stub[:preferred_maintenance_window].nil?
        data['PreferredBackupWindow'] = stub[:preferred_backup_window] unless stub[:preferred_backup_window].nil?
        data['SecurityGroupIds'] = Stubs::Strings.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data['ServiceRoleArn'] = stub[:service_role_arn] unless stub[:service_role_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['SubnetIds'] = Stubs::Strings.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['ServerArn'] = stub[:server_arn] unless stub[:server_arn].nil?
        data
      end
    end

    # List Stubber for EngineAttributes
    class EngineAttributes
      def self.default(visited=[])
        return nil if visited.include?('EngineAttributes')
        visited = visited + ['EngineAttributes']
        [
          EngineAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EngineAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EngineAttribute
    class EngineAttribute
      def self.default(visited=[])
        return nil if visited.include?('EngineAttribute')
        visited = visited + ['EngineAttribute']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::EngineAttribute.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for DeleteBackup
    class DeleteBackup
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteServer
    class DeleteServer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.default(visited=[])
        {
          attributes: AccountAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Attributes'] = Stubs::AccountAttributes.stub(stub[:attributes]) unless stub[:attributes].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AccountAttributes
    class AccountAttributes
      def self.default(visited=[])
        return nil if visited.include?('AccountAttributes')
        visited = visited + ['AccountAttributes']
        [
          AccountAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AccountAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccountAttribute
    class AccountAttribute
      def self.default(visited=[])
        return nil if visited.include?('AccountAttribute')
        visited = visited + ['AccountAttribute']
        {
          name: 'name',
          maximum: 1,
          used: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::AccountAttribute.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Maximum'] = stub[:maximum] unless stub[:maximum].nil?
        data['Used'] = stub[:used] unless stub[:used].nil?
        data
      end
    end

    # Operation Stubber for DescribeBackups
    class DescribeBackups
      def self.default(visited=[])
        {
          backups: Backups.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Backups'] = Stubs::Backups.stub(stub[:backups]) unless stub[:backups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Backups
    class Backups
      def self.default(visited=[])
        return nil if visited.include?('Backups')
        visited = visited + ['Backups']
        [
          Backup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Backup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeEvents
    class DescribeEvents
      def self.default(visited=[])
        {
          server_events: ServerEvents.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ServerEvents'] = Stubs::ServerEvents.stub(stub[:server_events]) unless stub[:server_events].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ServerEvents
    class ServerEvents
      def self.default(visited=[])
        return nil if visited.include?('ServerEvents')
        visited = visited + ['ServerEvents']
        [
          ServerEvent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ServerEvent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServerEvent
    class ServerEvent
      def self.default(visited=[])
        return nil if visited.include?('ServerEvent')
        visited = visited + ['ServerEvent']
        {
          created_at: Time.now,
          server_name: 'server_name',
          message: 'message',
          log_url: 'log_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerEvent.new
        data = {}
        data['CreatedAt'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_at]).to_i unless stub[:created_at].nil?
        data['ServerName'] = stub[:server_name] unless stub[:server_name].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['LogUrl'] = stub[:log_url] unless stub[:log_url].nil?
        data
      end
    end

    # Operation Stubber for DescribeNodeAssociationStatus
    class DescribeNodeAssociationStatus
      def self.default(visited=[])
        {
          node_association_status: 'node_association_status',
          engine_attributes: EngineAttributes.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NodeAssociationStatus'] = stub[:node_association_status] unless stub[:node_association_status].nil?
        data['EngineAttributes'] = Stubs::EngineAttributes.stub(stub[:engine_attributes]) unless stub[:engine_attributes].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeServers
    class DescribeServers
      def self.default(visited=[])
        {
          servers: Servers.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Servers'] = Stubs::Servers.stub(stub[:servers]) unless stub[:servers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for Servers
    class Servers
      def self.default(visited=[])
        return nil if visited.include?('Servers')
        visited = visited + ['Servers']
        [
          Server.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Server.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DisassociateNode
    class DisassociateNode
      def self.default(visited=[])
        {
          node_association_status_token: 'node_association_status_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['NodeAssociationStatusToken'] = stub[:node_association_status_token] unless stub[:node_association_status_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ExportServerEngineAttribute
    class ExportServerEngineAttribute
      def self.default(visited=[])
        {
          engine_attribute: EngineAttribute.default(visited),
          server_name: 'server_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EngineAttribute'] = Stubs::EngineAttribute.stub(stub[:engine_attribute]) unless stub[:engine_attribute].nil?
        data['ServerName'] = stub[:server_name] unless stub[:server_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::TagList.stub(stub[:tags]) unless stub[:tags].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for TagList
    class TagList
      def self.default(visited=[])
        return nil if visited.include?('TagList')
        visited = visited + ['TagList']
        [
          Tag.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Tag.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Tag
    class Tag
      def self.default(visited=[])
        return nil if visited.include?('Tag')
        visited = visited + ['Tag']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::Tag.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for RestoreServer
    class RestoreServer
      def self.default(visited=[])
        {
          server: Server.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Server'] = Stubs::Server.stub(stub[:server]) unless stub[:server].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartMaintenance
    class StartMaintenance
      def self.default(visited=[])
        {
          server: Server.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Server'] = Stubs::Server.stub(stub[:server]) unless stub[:server].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for TagResource
    class TagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UntagResource
    class UntagResource
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateServer
    class UpdateServer
      def self.default(visited=[])
        {
          server: Server.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Server'] = Stubs::Server.stub(stub[:server]) unless stub[:server].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateServerEngineAttributes
    class UpdateServerEngineAttributes
      def self.default(visited=[])
        {
          server: Server.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Server'] = Stubs::Server.stub(stub[:server]) unless stub[:server].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
