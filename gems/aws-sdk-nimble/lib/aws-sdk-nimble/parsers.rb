# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Nimble
  module Parsers

    # Operation Parser for AcceptEulas
    class AcceptEulas
      def self.parse(http_resp)
        data = Types::AcceptEulasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.eula_acceptances = (Parsers::EulaAcceptanceList.parse(map['eulaAcceptances']) unless map['eulaAcceptances'].nil?)
        data
      end
    end

    class EulaAcceptanceList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::EulaAcceptance.parse(value) unless value.nil?
        end
        data
      end
    end

    class EulaAcceptance
      def self.parse(map)
        data = Types::EulaAcceptance.new
        data.accepted_at = Time.parse(map['acceptedAt']) if map['acceptedAt']
        data.accepted_by = map['acceptedBy']
        data.acceptee_id = map['accepteeId']
        data.eula_acceptance_id = map['eulaAcceptanceId']
        data.eula_id = map['eulaId']
        return data
      end
    end

    # Error Parser for ServiceQuotaExceededException
    class ServiceQuotaExceededException
      def self.parse(http_resp)
        data = Types::ServiceQuotaExceededException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.context = (Parsers::ExceptionContext.parse(map['context']) unless map['context'].nil?)
        data.message = map['message'] || map['Message']
        data
      end
    end

    class ExceptionContext
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Error Parser for InternalServerErrorException
    class InternalServerErrorException
      def self.parse(http_resp)
        data = Types::InternalServerErrorException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.context = (Parsers::ExceptionContext.parse(map['context']) unless map['context'].nil?)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for AccessDeniedException
    class AccessDeniedException
      def self.parse(http_resp)
        data = Types::AccessDeniedException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.context = (Parsers::ExceptionContext.parse(map['context']) unless map['context'].nil?)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.context = (Parsers::ExceptionContext.parse(map['context']) unless map['context'].nil?)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ValidationException
    class ValidationException
      def self.parse(http_resp)
        data = Types::ValidationException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.context = (Parsers::ExceptionContext.parse(map['context']) unless map['context'].nil?)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.context = (Parsers::ExceptionContext.parse(map['context']) unless map['context'].nil?)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for ThrottlingException
    class ThrottlingException
      def self.parse(http_resp)
        data = Types::ThrottlingException.new
        map = Hearth::JSON.load(http_resp.body)
        data.code = map['code']
        data.context = (Parsers::ExceptionContext.parse(map['context']) unless map['context'].nil?)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for CreateLaunchProfile
    class CreateLaunchProfile
      def self.parse(http_resp)
        data = Types::CreateLaunchProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.launch_profile = (Parsers::LaunchProfile.parse(map['launchProfile']) unless map['launchProfile'].nil?)
        data
      end
    end

    class LaunchProfile
      def self.parse(map)
        data = Types::LaunchProfile.new
        data.arn = map['arn']
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.created_by = map['createdBy']
        data.description = map['description']
        data.ec2_subnet_ids = (Parsers::EC2SubnetIdList.parse(map['ec2SubnetIds']) unless map['ec2SubnetIds'].nil?)
        data.launch_profile_id = map['launchProfileId']
        data.launch_profile_protocol_versions = (Parsers::LaunchProfileProtocolVersionList.parse(map['launchProfileProtocolVersions']) unless map['launchProfileProtocolVersions'].nil?)
        data.name = map['name']
        data.state = map['state']
        data.status_code = map['statusCode']
        data.status_message = map['statusMessage']
        data.stream_configuration = (Parsers::StreamConfiguration.parse(map['streamConfiguration']) unless map['streamConfiguration'].nil?)
        data.studio_component_ids = (Parsers::LaunchProfileStudioComponentIdList.parse(map['studioComponentIds']) unless map['studioComponentIds'].nil?)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.updated_at = Time.parse(map['updatedAt']) if map['updatedAt']
        data.updated_by = map['updatedBy']
        data.validation_results = (Parsers::ValidationResults.parse(map['validationResults']) unless map['validationResults'].nil?)
        return data
      end
    end

    class ValidationResults
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ValidationResult.parse(value) unless value.nil?
        end
        data
      end
    end

    class ValidationResult
      def self.parse(map)
        data = Types::ValidationResult.new
        data.type = map['type']
        data.state = map['state']
        data.status_code = map['statusCode']
        data.status_message = map['statusMessage']
        return data
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

    class LaunchProfileStudioComponentIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class StreamConfiguration
      def self.parse(map)
        data = Types::StreamConfiguration.new
        data.clipboard_mode = map['clipboardMode']
        data.ec2_instance_types = (Parsers::StreamingInstanceTypeList.parse(map['ec2InstanceTypes']) unless map['ec2InstanceTypes'].nil?)
        data.max_session_length_in_minutes = map['maxSessionLengthInMinutes']
        data.streaming_image_ids = (Parsers::StreamingImageIdList.parse(map['streamingImageIds']) unless map['streamingImageIds'].nil?)
        data.max_stopped_session_length_in_minutes = map['maxStoppedSessionLengthInMinutes']
        data.session_storage = (Parsers::StreamConfigurationSessionStorage.parse(map['sessionStorage']) unless map['sessionStorage'].nil?)
        return data
      end
    end

    class StreamConfigurationSessionStorage
      def self.parse(map)
        data = Types::StreamConfigurationSessionStorage.new
        data.root = (Parsers::StreamingSessionStorageRoot.parse(map['root']) unless map['root'].nil?)
        data.mode = (Parsers::StreamingSessionStorageModeList.parse(map['mode']) unless map['mode'].nil?)
        return data
      end
    end

    class StreamingSessionStorageModeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class StreamingSessionStorageRoot
      def self.parse(map)
        data = Types::StreamingSessionStorageRoot.new
        data.linux = map['linux']
        data.windows = map['windows']
        return data
      end
    end

    class StreamingImageIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class StreamingInstanceTypeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class LaunchProfileProtocolVersionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class EC2SubnetIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for CreateStreamingImage
    class CreateStreamingImage
      def self.parse(http_resp)
        data = Types::CreateStreamingImageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.streaming_image = (Parsers::StreamingImage.parse(map['streamingImage']) unless map['streamingImage'].nil?)
        data
      end
    end

    class StreamingImage
      def self.parse(map)
        data = Types::StreamingImage.new
        data.arn = map['arn']
        data.description = map['description']
        data.ec2_image_id = map['ec2ImageId']
        data.encryption_configuration = (Parsers::StreamingImageEncryptionConfiguration.parse(map['encryptionConfiguration']) unless map['encryptionConfiguration'].nil?)
        data.eula_ids = (Parsers::EulaIdList.parse(map['eulaIds']) unless map['eulaIds'].nil?)
        data.name = map['name']
        data.owner = map['owner']
        data.platform = map['platform']
        data.state = map['state']
        data.status_code = map['statusCode']
        data.status_message = map['statusMessage']
        data.streaming_image_id = map['streamingImageId']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        return data
      end
    end

    class EulaIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class StreamingImageEncryptionConfiguration
      def self.parse(map)
        data = Types::StreamingImageEncryptionConfiguration.new
        data.key_arn = map['keyArn']
        data.key_type = map['keyType']
        return data
      end
    end

    # Operation Parser for CreateStreamingSession
    class CreateStreamingSession
      def self.parse(http_resp)
        data = Types::CreateStreamingSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.session = (Parsers::StreamingSession.parse(map['session']) unless map['session'].nil?)
        data
      end
    end

    class StreamingSession
      def self.parse(map)
        data = Types::StreamingSession.new
        data.arn = map['arn']
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.created_by = map['createdBy']
        data.ec2_instance_type = map['ec2InstanceType']
        data.launch_profile_id = map['launchProfileId']
        data.owned_by = map['ownedBy']
        data.session_id = map['sessionId']
        data.state = map['state']
        data.status_code = map['statusCode']
        data.status_message = map['statusMessage']
        data.streaming_image_id = map['streamingImageId']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.terminate_at = Time.parse(map['terminateAt']) if map['terminateAt']
        data.updated_at = Time.parse(map['updatedAt']) if map['updatedAt']
        data.updated_by = map['updatedBy']
        data.stopped_at = Time.parse(map['stoppedAt']) if map['stoppedAt']
        data.stopped_by = map['stoppedBy']
        data.started_at = Time.parse(map['startedAt']) if map['startedAt']
        data.started_by = map['startedBy']
        data.stop_at = Time.parse(map['stopAt']) if map['stopAt']
        return data
      end
    end

    # Operation Parser for CreateStreamingSessionStream
    class CreateStreamingSessionStream
      def self.parse(http_resp)
        data = Types::CreateStreamingSessionStreamOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stream = (Parsers::StreamingSessionStream.parse(map['stream']) unless map['stream'].nil?)
        data
      end
    end

    class StreamingSessionStream
      def self.parse(map)
        data = Types::StreamingSessionStream.new
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.created_by = map['createdBy']
        data.expires_at = Time.parse(map['expiresAt']) if map['expiresAt']
        data.owned_by = map['ownedBy']
        data.state = map['state']
        data.status_code = map['statusCode']
        data.stream_id = map['streamId']
        data.url = map['url']
        return data
      end
    end

    # Operation Parser for CreateStudio
    class CreateStudio
      def self.parse(http_resp)
        data = Types::CreateStudioOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.studio = (Parsers::Studio.parse(map['studio']) unless map['studio'].nil?)
        data
      end
    end

    class Studio
      def self.parse(map)
        data = Types::Studio.new
        data.admin_role_arn = map['adminRoleArn']
        data.arn = map['arn']
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.display_name = map['displayName']
        data.home_region = map['homeRegion']
        data.sso_client_id = map['ssoClientId']
        data.state = map['state']
        data.status_code = map['statusCode']
        data.status_message = map['statusMessage']
        data.studio_encryption_configuration = (Parsers::StudioEncryptionConfiguration.parse(map['studioEncryptionConfiguration']) unless map['studioEncryptionConfiguration'].nil?)
        data.studio_id = map['studioId']
        data.studio_name = map['studioName']
        data.studio_url = map['studioUrl']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.updated_at = Time.parse(map['updatedAt']) if map['updatedAt']
        data.user_role_arn = map['userRoleArn']
        return data
      end
    end

    class StudioEncryptionConfiguration
      def self.parse(map)
        data = Types::StudioEncryptionConfiguration.new
        data.key_arn = map['keyArn']
        data.key_type = map['keyType']
        return data
      end
    end

    # Operation Parser for CreateStudioComponent
    class CreateStudioComponent
      def self.parse(http_resp)
        data = Types::CreateStudioComponentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.studio_component = (Parsers::StudioComponent.parse(map['studioComponent']) unless map['studioComponent'].nil?)
        data
      end
    end

    class StudioComponent
      def self.parse(map)
        data = Types::StudioComponent.new
        data.arn = map['arn']
        data.configuration = (Parsers::StudioComponentConfiguration.parse(map['configuration']) unless map['configuration'].nil?)
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.created_by = map['createdBy']
        data.description = map['description']
        data.ec2_security_group_ids = (Parsers::StudioComponentSecurityGroupIdList.parse(map['ec2SecurityGroupIds']) unless map['ec2SecurityGroupIds'].nil?)
        data.initialization_scripts = (Parsers::StudioComponentInitializationScriptList.parse(map['initializationScripts']) unless map['initializationScripts'].nil?)
        data.name = map['name']
        data.script_parameters = (Parsers::StudioComponentScriptParameterKeyValueList.parse(map['scriptParameters']) unless map['scriptParameters'].nil?)
        data.state = map['state']
        data.status_code = map['statusCode']
        data.status_message = map['statusMessage']
        data.studio_component_id = map['studioComponentId']
        data.subtype = map['subtype']
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data.type = map['type']
        data.updated_at = Time.parse(map['updatedAt']) if map['updatedAt']
        data.updated_by = map['updatedBy']
        data.secure_initialization_role_arn = map['secureInitializationRoleArn']
        data.runtime_role_arn = map['runtimeRoleArn']
        return data
      end
    end

    class StudioComponentScriptParameterKeyValueList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ScriptParameterKeyValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class ScriptParameterKeyValue
      def self.parse(map)
        data = Types::ScriptParameterKeyValue.new
        data.key = map['key']
        data.value = map['value']
        return data
      end
    end

    class StudioComponentInitializationScriptList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StudioComponentInitializationScript.parse(value) unless value.nil?
        end
        data
      end
    end

    class StudioComponentInitializationScript
      def self.parse(map)
        data = Types::StudioComponentInitializationScript.new
        data.launch_profile_protocol_version = map['launchProfileProtocolVersion']
        data.platform = map['platform']
        data.run_context = map['runContext']
        data.script = map['script']
        return data
      end
    end

    class StudioComponentSecurityGroupIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class StudioComponentConfiguration
      def self.parse(map)
        key, value = map.flatten
        case key
        when 'activeDirectoryConfiguration'
          value = (Parsers::ActiveDirectoryConfiguration.parse(value) unless value.nil?)
          Types::StudioComponentConfiguration::ActiveDirectoryConfiguration.new(value) if value
        when 'computeFarmConfiguration'
          value = (Parsers::ComputeFarmConfiguration.parse(value) unless value.nil?)
          Types::StudioComponentConfiguration::ComputeFarmConfiguration.new(value) if value
        when 'licenseServiceConfiguration'
          value = (Parsers::LicenseServiceConfiguration.parse(value) unless value.nil?)
          Types::StudioComponentConfiguration::LicenseServiceConfiguration.new(value) if value
        when 'sharedFileSystemConfiguration'
          value = (Parsers::SharedFileSystemConfiguration.parse(value) unless value.nil?)
          Types::StudioComponentConfiguration::SharedFileSystemConfiguration.new(value) if value
        else
          Types::StudioComponentConfiguration::Unknown.new({name: key, value: value})
        end
      end
    end

    class SharedFileSystemConfiguration
      def self.parse(map)
        data = Types::SharedFileSystemConfiguration.new
        data.endpoint = map['endpoint']
        data.file_system_id = map['fileSystemId']
        data.linux_mount_point = map['linuxMountPoint']
        data.share_name = map['shareName']
        data.windows_mount_drive = map['windowsMountDrive']
        return data
      end
    end

    class LicenseServiceConfiguration
      def self.parse(map)
        data = Types::LicenseServiceConfiguration.new
        data.endpoint = map['endpoint']
        return data
      end
    end

    class ComputeFarmConfiguration
      def self.parse(map)
        data = Types::ComputeFarmConfiguration.new
        data.active_directory_user = map['activeDirectoryUser']
        data.endpoint = map['endpoint']
        return data
      end
    end

    class ActiveDirectoryConfiguration
      def self.parse(map)
        data = Types::ActiveDirectoryConfiguration.new
        data.computer_attributes = (Parsers::ActiveDirectoryComputerAttributeList.parse(map['computerAttributes']) unless map['computerAttributes'].nil?)
        data.directory_id = map['directoryId']
        data.organizational_unit_distinguished_name = map['organizationalUnitDistinguishedName']
        return data
      end
    end

    class ActiveDirectoryComputerAttributeList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::ActiveDirectoryComputerAttribute.parse(value) unless value.nil?
        end
        data
      end
    end

    class ActiveDirectoryComputerAttribute
      def self.parse(map)
        data = Types::ActiveDirectoryComputerAttribute.new
        data.name = map['name']
        data.value = map['value']
        return data
      end
    end

    # Operation Parser for DeleteLaunchProfile
    class DeleteLaunchProfile
      def self.parse(http_resp)
        data = Types::DeleteLaunchProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.launch_profile = (Parsers::LaunchProfile.parse(map['launchProfile']) unless map['launchProfile'].nil?)
        data
      end
    end

    # Operation Parser for DeleteLaunchProfileMember
    class DeleteLaunchProfileMember
      def self.parse(http_resp)
        data = Types::DeleteLaunchProfileMemberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for DeleteStreamingImage
    class DeleteStreamingImage
      def self.parse(http_resp)
        data = Types::DeleteStreamingImageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.streaming_image = (Parsers::StreamingImage.parse(map['streamingImage']) unless map['streamingImage'].nil?)
        data
      end
    end

    # Operation Parser for DeleteStreamingSession
    class DeleteStreamingSession
      def self.parse(http_resp)
        data = Types::DeleteStreamingSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.session = (Parsers::StreamingSession.parse(map['session']) unless map['session'].nil?)
        data
      end
    end

    # Operation Parser for DeleteStudio
    class DeleteStudio
      def self.parse(http_resp)
        data = Types::DeleteStudioOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.studio = (Parsers::Studio.parse(map['studio']) unless map['studio'].nil?)
        data
      end
    end

    # Operation Parser for DeleteStudioComponent
    class DeleteStudioComponent
      def self.parse(http_resp)
        data = Types::DeleteStudioComponentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.studio_component = (Parsers::StudioComponent.parse(map['studioComponent']) unless map['studioComponent'].nil?)
        data
      end
    end

    # Operation Parser for DeleteStudioMember
    class DeleteStudioMember
      def self.parse(http_resp)
        data = Types::DeleteStudioMemberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for GetEula
    class GetEula
      def self.parse(http_resp)
        data = Types::GetEulaOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.eula = (Parsers::Eula.parse(map['eula']) unless map['eula'].nil?)
        data
      end
    end

    class Eula
      def self.parse(map)
        data = Types::Eula.new
        data.content = map['content']
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.eula_id = map['eulaId']
        data.name = map['name']
        data.updated_at = Time.parse(map['updatedAt']) if map['updatedAt']
        return data
      end
    end

    # Operation Parser for GetLaunchProfile
    class GetLaunchProfile
      def self.parse(http_resp)
        data = Types::GetLaunchProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.launch_profile = (Parsers::LaunchProfile.parse(map['launchProfile']) unless map['launchProfile'].nil?)
        data
      end
    end

    # Operation Parser for GetLaunchProfileDetails
    class GetLaunchProfileDetails
      def self.parse(http_resp)
        data = Types::GetLaunchProfileDetailsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.launch_profile = (Parsers::LaunchProfile.parse(map['launchProfile']) unless map['launchProfile'].nil?)
        data.streaming_images = (Parsers::StreamingImageList.parse(map['streamingImages']) unless map['streamingImages'].nil?)
        data.studio_component_summaries = (Parsers::StudioComponentSummaryList.parse(map['studioComponentSummaries']) unless map['studioComponentSummaries'].nil?)
        data
      end
    end

    class StudioComponentSummaryList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StudioComponentSummary.parse(value) unless value.nil?
        end
        data
      end
    end

    class StudioComponentSummary
      def self.parse(map)
        data = Types::StudioComponentSummary.new
        data.created_at = Time.parse(map['createdAt']) if map['createdAt']
        data.created_by = map['createdBy']
        data.description = map['description']
        data.name = map['name']
        data.studio_component_id = map['studioComponentId']
        data.subtype = map['subtype']
        data.type = map['type']
        data.updated_at = Time.parse(map['updatedAt']) if map['updatedAt']
        data.updated_by = map['updatedBy']
        return data
      end
    end

    class StreamingImageList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StreamingImage.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetLaunchProfileInitialization
    class GetLaunchProfileInitialization
      def self.parse(http_resp)
        data = Types::GetLaunchProfileInitializationOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.launch_profile_initialization = (Parsers::LaunchProfileInitialization.parse(map['launchProfileInitialization']) unless map['launchProfileInitialization'].nil?)
        data
      end
    end

    class LaunchProfileInitialization
      def self.parse(map)
        data = Types::LaunchProfileInitialization.new
        data.active_directory = (Parsers::LaunchProfileInitializationActiveDirectory.parse(map['activeDirectory']) unless map['activeDirectory'].nil?)
        data.ec2_security_group_ids = (Parsers::LaunchProfileSecurityGroupIdList.parse(map['ec2SecurityGroupIds']) unless map['ec2SecurityGroupIds'].nil?)
        data.launch_profile_id = map['launchProfileId']
        data.launch_profile_protocol_version = map['launchProfileProtocolVersion']
        data.launch_purpose = map['launchPurpose']
        data.name = map['name']
        data.platform = map['platform']
        data.system_initialization_scripts = (Parsers::LaunchProfileInitializationScriptList.parse(map['systemInitializationScripts']) unless map['systemInitializationScripts'].nil?)
        data.user_initialization_scripts = (Parsers::LaunchProfileInitializationScriptList.parse(map['userInitializationScripts']) unless map['userInitializationScripts'].nil?)
        return data
      end
    end

    class LaunchProfileInitializationScriptList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::LaunchProfileInitializationScript.parse(value) unless value.nil?
        end
        data
      end
    end

    class LaunchProfileInitializationScript
      def self.parse(map)
        data = Types::LaunchProfileInitializationScript.new
        data.script = map['script']
        data.studio_component_id = map['studioComponentId']
        data.studio_component_name = map['studioComponentName']
        data.secure_initialization_role_arn = map['secureInitializationRoleArn']
        data.runtime_role_arn = map['runtimeRoleArn']
        return data
      end
    end

    class LaunchProfileSecurityGroupIdList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    class LaunchProfileInitializationActiveDirectory
      def self.parse(map)
        data = Types::LaunchProfileInitializationActiveDirectory.new
        data.computer_attributes = (Parsers::ActiveDirectoryComputerAttributeList.parse(map['computerAttributes']) unless map['computerAttributes'].nil?)
        data.directory_id = map['directoryId']
        data.directory_name = map['directoryName']
        data.dns_ip_addresses = (Parsers::ActiveDirectoryDnsIpAddressList.parse(map['dnsIpAddresses']) unless map['dnsIpAddresses'].nil?)
        data.organizational_unit_distinguished_name = map['organizationalUnitDistinguishedName']
        data.studio_component_id = map['studioComponentId']
        data.studio_component_name = map['studioComponentName']
        return data
      end
    end

    class ActiveDirectoryDnsIpAddressList
      def self.parse(list)
        data = []
        list.map do |value|
          data << value unless value.nil?
        end
        data
      end
    end

    # Operation Parser for GetLaunchProfileMember
    class GetLaunchProfileMember
      def self.parse(http_resp)
        data = Types::GetLaunchProfileMemberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.member = (Parsers::LaunchProfileMembership.parse(map['member']) unless map['member'].nil?)
        data
      end
    end

    class LaunchProfileMembership
      def self.parse(map)
        data = Types::LaunchProfileMembership.new
        data.identity_store_id = map['identityStoreId']
        data.persona = map['persona']
        data.principal_id = map['principalId']
        data.sid = map['sid']
        return data
      end
    end

    # Operation Parser for GetStreamingImage
    class GetStreamingImage
      def self.parse(http_resp)
        data = Types::GetStreamingImageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.streaming_image = (Parsers::StreamingImage.parse(map['streamingImage']) unless map['streamingImage'].nil?)
        data
      end
    end

    # Operation Parser for GetStreamingSession
    class GetStreamingSession
      def self.parse(http_resp)
        data = Types::GetStreamingSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.session = (Parsers::StreamingSession.parse(map['session']) unless map['session'].nil?)
        data
      end
    end

    # Operation Parser for GetStreamingSessionStream
    class GetStreamingSessionStream
      def self.parse(http_resp)
        data = Types::GetStreamingSessionStreamOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.stream = (Parsers::StreamingSessionStream.parse(map['stream']) unless map['stream'].nil?)
        data
      end
    end

    # Operation Parser for GetStudio
    class GetStudio
      def self.parse(http_resp)
        data = Types::GetStudioOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.studio = (Parsers::Studio.parse(map['studio']) unless map['studio'].nil?)
        data
      end
    end

    # Operation Parser for GetStudioComponent
    class GetStudioComponent
      def self.parse(http_resp)
        data = Types::GetStudioComponentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.studio_component = (Parsers::StudioComponent.parse(map['studioComponent']) unless map['studioComponent'].nil?)
        data
      end
    end

    # Operation Parser for GetStudioMember
    class GetStudioMember
      def self.parse(http_resp)
        data = Types::GetStudioMemberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.member = (Parsers::StudioMembership.parse(map['member']) unless map['member'].nil?)
        data
      end
    end

    class StudioMembership
      def self.parse(map)
        data = Types::StudioMembership.new
        data.identity_store_id = map['identityStoreId']
        data.persona = map['persona']
        data.principal_id = map['principalId']
        data.sid = map['sid']
        return data
      end
    end

    # Operation Parser for ListEulaAcceptances
    class ListEulaAcceptances
      def self.parse(http_resp)
        data = Types::ListEulaAcceptancesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.eula_acceptances = (Parsers::EulaAcceptanceList.parse(map['eulaAcceptances']) unless map['eulaAcceptances'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    # Operation Parser for ListEulas
    class ListEulas
      def self.parse(http_resp)
        data = Types::ListEulasOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.eulas = (Parsers::EulaList.parse(map['eulas']) unless map['eulas'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class EulaList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Eula.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListLaunchProfileMembers
    class ListLaunchProfileMembers
      def self.parse(http_resp)
        data = Types::ListLaunchProfileMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.members = (Parsers::LaunchProfileMembershipList.parse(map['members']) unless map['members'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class LaunchProfileMembershipList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::LaunchProfileMembership.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListLaunchProfiles
    class ListLaunchProfiles
      def self.parse(http_resp)
        data = Types::ListLaunchProfilesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.launch_profiles = (Parsers::LaunchProfileList.parse(map['launchProfiles']) unless map['launchProfiles'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class LaunchProfileList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::LaunchProfile.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListStreamingImages
    class ListStreamingImages
      def self.parse(http_resp)
        data = Types::ListStreamingImagesOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.streaming_images = (Parsers::StreamingImageList.parse(map['streamingImages']) unless map['streamingImages'].nil?)
        data
      end
    end

    # Operation Parser for ListStreamingSessions
    class ListStreamingSessions
      def self.parse(http_resp)
        data = Types::ListStreamingSessionsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.sessions = (Parsers::StreamingSessionList.parse(map['sessions']) unless map['sessions'].nil?)
        data
      end
    end

    class StreamingSessionList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StreamingSession.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListStudioComponents
    class ListStudioComponents
      def self.parse(http_resp)
        data = Types::ListStudioComponentsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.studio_components = (Parsers::StudioComponentList.parse(map['studioComponents']) unless map['studioComponents'].nil?)
        data
      end
    end

    class StudioComponentList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StudioComponent.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListStudioMembers
    class ListStudioMembers
      def self.parse(http_resp)
        data = Types::ListStudioMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.members = (Parsers::StudioMembershipList.parse(map['members']) unless map['members'].nil?)
        data.next_token = map['nextToken']
        data
      end
    end

    class StudioMembershipList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::StudioMembership.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListStudios
    class ListStudios
      def self.parse(http_resp)
        data = Types::ListStudiosOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.next_token = map['nextToken']
        data.studios = (Parsers::StudioList.parse(map['studios']) unless map['studios'].nil?)
        data
      end
    end

    class StudioList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::Studio.parse(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.tags = (Parsers::Tags.parse(map['tags']) unless map['tags'].nil?)
        data
      end
    end

    # Operation Parser for PutLaunchProfileMembers
    class PutLaunchProfileMembers
      def self.parse(http_resp)
        data = Types::PutLaunchProfileMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for PutStudioMembers
    class PutStudioMembers
      def self.parse(http_resp)
        data = Types::PutStudioMembersOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for StartStreamingSession
    class StartStreamingSession
      def self.parse(http_resp)
        data = Types::StartStreamingSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.session = (Parsers::StreamingSession.parse(map['session']) unless map['session'].nil?)
        data
      end
    end

    # Operation Parser for StartStudioSSOConfigurationRepair
    class StartStudioSSOConfigurationRepair
      def self.parse(http_resp)
        data = Types::StartStudioSSOConfigurationRepairOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.studio = (Parsers::Studio.parse(map['studio']) unless map['studio'].nil?)
        data
      end
    end

    # Operation Parser for StopStreamingSession
    class StopStreamingSession
      def self.parse(http_resp)
        data = Types::StopStreamingSessionOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.session = (Parsers::StreamingSession.parse(map['session']) unless map['session'].nil?)
        data
      end
    end

    # Operation Parser for TagResource
    class TagResource
      def self.parse(http_resp)
        data = Types::TagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UntagResource
    class UntagResource
      def self.parse(http_resp)
        data = Types::UntagResourceOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data
      end
    end

    # Operation Parser for UpdateLaunchProfile
    class UpdateLaunchProfile
      def self.parse(http_resp)
        data = Types::UpdateLaunchProfileOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.launch_profile = (Parsers::LaunchProfile.parse(map['launchProfile']) unless map['launchProfile'].nil?)
        data
      end
    end

    # Operation Parser for UpdateLaunchProfileMember
    class UpdateLaunchProfileMember
      def self.parse(http_resp)
        data = Types::UpdateLaunchProfileMemberOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.member = (Parsers::LaunchProfileMembership.parse(map['member']) unless map['member'].nil?)
        data
      end
    end

    # Operation Parser for UpdateStreamingImage
    class UpdateStreamingImage
      def self.parse(http_resp)
        data = Types::UpdateStreamingImageOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.streaming_image = (Parsers::StreamingImage.parse(map['streamingImage']) unless map['streamingImage'].nil?)
        data
      end
    end

    # Operation Parser for UpdateStudio
    class UpdateStudio
      def self.parse(http_resp)
        data = Types::UpdateStudioOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.studio = (Parsers::Studio.parse(map['studio']) unless map['studio'].nil?)
        data
      end
    end

    # Operation Parser for UpdateStudioComponent
    class UpdateStudioComponent
      def self.parse(http_resp)
        data = Types::UpdateStudioComponentOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.studio_component = (Parsers::StudioComponent.parse(map['studioComponent']) unless map['studioComponent'].nil?)
        data
      end
    end
  end
end
