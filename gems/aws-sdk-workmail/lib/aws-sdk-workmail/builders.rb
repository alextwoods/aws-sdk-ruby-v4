# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::WorkMail
  module Builders

    # Operation Builder for AssociateDelegateToResource
    class AssociateDelegateToResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.AssociateDelegateToResource'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['EntityId'] = input[:entity_id] unless input[:entity_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateMemberToGroup
    class AssociateMemberToGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.AssociateMemberToGroup'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        data['MemberId'] = input[:member_id] unless input[:member_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CancelMailboxExportJob
    class CancelMailboxExportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.CancelMailboxExportJob'
        data = {}
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAlias
    class CreateAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.CreateAlias'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['EntityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['Alias'] = input[:alias] unless input[:alias].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateGroup
    class CreateGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.CreateGroup'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateMobileDeviceAccessRule
    class CreateMobileDeviceAccessRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.CreateMobileDeviceAccessRule'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Effect'] = input[:effect] unless input[:effect].nil?
        data['DeviceTypes'] = Builders::DeviceTypeList.build(input[:device_types]) unless input[:device_types].nil?
        data['NotDeviceTypes'] = Builders::DeviceTypeList.build(input[:not_device_types]) unless input[:not_device_types].nil?
        data['DeviceModels'] = Builders::DeviceModelList.build(input[:device_models]) unless input[:device_models].nil?
        data['NotDeviceModels'] = Builders::DeviceModelList.build(input[:not_device_models]) unless input[:not_device_models].nil?
        data['DeviceOperatingSystems'] = Builders::DeviceOperatingSystemList.build(input[:device_operating_systems]) unless input[:device_operating_systems].nil?
        data['NotDeviceOperatingSystems'] = Builders::DeviceOperatingSystemList.build(input[:not_device_operating_systems]) unless input[:not_device_operating_systems].nil?
        data['DeviceUserAgents'] = Builders::DeviceUserAgentList.build(input[:device_user_agents]) unless input[:device_user_agents].nil?
        data['NotDeviceUserAgents'] = Builders::DeviceUserAgentList.build(input[:not_device_user_agents]) unless input[:not_device_user_agents].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DeviceUserAgentList
    class DeviceUserAgentList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for DeviceOperatingSystemList
    class DeviceOperatingSystemList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for DeviceModelList
    class DeviceModelList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for DeviceTypeList
    class DeviceTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateOrganization
    class CreateOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.CreateOrganization'
        data = {}
        data['DirectoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['Alias'] = input[:alias] unless input[:alias].nil?
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['Domains'] = Builders::Domains.build(input[:domains]) unless input[:domains].nil?
        data['KmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data['EnableInteroperability'] = input[:enable_interoperability] unless input[:enable_interoperability].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Domains
    class Domains
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Domain.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Domain
    class Domain
      def self.build(input)
        data = {}
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        data['HostedZoneId'] = input[:hosted_zone_id] unless input[:hosted_zone_id].nil?
        data
      end
    end

    # Operation Builder for CreateResource
    class CreateResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.CreateResource'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateUser
    class CreateUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.CreateUser'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAccessControlRule
    class DeleteAccessControlRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DeleteAccessControlRule'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAlias
    class DeleteAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DeleteAlias'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['EntityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['Alias'] = input[:alias] unless input[:alias].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEmailMonitoringConfiguration
    class DeleteEmailMonitoringConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DeleteEmailMonitoringConfiguration'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteGroup
    class DeleteGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DeleteGroup'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteMailboxPermissions
    class DeleteMailboxPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DeleteMailboxPermissions'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['EntityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['GranteeId'] = input[:grantee_id] unless input[:grantee_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteMobileDeviceAccessOverride
    class DeleteMobileDeviceAccessOverride
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DeleteMobileDeviceAccessOverride'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        data['DeviceId'] = input[:device_id] unless input[:device_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteMobileDeviceAccessRule
    class DeleteMobileDeviceAccessRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DeleteMobileDeviceAccessRule'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['MobileDeviceAccessRuleId'] = input[:mobile_device_access_rule_id] unless input[:mobile_device_access_rule_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteOrganization
    class DeleteOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DeleteOrganization'
        data = {}
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['DeleteDirectory'] = input[:delete_directory] unless input[:delete_directory].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteResource
    class DeleteResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DeleteResource'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteRetentionPolicy
    class DeleteRetentionPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DeleteRetentionPolicy'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteUser
    class DeleteUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DeleteUser'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterFromWorkMail
    class DeregisterFromWorkMail
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DeregisterFromWorkMail'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['EntityId'] = input[:entity_id] unless input[:entity_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterMailDomain
    class DeregisterMailDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DeregisterMailDomain'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEmailMonitoringConfiguration
    class DescribeEmailMonitoringConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DescribeEmailMonitoringConfiguration'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeGroup
    class DescribeGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DescribeGroup'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeInboundDmarcSettings
    class DescribeInboundDmarcSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DescribeInboundDmarcSettings'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeMailboxExportJob
    class DescribeMailboxExportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DescribeMailboxExportJob'
        data = {}
        data['JobId'] = input[:job_id] unless input[:job_id].nil?
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeOrganization
    class DescribeOrganization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DescribeOrganization'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeResource
    class DescribeResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DescribeResource'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeUser
    class DescribeUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DescribeUser'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateDelegateFromResource
    class DisassociateDelegateFromResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DisassociateDelegateFromResource'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['EntityId'] = input[:entity_id] unless input[:entity_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateMemberFromGroup
    class DisassociateMemberFromGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.DisassociateMemberFromGroup'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        data['MemberId'] = input[:member_id] unless input[:member_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetAccessControlEffect
    class GetAccessControlEffect
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.GetAccessControlEffect'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['IpAddress'] = input[:ip_address] unless input[:ip_address].nil?
        data['Action'] = input[:action] unless input[:action].nil?
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetDefaultRetentionPolicy
    class GetDefaultRetentionPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.GetDefaultRetentionPolicy'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMailDomain
    class GetMailDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.GetMailDomain'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMailboxDetails
    class GetMailboxDetails
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.GetMailboxDetails'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMobileDeviceAccessEffect
    class GetMobileDeviceAccessEffect
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.GetMobileDeviceAccessEffect'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['DeviceType'] = input[:device_type] unless input[:device_type].nil?
        data['DeviceModel'] = input[:device_model] unless input[:device_model].nil?
        data['DeviceOperatingSystem'] = input[:device_operating_system] unless input[:device_operating_system].nil?
        data['DeviceUserAgent'] = input[:device_user_agent] unless input[:device_user_agent].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetMobileDeviceAccessOverride
    class GetMobileDeviceAccessOverride
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.GetMobileDeviceAccessOverride'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        data['DeviceId'] = input[:device_id] unless input[:device_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAccessControlRules
    class ListAccessControlRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.ListAccessControlRules'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAliases
    class ListAliases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.ListAliases'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['EntityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListGroupMembers
    class ListGroupMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.ListGroupMembers'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['GroupId'] = input[:group_id] unless input[:group_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListGroups
    class ListGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.ListGroups'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListMailDomains
    class ListMailDomains
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.ListMailDomains'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListMailboxExportJobs
    class ListMailboxExportJobs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.ListMailboxExportJobs'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListMailboxPermissions
    class ListMailboxPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.ListMailboxPermissions'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['EntityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListMobileDeviceAccessOverrides
    class ListMobileDeviceAccessOverrides
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.ListMobileDeviceAccessOverrides'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        data['DeviceId'] = input[:device_id] unless input[:device_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListMobileDeviceAccessRules
    class ListMobileDeviceAccessRules
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.ListMobileDeviceAccessRules'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListOrganizations
    class ListOrganizations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.ListOrganizations'
        data = {}
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResourceDelegates
    class ListResourceDelegates
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.ListResourceDelegates'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListResources
    class ListResources
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.ListResources'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.ListTagsForResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListUsers
    class ListUsers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.ListUsers'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutAccessControlRule
    class PutAccessControlRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.PutAccessControlRule'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Effect'] = input[:effect] unless input[:effect].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['IpRanges'] = Builders::IpRangeList.build(input[:ip_ranges]) unless input[:ip_ranges].nil?
        data['NotIpRanges'] = Builders::IpRangeList.build(input[:not_ip_ranges]) unless input[:not_ip_ranges].nil?
        data['Actions'] = Builders::ActionsList.build(input[:actions]) unless input[:actions].nil?
        data['NotActions'] = Builders::ActionsList.build(input[:not_actions]) unless input[:not_actions].nil?
        data['UserIds'] = Builders::UserIdList.build(input[:user_ids]) unless input[:user_ids].nil?
        data['NotUserIds'] = Builders::UserIdList.build(input[:not_user_ids]) unless input[:not_user_ids].nil?
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UserIdList
    class UserIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for ActionsList
    class ActionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for IpRangeList
    class IpRangeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutEmailMonitoringConfiguration
    class PutEmailMonitoringConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.PutEmailMonitoringConfiguration'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['LogGroupArn'] = input[:log_group_arn] unless input[:log_group_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutInboundDmarcSettings
    class PutInboundDmarcSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.PutInboundDmarcSettings'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['Enforced'] = input[:enforced] unless input[:enforced].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutMailboxPermissions
    class PutMailboxPermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.PutMailboxPermissions'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['EntityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['GranteeId'] = input[:grantee_id] unless input[:grantee_id].nil?
        data['PermissionValues'] = Builders::PermissionValues.build(input[:permission_values]) unless input[:permission_values].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PermissionValues
    class PermissionValues
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for PutMobileDeviceAccessOverride
    class PutMobileDeviceAccessOverride
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.PutMobileDeviceAccessOverride'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        data['DeviceId'] = input[:device_id] unless input[:device_id].nil?
        data['Effect'] = input[:effect] unless input[:effect].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutRetentionPolicy
    class PutRetentionPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.PutRetentionPolicy'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['Id'] = input[:id] unless input[:id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['FolderConfigurations'] = Builders::FolderConfigurations.build(input[:folder_configurations]) unless input[:folder_configurations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FolderConfigurations
    class FolderConfigurations
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::FolderConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FolderConfiguration
    class FolderConfiguration
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Action'] = input[:action] unless input[:action].nil?
        data['Period'] = input[:period] unless input[:period].nil?
        data
      end
    end

    # Operation Builder for RegisterMailDomain
    class RegisterMailDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.RegisterMailDomain'
        data = {}
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RegisterToWorkMail
    class RegisterToWorkMail
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.RegisterToWorkMail'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['EntityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['Email'] = input[:email] unless input[:email].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ResetPassword
    class ResetPassword
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.ResetPassword'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        data['Password'] = input[:password] unless input[:password].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartMailboxExportJob
    class StartMailboxExportJob
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.StartMailboxExportJob'
        data = {}
        data['ClientToken'] = input[:client_token] unless input[:client_token].nil?
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['EntityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['KmsKeyArn'] = input[:kms_key_arn] unless input[:kms_key_arn].nil?
        data['S3BucketName'] = input[:s3_bucket_name] unless input[:s3_bucket_name].nil?
        data['S3Prefix'] = input[:s3_prefix] unless input[:s3_prefix].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.TagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
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

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.UntagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
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

    # Operation Builder for UpdateDefaultMailDomain
    class UpdateDefaultMailDomain
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.UpdateDefaultMailDomain'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['DomainName'] = input[:domain_name] unless input[:domain_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMailboxQuota
    class UpdateMailboxQuota
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.UpdateMailboxQuota'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        data['MailboxQuota'] = input[:mailbox_quota] unless input[:mailbox_quota].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMobileDeviceAccessRule
    class UpdateMobileDeviceAccessRule
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.UpdateMobileDeviceAccessRule'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['MobileDeviceAccessRuleId'] = input[:mobile_device_access_rule_id] unless input[:mobile_device_access_rule_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Effect'] = input[:effect] unless input[:effect].nil?
        data['DeviceTypes'] = Builders::DeviceTypeList.build(input[:device_types]) unless input[:device_types].nil?
        data['NotDeviceTypes'] = Builders::DeviceTypeList.build(input[:not_device_types]) unless input[:not_device_types].nil?
        data['DeviceModels'] = Builders::DeviceModelList.build(input[:device_models]) unless input[:device_models].nil?
        data['NotDeviceModels'] = Builders::DeviceModelList.build(input[:not_device_models]) unless input[:not_device_models].nil?
        data['DeviceOperatingSystems'] = Builders::DeviceOperatingSystemList.build(input[:device_operating_systems]) unless input[:device_operating_systems].nil?
        data['NotDeviceOperatingSystems'] = Builders::DeviceOperatingSystemList.build(input[:not_device_operating_systems]) unless input[:not_device_operating_systems].nil?
        data['DeviceUserAgents'] = Builders::DeviceUserAgentList.build(input[:device_user_agents]) unless input[:device_user_agents].nil?
        data['NotDeviceUserAgents'] = Builders::DeviceUserAgentList.build(input[:not_device_user_agents]) unless input[:not_device_user_agents].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdatePrimaryEmailAddress
    class UpdatePrimaryEmailAddress
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.UpdatePrimaryEmailAddress'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['EntityId'] = input[:entity_id] unless input[:entity_id].nil?
        data['Email'] = input[:email] unless input[:email].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateResource
    class UpdateResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'WorkMailService.UpdateResource'
        data = {}
        data['OrganizationId'] = input[:organization_id] unless input[:organization_id].nil?
        data['ResourceId'] = input[:resource_id] unless input[:resource_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['BookingOptions'] = Builders::BookingOptions.build(input[:booking_options]) unless input[:booking_options].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for BookingOptions
    class BookingOptions
      def self.build(input)
        data = {}
        data['AutoAcceptRequests'] = input[:auto_accept_requests] unless input[:auto_accept_requests].nil?
        data['AutoDeclineRecurringRequests'] = input[:auto_decline_recurring_requests] unless input[:auto_decline_recurring_requests].nil?
        data['AutoDeclineConflictingRequests'] = input[:auto_decline_conflicting_requests] unless input[:auto_decline_conflicting_requests].nil?
        data
      end
    end
  end
end
