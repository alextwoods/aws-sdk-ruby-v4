# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::AppStream
  module Builders

    # Operation Builder for AssociateApplicationFleet
    class AssociateApplicationFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.AssociateApplicationFleet'
        data = {}
        data['FleetName'] = input[:fleet_name] unless input[:fleet_name].nil?
        data['ApplicationArn'] = input[:application_arn] unless input[:application_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateApplicationToEntitlement
    class AssociateApplicationToEntitlement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.AssociateApplicationToEntitlement'
        data = {}
        data['StackName'] = input[:stack_name] unless input[:stack_name].nil?
        data['EntitlementName'] = input[:entitlement_name] unless input[:entitlement_name].nil?
        data['ApplicationIdentifier'] = input[:application_identifier] unless input[:application_identifier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for AssociateFleet
    class AssociateFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.AssociateFleet'
        data = {}
        data['FleetName'] = input[:fleet_name] unless input[:fleet_name].nil?
        data['StackName'] = input[:stack_name] unless input[:stack_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for BatchAssociateUserStack
    class BatchAssociateUserStack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.BatchAssociateUserStack'
        data = {}
        data['UserStackAssociations'] = Builders::UserStackAssociationList.build(input[:user_stack_associations]) unless input[:user_stack_associations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UserStackAssociationList
    class UserStackAssociationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::UserStackAssociation.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UserStackAssociation
    class UserStackAssociation
      def self.build(input)
        data = {}
        data['StackName'] = input[:stack_name] unless input[:stack_name].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['AuthenticationType'] = input[:authentication_type] unless input[:authentication_type].nil?
        data['SendEmailNotification'] = input[:send_email_notification] unless input[:send_email_notification].nil?
        data
      end
    end

    # Operation Builder for BatchDisassociateUserStack
    class BatchDisassociateUserStack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.BatchDisassociateUserStack'
        data = {}
        data['UserStackAssociations'] = Builders::UserStackAssociationList.build(input[:user_stack_associations]) unless input[:user_stack_associations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CopyImage
    class CopyImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.CopyImage'
        data = {}
        data['SourceImageName'] = input[:source_image_name] unless input[:source_image_name].nil?
        data['DestinationImageName'] = input[:destination_image_name] unless input[:destination_image_name].nil?
        data['DestinationRegion'] = input[:destination_region] unless input[:destination_region].nil?
        data['DestinationImageDescription'] = input[:destination_image_description] unless input[:destination_image_description].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAppBlock
    class CreateAppBlock
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.CreateAppBlock'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['SourceS3Location'] = Builders::S3Location.build(input[:source_s3_location]) unless input[:source_s3_location].nil?
        data['SetupScriptDetails'] = Builders::ScriptDetails.build(input[:setup_script_details]) unless input[:setup_script_details].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for Tags
    class Tags
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Structure Builder for ScriptDetails
    class ScriptDetails
      def self.build(input)
        data = {}
        data['ScriptS3Location'] = Builders::S3Location.build(input[:script_s3_location]) unless input[:script_s3_location].nil?
        data['ExecutablePath'] = input[:executable_path] unless input[:executable_path].nil?
        data['ExecutableParameters'] = input[:executable_parameters] unless input[:executable_parameters].nil?
        data['TimeoutInSeconds'] = input[:timeout_in_seconds] unless input[:timeout_in_seconds].nil?
        data
      end
    end

    # Structure Builder for S3Location
    class S3Location
      def self.build(input)
        data = {}
        data['S3Bucket'] = input[:s3_bucket] unless input[:s3_bucket].nil?
        data['S3Key'] = input[:s3_key] unless input[:s3_key].nil?
        data
      end
    end

    # Operation Builder for CreateApplication
    class CreateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.CreateApplication'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['IconS3Location'] = Builders::S3Location.build(input[:icon_s3_location]) unless input[:icon_s3_location].nil?
        data['LaunchPath'] = input[:launch_path] unless input[:launch_path].nil?
        data['WorkingDirectory'] = input[:working_directory] unless input[:working_directory].nil?
        data['LaunchParameters'] = input[:launch_parameters] unless input[:launch_parameters].nil?
        data['Platforms'] = Builders::Platforms.build(input[:platforms]) unless input[:platforms].nil?
        data['InstanceFamilies'] = Builders::StringList.build(input[:instance_families]) unless input[:instance_families].nil?
        data['AppBlockArn'] = input[:app_block_arn] unless input[:app_block_arn].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StringList
    class StringList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for Platforms
    class Platforms
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateDirectoryConfig
    class CreateDirectoryConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.CreateDirectoryConfig'
        data = {}
        data['DirectoryName'] = input[:directory_name] unless input[:directory_name].nil?
        data['OrganizationalUnitDistinguishedNames'] = Builders::OrganizationalUnitDistinguishedNamesList.build(input[:organizational_unit_distinguished_names]) unless input[:organizational_unit_distinguished_names].nil?
        data['ServiceAccountCredentials'] = Builders::ServiceAccountCredentials.build(input[:service_account_credentials]) unless input[:service_account_credentials].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ServiceAccountCredentials
    class ServiceAccountCredentials
      def self.build(input)
        data = {}
        data['AccountName'] = input[:account_name] unless input[:account_name].nil?
        data['AccountPassword'] = input[:account_password] unless input[:account_password].nil?
        data
      end
    end

    # List Builder for OrganizationalUnitDistinguishedNamesList
    class OrganizationalUnitDistinguishedNamesList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateEntitlement
    class CreateEntitlement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.CreateEntitlement'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['StackName'] = input[:stack_name] unless input[:stack_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['AppVisibility'] = input[:app_visibility] unless input[:app_visibility].nil?
        data['Attributes'] = Builders::EntitlementAttributeList.build(input[:attributes]) unless input[:attributes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EntitlementAttributeList
    class EntitlementAttributeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::EntitlementAttribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EntitlementAttribute
    class EntitlementAttribute
      def self.build(input)
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateFleet
    class CreateFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.CreateFleet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ImageName'] = input[:image_name] unless input[:image_name].nil?
        data['ImageArn'] = input[:image_arn] unless input[:image_arn].nil?
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['FleetType'] = input[:fleet_type] unless input[:fleet_type].nil?
        data['ComputeCapacity'] = Builders::ComputeCapacity.build(input[:compute_capacity]) unless input[:compute_capacity].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['MaxUserDurationInSeconds'] = input[:max_user_duration_in_seconds] unless input[:max_user_duration_in_seconds].nil?
        data['DisconnectTimeoutInSeconds'] = input[:disconnect_timeout_in_seconds] unless input[:disconnect_timeout_in_seconds].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['EnableDefaultInternetAccess'] = input[:enable_default_internet_access] unless input[:enable_default_internet_access].nil?
        data['DomainJoinInfo'] = Builders::DomainJoinInfo.build(input[:domain_join_info]) unless input[:domain_join_info].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['IdleDisconnectTimeoutInSeconds'] = input[:idle_disconnect_timeout_in_seconds] unless input[:idle_disconnect_timeout_in_seconds].nil?
        data['IamRoleArn'] = input[:iam_role_arn] unless input[:iam_role_arn].nil?
        data['StreamView'] = input[:stream_view] unless input[:stream_view].nil?
        data['Platform'] = input[:platform] unless input[:platform].nil?
        data['MaxConcurrentSessions'] = input[:max_concurrent_sessions] unless input[:max_concurrent_sessions].nil?
        data['UsbDeviceFilterStrings'] = Builders::UsbDeviceFilterStrings.build(input[:usb_device_filter_strings]) unless input[:usb_device_filter_strings].nil?
        data['SessionScriptS3Location'] = Builders::S3Location.build(input[:session_script_s3_location]) unless input[:session_script_s3_location].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for UsbDeviceFilterStrings
    class UsbDeviceFilterStrings
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DomainJoinInfo
    class DomainJoinInfo
      def self.build(input)
        data = {}
        data['DirectoryName'] = input[:directory_name] unless input[:directory_name].nil?
        data['OrganizationalUnitDistinguishedName'] = input[:organizational_unit_distinguished_name] unless input[:organizational_unit_distinguished_name].nil?
        data
      end
    end

    # Structure Builder for VpcConfig
    class VpcConfig
      def self.build(input)
        data = {}
        data['SubnetIds'] = Builders::SubnetIdList.build(input[:subnet_ids]) unless input[:subnet_ids].nil?
        data['SecurityGroupIds'] = Builders::SecurityGroupIdList.build(input[:security_group_ids]) unless input[:security_group_ids].nil?
        data
      end
    end

    # List Builder for SecurityGroupIdList
    class SecurityGroupIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for SubnetIdList
    class SubnetIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ComputeCapacity
    class ComputeCapacity
      def self.build(input)
        data = {}
        data['DesiredInstances'] = input[:desired_instances] unless input[:desired_instances].nil?
        data
      end
    end

    # Operation Builder for CreateImageBuilder
    class CreateImageBuilder
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.CreateImageBuilder'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['ImageName'] = input[:image_name] unless input[:image_name].nil?
        data['ImageArn'] = input[:image_arn] unless input[:image_arn].nil?
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['IamRoleArn'] = input[:iam_role_arn] unless input[:iam_role_arn].nil?
        data['EnableDefaultInternetAccess'] = input[:enable_default_internet_access] unless input[:enable_default_internet_access].nil?
        data['DomainJoinInfo'] = Builders::DomainJoinInfo.build(input[:domain_join_info]) unless input[:domain_join_info].nil?
        data['AppstreamAgentVersion'] = input[:appstream_agent_version] unless input[:appstream_agent_version].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['AccessEndpoints'] = Builders::AccessEndpointList.build(input[:access_endpoints]) unless input[:access_endpoints].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AccessEndpointList
    class AccessEndpointList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::AccessEndpoint.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for AccessEndpoint
    class AccessEndpoint
      def self.build(input)
        data = {}
        data['EndpointType'] = input[:endpoint_type] unless input[:endpoint_type].nil?
        data['VpceId'] = input[:vpce_id] unless input[:vpce_id].nil?
        data
      end
    end

    # Operation Builder for CreateImageBuilderStreamingURL
    class CreateImageBuilderStreamingURL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.CreateImageBuilderStreamingURL'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Validity'] = input[:validity] unless input[:validity].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateStack
    class CreateStack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.CreateStack'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['StorageConnectors'] = Builders::StorageConnectorList.build(input[:storage_connectors]) unless input[:storage_connectors].nil?
        data['RedirectURL'] = input[:redirect_url] unless input[:redirect_url].nil?
        data['FeedbackURL'] = input[:feedback_url] unless input[:feedback_url].nil?
        data['UserSettings'] = Builders::UserSettingList.build(input[:user_settings]) unless input[:user_settings].nil?
        data['ApplicationSettings'] = Builders::ApplicationSettings.build(input[:application_settings]) unless input[:application_settings].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['AccessEndpoints'] = Builders::AccessEndpointList.build(input[:access_endpoints]) unless input[:access_endpoints].nil?
        data['EmbedHostDomains'] = Builders::EmbedHostDomains.build(input[:embed_host_domains]) unless input[:embed_host_domains].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for EmbedHostDomains
    class EmbedHostDomains
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ApplicationSettings
    class ApplicationSettings
      def self.build(input)
        data = {}
        data['Enabled'] = input[:enabled] unless input[:enabled].nil?
        data['SettingsGroup'] = input[:settings_group] unless input[:settings_group].nil?
        data
      end
    end

    # List Builder for UserSettingList
    class UserSettingList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::UserSetting.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for UserSetting
    class UserSetting
      def self.build(input)
        data = {}
        data['Action'] = input[:action] unless input[:action].nil?
        data['Permission'] = input[:permission] unless input[:permission].nil?
        data
      end
    end

    # List Builder for StorageConnectorList
    class StorageConnectorList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::StorageConnector.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StorageConnector
    class StorageConnector
      def self.build(input)
        data = {}
        data['ConnectorType'] = input[:connector_type] unless input[:connector_type].nil?
        data['ResourceIdentifier'] = input[:resource_identifier] unless input[:resource_identifier].nil?
        data['Domains'] = Builders::DomainList.build(input[:domains]) unless input[:domains].nil?
        data
      end
    end

    # List Builder for DomainList
    class DomainList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateStreamingURL
    class CreateStreamingURL
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.CreateStreamingURL'
        data = {}
        data['StackName'] = input[:stack_name] unless input[:stack_name].nil?
        data['FleetName'] = input[:fleet_name] unless input[:fleet_name].nil?
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        data['ApplicationId'] = input[:application_id] unless input[:application_id].nil?
        data['Validity'] = input[:validity] unless input[:validity].nil?
        data['SessionContext'] = input[:session_context] unless input[:session_context].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateUpdatedImage
    class CreateUpdatedImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.CreateUpdatedImage'
        data = {}
        data['existingImageName'] = input[:existing_image_name] unless input[:existing_image_name].nil?
        data['newImageName'] = input[:new_image_name] unless input[:new_image_name].nil?
        data['newImageDescription'] = input[:new_image_description] unless input[:new_image_description].nil?
        data['newImageDisplayName'] = input[:new_image_display_name] unless input[:new_image_display_name].nil?
        data['newImageTags'] = Builders::Tags.build(input[:new_image_tags]) unless input[:new_image_tags].nil?
        data['dryRun'] = input[:dry_run] unless input[:dry_run].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateUsageReportSubscription
    class CreateUsageReportSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.CreateUsageReportSubscription'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateUser
    class CreateUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.CreateUser'
        data = {}
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['MessageAction'] = input[:message_action] unless input[:message_action].nil?
        data['FirstName'] = input[:first_name] unless input[:first_name].nil?
        data['LastName'] = input[:last_name] unless input[:last_name].nil?
        data['AuthenticationType'] = input[:authentication_type] unless input[:authentication_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAppBlock
    class DeleteAppBlock
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DeleteAppBlock'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteApplication
    class DeleteApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DeleteApplication'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteDirectoryConfig
    class DeleteDirectoryConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DeleteDirectoryConfig'
        data = {}
        data['DirectoryName'] = input[:directory_name] unless input[:directory_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteEntitlement
    class DeleteEntitlement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DeleteEntitlement'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['StackName'] = input[:stack_name] unless input[:stack_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteFleet
    class DeleteFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DeleteFleet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteImage
    class DeleteImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DeleteImage'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteImageBuilder
    class DeleteImageBuilder
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DeleteImageBuilder'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteImagePermissions
    class DeleteImagePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DeleteImagePermissions'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['SharedAccountId'] = input[:shared_account_id] unless input[:shared_account_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteStack
    class DeleteStack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DeleteStack'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteUsageReportSubscription
    class DeleteUsageReportSubscription
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DeleteUsageReportSubscription'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteUser
    class DeleteUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DeleteUser'
        data = {}
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['AuthenticationType'] = input[:authentication_type] unless input[:authentication_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAppBlocks
    class DescribeAppBlocks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DescribeAppBlocks'
        data = {}
        data['Arns'] = Builders::ArnList.build(input[:arns]) unless input[:arns].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ArnList
    class ArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeApplicationFleetAssociations
    class DescribeApplicationFleetAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DescribeApplicationFleetAssociations'
        data = {}
        data['FleetName'] = input[:fleet_name] unless input[:fleet_name].nil?
        data['ApplicationArn'] = input[:application_arn] unless input[:application_arn].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeApplications
    class DescribeApplications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DescribeApplications'
        data = {}
        data['Arns'] = Builders::ArnList.build(input[:arns]) unless input[:arns].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeDirectoryConfigs
    class DescribeDirectoryConfigs
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DescribeDirectoryConfigs'
        data = {}
        data['DirectoryNames'] = Builders::DirectoryNameList.build(input[:directory_names]) unless input[:directory_names].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DirectoryNameList
    class DirectoryNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeEntitlements
    class DescribeEntitlements
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DescribeEntitlements'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['StackName'] = input[:stack_name] unless input[:stack_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFleets
    class DescribeFleets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DescribeFleets'
        data = {}
        data['Names'] = Builders::StringList.build(input[:names]) unless input[:names].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeImageBuilders
    class DescribeImageBuilders
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DescribeImageBuilders'
        data = {}
        data['Names'] = Builders::StringList.build(input[:names]) unless input[:names].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeImagePermissions
    class DescribeImagePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DescribeImagePermissions'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['SharedAwsAccountIds'] = Builders::AwsAccountIdList.build(input[:shared_aws_account_ids]) unless input[:shared_aws_account_ids].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for AwsAccountIdList
    class AwsAccountIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeImages
    class DescribeImages
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DescribeImages'
        data = {}
        data['Names'] = Builders::StringList.build(input[:names]) unless input[:names].nil?
        data['Arns'] = Builders::ArnList.build(input[:arns]) unless input[:arns].nil?
        data['Type'] = input[:type] unless input[:type].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeSessions
    class DescribeSessions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DescribeSessions'
        data = {}
        data['StackName'] = input[:stack_name] unless input[:stack_name].nil?
        data['FleetName'] = input[:fleet_name] unless input[:fleet_name].nil?
        data['UserId'] = input[:user_id] unless input[:user_id].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['AuthenticationType'] = input[:authentication_type] unless input[:authentication_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeStacks
    class DescribeStacks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DescribeStacks'
        data = {}
        data['Names'] = Builders::StringList.build(input[:names]) unless input[:names].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeUsageReportSubscriptions
    class DescribeUsageReportSubscriptions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DescribeUsageReportSubscriptions'
        data = {}
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeUserStackAssociations
    class DescribeUserStackAssociations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DescribeUserStackAssociations'
        data = {}
        data['StackName'] = input[:stack_name] unless input[:stack_name].nil?
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['AuthenticationType'] = input[:authentication_type] unless input[:authentication_type].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeUsers
    class DescribeUsers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DescribeUsers'
        data = {}
        data['AuthenticationType'] = input[:authentication_type] unless input[:authentication_type].nil?
        data['MaxResults'] = input[:max_results] unless input[:max_results].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisableUser
    class DisableUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DisableUser'
        data = {}
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['AuthenticationType'] = input[:authentication_type] unless input[:authentication_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateApplicationFleet
    class DisassociateApplicationFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DisassociateApplicationFleet'
        data = {}
        data['FleetName'] = input[:fleet_name] unless input[:fleet_name].nil?
        data['ApplicationArn'] = input[:application_arn] unless input[:application_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateApplicationFromEntitlement
    class DisassociateApplicationFromEntitlement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DisassociateApplicationFromEntitlement'
        data = {}
        data['StackName'] = input[:stack_name] unless input[:stack_name].nil?
        data['EntitlementName'] = input[:entitlement_name] unless input[:entitlement_name].nil?
        data['ApplicationIdentifier'] = input[:application_identifier] unless input[:application_identifier].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DisassociateFleet
    class DisassociateFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.DisassociateFleet'
        data = {}
        data['FleetName'] = input[:fleet_name] unless input[:fleet_name].nil?
        data['StackName'] = input[:stack_name] unless input[:stack_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for EnableUser
    class EnableUser
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.EnableUser'
        data = {}
        data['UserName'] = input[:user_name] unless input[:user_name].nil?
        data['AuthenticationType'] = input[:authentication_type] unless input[:authentication_type].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ExpireSession
    class ExpireSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.ExpireSession'
        data = {}
        data['SessionId'] = input[:session_id] unless input[:session_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAssociatedFleets
    class ListAssociatedFleets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.ListAssociatedFleets'
        data = {}
        data['StackName'] = input[:stack_name] unless input[:stack_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAssociatedStacks
    class ListAssociatedStacks
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.ListAssociatedStacks'
        data = {}
        data['FleetName'] = input[:fleet_name] unless input[:fleet_name].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListEntitledApplications
    class ListEntitledApplications
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.ListEntitledApplications'
        data = {}
        data['StackName'] = input[:stack_name] unless input[:stack_name].nil?
        data['EntitlementName'] = input[:entitlement_name] unless input[:entitlement_name].nil?
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
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.ListTagsForResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartFleet
    class StartFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.StartFleet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartImageBuilder
    class StartImageBuilder
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.StartImageBuilder'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['AppstreamAgentVersion'] = input[:appstream_agent_version] unless input[:appstream_agent_version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopFleet
    class StopFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.StopFleet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopImageBuilder
    class StopImageBuilder
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.StopImageBuilder'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.TagResource'
        data = {}
        data['ResourceArn'] = input[:resource_arn] unless input[:resource_arn].nil?
        data['Tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.UntagResource'
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

    # Operation Builder for UpdateApplication
    class UpdateApplication
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.UpdateApplication'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['IconS3Location'] = Builders::S3Location.build(input[:icon_s3_location]) unless input[:icon_s3_location].nil?
        data['LaunchPath'] = input[:launch_path] unless input[:launch_path].nil?
        data['WorkingDirectory'] = input[:working_directory] unless input[:working_directory].nil?
        data['LaunchParameters'] = input[:launch_parameters] unless input[:launch_parameters].nil?
        data['AppBlockArn'] = input[:app_block_arn] unless input[:app_block_arn].nil?
        data['AttributesToDelete'] = Builders::ApplicationAttributes.build(input[:attributes_to_delete]) unless input[:attributes_to_delete].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for ApplicationAttributes
    class ApplicationAttributes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateDirectoryConfig
    class UpdateDirectoryConfig
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.UpdateDirectoryConfig'
        data = {}
        data['DirectoryName'] = input[:directory_name] unless input[:directory_name].nil?
        data['OrganizationalUnitDistinguishedNames'] = Builders::OrganizationalUnitDistinguishedNamesList.build(input[:organizational_unit_distinguished_names]) unless input[:organizational_unit_distinguished_names].nil?
        data['ServiceAccountCredentials'] = Builders::ServiceAccountCredentials.build(input[:service_account_credentials]) unless input[:service_account_credentials].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateEntitlement
    class UpdateEntitlement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.UpdateEntitlement'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['StackName'] = input[:stack_name] unless input[:stack_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['AppVisibility'] = input[:app_visibility] unless input[:app_visibility].nil?
        data['Attributes'] = Builders::EntitlementAttributeList.build(input[:attributes]) unless input[:attributes].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFleet
    class UpdateFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.UpdateFleet'
        data = {}
        data['ImageName'] = input[:image_name] unless input[:image_name].nil?
        data['ImageArn'] = input[:image_arn] unless input[:image_arn].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['ComputeCapacity'] = Builders::ComputeCapacity.build(input[:compute_capacity]) unless input[:compute_capacity].nil?
        data['VpcConfig'] = Builders::VpcConfig.build(input[:vpc_config]) unless input[:vpc_config].nil?
        data['MaxUserDurationInSeconds'] = input[:max_user_duration_in_seconds] unless input[:max_user_duration_in_seconds].nil?
        data['DisconnectTimeoutInSeconds'] = input[:disconnect_timeout_in_seconds] unless input[:disconnect_timeout_in_seconds].nil?
        data['DeleteVpcConfig'] = input[:delete_vpc_config] unless input[:delete_vpc_config].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['EnableDefaultInternetAccess'] = input[:enable_default_internet_access] unless input[:enable_default_internet_access].nil?
        data['DomainJoinInfo'] = Builders::DomainJoinInfo.build(input[:domain_join_info]) unless input[:domain_join_info].nil?
        data['IdleDisconnectTimeoutInSeconds'] = input[:idle_disconnect_timeout_in_seconds] unless input[:idle_disconnect_timeout_in_seconds].nil?
        data['AttributesToDelete'] = Builders::FleetAttributes.build(input[:attributes_to_delete]) unless input[:attributes_to_delete].nil?
        data['IamRoleArn'] = input[:iam_role_arn] unless input[:iam_role_arn].nil?
        data['StreamView'] = input[:stream_view] unless input[:stream_view].nil?
        data['Platform'] = input[:platform] unless input[:platform].nil?
        data['MaxConcurrentSessions'] = input[:max_concurrent_sessions] unless input[:max_concurrent_sessions].nil?
        data['UsbDeviceFilterStrings'] = Builders::UsbDeviceFilterStrings.build(input[:usb_device_filter_strings]) unless input[:usb_device_filter_strings].nil?
        data['SessionScriptS3Location'] = Builders::S3Location.build(input[:session_script_s3_location]) unless input[:session_script_s3_location].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FleetAttributes
    class FleetAttributes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for UpdateImagePermissions
    class UpdateImagePermissions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.UpdateImagePermissions'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['SharedAccountId'] = input[:shared_account_id] unless input[:shared_account_id].nil?
        data['ImagePermissions'] = Builders::ImagePermissions.build(input[:image_permissions]) unless input[:image_permissions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for ImagePermissions
    class ImagePermissions
      def self.build(input)
        data = {}
        data['allowFleet'] = input[:allow_fleet] unless input[:allow_fleet].nil?
        data['allowImageBuilder'] = input[:allow_image_builder] unless input[:allow_image_builder].nil?
        data
      end
    end

    # Operation Builder for UpdateStack
    class UpdateStack
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'PhotonAdminProxyService.UpdateStack'
        data = {}
        data['DisplayName'] = input[:display_name] unless input[:display_name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['StorageConnectors'] = Builders::StorageConnectorList.build(input[:storage_connectors]) unless input[:storage_connectors].nil?
        data['DeleteStorageConnectors'] = input[:delete_storage_connectors] unless input[:delete_storage_connectors].nil?
        data['RedirectURL'] = input[:redirect_url] unless input[:redirect_url].nil?
        data['FeedbackURL'] = input[:feedback_url] unless input[:feedback_url].nil?
        data['AttributesToDelete'] = Builders::StackAttributes.build(input[:attributes_to_delete]) unless input[:attributes_to_delete].nil?
        data['UserSettings'] = Builders::UserSettingList.build(input[:user_settings]) unless input[:user_settings].nil?
        data['ApplicationSettings'] = Builders::ApplicationSettings.build(input[:application_settings]) unless input[:application_settings].nil?
        data['AccessEndpoints'] = Builders::AccessEndpointList.build(input[:access_endpoints]) unless input[:access_endpoints].nil?
        data['EmbedHostDomains'] = Builders::EmbedHostDomains.build(input[:embed_host_domains]) unless input[:embed_host_domains].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for StackAttributes
    class StackAttributes
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end
  end
end
