# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::AppStream
  module Stubs

    # Operation Stubber for AssociateApplicationFleet
    class AssociateApplicationFleet
      def self.default(visited=[])
        {
          application_fleet_association: Stubs::ApplicationFleetAssociation.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationFleetAssociation'] = Stubs::ApplicationFleetAssociation.stub(stub[:application_fleet_association]) unless stub[:application_fleet_association].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ApplicationFleetAssociation
    class ApplicationFleetAssociation
      def self.default(visited=[])
        return nil if visited.include?('ApplicationFleetAssociation')
        visited = visited + ['ApplicationFleetAssociation']
        {
          fleet_name: 'fleet_name',
          application_arn: 'application_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationFleetAssociation.new
        data = {}
        data['FleetName'] = stub[:fleet_name] unless stub[:fleet_name].nil?
        data['ApplicationArn'] = stub[:application_arn] unless stub[:application_arn].nil?
        data
      end
    end

    # Operation Stubber for AssociateApplicationToEntitlement
    class AssociateApplicationToEntitlement
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

    # Operation Stubber for AssociateFleet
    class AssociateFleet
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

    # Operation Stubber for BatchAssociateUserStack
    class BatchAssociateUserStack
      def self.default(visited=[])
        {
          errors: Stubs::UserStackAssociationErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['errors'] = Stubs::UserStackAssociationErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UserStackAssociationErrorList
    class UserStackAssociationErrorList
      def self.default(visited=[])
        return nil if visited.include?('UserStackAssociationErrorList')
        visited = visited + ['UserStackAssociationErrorList']
        [
          Stubs::UserStackAssociationError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UserStackAssociationError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UserStackAssociationError
    class UserStackAssociationError
      def self.default(visited=[])
        return nil if visited.include?('UserStackAssociationError')
        visited = visited + ['UserStackAssociationError']
        {
          user_stack_association: Stubs::UserStackAssociation.default(visited),
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserStackAssociationError.new
        data = {}
        data['UserStackAssociation'] = Stubs::UserStackAssociation.stub(stub[:user_stack_association]) unless stub[:user_stack_association].nil?
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Structure Stubber for UserStackAssociation
    class UserStackAssociation
      def self.default(visited=[])
        return nil if visited.include?('UserStackAssociation')
        visited = visited + ['UserStackAssociation']
        {
          stack_name: 'stack_name',
          user_name: 'user_name',
          authentication_type: 'authentication_type',
          send_email_notification: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::UserStackAssociation.new
        data = {}
        data['StackName'] = stub[:stack_name] unless stub[:stack_name].nil?
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        data['AuthenticationType'] = stub[:authentication_type] unless stub[:authentication_type].nil?
        data['SendEmailNotification'] = stub[:send_email_notification] unless stub[:send_email_notification].nil?
        data
      end
    end

    # Operation Stubber for BatchDisassociateUserStack
    class BatchDisassociateUserStack
      def self.default(visited=[])
        {
          errors: Stubs::UserStackAssociationErrorList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['errors'] = Stubs::UserStackAssociationErrorList.stub(stub[:errors]) unless stub[:errors].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CopyImage
    class CopyImage
      def self.default(visited=[])
        {
          destination_image_name: 'destination_image_name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DestinationImageName'] = stub[:destination_image_name] unless stub[:destination_image_name].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateAppBlock
    class CreateAppBlock
      def self.default(visited=[])
        {
          app_block: Stubs::AppBlock.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AppBlock'] = Stubs::AppBlock.stub(stub[:app_block]) unless stub[:app_block].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for AppBlock
    class AppBlock
      def self.default(visited=[])
        return nil if visited.include?('AppBlock')
        visited = visited + ['AppBlock']
        {
          name: 'name',
          arn: 'arn',
          description: 'description',
          display_name: 'display_name',
          source_s3_location: Stubs::S3Location.default(visited),
          setup_script_details: Stubs::ScriptDetails.default(visited),
          created_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::AppBlock.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['SourceS3Location'] = Stubs::S3Location.stub(stub[:source_s3_location]) unless stub[:source_s3_location].nil?
        data['SetupScriptDetails'] = Stubs::ScriptDetails.stub(stub[:setup_script_details]) unless stub[:setup_script_details].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data
      end
    end

    # Structure Stubber for ScriptDetails
    class ScriptDetails
      def self.default(visited=[])
        return nil if visited.include?('ScriptDetails')
        visited = visited + ['ScriptDetails']
        {
          script_s3_location: Stubs::S3Location.default(visited),
          executable_path: 'executable_path',
          executable_parameters: 'executable_parameters',
          timeout_in_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ScriptDetails.new
        data = {}
        data['ScriptS3Location'] = Stubs::S3Location.stub(stub[:script_s3_location]) unless stub[:script_s3_location].nil?
        data['ExecutablePath'] = stub[:executable_path] unless stub[:executable_path].nil?
        data['ExecutableParameters'] = stub[:executable_parameters] unless stub[:executable_parameters].nil?
        data['TimeoutInSeconds'] = stub[:timeout_in_seconds] unless stub[:timeout_in_seconds].nil?
        data
      end
    end

    # Structure Stubber for S3Location
    class S3Location
      def self.default(visited=[])
        return nil if visited.include?('S3Location')
        visited = visited + ['S3Location']
        {
          s3_bucket: 's3_bucket',
          s3_key: 's3_key',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Location.new
        data = {}
        data['S3Bucket'] = stub[:s3_bucket] unless stub[:s3_bucket].nil?
        data['S3Key'] = stub[:s3_key] unless stub[:s3_key].nil?
        data
      end
    end

    # Operation Stubber for CreateApplication
    class CreateApplication
      def self.default(visited=[])
        {
          application: Stubs::Application.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Application'] = Stubs::Application.stub(stub[:application]) unless stub[:application].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Application
    class Application
      def self.default(visited=[])
        return nil if visited.include?('Application')
        visited = visited + ['Application']
        {
          name: 'name',
          display_name: 'display_name',
          icon_url: 'icon_url',
          launch_path: 'launch_path',
          launch_parameters: 'launch_parameters',
          enabled: false,
          metadata: Stubs::Metadata.default(visited),
          working_directory: 'working_directory',
          description: 'description',
          arn: 'arn',
          app_block_arn: 'app_block_arn',
          icon_s3_location: Stubs::S3Location.default(visited),
          platforms: Stubs::Platforms.default(visited),
          instance_families: Stubs::StringList.default(visited),
          created_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Application.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['IconURL'] = stub[:icon_url] unless stub[:icon_url].nil?
        data['LaunchPath'] = stub[:launch_path] unless stub[:launch_path].nil?
        data['LaunchParameters'] = stub[:launch_parameters] unless stub[:launch_parameters].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['Metadata'] = Stubs::Metadata.stub(stub[:metadata]) unless stub[:metadata].nil?
        data['WorkingDirectory'] = stub[:working_directory] unless stub[:working_directory].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['AppBlockArn'] = stub[:app_block_arn] unless stub[:app_block_arn].nil?
        data['IconS3Location'] = Stubs::S3Location.stub(stub[:icon_s3_location]) unless stub[:icon_s3_location].nil?
        data['Platforms'] = Stubs::Platforms.stub(stub[:platforms]) unless stub[:platforms].nil?
        data['InstanceFamilies'] = Stubs::StringList.stub(stub[:instance_families]) unless stub[:instance_families].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data
      end
    end

    # List Stubber for StringList
    class StringList
      def self.default(visited=[])
        return nil if visited.include?('StringList')
        visited = visited + ['StringList']
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

    # List Stubber for Platforms
    class Platforms
      def self.default(visited=[])
        return nil if visited.include?('Platforms')
        visited = visited + ['Platforms']
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

    # Map Stubber for Metadata
    class Metadata
      def self.default(visited=[])
        return nil if visited.include?('Metadata')
        visited = visited + ['Metadata']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateDirectoryConfig
    class CreateDirectoryConfig
      def self.default(visited=[])
        {
          directory_config: Stubs::DirectoryConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DirectoryConfig'] = Stubs::DirectoryConfig.stub(stub[:directory_config]) unless stub[:directory_config].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for DirectoryConfig
    class DirectoryConfig
      def self.default(visited=[])
        return nil if visited.include?('DirectoryConfig')
        visited = visited + ['DirectoryConfig']
        {
          directory_name: 'directory_name',
          organizational_unit_distinguished_names: Stubs::OrganizationalUnitDistinguishedNamesList.default(visited),
          service_account_credentials: Stubs::ServiceAccountCredentials.default(visited),
          created_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::DirectoryConfig.new
        data = {}
        data['DirectoryName'] = stub[:directory_name] unless stub[:directory_name].nil?
        data['OrganizationalUnitDistinguishedNames'] = Stubs::OrganizationalUnitDistinguishedNamesList.stub(stub[:organizational_unit_distinguished_names]) unless stub[:organizational_unit_distinguished_names].nil?
        data['ServiceAccountCredentials'] = Stubs::ServiceAccountCredentials.stub(stub[:service_account_credentials]) unless stub[:service_account_credentials].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data
      end
    end

    # Structure Stubber for ServiceAccountCredentials
    class ServiceAccountCredentials
      def self.default(visited=[])
        return nil if visited.include?('ServiceAccountCredentials')
        visited = visited + ['ServiceAccountCredentials']
        {
          account_name: 'account_name',
          account_password: 'account_password',
        }
      end

      def self.stub(stub)
        stub ||= Types::ServiceAccountCredentials.new
        data = {}
        data['AccountName'] = stub[:account_name] unless stub[:account_name].nil?
        data['AccountPassword'] = stub[:account_password] unless stub[:account_password].nil?
        data
      end
    end

    # List Stubber for OrganizationalUnitDistinguishedNamesList
    class OrganizationalUnitDistinguishedNamesList
      def self.default(visited=[])
        return nil if visited.include?('OrganizationalUnitDistinguishedNamesList')
        visited = visited + ['OrganizationalUnitDistinguishedNamesList']
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

    # Operation Stubber for CreateEntitlement
    class CreateEntitlement
      def self.default(visited=[])
        {
          entitlement: Stubs::Entitlement.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Entitlement'] = Stubs::Entitlement.stub(stub[:entitlement]) unless stub[:entitlement].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Entitlement
    class Entitlement
      def self.default(visited=[])
        return nil if visited.include?('Entitlement')
        visited = visited + ['Entitlement']
        {
          name: 'name',
          stack_name: 'stack_name',
          description: 'description',
          app_visibility: 'app_visibility',
          attributes: Stubs::EntitlementAttributeList.default(visited),
          created_time: Time.now,
          last_modified_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Entitlement.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['StackName'] = stub[:stack_name] unless stub[:stack_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['AppVisibility'] = stub[:app_visibility] unless stub[:app_visibility].nil?
        data['Attributes'] = Stubs::EntitlementAttributeList.stub(stub[:attributes]) unless stub[:attributes].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['LastModifiedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_modified_time]).to_i unless stub[:last_modified_time].nil?
        data
      end
    end

    # List Stubber for EntitlementAttributeList
    class EntitlementAttributeList
      def self.default(visited=[])
        return nil if visited.include?('EntitlementAttributeList')
        visited = visited + ['EntitlementAttributeList']
        [
          Stubs::EntitlementAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EntitlementAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EntitlementAttribute
    class EntitlementAttribute
      def self.default(visited=[])
        return nil if visited.include?('EntitlementAttribute')
        visited = visited + ['EntitlementAttribute']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::EntitlementAttribute.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for CreateFleet
    class CreateFleet
      def self.default(visited=[])
        {
          fleet: Stubs::Fleet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Fleet'] = Stubs::Fleet.stub(stub[:fleet]) unless stub[:fleet].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Fleet
    class Fleet
      def self.default(visited=[])
        return nil if visited.include?('Fleet')
        visited = visited + ['Fleet']
        {
          arn: 'arn',
          name: 'name',
          display_name: 'display_name',
          description: 'description',
          image_name: 'image_name',
          image_arn: 'image_arn',
          instance_type: 'instance_type',
          fleet_type: 'fleet_type',
          compute_capacity_status: Stubs::ComputeCapacityStatus.default(visited),
          max_user_duration_in_seconds: 1,
          disconnect_timeout_in_seconds: 1,
          state: 'state',
          vpc_config: Stubs::VpcConfig.default(visited),
          created_time: Time.now,
          fleet_errors: Stubs::FleetErrors.default(visited),
          enable_default_internet_access: false,
          domain_join_info: Stubs::DomainJoinInfo.default(visited),
          idle_disconnect_timeout_in_seconds: 1,
          iam_role_arn: 'iam_role_arn',
          stream_view: 'stream_view',
          platform: 'platform',
          max_concurrent_sessions: 1,
          usb_device_filter_strings: Stubs::UsbDeviceFilterStrings.default(visited),
          session_script_s3_location: Stubs::S3Location.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Fleet.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['ImageName'] = stub[:image_name] unless stub[:image_name].nil?
        data['ImageArn'] = stub[:image_arn] unless stub[:image_arn].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['FleetType'] = stub[:fleet_type] unless stub[:fleet_type].nil?
        data['ComputeCapacityStatus'] = Stubs::ComputeCapacityStatus.stub(stub[:compute_capacity_status]) unless stub[:compute_capacity_status].nil?
        data['MaxUserDurationInSeconds'] = stub[:max_user_duration_in_seconds] unless stub[:max_user_duration_in_seconds].nil?
        data['DisconnectTimeoutInSeconds'] = stub[:disconnect_timeout_in_seconds] unless stub[:disconnect_timeout_in_seconds].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['VpcConfig'] = Stubs::VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['FleetErrors'] = Stubs::FleetErrors.stub(stub[:fleet_errors]) unless stub[:fleet_errors].nil?
        data['EnableDefaultInternetAccess'] = stub[:enable_default_internet_access] unless stub[:enable_default_internet_access].nil?
        data['DomainJoinInfo'] = Stubs::DomainJoinInfo.stub(stub[:domain_join_info]) unless stub[:domain_join_info].nil?
        data['IdleDisconnectTimeoutInSeconds'] = stub[:idle_disconnect_timeout_in_seconds] unless stub[:idle_disconnect_timeout_in_seconds].nil?
        data['IamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data['StreamView'] = stub[:stream_view] unless stub[:stream_view].nil?
        data['Platform'] = stub[:platform] unless stub[:platform].nil?
        data['MaxConcurrentSessions'] = stub[:max_concurrent_sessions] unless stub[:max_concurrent_sessions].nil?
        data['UsbDeviceFilterStrings'] = Stubs::UsbDeviceFilterStrings.stub(stub[:usb_device_filter_strings]) unless stub[:usb_device_filter_strings].nil?
        data['SessionScriptS3Location'] = Stubs::S3Location.stub(stub[:session_script_s3_location]) unless stub[:session_script_s3_location].nil?
        data
      end
    end

    # List Stubber for UsbDeviceFilterStrings
    class UsbDeviceFilterStrings
      def self.default(visited=[])
        return nil if visited.include?('UsbDeviceFilterStrings')
        visited = visited + ['UsbDeviceFilterStrings']
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

    # Structure Stubber for DomainJoinInfo
    class DomainJoinInfo
      def self.default(visited=[])
        return nil if visited.include?('DomainJoinInfo')
        visited = visited + ['DomainJoinInfo']
        {
          directory_name: 'directory_name',
          organizational_unit_distinguished_name: 'organizational_unit_distinguished_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::DomainJoinInfo.new
        data = {}
        data['DirectoryName'] = stub[:directory_name] unless stub[:directory_name].nil?
        data['OrganizationalUnitDistinguishedName'] = stub[:organizational_unit_distinguished_name] unless stub[:organizational_unit_distinguished_name].nil?
        data
      end
    end

    # List Stubber for FleetErrors
    class FleetErrors
      def self.default(visited=[])
        return nil if visited.include?('FleetErrors')
        visited = visited + ['FleetErrors']
        [
          Stubs::FleetError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::FleetError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FleetError
    class FleetError
      def self.default(visited=[])
        return nil if visited.include?('FleetError')
        visited = visited + ['FleetError']
        {
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::FleetError.new
        data = {}
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Structure Stubber for VpcConfig
    class VpcConfig
      def self.default(visited=[])
        return nil if visited.include?('VpcConfig')
        visited = visited + ['VpcConfig']
        {
          subnet_ids: Stubs::SubnetIdList.default(visited),
          security_group_ids: Stubs::SecurityGroupIdList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcConfig.new
        data = {}
        data['SubnetIds'] = Stubs::SubnetIdList.stub(stub[:subnet_ids]) unless stub[:subnet_ids].nil?
        data['SecurityGroupIds'] = Stubs::SecurityGroupIdList.stub(stub[:security_group_ids]) unless stub[:security_group_ids].nil?
        data
      end
    end

    # List Stubber for SecurityGroupIdList
    class SecurityGroupIdList
      def self.default(visited=[])
        return nil if visited.include?('SecurityGroupIdList')
        visited = visited + ['SecurityGroupIdList']
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

    # List Stubber for SubnetIdList
    class SubnetIdList
      def self.default(visited=[])
        return nil if visited.include?('SubnetIdList')
        visited = visited + ['SubnetIdList']
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

    # Structure Stubber for ComputeCapacityStatus
    class ComputeCapacityStatus
      def self.default(visited=[])
        return nil if visited.include?('ComputeCapacityStatus')
        visited = visited + ['ComputeCapacityStatus']
        {
          desired: 1,
          running: 1,
          in_use: 1,
          available: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ComputeCapacityStatus.new
        data = {}
        data['Desired'] = stub[:desired] unless stub[:desired].nil?
        data['Running'] = stub[:running] unless stub[:running].nil?
        data['InUse'] = stub[:in_use] unless stub[:in_use].nil?
        data['Available'] = stub[:available] unless stub[:available].nil?
        data
      end
    end

    # Operation Stubber for CreateImageBuilder
    class CreateImageBuilder
      def self.default(visited=[])
        {
          image_builder: Stubs::ImageBuilder.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ImageBuilder'] = Stubs::ImageBuilder.stub(stub[:image_builder]) unless stub[:image_builder].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for ImageBuilder
    class ImageBuilder
      def self.default(visited=[])
        return nil if visited.include?('ImageBuilder')
        visited = visited + ['ImageBuilder']
        {
          name: 'name',
          arn: 'arn',
          image_arn: 'image_arn',
          description: 'description',
          display_name: 'display_name',
          vpc_config: Stubs::VpcConfig.default(visited),
          instance_type: 'instance_type',
          platform: 'platform',
          iam_role_arn: 'iam_role_arn',
          state: 'state',
          state_change_reason: Stubs::ImageBuilderStateChangeReason.default(visited),
          created_time: Time.now,
          enable_default_internet_access: false,
          domain_join_info: Stubs::DomainJoinInfo.default(visited),
          network_access_configuration: Stubs::NetworkAccessConfiguration.default(visited),
          image_builder_errors: Stubs::ResourceErrors.default(visited),
          appstream_agent_version: 'appstream_agent_version',
          access_endpoints: Stubs::AccessEndpointList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageBuilder.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['ImageArn'] = stub[:image_arn] unless stub[:image_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['VpcConfig'] = Stubs::VpcConfig.stub(stub[:vpc_config]) unless stub[:vpc_config].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['Platform'] = stub[:platform] unless stub[:platform].nil?
        data['IamRoleArn'] = stub[:iam_role_arn] unless stub[:iam_role_arn].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['StateChangeReason'] = Stubs::ImageBuilderStateChangeReason.stub(stub[:state_change_reason]) unless stub[:state_change_reason].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['EnableDefaultInternetAccess'] = stub[:enable_default_internet_access] unless stub[:enable_default_internet_access].nil?
        data['DomainJoinInfo'] = Stubs::DomainJoinInfo.stub(stub[:domain_join_info]) unless stub[:domain_join_info].nil?
        data['NetworkAccessConfiguration'] = Stubs::NetworkAccessConfiguration.stub(stub[:network_access_configuration]) unless stub[:network_access_configuration].nil?
        data['ImageBuilderErrors'] = Stubs::ResourceErrors.stub(stub[:image_builder_errors]) unless stub[:image_builder_errors].nil?
        data['AppstreamAgentVersion'] = stub[:appstream_agent_version] unless stub[:appstream_agent_version].nil?
        data['AccessEndpoints'] = Stubs::AccessEndpointList.stub(stub[:access_endpoints]) unless stub[:access_endpoints].nil?
        data
      end
    end

    # List Stubber for AccessEndpointList
    class AccessEndpointList
      def self.default(visited=[])
        return nil if visited.include?('AccessEndpointList')
        visited = visited + ['AccessEndpointList']
        [
          Stubs::AccessEndpoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AccessEndpoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for AccessEndpoint
    class AccessEndpoint
      def self.default(visited=[])
        return nil if visited.include?('AccessEndpoint')
        visited = visited + ['AccessEndpoint']
        {
          endpoint_type: 'endpoint_type',
          vpce_id: 'vpce_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::AccessEndpoint.new
        data = {}
        data['EndpointType'] = stub[:endpoint_type] unless stub[:endpoint_type].nil?
        data['VpceId'] = stub[:vpce_id] unless stub[:vpce_id].nil?
        data
      end
    end

    # List Stubber for ResourceErrors
    class ResourceErrors
      def self.default(visited=[])
        return nil if visited.include?('ResourceErrors')
        visited = visited + ['ResourceErrors']
        [
          Stubs::ResourceError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ResourceError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ResourceError
    class ResourceError
      def self.default(visited=[])
        return nil if visited.include?('ResourceError')
        visited = visited + ['ResourceError']
        {
          error_code: 'error_code',
          error_message: 'error_message',
          error_timestamp: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceError.new
        data = {}
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data['ErrorTimestamp'] = Hearth::TimeHelper.to_epoch_seconds(stub[:error_timestamp]).to_i unless stub[:error_timestamp].nil?
        data
      end
    end

    # Structure Stubber for NetworkAccessConfiguration
    class NetworkAccessConfiguration
      def self.default(visited=[])
        return nil if visited.include?('NetworkAccessConfiguration')
        visited = visited + ['NetworkAccessConfiguration']
        {
          eni_private_ip_address: 'eni_private_ip_address',
          eni_id: 'eni_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::NetworkAccessConfiguration.new
        data = {}
        data['EniPrivateIpAddress'] = stub[:eni_private_ip_address] unless stub[:eni_private_ip_address].nil?
        data['EniId'] = stub[:eni_id] unless stub[:eni_id].nil?
        data
      end
    end

    # Structure Stubber for ImageBuilderStateChangeReason
    class ImageBuilderStateChangeReason
      def self.default(visited=[])
        return nil if visited.include?('ImageBuilderStateChangeReason')
        visited = visited + ['ImageBuilderStateChangeReason']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageBuilderStateChangeReason.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for CreateImageBuilderStreamingURL
    class CreateImageBuilderStreamingURL
      def self.default(visited=[])
        {
          streaming_url: 'streaming_url',
          expires: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StreamingURL'] = stub[:streaming_url] unless stub[:streaming_url].nil?
        data['Expires'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expires]).to_i unless stub[:expires].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateStack
    class CreateStack
      def self.default(visited=[])
        {
          stack: Stubs::Stack.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Stack'] = Stubs::Stack.stub(stub[:stack]) unless stub[:stack].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Stack
    class Stack
      def self.default(visited=[])
        return nil if visited.include?('Stack')
        visited = visited + ['Stack']
        {
          arn: 'arn',
          name: 'name',
          description: 'description',
          display_name: 'display_name',
          created_time: Time.now,
          storage_connectors: Stubs::StorageConnectorList.default(visited),
          redirect_url: 'redirect_url',
          feedback_url: 'feedback_url',
          stack_errors: Stubs::StackErrors.default(visited),
          user_settings: Stubs::UserSettingList.default(visited),
          application_settings: Stubs::ApplicationSettingsResponse.default(visited),
          access_endpoints: Stubs::AccessEndpointList.default(visited),
          embed_host_domains: Stubs::EmbedHostDomains.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Stack.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['StorageConnectors'] = Stubs::StorageConnectorList.stub(stub[:storage_connectors]) unless stub[:storage_connectors].nil?
        data['RedirectURL'] = stub[:redirect_url] unless stub[:redirect_url].nil?
        data['FeedbackURL'] = stub[:feedback_url] unless stub[:feedback_url].nil?
        data['StackErrors'] = Stubs::StackErrors.stub(stub[:stack_errors]) unless stub[:stack_errors].nil?
        data['UserSettings'] = Stubs::UserSettingList.stub(stub[:user_settings]) unless stub[:user_settings].nil?
        data['ApplicationSettings'] = Stubs::ApplicationSettingsResponse.stub(stub[:application_settings]) unless stub[:application_settings].nil?
        data['AccessEndpoints'] = Stubs::AccessEndpointList.stub(stub[:access_endpoints]) unless stub[:access_endpoints].nil?
        data['EmbedHostDomains'] = Stubs::EmbedHostDomains.stub(stub[:embed_host_domains]) unless stub[:embed_host_domains].nil?
        data
      end
    end

    # List Stubber for EmbedHostDomains
    class EmbedHostDomains
      def self.default(visited=[])
        return nil if visited.include?('EmbedHostDomains')
        visited = visited + ['EmbedHostDomains']
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

    # Structure Stubber for ApplicationSettingsResponse
    class ApplicationSettingsResponse
      def self.default(visited=[])
        return nil if visited.include?('ApplicationSettingsResponse')
        visited = visited + ['ApplicationSettingsResponse']
        {
          enabled: false,
          settings_group: 'settings_group',
          s3_bucket_name: 's3_bucket_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ApplicationSettingsResponse.new
        data = {}
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['SettingsGroup'] = stub[:settings_group] unless stub[:settings_group].nil?
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data
      end
    end

    # List Stubber for UserSettingList
    class UserSettingList
      def self.default(visited=[])
        return nil if visited.include?('UserSettingList')
        visited = visited + ['UserSettingList']
        [
          Stubs::UserSetting.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UserSetting.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UserSetting
    class UserSetting
      def self.default(visited=[])
        return nil if visited.include?('UserSetting')
        visited = visited + ['UserSetting']
        {
          action: 'action',
          permission: 'permission',
        }
      end

      def self.stub(stub)
        stub ||= Types::UserSetting.new
        data = {}
        data['Action'] = stub[:action] unless stub[:action].nil?
        data['Permission'] = stub[:permission] unless stub[:permission].nil?
        data
      end
    end

    # List Stubber for StackErrors
    class StackErrors
      def self.default(visited=[])
        return nil if visited.include?('StackErrors')
        visited = visited + ['StackErrors']
        [
          Stubs::StackError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StackError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StackError
    class StackError
      def self.default(visited=[])
        return nil if visited.include?('StackError')
        visited = visited + ['StackError']
        {
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::StackError.new
        data = {}
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # List Stubber for StorageConnectorList
    class StorageConnectorList
      def self.default(visited=[])
        return nil if visited.include?('StorageConnectorList')
        visited = visited + ['StorageConnectorList']
        [
          Stubs::StorageConnector.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StorageConnector.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StorageConnector
    class StorageConnector
      def self.default(visited=[])
        return nil if visited.include?('StorageConnector')
        visited = visited + ['StorageConnector']
        {
          connector_type: 'connector_type',
          resource_identifier: 'resource_identifier',
          domains: Stubs::DomainList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StorageConnector.new
        data = {}
        data['ConnectorType'] = stub[:connector_type] unless stub[:connector_type].nil?
        data['ResourceIdentifier'] = stub[:resource_identifier] unless stub[:resource_identifier].nil?
        data['Domains'] = Stubs::DomainList.stub(stub[:domains]) unless stub[:domains].nil?
        data
      end
    end

    # List Stubber for DomainList
    class DomainList
      def self.default(visited=[])
        return nil if visited.include?('DomainList')
        visited = visited + ['DomainList']
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

    # Operation Stubber for CreateStreamingURL
    class CreateStreamingURL
      def self.default(visited=[])
        {
          streaming_url: 'streaming_url',
          expires: Time.now,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['StreamingURL'] = stub[:streaming_url] unless stub[:streaming_url].nil?
        data['Expires'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expires]).to_i unless stub[:expires].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateUpdatedImage
    class CreateUpdatedImage
      def self.default(visited=[])
        {
          image: Stubs::Image.default(visited),
          can_update_image: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['image'] = Stubs::Image.stub(stub[:image]) unless stub[:image].nil?
        data['canUpdateImage'] = stub[:can_update_image] unless stub[:can_update_image].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Image
    class Image
      def self.default(visited=[])
        return nil if visited.include?('Image')
        visited = visited + ['Image']
        {
          name: 'name',
          arn: 'arn',
          base_image_arn: 'base_image_arn',
          display_name: 'display_name',
          state: 'state',
          visibility: 'visibility',
          image_builder_supported: false,
          image_builder_name: 'image_builder_name',
          platform: 'platform',
          description: 'description',
          state_change_reason: Stubs::ImageStateChangeReason.default(visited),
          applications: Stubs::Applications.default(visited),
          created_time: Time.now,
          public_base_image_released_date: Time.now,
          appstream_agent_version: 'appstream_agent_version',
          image_permissions: Stubs::ImagePermissions.default(visited),
          image_errors: Stubs::ResourceErrors.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Image.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['BaseImageArn'] = stub[:base_image_arn] unless stub[:base_image_arn].nil?
        data['DisplayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['Visibility'] = stub[:visibility] unless stub[:visibility].nil?
        data['ImageBuilderSupported'] = stub[:image_builder_supported] unless stub[:image_builder_supported].nil?
        data['ImageBuilderName'] = stub[:image_builder_name] unless stub[:image_builder_name].nil?
        data['Platform'] = stub[:platform] unless stub[:platform].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['StateChangeReason'] = Stubs::ImageStateChangeReason.stub(stub[:state_change_reason]) unless stub[:state_change_reason].nil?
        data['Applications'] = Stubs::Applications.stub(stub[:applications]) unless stub[:applications].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['PublicBaseImageReleasedDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:public_base_image_released_date]).to_i unless stub[:public_base_image_released_date].nil?
        data['AppstreamAgentVersion'] = stub[:appstream_agent_version] unless stub[:appstream_agent_version].nil?
        data['ImagePermissions'] = Stubs::ImagePermissions.stub(stub[:image_permissions]) unless stub[:image_permissions].nil?
        data['ImageErrors'] = Stubs::ResourceErrors.stub(stub[:image_errors]) unless stub[:image_errors].nil?
        data
      end
    end

    # Structure Stubber for ImagePermissions
    class ImagePermissions
      def self.default(visited=[])
        return nil if visited.include?('ImagePermissions')
        visited = visited + ['ImagePermissions']
        {
          allow_fleet: false,
          allow_image_builder: false,
        }
      end

      def self.stub(stub)
        stub ||= Types::ImagePermissions.new
        data = {}
        data['allowFleet'] = stub[:allow_fleet] unless stub[:allow_fleet].nil?
        data['allowImageBuilder'] = stub[:allow_image_builder] unless stub[:allow_image_builder].nil?
        data
      end
    end

    # List Stubber for Applications
    class Applications
      def self.default(visited=[])
        return nil if visited.include?('Applications')
        visited = visited + ['Applications']
        [
          Stubs::Application.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Application.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ImageStateChangeReason
    class ImageStateChangeReason
      def self.default(visited=[])
        return nil if visited.include?('ImageStateChangeReason')
        visited = visited + ['ImageStateChangeReason']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ImageStateChangeReason.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for CreateUsageReportSubscription
    class CreateUsageReportSubscription
      def self.default(visited=[])
        {
          s3_bucket_name: 's3_bucket_name',
          schedule: 'schedule',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['Schedule'] = stub[:schedule] unless stub[:schedule].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateUser
    class CreateUser
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

    # Operation Stubber for DeleteAppBlock
    class DeleteAppBlock
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

    # Operation Stubber for DeleteApplication
    class DeleteApplication
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

    # Operation Stubber for DeleteDirectoryConfig
    class DeleteDirectoryConfig
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

    # Operation Stubber for DeleteEntitlement
    class DeleteEntitlement
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

    # Operation Stubber for DeleteFleet
    class DeleteFleet
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

    # Operation Stubber for DeleteImage
    class DeleteImage
      def self.default(visited=[])
        {
          image: Stubs::Image.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Image'] = Stubs::Image.stub(stub[:image]) unless stub[:image].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteImageBuilder
    class DeleteImageBuilder
      def self.default(visited=[])
        {
          image_builder: Stubs::ImageBuilder.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ImageBuilder'] = Stubs::ImageBuilder.stub(stub[:image_builder]) unless stub[:image_builder].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteImagePermissions
    class DeleteImagePermissions
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

    # Operation Stubber for DeleteStack
    class DeleteStack
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

    # Operation Stubber for DeleteUsageReportSubscription
    class DeleteUsageReportSubscription
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

    # Operation Stubber for DeleteUser
    class DeleteUser
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

    # Operation Stubber for DescribeAppBlocks
    class DescribeAppBlocks
      def self.default(visited=[])
        {
          app_blocks: Stubs::AppBlocks.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['AppBlocks'] = Stubs::AppBlocks.stub(stub[:app_blocks]) unless stub[:app_blocks].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AppBlocks
    class AppBlocks
      def self.default(visited=[])
        return nil if visited.include?('AppBlocks')
        visited = visited + ['AppBlocks']
        [
          Stubs::AppBlock.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::AppBlock.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeApplicationFleetAssociations
    class DescribeApplicationFleetAssociations
      def self.default(visited=[])
        {
          application_fleet_associations: Stubs::ApplicationFleetAssociationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ApplicationFleetAssociations'] = Stubs::ApplicationFleetAssociationList.stub(stub[:application_fleet_associations]) unless stub[:application_fleet_associations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ApplicationFleetAssociationList
    class ApplicationFleetAssociationList
      def self.default(visited=[])
        return nil if visited.include?('ApplicationFleetAssociationList')
        visited = visited + ['ApplicationFleetAssociationList']
        [
          Stubs::ApplicationFleetAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ApplicationFleetAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeApplications
    class DescribeApplications
      def self.default(visited=[])
        {
          applications: Stubs::Applications.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Applications'] = Stubs::Applications.stub(stub[:applications]) unless stub[:applications].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeDirectoryConfigs
    class DescribeDirectoryConfigs
      def self.default(visited=[])
        {
          directory_configs: Stubs::DirectoryConfigList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DirectoryConfigs'] = Stubs::DirectoryConfigList.stub(stub[:directory_configs]) unless stub[:directory_configs].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for DirectoryConfigList
    class DirectoryConfigList
      def self.default(visited=[])
        return nil if visited.include?('DirectoryConfigList')
        visited = visited + ['DirectoryConfigList']
        [
          Stubs::DirectoryConfig.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DirectoryConfig.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeEntitlements
    class DescribeEntitlements
      def self.default(visited=[])
        {
          entitlements: Stubs::EntitlementList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Entitlements'] = Stubs::EntitlementList.stub(stub[:entitlements]) unless stub[:entitlements].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EntitlementList
    class EntitlementList
      def self.default(visited=[])
        return nil if visited.include?('EntitlementList')
        visited = visited + ['EntitlementList']
        [
          Stubs::Entitlement.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Entitlement.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeFleets
    class DescribeFleets
      def self.default(visited=[])
        {
          fleets: Stubs::FleetList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Fleets'] = Stubs::FleetList.stub(stub[:fleets]) unless stub[:fleets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FleetList
    class FleetList
      def self.default(visited=[])
        return nil if visited.include?('FleetList')
        visited = visited + ['FleetList']
        [
          Stubs::Fleet.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Fleet.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeImageBuilders
    class DescribeImageBuilders
      def self.default(visited=[])
        {
          image_builders: Stubs::ImageBuilderList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ImageBuilders'] = Stubs::ImageBuilderList.stub(stub[:image_builders]) unless stub[:image_builders].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ImageBuilderList
    class ImageBuilderList
      def self.default(visited=[])
        return nil if visited.include?('ImageBuilderList')
        visited = visited + ['ImageBuilderList']
        [
          Stubs::ImageBuilder.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ImageBuilder.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeImagePermissions
    class DescribeImagePermissions
      def self.default(visited=[])
        {
          name: 'name',
          shared_image_permissions_list: Stubs::SharedImagePermissionsList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['SharedImagePermissionsList'] = Stubs::SharedImagePermissionsList.stub(stub[:shared_image_permissions_list]) unless stub[:shared_image_permissions_list].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SharedImagePermissionsList
    class SharedImagePermissionsList
      def self.default(visited=[])
        return nil if visited.include?('SharedImagePermissionsList')
        visited = visited + ['SharedImagePermissionsList']
        [
          Stubs::SharedImagePermissions.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::SharedImagePermissions.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for SharedImagePermissions
    class SharedImagePermissions
      def self.default(visited=[])
        return nil if visited.include?('SharedImagePermissions')
        visited = visited + ['SharedImagePermissions']
        {
          shared_account_id: 'shared_account_id',
          image_permissions: Stubs::ImagePermissions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::SharedImagePermissions.new
        data = {}
        data['sharedAccountId'] = stub[:shared_account_id] unless stub[:shared_account_id].nil?
        data['imagePermissions'] = Stubs::ImagePermissions.stub(stub[:image_permissions]) unless stub[:image_permissions].nil?
        data
      end
    end

    # Operation Stubber for DescribeImages
    class DescribeImages
      def self.default(visited=[])
        {
          images: Stubs::ImageList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Images'] = Stubs::ImageList.stub(stub[:images]) unless stub[:images].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ImageList
    class ImageList
      def self.default(visited=[])
        return nil if visited.include?('ImageList')
        visited = visited + ['ImageList']
        [
          Stubs::Image.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Image.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeSessions
    class DescribeSessions
      def self.default(visited=[])
        {
          sessions: Stubs::SessionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Sessions'] = Stubs::SessionList.stub(stub[:sessions]) unless stub[:sessions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for SessionList
    class SessionList
      def self.default(visited=[])
        return nil if visited.include?('SessionList')
        visited = visited + ['SessionList']
        [
          Stubs::Session.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Session.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Session
    class Session
      def self.default(visited=[])
        return nil if visited.include?('Session')
        visited = visited + ['Session']
        {
          id: 'id',
          user_id: 'user_id',
          stack_name: 'stack_name',
          fleet_name: 'fleet_name',
          state: 'state',
          connection_state: 'connection_state',
          start_time: Time.now,
          max_expiration_time: Time.now,
          authentication_type: 'authentication_type',
          network_access_configuration: Stubs::NetworkAccessConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Session.new
        data = {}
        data['Id'] = stub[:id] unless stub[:id].nil?
        data['UserId'] = stub[:user_id] unless stub[:user_id].nil?
        data['StackName'] = stub[:stack_name] unless stub[:stack_name].nil?
        data['FleetName'] = stub[:fleet_name] unless stub[:fleet_name].nil?
        data['State'] = stub[:state] unless stub[:state].nil?
        data['ConnectionState'] = stub[:connection_state] unless stub[:connection_state].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['MaxExpirationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:max_expiration_time]).to_i unless stub[:max_expiration_time].nil?
        data['AuthenticationType'] = stub[:authentication_type] unless stub[:authentication_type].nil?
        data['NetworkAccessConfiguration'] = Stubs::NetworkAccessConfiguration.stub(stub[:network_access_configuration]) unless stub[:network_access_configuration].nil?
        data
      end
    end

    # Operation Stubber for DescribeStacks
    class DescribeStacks
      def self.default(visited=[])
        {
          stacks: Stubs::StackList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Stacks'] = Stubs::StackList.stub(stub[:stacks]) unless stub[:stacks].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for StackList
    class StackList
      def self.default(visited=[])
        return nil if visited.include?('StackList')
        visited = visited + ['StackList']
        [
          Stubs::Stack.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Stack.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeUsageReportSubscriptions
    class DescribeUsageReportSubscriptions
      def self.default(visited=[])
        {
          usage_report_subscriptions: Stubs::UsageReportSubscriptionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UsageReportSubscriptions'] = Stubs::UsageReportSubscriptionList.stub(stub[:usage_report_subscriptions]) unless stub[:usage_report_subscriptions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UsageReportSubscriptionList
    class UsageReportSubscriptionList
      def self.default(visited=[])
        return nil if visited.include?('UsageReportSubscriptionList')
        visited = visited + ['UsageReportSubscriptionList']
        [
          Stubs::UsageReportSubscription.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UsageReportSubscription.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for UsageReportSubscription
    class UsageReportSubscription
      def self.default(visited=[])
        return nil if visited.include?('UsageReportSubscription')
        visited = visited + ['UsageReportSubscription']
        {
          s3_bucket_name: 's3_bucket_name',
          schedule: 'schedule',
          last_generated_report_date: Time.now,
          subscription_errors: Stubs::LastReportGenerationExecutionErrors.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::UsageReportSubscription.new
        data = {}
        data['S3BucketName'] = stub[:s3_bucket_name] unless stub[:s3_bucket_name].nil?
        data['Schedule'] = stub[:schedule] unless stub[:schedule].nil?
        data['LastGeneratedReportDate'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_generated_report_date]).to_i unless stub[:last_generated_report_date].nil?
        data['SubscriptionErrors'] = Stubs::LastReportGenerationExecutionErrors.stub(stub[:subscription_errors]) unless stub[:subscription_errors].nil?
        data
      end
    end

    # List Stubber for LastReportGenerationExecutionErrors
    class LastReportGenerationExecutionErrors
      def self.default(visited=[])
        return nil if visited.include?('LastReportGenerationExecutionErrors')
        visited = visited + ['LastReportGenerationExecutionErrors']
        [
          Stubs::LastReportGenerationExecutionError.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LastReportGenerationExecutionError.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LastReportGenerationExecutionError
    class LastReportGenerationExecutionError
      def self.default(visited=[])
        return nil if visited.include?('LastReportGenerationExecutionError')
        visited = visited + ['LastReportGenerationExecutionError']
        {
          error_code: 'error_code',
          error_message: 'error_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::LastReportGenerationExecutionError.new
        data = {}
        data['ErrorCode'] = stub[:error_code] unless stub[:error_code].nil?
        data['ErrorMessage'] = stub[:error_message] unless stub[:error_message].nil?
        data
      end
    end

    # Operation Stubber for DescribeUserStackAssociations
    class DescribeUserStackAssociations
      def self.default(visited=[])
        {
          user_stack_associations: Stubs::UserStackAssociationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UserStackAssociations'] = Stubs::UserStackAssociationList.stub(stub[:user_stack_associations]) unless stub[:user_stack_associations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UserStackAssociationList
    class UserStackAssociationList
      def self.default(visited=[])
        return nil if visited.include?('UserStackAssociationList')
        visited = visited + ['UserStackAssociationList']
        [
          Stubs::UserStackAssociation.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::UserStackAssociation.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeUsers
    class DescribeUsers
      def self.default(visited=[])
        {
          users: Stubs::UserList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Users'] = Stubs::UserList.stub(stub[:users]) unless stub[:users].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for UserList
    class UserList
      def self.default(visited=[])
        return nil if visited.include?('UserList')
        visited = visited + ['UserList']
        [
          Stubs::User.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::User.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for User
    class User
      def self.default(visited=[])
        return nil if visited.include?('User')
        visited = visited + ['User']
        {
          arn: 'arn',
          user_name: 'user_name',
          enabled: false,
          status: 'status',
          first_name: 'first_name',
          last_name: 'last_name',
          created_time: Time.now,
          authentication_type: 'authentication_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::User.new
        data = {}
        data['Arn'] = stub[:arn] unless stub[:arn].nil?
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        data['Enabled'] = stub[:enabled] unless stub[:enabled].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['FirstName'] = stub[:first_name] unless stub[:first_name].nil?
        data['LastName'] = stub[:last_name] unless stub[:last_name].nil?
        data['CreatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:created_time]).to_i unless stub[:created_time].nil?
        data['AuthenticationType'] = stub[:authentication_type] unless stub[:authentication_type].nil?
        data
      end
    end

    # Operation Stubber for DisableUser
    class DisableUser
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

    # Operation Stubber for DisassociateApplicationFleet
    class DisassociateApplicationFleet
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

    # Operation Stubber for DisassociateApplicationFromEntitlement
    class DisassociateApplicationFromEntitlement
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

    # Operation Stubber for DisassociateFleet
    class DisassociateFleet
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

    # Operation Stubber for EnableUser
    class EnableUser
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

    # Operation Stubber for ExpireSession
    class ExpireSession
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

    # Operation Stubber for ListAssociatedFleets
    class ListAssociatedFleets
      def self.default(visited=[])
        {
          names: Stubs::StringList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Names'] = Stubs::StringList.stub(stub[:names]) unless stub[:names].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListAssociatedStacks
    class ListAssociatedStacks
      def self.default(visited=[])
        {
          names: Stubs::StringList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Names'] = Stubs::StringList.stub(stub[:names]) unless stub[:names].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ListEntitledApplications
    class ListEntitledApplications
      def self.default(visited=[])
        {
          entitled_applications: Stubs::EntitledApplicationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EntitledApplications'] = Stubs::EntitledApplicationList.stub(stub[:entitled_applications]) unless stub[:entitled_applications].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EntitledApplicationList
    class EntitledApplicationList
      def self.default(visited=[])
        return nil if visited.include?('EntitledApplicationList')
        visited = visited + ['EntitledApplicationList']
        [
          Stubs::EntitledApplication.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EntitledApplication.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EntitledApplication
    class EntitledApplication
      def self.default(visited=[])
        return nil if visited.include?('EntitledApplication')
        visited = visited + ['EntitledApplication']
        {
          application_identifier: 'application_identifier',
        }
      end

      def self.stub(stub)
        stub ||= Types::EntitledApplication.new
        data = {}
        data['ApplicationIdentifier'] = stub[:application_identifier] unless stub[:application_identifier].nil?
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Stubs::Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Map Stubber for Tags
    class Tags
      def self.default(visited=[])
        return nil if visited.include?('Tags')
        visited = visited + ['Tags']
        {
          test_key: 'value'
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Stubber for StartFleet
    class StartFleet
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

    # Operation Stubber for StartImageBuilder
    class StartImageBuilder
      def self.default(visited=[])
        {
          image_builder: Stubs::ImageBuilder.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ImageBuilder'] = Stubs::ImageBuilder.stub(stub[:image_builder]) unless stub[:image_builder].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopFleet
    class StopFleet
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

    # Operation Stubber for StopImageBuilder
    class StopImageBuilder
      def self.default(visited=[])
        {
          image_builder: Stubs::ImageBuilder.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ImageBuilder'] = Stubs::ImageBuilder.stub(stub[:image_builder]) unless stub[:image_builder].nil?
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

    # Operation Stubber for UpdateApplication
    class UpdateApplication
      def self.default(visited=[])
        {
          application: Stubs::Application.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Application'] = Stubs::Application.stub(stub[:application]) unless stub[:application].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateDirectoryConfig
    class UpdateDirectoryConfig
      def self.default(visited=[])
        {
          directory_config: Stubs::DirectoryConfig.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['DirectoryConfig'] = Stubs::DirectoryConfig.stub(stub[:directory_config]) unless stub[:directory_config].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateEntitlement
    class UpdateEntitlement
      def self.default(visited=[])
        {
          entitlement: Stubs::Entitlement.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Entitlement'] = Stubs::Entitlement.stub(stub[:entitlement]) unless stub[:entitlement].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFleet
    class UpdateFleet
      def self.default(visited=[])
        {
          fleet: Stubs::Fleet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Fleet'] = Stubs::Fleet.stub(stub[:fleet]) unless stub[:fleet].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateImagePermissions
    class UpdateImagePermissions
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

    # Operation Stubber for UpdateStack
    class UpdateStack
      def self.default(visited=[])
        {
          stack: Stubs::Stack.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Stack'] = Stubs::Stack.stub(stub[:stack]) unless stub[:stack].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
