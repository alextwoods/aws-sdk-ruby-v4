# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::AppStream
  module Parsers

    # Operation Parser for AssociateApplicationFleet
    class AssociateApplicationFleet
      def self.parse(http_resp)
        data = Types::AssociateApplicationFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_fleet_association = (Parsers::ApplicationFleetAssociation.parse(map['ApplicationFleetAssociation']) unless map['ApplicationFleetAssociation'].nil?)
        data
      end
    end

    class ApplicationFleetAssociation
      def self.parse(map)
        data = Types::ApplicationFleetAssociation.new
        data.fleet_name = map['FleetName']
        data.application_arn = map['ApplicationArn']
        return data
      end
    end

    # Error Parser for InvalidParameterCombinationException
    class InvalidParameterCombinationException
      def self.parse(http_resp)
        data = Types::InvalidParameterCombinationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
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

    # Error Parser for OperationNotPermittedException
    class OperationNotPermittedException
      def self.parse(http_resp)
        data = Types::OperationNotPermittedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ConcurrentModificationException
    class ConcurrentModificationException
      def self.parse(http_resp)
        data = Types::ConcurrentModificationException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociateApplicationToEntitlement
    class AssociateApplicationToEntitlement
      def self.parse(http_resp)
        data = Types::AssociateApplicationToEntitlementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for EntitlementNotFoundException
    class EntitlementNotFoundException
      def self.parse(http_resp)
        data = Types::EntitlementNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for AssociateFleet
    class AssociateFleet
      def self.parse(http_resp)
        data = Types::AssociateFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for IncompatibleImageException
    class IncompatibleImageException
      def self.parse(http_resp)
        data = Types::IncompatibleImageException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidAccountStatusException
    class InvalidAccountStatusException
      def self.parse(http_resp)
        data = Types::InvalidAccountStatusException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for BatchAssociateUserStack
    class BatchAssociateUserStack
      def self.parse(http_resp)
        data = Types::BatchAssociateUserStackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.errors = (Parsers::UserStackAssociationErrorList.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    class UserStackAssociationErrorList
      def self.parse(list)
        list.map do |value|
          Parsers::UserStackAssociationError.parse(value) unless value.nil?
        end
      end
    end

    class UserStackAssociationError
      def self.parse(map)
        data = Types::UserStackAssociationError.new
        data.user_stack_association = (Parsers::UserStackAssociation.parse(map['UserStackAssociation']) unless map['UserStackAssociation'].nil?)
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class UserStackAssociation
      def self.parse(map)
        data = Types::UserStackAssociation.new
        data.stack_name = map['StackName']
        data.user_name = map['UserName']
        data.authentication_type = map['AuthenticationType']
        data.send_email_notification = map['SendEmailNotification']
        return data
      end
    end

    # Operation Parser for BatchDisassociateUserStack
    class BatchDisassociateUserStack
      def self.parse(http_resp)
        data = Types::BatchDisassociateUserStackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.errors = (Parsers::UserStackAssociationErrorList.parse(map['errors']) unless map['errors'].nil?)
        data
      end
    end

    # Operation Parser for CopyImage
    class CopyImage
      def self.parse(http_resp)
        data = Types::CopyImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.destination_image_name = map['DestinationImageName']
        data
      end
    end

    # Error Parser for ResourceNotAvailableException
    class ResourceNotAvailableException
      def self.parse(http_resp)
        data = Types::ResourceNotAvailableException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
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

    # Operation Parser for CreateAppBlock
    class CreateAppBlock
      def self.parse(http_resp)
        data = Types::CreateAppBlockOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.app_block = (Parsers::AppBlock.parse(map['AppBlock']) unless map['AppBlock'].nil?)
        data
      end
    end

    class AppBlock
      def self.parse(map)
        data = Types::AppBlock.new
        data.name = map['Name']
        data.arn = map['Arn']
        data.description = map['Description']
        data.display_name = map['DisplayName']
        data.source_s3_location = (Parsers::S3Location.parse(map['SourceS3Location']) unless map['SourceS3Location'].nil?)
        data.setup_script_details = (Parsers::ScriptDetails.parse(map['SetupScriptDetails']) unless map['SetupScriptDetails'].nil?)
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        return data
      end
    end

    class ScriptDetails
      def self.parse(map)
        data = Types::ScriptDetails.new
        data.script_s3_location = (Parsers::S3Location.parse(map['ScriptS3Location']) unless map['ScriptS3Location'].nil?)
        data.executable_path = map['ExecutablePath']
        data.executable_parameters = map['ExecutableParameters']
        data.timeout_in_seconds = map['TimeoutInSeconds']
        return data
      end
    end

    class S3Location
      def self.parse(map)
        data = Types::S3Location.new
        data.s3_bucket = map['S3Bucket']
        data.s3_key = map['S3Key']
        return data
      end
    end

    # Operation Parser for CreateApplication
    class CreateApplication
      def self.parse(http_resp)
        data = Types::CreateApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application = (Parsers::Application.parse(map['Application']) unless map['Application'].nil?)
        data
      end
    end

    class Application
      def self.parse(map)
        data = Types::Application.new
        data.name = map['Name']
        data.display_name = map['DisplayName']
        data.icon_url = map['IconURL']
        data.launch_path = map['LaunchPath']
        data.launch_parameters = map['LaunchParameters']
        data.enabled = map['Enabled']
        data.metadata = (Parsers::Metadata.parse(map['Metadata']) unless map['Metadata'].nil?)
        data.working_directory = map['WorkingDirectory']
        data.description = map['Description']
        data.arn = map['Arn']
        data.app_block_arn = map['AppBlockArn']
        data.icon_s3_location = (Parsers::S3Location.parse(map['IconS3Location']) unless map['IconS3Location'].nil?)
        data.platforms = (Parsers::Platforms.parse(map['Platforms']) unless map['Platforms'].nil?)
        data.instance_families = (Parsers::StringList.parse(map['InstanceFamilies']) unless map['InstanceFamilies'].nil?)
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        return data
      end
    end

    class StringList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Platforms
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class Metadata
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateDirectoryConfig
    class CreateDirectoryConfig
      def self.parse(http_resp)
        data = Types::CreateDirectoryConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.directory_config = (Parsers::DirectoryConfig.parse(map['DirectoryConfig']) unless map['DirectoryConfig'].nil?)
        data
      end
    end

    class DirectoryConfig
      def self.parse(map)
        data = Types::DirectoryConfig.new
        data.directory_name = map['DirectoryName']
        data.organizational_unit_distinguished_names = (Parsers::OrganizationalUnitDistinguishedNamesList.parse(map['OrganizationalUnitDistinguishedNames']) unless map['OrganizationalUnitDistinguishedNames'].nil?)
        data.service_account_credentials = (Parsers::ServiceAccountCredentials.parse(map['ServiceAccountCredentials']) unless map['ServiceAccountCredentials'].nil?)
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        return data
      end
    end

    class ServiceAccountCredentials
      def self.parse(map)
        data = Types::ServiceAccountCredentials.new
        data.account_name = map['AccountName']
        data.account_password = map['AccountPassword']
        return data
      end
    end

    class OrganizationalUnitDistinguishedNamesList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Error Parser for InvalidRoleException
    class InvalidRoleException
      def self.parse(http_resp)
        data = Types::InvalidRoleException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateEntitlement
    class CreateEntitlement
      def self.parse(http_resp)
        data = Types::CreateEntitlementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entitlement = (Parsers::Entitlement.parse(map['Entitlement']) unless map['Entitlement'].nil?)
        data
      end
    end

    class Entitlement
      def self.parse(map)
        data = Types::Entitlement.new
        data.name = map['Name']
        data.stack_name = map['StackName']
        data.description = map['Description']
        data.app_visibility = map['AppVisibility']
        data.attributes = (Parsers::EntitlementAttributeList.parse(map['Attributes']) unless map['Attributes'].nil?)
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.last_modified_time = Time.at(map['LastModifiedTime'].to_i) if map['LastModifiedTime']
        return data
      end
    end

    class EntitlementAttributeList
      def self.parse(list)
        list.map do |value|
          Parsers::EntitlementAttribute.parse(value) unless value.nil?
        end
      end
    end

    class EntitlementAttribute
      def self.parse(map)
        data = Types::EntitlementAttribute.new
        data.name = map['Name']
        data.value = map['Value']
        return data
      end
    end

    # Error Parser for EntitlementAlreadyExistsException
    class EntitlementAlreadyExistsException
      def self.parse(http_resp)
        data = Types::EntitlementAlreadyExistsException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateFleet
    class CreateFleet
      def self.parse(http_resp)
        data = Types::CreateFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet = (Parsers::Fleet.parse(map['Fleet']) unless map['Fleet'].nil?)
        data
      end
    end

    class Fleet
      def self.parse(map)
        data = Types::Fleet.new
        data.arn = map['Arn']
        data.name = map['Name']
        data.display_name = map['DisplayName']
        data.description = map['Description']
        data.image_name = map['ImageName']
        data.image_arn = map['ImageArn']
        data.instance_type = map['InstanceType']
        data.fleet_type = map['FleetType']
        data.compute_capacity_status = (Parsers::ComputeCapacityStatus.parse(map['ComputeCapacityStatus']) unless map['ComputeCapacityStatus'].nil?)
        data.max_user_duration_in_seconds = map['MaxUserDurationInSeconds']
        data.disconnect_timeout_in_seconds = map['DisconnectTimeoutInSeconds']
        data.state = map['State']
        data.vpc_config = (Parsers::VpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.fleet_errors = (Parsers::FleetErrors.parse(map['FleetErrors']) unless map['FleetErrors'].nil?)
        data.enable_default_internet_access = map['EnableDefaultInternetAccess']
        data.domain_join_info = (Parsers::DomainJoinInfo.parse(map['DomainJoinInfo']) unless map['DomainJoinInfo'].nil?)
        data.idle_disconnect_timeout_in_seconds = map['IdleDisconnectTimeoutInSeconds']
        data.iam_role_arn = map['IamRoleArn']
        data.stream_view = map['StreamView']
        data.platform = map['Platform']
        data.max_concurrent_sessions = map['MaxConcurrentSessions']
        data.usb_device_filter_strings = (Parsers::UsbDeviceFilterStrings.parse(map['UsbDeviceFilterStrings']) unless map['UsbDeviceFilterStrings'].nil?)
        data.session_script_s3_location = (Parsers::S3Location.parse(map['SessionScriptS3Location']) unless map['SessionScriptS3Location'].nil?)
        return data
      end
    end

    class UsbDeviceFilterStrings
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class DomainJoinInfo
      def self.parse(map)
        data = Types::DomainJoinInfo.new
        data.directory_name = map['DirectoryName']
        data.organizational_unit_distinguished_name = map['OrganizationalUnitDistinguishedName']
        return data
      end
    end

    class FleetErrors
      def self.parse(list)
        list.map do |value|
          Parsers::FleetError.parse(value) unless value.nil?
        end
      end
    end

    class FleetError
      def self.parse(map)
        data = Types::FleetError.new
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class VpcConfig
      def self.parse(map)
        data = Types::VpcConfig.new
        data.subnet_ids = (Parsers::SubnetIdList.parse(map['SubnetIds']) unless map['SubnetIds'].nil?)
        data.security_group_ids = (Parsers::SecurityGroupIdList.parse(map['SecurityGroupIds']) unless map['SecurityGroupIds'].nil?)
        return data
      end
    end

    class SecurityGroupIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class SubnetIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ComputeCapacityStatus
      def self.parse(map)
        data = Types::ComputeCapacityStatus.new
        data.desired = map['Desired']
        data.running = map['Running']
        data.in_use = map['InUse']
        data.available = map['Available']
        return data
      end
    end

    # Error Parser for RequestLimitExceededException
    class RequestLimitExceededException
      def self.parse(http_resp)
        data = Types::RequestLimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateImageBuilder
    class CreateImageBuilder
      def self.parse(http_resp)
        data = Types::CreateImageBuilderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image_builder = (Parsers::ImageBuilder.parse(map['ImageBuilder']) unless map['ImageBuilder'].nil?)
        data
      end
    end

    class ImageBuilder
      def self.parse(map)
        data = Types::ImageBuilder.new
        data.name = map['Name']
        data.arn = map['Arn']
        data.image_arn = map['ImageArn']
        data.description = map['Description']
        data.display_name = map['DisplayName']
        data.vpc_config = (Parsers::VpcConfig.parse(map['VpcConfig']) unless map['VpcConfig'].nil?)
        data.instance_type = map['InstanceType']
        data.platform = map['Platform']
        data.iam_role_arn = map['IamRoleArn']
        data.state = map['State']
        data.state_change_reason = (Parsers::ImageBuilderStateChangeReason.parse(map['StateChangeReason']) unless map['StateChangeReason'].nil?)
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.enable_default_internet_access = map['EnableDefaultInternetAccess']
        data.domain_join_info = (Parsers::DomainJoinInfo.parse(map['DomainJoinInfo']) unless map['DomainJoinInfo'].nil?)
        data.network_access_configuration = (Parsers::NetworkAccessConfiguration.parse(map['NetworkAccessConfiguration']) unless map['NetworkAccessConfiguration'].nil?)
        data.image_builder_errors = (Parsers::ResourceErrors.parse(map['ImageBuilderErrors']) unless map['ImageBuilderErrors'].nil?)
        data.appstream_agent_version = map['AppstreamAgentVersion']
        data.access_endpoints = (Parsers::AccessEndpointList.parse(map['AccessEndpoints']) unless map['AccessEndpoints'].nil?)
        return data
      end
    end

    class AccessEndpointList
      def self.parse(list)
        list.map do |value|
          Parsers::AccessEndpoint.parse(value) unless value.nil?
        end
      end
    end

    class AccessEndpoint
      def self.parse(map)
        data = Types::AccessEndpoint.new
        data.endpoint_type = map['EndpointType']
        data.vpce_id = map['VpceId']
        return data
      end
    end

    class ResourceErrors
      def self.parse(list)
        list.map do |value|
          Parsers::ResourceError.parse(value) unless value.nil?
        end
      end
    end

    class ResourceError
      def self.parse(map)
        data = Types::ResourceError.new
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        data.error_timestamp = Time.at(map['ErrorTimestamp'].to_i) if map['ErrorTimestamp']
        return data
      end
    end

    class NetworkAccessConfiguration
      def self.parse(map)
        data = Types::NetworkAccessConfiguration.new
        data.eni_private_ip_address = map['EniPrivateIpAddress']
        data.eni_id = map['EniId']
        return data
      end
    end

    class ImageBuilderStateChangeReason
      def self.parse(map)
        data = Types::ImageBuilderStateChangeReason.new
        data.code = map['Code']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for CreateImageBuilderStreamingURL
    class CreateImageBuilderStreamingURL
      def self.parse(http_resp)
        data = Types::CreateImageBuilderStreamingURLOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.streaming_url = map['StreamingURL']
        data.expires = Time.at(map['Expires'].to_i) if map['Expires']
        data
      end
    end

    # Operation Parser for CreateStack
    class CreateStack
      def self.parse(http_resp)
        data = Types::CreateStackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stack = (Parsers::Stack.parse(map['Stack']) unless map['Stack'].nil?)
        data
      end
    end

    class Stack
      def self.parse(map)
        data = Types::Stack.new
        data.arn = map['Arn']
        data.name = map['Name']
        data.description = map['Description']
        data.display_name = map['DisplayName']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.storage_connectors = (Parsers::StorageConnectorList.parse(map['StorageConnectors']) unless map['StorageConnectors'].nil?)
        data.redirect_url = map['RedirectURL']
        data.feedback_url = map['FeedbackURL']
        data.stack_errors = (Parsers::StackErrors.parse(map['StackErrors']) unless map['StackErrors'].nil?)
        data.user_settings = (Parsers::UserSettingList.parse(map['UserSettings']) unless map['UserSettings'].nil?)
        data.application_settings = (Parsers::ApplicationSettingsResponse.parse(map['ApplicationSettings']) unless map['ApplicationSettings'].nil?)
        data.access_endpoints = (Parsers::AccessEndpointList.parse(map['AccessEndpoints']) unless map['AccessEndpoints'].nil?)
        data.embed_host_domains = (Parsers::EmbedHostDomains.parse(map['EmbedHostDomains']) unless map['EmbedHostDomains'].nil?)
        return data
      end
    end

    class EmbedHostDomains
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ApplicationSettingsResponse
      def self.parse(map)
        data = Types::ApplicationSettingsResponse.new
        data.enabled = map['Enabled']
        data.settings_group = map['SettingsGroup']
        data.s3_bucket_name = map['S3BucketName']
        return data
      end
    end

    class UserSettingList
      def self.parse(list)
        list.map do |value|
          Parsers::UserSetting.parse(value) unless value.nil?
        end
      end
    end

    class UserSetting
      def self.parse(map)
        data = Types::UserSetting.new
        data.action = map['Action']
        data.permission = map['Permission']
        return data
      end
    end

    class StackErrors
      def self.parse(list)
        list.map do |value|
          Parsers::StackError.parse(value) unless value.nil?
        end
      end
    end

    class StackError
      def self.parse(map)
        data = Types::StackError.new
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    class StorageConnectorList
      def self.parse(list)
        list.map do |value|
          Parsers::StorageConnector.parse(value) unless value.nil?
        end
      end
    end

    class StorageConnector
      def self.parse(map)
        data = Types::StorageConnector.new
        data.connector_type = map['ConnectorType']
        data.resource_identifier = map['ResourceIdentifier']
        data.domains = (Parsers::DomainList.parse(map['Domains']) unless map['Domains'].nil?)
        return data
      end
    end

    class DomainList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for CreateStreamingURL
    class CreateStreamingURL
      def self.parse(http_resp)
        data = Types::CreateStreamingURLOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.streaming_url = map['StreamingURL']
        data.expires = Time.at(map['Expires'].to_i) if map['Expires']
        data
      end
    end

    # Operation Parser for CreateUpdatedImage
    class CreateUpdatedImage
      def self.parse(http_resp)
        data = Types::CreateUpdatedImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image = (Parsers::Image.parse(map['image']) unless map['image'].nil?)
        data.can_update_image = map['canUpdateImage']
        data
      end
    end

    class Image
      def self.parse(map)
        data = Types::Image.new
        data.name = map['Name']
        data.arn = map['Arn']
        data.base_image_arn = map['BaseImageArn']
        data.display_name = map['DisplayName']
        data.state = map['State']
        data.visibility = map['Visibility']
        data.image_builder_supported = map['ImageBuilderSupported']
        data.image_builder_name = map['ImageBuilderName']
        data.platform = map['Platform']
        data.description = map['Description']
        data.state_change_reason = (Parsers::ImageStateChangeReason.parse(map['StateChangeReason']) unless map['StateChangeReason'].nil?)
        data.applications = (Parsers::Applications.parse(map['Applications']) unless map['Applications'].nil?)
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.public_base_image_released_date = Time.at(map['PublicBaseImageReleasedDate'].to_i) if map['PublicBaseImageReleasedDate']
        data.appstream_agent_version = map['AppstreamAgentVersion']
        data.image_permissions = (Parsers::ImagePermissions.parse(map['ImagePermissions']) unless map['ImagePermissions'].nil?)
        data.image_errors = (Parsers::ResourceErrors.parse(map['ImageErrors']) unless map['ImageErrors'].nil?)
        return data
      end
    end

    class ImagePermissions
      def self.parse(map)
        data = Types::ImagePermissions.new
        data.allow_fleet = map['allowFleet']
        data.allow_image_builder = map['allowImageBuilder']
        return data
      end
    end

    class Applications
      def self.parse(list)
        list.map do |value|
          Parsers::Application.parse(value) unless value.nil?
        end
      end
    end

    class ImageStateChangeReason
      def self.parse(map)
        data = Types::ImageStateChangeReason.new
        data.code = map['Code']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for CreateUsageReportSubscription
    class CreateUsageReportSubscription
      def self.parse(http_resp)
        data = Types::CreateUsageReportSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.s3_bucket_name = map['S3BucketName']
        data.schedule = map['Schedule']
        data
      end
    end

    # Operation Parser for CreateUser
    class CreateUser
      def self.parse(http_resp)
        data = Types::CreateUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteAppBlock
    class DeleteAppBlock
      def self.parse(http_resp)
        data = Types::DeleteAppBlockOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for DeleteApplication
    class DeleteApplication
      def self.parse(http_resp)
        data = Types::DeleteApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteDirectoryConfig
    class DeleteDirectoryConfig
      def self.parse(http_resp)
        data = Types::DeleteDirectoryConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteEntitlement
    class DeleteEntitlement
      def self.parse(http_resp)
        data = Types::DeleteEntitlementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteFleet
    class DeleteFleet
      def self.parse(http_resp)
        data = Types::DeleteFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteImage
    class DeleteImage
      def self.parse(http_resp)
        data = Types::DeleteImageOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image = (Parsers::Image.parse(map['Image']) unless map['Image'].nil?)
        data
      end
    end

    # Operation Parser for DeleteImageBuilder
    class DeleteImageBuilder
      def self.parse(http_resp)
        data = Types::DeleteImageBuilderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image_builder = (Parsers::ImageBuilder.parse(map['ImageBuilder']) unless map['ImageBuilder'].nil?)
        data
      end
    end

    # Operation Parser for DeleteImagePermissions
    class DeleteImagePermissions
      def self.parse(http_resp)
        data = Types::DeleteImagePermissionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteStack
    class DeleteStack
      def self.parse(http_resp)
        data = Types::DeleteStackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteUsageReportSubscription
    class DeleteUsageReportSubscription
      def self.parse(http_resp)
        data = Types::DeleteUsageReportSubscriptionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteUser
    class DeleteUser
      def self.parse(http_resp)
        data = Types::DeleteUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeAppBlocks
    class DescribeAppBlocks
      def self.parse(http_resp)
        data = Types::DescribeAppBlocksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.app_blocks = (Parsers::AppBlocks.parse(map['AppBlocks']) unless map['AppBlocks'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AppBlocks
      def self.parse(list)
        list.map do |value|
          Parsers::AppBlock.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeApplicationFleetAssociations
    class DescribeApplicationFleetAssociations
      def self.parse(http_resp)
        data = Types::DescribeApplicationFleetAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application_fleet_associations = (Parsers::ApplicationFleetAssociationList.parse(map['ApplicationFleetAssociations']) unless map['ApplicationFleetAssociations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ApplicationFleetAssociationList
      def self.parse(list)
        list.map do |value|
          Parsers::ApplicationFleetAssociation.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeApplications
    class DescribeApplications
      def self.parse(http_resp)
        data = Types::DescribeApplicationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.applications = (Parsers::Applications.parse(map['Applications']) unless map['Applications'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for DescribeDirectoryConfigs
    class DescribeDirectoryConfigs
      def self.parse(http_resp)
        data = Types::DescribeDirectoryConfigsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.directory_configs = (Parsers::DirectoryConfigList.parse(map['DirectoryConfigs']) unless map['DirectoryConfigs'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class DirectoryConfigList
      def self.parse(list)
        list.map do |value|
          Parsers::DirectoryConfig.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeEntitlements
    class DescribeEntitlements
      def self.parse(http_resp)
        data = Types::DescribeEntitlementsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entitlements = (Parsers::EntitlementList.parse(map['Entitlements']) unless map['Entitlements'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EntitlementList
      def self.parse(list)
        list.map do |value|
          Parsers::Entitlement.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeFleets
    class DescribeFleets
      def self.parse(http_resp)
        data = Types::DescribeFleetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleets = (Parsers::FleetList.parse(map['Fleets']) unless map['Fleets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class FleetList
      def self.parse(list)
        list.map do |value|
          Parsers::Fleet.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeImageBuilders
    class DescribeImageBuilders
      def self.parse(http_resp)
        data = Types::DescribeImageBuildersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image_builders = (Parsers::ImageBuilderList.parse(map['ImageBuilders']) unless map['ImageBuilders'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ImageBuilderList
      def self.parse(list)
        list.map do |value|
          Parsers::ImageBuilder.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeImagePermissions
    class DescribeImagePermissions
      def self.parse(http_resp)
        data = Types::DescribeImagePermissionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data.shared_image_permissions_list = (Parsers::SharedImagePermissionsList.parse(map['SharedImagePermissionsList']) unless map['SharedImagePermissionsList'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SharedImagePermissionsList
      def self.parse(list)
        list.map do |value|
          Parsers::SharedImagePermissions.parse(value) unless value.nil?
        end
      end
    end

    class SharedImagePermissions
      def self.parse(map)
        data = Types::SharedImagePermissions.new
        data.shared_account_id = map['sharedAccountId']
        data.image_permissions = (Parsers::ImagePermissions.parse(map['imagePermissions']) unless map['imagePermissions'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeImages
    class DescribeImages
      def self.parse(http_resp)
        data = Types::DescribeImagesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.images = (Parsers::ImageList.parse(map['Images']) unless map['Images'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ImageList
      def self.parse(list)
        list.map do |value|
          Parsers::Image.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeSessions
    class DescribeSessions
      def self.parse(http_resp)
        data = Types::DescribeSessionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.sessions = (Parsers::SessionList.parse(map['Sessions']) unless map['Sessions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class SessionList
      def self.parse(list)
        list.map do |value|
          Parsers::Session.parse(value) unless value.nil?
        end
      end
    end

    class Session
      def self.parse(map)
        data = Types::Session.new
        data.id = map['Id']
        data.user_id = map['UserId']
        data.stack_name = map['StackName']
        data.fleet_name = map['FleetName']
        data.state = map['State']
        data.connection_state = map['ConnectionState']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.max_expiration_time = Time.at(map['MaxExpirationTime'].to_i) if map['MaxExpirationTime']
        data.authentication_type = map['AuthenticationType']
        data.network_access_configuration = (Parsers::NetworkAccessConfiguration.parse(map['NetworkAccessConfiguration']) unless map['NetworkAccessConfiguration'].nil?)
        return data
      end
    end

    # Operation Parser for DescribeStacks
    class DescribeStacks
      def self.parse(http_resp)
        data = Types::DescribeStacksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stacks = (Parsers::StackList.parse(map['Stacks']) unless map['Stacks'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class StackList
      def self.parse(list)
        list.map do |value|
          Parsers::Stack.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeUsageReportSubscriptions
    class DescribeUsageReportSubscriptions
      def self.parse(http_resp)
        data = Types::DescribeUsageReportSubscriptionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.usage_report_subscriptions = (Parsers::UsageReportSubscriptionList.parse(map['UsageReportSubscriptions']) unless map['UsageReportSubscriptions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class UsageReportSubscriptionList
      def self.parse(list)
        list.map do |value|
          Parsers::UsageReportSubscription.parse(value) unless value.nil?
        end
      end
    end

    class UsageReportSubscription
      def self.parse(map)
        data = Types::UsageReportSubscription.new
        data.s3_bucket_name = map['S3BucketName']
        data.schedule = map['Schedule']
        data.last_generated_report_date = Time.at(map['LastGeneratedReportDate'].to_i) if map['LastGeneratedReportDate']
        data.subscription_errors = (Parsers::LastReportGenerationExecutionErrors.parse(map['SubscriptionErrors']) unless map['SubscriptionErrors'].nil?)
        return data
      end
    end

    class LastReportGenerationExecutionErrors
      def self.parse(list)
        list.map do |value|
          Parsers::LastReportGenerationExecutionError.parse(value) unless value.nil?
        end
      end
    end

    class LastReportGenerationExecutionError
      def self.parse(map)
        data = Types::LastReportGenerationExecutionError.new
        data.error_code = map['ErrorCode']
        data.error_message = map['ErrorMessage']
        return data
      end
    end

    # Operation Parser for DescribeUserStackAssociations
    class DescribeUserStackAssociations
      def self.parse(http_resp)
        data = Types::DescribeUserStackAssociationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.user_stack_associations = (Parsers::UserStackAssociationList.parse(map['UserStackAssociations']) unless map['UserStackAssociations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class UserStackAssociationList
      def self.parse(list)
        list.map do |value|
          Parsers::UserStackAssociation.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeUsers
    class DescribeUsers
      def self.parse(http_resp)
        data = Types::DescribeUsersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.users = (Parsers::UserList.parse(map['Users']) unless map['Users'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class UserList
      def self.parse(list)
        list.map do |value|
          Parsers::User.parse(value) unless value.nil?
        end
      end
    end

    class User
      def self.parse(map)
        data = Types::User.new
        data.arn = map['Arn']
        data.user_name = map['UserName']
        data.enabled = map['Enabled']
        data.status = map['Status']
        data.first_name = map['FirstName']
        data.last_name = map['LastName']
        data.created_time = Time.at(map['CreatedTime'].to_i) if map['CreatedTime']
        data.authentication_type = map['AuthenticationType']
        return data
      end
    end

    # Operation Parser for DisableUser
    class DisableUser
      def self.parse(http_resp)
        data = Types::DisableUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateApplicationFleet
    class DisassociateApplicationFleet
      def self.parse(http_resp)
        data = Types::DisassociateApplicationFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateApplicationFromEntitlement
    class DisassociateApplicationFromEntitlement
      def self.parse(http_resp)
        data = Types::DisassociateApplicationFromEntitlementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DisassociateFleet
    class DisassociateFleet
      def self.parse(http_resp)
        data = Types::DisassociateFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for EnableUser
    class EnableUser
      def self.parse(http_resp)
        data = Types::EnableUserOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ExpireSession
    class ExpireSession
      def self.parse(http_resp)
        data = Types::ExpireSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for ListAssociatedFleets
    class ListAssociatedFleets
      def self.parse(http_resp)
        data = Types::ListAssociatedFleetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.names = (Parsers::StringList.parse(map['Names']) unless map['Names'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListAssociatedStacks
    class ListAssociatedStacks
      def self.parse(http_resp)
        data = Types::ListAssociatedStacksOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.names = (Parsers::StringList.parse(map['Names']) unless map['Names'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for ListEntitledApplications
    class ListEntitledApplications
      def self.parse(http_resp)
        data = Types::ListEntitledApplicationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entitled_applications = (Parsers::EntitledApplicationList.parse(map['EntitledApplications']) unless map['EntitledApplications'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EntitledApplicationList
      def self.parse(list)
        list.map do |value|
          Parsers::EntitledApplication.parse(value) unless value.nil?
        end
      end
    end

    class EntitledApplication
      def self.parse(map)
        data = Types::EntitledApplication.new
        data.application_identifier = map['ApplicationIdentifier']
        return data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (Parsers::Tags.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class Tags
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for StartFleet
    class StartFleet
      def self.parse(http_resp)
        data = Types::StartFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StartImageBuilder
    class StartImageBuilder
      def self.parse(http_resp)
        data = Types::StartImageBuilderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image_builder = (Parsers::ImageBuilder.parse(map['ImageBuilder']) unless map['ImageBuilder'].nil?)
        data
      end
    end

    # Operation Parser for StopFleet
    class StopFleet
      def self.parse(http_resp)
        data = Types::StopFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for StopImageBuilder
    class StopImageBuilder
      def self.parse(http_resp)
        data = Types::StopImageBuilderOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.image_builder = (Parsers::ImageBuilder.parse(map['ImageBuilder']) unless map['ImageBuilder'].nil?)
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

    # Operation Parser for UpdateApplication
    class UpdateApplication
      def self.parse(http_resp)
        data = Types::UpdateApplicationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.application = (Parsers::Application.parse(map['Application']) unless map['Application'].nil?)
        data
      end
    end

    # Operation Parser for UpdateDirectoryConfig
    class UpdateDirectoryConfig
      def self.parse(http_resp)
        data = Types::UpdateDirectoryConfigOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.directory_config = (Parsers::DirectoryConfig.parse(map['DirectoryConfig']) unless map['DirectoryConfig'].nil?)
        data
      end
    end

    # Operation Parser for UpdateEntitlement
    class UpdateEntitlement
      def self.parse(http_resp)
        data = Types::UpdateEntitlementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.entitlement = (Parsers::Entitlement.parse(map['Entitlement']) unless map['Entitlement'].nil?)
        data
      end
    end

    # Operation Parser for UpdateFleet
    class UpdateFleet
      def self.parse(http_resp)
        data = Types::UpdateFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet = (Parsers::Fleet.parse(map['Fleet']) unless map['Fleet'].nil?)
        data
      end
    end

    # Operation Parser for UpdateImagePermissions
    class UpdateImagePermissions
      def self.parse(http_resp)
        data = Types::UpdateImagePermissionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for UpdateStack
    class UpdateStack
      def self.parse(http_resp)
        data = Types::UpdateStackOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.stack = (Parsers::Stack.parse(map['Stack']) unless map['Stack'].nil?)
        data
      end
    end
  end
end
