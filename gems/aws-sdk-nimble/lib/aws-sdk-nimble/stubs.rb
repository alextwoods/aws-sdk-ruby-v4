# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Nimble
  module Stubs

    # Operation Stubber for AcceptEulas
    class AcceptEulas
      def self.default(visited=[])
        {
          eula_acceptances: EulaAcceptanceList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['eulaAcceptances'] = Stubs::EulaAcceptanceList.stub(stub[:eula_acceptances]) unless stub[:eula_acceptances].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EulaAcceptanceList
    class EulaAcceptanceList
      def self.default(visited=[])
        return nil if visited.include?('EulaAcceptanceList')
        visited = visited + ['EulaAcceptanceList']
        [
          EulaAcceptance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::EulaAcceptance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EulaAcceptance
    class EulaAcceptance
      def self.default(visited=[])
        return nil if visited.include?('EulaAcceptance')
        visited = visited + ['EulaAcceptance']
        {
          accepted_at: Time.now,
          accepted_by: 'accepted_by',
          acceptee_id: 'acceptee_id',
          eula_acceptance_id: 'eula_acceptance_id',
          eula_id: 'eula_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::EulaAcceptance.new
        data = {}
        data['acceptedAt'] = Hearth::TimeHelper.to_date_time(stub[:accepted_at]) unless stub[:accepted_at].nil?
        data['acceptedBy'] = stub[:accepted_by] unless stub[:accepted_by].nil?
        data['accepteeId'] = stub[:acceptee_id] unless stub[:acceptee_id].nil?
        data['eulaAcceptanceId'] = stub[:eula_acceptance_id] unless stub[:eula_acceptance_id].nil?
        data['eulaId'] = stub[:eula_id] unless stub[:eula_id].nil?
        data
      end
    end

    # Operation Stubber for CreateLaunchProfile
    class CreateLaunchProfile
      def self.default(visited=[])
        {
          launch_profile: LaunchProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['launchProfile'] = Stubs::LaunchProfile.stub(stub[:launch_profile]) unless stub[:launch_profile].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LaunchProfile
    class LaunchProfile
      def self.default(visited=[])
        return nil if visited.include?('LaunchProfile')
        visited = visited + ['LaunchProfile']
        {
          arn: 'arn',
          created_at: Time.now,
          created_by: 'created_by',
          description: 'description',
          ec2_subnet_ids: EC2SubnetIdList.default(visited),
          launch_profile_id: 'launch_profile_id',
          launch_profile_protocol_versions: LaunchProfileProtocolVersionList.default(visited),
          name: 'name',
          state: 'state',
          status_code: 'status_code',
          status_message: 'status_message',
          stream_configuration: StreamConfiguration.default(visited),
          studio_component_ids: LaunchProfileStudioComponentIdList.default(visited),
          tags: Tags.default(visited),
          updated_at: Time.now,
          updated_by: 'updated_by',
          validation_results: ValidationResults.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LaunchProfile.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['createdBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['ec2SubnetIds'] = Stubs::EC2SubnetIdList.stub(stub[:ec2_subnet_ids]) unless stub[:ec2_subnet_ids].nil?
        data['launchProfileId'] = stub[:launch_profile_id] unless stub[:launch_profile_id].nil?
        data['launchProfileProtocolVersions'] = Stubs::LaunchProfileProtocolVersionList.stub(stub[:launch_profile_protocol_versions]) unless stub[:launch_profile_protocol_versions].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['streamConfiguration'] = Stubs::StreamConfiguration.stub(stub[:stream_configuration]) unless stub[:stream_configuration].nil?
        data['studioComponentIds'] = Stubs::LaunchProfileStudioComponentIdList.stub(stub[:studio_component_ids]) unless stub[:studio_component_ids].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data['updatedBy'] = stub[:updated_by] unless stub[:updated_by].nil?
        data['validationResults'] = Stubs::ValidationResults.stub(stub[:validation_results]) unless stub[:validation_results].nil?
        data
      end
    end

    # List Stubber for ValidationResults
    class ValidationResults
      def self.default(visited=[])
        return nil if visited.include?('ValidationResults')
        visited = visited + ['ValidationResults']
        [
          ValidationResult.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ValidationResult.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ValidationResult
    class ValidationResult
      def self.default(visited=[])
        return nil if visited.include?('ValidationResult')
        visited = visited + ['ValidationResult']
        {
          type: 'type',
          state: 'state',
          status_code: 'status_code',
          status_message: 'status_message',
        }
      end

      def self.stub(stub)
        stub ||= Types::ValidationResult.new
        data = {}
        data['type'] = stub[:type] unless stub[:type].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data
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

    # List Stubber for LaunchProfileStudioComponentIdList
    class LaunchProfileStudioComponentIdList
      def self.default(visited=[])
        return nil if visited.include?('LaunchProfileStudioComponentIdList')
        visited = visited + ['LaunchProfileStudioComponentIdList']
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

    # Structure Stubber for StreamConfiguration
    class StreamConfiguration
      def self.default(visited=[])
        return nil if visited.include?('StreamConfiguration')
        visited = visited + ['StreamConfiguration']
        {
          clipboard_mode: 'clipboard_mode',
          ec2_instance_types: StreamingInstanceTypeList.default(visited),
          max_session_length_in_minutes: 1,
          streaming_image_ids: StreamingImageIdList.default(visited),
          max_stopped_session_length_in_minutes: 1,
          session_storage: StreamConfigurationSessionStorage.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamConfiguration.new
        data = {}
        data['clipboardMode'] = stub[:clipboard_mode] unless stub[:clipboard_mode].nil?
        data['ec2InstanceTypes'] = Stubs::StreamingInstanceTypeList.stub(stub[:ec2_instance_types]) unless stub[:ec2_instance_types].nil?
        data['maxSessionLengthInMinutes'] = stub[:max_session_length_in_minutes] unless stub[:max_session_length_in_minutes].nil?
        data['streamingImageIds'] = Stubs::StreamingImageIdList.stub(stub[:streaming_image_ids]) unless stub[:streaming_image_ids].nil?
        data['maxStoppedSessionLengthInMinutes'] = stub[:max_stopped_session_length_in_minutes] unless stub[:max_stopped_session_length_in_minutes].nil?
        data['sessionStorage'] = Stubs::StreamConfigurationSessionStorage.stub(stub[:session_storage]) unless stub[:session_storage].nil?
        data
      end
    end

    # Structure Stubber for StreamConfigurationSessionStorage
    class StreamConfigurationSessionStorage
      def self.default(visited=[])
        return nil if visited.include?('StreamConfigurationSessionStorage')
        visited = visited + ['StreamConfigurationSessionStorage']
        {
          root: StreamingSessionStorageRoot.default(visited),
          mode: StreamingSessionStorageModeList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamConfigurationSessionStorage.new
        data = {}
        data['root'] = Stubs::StreamingSessionStorageRoot.stub(stub[:root]) unless stub[:root].nil?
        data['mode'] = Stubs::StreamingSessionStorageModeList.stub(stub[:mode]) unless stub[:mode].nil?
        data
      end
    end

    # List Stubber for StreamingSessionStorageModeList
    class StreamingSessionStorageModeList
      def self.default(visited=[])
        return nil if visited.include?('StreamingSessionStorageModeList')
        visited = visited + ['StreamingSessionStorageModeList']
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

    # Structure Stubber for StreamingSessionStorageRoot
    class StreamingSessionStorageRoot
      def self.default(visited=[])
        return nil if visited.include?('StreamingSessionStorageRoot')
        visited = visited + ['StreamingSessionStorageRoot']
        {
          linux: 'linux',
          windows: 'windows',
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamingSessionStorageRoot.new
        data = {}
        data['linux'] = stub[:linux] unless stub[:linux].nil?
        data['windows'] = stub[:windows] unless stub[:windows].nil?
        data
      end
    end

    # List Stubber for StreamingImageIdList
    class StreamingImageIdList
      def self.default(visited=[])
        return nil if visited.include?('StreamingImageIdList')
        visited = visited + ['StreamingImageIdList']
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

    # List Stubber for StreamingInstanceTypeList
    class StreamingInstanceTypeList
      def self.default(visited=[])
        return nil if visited.include?('StreamingInstanceTypeList')
        visited = visited + ['StreamingInstanceTypeList']
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

    # List Stubber for LaunchProfileProtocolVersionList
    class LaunchProfileProtocolVersionList
      def self.default(visited=[])
        return nil if visited.include?('LaunchProfileProtocolVersionList')
        visited = visited + ['LaunchProfileProtocolVersionList']
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

    # List Stubber for EC2SubnetIdList
    class EC2SubnetIdList
      def self.default(visited=[])
        return nil if visited.include?('EC2SubnetIdList')
        visited = visited + ['EC2SubnetIdList']
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

    # Operation Stubber for CreateStreamingImage
    class CreateStreamingImage
      def self.default(visited=[])
        {
          streaming_image: StreamingImage.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['streamingImage'] = Stubs::StreamingImage.stub(stub[:streaming_image]) unless stub[:streaming_image].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for StreamingImage
    class StreamingImage
      def self.default(visited=[])
        return nil if visited.include?('StreamingImage')
        visited = visited + ['StreamingImage']
        {
          arn: 'arn',
          description: 'description',
          ec2_image_id: 'ec2_image_id',
          encryption_configuration: StreamingImageEncryptionConfiguration.default(visited),
          eula_ids: EulaIdList.default(visited),
          name: 'name',
          owner: 'owner',
          platform: 'platform',
          state: 'state',
          status_code: 'status_code',
          status_message: 'status_message',
          streaming_image_id: 'streaming_image_id',
          tags: Tags.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamingImage.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['ec2ImageId'] = stub[:ec2_image_id] unless stub[:ec2_image_id].nil?
        data['encryptionConfiguration'] = Stubs::StreamingImageEncryptionConfiguration.stub(stub[:encryption_configuration]) unless stub[:encryption_configuration].nil?
        data['eulaIds'] = Stubs::EulaIdList.stub(stub[:eula_ids]) unless stub[:eula_ids].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['owner'] = stub[:owner] unless stub[:owner].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['streamingImageId'] = stub[:streaming_image_id] unless stub[:streaming_image_id].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data
      end
    end

    # List Stubber for EulaIdList
    class EulaIdList
      def self.default(visited=[])
        return nil if visited.include?('EulaIdList')
        visited = visited + ['EulaIdList']
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

    # Structure Stubber for StreamingImageEncryptionConfiguration
    class StreamingImageEncryptionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('StreamingImageEncryptionConfiguration')
        visited = visited + ['StreamingImageEncryptionConfiguration']
        {
          key_arn: 'key_arn',
          key_type: 'key_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamingImageEncryptionConfiguration.new
        data = {}
        data['keyArn'] = stub[:key_arn] unless stub[:key_arn].nil?
        data['keyType'] = stub[:key_type] unless stub[:key_type].nil?
        data
      end
    end

    # Operation Stubber for CreateStreamingSession
    class CreateStreamingSession
      def self.default(visited=[])
        {
          session: StreamingSession.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['session'] = Stubs::StreamingSession.stub(stub[:session]) unless stub[:session].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for StreamingSession
    class StreamingSession
      def self.default(visited=[])
        return nil if visited.include?('StreamingSession')
        visited = visited + ['StreamingSession']
        {
          arn: 'arn',
          created_at: Time.now,
          created_by: 'created_by',
          ec2_instance_type: 'ec2_instance_type',
          launch_profile_id: 'launch_profile_id',
          owned_by: 'owned_by',
          session_id: 'session_id',
          state: 'state',
          status_code: 'status_code',
          status_message: 'status_message',
          streaming_image_id: 'streaming_image_id',
          tags: Tags.default(visited),
          terminate_at: Time.now,
          updated_at: Time.now,
          updated_by: 'updated_by',
          stopped_at: Time.now,
          stopped_by: 'stopped_by',
          started_at: Time.now,
          started_by: 'started_by',
          stop_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamingSession.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['createdBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['ec2InstanceType'] = stub[:ec2_instance_type] unless stub[:ec2_instance_type].nil?
        data['launchProfileId'] = stub[:launch_profile_id] unless stub[:launch_profile_id].nil?
        data['ownedBy'] = stub[:owned_by] unless stub[:owned_by].nil?
        data['sessionId'] = stub[:session_id] unless stub[:session_id].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['streamingImageId'] = stub[:streaming_image_id] unless stub[:streaming_image_id].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['terminateAt'] = Hearth::TimeHelper.to_date_time(stub[:terminate_at]) unless stub[:terminate_at].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data['updatedBy'] = stub[:updated_by] unless stub[:updated_by].nil?
        data['stoppedAt'] = Hearth::TimeHelper.to_date_time(stub[:stopped_at]) unless stub[:stopped_at].nil?
        data['stoppedBy'] = stub[:stopped_by] unless stub[:stopped_by].nil?
        data['startedAt'] = Hearth::TimeHelper.to_date_time(stub[:started_at]) unless stub[:started_at].nil?
        data['startedBy'] = stub[:started_by] unless stub[:started_by].nil?
        data['stopAt'] = Hearth::TimeHelper.to_date_time(stub[:stop_at]) unless stub[:stop_at].nil?
        data
      end
    end

    # Operation Stubber for CreateStreamingSessionStream
    class CreateStreamingSessionStream
      def self.default(visited=[])
        {
          stream: StreamingSessionStream.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['stream'] = Stubs::StreamingSessionStream.stub(stub[:stream]) unless stub[:stream].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for StreamingSessionStream
    class StreamingSessionStream
      def self.default(visited=[])
        return nil if visited.include?('StreamingSessionStream')
        visited = visited + ['StreamingSessionStream']
        {
          created_at: Time.now,
          created_by: 'created_by',
          expires_at: Time.now,
          owned_by: 'owned_by',
          state: 'state',
          status_code: 'status_code',
          stream_id: 'stream_id',
          url: 'url',
        }
      end

      def self.stub(stub)
        stub ||= Types::StreamingSessionStream.new
        data = {}
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['createdBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['expiresAt'] = Hearth::TimeHelper.to_date_time(stub[:expires_at]) unless stub[:expires_at].nil?
        data['ownedBy'] = stub[:owned_by] unless stub[:owned_by].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['streamId'] = stub[:stream_id] unless stub[:stream_id].nil?
        data['url'] = stub[:url] unless stub[:url].nil?
        data
      end
    end

    # Operation Stubber for CreateStudio
    class CreateStudio
      def self.default(visited=[])
        {
          studio: Studio.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['studio'] = Stubs::Studio.stub(stub[:studio]) unless stub[:studio].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Studio
    class Studio
      def self.default(visited=[])
        return nil if visited.include?('Studio')
        visited = visited + ['Studio']
        {
          admin_role_arn: 'admin_role_arn',
          arn: 'arn',
          created_at: Time.now,
          display_name: 'display_name',
          home_region: 'home_region',
          sso_client_id: 'sso_client_id',
          state: 'state',
          status_code: 'status_code',
          status_message: 'status_message',
          studio_encryption_configuration: StudioEncryptionConfiguration.default(visited),
          studio_id: 'studio_id',
          studio_name: 'studio_name',
          studio_url: 'studio_url',
          tags: Tags.default(visited),
          updated_at: Time.now,
          user_role_arn: 'user_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::Studio.new
        data = {}
        data['adminRoleArn'] = stub[:admin_role_arn] unless stub[:admin_role_arn].nil?
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['displayName'] = stub[:display_name] unless stub[:display_name].nil?
        data['homeRegion'] = stub[:home_region] unless stub[:home_region].nil?
        data['ssoClientId'] = stub[:sso_client_id] unless stub[:sso_client_id].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['studioEncryptionConfiguration'] = Stubs::StudioEncryptionConfiguration.stub(stub[:studio_encryption_configuration]) unless stub[:studio_encryption_configuration].nil?
        data['studioId'] = stub[:studio_id] unless stub[:studio_id].nil?
        data['studioName'] = stub[:studio_name] unless stub[:studio_name].nil?
        data['studioUrl'] = stub[:studio_url] unless stub[:studio_url].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data['userRoleArn'] = stub[:user_role_arn] unless stub[:user_role_arn].nil?
        data
      end
    end

    # Structure Stubber for StudioEncryptionConfiguration
    class StudioEncryptionConfiguration
      def self.default(visited=[])
        return nil if visited.include?('StudioEncryptionConfiguration')
        visited = visited + ['StudioEncryptionConfiguration']
        {
          key_arn: 'key_arn',
          key_type: 'key_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::StudioEncryptionConfiguration.new
        data = {}
        data['keyArn'] = stub[:key_arn] unless stub[:key_arn].nil?
        data['keyType'] = stub[:key_type] unless stub[:key_type].nil?
        data
      end
    end

    # Operation Stubber for CreateStudioComponent
    class CreateStudioComponent
      def self.default(visited=[])
        {
          studio_component: StudioComponent.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['studioComponent'] = Stubs::StudioComponent.stub(stub[:studio_component]) unless stub[:studio_component].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for StudioComponent
    class StudioComponent
      def self.default(visited=[])
        return nil if visited.include?('StudioComponent')
        visited = visited + ['StudioComponent']
        {
          arn: 'arn',
          configuration: StudioComponentConfiguration.default(visited),
          created_at: Time.now,
          created_by: 'created_by',
          description: 'description',
          ec2_security_group_ids: StudioComponentSecurityGroupIdList.default(visited),
          initialization_scripts: StudioComponentInitializationScriptList.default(visited),
          name: 'name',
          script_parameters: StudioComponentScriptParameterKeyValueList.default(visited),
          state: 'state',
          status_code: 'status_code',
          status_message: 'status_message',
          studio_component_id: 'studio_component_id',
          subtype: 'subtype',
          tags: Tags.default(visited),
          type: 'type',
          updated_at: Time.now,
          updated_by: 'updated_by',
          secure_initialization_role_arn: 'secure_initialization_role_arn',
          runtime_role_arn: 'runtime_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::StudioComponent.new
        data = {}
        data['arn'] = stub[:arn] unless stub[:arn].nil?
        data['configuration'] = Stubs::StudioComponentConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['createdBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['ec2SecurityGroupIds'] = Stubs::StudioComponentSecurityGroupIdList.stub(stub[:ec2_security_group_ids]) unless stub[:ec2_security_group_ids].nil?
        data['initializationScripts'] = Stubs::StudioComponentInitializationScriptList.stub(stub[:initialization_scripts]) unless stub[:initialization_scripts].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['scriptParameters'] = Stubs::StudioComponentScriptParameterKeyValueList.stub(stub[:script_parameters]) unless stub[:script_parameters].nil?
        data['state'] = stub[:state] unless stub[:state].nil?
        data['statusCode'] = stub[:status_code] unless stub[:status_code].nil?
        data['statusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['studioComponentId'] = stub[:studio_component_id] unless stub[:studio_component_id].nil?
        data['subtype'] = stub[:subtype] unless stub[:subtype].nil?
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data['updatedBy'] = stub[:updated_by] unless stub[:updated_by].nil?
        data['secureInitializationRoleArn'] = stub[:secure_initialization_role_arn] unless stub[:secure_initialization_role_arn].nil?
        data['runtimeRoleArn'] = stub[:runtime_role_arn] unless stub[:runtime_role_arn].nil?
        data
      end
    end

    # List Stubber for StudioComponentScriptParameterKeyValueList
    class StudioComponentScriptParameterKeyValueList
      def self.default(visited=[])
        return nil if visited.include?('StudioComponentScriptParameterKeyValueList')
        visited = visited + ['StudioComponentScriptParameterKeyValueList']
        [
          ScriptParameterKeyValue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ScriptParameterKeyValue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ScriptParameterKeyValue
    class ScriptParameterKeyValue
      def self.default(visited=[])
        return nil if visited.include?('ScriptParameterKeyValue')
        visited = visited + ['ScriptParameterKeyValue']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ScriptParameterKeyValue.new
        data = {}
        data['key'] = stub[:key] unless stub[:key].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # List Stubber for StudioComponentInitializationScriptList
    class StudioComponentInitializationScriptList
      def self.default(visited=[])
        return nil if visited.include?('StudioComponentInitializationScriptList')
        visited = visited + ['StudioComponentInitializationScriptList']
        [
          StudioComponentInitializationScript.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StudioComponentInitializationScript.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StudioComponentInitializationScript
    class StudioComponentInitializationScript
      def self.default(visited=[])
        return nil if visited.include?('StudioComponentInitializationScript')
        visited = visited + ['StudioComponentInitializationScript']
        {
          launch_profile_protocol_version: 'launch_profile_protocol_version',
          platform: 'platform',
          run_context: 'run_context',
          script: 'script',
        }
      end

      def self.stub(stub)
        stub ||= Types::StudioComponentInitializationScript.new
        data = {}
        data['launchProfileProtocolVersion'] = stub[:launch_profile_protocol_version] unless stub[:launch_profile_protocol_version].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['runContext'] = stub[:run_context] unless stub[:run_context].nil?
        data['script'] = stub[:script] unless stub[:script].nil?
        data
      end
    end

    # List Stubber for StudioComponentSecurityGroupIdList
    class StudioComponentSecurityGroupIdList
      def self.default(visited=[])
        return nil if visited.include?('StudioComponentSecurityGroupIdList')
        visited = visited + ['StudioComponentSecurityGroupIdList']
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

    # Union Stubber for StudioComponentConfiguration
    class StudioComponentConfiguration
      def self.default(visited=[])
        return nil if visited.include?('StudioComponentConfiguration')
        visited = visited + ['StudioComponentConfiguration']
        {
          active_directory_configuration: ActiveDirectoryConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        data = {}
        case stub
        when Types::StudioComponentConfiguration::ActiveDirectoryConfiguration
          data['activeDirectoryConfiguration'] = (Stubs::ActiveDirectoryConfiguration.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::StudioComponentConfiguration::ComputeFarmConfiguration
          data['computeFarmConfiguration'] = (Stubs::ComputeFarmConfiguration.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::StudioComponentConfiguration::LicenseServiceConfiguration
          data['licenseServiceConfiguration'] = (Stubs::LicenseServiceConfiguration.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        when Types::StudioComponentConfiguration::SharedFileSystemConfiguration
          data['sharedFileSystemConfiguration'] = (Stubs::SharedFileSystemConfiguration.stub(stub.__getobj__) unless stub.__getobj__.nil?)
        else
          raise ArgumentError,
          "Expected input to be one of the subclasses of Types::StudioComponentConfiguration"
        end

        data
      end
    end

    # Structure Stubber for SharedFileSystemConfiguration
    class SharedFileSystemConfiguration
      def self.default(visited=[])
        return nil if visited.include?('SharedFileSystemConfiguration')
        visited = visited + ['SharedFileSystemConfiguration']
        {
          endpoint: 'endpoint',
          file_system_id: 'file_system_id',
          linux_mount_point: 'linux_mount_point',
          share_name: 'share_name',
          windows_mount_drive: 'windows_mount_drive',
        }
      end

      def self.stub(stub)
        stub ||= Types::SharedFileSystemConfiguration.new
        data = {}
        data['endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data['fileSystemId'] = stub[:file_system_id] unless stub[:file_system_id].nil?
        data['linuxMountPoint'] = stub[:linux_mount_point] unless stub[:linux_mount_point].nil?
        data['shareName'] = stub[:share_name] unless stub[:share_name].nil?
        data['windowsMountDrive'] = stub[:windows_mount_drive] unless stub[:windows_mount_drive].nil?
        data
      end
    end

    # Structure Stubber for LicenseServiceConfiguration
    class LicenseServiceConfiguration
      def self.default(visited=[])
        return nil if visited.include?('LicenseServiceConfiguration')
        visited = visited + ['LicenseServiceConfiguration']
        {
          endpoint: 'endpoint',
        }
      end

      def self.stub(stub)
        stub ||= Types::LicenseServiceConfiguration.new
        data = {}
        data['endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data
      end
    end

    # Structure Stubber for ComputeFarmConfiguration
    class ComputeFarmConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ComputeFarmConfiguration')
        visited = visited + ['ComputeFarmConfiguration']
        {
          active_directory_user: 'active_directory_user',
          endpoint: 'endpoint',
        }
      end

      def self.stub(stub)
        stub ||= Types::ComputeFarmConfiguration.new
        data = {}
        data['activeDirectoryUser'] = stub[:active_directory_user] unless stub[:active_directory_user].nil?
        data['endpoint'] = stub[:endpoint] unless stub[:endpoint].nil?
        data
      end
    end

    # Structure Stubber for ActiveDirectoryConfiguration
    class ActiveDirectoryConfiguration
      def self.default(visited=[])
        return nil if visited.include?('ActiveDirectoryConfiguration')
        visited = visited + ['ActiveDirectoryConfiguration']
        {
          computer_attributes: ActiveDirectoryComputerAttributeList.default(visited),
          directory_id: 'directory_id',
          organizational_unit_distinguished_name: 'organizational_unit_distinguished_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActiveDirectoryConfiguration.new
        data = {}
        data['computerAttributes'] = Stubs::ActiveDirectoryComputerAttributeList.stub(stub[:computer_attributes]) unless stub[:computer_attributes].nil?
        data['directoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        data['organizationalUnitDistinguishedName'] = stub[:organizational_unit_distinguished_name] unless stub[:organizational_unit_distinguished_name].nil?
        data
      end
    end

    # List Stubber for ActiveDirectoryComputerAttributeList
    class ActiveDirectoryComputerAttributeList
      def self.default(visited=[])
        return nil if visited.include?('ActiveDirectoryComputerAttributeList')
        visited = visited + ['ActiveDirectoryComputerAttributeList']
        [
          ActiveDirectoryComputerAttribute.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::ActiveDirectoryComputerAttribute.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ActiveDirectoryComputerAttribute
    class ActiveDirectoryComputerAttribute
      def self.default(visited=[])
        return nil if visited.include?('ActiveDirectoryComputerAttribute')
        visited = visited + ['ActiveDirectoryComputerAttribute']
        {
          name: 'name',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::ActiveDirectoryComputerAttribute.new
        data = {}
        data['name'] = stub[:name] unless stub[:name].nil?
        data['value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for DeleteLaunchProfile
    class DeleteLaunchProfile
      def self.default(visited=[])
        {
          launch_profile: LaunchProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['launchProfile'] = Stubs::LaunchProfile.stub(stub[:launch_profile]) unless stub[:launch_profile].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteLaunchProfileMember
    class DeleteLaunchProfileMember
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteStreamingImage
    class DeleteStreamingImage
      def self.default(visited=[])
        {
          streaming_image: StreamingImage.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['streamingImage'] = Stubs::StreamingImage.stub(stub[:streaming_image]) unless stub[:streaming_image].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteStreamingSession
    class DeleteStreamingSession
      def self.default(visited=[])
        {
          session: StreamingSession.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['session'] = Stubs::StreamingSession.stub(stub[:session]) unless stub[:session].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteStudio
    class DeleteStudio
      def self.default(visited=[])
        {
          studio: Studio.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['studio'] = Stubs::Studio.stub(stub[:studio]) unless stub[:studio].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteStudioComponent
    class DeleteStudioComponent
      def self.default(visited=[])
        {
          studio_component: StudioComponent.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['studioComponent'] = Stubs::StudioComponent.stub(stub[:studio_component]) unless stub[:studio_component].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for DeleteStudioMember
    class DeleteStudioMember
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetEula
    class GetEula
      def self.default(visited=[])
        {
          eula: Eula.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['eula'] = Stubs::Eula.stub(stub[:eula]) unless stub[:eula].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for Eula
    class Eula
      def self.default(visited=[])
        return nil if visited.include?('Eula')
        visited = visited + ['Eula']
        {
          content: 'content',
          created_at: Time.now,
          eula_id: 'eula_id',
          name: 'name',
          updated_at: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Eula.new
        data = {}
        data['content'] = stub[:content] unless stub[:content].nil?
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['eulaId'] = stub[:eula_id] unless stub[:eula_id].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data
      end
    end

    # Operation Stubber for GetLaunchProfile
    class GetLaunchProfile
      def self.default(visited=[])
        {
          launch_profile: LaunchProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['launchProfile'] = Stubs::LaunchProfile.stub(stub[:launch_profile]) unless stub[:launch_profile].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetLaunchProfileDetails
    class GetLaunchProfileDetails
      def self.default(visited=[])
        {
          launch_profile: LaunchProfile.default(visited),
          streaming_images: StreamingImageList.default(visited),
          studio_component_summaries: StudioComponentSummaryList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['launchProfile'] = Stubs::LaunchProfile.stub(stub[:launch_profile]) unless stub[:launch_profile].nil?
        data['streamingImages'] = Stubs::StreamingImageList.stub(stub[:streaming_images]) unless stub[:streaming_images].nil?
        data['studioComponentSummaries'] = Stubs::StudioComponentSummaryList.stub(stub[:studio_component_summaries]) unless stub[:studio_component_summaries].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for StudioComponentSummaryList
    class StudioComponentSummaryList
      def self.default(visited=[])
        return nil if visited.include?('StudioComponentSummaryList')
        visited = visited + ['StudioComponentSummaryList']
        [
          StudioComponentSummary.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StudioComponentSummary.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for StudioComponentSummary
    class StudioComponentSummary
      def self.default(visited=[])
        return nil if visited.include?('StudioComponentSummary')
        visited = visited + ['StudioComponentSummary']
        {
          created_at: Time.now,
          created_by: 'created_by',
          description: 'description',
          name: 'name',
          studio_component_id: 'studio_component_id',
          subtype: 'subtype',
          type: 'type',
          updated_at: Time.now,
          updated_by: 'updated_by',
        }
      end

      def self.stub(stub)
        stub ||= Types::StudioComponentSummary.new
        data = {}
        data['createdAt'] = Hearth::TimeHelper.to_date_time(stub[:created_at]) unless stub[:created_at].nil?
        data['createdBy'] = stub[:created_by] unless stub[:created_by].nil?
        data['description'] = stub[:description] unless stub[:description].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['studioComponentId'] = stub[:studio_component_id] unless stub[:studio_component_id].nil?
        data['subtype'] = stub[:subtype] unless stub[:subtype].nil?
        data['type'] = stub[:type] unless stub[:type].nil?
        data['updatedAt'] = Hearth::TimeHelper.to_date_time(stub[:updated_at]) unless stub[:updated_at].nil?
        data['updatedBy'] = stub[:updated_by] unless stub[:updated_by].nil?
        data
      end
    end

    # List Stubber for StreamingImageList
    class StreamingImageList
      def self.default(visited=[])
        return nil if visited.include?('StreamingImageList')
        visited = visited + ['StreamingImageList']
        [
          StreamingImage.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StreamingImage.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for GetLaunchProfileInitialization
    class GetLaunchProfileInitialization
      def self.default(visited=[])
        {
          launch_profile_initialization: LaunchProfileInitialization.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['launchProfileInitialization'] = Stubs::LaunchProfileInitialization.stub(stub[:launch_profile_initialization]) unless stub[:launch_profile_initialization].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LaunchProfileInitialization
    class LaunchProfileInitialization
      def self.default(visited=[])
        return nil if visited.include?('LaunchProfileInitialization')
        visited = visited + ['LaunchProfileInitialization']
        {
          active_directory: LaunchProfileInitializationActiveDirectory.default(visited),
          ec2_security_group_ids: LaunchProfileSecurityGroupIdList.default(visited),
          launch_profile_id: 'launch_profile_id',
          launch_profile_protocol_version: 'launch_profile_protocol_version',
          launch_purpose: 'launch_purpose',
          name: 'name',
          platform: 'platform',
          system_initialization_scripts: LaunchProfileInitializationScriptList.default(visited),
          user_initialization_scripts: LaunchProfileInitializationScriptList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::LaunchProfileInitialization.new
        data = {}
        data['activeDirectory'] = Stubs::LaunchProfileInitializationActiveDirectory.stub(stub[:active_directory]) unless stub[:active_directory].nil?
        data['ec2SecurityGroupIds'] = Stubs::LaunchProfileSecurityGroupIdList.stub(stub[:ec2_security_group_ids]) unless stub[:ec2_security_group_ids].nil?
        data['launchProfileId'] = stub[:launch_profile_id] unless stub[:launch_profile_id].nil?
        data['launchProfileProtocolVersion'] = stub[:launch_profile_protocol_version] unless stub[:launch_profile_protocol_version].nil?
        data['launchPurpose'] = stub[:launch_purpose] unless stub[:launch_purpose].nil?
        data['name'] = stub[:name] unless stub[:name].nil?
        data['platform'] = stub[:platform] unless stub[:platform].nil?
        data['systemInitializationScripts'] = Stubs::LaunchProfileInitializationScriptList.stub(stub[:system_initialization_scripts]) unless stub[:system_initialization_scripts].nil?
        data['userInitializationScripts'] = Stubs::LaunchProfileInitializationScriptList.stub(stub[:user_initialization_scripts]) unless stub[:user_initialization_scripts].nil?
        data
      end
    end

    # List Stubber for LaunchProfileInitializationScriptList
    class LaunchProfileInitializationScriptList
      def self.default(visited=[])
        return nil if visited.include?('LaunchProfileInitializationScriptList')
        visited = visited + ['LaunchProfileInitializationScriptList']
        [
          LaunchProfileInitializationScript.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LaunchProfileInitializationScript.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LaunchProfileInitializationScript
    class LaunchProfileInitializationScript
      def self.default(visited=[])
        return nil if visited.include?('LaunchProfileInitializationScript')
        visited = visited + ['LaunchProfileInitializationScript']
        {
          script: 'script',
          studio_component_id: 'studio_component_id',
          studio_component_name: 'studio_component_name',
          secure_initialization_role_arn: 'secure_initialization_role_arn',
          runtime_role_arn: 'runtime_role_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::LaunchProfileInitializationScript.new
        data = {}
        data['script'] = stub[:script] unless stub[:script].nil?
        data['studioComponentId'] = stub[:studio_component_id] unless stub[:studio_component_id].nil?
        data['studioComponentName'] = stub[:studio_component_name] unless stub[:studio_component_name].nil?
        data['secureInitializationRoleArn'] = stub[:secure_initialization_role_arn] unless stub[:secure_initialization_role_arn].nil?
        data['runtimeRoleArn'] = stub[:runtime_role_arn] unless stub[:runtime_role_arn].nil?
        data
      end
    end

    # List Stubber for LaunchProfileSecurityGroupIdList
    class LaunchProfileSecurityGroupIdList
      def self.default(visited=[])
        return nil if visited.include?('LaunchProfileSecurityGroupIdList')
        visited = visited + ['LaunchProfileSecurityGroupIdList']
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

    # Structure Stubber for LaunchProfileInitializationActiveDirectory
    class LaunchProfileInitializationActiveDirectory
      def self.default(visited=[])
        return nil if visited.include?('LaunchProfileInitializationActiveDirectory')
        visited = visited + ['LaunchProfileInitializationActiveDirectory']
        {
          computer_attributes: ActiveDirectoryComputerAttributeList.default(visited),
          directory_id: 'directory_id',
          directory_name: 'directory_name',
          dns_ip_addresses: ActiveDirectoryDnsIpAddressList.default(visited),
          organizational_unit_distinguished_name: 'organizational_unit_distinguished_name',
          studio_component_id: 'studio_component_id',
          studio_component_name: 'studio_component_name',
        }
      end

      def self.stub(stub)
        stub ||= Types::LaunchProfileInitializationActiveDirectory.new
        data = {}
        data['computerAttributes'] = Stubs::ActiveDirectoryComputerAttributeList.stub(stub[:computer_attributes]) unless stub[:computer_attributes].nil?
        data['directoryId'] = stub[:directory_id] unless stub[:directory_id].nil?
        data['directoryName'] = stub[:directory_name] unless stub[:directory_name].nil?
        data['dnsIpAddresses'] = Stubs::ActiveDirectoryDnsIpAddressList.stub(stub[:dns_ip_addresses]) unless stub[:dns_ip_addresses].nil?
        data['organizationalUnitDistinguishedName'] = stub[:organizational_unit_distinguished_name] unless stub[:organizational_unit_distinguished_name].nil?
        data['studioComponentId'] = stub[:studio_component_id] unless stub[:studio_component_id].nil?
        data['studioComponentName'] = stub[:studio_component_name] unless stub[:studio_component_name].nil?
        data
      end
    end

    # List Stubber for ActiveDirectoryDnsIpAddressList
    class ActiveDirectoryDnsIpAddressList
      def self.default(visited=[])
        return nil if visited.include?('ActiveDirectoryDnsIpAddressList')
        visited = visited + ['ActiveDirectoryDnsIpAddressList']
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

    # Operation Stubber for GetLaunchProfileMember
    class GetLaunchProfileMember
      def self.default(visited=[])
        {
          member: LaunchProfileMembership.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['member'] = Stubs::LaunchProfileMembership.stub(stub[:member]) unless stub[:member].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for LaunchProfileMembership
    class LaunchProfileMembership
      def self.default(visited=[])
        return nil if visited.include?('LaunchProfileMembership')
        visited = visited + ['LaunchProfileMembership']
        {
          identity_store_id: 'identity_store_id',
          persona: 'persona',
          principal_id: 'principal_id',
          sid: 'sid',
        }
      end

      def self.stub(stub)
        stub ||= Types::LaunchProfileMembership.new
        data = {}
        data['identityStoreId'] = stub[:identity_store_id] unless stub[:identity_store_id].nil?
        data['persona'] = stub[:persona] unless stub[:persona].nil?
        data['principalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data['sid'] = stub[:sid] unless stub[:sid].nil?
        data
      end
    end

    # Operation Stubber for GetStreamingImage
    class GetStreamingImage
      def self.default(visited=[])
        {
          streaming_image: StreamingImage.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['streamingImage'] = Stubs::StreamingImage.stub(stub[:streaming_image]) unless stub[:streaming_image].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetStreamingSession
    class GetStreamingSession
      def self.default(visited=[])
        {
          session: StreamingSession.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['session'] = Stubs::StreamingSession.stub(stub[:session]) unless stub[:session].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetStreamingSessionStream
    class GetStreamingSessionStream
      def self.default(visited=[])
        {
          stream: StreamingSessionStream.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['stream'] = Stubs::StreamingSessionStream.stub(stub[:stream]) unless stub[:stream].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetStudio
    class GetStudio
      def self.default(visited=[])
        {
          studio: Studio.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['studio'] = Stubs::Studio.stub(stub[:studio]) unless stub[:studio].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetStudioComponent
    class GetStudioComponent
      def self.default(visited=[])
        {
          studio_component: StudioComponent.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['studioComponent'] = Stubs::StudioComponent.stub(stub[:studio_component]) unless stub[:studio_component].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for GetStudioMember
    class GetStudioMember
      def self.default(visited=[])
        {
          member: StudioMembership.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['member'] = Stubs::StudioMembership.stub(stub[:member]) unless stub[:member].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Stubber for StudioMembership
    class StudioMembership
      def self.default(visited=[])
        return nil if visited.include?('StudioMembership')
        visited = visited + ['StudioMembership']
        {
          identity_store_id: 'identity_store_id',
          persona: 'persona',
          principal_id: 'principal_id',
          sid: 'sid',
        }
      end

      def self.stub(stub)
        stub ||= Types::StudioMembership.new
        data = {}
        data['identityStoreId'] = stub[:identity_store_id] unless stub[:identity_store_id].nil?
        data['persona'] = stub[:persona] unless stub[:persona].nil?
        data['principalId'] = stub[:principal_id] unless stub[:principal_id].nil?
        data['sid'] = stub[:sid] unless stub[:sid].nil?
        data
      end
    end

    # Operation Stubber for ListEulaAcceptances
    class ListEulaAcceptances
      def self.default(visited=[])
        {
          eula_acceptances: EulaAcceptanceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['eulaAcceptances'] = Stubs::EulaAcceptanceList.stub(stub[:eula_acceptances]) unless stub[:eula_acceptances].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListEulas
    class ListEulas
      def self.default(visited=[])
        {
          eulas: EulaList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['eulas'] = Stubs::EulaList.stub(stub[:eulas]) unless stub[:eulas].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for EulaList
    class EulaList
      def self.default(visited=[])
        return nil if visited.include?('EulaList')
        visited = visited + ['EulaList']
        [
          Eula.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Eula.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListLaunchProfileMembers
    class ListLaunchProfileMembers
      def self.default(visited=[])
        {
          members: LaunchProfileMembershipList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['members'] = Stubs::LaunchProfileMembershipList.stub(stub[:members]) unless stub[:members].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for LaunchProfileMembershipList
    class LaunchProfileMembershipList
      def self.default(visited=[])
        return nil if visited.include?('LaunchProfileMembershipList')
        visited = visited + ['LaunchProfileMembershipList']
        [
          LaunchProfileMembership.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LaunchProfileMembership.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListLaunchProfiles
    class ListLaunchProfiles
      def self.default(visited=[])
        {
          launch_profiles: LaunchProfileList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['launchProfiles'] = Stubs::LaunchProfileList.stub(stub[:launch_profiles]) unless stub[:launch_profiles].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for LaunchProfileList
    class LaunchProfileList
      def self.default(visited=[])
        return nil if visited.include?('LaunchProfileList')
        visited = visited + ['LaunchProfileList']
        [
          LaunchProfile.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::LaunchProfile.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListStreamingImages
    class ListStreamingImages
      def self.default(visited=[])
        {
          next_token: 'next_token',
          streaming_images: StreamingImageList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['streamingImages'] = Stubs::StreamingImageList.stub(stub[:streaming_images]) unless stub[:streaming_images].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for ListStreamingSessions
    class ListStreamingSessions
      def self.default(visited=[])
        {
          next_token: 'next_token',
          sessions: StreamingSessionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['sessions'] = Stubs::StreamingSessionList.stub(stub[:sessions]) unless stub[:sessions].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for StreamingSessionList
    class StreamingSessionList
      def self.default(visited=[])
        return nil if visited.include?('StreamingSessionList')
        visited = visited + ['StreamingSessionList']
        [
          StreamingSession.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StreamingSession.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListStudioComponents
    class ListStudioComponents
      def self.default(visited=[])
        {
          next_token: 'next_token',
          studio_components: StudioComponentList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['studioComponents'] = Stubs::StudioComponentList.stub(stub[:studio_components]) unless stub[:studio_components].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for StudioComponentList
    class StudioComponentList
      def self.default(visited=[])
        return nil if visited.include?('StudioComponentList')
        visited = visited + ['StudioComponentList']
        [
          StudioComponent.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StudioComponent.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListStudioMembers
    class ListStudioMembers
      def self.default(visited=[])
        {
          members: StudioMembershipList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['members'] = Stubs::StudioMembershipList.stub(stub[:members]) unless stub[:members].nil?
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for StudioMembershipList
    class StudioMembershipList
      def self.default(visited=[])
        return nil if visited.include?('StudioMembershipList')
        visited = visited + ['StudioMembershipList']
        [
          StudioMembership.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::StudioMembership.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListStudios
    class ListStudios
      def self.default(visited=[])
        {
          next_token: 'next_token',
          studios: StudioList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['nextToken'] = stub[:next_token] unless stub[:next_token].nil?
        data['studios'] = Stubs::StudioList.stub(stub[:studios]) unless stub[:studios].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for StudioList
    class StudioList
      def self.default(visited=[])
        return nil if visited.include?('StudioList')
        visited = visited + ['StudioList']
        [
          Studio.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::Studio.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: Tags.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['tags'] = Stubs::Tags.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for PutLaunchProfileMembers
    class PutLaunchProfileMembers
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for PutStudioMembers
    class PutStudioMembers
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartStreamingSession
    class StartStreamingSession
      def self.default(visited=[])
        {
          session: StreamingSession.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['session'] = Stubs::StreamingSession.stub(stub[:session]) unless stub[:session].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StartStudioSSOConfigurationRepair
    class StartStudioSSOConfigurationRepair
      def self.default(visited=[])
        {
          studio: Studio.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['studio'] = Stubs::Studio.stub(stub[:studio]) unless stub[:studio].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for StopStreamingSession
    class StopStreamingSession
      def self.default(visited=[])
        {
          session: StreamingSession.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['session'] = Stubs::StreamingSession.stub(stub[:session]) unless stub[:session].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.status = 204
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
        http_resp.status = 204
      end
    end

    # Operation Stubber for UpdateLaunchProfile
    class UpdateLaunchProfile
      def self.default(visited=[])
        {
          launch_profile: LaunchProfile.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['launchProfile'] = Stubs::LaunchProfile.stub(stub[:launch_profile]) unless stub[:launch_profile].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateLaunchProfileMember
    class UpdateLaunchProfileMember
      def self.default(visited=[])
        {
          member: LaunchProfileMembership.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['member'] = Stubs::LaunchProfileMembership.stub(stub[:member]) unless stub[:member].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateStreamingImage
    class UpdateStreamingImage
      def self.default(visited=[])
        {
          streaming_image: StreamingImage.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['streamingImage'] = Stubs::StreamingImage.stub(stub[:streaming_image]) unless stub[:streaming_image].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateStudio
    class UpdateStudio
      def self.default(visited=[])
        {
          studio: Studio.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['studio'] = Stubs::Studio.stub(stub[:studio]) unless stub[:studio].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Stubber for UpdateStudioComponent
    class UpdateStudioComponent
      def self.default(visited=[])
        {
          studio_component: StudioComponent.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['studioComponent'] = Stubs::StudioComponent.stub(stub[:studio_component]) unless stub[:studio_component].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
