# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GameLift
  module Parsers

    # Operation Parser for AcceptMatch
    class AcceptMatch
      def self.parse(http_resp)
        data = Types::AcceptMatchOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Error Parser for UnsupportedRegionException
    class UnsupportedRegionException
      def self.parse(http_resp)
        data = Types::UnsupportedRegionException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for NotFoundException
    class NotFoundException
      def self.parse(http_resp)
        data = Types::NotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InternalServiceException
    class InternalServiceException
      def self.parse(http_resp)
        data = Types::InternalServiceException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidRequestException
    class InvalidRequestException
      def self.parse(http_resp)
        data = Types::InvalidRequestException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for ClaimGameServer
    class ClaimGameServer
      def self.parse(http_resp)
        data = Types::ClaimGameServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_server = (GameServer.parse(map['GameServer']) unless map['GameServer'].nil?)
        data
      end
    end

    class GameServer
      def self.parse(map)
        data = Types::GameServer.new
        data.game_server_group_name = map['GameServerGroupName']
        data.game_server_group_arn = map['GameServerGroupArn']
        data.game_server_id = map['GameServerId']
        data.instance_id = map['InstanceId']
        data.connection_info = map['ConnectionInfo']
        data.game_server_data = map['GameServerData']
        data.claim_status = map['ClaimStatus']
        data.utilization_status = map['UtilizationStatus']
        data.registration_time = Time.at(map['RegistrationTime'].to_i) if map['RegistrationTime']
        data.last_claim_time = Time.at(map['LastClaimTime'].to_i) if map['LastClaimTime']
        data.last_health_check_time = Time.at(map['LastHealthCheckTime'].to_i) if map['LastHealthCheckTime']
        return data
      end
    end

    # Error Parser for ConflictException
    class ConflictException
      def self.parse(http_resp)
        data = Types::ConflictException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for OutOfCapacityException
    class OutOfCapacityException
      def self.parse(http_resp)
        data = Types::OutOfCapacityException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for UnauthorizedException
    class UnauthorizedException
      def self.parse(http_resp)
        data = Types::UnauthorizedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateAlias
    class CreateAlias
      def self.parse(http_resp)
        data = Types::CreateAliasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.alias = (Alias.parse(map['Alias']) unless map['Alias'].nil?)
        data
      end
    end

    class Alias
      def self.parse(map)
        data = Types::Alias.new
        data.alias_id = map['AliasId']
        data.name = map['Name']
        data.alias_arn = map['AliasArn']
        data.description = map['Description']
        data.routing_strategy = (RoutingStrategy.parse(map['RoutingStrategy']) unless map['RoutingStrategy'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        return data
      end
    end

    class RoutingStrategy
      def self.parse(map)
        data = Types::RoutingStrategy.new
        data.type = map['Type']
        data.fleet_id = map['FleetId']
        data.message = map['Message']
        return data
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

    # Error Parser for TaggingFailedException
    class TaggingFailedException
      def self.parse(http_resp)
        data = Types::TaggingFailedException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateBuild
    class CreateBuild
      def self.parse(http_resp)
        data = Types::CreateBuildOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.build = (Build.parse(map['Build']) unless map['Build'].nil?)
        data.upload_credentials = (AwsCredentials.parse(map['UploadCredentials']) unless map['UploadCredentials'].nil?)
        data.storage_location = (S3Location.parse(map['StorageLocation']) unless map['StorageLocation'].nil?)
        data
      end
    end

    class S3Location
      def self.parse(map)
        data = Types::S3Location.new
        data.bucket = map['Bucket']
        data.key = map['Key']
        data.role_arn = map['RoleArn']
        data.object_version = map['ObjectVersion']
        return data
      end
    end

    class AwsCredentials
      def self.parse(map)
        data = Types::AwsCredentials.new
        data.access_key_id = map['AccessKeyId']
        data.secret_access_key = map['SecretAccessKey']
        data.session_token = map['SessionToken']
        return data
      end
    end

    class Build
      def self.parse(map)
        data = Types::Build.new
        data.build_id = map['BuildId']
        data.build_arn = map['BuildArn']
        data.name = map['Name']
        data.version = map['Version']
        data.status = map['Status']
        data.size_on_disk = map['SizeOnDisk']
        data.operating_system = map['OperatingSystem']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    # Operation Parser for CreateFleet
    class CreateFleet
      def self.parse(http_resp)
        data = Types::CreateFleetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet_attributes = (FleetAttributes.parse(map['FleetAttributes']) unless map['FleetAttributes'].nil?)
        data.location_states = (LocationStateList.parse(map['LocationStates']) unless map['LocationStates'].nil?)
        data
      end
    end

    class LocationStateList
      def self.parse(list)
        list.map do |value|
          LocationState.parse(value) unless value.nil?
        end
      end
    end

    class LocationState
      def self.parse(map)
        data = Types::LocationState.new
        data.location = map['Location']
        data.status = map['Status']
        return data
      end
    end

    class FleetAttributes
      def self.parse(map)
        data = Types::FleetAttributes.new
        data.fleet_id = map['FleetId']
        data.fleet_arn = map['FleetArn']
        data.fleet_type = map['FleetType']
        data.instance_type = map['InstanceType']
        data.description = map['Description']
        data.name = map['Name']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.termination_time = Time.at(map['TerminationTime'].to_i) if map['TerminationTime']
        data.status = map['Status']
        data.build_id = map['BuildId']
        data.build_arn = map['BuildArn']
        data.script_id = map['ScriptId']
        data.script_arn = map['ScriptArn']
        data.server_launch_path = map['ServerLaunchPath']
        data.server_launch_parameters = map['ServerLaunchParameters']
        data.log_paths = (StringList.parse(map['LogPaths']) unless map['LogPaths'].nil?)
        data.new_game_session_protection_policy = map['NewGameSessionProtectionPolicy']
        data.operating_system = map['OperatingSystem']
        data.resource_creation_limit_policy = (ResourceCreationLimitPolicy.parse(map['ResourceCreationLimitPolicy']) unless map['ResourceCreationLimitPolicy'].nil?)
        data.metric_groups = (MetricGroupList.parse(map['MetricGroups']) unless map['MetricGroups'].nil?)
        data.stopped_actions = (FleetActionList.parse(map['StoppedActions']) unless map['StoppedActions'].nil?)
        data.instance_role_arn = map['InstanceRoleArn']
        data.certificate_configuration = (CertificateConfiguration.parse(map['CertificateConfiguration']) unless map['CertificateConfiguration'].nil?)
        return data
      end
    end

    class CertificateConfiguration
      def self.parse(map)
        data = Types::CertificateConfiguration.new
        data.certificate_type = map['CertificateType']
        return data
      end
    end

    class FleetActionList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class MetricGroupList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class ResourceCreationLimitPolicy
      def self.parse(map)
        data = Types::ResourceCreationLimitPolicy.new
        data.new_game_sessions_per_creator = map['NewGameSessionsPerCreator']
        data.policy_period_in_minutes = map['PolicyPeriodInMinutes']
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

    # Operation Parser for CreateFleetLocations
    class CreateFleetLocations
      def self.parse(http_resp)
        data = Types::CreateFleetLocationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet_id = map['FleetId']
        data.fleet_arn = map['FleetArn']
        data.location_states = (LocationStateList.parse(map['LocationStates']) unless map['LocationStates'].nil?)
        data
      end
    end

    # Error Parser for InvalidFleetStatusException
    class InvalidFleetStatusException
      def self.parse(http_resp)
        data = Types::InvalidFleetStatusException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateGameServerGroup
    class CreateGameServerGroup
      def self.parse(http_resp)
        data = Types::CreateGameServerGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_server_group = (GameServerGroup.parse(map['GameServerGroup']) unless map['GameServerGroup'].nil?)
        data
      end
    end

    class GameServerGroup
      def self.parse(map)
        data = Types::GameServerGroup.new
        data.game_server_group_name = map['GameServerGroupName']
        data.game_server_group_arn = map['GameServerGroupArn']
        data.role_arn = map['RoleArn']
        data.instance_definitions = (InstanceDefinitions.parse(map['InstanceDefinitions']) unless map['InstanceDefinitions'].nil?)
        data.balancing_strategy = map['BalancingStrategy']
        data.game_server_protection_policy = map['GameServerProtectionPolicy']
        data.auto_scaling_group_arn = map['AutoScalingGroupArn']
        data.status = map['Status']
        data.status_reason = map['StatusReason']
        data.suspended_actions = (GameServerGroupActions.parse(map['SuspendedActions']) unless map['SuspendedActions'].nil?)
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.last_updated_time = Time.at(map['LastUpdatedTime'].to_i) if map['LastUpdatedTime']
        return data
      end
    end

    class GameServerGroupActions
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class InstanceDefinitions
      def self.parse(list)
        list.map do |value|
          InstanceDefinition.parse(value) unless value.nil?
        end
      end
    end

    class InstanceDefinition
      def self.parse(map)
        data = Types::InstanceDefinition.new
        data.instance_type = map['InstanceType']
        data.weighted_capacity = map['WeightedCapacity']
        return data
      end
    end

    # Operation Parser for CreateGameSession
    class CreateGameSession
      def self.parse(http_resp)
        data = Types::CreateGameSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_session = (GameSession.parse(map['GameSession']) unless map['GameSession'].nil?)
        data
      end
    end

    class GameSession
      def self.parse(map)
        data = Types::GameSession.new
        data.game_session_id = map['GameSessionId']
        data.name = map['Name']
        data.fleet_id = map['FleetId']
        data.fleet_arn = map['FleetArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.termination_time = Time.at(map['TerminationTime'].to_i) if map['TerminationTime']
        data.current_player_session_count = map['CurrentPlayerSessionCount']
        data.maximum_player_session_count = map['MaximumPlayerSessionCount']
        data.status = map['Status']
        data.status_reason = map['StatusReason']
        data.game_properties = (GamePropertyList.parse(map['GameProperties']) unless map['GameProperties'].nil?)
        data.ip_address = map['IpAddress']
        data.dns_name = map['DnsName']
        data.port = map['Port']
        data.player_session_creation_policy = map['PlayerSessionCreationPolicy']
        data.creator_id = map['CreatorId']
        data.game_session_data = map['GameSessionData']
        data.matchmaker_data = map['MatchmakerData']
        data.location = map['Location']
        return data
      end
    end

    class GamePropertyList
      def self.parse(list)
        list.map do |value|
          GameProperty.parse(value) unless value.nil?
        end
      end
    end

    class GameProperty
      def self.parse(map)
        data = Types::GameProperty.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Error Parser for TerminalRoutingStrategyException
    class TerminalRoutingStrategyException
      def self.parse(http_resp)
        data = Types::TerminalRoutingStrategyException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for FleetCapacityExceededException
    class FleetCapacityExceededException
      def self.parse(http_resp)
        data = Types::FleetCapacityExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for IdempotentParameterMismatchException
    class IdempotentParameterMismatchException
      def self.parse(http_resp)
        data = Types::IdempotentParameterMismatchException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreateGameSessionQueue
    class CreateGameSessionQueue
      def self.parse(http_resp)
        data = Types::CreateGameSessionQueueOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_session_queue = (GameSessionQueue.parse(map['GameSessionQueue']) unless map['GameSessionQueue'].nil?)
        data
      end
    end

    class GameSessionQueue
      def self.parse(map)
        data = Types::GameSessionQueue.new
        data.name = map['Name']
        data.game_session_queue_arn = map['GameSessionQueueArn']
        data.timeout_in_seconds = map['TimeoutInSeconds']
        data.player_latency_policies = (PlayerLatencyPolicyList.parse(map['PlayerLatencyPolicies']) unless map['PlayerLatencyPolicies'].nil?)
        data.destinations = (GameSessionQueueDestinationList.parse(map['Destinations']) unless map['Destinations'].nil?)
        data.filter_configuration = (FilterConfiguration.parse(map['FilterConfiguration']) unless map['FilterConfiguration'].nil?)
        data.priority_configuration = (PriorityConfiguration.parse(map['PriorityConfiguration']) unless map['PriorityConfiguration'].nil?)
        data.custom_event_data = map['CustomEventData']
        data.notification_target = map['NotificationTarget']
        return data
      end
    end

    class PriorityConfiguration
      def self.parse(map)
        data = Types::PriorityConfiguration.new
        data.priority_order = (PriorityTypeList.parse(map['PriorityOrder']) unless map['PriorityOrder'].nil?)
        data.location_order = (LocationList.parse(map['LocationOrder']) unless map['LocationOrder'].nil?)
        return data
      end
    end

    class LocationList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class PriorityTypeList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    class FilterConfiguration
      def self.parse(map)
        data = Types::FilterConfiguration.new
        data.allowed_locations = (LocationList.parse(map['AllowedLocations']) unless map['AllowedLocations'].nil?)
        return data
      end
    end

    class GameSessionQueueDestinationList
      def self.parse(list)
        list.map do |value|
          GameSessionQueueDestination.parse(value) unless value.nil?
        end
      end
    end

    class GameSessionQueueDestination
      def self.parse(map)
        data = Types::GameSessionQueueDestination.new
        data.destination_arn = map['DestinationArn']
        return data
      end
    end

    class PlayerLatencyPolicyList
      def self.parse(list)
        list.map do |value|
          PlayerLatencyPolicy.parse(value) unless value.nil?
        end
      end
    end

    class PlayerLatencyPolicy
      def self.parse(map)
        data = Types::PlayerLatencyPolicy.new
        data.maximum_individual_player_latency_milliseconds = map['MaximumIndividualPlayerLatencyMilliseconds']
        data.policy_duration_seconds = map['PolicyDurationSeconds']
        return data
      end
    end

    # Operation Parser for CreateMatchmakingConfiguration
    class CreateMatchmakingConfiguration
      def self.parse(http_resp)
        data = Types::CreateMatchmakingConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration = (MatchmakingConfiguration.parse(map['Configuration']) unless map['Configuration'].nil?)
        data
      end
    end

    class MatchmakingConfiguration
      def self.parse(map)
        data = Types::MatchmakingConfiguration.new
        data.name = map['Name']
        data.configuration_arn = map['ConfigurationArn']
        data.description = map['Description']
        data.game_session_queue_arns = (QueueArnsList.parse(map['GameSessionQueueArns']) unless map['GameSessionQueueArns'].nil?)
        data.request_timeout_seconds = map['RequestTimeoutSeconds']
        data.acceptance_timeout_seconds = map['AcceptanceTimeoutSeconds']
        data.acceptance_required = map['AcceptanceRequired']
        data.rule_set_name = map['RuleSetName']
        data.rule_set_arn = map['RuleSetArn']
        data.notification_target = map['NotificationTarget']
        data.additional_player_count = map['AdditionalPlayerCount']
        data.custom_event_data = map['CustomEventData']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.game_properties = (GamePropertyList.parse(map['GameProperties']) unless map['GameProperties'].nil?)
        data.game_session_data = map['GameSessionData']
        data.backfill_mode = map['BackfillMode']
        data.flex_match_mode = map['FlexMatchMode']
        return data
      end
    end

    class QueueArnsList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for CreateMatchmakingRuleSet
    class CreateMatchmakingRuleSet
      def self.parse(http_resp)
        data = Types::CreateMatchmakingRuleSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rule_set = (MatchmakingRuleSet.parse(map['RuleSet']) unless map['RuleSet'].nil?)
        data
      end
    end

    class MatchmakingRuleSet
      def self.parse(map)
        data = Types::MatchmakingRuleSet.new
        data.rule_set_name = map['RuleSetName']
        data.rule_set_arn = map['RuleSetArn']
        data.rule_set_body = map['RuleSetBody']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        return data
      end
    end

    # Operation Parser for CreatePlayerSession
    class CreatePlayerSession
      def self.parse(http_resp)
        data = Types::CreatePlayerSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.player_session = (PlayerSession.parse(map['PlayerSession']) unless map['PlayerSession'].nil?)
        data
      end
    end

    class PlayerSession
      def self.parse(map)
        data = Types::PlayerSession.new
        data.player_session_id = map['PlayerSessionId']
        data.player_id = map['PlayerId']
        data.game_session_id = map['GameSessionId']
        data.fleet_id = map['FleetId']
        data.fleet_arn = map['FleetArn']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.termination_time = Time.at(map['TerminationTime'].to_i) if map['TerminationTime']
        data.status = map['Status']
        data.ip_address = map['IpAddress']
        data.dns_name = map['DnsName']
        data.port = map['Port']
        data.player_data = map['PlayerData']
        return data
      end
    end

    # Error Parser for InvalidGameSessionStatusException
    class InvalidGameSessionStatusException
      def self.parse(http_resp)
        data = Types::InvalidGameSessionStatusException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for GameSessionFullException
    class GameSessionFullException
      def self.parse(http_resp)
        data = Types::GameSessionFullException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Operation Parser for CreatePlayerSessions
    class CreatePlayerSessions
      def self.parse(http_resp)
        data = Types::CreatePlayerSessionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.player_sessions = (PlayerSessionList.parse(map['PlayerSessions']) unless map['PlayerSessions'].nil?)
        data
      end
    end

    class PlayerSessionList
      def self.parse(list)
        list.map do |value|
          PlayerSession.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for CreateScript
    class CreateScript
      def self.parse(http_resp)
        data = Types::CreateScriptOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.script = (Script.parse(map['Script']) unless map['Script'].nil?)
        data
      end
    end

    class Script
      def self.parse(map)
        data = Types::Script.new
        data.script_id = map['ScriptId']
        data.script_arn = map['ScriptArn']
        data.name = map['Name']
        data.version = map['Version']
        data.size_on_disk = map['SizeOnDisk']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.storage_location = (S3Location.parse(map['StorageLocation']) unless map['StorageLocation'].nil?)
        return data
      end
    end

    # Operation Parser for CreateVpcPeeringAuthorization
    class CreateVpcPeeringAuthorization
      def self.parse(http_resp)
        data = Types::CreateVpcPeeringAuthorizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vpc_peering_authorization = (VpcPeeringAuthorization.parse(map['VpcPeeringAuthorization']) unless map['VpcPeeringAuthorization'].nil?)
        data
      end
    end

    class VpcPeeringAuthorization
      def self.parse(map)
        data = Types::VpcPeeringAuthorization.new
        data.game_lift_aws_account_id = map['GameLiftAwsAccountId']
        data.peer_vpc_aws_account_id = map['PeerVpcAwsAccountId']
        data.peer_vpc_id = map['PeerVpcId']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.expiration_time = Time.at(map['ExpirationTime'].to_i) if map['ExpirationTime']
        return data
      end
    end

    # Operation Parser for CreateVpcPeeringConnection
    class CreateVpcPeeringConnection
      def self.parse(http_resp)
        data = Types::CreateVpcPeeringConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteAlias
    class DeleteAlias
      def self.parse(http_resp)
        data = Types::DeleteAliasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteBuild
    class DeleteBuild
      def self.parse(http_resp)
        data = Types::DeleteBuildOutput.new
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

    # Operation Parser for DeleteFleetLocations
    class DeleteFleetLocations
      def self.parse(http_resp)
        data = Types::DeleteFleetLocationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet_id = map['FleetId']
        data.fleet_arn = map['FleetArn']
        data.location_states = (LocationStateList.parse(map['LocationStates']) unless map['LocationStates'].nil?)
        data
      end
    end

    # Operation Parser for DeleteGameServerGroup
    class DeleteGameServerGroup
      def self.parse(http_resp)
        data = Types::DeleteGameServerGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_server_group = (GameServerGroup.parse(map['GameServerGroup']) unless map['GameServerGroup'].nil?)
        data
      end
    end

    # Operation Parser for DeleteGameSessionQueue
    class DeleteGameSessionQueue
      def self.parse(http_resp)
        data = Types::DeleteGameSessionQueueOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteMatchmakingConfiguration
    class DeleteMatchmakingConfiguration
      def self.parse(http_resp)
        data = Types::DeleteMatchmakingConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteMatchmakingRuleSet
    class DeleteMatchmakingRuleSet
      def self.parse(http_resp)
        data = Types::DeleteMatchmakingRuleSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteScalingPolicy
    class DeleteScalingPolicy
      def self.parse(http_resp)
        data = Types::DeleteScalingPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteScript
    class DeleteScript
      def self.parse(http_resp)
        data = Types::DeleteScriptOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteVpcPeeringAuthorization
    class DeleteVpcPeeringAuthorization
      def self.parse(http_resp)
        data = Types::DeleteVpcPeeringAuthorizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeleteVpcPeeringConnection
    class DeleteVpcPeeringConnection
      def self.parse(http_resp)
        data = Types::DeleteVpcPeeringConnectionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DeregisterGameServer
    class DeregisterGameServer
      def self.parse(http_resp)
        data = Types::DeregisterGameServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for DescribeAlias
    class DescribeAlias
      def self.parse(http_resp)
        data = Types::DescribeAliasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.alias = (Alias.parse(map['Alias']) unless map['Alias'].nil?)
        data
      end
    end

    # Operation Parser for DescribeBuild
    class DescribeBuild
      def self.parse(http_resp)
        data = Types::DescribeBuildOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.build = (Build.parse(map['Build']) unless map['Build'].nil?)
        data
      end
    end

    # Operation Parser for DescribeEC2InstanceLimits
    class DescribeEC2InstanceLimits
      def self.parse(http_resp)
        data = Types::DescribeEC2InstanceLimitsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ec2_instance_limits = (EC2InstanceLimitList.parse(map['EC2InstanceLimits']) unless map['EC2InstanceLimits'].nil?)
        data
      end
    end

    class EC2InstanceLimitList
      def self.parse(list)
        list.map do |value|
          EC2InstanceLimit.parse(value) unless value.nil?
        end
      end
    end

    class EC2InstanceLimit
      def self.parse(map)
        data = Types::EC2InstanceLimit.new
        data.ec2_instance_type = map['EC2InstanceType']
        data.current_instances = map['CurrentInstances']
        data.instance_limit = map['InstanceLimit']
        data.location = map['Location']
        return data
      end
    end

    # Operation Parser for DescribeFleetAttributes
    class DescribeFleetAttributes
      def self.parse(http_resp)
        data = Types::DescribeFleetAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet_attributes = (FleetAttributesList.parse(map['FleetAttributes']) unless map['FleetAttributes'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class FleetAttributesList
      def self.parse(list)
        list.map do |value|
          FleetAttributes.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeFleetCapacity
    class DescribeFleetCapacity
      def self.parse(http_resp)
        data = Types::DescribeFleetCapacityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet_capacity = (FleetCapacityList.parse(map['FleetCapacity']) unless map['FleetCapacity'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class FleetCapacityList
      def self.parse(list)
        list.map do |value|
          FleetCapacity.parse(value) unless value.nil?
        end
      end
    end

    class FleetCapacity
      def self.parse(map)
        data = Types::FleetCapacity.new
        data.fleet_id = map['FleetId']
        data.fleet_arn = map['FleetArn']
        data.instance_type = map['InstanceType']
        data.instance_counts = (EC2InstanceCounts.parse(map['InstanceCounts']) unless map['InstanceCounts'].nil?)
        data.location = map['Location']
        return data
      end
    end

    class EC2InstanceCounts
      def self.parse(map)
        data = Types::EC2InstanceCounts.new
        data.desired = map['DESIRED']
        data.minimum = map['MINIMUM']
        data.maximum = map['MAXIMUM']
        data.pending = map['PENDING']
        data.active = map['ACTIVE']
        data.idle = map['IDLE']
        data.terminating = map['TERMINATING']
        return data
      end
    end

    # Operation Parser for DescribeFleetEvents
    class DescribeFleetEvents
      def self.parse(http_resp)
        data = Types::DescribeFleetEventsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.events = (EventList.parse(map['Events']) unless map['Events'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class EventList
      def self.parse(list)
        list.map do |value|
          Event.parse(value) unless value.nil?
        end
      end
    end

    class Event
      def self.parse(map)
        data = Types::Event.new
        data.event_id = map['EventId']
        data.resource_id = map['ResourceId']
        data.event_code = map['EventCode']
        data.message = map['Message']
        data.event_time = Time.at(map['EventTime'].to_i) if map['EventTime']
        data.pre_signed_log_url = map['PreSignedLogUrl']
        return data
      end
    end

    # Operation Parser for DescribeFleetLocationAttributes
    class DescribeFleetLocationAttributes
      def self.parse(http_resp)
        data = Types::DescribeFleetLocationAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet_id = map['FleetId']
        data.fleet_arn = map['FleetArn']
        data.location_attributes = (LocationAttributesList.parse(map['LocationAttributes']) unless map['LocationAttributes'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class LocationAttributesList
      def self.parse(list)
        list.map do |value|
          LocationAttributes.parse(value) unless value.nil?
        end
      end
    end

    class LocationAttributes
      def self.parse(map)
        data = Types::LocationAttributes.new
        data.location_state = (LocationState.parse(map['LocationState']) unless map['LocationState'].nil?)
        data.stopped_actions = (FleetActionList.parse(map['StoppedActions']) unless map['StoppedActions'].nil?)
        data.update_status = map['UpdateStatus']
        return data
      end
    end

    # Operation Parser for DescribeFleetLocationCapacity
    class DescribeFleetLocationCapacity
      def self.parse(http_resp)
        data = Types::DescribeFleetLocationCapacityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet_capacity = (FleetCapacity.parse(map['FleetCapacity']) unless map['FleetCapacity'].nil?)
        data
      end
    end

    # Operation Parser for DescribeFleetLocationUtilization
    class DescribeFleetLocationUtilization
      def self.parse(http_resp)
        data = Types::DescribeFleetLocationUtilizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet_utilization = (FleetUtilization.parse(map['FleetUtilization']) unless map['FleetUtilization'].nil?)
        data
      end
    end

    class FleetUtilization
      def self.parse(map)
        data = Types::FleetUtilization.new
        data.fleet_id = map['FleetId']
        data.fleet_arn = map['FleetArn']
        data.active_server_process_count = map['ActiveServerProcessCount']
        data.active_game_session_count = map['ActiveGameSessionCount']
        data.current_player_session_count = map['CurrentPlayerSessionCount']
        data.maximum_player_session_count = map['MaximumPlayerSessionCount']
        data.location = map['Location']
        return data
      end
    end

    # Operation Parser for DescribeFleetPortSettings
    class DescribeFleetPortSettings
      def self.parse(http_resp)
        data = Types::DescribeFleetPortSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet_id = map['FleetId']
        data.fleet_arn = map['FleetArn']
        data.inbound_permissions = (IpPermissionsList.parse(map['InboundPermissions']) unless map['InboundPermissions'].nil?)
        data.update_status = map['UpdateStatus']
        data.location = map['Location']
        data
      end
    end

    class IpPermissionsList
      def self.parse(list)
        list.map do |value|
          IpPermission.parse(value) unless value.nil?
        end
      end
    end

    class IpPermission
      def self.parse(map)
        data = Types::IpPermission.new
        data.from_port = map['FromPort']
        data.to_port = map['ToPort']
        data.ip_range = map['IpRange']
        data.protocol = map['Protocol']
        return data
      end
    end

    # Operation Parser for DescribeFleetUtilization
    class DescribeFleetUtilization
      def self.parse(http_resp)
        data = Types::DescribeFleetUtilizationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet_utilization = (FleetUtilizationList.parse(map['FleetUtilization']) unless map['FleetUtilization'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class FleetUtilizationList
      def self.parse(list)
        list.map do |value|
          FleetUtilization.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeGameServer
    class DescribeGameServer
      def self.parse(http_resp)
        data = Types::DescribeGameServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_server = (GameServer.parse(map['GameServer']) unless map['GameServer'].nil?)
        data
      end
    end

    # Operation Parser for DescribeGameServerGroup
    class DescribeGameServerGroup
      def self.parse(http_resp)
        data = Types::DescribeGameServerGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_server_group = (GameServerGroup.parse(map['GameServerGroup']) unless map['GameServerGroup'].nil?)
        data
      end
    end

    # Operation Parser for DescribeGameServerInstances
    class DescribeGameServerInstances
      def self.parse(http_resp)
        data = Types::DescribeGameServerInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_server_instances = (GameServerInstances.parse(map['GameServerInstances']) unless map['GameServerInstances'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GameServerInstances
      def self.parse(list)
        list.map do |value|
          GameServerInstance.parse(value) unless value.nil?
        end
      end
    end

    class GameServerInstance
      def self.parse(map)
        data = Types::GameServerInstance.new
        data.game_server_group_name = map['GameServerGroupName']
        data.game_server_group_arn = map['GameServerGroupArn']
        data.instance_id = map['InstanceId']
        data.instance_status = map['InstanceStatus']
        return data
      end
    end

    # Operation Parser for DescribeGameSessionDetails
    class DescribeGameSessionDetails
      def self.parse(http_resp)
        data = Types::DescribeGameSessionDetailsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_session_details = (GameSessionDetailList.parse(map['GameSessionDetails']) unless map['GameSessionDetails'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GameSessionDetailList
      def self.parse(list)
        list.map do |value|
          GameSessionDetail.parse(value) unless value.nil?
        end
      end
    end

    class GameSessionDetail
      def self.parse(map)
        data = Types::GameSessionDetail.new
        data.game_session = (GameSession.parse(map['GameSession']) unless map['GameSession'].nil?)
        data.protection_policy = map['ProtectionPolicy']
        return data
      end
    end

    # Operation Parser for DescribeGameSessionPlacement
    class DescribeGameSessionPlacement
      def self.parse(http_resp)
        data = Types::DescribeGameSessionPlacementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_session_placement = (GameSessionPlacement.parse(map['GameSessionPlacement']) unless map['GameSessionPlacement'].nil?)
        data
      end
    end

    class GameSessionPlacement
      def self.parse(map)
        data = Types::GameSessionPlacement.new
        data.placement_id = map['PlacementId']
        data.game_session_queue_name = map['GameSessionQueueName']
        data.status = map['Status']
        data.game_properties = (GamePropertyList.parse(map['GameProperties']) unless map['GameProperties'].nil?)
        data.maximum_player_session_count = map['MaximumPlayerSessionCount']
        data.game_session_name = map['GameSessionName']
        data.game_session_id = map['GameSessionId']
        data.game_session_arn = map['GameSessionArn']
        data.game_session_region = map['GameSessionRegion']
        data.player_latencies = (PlayerLatencyList.parse(map['PlayerLatencies']) unless map['PlayerLatencies'].nil?)
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.ip_address = map['IpAddress']
        data.dns_name = map['DnsName']
        data.port = map['Port']
        data.placed_player_sessions = (PlacedPlayerSessionList.parse(map['PlacedPlayerSessions']) unless map['PlacedPlayerSessions'].nil?)
        data.game_session_data = map['GameSessionData']
        data.matchmaker_data = map['MatchmakerData']
        return data
      end
    end

    class PlacedPlayerSessionList
      def self.parse(list)
        list.map do |value|
          PlacedPlayerSession.parse(value) unless value.nil?
        end
      end
    end

    class PlacedPlayerSession
      def self.parse(map)
        data = Types::PlacedPlayerSession.new
        data.player_id = map['PlayerId']
        data.player_session_id = map['PlayerSessionId']
        return data
      end
    end

    class PlayerLatencyList
      def self.parse(list)
        list.map do |value|
          PlayerLatency.parse(value) unless value.nil?
        end
      end
    end

    class PlayerLatency
      def self.parse(map)
        data = Types::PlayerLatency.new
        data.player_id = map['PlayerId']
        data.region_identifier = map['RegionIdentifier']
        data.latency_in_milliseconds = Hearth::NumberHelper.deserialize(map['LatencyInMilliseconds'])
        return data
      end
    end

    # Operation Parser for DescribeGameSessionQueues
    class DescribeGameSessionQueues
      def self.parse(http_resp)
        data = Types::DescribeGameSessionQueuesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_session_queues = (GameSessionQueueList.parse(map['GameSessionQueues']) unless map['GameSessionQueues'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GameSessionQueueList
      def self.parse(list)
        list.map do |value|
          GameSessionQueue.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeGameSessions
    class DescribeGameSessions
      def self.parse(http_resp)
        data = Types::DescribeGameSessionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_sessions = (GameSessionList.parse(map['GameSessions']) unless map['GameSessions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GameSessionList
      def self.parse(list)
        list.map do |value|
          GameSession.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeInstances
    class DescribeInstances
      def self.parse(http_resp)
        data = Types::DescribeInstancesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instances = (InstanceList.parse(map['Instances']) unless map['Instances'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class InstanceList
      def self.parse(list)
        list.map do |value|
          Instance.parse(value) unless value.nil?
        end
      end
    end

    class Instance
      def self.parse(map)
        data = Types::Instance.new
        data.fleet_id = map['FleetId']
        data.fleet_arn = map['FleetArn']
        data.instance_id = map['InstanceId']
        data.ip_address = map['IpAddress']
        data.dns_name = map['DnsName']
        data.operating_system = map['OperatingSystem']
        data.type = map['Type']
        data.status = map['Status']
        data.creation_time = Time.at(map['CreationTime'].to_i) if map['CreationTime']
        data.location = map['Location']
        return data
      end
    end

    # Operation Parser for DescribeMatchmaking
    class DescribeMatchmaking
      def self.parse(http_resp)
        data = Types::DescribeMatchmakingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.ticket_list = (MatchmakingTicketList.parse(map['TicketList']) unless map['TicketList'].nil?)
        data
      end
    end

    class MatchmakingTicketList
      def self.parse(list)
        list.map do |value|
          MatchmakingTicket.parse(value) unless value.nil?
        end
      end
    end

    class MatchmakingTicket
      def self.parse(map)
        data = Types::MatchmakingTicket.new
        data.ticket_id = map['TicketId']
        data.configuration_name = map['ConfigurationName']
        data.configuration_arn = map['ConfigurationArn']
        data.status = map['Status']
        data.status_reason = map['StatusReason']
        data.status_message = map['StatusMessage']
        data.start_time = Time.at(map['StartTime'].to_i) if map['StartTime']
        data.end_time = Time.at(map['EndTime'].to_i) if map['EndTime']
        data.players = (PlayerList.parse(map['Players']) unless map['Players'].nil?)
        data.game_session_connection_info = (GameSessionConnectionInfo.parse(map['GameSessionConnectionInfo']) unless map['GameSessionConnectionInfo'].nil?)
        data.estimated_wait_time = map['EstimatedWaitTime']
        return data
      end
    end

    class GameSessionConnectionInfo
      def self.parse(map)
        data = Types::GameSessionConnectionInfo.new
        data.game_session_arn = map['GameSessionArn']
        data.ip_address = map['IpAddress']
        data.dns_name = map['DnsName']
        data.port = map['Port']
        data.matched_player_sessions = (MatchedPlayerSessionList.parse(map['MatchedPlayerSessions']) unless map['MatchedPlayerSessions'].nil?)
        return data
      end
    end

    class MatchedPlayerSessionList
      def self.parse(list)
        list.map do |value|
          MatchedPlayerSession.parse(value) unless value.nil?
        end
      end
    end

    class MatchedPlayerSession
      def self.parse(map)
        data = Types::MatchedPlayerSession.new
        data.player_id = map['PlayerId']
        data.player_session_id = map['PlayerSessionId']
        return data
      end
    end

    class PlayerList
      def self.parse(list)
        list.map do |value|
          Player.parse(value) unless value.nil?
        end
      end
    end

    class Player
      def self.parse(map)
        data = Types::Player.new
        data.player_id = map['PlayerId']
        data.player_attributes = (PlayerAttributeMap.parse(map['PlayerAttributes']) unless map['PlayerAttributes'].nil?)
        data.team = map['Team']
        data.latency_in_ms = (LatencyMap.parse(map['LatencyInMs']) unless map['LatencyInMs'].nil?)
        return data
      end
    end

    class LatencyMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    class PlayerAttributeMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = AttributeValue.parse(value) unless value.nil?
        end
        data
      end
    end

    class AttributeValue
      def self.parse(map)
        data = Types::AttributeValue.new
        data.s = map['S']
        data.n = Hearth::NumberHelper.deserialize(map['N'])
        data.sl = (StringList.parse(map['SL']) unless map['SL'].nil?)
        data.sdm = (StringDoubleMap.parse(map['SDM']) unless map['SDM'].nil?)
        return data
      end
    end

    class StringDoubleMap
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Hearth::NumberHelper.deserialize(value) unless value.nil?
        end
        data
      end
    end

    # Operation Parser for DescribeMatchmakingConfigurations
    class DescribeMatchmakingConfigurations
      def self.parse(http_resp)
        data = Types::DescribeMatchmakingConfigurationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configurations = (MatchmakingConfigurationList.parse(map['Configurations']) unless map['Configurations'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MatchmakingConfigurationList
      def self.parse(list)
        list.map do |value|
          MatchmakingConfiguration.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeMatchmakingRuleSets
    class DescribeMatchmakingRuleSets
      def self.parse(http_resp)
        data = Types::DescribeMatchmakingRuleSetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.rule_sets = (MatchmakingRuleSetList.parse(map['RuleSets']) unless map['RuleSets'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class MatchmakingRuleSetList
      def self.parse(list)
        list.map do |value|
          MatchmakingRuleSet.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribePlayerSessions
    class DescribePlayerSessions
      def self.parse(http_resp)
        data = Types::DescribePlayerSessionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.player_sessions = (PlayerSessionList.parse(map['PlayerSessions']) unless map['PlayerSessions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for DescribeRuntimeConfiguration
    class DescribeRuntimeConfiguration
      def self.parse(http_resp)
        data = Types::DescribeRuntimeConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.runtime_configuration = (RuntimeConfiguration.parse(map['RuntimeConfiguration']) unless map['RuntimeConfiguration'].nil?)
        data
      end
    end

    class RuntimeConfiguration
      def self.parse(map)
        data = Types::RuntimeConfiguration.new
        data.server_processes = (ServerProcessList.parse(map['ServerProcesses']) unless map['ServerProcesses'].nil?)
        data.max_concurrent_game_session_activations = map['MaxConcurrentGameSessionActivations']
        data.game_session_activation_timeout_seconds = map['GameSessionActivationTimeoutSeconds']
        return data
      end
    end

    class ServerProcessList
      def self.parse(list)
        list.map do |value|
          ServerProcess.parse(value) unless value.nil?
        end
      end
    end

    class ServerProcess
      def self.parse(map)
        data = Types::ServerProcess.new
        data.launch_path = map['LaunchPath']
        data.parameters = map['Parameters']
        data.concurrent_executions = map['ConcurrentExecutions']
        return data
      end
    end

    # Operation Parser for DescribeScalingPolicies
    class DescribeScalingPolicies
      def self.parse(http_resp)
        data = Types::DescribeScalingPoliciesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.scaling_policies = (ScalingPolicyList.parse(map['ScalingPolicies']) unless map['ScalingPolicies'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ScalingPolicyList
      def self.parse(list)
        list.map do |value|
          ScalingPolicy.parse(value) unless value.nil?
        end
      end
    end

    class ScalingPolicy
      def self.parse(map)
        data = Types::ScalingPolicy.new
        data.fleet_id = map['FleetId']
        data.fleet_arn = map['FleetArn']
        data.name = map['Name']
        data.status = map['Status']
        data.scaling_adjustment = map['ScalingAdjustment']
        data.scaling_adjustment_type = map['ScalingAdjustmentType']
        data.comparison_operator = map['ComparisonOperator']
        data.threshold = Hearth::NumberHelper.deserialize(map['Threshold'])
        data.evaluation_periods = map['EvaluationPeriods']
        data.metric_name = map['MetricName']
        data.policy_type = map['PolicyType']
        data.target_configuration = (TargetConfiguration.parse(map['TargetConfiguration']) unless map['TargetConfiguration'].nil?)
        data.update_status = map['UpdateStatus']
        data.location = map['Location']
        return data
      end
    end

    class TargetConfiguration
      def self.parse(map)
        data = Types::TargetConfiguration.new
        data.target_value = Hearth::NumberHelper.deserialize(map['TargetValue'])
        return data
      end
    end

    # Operation Parser for DescribeScript
    class DescribeScript
      def self.parse(http_resp)
        data = Types::DescribeScriptOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.script = (Script.parse(map['Script']) unless map['Script'].nil?)
        data
      end
    end

    # Operation Parser for DescribeVpcPeeringAuthorizations
    class DescribeVpcPeeringAuthorizations
      def self.parse(http_resp)
        data = Types::DescribeVpcPeeringAuthorizationsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vpc_peering_authorizations = (VpcPeeringAuthorizationList.parse(map['VpcPeeringAuthorizations']) unless map['VpcPeeringAuthorizations'].nil?)
        data
      end
    end

    class VpcPeeringAuthorizationList
      def self.parse(list)
        list.map do |value|
          VpcPeeringAuthorization.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for DescribeVpcPeeringConnections
    class DescribeVpcPeeringConnections
      def self.parse(http_resp)
        data = Types::DescribeVpcPeeringConnectionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.vpc_peering_connections = (VpcPeeringConnectionList.parse(map['VpcPeeringConnections']) unless map['VpcPeeringConnections'].nil?)
        data
      end
    end

    class VpcPeeringConnectionList
      def self.parse(list)
        list.map do |value|
          VpcPeeringConnection.parse(value) unless value.nil?
        end
      end
    end

    class VpcPeeringConnection
      def self.parse(map)
        data = Types::VpcPeeringConnection.new
        data.fleet_id = map['FleetId']
        data.fleet_arn = map['FleetArn']
        data.ip_v4_cidr_block = map['IpV4CidrBlock']
        data.vpc_peering_connection_id = map['VpcPeeringConnectionId']
        data.status = (VpcPeeringConnectionStatus.parse(map['Status']) unless map['Status'].nil?)
        data.peer_vpc_id = map['PeerVpcId']
        data.game_lift_vpc_id = map['GameLiftVpcId']
        return data
      end
    end

    class VpcPeeringConnectionStatus
      def self.parse(map)
        data = Types::VpcPeeringConnectionStatus.new
        data.code = map['Code']
        data.message = map['Message']
        return data
      end
    end

    # Operation Parser for GetGameSessionLogUrl
    class GetGameSessionLogUrl
      def self.parse(http_resp)
        data = Types::GetGameSessionLogUrlOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.pre_signed_url = map['PreSignedUrl']
        data
      end
    end

    # Operation Parser for GetInstanceAccess
    class GetInstanceAccess
      def self.parse(http_resp)
        data = Types::GetInstanceAccessOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.instance_access = (InstanceAccess.parse(map['InstanceAccess']) unless map['InstanceAccess'].nil?)
        data
      end
    end

    class InstanceAccess
      def self.parse(map)
        data = Types::InstanceAccess.new
        data.fleet_id = map['FleetId']
        data.instance_id = map['InstanceId']
        data.ip_address = map['IpAddress']
        data.operating_system = map['OperatingSystem']
        data.credentials = (InstanceCredentials.parse(map['Credentials']) unless map['Credentials'].nil?)
        return data
      end
    end

    class InstanceCredentials
      def self.parse(map)
        data = Types::InstanceCredentials.new
        data.user_name = map['UserName']
        data.secret = map['Secret']
        return data
      end
    end

    # Operation Parser for ListAliases
    class ListAliases
      def self.parse(http_resp)
        data = Types::ListAliasesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.aliases = (AliasList.parse(map['Aliases']) unless map['Aliases'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class AliasList
      def self.parse(list)
        list.map do |value|
          Alias.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListBuilds
    class ListBuilds
      def self.parse(http_resp)
        data = Types::ListBuildsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.builds = (BuildList.parse(map['Builds']) unless map['Builds'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class BuildList
      def self.parse(list)
        list.map do |value|
          Build.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListFleets
    class ListFleets
      def self.parse(http_resp)
        data = Types::ListFleetsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet_ids = (FleetIdList.parse(map['FleetIds']) unless map['FleetIds'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class FleetIdList
      def self.parse(list)
        list.map do |value|
          value unless value.nil?
        end
      end
    end

    # Operation Parser for ListGameServerGroups
    class ListGameServerGroups
      def self.parse(http_resp)
        data = Types::ListGameServerGroupsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_server_groups = (GameServerGroups.parse(map['GameServerGroups']) unless map['GameServerGroups'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GameServerGroups
      def self.parse(list)
        list.map do |value|
          GameServerGroup.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListGameServers
    class ListGameServers
      def self.parse(http_resp)
        data = Types::ListGameServersOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_servers = (GameServers.parse(map['GameServers']) unless map['GameServers'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class GameServers
      def self.parse(list)
        list.map do |value|
          GameServer.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListScripts
    class ListScripts
      def self.parse(http_resp)
        data = Types::ListScriptsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.scripts = (ScriptList.parse(map['Scripts']) unless map['Scripts'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    class ScriptList
      def self.parse(list)
        list.map do |value|
          Script.parse(value) unless value.nil?
        end
      end
    end

    # Operation Parser for ListTagsForResource
    class ListTagsForResource
      def self.parse(http_resp)
        data = Types::ListTagsForResourceOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.tags = (TagList.parse(map['Tags']) unless map['Tags'].nil?)
        data
      end
    end

    class TagList
      def self.parse(list)
        list.map do |value|
          Tag.parse(value) unless value.nil?
        end
      end
    end

    class Tag
      def self.parse(map)
        data = Types::Tag.new
        data.key = map['Key']
        data.value = map['Value']
        return data
      end
    end

    # Operation Parser for PutScalingPolicy
    class PutScalingPolicy
      def self.parse(http_resp)
        data = Types::PutScalingPolicyOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.name = map['Name']
        data
      end
    end

    # Operation Parser for RegisterGameServer
    class RegisterGameServer
      def self.parse(http_resp)
        data = Types::RegisterGameServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_server = (GameServer.parse(map['GameServer']) unless map['GameServer'].nil?)
        data
      end
    end

    # Operation Parser for RequestUploadCredentials
    class RequestUploadCredentials
      def self.parse(http_resp)
        data = Types::RequestUploadCredentialsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.upload_credentials = (AwsCredentials.parse(map['UploadCredentials']) unless map['UploadCredentials'].nil?)
        data.storage_location = (S3Location.parse(map['StorageLocation']) unless map['StorageLocation'].nil?)
        data
      end
    end

    # Operation Parser for ResolveAlias
    class ResolveAlias
      def self.parse(http_resp)
        data = Types::ResolveAliasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet_id = map['FleetId']
        data.fleet_arn = map['FleetArn']
        data
      end
    end

    # Operation Parser for ResumeGameServerGroup
    class ResumeGameServerGroup
      def self.parse(http_resp)
        data = Types::ResumeGameServerGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_server_group = (GameServerGroup.parse(map['GameServerGroup']) unless map['GameServerGroup'].nil?)
        data
      end
    end

    # Operation Parser for SearchGameSessions
    class SearchGameSessions
      def self.parse(http_resp)
        data = Types::SearchGameSessionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_sessions = (GameSessionList.parse(map['GameSessions']) unless map['GameSessions'].nil?)
        data.next_token = map['NextToken']
        data
      end
    end

    # Operation Parser for StartFleetActions
    class StartFleetActions
      def self.parse(http_resp)
        data = Types::StartFleetActionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet_id = map['FleetId']
        data.fleet_arn = map['FleetArn']
        data
      end
    end

    # Operation Parser for StartGameSessionPlacement
    class StartGameSessionPlacement
      def self.parse(http_resp)
        data = Types::StartGameSessionPlacementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_session_placement = (GameSessionPlacement.parse(map['GameSessionPlacement']) unless map['GameSessionPlacement'].nil?)
        data
      end
    end

    # Operation Parser for StartMatchBackfill
    class StartMatchBackfill
      def self.parse(http_resp)
        data = Types::StartMatchBackfillOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.matchmaking_ticket = (MatchmakingTicket.parse(map['MatchmakingTicket']) unless map['MatchmakingTicket'].nil?)
        data
      end
    end

    # Operation Parser for StartMatchmaking
    class StartMatchmaking
      def self.parse(http_resp)
        data = Types::StartMatchmakingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.matchmaking_ticket = (MatchmakingTicket.parse(map['MatchmakingTicket']) unless map['MatchmakingTicket'].nil?)
        data
      end
    end

    # Operation Parser for StopFleetActions
    class StopFleetActions
      def self.parse(http_resp)
        data = Types::StopFleetActionsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet_id = map['FleetId']
        data.fleet_arn = map['FleetArn']
        data
      end
    end

    # Operation Parser for StopGameSessionPlacement
    class StopGameSessionPlacement
      def self.parse(http_resp)
        data = Types::StopGameSessionPlacementOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_session_placement = (GameSessionPlacement.parse(map['GameSessionPlacement']) unless map['GameSessionPlacement'].nil?)
        data
      end
    end

    # Operation Parser for StopMatchmaking
    class StopMatchmaking
      def self.parse(http_resp)
        data = Types::StopMatchmakingOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data
      end
    end

    # Operation Parser for SuspendGameServerGroup
    class SuspendGameServerGroup
      def self.parse(http_resp)
        data = Types::SuspendGameServerGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_server_group = (GameServerGroup.parse(map['GameServerGroup']) unless map['GameServerGroup'].nil?)
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

    # Operation Parser for UpdateAlias
    class UpdateAlias
      def self.parse(http_resp)
        data = Types::UpdateAliasOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.alias = (Alias.parse(map['Alias']) unless map['Alias'].nil?)
        data
      end
    end

    # Operation Parser for UpdateBuild
    class UpdateBuild
      def self.parse(http_resp)
        data = Types::UpdateBuildOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.build = (Build.parse(map['Build']) unless map['Build'].nil?)
        data
      end
    end

    # Operation Parser for UpdateFleetAttributes
    class UpdateFleetAttributes
      def self.parse(http_resp)
        data = Types::UpdateFleetAttributesOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet_id = map['FleetId']
        data
      end
    end

    # Operation Parser for UpdateFleetCapacity
    class UpdateFleetCapacity
      def self.parse(http_resp)
        data = Types::UpdateFleetCapacityOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet_id = map['FleetId']
        data.fleet_arn = map['FleetArn']
        data.location = map['Location']
        data
      end
    end

    # Operation Parser for UpdateFleetPortSettings
    class UpdateFleetPortSettings
      def self.parse(http_resp)
        data = Types::UpdateFleetPortSettingsOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.fleet_id = map['FleetId']
        data
      end
    end

    # Operation Parser for UpdateGameServer
    class UpdateGameServer
      def self.parse(http_resp)
        data = Types::UpdateGameServerOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_server = (GameServer.parse(map['GameServer']) unless map['GameServer'].nil?)
        data
      end
    end

    # Operation Parser for UpdateGameServerGroup
    class UpdateGameServerGroup
      def self.parse(http_resp)
        data = Types::UpdateGameServerGroupOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_server_group = (GameServerGroup.parse(map['GameServerGroup']) unless map['GameServerGroup'].nil?)
        data
      end
    end

    # Operation Parser for UpdateGameSession
    class UpdateGameSession
      def self.parse(http_resp)
        data = Types::UpdateGameSessionOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_session = (GameSession.parse(map['GameSession']) unless map['GameSession'].nil?)
        data
      end
    end

    # Operation Parser for UpdateGameSessionQueue
    class UpdateGameSessionQueue
      def self.parse(http_resp)
        data = Types::UpdateGameSessionQueueOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.game_session_queue = (GameSessionQueue.parse(map['GameSessionQueue']) unless map['GameSessionQueue'].nil?)
        data
      end
    end

    # Operation Parser for UpdateMatchmakingConfiguration
    class UpdateMatchmakingConfiguration
      def self.parse(http_resp)
        data = Types::UpdateMatchmakingConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.configuration = (MatchmakingConfiguration.parse(map['Configuration']) unless map['Configuration'].nil?)
        data
      end
    end

    # Operation Parser for UpdateRuntimeConfiguration
    class UpdateRuntimeConfiguration
      def self.parse(http_resp)
        data = Types::UpdateRuntimeConfigurationOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.runtime_configuration = (RuntimeConfiguration.parse(map['RuntimeConfiguration']) unless map['RuntimeConfiguration'].nil?)
        data
      end
    end

    # Operation Parser for UpdateScript
    class UpdateScript
      def self.parse(http_resp)
        data = Types::UpdateScriptOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.script = (Script.parse(map['Script']) unless map['Script'].nil?)
        data
      end
    end

    # Operation Parser for ValidateMatchmakingRuleSet
    class ValidateMatchmakingRuleSet
      def self.parse(http_resp)
        data = Types::ValidateMatchmakingRuleSetOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.valid = map['Valid']
        data
      end
    end
  end
end
