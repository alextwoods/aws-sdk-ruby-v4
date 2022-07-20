# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::GameLift
  module Stubs

    # Operation Stubber for AcceptMatch
    class AcceptMatch
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ClaimGameServer
    class ClaimGameServer
      def self.default(visited=[])
        {
          game_server: GameServer.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameServer'] = GameServer.stub(stub[:game_server]) unless stub[:game_server].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for GameServer
    class GameServer
      def self.default(visited=[])
        return nil if visited.include?('GameServer')
        visited = visited + ['GameServer']
        {
          game_server_group_name: 'game_server_group_name',
          game_server_group_arn: 'game_server_group_arn',
          game_server_id: 'game_server_id',
          instance_id: 'instance_id',
          connection_info: 'connection_info',
          game_server_data: 'game_server_data',
          claim_status: 'claim_status',
          utilization_status: 'utilization_status',
          registration_time: Time.now,
          last_claim_time: Time.now,
          last_health_check_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::GameServer.new
        data = {}
        data['GameServerGroupName'] = stub[:game_server_group_name] unless stub[:game_server_group_name].nil?
        data['GameServerGroupArn'] = stub[:game_server_group_arn] unless stub[:game_server_group_arn].nil?
        data['GameServerId'] = stub[:game_server_id] unless stub[:game_server_id].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['ConnectionInfo'] = stub[:connection_info] unless stub[:connection_info].nil?
        data['GameServerData'] = stub[:game_server_data] unless stub[:game_server_data].nil?
        data['ClaimStatus'] = stub[:claim_status] unless stub[:claim_status].nil?
        data['UtilizationStatus'] = stub[:utilization_status] unless stub[:utilization_status].nil?
        data['RegistrationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:registration_time]).to_i unless stub[:registration_time].nil?
        data['LastClaimTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_claim_time]).to_i unless stub[:last_claim_time].nil?
        data['LastHealthCheckTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_health_check_time]).to_i unless stub[:last_health_check_time].nil?
        data
      end
    end

    # Operation Stubber for CreateAlias
    class CreateAlias
      def self.default(visited=[])
        {
          alias: Alias.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Alias'] = Alias.stub(stub[:alias]) unless stub[:alias].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Alias
    class Alias
      def self.default(visited=[])
        return nil if visited.include?('Alias')
        visited = visited + ['Alias']
        {
          alias_id: 'alias_id',
          name: 'name',
          alias_arn: 'alias_arn',
          description: 'description',
          routing_strategy: RoutingStrategy.default(visited),
          creation_time: Time.now,
          last_updated_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Alias.new
        data = {}
        data['AliasId'] = stub[:alias_id] unless stub[:alias_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['AliasArn'] = stub[:alias_arn] unless stub[:alias_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['RoutingStrategy'] = RoutingStrategy.stub(stub[:routing_strategy]) unless stub[:routing_strategy].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data
      end
    end

    # Structure Stubber for RoutingStrategy
    class RoutingStrategy
      def self.default(visited=[])
        return nil if visited.include?('RoutingStrategy')
        visited = visited + ['RoutingStrategy']
        {
          type: 'type',
          fleet_id: 'fleet_id',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::RoutingStrategy.new
        data = {}
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for CreateBuild
    class CreateBuild
      def self.default(visited=[])
        {
          build: Build.default(visited),
          upload_credentials: AwsCredentials.default(visited),
          storage_location: S3Location.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Build'] = Build.stub(stub[:build]) unless stub[:build].nil?
        data['UploadCredentials'] = AwsCredentials.stub(stub[:upload_credentials]) unless stub[:upload_credentials].nil?
        data['StorageLocation'] = S3Location.stub(stub[:storage_location]) unless stub[:storage_location].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for S3Location
    class S3Location
      def self.default(visited=[])
        return nil if visited.include?('S3Location')
        visited = visited + ['S3Location']
        {
          bucket: 'bucket',
          key: 'key',
          role_arn: 'role_arn',
          object_version: 'object_version',
        }
      end

      def self.stub(stub)
        stub ||= Types::S3Location.new
        data = {}
        data['Bucket'] = stub[:bucket] unless stub[:bucket].nil?
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['ObjectVersion'] = stub[:object_version] unless stub[:object_version].nil?
        data
      end
    end

    # Structure Stubber for AwsCredentials
    class AwsCredentials
      def self.default(visited=[])
        return nil if visited.include?('AwsCredentials')
        visited = visited + ['AwsCredentials']
        {
          access_key_id: 'access_key_id',
          secret_access_key: 'secret_access_key',
          session_token: 'session_token',
        }
      end

      def self.stub(stub)
        stub ||= Types::AwsCredentials.new
        data = {}
        data['AccessKeyId'] = stub[:access_key_id] unless stub[:access_key_id].nil?
        data['SecretAccessKey'] = stub[:secret_access_key] unless stub[:secret_access_key].nil?
        data['SessionToken'] = stub[:session_token] unless stub[:session_token].nil?
        data
      end
    end

    # Structure Stubber for Build
    class Build
      def self.default(visited=[])
        return nil if visited.include?('Build')
        visited = visited + ['Build']
        {
          build_id: 'build_id',
          build_arn: 'build_arn',
          name: 'name',
          version: 'version',
          status: 'status',
          size_on_disk: 1,
          operating_system: 'operating_system',
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::Build.new
        data = {}
        data['BuildId'] = stub[:build_id] unless stub[:build_id].nil?
        data['BuildArn'] = stub[:build_arn] unless stub[:build_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['SizeOnDisk'] = stub[:size_on_disk] unless stub[:size_on_disk].nil?
        data['OperatingSystem'] = stub[:operating_system] unless stub[:operating_system].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for CreateFleet
    class CreateFleet
      def self.default(visited=[])
        {
          fleet_attributes: FleetAttributes.default(visited),
          location_states: LocationStateList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FleetAttributes'] = FleetAttributes.stub(stub[:fleet_attributes]) unless stub[:fleet_attributes].nil?
        data['LocationStates'] = LocationStateList.stub(stub[:location_states]) unless stub[:location_states].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LocationStateList
    class LocationStateList
      def self.default(visited=[])
        return nil if visited.include?('LocationStateList')
        visited = visited + ['LocationStateList']
        [
          LocationState.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LocationState.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LocationState
    class LocationState
      def self.default(visited=[])
        return nil if visited.include?('LocationState')
        visited = visited + ['LocationState']
        {
          location: 'location',
          status: 'status',
        }
      end

      def self.stub(stub)
        stub ||= Types::LocationState.new
        data = {}
        data['Location'] = stub[:location] unless stub[:location].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data
      end
    end

    # Structure Stubber for FleetAttributes
    class FleetAttributes
      def self.default(visited=[])
        return nil if visited.include?('FleetAttributes')
        visited = visited + ['FleetAttributes']
        {
          fleet_id: 'fleet_id',
          fleet_arn: 'fleet_arn',
          fleet_type: 'fleet_type',
          instance_type: 'instance_type',
          description: 'description',
          name: 'name',
          creation_time: Time.now,
          termination_time: Time.now,
          status: 'status',
          build_id: 'build_id',
          build_arn: 'build_arn',
          script_id: 'script_id',
          script_arn: 'script_arn',
          server_launch_path: 'server_launch_path',
          server_launch_parameters: 'server_launch_parameters',
          log_paths: StringList.default(visited),
          new_game_session_protection_policy: 'new_game_session_protection_policy',
          operating_system: 'operating_system',
          resource_creation_limit_policy: ResourceCreationLimitPolicy.default(visited),
          metric_groups: MetricGroupList.default(visited),
          stopped_actions: FleetActionList.default(visited),
          instance_role_arn: 'instance_role_arn',
          certificate_configuration: CertificateConfiguration.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FleetAttributes.new
        data = {}
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        data['FleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        data['FleetType'] = stub[:fleet_type] unless stub[:fleet_type].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['TerminationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:termination_time]).to_i unless stub[:termination_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['BuildId'] = stub[:build_id] unless stub[:build_id].nil?
        data['BuildArn'] = stub[:build_arn] unless stub[:build_arn].nil?
        data['ScriptId'] = stub[:script_id] unless stub[:script_id].nil?
        data['ScriptArn'] = stub[:script_arn] unless stub[:script_arn].nil?
        data['ServerLaunchPath'] = stub[:server_launch_path] unless stub[:server_launch_path].nil?
        data['ServerLaunchParameters'] = stub[:server_launch_parameters] unless stub[:server_launch_parameters].nil?
        data['LogPaths'] = StringList.stub(stub[:log_paths]) unless stub[:log_paths].nil?
        data['NewGameSessionProtectionPolicy'] = stub[:new_game_session_protection_policy] unless stub[:new_game_session_protection_policy].nil?
        data['OperatingSystem'] = stub[:operating_system] unless stub[:operating_system].nil?
        data['ResourceCreationLimitPolicy'] = ResourceCreationLimitPolicy.stub(stub[:resource_creation_limit_policy]) unless stub[:resource_creation_limit_policy].nil?
        data['MetricGroups'] = MetricGroupList.stub(stub[:metric_groups]) unless stub[:metric_groups].nil?
        data['StoppedActions'] = FleetActionList.stub(stub[:stopped_actions]) unless stub[:stopped_actions].nil?
        data['InstanceRoleArn'] = stub[:instance_role_arn] unless stub[:instance_role_arn].nil?
        data['CertificateConfiguration'] = CertificateConfiguration.stub(stub[:certificate_configuration]) unless stub[:certificate_configuration].nil?
        data
      end
    end

    # Structure Stubber for CertificateConfiguration
    class CertificateConfiguration
      def self.default(visited=[])
        return nil if visited.include?('CertificateConfiguration')
        visited = visited + ['CertificateConfiguration']
        {
          certificate_type: 'certificate_type',
        }
      end

      def self.stub(stub)
        stub ||= Types::CertificateConfiguration.new
        data = {}
        data['CertificateType'] = stub[:certificate_type] unless stub[:certificate_type].nil?
        data
      end
    end

    # List Stubber for FleetActionList
    class FleetActionList
      def self.default(visited=[])
        return nil if visited.include?('FleetActionList')
        visited = visited + ['FleetActionList']
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

    # List Stubber for MetricGroupList
    class MetricGroupList
      def self.default(visited=[])
        return nil if visited.include?('MetricGroupList')
        visited = visited + ['MetricGroupList']
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

    # Structure Stubber for ResourceCreationLimitPolicy
    class ResourceCreationLimitPolicy
      def self.default(visited=[])
        return nil if visited.include?('ResourceCreationLimitPolicy')
        visited = visited + ['ResourceCreationLimitPolicy']
        {
          new_game_sessions_per_creator: 1,
          policy_period_in_minutes: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ResourceCreationLimitPolicy.new
        data = {}
        data['NewGameSessionsPerCreator'] = stub[:new_game_sessions_per_creator] unless stub[:new_game_sessions_per_creator].nil?
        data['PolicyPeriodInMinutes'] = stub[:policy_period_in_minutes] unless stub[:policy_period_in_minutes].nil?
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

    # Operation Stubber for CreateFleetLocations
    class CreateFleetLocations
      def self.default(visited=[])
        {
          fleet_id: 'fleet_id',
          fleet_arn: 'fleet_arn',
          location_states: LocationStateList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        data['FleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        data['LocationStates'] = LocationStateList.stub(stub[:location_states]) unless stub[:location_states].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for CreateGameServerGroup
    class CreateGameServerGroup
      def self.default(visited=[])
        {
          game_server_group: GameServerGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameServerGroup'] = GameServerGroup.stub(stub[:game_server_group]) unless stub[:game_server_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for GameServerGroup
    class GameServerGroup
      def self.default(visited=[])
        return nil if visited.include?('GameServerGroup')
        visited = visited + ['GameServerGroup']
        {
          game_server_group_name: 'game_server_group_name',
          game_server_group_arn: 'game_server_group_arn',
          role_arn: 'role_arn',
          instance_definitions: InstanceDefinitions.default(visited),
          balancing_strategy: 'balancing_strategy',
          game_server_protection_policy: 'game_server_protection_policy',
          auto_scaling_group_arn: 'auto_scaling_group_arn',
          status: 'status',
          status_reason: 'status_reason',
          suspended_actions: GameServerGroupActions.default(visited),
          creation_time: Time.now,
          last_updated_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::GameServerGroup.new
        data = {}
        data['GameServerGroupName'] = stub[:game_server_group_name] unless stub[:game_server_group_name].nil?
        data['GameServerGroupArn'] = stub[:game_server_group_arn] unless stub[:game_server_group_arn].nil?
        data['RoleArn'] = stub[:role_arn] unless stub[:role_arn].nil?
        data['InstanceDefinitions'] = InstanceDefinitions.stub(stub[:instance_definitions]) unless stub[:instance_definitions].nil?
        data['BalancingStrategy'] = stub[:balancing_strategy] unless stub[:balancing_strategy].nil?
        data['GameServerProtectionPolicy'] = stub[:game_server_protection_policy] unless stub[:game_server_protection_policy].nil?
        data['AutoScalingGroupArn'] = stub[:auto_scaling_group_arn] unless stub[:auto_scaling_group_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['SuspendedActions'] = GameServerGroupActions.stub(stub[:suspended_actions]) unless stub[:suspended_actions].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['LastUpdatedTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:last_updated_time]).to_i unless stub[:last_updated_time].nil?
        data
      end
    end

    # List Stubber for GameServerGroupActions
    class GameServerGroupActions
      def self.default(visited=[])
        return nil if visited.include?('GameServerGroupActions')
        visited = visited + ['GameServerGroupActions']
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

    # List Stubber for InstanceDefinitions
    class InstanceDefinitions
      def self.default(visited=[])
        return nil if visited.include?('InstanceDefinitions')
        visited = visited + ['InstanceDefinitions']
        [
          InstanceDefinition.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << InstanceDefinition.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for InstanceDefinition
    class InstanceDefinition
      def self.default(visited=[])
        return nil if visited.include?('InstanceDefinition')
        visited = visited + ['InstanceDefinition']
        {
          instance_type: 'instance_type',
          weighted_capacity: 'weighted_capacity',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceDefinition.new
        data = {}
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['WeightedCapacity'] = stub[:weighted_capacity] unless stub[:weighted_capacity].nil?
        data
      end
    end

    # Operation Stubber for CreateGameSession
    class CreateGameSession
      def self.default(visited=[])
        {
          game_session: GameSession.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameSession'] = GameSession.stub(stub[:game_session]) unless stub[:game_session].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for GameSession
    class GameSession
      def self.default(visited=[])
        return nil if visited.include?('GameSession')
        visited = visited + ['GameSession']
        {
          game_session_id: 'game_session_id',
          name: 'name',
          fleet_id: 'fleet_id',
          fleet_arn: 'fleet_arn',
          creation_time: Time.now,
          termination_time: Time.now,
          current_player_session_count: 1,
          maximum_player_session_count: 1,
          status: 'status',
          status_reason: 'status_reason',
          game_properties: GamePropertyList.default(visited),
          ip_address: 'ip_address',
          dns_name: 'dns_name',
          port: 1,
          player_session_creation_policy: 'player_session_creation_policy',
          creator_id: 'creator_id',
          game_session_data: 'game_session_data',
          matchmaker_data: 'matchmaker_data',
          location: 'location',
        }
      end

      def self.stub(stub)
        stub ||= Types::GameSession.new
        data = {}
        data['GameSessionId'] = stub[:game_session_id] unless stub[:game_session_id].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        data['FleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['TerminationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:termination_time]).to_i unless stub[:termination_time].nil?
        data['CurrentPlayerSessionCount'] = stub[:current_player_session_count] unless stub[:current_player_session_count].nil?
        data['MaximumPlayerSessionCount'] = stub[:maximum_player_session_count] unless stub[:maximum_player_session_count].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['GameProperties'] = GamePropertyList.stub(stub[:game_properties]) unless stub[:game_properties].nil?
        data['IpAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['DnsName'] = stub[:dns_name] unless stub[:dns_name].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['PlayerSessionCreationPolicy'] = stub[:player_session_creation_policy] unless stub[:player_session_creation_policy].nil?
        data['CreatorId'] = stub[:creator_id] unless stub[:creator_id].nil?
        data['GameSessionData'] = stub[:game_session_data] unless stub[:game_session_data].nil?
        data['MatchmakerData'] = stub[:matchmaker_data] unless stub[:matchmaker_data].nil?
        data['Location'] = stub[:location] unless stub[:location].nil?
        data
      end
    end

    # List Stubber for GamePropertyList
    class GamePropertyList
      def self.default(visited=[])
        return nil if visited.include?('GamePropertyList')
        visited = visited + ['GamePropertyList']
        [
          GameProperty.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GameProperty.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GameProperty
    class GameProperty
      def self.default(visited=[])
        return nil if visited.include?('GameProperty')
        visited = visited + ['GameProperty']
        {
          key: 'key',
          value: 'value',
        }
      end

      def self.stub(stub)
        stub ||= Types::GameProperty.new
        data = {}
        data['Key'] = stub[:key] unless stub[:key].nil?
        data['Value'] = stub[:value] unless stub[:value].nil?
        data
      end
    end

    # Operation Stubber for CreateGameSessionQueue
    class CreateGameSessionQueue
      def self.default(visited=[])
        {
          game_session_queue: GameSessionQueue.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameSessionQueue'] = GameSessionQueue.stub(stub[:game_session_queue]) unless stub[:game_session_queue].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for GameSessionQueue
    class GameSessionQueue
      def self.default(visited=[])
        return nil if visited.include?('GameSessionQueue')
        visited = visited + ['GameSessionQueue']
        {
          name: 'name',
          game_session_queue_arn: 'game_session_queue_arn',
          timeout_in_seconds: 1,
          player_latency_policies: PlayerLatencyPolicyList.default(visited),
          destinations: GameSessionQueueDestinationList.default(visited),
          filter_configuration: FilterConfiguration.default(visited),
          priority_configuration: PriorityConfiguration.default(visited),
          custom_event_data: 'custom_event_data',
          notification_target: 'notification_target',
        }
      end

      def self.stub(stub)
        stub ||= Types::GameSessionQueue.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['GameSessionQueueArn'] = stub[:game_session_queue_arn] unless stub[:game_session_queue_arn].nil?
        data['TimeoutInSeconds'] = stub[:timeout_in_seconds] unless stub[:timeout_in_seconds].nil?
        data['PlayerLatencyPolicies'] = PlayerLatencyPolicyList.stub(stub[:player_latency_policies]) unless stub[:player_latency_policies].nil?
        data['Destinations'] = GameSessionQueueDestinationList.stub(stub[:destinations]) unless stub[:destinations].nil?
        data['FilterConfiguration'] = FilterConfiguration.stub(stub[:filter_configuration]) unless stub[:filter_configuration].nil?
        data['PriorityConfiguration'] = PriorityConfiguration.stub(stub[:priority_configuration]) unless stub[:priority_configuration].nil?
        data['CustomEventData'] = stub[:custom_event_data] unless stub[:custom_event_data].nil?
        data['NotificationTarget'] = stub[:notification_target] unless stub[:notification_target].nil?
        data
      end
    end

    # Structure Stubber for PriorityConfiguration
    class PriorityConfiguration
      def self.default(visited=[])
        return nil if visited.include?('PriorityConfiguration')
        visited = visited + ['PriorityConfiguration']
        {
          priority_order: PriorityTypeList.default(visited),
          location_order: LocationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::PriorityConfiguration.new
        data = {}
        data['PriorityOrder'] = PriorityTypeList.stub(stub[:priority_order]) unless stub[:priority_order].nil?
        data['LocationOrder'] = LocationList.stub(stub[:location_order]) unless stub[:location_order].nil?
        data
      end
    end

    # List Stubber for LocationList
    class LocationList
      def self.default(visited=[])
        return nil if visited.include?('LocationList')
        visited = visited + ['LocationList']
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

    # List Stubber for PriorityTypeList
    class PriorityTypeList
      def self.default(visited=[])
        return nil if visited.include?('PriorityTypeList')
        visited = visited + ['PriorityTypeList']
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

    # Structure Stubber for FilterConfiguration
    class FilterConfiguration
      def self.default(visited=[])
        return nil if visited.include?('FilterConfiguration')
        visited = visited + ['FilterConfiguration']
        {
          allowed_locations: LocationList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::FilterConfiguration.new
        data = {}
        data['AllowedLocations'] = LocationList.stub(stub[:allowed_locations]) unless stub[:allowed_locations].nil?
        data
      end
    end

    # List Stubber for GameSessionQueueDestinationList
    class GameSessionQueueDestinationList
      def self.default(visited=[])
        return nil if visited.include?('GameSessionQueueDestinationList')
        visited = visited + ['GameSessionQueueDestinationList']
        [
          GameSessionQueueDestination.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GameSessionQueueDestination.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GameSessionQueueDestination
    class GameSessionQueueDestination
      def self.default(visited=[])
        return nil if visited.include?('GameSessionQueueDestination')
        visited = visited + ['GameSessionQueueDestination']
        {
          destination_arn: 'destination_arn',
        }
      end

      def self.stub(stub)
        stub ||= Types::GameSessionQueueDestination.new
        data = {}
        data['DestinationArn'] = stub[:destination_arn] unless stub[:destination_arn].nil?
        data
      end
    end

    # List Stubber for PlayerLatencyPolicyList
    class PlayerLatencyPolicyList
      def self.default(visited=[])
        return nil if visited.include?('PlayerLatencyPolicyList')
        visited = visited + ['PlayerLatencyPolicyList']
        [
          PlayerLatencyPolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PlayerLatencyPolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PlayerLatencyPolicy
    class PlayerLatencyPolicy
      def self.default(visited=[])
        return nil if visited.include?('PlayerLatencyPolicy')
        visited = visited + ['PlayerLatencyPolicy']
        {
          maximum_individual_player_latency_milliseconds: 1,
          policy_duration_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::PlayerLatencyPolicy.new
        data = {}
        data['MaximumIndividualPlayerLatencyMilliseconds'] = stub[:maximum_individual_player_latency_milliseconds] unless stub[:maximum_individual_player_latency_milliseconds].nil?
        data['PolicyDurationSeconds'] = stub[:policy_duration_seconds] unless stub[:policy_duration_seconds].nil?
        data
      end
    end

    # Operation Stubber for CreateMatchmakingConfiguration
    class CreateMatchmakingConfiguration
      def self.default(visited=[])
        {
          configuration: MatchmakingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Configuration'] = MatchmakingConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for MatchmakingConfiguration
    class MatchmakingConfiguration
      def self.default(visited=[])
        return nil if visited.include?('MatchmakingConfiguration')
        visited = visited + ['MatchmakingConfiguration']
        {
          name: 'name',
          configuration_arn: 'configuration_arn',
          description: 'description',
          game_session_queue_arns: QueueArnsList.default(visited),
          request_timeout_seconds: 1,
          acceptance_timeout_seconds: 1,
          acceptance_required: false,
          rule_set_name: 'rule_set_name',
          rule_set_arn: 'rule_set_arn',
          notification_target: 'notification_target',
          additional_player_count: 1,
          custom_event_data: 'custom_event_data',
          creation_time: Time.now,
          game_properties: GamePropertyList.default(visited),
          game_session_data: 'game_session_data',
          backfill_mode: 'backfill_mode',
          flex_match_mode: 'flex_match_mode',
        }
      end

      def self.stub(stub)
        stub ||= Types::MatchmakingConfiguration.new
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['ConfigurationArn'] = stub[:configuration_arn] unless stub[:configuration_arn].nil?
        data['Description'] = stub[:description] unless stub[:description].nil?
        data['GameSessionQueueArns'] = QueueArnsList.stub(stub[:game_session_queue_arns]) unless stub[:game_session_queue_arns].nil?
        data['RequestTimeoutSeconds'] = stub[:request_timeout_seconds] unless stub[:request_timeout_seconds].nil?
        data['AcceptanceTimeoutSeconds'] = stub[:acceptance_timeout_seconds] unless stub[:acceptance_timeout_seconds].nil?
        data['AcceptanceRequired'] = stub[:acceptance_required] unless stub[:acceptance_required].nil?
        data['RuleSetName'] = stub[:rule_set_name] unless stub[:rule_set_name].nil?
        data['RuleSetArn'] = stub[:rule_set_arn] unless stub[:rule_set_arn].nil?
        data['NotificationTarget'] = stub[:notification_target] unless stub[:notification_target].nil?
        data['AdditionalPlayerCount'] = stub[:additional_player_count] unless stub[:additional_player_count].nil?
        data['CustomEventData'] = stub[:custom_event_data] unless stub[:custom_event_data].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['GameProperties'] = GamePropertyList.stub(stub[:game_properties]) unless stub[:game_properties].nil?
        data['GameSessionData'] = stub[:game_session_data] unless stub[:game_session_data].nil?
        data['BackfillMode'] = stub[:backfill_mode] unless stub[:backfill_mode].nil?
        data['FlexMatchMode'] = stub[:flex_match_mode] unless stub[:flex_match_mode].nil?
        data
      end
    end

    # List Stubber for QueueArnsList
    class QueueArnsList
      def self.default(visited=[])
        return nil if visited.include?('QueueArnsList')
        visited = visited + ['QueueArnsList']
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

    # Operation Stubber for CreateMatchmakingRuleSet
    class CreateMatchmakingRuleSet
      def self.default(visited=[])
        {
          rule_set: MatchmakingRuleSet.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RuleSet'] = MatchmakingRuleSet.stub(stub[:rule_set]) unless stub[:rule_set].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for MatchmakingRuleSet
    class MatchmakingRuleSet
      def self.default(visited=[])
        return nil if visited.include?('MatchmakingRuleSet')
        visited = visited + ['MatchmakingRuleSet']
        {
          rule_set_name: 'rule_set_name',
          rule_set_arn: 'rule_set_arn',
          rule_set_body: 'rule_set_body',
          creation_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::MatchmakingRuleSet.new
        data = {}
        data['RuleSetName'] = stub[:rule_set_name] unless stub[:rule_set_name].nil?
        data['RuleSetArn'] = stub[:rule_set_arn] unless stub[:rule_set_arn].nil?
        data['RuleSetBody'] = stub[:rule_set_body] unless stub[:rule_set_body].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data
      end
    end

    # Operation Stubber for CreatePlayerSession
    class CreatePlayerSession
      def self.default(visited=[])
        {
          player_session: PlayerSession.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PlayerSession'] = PlayerSession.stub(stub[:player_session]) unless stub[:player_session].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for PlayerSession
    class PlayerSession
      def self.default(visited=[])
        return nil if visited.include?('PlayerSession')
        visited = visited + ['PlayerSession']
        {
          player_session_id: 'player_session_id',
          player_id: 'player_id',
          game_session_id: 'game_session_id',
          fleet_id: 'fleet_id',
          fleet_arn: 'fleet_arn',
          creation_time: Time.now,
          termination_time: Time.now,
          status: 'status',
          ip_address: 'ip_address',
          dns_name: 'dns_name',
          port: 1,
          player_data: 'player_data',
        }
      end

      def self.stub(stub)
        stub ||= Types::PlayerSession.new
        data = {}
        data['PlayerSessionId'] = stub[:player_session_id] unless stub[:player_session_id].nil?
        data['PlayerId'] = stub[:player_id] unless stub[:player_id].nil?
        data['GameSessionId'] = stub[:game_session_id] unless stub[:game_session_id].nil?
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        data['FleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['TerminationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:termination_time]).to_i unless stub[:termination_time].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['IpAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['DnsName'] = stub[:dns_name] unless stub[:dns_name].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['PlayerData'] = stub[:player_data] unless stub[:player_data].nil?
        data
      end
    end

    # Operation Stubber for CreatePlayerSessions
    class CreatePlayerSessions
      def self.default(visited=[])
        {
          player_sessions: PlayerSessionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PlayerSessions'] = PlayerSessionList.stub(stub[:player_sessions]) unless stub[:player_sessions].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for PlayerSessionList
    class PlayerSessionList
      def self.default(visited=[])
        return nil if visited.include?('PlayerSessionList')
        visited = visited + ['PlayerSessionList']
        [
          PlayerSession.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PlayerSession.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for CreateScript
    class CreateScript
      def self.default(visited=[])
        {
          script: Script.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Script'] = Script.stub(stub[:script]) unless stub[:script].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Script
    class Script
      def self.default(visited=[])
        return nil if visited.include?('Script')
        visited = visited + ['Script']
        {
          script_id: 'script_id',
          script_arn: 'script_arn',
          name: 'name',
          version: 'version',
          size_on_disk: 1,
          creation_time: Time.now,
          storage_location: S3Location.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Script.new
        data = {}
        data['ScriptId'] = stub[:script_id] unless stub[:script_id].nil?
        data['ScriptArn'] = stub[:script_arn] unless stub[:script_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Version'] = stub[:version] unless stub[:version].nil?
        data['SizeOnDisk'] = stub[:size_on_disk] unless stub[:size_on_disk].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['StorageLocation'] = S3Location.stub(stub[:storage_location]) unless stub[:storage_location].nil?
        data
      end
    end

    # Operation Stubber for CreateVpcPeeringAuthorization
    class CreateVpcPeeringAuthorization
      def self.default(visited=[])
        {
          vpc_peering_authorization: VpcPeeringAuthorization.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VpcPeeringAuthorization'] = VpcPeeringAuthorization.stub(stub[:vpc_peering_authorization]) unless stub[:vpc_peering_authorization].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for VpcPeeringAuthorization
    class VpcPeeringAuthorization
      def self.default(visited=[])
        return nil if visited.include?('VpcPeeringAuthorization')
        visited = visited + ['VpcPeeringAuthorization']
        {
          game_lift_aws_account_id: 'game_lift_aws_account_id',
          peer_vpc_aws_account_id: 'peer_vpc_aws_account_id',
          peer_vpc_id: 'peer_vpc_id',
          creation_time: Time.now,
          expiration_time: Time.now,
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcPeeringAuthorization.new
        data = {}
        data['GameLiftAwsAccountId'] = stub[:game_lift_aws_account_id] unless stub[:game_lift_aws_account_id].nil?
        data['PeerVpcAwsAccountId'] = stub[:peer_vpc_aws_account_id] unless stub[:peer_vpc_aws_account_id].nil?
        data['PeerVpcId'] = stub[:peer_vpc_id] unless stub[:peer_vpc_id].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['ExpirationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:expiration_time]).to_i unless stub[:expiration_time].nil?
        data
      end
    end

    # Operation Stubber for CreateVpcPeeringConnection
    class CreateVpcPeeringConnection
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteAlias
    class DeleteAlias
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteBuild
    class DeleteBuild
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteFleetLocations
    class DeleteFleetLocations
      def self.default(visited=[])
        {
          fleet_id: 'fleet_id',
          fleet_arn: 'fleet_arn',
          location_states: LocationStateList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        data['FleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        data['LocationStates'] = LocationStateList.stub(stub[:location_states]) unless stub[:location_states].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteGameServerGroup
    class DeleteGameServerGroup
      def self.default(visited=[])
        {
          game_server_group: GameServerGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameServerGroup'] = GameServerGroup.stub(stub[:game_server_group]) unless stub[:game_server_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteGameSessionQueue
    class DeleteGameSessionQueue
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteMatchmakingConfiguration
    class DeleteMatchmakingConfiguration
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteMatchmakingRuleSet
    class DeleteMatchmakingRuleSet
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteScalingPolicy
    class DeleteScalingPolicy
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteScript
    class DeleteScript
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteVpcPeeringAuthorization
    class DeleteVpcPeeringAuthorization
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeleteVpcPeeringConnection
    class DeleteVpcPeeringConnection
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DeregisterGameServer
    class DeregisterGameServer
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeAlias
    class DescribeAlias
      def self.default(visited=[])
        {
          alias: Alias.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Alias'] = Alias.stub(stub[:alias]) unless stub[:alias].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeBuild
    class DescribeBuild
      def self.default(visited=[])
        {
          build: Build.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Build'] = Build.stub(stub[:build]) unless stub[:build].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeEC2InstanceLimits
    class DescribeEC2InstanceLimits
      def self.default(visited=[])
        {
          ec2_instance_limits: EC2InstanceLimitList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['EC2InstanceLimits'] = EC2InstanceLimitList.stub(stub[:ec2_instance_limits]) unless stub[:ec2_instance_limits].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EC2InstanceLimitList
    class EC2InstanceLimitList
      def self.default(visited=[])
        return nil if visited.include?('EC2InstanceLimitList')
        visited = visited + ['EC2InstanceLimitList']
        [
          EC2InstanceLimit.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << EC2InstanceLimit.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for EC2InstanceLimit
    class EC2InstanceLimit
      def self.default(visited=[])
        return nil if visited.include?('EC2InstanceLimit')
        visited = visited + ['EC2InstanceLimit']
        {
          ec2_instance_type: 'ec2_instance_type',
          current_instances: 1,
          instance_limit: 1,
          location: 'location',
        }
      end

      def self.stub(stub)
        stub ||= Types::EC2InstanceLimit.new
        data = {}
        data['EC2InstanceType'] = stub[:ec2_instance_type] unless stub[:ec2_instance_type].nil?
        data['CurrentInstances'] = stub[:current_instances] unless stub[:current_instances].nil?
        data['InstanceLimit'] = stub[:instance_limit] unless stub[:instance_limit].nil?
        data['Location'] = stub[:location] unless stub[:location].nil?
        data
      end
    end

    # Operation Stubber for DescribeFleetAttributes
    class DescribeFleetAttributes
      def self.default(visited=[])
        {
          fleet_attributes: FleetAttributesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FleetAttributes'] = FleetAttributesList.stub(stub[:fleet_attributes]) unless stub[:fleet_attributes].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FleetAttributesList
    class FleetAttributesList
      def self.default(visited=[])
        return nil if visited.include?('FleetAttributesList')
        visited = visited + ['FleetAttributesList']
        [
          FleetAttributes.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FleetAttributes.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeFleetCapacity
    class DescribeFleetCapacity
      def self.default(visited=[])
        {
          fleet_capacity: FleetCapacityList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FleetCapacity'] = FleetCapacityList.stub(stub[:fleet_capacity]) unless stub[:fleet_capacity].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FleetCapacityList
    class FleetCapacityList
      def self.default(visited=[])
        return nil if visited.include?('FleetCapacityList')
        visited = visited + ['FleetCapacityList']
        [
          FleetCapacity.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FleetCapacity.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for FleetCapacity
    class FleetCapacity
      def self.default(visited=[])
        return nil if visited.include?('FleetCapacity')
        visited = visited + ['FleetCapacity']
        {
          fleet_id: 'fleet_id',
          fleet_arn: 'fleet_arn',
          instance_type: 'instance_type',
          instance_counts: EC2InstanceCounts.default(visited),
          location: 'location',
        }
      end

      def self.stub(stub)
        stub ||= Types::FleetCapacity.new
        data = {}
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        data['FleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        data['InstanceType'] = stub[:instance_type] unless stub[:instance_type].nil?
        data['InstanceCounts'] = EC2InstanceCounts.stub(stub[:instance_counts]) unless stub[:instance_counts].nil?
        data['Location'] = stub[:location] unless stub[:location].nil?
        data
      end
    end

    # Structure Stubber for EC2InstanceCounts
    class EC2InstanceCounts
      def self.default(visited=[])
        return nil if visited.include?('EC2InstanceCounts')
        visited = visited + ['EC2InstanceCounts']
        {
          desired: 1,
          minimum: 1,
          maximum: 1,
          pending: 1,
          active: 1,
          idle: 1,
          terminating: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::EC2InstanceCounts.new
        data = {}
        data['DESIRED'] = stub[:desired] unless stub[:desired].nil?
        data['MINIMUM'] = stub[:minimum] unless stub[:minimum].nil?
        data['MAXIMUM'] = stub[:maximum] unless stub[:maximum].nil?
        data['PENDING'] = stub[:pending] unless stub[:pending].nil?
        data['ACTIVE'] = stub[:active] unless stub[:active].nil?
        data['IDLE'] = stub[:idle] unless stub[:idle].nil?
        data['TERMINATING'] = stub[:terminating] unless stub[:terminating].nil?
        data
      end
    end

    # Operation Stubber for DescribeFleetEvents
    class DescribeFleetEvents
      def self.default(visited=[])
        {
          events: EventList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Events'] = EventList.stub(stub[:events]) unless stub[:events].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for EventList
    class EventList
      def self.default(visited=[])
        return nil if visited.include?('EventList')
        visited = visited + ['EventList']
        [
          Event.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Event.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Event
    class Event
      def self.default(visited=[])
        return nil if visited.include?('Event')
        visited = visited + ['Event']
        {
          event_id: 'event_id',
          resource_id: 'resource_id',
          event_code: 'event_code',
          message: 'message',
          event_time: Time.now,
          pre_signed_log_url: 'pre_signed_log_url',
        }
      end

      def self.stub(stub)
        stub ||= Types::Event.new
        data = {}
        data['EventId'] = stub[:event_id] unless stub[:event_id].nil?
        data['ResourceId'] = stub[:resource_id] unless stub[:resource_id].nil?
        data['EventCode'] = stub[:event_code] unless stub[:event_code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data['EventTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:event_time]).to_i unless stub[:event_time].nil?
        data['PreSignedLogUrl'] = stub[:pre_signed_log_url] unless stub[:pre_signed_log_url].nil?
        data
      end
    end

    # Operation Stubber for DescribeFleetLocationAttributes
    class DescribeFleetLocationAttributes
      def self.default(visited=[])
        {
          fleet_id: 'fleet_id',
          fleet_arn: 'fleet_arn',
          location_attributes: LocationAttributesList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        data['FleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        data['LocationAttributes'] = LocationAttributesList.stub(stub[:location_attributes]) unless stub[:location_attributes].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for LocationAttributesList
    class LocationAttributesList
      def self.default(visited=[])
        return nil if visited.include?('LocationAttributesList')
        visited = visited + ['LocationAttributesList']
        [
          LocationAttributes.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << LocationAttributes.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for LocationAttributes
    class LocationAttributes
      def self.default(visited=[])
        return nil if visited.include?('LocationAttributes')
        visited = visited + ['LocationAttributes']
        {
          location_state: LocationState.default(visited),
          stopped_actions: FleetActionList.default(visited),
          update_status: 'update_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::LocationAttributes.new
        data = {}
        data['LocationState'] = LocationState.stub(stub[:location_state]) unless stub[:location_state].nil?
        data['StoppedActions'] = FleetActionList.stub(stub[:stopped_actions]) unless stub[:stopped_actions].nil?
        data['UpdateStatus'] = stub[:update_status] unless stub[:update_status].nil?
        data
      end
    end

    # Operation Stubber for DescribeFleetLocationCapacity
    class DescribeFleetLocationCapacity
      def self.default(visited=[])
        {
          fleet_capacity: FleetCapacity.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FleetCapacity'] = FleetCapacity.stub(stub[:fleet_capacity]) unless stub[:fleet_capacity].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeFleetLocationUtilization
    class DescribeFleetLocationUtilization
      def self.default(visited=[])
        {
          fleet_utilization: FleetUtilization.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FleetUtilization'] = FleetUtilization.stub(stub[:fleet_utilization]) unless stub[:fleet_utilization].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for FleetUtilization
    class FleetUtilization
      def self.default(visited=[])
        return nil if visited.include?('FleetUtilization')
        visited = visited + ['FleetUtilization']
        {
          fleet_id: 'fleet_id',
          fleet_arn: 'fleet_arn',
          active_server_process_count: 1,
          active_game_session_count: 1,
          current_player_session_count: 1,
          maximum_player_session_count: 1,
          location: 'location',
        }
      end

      def self.stub(stub)
        stub ||= Types::FleetUtilization.new
        data = {}
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        data['FleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        data['ActiveServerProcessCount'] = stub[:active_server_process_count] unless stub[:active_server_process_count].nil?
        data['ActiveGameSessionCount'] = stub[:active_game_session_count] unless stub[:active_game_session_count].nil?
        data['CurrentPlayerSessionCount'] = stub[:current_player_session_count] unless stub[:current_player_session_count].nil?
        data['MaximumPlayerSessionCount'] = stub[:maximum_player_session_count] unless stub[:maximum_player_session_count].nil?
        data['Location'] = stub[:location] unless stub[:location].nil?
        data
      end
    end

    # Operation Stubber for DescribeFleetPortSettings
    class DescribeFleetPortSettings
      def self.default(visited=[])
        {
          fleet_id: 'fleet_id',
          fleet_arn: 'fleet_arn',
          inbound_permissions: IpPermissionsList.default(visited),
          update_status: 'update_status',
          location: 'location',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        data['FleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        data['InboundPermissions'] = IpPermissionsList.stub(stub[:inbound_permissions]) unless stub[:inbound_permissions].nil?
        data['UpdateStatus'] = stub[:update_status] unless stub[:update_status].nil?
        data['Location'] = stub[:location] unless stub[:location].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for IpPermissionsList
    class IpPermissionsList
      def self.default(visited=[])
        return nil if visited.include?('IpPermissionsList')
        visited = visited + ['IpPermissionsList']
        [
          IpPermission.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << IpPermission.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for IpPermission
    class IpPermission
      def self.default(visited=[])
        return nil if visited.include?('IpPermission')
        visited = visited + ['IpPermission']
        {
          from_port: 1,
          to_port: 1,
          ip_range: 'ip_range',
          protocol: 'protocol',
        }
      end

      def self.stub(stub)
        stub ||= Types::IpPermission.new
        data = {}
        data['FromPort'] = stub[:from_port] unless stub[:from_port].nil?
        data['ToPort'] = stub[:to_port] unless stub[:to_port].nil?
        data['IpRange'] = stub[:ip_range] unless stub[:ip_range].nil?
        data['Protocol'] = stub[:protocol] unless stub[:protocol].nil?
        data
      end
    end

    # Operation Stubber for DescribeFleetUtilization
    class DescribeFleetUtilization
      def self.default(visited=[])
        {
          fleet_utilization: FleetUtilizationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FleetUtilization'] = FleetUtilizationList.stub(stub[:fleet_utilization]) unless stub[:fleet_utilization].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FleetUtilizationList
    class FleetUtilizationList
      def self.default(visited=[])
        return nil if visited.include?('FleetUtilizationList')
        visited = visited + ['FleetUtilizationList']
        [
          FleetUtilization.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << FleetUtilization.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeGameServer
    class DescribeGameServer
      def self.default(visited=[])
        {
          game_server: GameServer.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameServer'] = GameServer.stub(stub[:game_server]) unless stub[:game_server].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeGameServerGroup
    class DescribeGameServerGroup
      def self.default(visited=[])
        {
          game_server_group: GameServerGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameServerGroup'] = GameServerGroup.stub(stub[:game_server_group]) unless stub[:game_server_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeGameServerInstances
    class DescribeGameServerInstances
      def self.default(visited=[])
        {
          game_server_instances: GameServerInstances.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameServerInstances'] = GameServerInstances.stub(stub[:game_server_instances]) unless stub[:game_server_instances].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GameServerInstances
    class GameServerInstances
      def self.default(visited=[])
        return nil if visited.include?('GameServerInstances')
        visited = visited + ['GameServerInstances']
        [
          GameServerInstance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GameServerInstance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GameServerInstance
    class GameServerInstance
      def self.default(visited=[])
        return nil if visited.include?('GameServerInstance')
        visited = visited + ['GameServerInstance']
        {
          game_server_group_name: 'game_server_group_name',
          game_server_group_arn: 'game_server_group_arn',
          instance_id: 'instance_id',
          instance_status: 'instance_status',
        }
      end

      def self.stub(stub)
        stub ||= Types::GameServerInstance.new
        data = {}
        data['GameServerGroupName'] = stub[:game_server_group_name] unless stub[:game_server_group_name].nil?
        data['GameServerGroupArn'] = stub[:game_server_group_arn] unless stub[:game_server_group_arn].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['InstanceStatus'] = stub[:instance_status] unless stub[:instance_status].nil?
        data
      end
    end

    # Operation Stubber for DescribeGameSessionDetails
    class DescribeGameSessionDetails
      def self.default(visited=[])
        {
          game_session_details: GameSessionDetailList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameSessionDetails'] = GameSessionDetailList.stub(stub[:game_session_details]) unless stub[:game_session_details].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GameSessionDetailList
    class GameSessionDetailList
      def self.default(visited=[])
        return nil if visited.include?('GameSessionDetailList')
        visited = visited + ['GameSessionDetailList']
        [
          GameSessionDetail.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GameSessionDetail.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for GameSessionDetail
    class GameSessionDetail
      def self.default(visited=[])
        return nil if visited.include?('GameSessionDetail')
        visited = visited + ['GameSessionDetail']
        {
          game_session: GameSession.default(visited),
          protection_policy: 'protection_policy',
        }
      end

      def self.stub(stub)
        stub ||= Types::GameSessionDetail.new
        data = {}
        data['GameSession'] = GameSession.stub(stub[:game_session]) unless stub[:game_session].nil?
        data['ProtectionPolicy'] = stub[:protection_policy] unless stub[:protection_policy].nil?
        data
      end
    end

    # Operation Stubber for DescribeGameSessionPlacement
    class DescribeGameSessionPlacement
      def self.default(visited=[])
        {
          game_session_placement: GameSessionPlacement.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameSessionPlacement'] = GameSessionPlacement.stub(stub[:game_session_placement]) unless stub[:game_session_placement].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for GameSessionPlacement
    class GameSessionPlacement
      def self.default(visited=[])
        return nil if visited.include?('GameSessionPlacement')
        visited = visited + ['GameSessionPlacement']
        {
          placement_id: 'placement_id',
          game_session_queue_name: 'game_session_queue_name',
          status: 'status',
          game_properties: GamePropertyList.default(visited),
          maximum_player_session_count: 1,
          game_session_name: 'game_session_name',
          game_session_id: 'game_session_id',
          game_session_arn: 'game_session_arn',
          game_session_region: 'game_session_region',
          player_latencies: PlayerLatencyList.default(visited),
          start_time: Time.now,
          end_time: Time.now,
          ip_address: 'ip_address',
          dns_name: 'dns_name',
          port: 1,
          placed_player_sessions: PlacedPlayerSessionList.default(visited),
          game_session_data: 'game_session_data',
          matchmaker_data: 'matchmaker_data',
        }
      end

      def self.stub(stub)
        stub ||= Types::GameSessionPlacement.new
        data = {}
        data['PlacementId'] = stub[:placement_id] unless stub[:placement_id].nil?
        data['GameSessionQueueName'] = stub[:game_session_queue_name] unless stub[:game_session_queue_name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['GameProperties'] = GamePropertyList.stub(stub[:game_properties]) unless stub[:game_properties].nil?
        data['MaximumPlayerSessionCount'] = stub[:maximum_player_session_count] unless stub[:maximum_player_session_count].nil?
        data['GameSessionName'] = stub[:game_session_name] unless stub[:game_session_name].nil?
        data['GameSessionId'] = stub[:game_session_id] unless stub[:game_session_id].nil?
        data['GameSessionArn'] = stub[:game_session_arn] unless stub[:game_session_arn].nil?
        data['GameSessionRegion'] = stub[:game_session_region] unless stub[:game_session_region].nil?
        data['PlayerLatencies'] = PlayerLatencyList.stub(stub[:player_latencies]) unless stub[:player_latencies].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['IpAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['DnsName'] = stub[:dns_name] unless stub[:dns_name].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['PlacedPlayerSessions'] = PlacedPlayerSessionList.stub(stub[:placed_player_sessions]) unless stub[:placed_player_sessions].nil?
        data['GameSessionData'] = stub[:game_session_data] unless stub[:game_session_data].nil?
        data['MatchmakerData'] = stub[:matchmaker_data] unless stub[:matchmaker_data].nil?
        data
      end
    end

    # List Stubber for PlacedPlayerSessionList
    class PlacedPlayerSessionList
      def self.default(visited=[])
        return nil if visited.include?('PlacedPlayerSessionList')
        visited = visited + ['PlacedPlayerSessionList']
        [
          PlacedPlayerSession.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PlacedPlayerSession.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PlacedPlayerSession
    class PlacedPlayerSession
      def self.default(visited=[])
        return nil if visited.include?('PlacedPlayerSession')
        visited = visited + ['PlacedPlayerSession']
        {
          player_id: 'player_id',
          player_session_id: 'player_session_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::PlacedPlayerSession.new
        data = {}
        data['PlayerId'] = stub[:player_id] unless stub[:player_id].nil?
        data['PlayerSessionId'] = stub[:player_session_id] unless stub[:player_session_id].nil?
        data
      end
    end

    # List Stubber for PlayerLatencyList
    class PlayerLatencyList
      def self.default(visited=[])
        return nil if visited.include?('PlayerLatencyList')
        visited = visited + ['PlayerLatencyList']
        [
          PlayerLatency.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << PlayerLatency.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PlayerLatency
    class PlayerLatency
      def self.default(visited=[])
        return nil if visited.include?('PlayerLatency')
        visited = visited + ['PlayerLatency']
        {
          player_id: 'player_id',
          region_identifier: 'region_identifier',
          latency_in_milliseconds: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::PlayerLatency.new
        data = {}
        data['PlayerId'] = stub[:player_id] unless stub[:player_id].nil?
        data['RegionIdentifier'] = stub[:region_identifier] unless stub[:region_identifier].nil?
        data['LatencyInMilliseconds'] = Hearth::NumberHelper.serialize(stub[:latency_in_milliseconds])
        data
      end
    end

    # Operation Stubber for DescribeGameSessionQueues
    class DescribeGameSessionQueues
      def self.default(visited=[])
        {
          game_session_queues: GameSessionQueueList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameSessionQueues'] = GameSessionQueueList.stub(stub[:game_session_queues]) unless stub[:game_session_queues].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GameSessionQueueList
    class GameSessionQueueList
      def self.default(visited=[])
        return nil if visited.include?('GameSessionQueueList')
        visited = visited + ['GameSessionQueueList']
        [
          GameSessionQueue.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GameSessionQueue.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeGameSessions
    class DescribeGameSessions
      def self.default(visited=[])
        {
          game_sessions: GameSessionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameSessions'] = GameSessionList.stub(stub[:game_sessions]) unless stub[:game_sessions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GameSessionList
    class GameSessionList
      def self.default(visited=[])
        return nil if visited.include?('GameSessionList')
        visited = visited + ['GameSessionList']
        [
          GameSession.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GameSession.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeInstances
    class DescribeInstances
      def self.default(visited=[])
        {
          instances: InstanceList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Instances'] = InstanceList.stub(stub[:instances]) unless stub[:instances].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for InstanceList
    class InstanceList
      def self.default(visited=[])
        return nil if visited.include?('InstanceList')
        visited = visited + ['InstanceList']
        [
          Instance.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Instance.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Instance
    class Instance
      def self.default(visited=[])
        return nil if visited.include?('Instance')
        visited = visited + ['Instance']
        {
          fleet_id: 'fleet_id',
          fleet_arn: 'fleet_arn',
          instance_id: 'instance_id',
          ip_address: 'ip_address',
          dns_name: 'dns_name',
          operating_system: 'operating_system',
          type: 'type',
          status: 'status',
          creation_time: Time.now,
          location: 'location',
        }
      end

      def self.stub(stub)
        stub ||= Types::Instance.new
        data = {}
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        data['FleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['IpAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['DnsName'] = stub[:dns_name] unless stub[:dns_name].nil?
        data['OperatingSystem'] = stub[:operating_system] unless stub[:operating_system].nil?
        data['Type'] = stub[:type] unless stub[:type].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['CreationTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:creation_time]).to_i unless stub[:creation_time].nil?
        data['Location'] = stub[:location] unless stub[:location].nil?
        data
      end
    end

    # Operation Stubber for DescribeMatchmaking
    class DescribeMatchmaking
      def self.default(visited=[])
        {
          ticket_list: MatchmakingTicketList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['TicketList'] = MatchmakingTicketList.stub(stub[:ticket_list]) unless stub[:ticket_list].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MatchmakingTicketList
    class MatchmakingTicketList
      def self.default(visited=[])
        return nil if visited.include?('MatchmakingTicketList')
        visited = visited + ['MatchmakingTicketList']
        [
          MatchmakingTicket.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MatchmakingTicket.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MatchmakingTicket
    class MatchmakingTicket
      def self.default(visited=[])
        return nil if visited.include?('MatchmakingTicket')
        visited = visited + ['MatchmakingTicket']
        {
          ticket_id: 'ticket_id',
          configuration_name: 'configuration_name',
          configuration_arn: 'configuration_arn',
          status: 'status',
          status_reason: 'status_reason',
          status_message: 'status_message',
          start_time: Time.now,
          end_time: Time.now,
          players: PlayerList.default(visited),
          game_session_connection_info: GameSessionConnectionInfo.default(visited),
          estimated_wait_time: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::MatchmakingTicket.new
        data = {}
        data['TicketId'] = stub[:ticket_id] unless stub[:ticket_id].nil?
        data['ConfigurationName'] = stub[:configuration_name] unless stub[:configuration_name].nil?
        data['ConfigurationArn'] = stub[:configuration_arn] unless stub[:configuration_arn].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['StatusReason'] = stub[:status_reason] unless stub[:status_reason].nil?
        data['StatusMessage'] = stub[:status_message] unless stub[:status_message].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:start_time]).to_i unless stub[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(stub[:end_time]).to_i unless stub[:end_time].nil?
        data['Players'] = PlayerList.stub(stub[:players]) unless stub[:players].nil?
        data['GameSessionConnectionInfo'] = GameSessionConnectionInfo.stub(stub[:game_session_connection_info]) unless stub[:game_session_connection_info].nil?
        data['EstimatedWaitTime'] = stub[:estimated_wait_time] unless stub[:estimated_wait_time].nil?
        data
      end
    end

    # Structure Stubber for GameSessionConnectionInfo
    class GameSessionConnectionInfo
      def self.default(visited=[])
        return nil if visited.include?('GameSessionConnectionInfo')
        visited = visited + ['GameSessionConnectionInfo']
        {
          game_session_arn: 'game_session_arn',
          ip_address: 'ip_address',
          dns_name: 'dns_name',
          port: 1,
          matched_player_sessions: MatchedPlayerSessionList.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::GameSessionConnectionInfo.new
        data = {}
        data['GameSessionArn'] = stub[:game_session_arn] unless stub[:game_session_arn].nil?
        data['IpAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['DnsName'] = stub[:dns_name] unless stub[:dns_name].nil?
        data['Port'] = stub[:port] unless stub[:port].nil?
        data['MatchedPlayerSessions'] = MatchedPlayerSessionList.stub(stub[:matched_player_sessions]) unless stub[:matched_player_sessions].nil?
        data
      end
    end

    # List Stubber for MatchedPlayerSessionList
    class MatchedPlayerSessionList
      def self.default(visited=[])
        return nil if visited.include?('MatchedPlayerSessionList')
        visited = visited + ['MatchedPlayerSessionList']
        [
          MatchedPlayerSession.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MatchedPlayerSession.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for MatchedPlayerSession
    class MatchedPlayerSession
      def self.default(visited=[])
        return nil if visited.include?('MatchedPlayerSession')
        visited = visited + ['MatchedPlayerSession']
        {
          player_id: 'player_id',
          player_session_id: 'player_session_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::MatchedPlayerSession.new
        data = {}
        data['PlayerId'] = stub[:player_id] unless stub[:player_id].nil?
        data['PlayerSessionId'] = stub[:player_session_id] unless stub[:player_session_id].nil?
        data
      end
    end

    # List Stubber for PlayerList
    class PlayerList
      def self.default(visited=[])
        return nil if visited.include?('PlayerList')
        visited = visited + ['PlayerList']
        [
          Player.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Player.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for Player
    class Player
      def self.default(visited=[])
        return nil if visited.include?('Player')
        visited = visited + ['Player']
        {
          player_id: 'player_id',
          player_attributes: PlayerAttributeMap.default(visited),
          team: 'team',
          latency_in_ms: LatencyMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Player.new
        data = {}
        data['PlayerId'] = stub[:player_id] unless stub[:player_id].nil?
        data['PlayerAttributes'] = PlayerAttributeMap.stub(stub[:player_attributes]) unless stub[:player_attributes].nil?
        data['Team'] = stub[:team] unless stub[:team].nil?
        data['LatencyInMs'] = LatencyMap.stub(stub[:latency_in_ms]) unless stub[:latency_in_ms].nil?
        data
      end
    end

    # Map Stubber for LatencyMap
    class LatencyMap
      def self.default(visited=[])
        return nil if visited.include?('LatencyMap')
        visited = visited + ['LatencyMap']
        {
          test_key: 1
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

    # Map Stubber for PlayerAttributeMap
    class PlayerAttributeMap
      def self.default(visited=[])
        return nil if visited.include?('PlayerAttributeMap')
        visited = visited + ['PlayerAttributeMap']
        {
          test_key: AttributeValue.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = AttributeValue.stub(value) unless value.nil?
        end
        data
      end
    end

    # Structure Stubber for AttributeValue
    class AttributeValue
      def self.default(visited=[])
        return nil if visited.include?('AttributeValue')
        visited = visited + ['AttributeValue']
        {
          s: 's',
          n: 1.0,
          sl: StringList.default(visited),
          sdm: StringDoubleMap.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::AttributeValue.new
        data = {}
        data['S'] = stub[:s] unless stub[:s].nil?
        data['N'] = Hearth::NumberHelper.serialize(stub[:n])
        data['SL'] = StringList.stub(stub[:sl]) unless stub[:sl].nil?
        data['SDM'] = StringDoubleMap.stub(stub[:sdm]) unless stub[:sdm].nil?
        data
      end
    end

    # Map Stubber for StringDoubleMap
    class StringDoubleMap
      def self.default(visited=[])
        return nil if visited.include?('StringDoubleMap')
        visited = visited + ['StringDoubleMap']
        {
          test_key: 1.0
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Hearth::NumberHelper.serialize(value)
        end
        data
      end
    end

    # Operation Stubber for DescribeMatchmakingConfigurations
    class DescribeMatchmakingConfigurations
      def self.default(visited=[])
        {
          configurations: MatchmakingConfigurationList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Configurations'] = MatchmakingConfigurationList.stub(stub[:configurations]) unless stub[:configurations].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MatchmakingConfigurationList
    class MatchmakingConfigurationList
      def self.default(visited=[])
        return nil if visited.include?('MatchmakingConfigurationList')
        visited = visited + ['MatchmakingConfigurationList']
        [
          MatchmakingConfiguration.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MatchmakingConfiguration.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeMatchmakingRuleSets
    class DescribeMatchmakingRuleSets
      def self.default(visited=[])
        {
          rule_sets: MatchmakingRuleSetList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RuleSets'] = MatchmakingRuleSetList.stub(stub[:rule_sets]) unless stub[:rule_sets].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for MatchmakingRuleSetList
    class MatchmakingRuleSetList
      def self.default(visited=[])
        return nil if visited.include?('MatchmakingRuleSetList')
        visited = visited + ['MatchmakingRuleSetList']
        [
          MatchmakingRuleSet.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << MatchmakingRuleSet.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribePlayerSessions
    class DescribePlayerSessions
      def self.default(visited=[])
        {
          player_sessions: PlayerSessionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PlayerSessions'] = PlayerSessionList.stub(stub[:player_sessions]) unless stub[:player_sessions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeRuntimeConfiguration
    class DescribeRuntimeConfiguration
      def self.default(visited=[])
        {
          runtime_configuration: RuntimeConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RuntimeConfiguration'] = RuntimeConfiguration.stub(stub[:runtime_configuration]) unless stub[:runtime_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for RuntimeConfiguration
    class RuntimeConfiguration
      def self.default(visited=[])
        return nil if visited.include?('RuntimeConfiguration')
        visited = visited + ['RuntimeConfiguration']
        {
          server_processes: ServerProcessList.default(visited),
          max_concurrent_game_session_activations: 1,
          game_session_activation_timeout_seconds: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::RuntimeConfiguration.new
        data = {}
        data['ServerProcesses'] = ServerProcessList.stub(stub[:server_processes]) unless stub[:server_processes].nil?
        data['MaxConcurrentGameSessionActivations'] = stub[:max_concurrent_game_session_activations] unless stub[:max_concurrent_game_session_activations].nil?
        data['GameSessionActivationTimeoutSeconds'] = stub[:game_session_activation_timeout_seconds] unless stub[:game_session_activation_timeout_seconds].nil?
        data
      end
    end

    # List Stubber for ServerProcessList
    class ServerProcessList
      def self.default(visited=[])
        return nil if visited.include?('ServerProcessList')
        visited = visited + ['ServerProcessList']
        [
          ServerProcess.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ServerProcess.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ServerProcess
    class ServerProcess
      def self.default(visited=[])
        return nil if visited.include?('ServerProcess')
        visited = visited + ['ServerProcess']
        {
          launch_path: 'launch_path',
          parameters: 'parameters',
          concurrent_executions: 1,
        }
      end

      def self.stub(stub)
        stub ||= Types::ServerProcess.new
        data = {}
        data['LaunchPath'] = stub[:launch_path] unless stub[:launch_path].nil?
        data['Parameters'] = stub[:parameters] unless stub[:parameters].nil?
        data['ConcurrentExecutions'] = stub[:concurrent_executions] unless stub[:concurrent_executions].nil?
        data
      end
    end

    # Operation Stubber for DescribeScalingPolicies
    class DescribeScalingPolicies
      def self.default(visited=[])
        {
          scaling_policies: ScalingPolicyList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['ScalingPolicies'] = ScalingPolicyList.stub(stub[:scaling_policies]) unless stub[:scaling_policies].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ScalingPolicyList
    class ScalingPolicyList
      def self.default(visited=[])
        return nil if visited.include?('ScalingPolicyList')
        visited = visited + ['ScalingPolicyList']
        [
          ScalingPolicy.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << ScalingPolicy.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for ScalingPolicy
    class ScalingPolicy
      def self.default(visited=[])
        return nil if visited.include?('ScalingPolicy')
        visited = visited + ['ScalingPolicy']
        {
          fleet_id: 'fleet_id',
          fleet_arn: 'fleet_arn',
          name: 'name',
          status: 'status',
          scaling_adjustment: 1,
          scaling_adjustment_type: 'scaling_adjustment_type',
          comparison_operator: 'comparison_operator',
          threshold: 1.0,
          evaluation_periods: 1,
          metric_name: 'metric_name',
          policy_type: 'policy_type',
          target_configuration: TargetConfiguration.default(visited),
          update_status: 'update_status',
          location: 'location',
        }
      end

      def self.stub(stub)
        stub ||= Types::ScalingPolicy.new
        data = {}
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        data['FleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        data['Name'] = stub[:name] unless stub[:name].nil?
        data['Status'] = stub[:status] unless stub[:status].nil?
        data['ScalingAdjustment'] = stub[:scaling_adjustment] unless stub[:scaling_adjustment].nil?
        data['ScalingAdjustmentType'] = stub[:scaling_adjustment_type] unless stub[:scaling_adjustment_type].nil?
        data['ComparisonOperator'] = stub[:comparison_operator] unless stub[:comparison_operator].nil?
        data['Threshold'] = Hearth::NumberHelper.serialize(stub[:threshold])
        data['EvaluationPeriods'] = stub[:evaluation_periods] unless stub[:evaluation_periods].nil?
        data['MetricName'] = stub[:metric_name] unless stub[:metric_name].nil?
        data['PolicyType'] = stub[:policy_type] unless stub[:policy_type].nil?
        data['TargetConfiguration'] = TargetConfiguration.stub(stub[:target_configuration]) unless stub[:target_configuration].nil?
        data['UpdateStatus'] = stub[:update_status] unless stub[:update_status].nil?
        data['Location'] = stub[:location] unless stub[:location].nil?
        data
      end
    end

    # Structure Stubber for TargetConfiguration
    class TargetConfiguration
      def self.default(visited=[])
        return nil if visited.include?('TargetConfiguration')
        visited = visited + ['TargetConfiguration']
        {
          target_value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::TargetConfiguration.new
        data = {}
        data['TargetValue'] = Hearth::NumberHelper.serialize(stub[:target_value])
        data
      end
    end

    # Operation Stubber for DescribeScript
    class DescribeScript
      def self.default(visited=[])
        {
          script: Script.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Script'] = Script.stub(stub[:script]) unless stub[:script].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for DescribeVpcPeeringAuthorizations
    class DescribeVpcPeeringAuthorizations
      def self.default(visited=[])
        {
          vpc_peering_authorizations: VpcPeeringAuthorizationList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VpcPeeringAuthorizations'] = VpcPeeringAuthorizationList.stub(stub[:vpc_peering_authorizations]) unless stub[:vpc_peering_authorizations].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for VpcPeeringAuthorizationList
    class VpcPeeringAuthorizationList
      def self.default(visited=[])
        return nil if visited.include?('VpcPeeringAuthorizationList')
        visited = visited + ['VpcPeeringAuthorizationList']
        [
          VpcPeeringAuthorization.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VpcPeeringAuthorization.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for DescribeVpcPeeringConnections
    class DescribeVpcPeeringConnections
      def self.default(visited=[])
        {
          vpc_peering_connections: VpcPeeringConnectionList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['VpcPeeringConnections'] = VpcPeeringConnectionList.stub(stub[:vpc_peering_connections]) unless stub[:vpc_peering_connections].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for VpcPeeringConnectionList
    class VpcPeeringConnectionList
      def self.default(visited=[])
        return nil if visited.include?('VpcPeeringConnectionList')
        visited = visited + ['VpcPeeringConnectionList']
        [
          VpcPeeringConnection.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << VpcPeeringConnection.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for VpcPeeringConnection
    class VpcPeeringConnection
      def self.default(visited=[])
        return nil if visited.include?('VpcPeeringConnection')
        visited = visited + ['VpcPeeringConnection']
        {
          fleet_id: 'fleet_id',
          fleet_arn: 'fleet_arn',
          ip_v4_cidr_block: 'ip_v4_cidr_block',
          vpc_peering_connection_id: 'vpc_peering_connection_id',
          status: VpcPeeringConnectionStatus.default(visited),
          peer_vpc_id: 'peer_vpc_id',
          game_lift_vpc_id: 'game_lift_vpc_id',
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcPeeringConnection.new
        data = {}
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        data['FleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        data['IpV4CidrBlock'] = stub[:ip_v4_cidr_block] unless stub[:ip_v4_cidr_block].nil?
        data['VpcPeeringConnectionId'] = stub[:vpc_peering_connection_id] unless stub[:vpc_peering_connection_id].nil?
        data['Status'] = VpcPeeringConnectionStatus.stub(stub[:status]) unless stub[:status].nil?
        data['PeerVpcId'] = stub[:peer_vpc_id] unless stub[:peer_vpc_id].nil?
        data['GameLiftVpcId'] = stub[:game_lift_vpc_id] unless stub[:game_lift_vpc_id].nil?
        data
      end
    end

    # Structure Stubber for VpcPeeringConnectionStatus
    class VpcPeeringConnectionStatus
      def self.default(visited=[])
        return nil if visited.include?('VpcPeeringConnectionStatus')
        visited = visited + ['VpcPeeringConnectionStatus']
        {
          code: 'code',
          message: 'message',
        }
      end

      def self.stub(stub)
        stub ||= Types::VpcPeeringConnectionStatus.new
        data = {}
        data['Code'] = stub[:code] unless stub[:code].nil?
        data['Message'] = stub[:message] unless stub[:message].nil?
        data
      end
    end

    # Operation Stubber for GetGameSessionLogUrl
    class GetGameSessionLogUrl
      def self.default(visited=[])
        {
          pre_signed_url: 'pre_signed_url',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['PreSignedUrl'] = stub[:pre_signed_url] unless stub[:pre_signed_url].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for GetInstanceAccess
    class GetInstanceAccess
      def self.default(visited=[])
        {
          instance_access: InstanceAccess.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['InstanceAccess'] = InstanceAccess.stub(stub[:instance_access]) unless stub[:instance_access].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for InstanceAccess
    class InstanceAccess
      def self.default(visited=[])
        return nil if visited.include?('InstanceAccess')
        visited = visited + ['InstanceAccess']
        {
          fleet_id: 'fleet_id',
          instance_id: 'instance_id',
          ip_address: 'ip_address',
          operating_system: 'operating_system',
          credentials: InstanceCredentials.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceAccess.new
        data = {}
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        data['InstanceId'] = stub[:instance_id] unless stub[:instance_id].nil?
        data['IpAddress'] = stub[:ip_address] unless stub[:ip_address].nil?
        data['OperatingSystem'] = stub[:operating_system] unless stub[:operating_system].nil?
        data['Credentials'] = InstanceCredentials.stub(stub[:credentials]) unless stub[:credentials].nil?
        data
      end
    end

    # Structure Stubber for InstanceCredentials
    class InstanceCredentials
      def self.default(visited=[])
        return nil if visited.include?('InstanceCredentials')
        visited = visited + ['InstanceCredentials']
        {
          user_name: 'user_name',
          secret: 'secret',
        }
      end

      def self.stub(stub)
        stub ||= Types::InstanceCredentials.new
        data = {}
        data['UserName'] = stub[:user_name] unless stub[:user_name].nil?
        data['Secret'] = stub[:secret] unless stub[:secret].nil?
        data
      end
    end

    # Operation Stubber for ListAliases
    class ListAliases
      def self.default(visited=[])
        {
          aliases: AliasList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Aliases'] = AliasList.stub(stub[:aliases]) unless stub[:aliases].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for AliasList
    class AliasList
      def self.default(visited=[])
        return nil if visited.include?('AliasList')
        visited = visited + ['AliasList']
        [
          Alias.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Alias.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListBuilds
    class ListBuilds
      def self.default(visited=[])
        {
          builds: BuildList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Builds'] = BuildList.stub(stub[:builds]) unless stub[:builds].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for BuildList
    class BuildList
      def self.default(visited=[])
        return nil if visited.include?('BuildList')
        visited = visited + ['BuildList']
        [
          Build.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Build.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListFleets
    class ListFleets
      def self.default(visited=[])
        {
          fleet_ids: FleetIdList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FleetIds'] = FleetIdList.stub(stub[:fleet_ids]) unless stub[:fleet_ids].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for FleetIdList
    class FleetIdList
      def self.default(visited=[])
        return nil if visited.include?('FleetIdList')
        visited = visited + ['FleetIdList']
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

    # Operation Stubber for ListGameServerGroups
    class ListGameServerGroups
      def self.default(visited=[])
        {
          game_server_groups: GameServerGroups.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameServerGroups'] = GameServerGroups.stub(stub[:game_server_groups]) unless stub[:game_server_groups].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GameServerGroups
    class GameServerGroups
      def self.default(visited=[])
        return nil if visited.include?('GameServerGroups')
        visited = visited + ['GameServerGroups']
        [
          GameServerGroup.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GameServerGroup.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListGameServers
    class ListGameServers
      def self.default(visited=[])
        {
          game_servers: GameServers.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameServers'] = GameServers.stub(stub[:game_servers]) unless stub[:game_servers].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for GameServers
    class GameServers
      def self.default(visited=[])
        return nil if visited.include?('GameServers')
        visited = visited + ['GameServers']
        [
          GameServer.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << GameServer.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListScripts
    class ListScripts
      def self.default(visited=[])
        {
          scripts: ScriptList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Scripts'] = ScriptList.stub(stub[:scripts]) unless stub[:scripts].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # List Stubber for ScriptList
    class ScriptList
      def self.default(visited=[])
        return nil if visited.include?('ScriptList')
        visited = visited + ['ScriptList']
        [
          Script.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Script.stub(element) unless element.nil?
        end
        data
      end
    end

    # Operation Stubber for ListTagsForResource
    class ListTagsForResource
      def self.default(visited=[])
        {
          tags: TagList.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Tags'] = TagList.stub(stub[:tags]) unless stub[:tags].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
          data << Tag.stub(element) unless element.nil?
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

    # Operation Stubber for PutScalingPolicy
    class PutScalingPolicy
      def self.default(visited=[])
        {
          name: 'name',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Name'] = stub[:name] unless stub[:name].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RegisterGameServer
    class RegisterGameServer
      def self.default(visited=[])
        {
          game_server: GameServer.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameServer'] = GameServer.stub(stub[:game_server]) unless stub[:game_server].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for RequestUploadCredentials
    class RequestUploadCredentials
      def self.default(visited=[])
        {
          upload_credentials: AwsCredentials.default(visited),
          storage_location: S3Location.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['UploadCredentials'] = AwsCredentials.stub(stub[:upload_credentials]) unless stub[:upload_credentials].nil?
        data['StorageLocation'] = S3Location.stub(stub[:storage_location]) unless stub[:storage_location].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResolveAlias
    class ResolveAlias
      def self.default(visited=[])
        {
          fleet_id: 'fleet_id',
          fleet_arn: 'fleet_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        data['FleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ResumeGameServerGroup
    class ResumeGameServerGroup
      def self.default(visited=[])
        {
          game_server_group: GameServerGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameServerGroup'] = GameServerGroup.stub(stub[:game_server_group]) unless stub[:game_server_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SearchGameSessions
    class SearchGameSessions
      def self.default(visited=[])
        {
          game_sessions: GameSessionList.default(visited),
          next_token: 'next_token',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameSessions'] = GameSessionList.stub(stub[:game_sessions]) unless stub[:game_sessions].nil?
        data['NextToken'] = stub[:next_token] unless stub[:next_token].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartFleetActions
    class StartFleetActions
      def self.default(visited=[])
        {
          fleet_id: 'fleet_id',
          fleet_arn: 'fleet_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        data['FleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartGameSessionPlacement
    class StartGameSessionPlacement
      def self.default(visited=[])
        {
          game_session_placement: GameSessionPlacement.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameSessionPlacement'] = GameSessionPlacement.stub(stub[:game_session_placement]) unless stub[:game_session_placement].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartMatchBackfill
    class StartMatchBackfill
      def self.default(visited=[])
        {
          matchmaking_ticket: MatchmakingTicket.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MatchmakingTicket'] = MatchmakingTicket.stub(stub[:matchmaking_ticket]) unless stub[:matchmaking_ticket].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StartMatchmaking
    class StartMatchmaking
      def self.default(visited=[])
        {
          matchmaking_ticket: MatchmakingTicket.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['MatchmakingTicket'] = MatchmakingTicket.stub(stub[:matchmaking_ticket]) unless stub[:matchmaking_ticket].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopFleetActions
    class StopFleetActions
      def self.default(visited=[])
        {
          fleet_id: 'fleet_id',
          fleet_arn: 'fleet_arn',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        data['FleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopGameSessionPlacement
    class StopGameSessionPlacement
      def self.default(visited=[])
        {
          game_session_placement: GameSessionPlacement.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameSessionPlacement'] = GameSessionPlacement.stub(stub[:game_session_placement]) unless stub[:game_session_placement].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for StopMatchmaking
    class StopMatchmaking
      def self.default(visited=[])
        {
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for SuspendGameServerGroup
    class SuspendGameServerGroup
      def self.default(visited=[])
        {
          game_server_group: GameServerGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameServerGroup'] = GameServerGroup.stub(stub[:game_server_group]) unless stub[:game_server_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
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
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateAlias
    class UpdateAlias
      def self.default(visited=[])
        {
          alias: Alias.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Alias'] = Alias.stub(stub[:alias]) unless stub[:alias].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateBuild
    class UpdateBuild
      def self.default(visited=[])
        {
          build: Build.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Build'] = Build.stub(stub[:build]) unless stub[:build].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFleetAttributes
    class UpdateFleetAttributes
      def self.default(visited=[])
        {
          fleet_id: 'fleet_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFleetCapacity
    class UpdateFleetCapacity
      def self.default(visited=[])
        {
          fleet_id: 'fleet_id',
          fleet_arn: 'fleet_arn',
          location: 'location',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        data['FleetArn'] = stub[:fleet_arn] unless stub[:fleet_arn].nil?
        data['Location'] = stub[:location] unless stub[:location].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateFleetPortSettings
    class UpdateFleetPortSettings
      def self.default(visited=[])
        {
          fleet_id: 'fleet_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['FleetId'] = stub[:fleet_id] unless stub[:fleet_id].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGameServer
    class UpdateGameServer
      def self.default(visited=[])
        {
          game_server: GameServer.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameServer'] = GameServer.stub(stub[:game_server]) unless stub[:game_server].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGameServerGroup
    class UpdateGameServerGroup
      def self.default(visited=[])
        {
          game_server_group: GameServerGroup.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameServerGroup'] = GameServerGroup.stub(stub[:game_server_group]) unless stub[:game_server_group].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGameSession
    class UpdateGameSession
      def self.default(visited=[])
        {
          game_session: GameSession.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameSession'] = GameSession.stub(stub[:game_session]) unless stub[:game_session].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateGameSessionQueue
    class UpdateGameSessionQueue
      def self.default(visited=[])
        {
          game_session_queue: GameSessionQueue.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['GameSessionQueue'] = GameSessionQueue.stub(stub[:game_session_queue]) unless stub[:game_session_queue].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateMatchmakingConfiguration
    class UpdateMatchmakingConfiguration
      def self.default(visited=[])
        {
          configuration: MatchmakingConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Configuration'] = MatchmakingConfiguration.stub(stub[:configuration]) unless stub[:configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateRuntimeConfiguration
    class UpdateRuntimeConfiguration
      def self.default(visited=[])
        {
          runtime_configuration: RuntimeConfiguration.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['RuntimeConfiguration'] = RuntimeConfiguration.stub(stub[:runtime_configuration]) unless stub[:runtime_configuration].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for UpdateScript
    class UpdateScript
      def self.default(visited=[])
        {
          script: Script.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Script'] = Script.stub(stub[:script]) unless stub[:script].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Operation Stubber for ValidateMatchmakingRuleSet
    class ValidateMatchmakingRuleSet
      def self.default(visited=[])
        {
          valid: false,
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Valid'] = stub[:valid] unless stub[:valid].nil?
        http_resp.body = ::StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end
  end
end
