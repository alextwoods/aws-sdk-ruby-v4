# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::OpsWorksCM
  module Builders

    # Operation Builder for AssociateNode
    class AssociateNode
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorksCM_V2016_11_01.AssociateNode'
        data = {}
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['NodeName'] = input[:node_name] unless input[:node_name].nil?
        data['EngineAttributes'] = Builders::EngineAttributes.build(input[:engine_attributes]) unless input[:engine_attributes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EngineAttributes
    class EngineAttributes
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EngineAttribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EngineAttribute
    class EngineAttribute
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateBackup
    class CreateBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorksCM_V2016_11_01.CreateBackup'
        data = {}
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagList
    class TagList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Tag.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Tag
    class Tag
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateServer
    class CreateServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorksCM_V2016_11_01.CreateServer'
        data = {}
        data['AssociatePublicIpAddress'] = input[:associate_public_ip_address] unless input[:associate_public_ip_address].nil?
        data['CustomDomain'] = input[:custom_domain] unless input[:custom_domain].nil?
        data['CustomCertificate'] = input[:custom_certificate] unless input[:custom_certificate].nil?
        data['CustomPrivateKey'] = input[:custom_private_key] unless input[:custom_private_key].nil?
        data['DisableAutomatedBackup'] = input[:disable_automated_backup] unless input[:disable_automated_backup].nil?
        data['Engine'] = input[:engine] unless input[:engine].nil?
        data['EngineModel'] = input[:engine_model] unless input[:engine_model].nil?
        data['EngineVersion'] = input[:engine_version] unless input[:engine_version].nil?
        data['EngineAttributes'] = Builders::EngineAttributes.build(input[:engine_attributes]) unless input[:engine_attributes].nil?
        data['BackupRetentionCount'] = input[:backup_retention_count] unless input[:backup_retention_count].nil?
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['InstanceProfileArn'] = input[:instance_profile_arn] unless input[:instance_profile_arn].nil?
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['KeyPair'] = input[:key_pair] unless input[:key_pair].nil?
        data['PreferredMaintenanceWindow'] = input[:preferred_maintenance_window] unless input[:preferred_maintenance_window].nil?
        data['PreferredBackupWindow'] = input[:preferred_backup_window] unless input[:preferred_backup_window].nil?
        data['SecurityGroupIds'] = Builders::Strings.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data['ServiceRoleArn'] = input[:service_role_arn] unless input[:service_role_arn].nil?
        data['SubnetIds'] = Builders::Strings.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        data['BackupId'] = input[:backup_id] unless input[:backup_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Strings
    class Strings
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DeleteBackup
    class DeleteBackup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorksCM_V2016_11_01.DeleteBackup'
        data = {}
        data['BackupId'] = input[:backup_id] unless input[:backup_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteServer
    class DeleteServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorksCM_V2016_11_01.DeleteServer'
        data = {}
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAccountAttributes
    class DescribeAccountAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorksCM_V2016_11_01.DescribeAccountAttributes'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeBackups
    class DescribeBackups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorksCM_V2016_11_01.DescribeBackups'
        data = {}
        data['BackupId'] = input[:backup_id] unless input[:backup_id].nil?
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEvents
    class DescribeEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorksCM_V2016_11_01.DescribeEvents'
        data = {}
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeNodeAssociationStatus
    class DescribeNodeAssociationStatus
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorksCM_V2016_11_01.DescribeNodeAssociationStatus'
        data = {}
        data['NodeAssociationStatusToken'] = input[:node_association_status_token] unless input[:node_association_status_token].nil?
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeServers
    class DescribeServers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorksCM_V2016_11_01.DescribeServers'
        data = {}
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateNode
    class DisassociateNode
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorksCM_V2016_11_01.DisassociateNode'
        data = {}
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['NodeName'] = input[:node_name] unless input[:node_name].nil?
        data['EngineAttributes'] = Builders::EngineAttributes.build(input[:engine_attributes]) unless input[:engine_attributes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ExportServerEngineAttribute
    class ExportServerEngineAttribute
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorksCM_V2016_11_01.ExportServerEngineAttribute'
        data = {}
        data['ExportAttributeName'] = input[:export_attribute_name] unless input[:export_attribute_name].nil?
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['InputAttributes'] = Builders::EngineAttributes.build(input[:input_attributes]) unless input[:input_attributes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorksCM_V2016_11_01.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RestoreServer
    class RestoreServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorksCM_V2016_11_01.RestoreServer'
        data = {}
        data['BackupId'] = input[:backup_id] unless input[:backup_id].nil?
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['KeyPair'] = input[:key_pair] unless input[:key_pair].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartMaintenance
    class StartMaintenance
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorksCM_V2016_11_01.StartMaintenance'
        data = {}
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['EngineAttributes'] = Builders::EngineAttributes.build(input[:engine_attributes]) unless input[:engine_attributes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorksCM_V2016_11_01.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorksCM_V2016_11_01.UntagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['TagKeys'] = Builders::TagKeyList.build(input[:tag_keys]) unless input[:tag_keys].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for TagKeyList
    class TagKeyList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateServer
    class UpdateServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorksCM_V2016_11_01.UpdateServer'
        data = {}
        data['DisableAutomatedBackup'] = input[:disable_automated_backup] unless input[:disable_automated_backup].nil?
        data['BackupRetentionCount'] = input[:backup_retention_count] unless input[:backup_retention_count].nil?
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['PreferredMaintenanceWindow'] = input[:preferred_maintenance_window] unless input[:preferred_maintenance_window].nil?
        data['PreferredBackupWindow'] = input[:preferred_backup_window] unless input[:preferred_backup_window].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateServerEngineAttributes
    class UpdateServerEngineAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'OpsWorksCM_V2016_11_01.UpdateServerEngineAttributes'
        data = {}
        data['ServerName'] = input[:server_name] unless input[:server_name].nil?
        data['AttributeName'] = input[:attribute_name] unless input[:attribute_name].nil?
        data['AttributeValue'] = input[:attribute_value] unless input[:attribute_value].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
