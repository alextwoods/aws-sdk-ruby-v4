# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Nimble
  module Builders

    # Operation Builder for AcceptEulas
    class AcceptEulas
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/eula-acceptances',
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['eulaIds'] = Builders::EulaIdList.build(input[:eula_ids]) unless input[:eula_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # List Builder for EulaIdList
    class EulaIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateLaunchProfile
    class CreateLaunchProfile
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/launch-profiles',
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['ec2SubnetIds'] = Builders::EC2SubnetIdList.build(input[:ec2_subnet_ids]) unless input[:ec2_subnet_ids].nil?
        data['launchProfileProtocolVersions'] = Builders::LaunchProfileProtocolVersionList.build(input[:launch_profile_protocol_versions]) unless input[:launch_profile_protocol_versions].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['streamConfiguration'] = Builders::StreamConfigurationCreate.build(input[:stream_configuration]) unless input[:stream_configuration].nil?
        data['studioComponentIds'] = Builders::LaunchProfileStudioComponentIdList.build(input[:studio_component_ids]) unless input[:studio_component_ids].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
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

    # List Builder for LaunchProfileStudioComponentIdList
    class LaunchProfileStudioComponentIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StreamConfigurationCreate
    class StreamConfigurationCreate
      def self.build(input)
        data = {}
        data['clipboardMode'] = input[:clipboard_mode] unless input[:clipboard_mode].nil?
        data['ec2InstanceTypes'] = Builders::StreamingInstanceTypeList.build(input[:ec2_instance_types]) unless input[:ec2_instance_types].nil?
        data['maxSessionLengthInMinutes'] = input[:max_session_length_in_minutes] unless input[:max_session_length_in_minutes].nil?
        data['streamingImageIds'] = Builders::StreamingImageIdList.build(input[:streaming_image_ids]) unless input[:streaming_image_ids].nil?
        data['maxStoppedSessionLengthInMinutes'] = input[:max_stopped_session_length_in_minutes] unless input[:max_stopped_session_length_in_minutes].nil?
        data['sessionStorage'] = Builders::StreamConfigurationSessionStorage.build(input[:session_storage]) unless input[:session_storage].nil?
        data
      end
    end

    # Structure Builder for StreamConfigurationSessionStorage
    class StreamConfigurationSessionStorage
      def self.build(input)
        data = {}
        data['root'] = Builders::StreamingSessionStorageRoot.build(input[:root]) unless input[:root].nil?
        data['mode'] = Builders::StreamingSessionStorageModeList.build(input[:mode]) unless input[:mode].nil?
        data
      end
    end

    # List Builder for StreamingSessionStorageModeList
    class StreamingSessionStorageModeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StreamingSessionStorageRoot
    class StreamingSessionStorageRoot
      def self.build(input)
        data = {}
        data['linux'] = input[:linux] unless input[:linux].nil?
        data['windows'] = input[:windows] unless input[:windows].nil?
        data
      end
    end

    # List Builder for StreamingImageIdList
    class StreamingImageIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for StreamingInstanceTypeList
    class StreamingInstanceTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for LaunchProfileProtocolVersionList
    class LaunchProfileProtocolVersionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for EC2SubnetIdList
    class EC2SubnetIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateStreamingImage
    class CreateStreamingImage
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/streaming-images',
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['ec2ImageId'] = input[:ec2_image_id] unless input[:ec2_image_id].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for CreateStreamingSession
    class CreateStreamingSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/streaming-sessions',
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['ec2InstanceType'] = input[:ec2_instance_type] unless input[:ec2_instance_type].nil?
        data['launchProfileId'] = input[:launch_profile_id] unless input[:launch_profile_id].nil?
        data['ownedBy'] = input[:owned_by] unless input[:owned_by].nil?
        data['streamingImageId'] = input[:streaming_image_id] unless input[:streaming_image_id].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for CreateStreamingSessionStream
    class CreateStreamingSessionStream
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/streaming-sessions/%<sessionId>s/streams',
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['expirationInSeconds'] = input[:expiration_in_seconds] unless input[:expiration_in_seconds].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for CreateStudio
    class CreateStudio
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/2020-08-01/studios')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['adminRoleArn'] = input[:admin_role_arn] unless input[:admin_role_arn].nil?
        data['displayName'] = input[:display_name] unless input[:display_name].nil?
        data['studioEncryptionConfiguration'] = Builders::StudioEncryptionConfiguration.build(input[:studio_encryption_configuration]) unless input[:studio_encryption_configuration].nil?
        data['studioName'] = input[:studio_name] unless input[:studio_name].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['userRoleArn'] = input[:user_role_arn] unless input[:user_role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Structure Builder for StudioEncryptionConfiguration
    class StudioEncryptionConfiguration
      def self.build(input)
        data = {}
        data['keyArn'] = input[:key_arn] unless input[:key_arn].nil?
        data['keyType'] = input[:key_type] unless input[:key_type].nil?
        data
      end
    end

    # Operation Builder for CreateStudioComponent
    class CreateStudioComponent
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/studio-components',
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['configuration'] = Builders::StudioComponentConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['ec2SecurityGroupIds'] = Builders::StudioComponentSecurityGroupIdList.build(input[:ec2_security_group_ids]) unless input[:ec2_security_group_ids].nil?
        data['initializationScripts'] = Builders::StudioComponentInitializationScriptList.build(input[:initialization_scripts]) unless input[:initialization_scripts].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['scriptParameters'] = Builders::StudioComponentScriptParameterKeyValueList.build(input[:script_parameters]) unless input[:script_parameters].nil?
        data['subtype'] = input[:subtype] unless input[:subtype].nil?
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['secureInitializationRoleArn'] = input[:secure_initialization_role_arn] unless input[:secure_initialization_role_arn].nil?
        data['runtimeRoleArn'] = input[:runtime_role_arn] unless input[:runtime_role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # List Builder for StudioComponentScriptParameterKeyValueList
    class StudioComponentScriptParameterKeyValueList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ScriptParameterKeyValue.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ScriptParameterKeyValue
    class ScriptParameterKeyValue
      def self.build(input)
        data = {}
        data['key'] = input[:key] unless input[:key].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # List Builder for StudioComponentInitializationScriptList
    class StudioComponentInitializationScriptList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::StudioComponentInitializationScript.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StudioComponentInitializationScript
    class StudioComponentInitializationScript
      def self.build(input)
        data = {}
        data['launchProfileProtocolVersion'] = input[:launch_profile_protocol_version] unless input[:launch_profile_protocol_version].nil?
        data['platform'] = input[:platform] unless input[:platform].nil?
        data['runContext'] = input[:run_context] unless input[:run_context].nil?
        data['script'] = input[:script] unless input[:script].nil?
        data
      end
    end

    # List Builder for StudioComponentSecurityGroupIdList
    class StudioComponentSecurityGroupIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for StudioComponentConfiguration
    class StudioComponentConfiguration
      def self.build(input)
        data = {}
        case input
        when Types::StudioComponentConfiguration::ActiveDirectoryConfiguration
          data['activeDirectoryConfiguration'] = (Builders::ActiveDirectoryConfiguration.build(input) unless input.nil?)
        when Types::StudioComponentConfiguration::ComputeFarmConfiguration
          data['computeFarmConfiguration'] = (Builders::ComputeFarmConfiguration.build(input) unless input.nil?)
        when Types::StudioComponentConfiguration::LicenseServiceConfiguration
          data['licenseServiceConfiguration'] = (Builders::LicenseServiceConfiguration.build(input) unless input.nil?)
        when Types::StudioComponentConfiguration::SharedFileSystemConfiguration
          data['sharedFileSystemConfiguration'] = (Builders::SharedFileSystemConfiguration.build(input) unless input.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::StudioComponentConfiguration"
        end

        data
      end
    end

    # Structure Builder for SharedFileSystemConfiguration
    class SharedFileSystemConfiguration
      def self.build(input)
        data = {}
        data['endpoint'] = input[:endpoint] unless input[:endpoint].nil?
        data['fileSystemId'] = input[:file_system_id] unless input[:file_system_id].nil?
        data['linuxMountPoint'] = input[:linux_mount_point] unless input[:linux_mount_point].nil?
        data['shareName'] = input[:share_name] unless input[:share_name].nil?
        data['windowsMountDrive'] = input[:windows_mount_drive] unless input[:windows_mount_drive].nil?
        data
      end
    end

    # Structure Builder for LicenseServiceConfiguration
    class LicenseServiceConfiguration
      def self.build(input)
        data = {}
        data['endpoint'] = input[:endpoint] unless input[:endpoint].nil?
        data
      end
    end

    # Structure Builder for ComputeFarmConfiguration
    class ComputeFarmConfiguration
      def self.build(input)
        data = {}
        data['activeDirectoryUser'] = input[:active_directory_user] unless input[:active_directory_user].nil?
        data['endpoint'] = input[:endpoint] unless input[:endpoint].nil?
        data
      end
    end

    # Structure Builder for ActiveDirectoryConfiguration
    class ActiveDirectoryConfiguration
      def self.build(input)
        data = {}
        data['computerAttributes'] = Builders::ActiveDirectoryComputerAttributeList.build(input[:computer_attributes]) unless input[:computer_attributes].nil?
        data['directoryId'] = input[:directory_id] unless input[:directory_id].nil?
        data['organizationalUnitDistinguishedName'] = input[:organizational_unit_distinguished_name] unless input[:organizational_unit_distinguished_name].nil?
        data
      end
    end

    # List Builder for ActiveDirectoryComputerAttributeList
    class ActiveDirectoryComputerAttributeList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ActiveDirectoryComputerAttribute.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ActiveDirectoryComputerAttribute
    class ActiveDirectoryComputerAttribute
      def self.build(input)
        data = {}
        data['name'] = input[:name] unless input[:name].nil?
        data['value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for DeleteLaunchProfile
    class DeleteLaunchProfile
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:launch_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :launch_profile_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/launch-profiles/%<launchProfileId>s',
            launchProfileId: Hearth::HTTP.uri_escape(input[:launch_profile_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for DeleteLaunchProfileMember
    class DeleteLaunchProfileMember
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:launch_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :launch_profile_id cannot be nil or empty."
        end
        if input[:principal_id].to_s.empty?
          raise ArgumentError, "HTTP label :principal_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/launch-profiles/%<launchProfileId>s/membership/%<principalId>s',
            launchProfileId: Hearth::HTTP.uri_escape(input[:launch_profile_id].to_s),
            principalId: Hearth::HTTP.uri_escape(input[:principal_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for DeleteStreamingImage
    class DeleteStreamingImage
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:streaming_image_id].to_s.empty?
          raise ArgumentError, "HTTP label :streaming_image_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/streaming-images/%<streamingImageId>s',
            streamingImageId: Hearth::HTTP.uri_escape(input[:streaming_image_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for DeleteStreamingSession
    class DeleteStreamingSession
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/streaming-sessions/%<sessionId>s',
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for DeleteStudio
    class DeleteStudio
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s',
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for DeleteStudioComponent
    class DeleteStudioComponent
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:studio_component_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_component_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/studio-components/%<studioComponentId>s',
            studioComponentId: Hearth::HTTP.uri_escape(input[:studio_component_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for DeleteStudioMember
    class DeleteStudioMember
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:principal_id].to_s.empty?
          raise ArgumentError, "HTTP label :principal_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/membership/%<principalId>s',
            principalId: Hearth::HTTP.uri_escape(input[:principal_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for GetEula
    class GetEula
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:eula_id].to_s.empty?
          raise ArgumentError, "HTTP label :eula_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/eulas/%<eulaId>s',
            eulaId: Hearth::HTTP.uri_escape(input[:eula_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetLaunchProfile
    class GetLaunchProfile
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:launch_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :launch_profile_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/launch-profiles/%<launchProfileId>s',
            launchProfileId: Hearth::HTTP.uri_escape(input[:launch_profile_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetLaunchProfileDetails
    class GetLaunchProfileDetails
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:launch_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :launch_profile_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/launch-profiles/%<launchProfileId>s/details',
            launchProfileId: Hearth::HTTP.uri_escape(input[:launch_profile_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetLaunchProfileInitialization
    class GetLaunchProfileInitialization
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:launch_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :launch_profile_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/launch-profiles/%<launchProfileId>s/init',
            launchProfileId: Hearth::HTTP.uri_escape(input[:launch_profile_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:launch_profile_protocol_versions].nil? || input[:launch_profile_protocol_versions].empty?
          params['launchProfileProtocolVersions'] = input[:launch_profile_protocol_versions].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['launchPurpose'] = input[:launch_purpose].to_s unless input[:launch_purpose].nil?
        params['platform'] = input[:platform].to_s unless input[:platform].nil?
        http_req.append_query_params(params)
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

    # Operation Builder for GetLaunchProfileMember
    class GetLaunchProfileMember
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:launch_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :launch_profile_id cannot be nil or empty."
        end
        if input[:principal_id].to_s.empty?
          raise ArgumentError, "HTTP label :principal_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/launch-profiles/%<launchProfileId>s/membership/%<principalId>s',
            launchProfileId: Hearth::HTTP.uri_escape(input[:launch_profile_id].to_s),
            principalId: Hearth::HTTP.uri_escape(input[:principal_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetStreamingImage
    class GetStreamingImage
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:streaming_image_id].to_s.empty?
          raise ArgumentError, "HTTP label :streaming_image_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/streaming-images/%<streamingImageId>s',
            streamingImageId: Hearth::HTTP.uri_escape(input[:streaming_image_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetStreamingSession
    class GetStreamingSession
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/streaming-sessions/%<sessionId>s',
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetStreamingSessionStream
    class GetStreamingSessionStream
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be nil or empty."
        end
        if input[:stream_id].to_s.empty?
          raise ArgumentError, "HTTP label :stream_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/streaming-sessions/%<sessionId>s/streams/%<streamId>s',
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s),
            streamId: Hearth::HTTP.uri_escape(input[:stream_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetStudio
    class GetStudio
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s',
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetStudioComponent
    class GetStudioComponent
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:studio_component_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_component_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/studio-components/%<studioComponentId>s',
            studioComponentId: Hearth::HTTP.uri_escape(input[:studio_component_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for GetStudioMember
    class GetStudioMember
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:principal_id].to_s.empty?
          raise ArgumentError, "HTTP label :principal_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/membership/%<principalId>s',
            principalId: Hearth::HTTP.uri_escape(input[:principal_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListEulaAcceptances
    class ListEulaAcceptances
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/eula-acceptances',
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:eula_ids].nil? || input[:eula_ids].empty?
          params['eulaIds'] = input[:eula_ids].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListEulas
    class ListEulas
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2020-08-01/eulas')
        params = Hearth::Query::ParamList.new
        unless input[:eula_ids].nil? || input[:eula_ids].empty?
          params['eulaIds'] = input[:eula_ids].map do |value|
            value.to_s unless value.nil?
          end
        end
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListLaunchProfileMembers
    class ListLaunchProfileMembers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:launch_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :launch_profile_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/launch-profiles/%<launchProfileId>s/membership',
            launchProfileId: Hearth::HTTP.uri_escape(input[:launch_profile_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListLaunchProfiles
    class ListLaunchProfiles
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/launch-profiles',
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['principalId'] = input[:principal_id].to_s unless input[:principal_id].nil?
        unless input[:states].nil? || input[:states].empty?
          params['states'] = input[:states].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for LaunchProfileStateList
    class LaunchProfileStateList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListStreamingImages
    class ListStreamingImages
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/streaming-images',
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['owner'] = input[:owner].to_s unless input[:owner].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListStreamingSessions
    class ListStreamingSessions
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/streaming-sessions',
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['createdBy'] = input[:created_by].to_s unless input[:created_by].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        params['ownedBy'] = input[:owned_by].to_s unless input[:owned_by].nil?
        params['sessionIds'] = input[:session_ids].to_s unless input[:session_ids].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListStudioComponents
    class ListStudioComponents
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/studio-components',
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        unless input[:states].nil? || input[:states].empty?
          params['states'] = input[:states].map do |value|
            value.to_s unless value.nil?
          end
        end
        unless input[:types].nil? || input[:types].empty?
          params['types'] = input[:types].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # List Builder for StudioComponentTypeList
    class StudioComponentTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for StudioComponentStateList
    class StudioComponentStateList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for ListStudioMembers
    class ListStudioMembers
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/membership',
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        params['maxResults'] = input[:max_results].to_s unless input[:max_results].nil?
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListStudios
    class ListStudios
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        http_req.append_path('/2020-08-01/studios')
        params = Hearth::Query::ParamList.new
        params['nextToken'] = input[:next_token].to_s unless input[:next_token].nil?
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'GET'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for PutLaunchProfileMembers
    class PutLaunchProfileMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:launch_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :launch_profile_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/launch-profiles/%<launchProfileId>s/membership',
            launchProfileId: Hearth::HTTP.uri_escape(input[:launch_profile_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['identityStoreId'] = input[:identity_store_id] unless input[:identity_store_id].nil?
        data['members'] = Builders::NewLaunchProfileMemberList.build(input[:members]) unless input[:members].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # List Builder for NewLaunchProfileMemberList
    class NewLaunchProfileMemberList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::NewLaunchProfileMember.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for NewLaunchProfileMember
    class NewLaunchProfileMember
      def self.build(input)
        data = {}
        data['persona'] = input[:persona] unless input[:persona].nil?
        data['principalId'] = input[:principal_id] unless input[:principal_id].nil?
        data
      end
    end

    # Operation Builder for PutStudioMembers
    class PutStudioMembers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/membership',
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['identityStoreId'] = input[:identity_store_id] unless input[:identity_store_id].nil?
        data['members'] = Builders::NewStudioMemberList.build(input[:members]) unless input[:members].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # List Builder for NewStudioMemberList
    class NewStudioMemberList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::NewStudioMember.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for NewStudioMember
    class NewStudioMember
      def self.build(input)
        data = {}
        data['persona'] = input[:persona] unless input[:persona].nil?
        data['principalId'] = input[:principal_id] unless input[:principal_id].nil?
        data
      end
    end

    # Operation Builder for StartStreamingSession
    class StartStreamingSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/streaming-sessions/%<sessionId>s/start',
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for StartStudioSSOConfigurationRepair
    class StartStudioSSOConfigurationRepair
      def self.build(http_req, input:)
        http_req.http_method = 'PUT'
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/sso-configuration',
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for StopStreamingSession
    class StopStreamingSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:session_id].to_s.empty?
          raise ArgumentError, "HTTP label :session_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/streaming-sessions/%<sessionId>s/stop',
            sessionId: Hearth::HTTP.uri_escape(input[:session_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['tags'] = Builders::Tags.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UntagResource
    class UntagResource
      def self.build(http_req, input:)
        http_req.http_method = 'DELETE'
        if input[:resource_arn].to_s.empty?
          raise ArgumentError, "HTTP label :resource_arn cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/tags/%<resourceArn>s',
            resourceArn: Hearth::HTTP.uri_escape(input[:resource_arn].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        unless input[:tag_keys].nil? || input[:tag_keys].empty?
          params['tagKeys'] = input[:tag_keys].map do |value|
            value.to_s unless value.nil?
          end
        end
        http_req.append_query_params(params)
      end
    end

    # Operation Builder for UpdateLaunchProfile
    class UpdateLaunchProfile
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:launch_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :launch_profile_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/launch-profiles/%<launchProfileId>s',
            launchProfileId: Hearth::HTTP.uri_escape(input[:launch_profile_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['launchProfileProtocolVersions'] = Builders::LaunchProfileProtocolVersionList.build(input[:launch_profile_protocol_versions]) unless input[:launch_profile_protocol_versions].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['streamConfiguration'] = Builders::StreamConfigurationCreate.build(input[:stream_configuration]) unless input[:stream_configuration].nil?
        data['studioComponentIds'] = Builders::LaunchProfileStudioComponentIdList.build(input[:studio_component_ids]) unless input[:studio_component_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for UpdateLaunchProfileMember
    class UpdateLaunchProfileMember
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:launch_profile_id].to_s.empty?
          raise ArgumentError, "HTTP label :launch_profile_id cannot be nil or empty."
        end
        if input[:principal_id].to_s.empty?
          raise ArgumentError, "HTTP label :principal_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/launch-profiles/%<launchProfileId>s/membership/%<principalId>s',
            launchProfileId: Hearth::HTTP.uri_escape(input[:launch_profile_id].to_s),
            principalId: Hearth::HTTP.uri_escape(input[:principal_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['persona'] = input[:persona] unless input[:persona].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for UpdateStreamingImage
    class UpdateStreamingImage
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:streaming_image_id].to_s.empty?
          raise ArgumentError, "HTTP label :streaming_image_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/streaming-images/%<streamingImageId>s',
            streamingImageId: Hearth::HTTP.uri_escape(input[:streaming_image_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['description'] = input[:description] unless input[:description].nil?
        data['name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for UpdateStudio
    class UpdateStudio
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s',
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['adminRoleArn'] = input[:admin_role_arn] unless input[:admin_role_arn].nil?
        data['displayName'] = input[:display_name] unless input[:display_name].nil?
        data['userRoleArn'] = input[:user_role_arn] unless input[:user_role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end

    # Operation Builder for UpdateStudioComponent
    class UpdateStudioComponent
      def self.build(http_req, input:)
        http_req.http_method = 'PATCH'
        if input[:studio_component_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_component_id cannot be nil or empty."
        end
        if input[:studio_id].to_s.empty?
          raise ArgumentError, "HTTP label :studio_id cannot be nil or empty."
        end
        http_req.append_path(format(
            '/2020-08-01/studios/%<studioId>s/studio-components/%<studioComponentId>s',
            studioComponentId: Hearth::HTTP.uri_escape(input[:studio_component_id].to_s),
            studioId: Hearth::HTTP.uri_escape(input[:studio_id].to_s)
          )
        )
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['configuration'] = Builders::StudioComponentConfiguration.build(input[:configuration]) unless input[:configuration].nil?
        data['description'] = input[:description] unless input[:description].nil?
        data['ec2SecurityGroupIds'] = Builders::StudioComponentSecurityGroupIdList.build(input[:ec2_security_group_ids]) unless input[:ec2_security_group_ids].nil?
        data['initializationScripts'] = Builders::StudioComponentInitializationScriptList.build(input[:initialization_scripts]) unless input[:initialization_scripts].nil?
        data['name'] = input[:name] unless input[:name].nil?
        data['scriptParameters'] = Builders::StudioComponentScriptParameterKeyValueList.build(input[:script_parameters]) unless input[:script_parameters].nil?
        data['subtype'] = input[:subtype] unless input[:subtype].nil?
        data['type'] = input[:type] unless input[:type].nil?
        data['secureInitializationRoleArn'] = input[:secure_initialization_role_arn] unless input[:secure_initialization_role_arn].nil?
        data['runtimeRoleArn'] = input[:runtime_role_arn] unless input[:runtime_role_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
        http_req.headers['X-Amz-Client-Token'] = input[:client_token] unless input[:client_token].nil? || input[:client_token].empty?
      end
    end
  end
end
