# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GameLift
  module Builders

    # Operation Builder for AcceptMatch
    class AcceptMatch
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.AcceptMatch'
        data = {}
        data['TicketId'] = input[:ticket_id] unless input[:ticket_id].nil?
        data['PlayerIds'] = Builders::StringList.build(input[:player_ids]) unless input[:player_ids].nil?
        data['AcceptanceType'] = input[:acceptance_type] unless input[:acceptance_type].nil?
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

    # Operation Builder for ClaimGameServer
    class ClaimGameServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.ClaimGameServer'
        data = {}
        data['GameServerGroupName'] = input[:game_server_group_name] unless input[:game_server_group_name].nil?
        data['GameServerId'] = input[:game_server_id] unless input[:game_server_id].nil?
        data['GameServerData'] = input[:game_server_data] unless input[:game_server_data].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateAlias
    class CreateAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.CreateAlias'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RoutingStrategy'] = Builders::RoutingStrategy.build(input[:routing_strategy]) unless input[:routing_strategy].nil?
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

    # Structure Builder for RoutingStrategy
    class RoutingStrategy
      def self.build(input)
        data = {}
        data['Type'] = input[:type] unless input[:type].nil?
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['Message'] = input[:message] unless input[:message].nil?
        data
      end
    end

    # Operation Builder for CreateBuild
    class CreateBuild
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.CreateBuild'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data['StorageLocation'] = Builders::S3Location.build(input[:storage_location]) unless input[:storage_location].nil?
        data['OperatingSystem'] = input[:operating_system] unless input[:operating_system].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for S3Location
    class S3Location
      def self.build(input)
        data = {}
        data['Bucket'] = input[:bucket] unless input[:bucket].nil?
        data['Key'] = input[:key] unless input[:key].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['ObjectVersion'] = input[:object_version] unless input[:object_version].nil?
        data
      end
    end

    # Operation Builder for CreateFleet
    class CreateFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.CreateFleet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['BuildId'] = input[:build_id] unless input[:build_id].nil?
        data['ScriptId'] = input[:script_id] unless input[:script_id].nil?
        data['ServerLaunchPath'] = input[:server_launch_path] unless input[:server_launch_path].nil?
        data['ServerLaunchParameters'] = input[:server_launch_parameters] unless input[:server_launch_parameters].nil?
        data['LogPaths'] = Builders::StringList.build(input[:log_paths]) unless input[:log_paths].nil?
        data['EC2InstanceType'] = input[:ec2_instance_type] unless input[:ec2_instance_type].nil?
        data['EC2InboundPermissions'] = Builders::IpPermissionsList.build(input[:ec2_inbound_permissions]) unless input[:ec2_inbound_permissions].nil?
        data['NewGameSessionProtectionPolicy'] = input[:new_game_session_protection_policy] unless input[:new_game_session_protection_policy].nil?
        data['RuntimeConfiguration'] = Builders::RuntimeConfiguration.build(input[:runtime_configuration]) unless input[:runtime_configuration].nil?
        data['ResourceCreationLimitPolicy'] = Builders::ResourceCreationLimitPolicy.build(input[:resource_creation_limit_policy]) unless input[:resource_creation_limit_policy].nil?
        data['MetricGroups'] = Builders::MetricGroupList.build(input[:metric_groups]) unless input[:metric_groups].nil?
        data['PeerVpcAwsAccountId'] = input[:peer_vpc_aws_account_id] unless input[:peer_vpc_aws_account_id].nil?
        data['PeerVpcId'] = input[:peer_vpc_id] unless input[:peer_vpc_id].nil?
        data['FleetType'] = input[:fleet_type] unless input[:fleet_type].nil?
        data['InstanceRoleArn'] = input[:instance_role_arn] unless input[:instance_role_arn].nil?
        data['CertificateConfiguration'] = Builders::CertificateConfiguration.build(input[:certificate_configuration]) unless input[:certificate_configuration].nil?
        data['Locations'] = Builders::LocationConfigurationList.build(input[:locations]) unless input[:locations].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for LocationConfigurationList
    class LocationConfigurationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::LocationConfiguration.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for LocationConfiguration
    class LocationConfiguration
      def self.build(input)
        data = {}
        data['Location'] = input[:location] unless input[:location].nil?
        data
      end
    end

    # Structure Builder for CertificateConfiguration
    class CertificateConfiguration
      def self.build(input)
        data = {}
        data['CertificateType'] = input[:certificate_type] unless input[:certificate_type].nil?
        data
      end
    end

    # List Builder for MetricGroupList
    class MetricGroupList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ResourceCreationLimitPolicy
    class ResourceCreationLimitPolicy
      def self.build(input)
        data = {}
        data['NewGameSessionsPerCreator'] = input[:new_game_sessions_per_creator] unless input[:new_game_sessions_per_creator].nil?
        data['PolicyPeriodInMinutes'] = input[:policy_period_in_minutes] unless input[:policy_period_in_minutes].nil?
        data
      end
    end

    # Structure Builder for RuntimeConfiguration
    class RuntimeConfiguration
      def self.build(input)
        data = {}
        data['ServerProcesses'] = Builders::ServerProcessList.build(input[:server_processes]) unless input[:server_processes].nil?
        data['MaxConcurrentGameSessionActivations'] = input[:max_concurrent_game_session_activations] unless input[:max_concurrent_game_session_activations].nil?
        data['GameSessionActivationTimeoutSeconds'] = input[:game_session_activation_timeout_seconds] unless input[:game_session_activation_timeout_seconds].nil?
        data
      end
    end

    # List Builder for ServerProcessList
    class ServerProcessList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::ServerProcess.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for ServerProcess
    class ServerProcess
      def self.build(input)
        data = {}
        data['LaunchPath'] = input[:launch_path] unless input[:launch_path].nil?
        data['Parameters'] = input[:parameters] unless input[:parameters].nil?
        data['ConcurrentExecutions'] = input[:concurrent_executions] unless input[:concurrent_executions].nil?
        data
      end
    end

    # List Builder for IpPermissionsList
    class IpPermissionsList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::IpPermission.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for IpPermission
    class IpPermission
      def self.build(input)
        data = {}
        data['FromPort'] = input[:from_port] unless input[:from_port].nil?
        data['ToPort'] = input[:to_port] unless input[:to_port].nil?
        data['IpRange'] = input[:ip_range] unless input[:ip_range].nil?
        data['Protocol'] = input[:protocol] unless input[:protocol].nil?
        data
      end
    end

    # Operation Builder for CreateFleetLocations
    class CreateFleetLocations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.CreateFleetLocations'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['Locations'] = Builders::LocationConfigurationList.build(input[:locations]) unless input[:locations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateGameServerGroup
    class CreateGameServerGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.CreateGameServerGroup'
        data = {}
        data['GameServerGroupName'] = input[:game_server_group_name] unless input[:game_server_group_name].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['MinSize'] = input[:min_size] unless input[:min_size].nil?
        data['MaxSize'] = input[:max_size] unless input[:max_size].nil?
        data['LaunchTemplate'] = Builders::LaunchTemplateSpecification.build(input[:launch_template]) unless input[:launch_template].nil?
        data['InstanceDefinitions'] = Builders::InstanceDefinitions.build(input[:instance_definitions]) unless input[:instance_definitions].nil?
        data['AutoScalingPolicy'] = Builders::GameServerGroupAutoScalingPolicy.build(input[:auto_scaling_policy]) unless input[:auto_scaling_policy].nil?
        data['BalancingStrategy'] = input[:balancing_strategy] unless input[:balancing_strategy].nil?
        data['GameServerProtectionPolicy'] = input[:game_server_protection_policy] unless input[:game_server_protection_policy].nil?
        data['VpcSubnets'] = Builders::VpcSubnets.build(input[:vpc_subnets]) unless input[:vpc_subnets].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for VpcSubnets
    class VpcSubnets
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GameServerGroupAutoScalingPolicy
    class GameServerGroupAutoScalingPolicy
      def self.build(input)
        data = {}
        data['EstimatedInstanceWarmup'] = input[:estimated_instance_warmup] unless input[:estimated_instance_warmup].nil?
        data['TargetTrackingConfiguration'] = Builders::TargetTrackingConfiguration.build(input[:target_tracking_configuration]) unless input[:target_tracking_configuration].nil?
        data
      end
    end

    # Structure Builder for TargetTrackingConfiguration
    class TargetTrackingConfiguration
      def self.build(input)
        data = {}
        data['TargetValue'] = Hearth::NumberHelper.serialize(input[:target_value]) unless input[:target_value].nil?
        data
      end
    end

    # List Builder for InstanceDefinitions
    class InstanceDefinitions
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::InstanceDefinition.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for InstanceDefinition
    class InstanceDefinition
      def self.build(input)
        data = {}
        data['InstanceType'] = input[:instance_type] unless input[:instance_type].nil?
        data['WeightedCapacity'] = input[:weighted_capacity] unless input[:weighted_capacity].nil?
        data
      end
    end

    # Structure Builder for LaunchTemplateSpecification
    class LaunchTemplateSpecification
      def self.build(input)
        data = {}
        data['LaunchTemplateId'] = input[:launch_template_id] unless input[:launch_template_id].nil?
        data['LaunchTemplateName'] = input[:launch_template_name] unless input[:launch_template_name].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data
      end
    end

    # Operation Builder for CreateGameSession
    class CreateGameSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.CreateGameSession'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['AliasId'] = input[:alias_id] unless input[:alias_id].nil?
        data['MaximumPlayerSessionCount'] = input[:maximum_player_session_count] unless input[:maximum_player_session_count].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['GameProperties'] = Builders::GamePropertyList.build(input[:game_properties]) unless input[:game_properties].nil?
        data['CreatorId'] = input[:creator_id] unless input[:creator_id].nil?
        data['GameSessionId'] = input[:game_session_id] unless input[:game_session_id].nil?
        data['IdempotencyToken'] = input[:idempotency_token] unless input[:idempotency_token].nil?
        data['GameSessionData'] = input[:game_session_data] unless input[:game_session_data].nil?
        data['Location'] = input[:location] unless input[:location].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for GamePropertyList
    class GamePropertyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::GameProperty.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GameProperty
    class GameProperty
      def self.build(input)
        data = {}
        data['Key'] = input[:key] unless input[:key].nil?
        data['Value'] = input[:value] unless input[:value].nil?
        data
      end
    end

    # Operation Builder for CreateGameSessionQueue
    class CreateGameSessionQueue
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.CreateGameSessionQueue'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['TimeoutInSeconds'] = input[:timeout_in_seconds] unless input[:timeout_in_seconds].nil?
        data['PlayerLatencyPolicies'] = Builders::PlayerLatencyPolicyList.build(input[:player_latency_policies]) unless input[:player_latency_policies].nil?
        data['Destinations'] = Builders::GameSessionQueueDestinationList.build(input[:destinations]) unless input[:destinations].nil?
        data['FilterConfiguration'] = Builders::FilterConfiguration.build(input[:filter_configuration]) unless input[:filter_configuration].nil?
        data['PriorityConfiguration'] = Builders::PriorityConfiguration.build(input[:priority_configuration]) unless input[:priority_configuration].nil?
        data['CustomEventData'] = input[:custom_event_data] unless input[:custom_event_data].nil?
        data['NotificationTarget'] = input[:notification_target] unless input[:notification_target].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for PriorityConfiguration
    class PriorityConfiguration
      def self.build(input)
        data = {}
        data['PriorityOrder'] = Builders::PriorityTypeList.build(input[:priority_order]) unless input[:priority_order].nil?
        data['LocationOrder'] = Builders::LocationList.build(input[:location_order]) unless input[:location_order].nil?
        data
      end
    end

    # List Builder for LocationList
    class LocationList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # List Builder for PriorityTypeList
    class PriorityTypeList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Structure Builder for FilterConfiguration
    class FilterConfiguration
      def self.build(input)
        data = {}
        data['AllowedLocations'] = Builders::LocationList.build(input[:allowed_locations]) unless input[:allowed_locations].nil?
        data
      end
    end

    # List Builder for GameSessionQueueDestinationList
    class GameSessionQueueDestinationList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::GameSessionQueueDestination.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for GameSessionQueueDestination
    class GameSessionQueueDestination
      def self.build(input)
        data = {}
        data['DestinationArn'] = input[:destination_arn] unless input[:destination_arn].nil?
        data
      end
    end

    # List Builder for PlayerLatencyPolicyList
    class PlayerLatencyPolicyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PlayerLatencyPolicy.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PlayerLatencyPolicy
    class PlayerLatencyPolicy
      def self.build(input)
        data = {}
        data['MaximumIndividualPlayerLatencyMilliseconds'] = input[:maximum_individual_player_latency_milliseconds] unless input[:maximum_individual_player_latency_milliseconds].nil?
        data['PolicyDurationSeconds'] = input[:policy_duration_seconds] unless input[:policy_duration_seconds].nil?
        data
      end
    end

    # Operation Builder for CreateMatchmakingConfiguration
    class CreateMatchmakingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.CreateMatchmakingConfiguration'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['GameSessionQueueArns'] = Builders::QueueArnsList.build(input[:game_session_queue_arns]) unless input[:game_session_queue_arns].nil?
        data['RequestTimeoutSeconds'] = input[:request_timeout_seconds] unless input[:request_timeout_seconds].nil?
        data['AcceptanceTimeoutSeconds'] = input[:acceptance_timeout_seconds] unless input[:acceptance_timeout_seconds].nil?
        data['AcceptanceRequired'] = input[:acceptance_required] unless input[:acceptance_required].nil?
        data['RuleSetName'] = input[:rule_set_name] unless input[:rule_set_name].nil?
        data['NotificationTarget'] = input[:notification_target] unless input[:notification_target].nil?
        data['AdditionalPlayerCount'] = input[:additional_player_count] unless input[:additional_player_count].nil?
        data['CustomEventData'] = input[:custom_event_data] unless input[:custom_event_data].nil?
        data['GameProperties'] = Builders::GamePropertyList.build(input[:game_properties]) unless input[:game_properties].nil?
        data['GameSessionData'] = input[:game_session_data] unless input[:game_session_data].nil?
        data['BackfillMode'] = input[:backfill_mode] unless input[:backfill_mode].nil?
        data['FlexMatchMode'] = input[:flex_match_mode] unless input[:flex_match_mode].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for QueueArnsList
    class QueueArnsList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateMatchmakingRuleSet
    class CreateMatchmakingRuleSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.CreateMatchmakingRuleSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['RuleSetBody'] = input[:rule_set_body] unless input[:rule_set_body].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreatePlayerSession
    class CreatePlayerSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.CreatePlayerSession'
        data = {}
        data['GameSessionId'] = input[:game_session_id] unless input[:game_session_id].nil?
        data['PlayerId'] = input[:player_id] unless input[:player_id].nil?
        data['PlayerData'] = input[:player_data] unless input[:player_data].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreatePlayerSessions
    class CreatePlayerSessions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.CreatePlayerSessions'
        data = {}
        data['GameSessionId'] = input[:game_session_id] unless input[:game_session_id].nil?
        data['PlayerIds'] = Builders::PlayerIdList.build(input[:player_ids]) unless input[:player_ids].nil?
        data['PlayerDataMap'] = Builders::PlayerDataMap.build(input[:player_data_map]) unless input[:player_data_map].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for PlayerDataMap
    class PlayerDataMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for PlayerIdList
    class PlayerIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for CreateScript
    class CreateScript
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.CreateScript'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data['StorageLocation'] = Builders::S3Location.build(input[:storage_location]) unless input[:storage_location].nil?
        data['ZipFile'] = Base64::encode64(input[:zip_file]).strip unless input[:zip_file].nil?
        data['Tags'] = Builders::TagList.build(input[:tags]) unless input[:tags].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateVpcPeeringAuthorization
    class CreateVpcPeeringAuthorization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.CreateVpcPeeringAuthorization'
        data = {}
        data['GameLiftAwsAccountId'] = input[:game_lift_aws_account_id] unless input[:game_lift_aws_account_id].nil?
        data['PeerVpcId'] = input[:peer_vpc_id] unless input[:peer_vpc_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for CreateVpcPeeringConnection
    class CreateVpcPeeringConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.CreateVpcPeeringConnection'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['PeerVpcAwsAccountId'] = input[:peer_vpc_aws_account_id] unless input[:peer_vpc_aws_account_id].nil?
        data['PeerVpcId'] = input[:peer_vpc_id] unless input[:peer_vpc_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteAlias
    class DeleteAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DeleteAlias'
        data = {}
        data['AliasId'] = input[:alias_id] unless input[:alias_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteBuild
    class DeleteBuild
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DeleteBuild'
        data = {}
        data['BuildId'] = input[:build_id] unless input[:build_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteFleet
    class DeleteFleet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DeleteFleet'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteFleetLocations
    class DeleteFleetLocations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DeleteFleetLocations'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['Locations'] = Builders::LocationList.build(input[:locations]) unless input[:locations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteGameServerGroup
    class DeleteGameServerGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DeleteGameServerGroup'
        data = {}
        data['GameServerGroupName'] = input[:game_server_group_name] unless input[:game_server_group_name].nil?
        data['DeleteOption'] = input[:delete_option] unless input[:delete_option].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteGameSessionQueue
    class DeleteGameSessionQueue
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DeleteGameSessionQueue'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteMatchmakingConfiguration
    class DeleteMatchmakingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DeleteMatchmakingConfiguration'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteMatchmakingRuleSet
    class DeleteMatchmakingRuleSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DeleteMatchmakingRuleSet'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteScalingPolicy
    class DeleteScalingPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DeleteScalingPolicy'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteScript
    class DeleteScript
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DeleteScript'
        data = {}
        data['ScriptId'] = input[:script_id] unless input[:script_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteVpcPeeringAuthorization
    class DeleteVpcPeeringAuthorization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DeleteVpcPeeringAuthorization'
        data = {}
        data['GameLiftAwsAccountId'] = input[:game_lift_aws_account_id] unless input[:game_lift_aws_account_id].nil?
        data['PeerVpcId'] = input[:peer_vpc_id] unless input[:peer_vpc_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeleteVpcPeeringConnection
    class DeleteVpcPeeringConnection
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DeleteVpcPeeringConnection'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['VpcPeeringConnectionId'] = input[:vpc_peering_connection_id] unless input[:vpc_peering_connection_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DeregisterGameServer
    class DeregisterGameServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DeregisterGameServer'
        data = {}
        data['GameServerGroupName'] = input[:game_server_group_name] unless input[:game_server_group_name].nil?
        data['GameServerId'] = input[:game_server_id] unless input[:game_server_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeAlias
    class DescribeAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeAlias'
        data = {}
        data['AliasId'] = input[:alias_id] unless input[:alias_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeBuild
    class DescribeBuild
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeBuild'
        data = {}
        data['BuildId'] = input[:build_id] unless input[:build_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeEC2InstanceLimits
    class DescribeEC2InstanceLimits
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeEC2InstanceLimits'
        data = {}
        data['EC2InstanceType'] = input[:ec2_instance_type] unless input[:ec2_instance_type].nil?
        data['Location'] = input[:location] unless input[:location].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFleetAttributes
    class DescribeFleetAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeFleetAttributes'
        data = {}
        data['FleetIds'] = Builders::FleetIdOrArnList.build(input[:fleet_ids]) unless input[:fleet_ids].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FleetIdOrArnList
    class FleetIdOrArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeFleetCapacity
    class DescribeFleetCapacity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeFleetCapacity'
        data = {}
        data['FleetIds'] = Builders::FleetIdOrArnList.build(input[:fleet_ids]) unless input[:fleet_ids].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFleetEvents
    class DescribeFleetEvents
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeFleetEvents'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['StartTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:start_time]).to_i unless input[:start_time].nil?
        data['EndTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:end_time]).to_i unless input[:end_time].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFleetLocationAttributes
    class DescribeFleetLocationAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeFleetLocationAttributes'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['Locations'] = Builders::LocationList.build(input[:locations]) unless input[:locations].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFleetLocationCapacity
    class DescribeFleetLocationCapacity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeFleetLocationCapacity'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['Location'] = input[:location] unless input[:location].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFleetLocationUtilization
    class DescribeFleetLocationUtilization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeFleetLocationUtilization'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['Location'] = input[:location] unless input[:location].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFleetPortSettings
    class DescribeFleetPortSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeFleetPortSettings'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['Location'] = input[:location] unless input[:location].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeFleetUtilization
    class DescribeFleetUtilization
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeFleetUtilization'
        data = {}
        data['FleetIds'] = Builders::FleetIdOrArnList.build(input[:fleet_ids]) unless input[:fleet_ids].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeGameServer
    class DescribeGameServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeGameServer'
        data = {}
        data['GameServerGroupName'] = input[:game_server_group_name] unless input[:game_server_group_name].nil?
        data['GameServerId'] = input[:game_server_id] unless input[:game_server_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeGameServerGroup
    class DescribeGameServerGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeGameServerGroup'
        data = {}
        data['GameServerGroupName'] = input[:game_server_group_name] unless input[:game_server_group_name].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeGameServerInstances
    class DescribeGameServerInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeGameServerInstances'
        data = {}
        data['GameServerGroupName'] = input[:game_server_group_name] unless input[:game_server_group_name].nil?
        data['InstanceIds'] = Builders::GameServerInstanceIds.build(input[:instance_ids]) unless input[:instance_ids].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for GameServerInstanceIds
    class GameServerInstanceIds
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeGameSessionDetails
    class DescribeGameSessionDetails
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeGameSessionDetails'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['GameSessionId'] = input[:game_session_id] unless input[:game_session_id].nil?
        data['AliasId'] = input[:alias_id] unless input[:alias_id].nil?
        data['Location'] = input[:location] unless input[:location].nil?
        data['StatusFilter'] = input[:status_filter] unless input[:status_filter].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeGameSessionPlacement
    class DescribeGameSessionPlacement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeGameSessionPlacement'
        data = {}
        data['PlacementId'] = input[:placement_id] unless input[:placement_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeGameSessionQueues
    class DescribeGameSessionQueues
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeGameSessionQueues'
        data = {}
        data['Names'] = Builders::GameSessionQueueNameOrArnList.build(input[:names]) unless input[:names].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for GameSessionQueueNameOrArnList
    class GameSessionQueueNameOrArnList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeGameSessions
    class DescribeGameSessions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeGameSessions'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['GameSessionId'] = input[:game_session_id] unless input[:game_session_id].nil?
        data['AliasId'] = input[:alias_id] unless input[:alias_id].nil?
        data['Location'] = input[:location] unless input[:location].nil?
        data['StatusFilter'] = input[:status_filter] unless input[:status_filter].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeInstances
    class DescribeInstances
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeInstances'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Location'] = input[:location] unless input[:location].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeMatchmaking
    class DescribeMatchmaking
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeMatchmaking'
        data = {}
        data['TicketIds'] = Builders::MatchmakingIdList.build(input[:ticket_ids]) unless input[:ticket_ids].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MatchmakingIdList
    class MatchmakingIdList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeMatchmakingConfigurations
    class DescribeMatchmakingConfigurations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeMatchmakingConfigurations'
        data = {}
        data['Names'] = Builders::MatchmakingConfigurationNameList.build(input[:names]) unless input[:names].nil?
        data['RuleSetName'] = input[:rule_set_name] unless input[:rule_set_name].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MatchmakingConfigurationNameList
    class MatchmakingConfigurationNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribeMatchmakingRuleSets
    class DescribeMatchmakingRuleSets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeMatchmakingRuleSets'
        data = {}
        data['Names'] = Builders::MatchmakingRuleSetNameList.build(input[:names]) unless input[:names].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for MatchmakingRuleSetNameList
    class MatchmakingRuleSetNameList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for DescribePlayerSessions
    class DescribePlayerSessions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribePlayerSessions'
        data = {}
        data['GameSessionId'] = input[:game_session_id] unless input[:game_session_id].nil?
        data['PlayerId'] = input[:player_id] unless input[:player_id].nil?
        data['PlayerSessionId'] = input[:player_session_id] unless input[:player_session_id].nil?
        data['PlayerSessionStatusFilter'] = input[:player_session_status_filter] unless input[:player_session_status_filter].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeRuntimeConfiguration
    class DescribeRuntimeConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeRuntimeConfiguration'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeScalingPolicies
    class DescribeScalingPolicies
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeScalingPolicies'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['StatusFilter'] = input[:status_filter] unless input[:status_filter].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        data['Location'] = input[:location] unless input[:location].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeScript
    class DescribeScript
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeScript'
        data = {}
        data['ScriptId'] = input[:script_id] unless input[:script_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeVpcPeeringAuthorizations
    class DescribeVpcPeeringAuthorizations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeVpcPeeringAuthorizations'
        data = {}
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for DescribeVpcPeeringConnections
    class DescribeVpcPeeringConnections
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.DescribeVpcPeeringConnections'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetGameSessionLogUrl
    class GetGameSessionLogUrl
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.GetGameSessionLogUrl'
        data = {}
        data['GameSessionId'] = input[:game_session_id] unless input[:game_session_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for GetInstanceAccess
    class GetInstanceAccess
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.GetInstanceAccess'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListAliases
    class ListAliases
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.ListAliases'
        data = {}
        data['RoutingStrategyType'] = input[:routing_strategy_type] unless input[:routing_strategy_type].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListBuilds
    class ListBuilds
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.ListBuilds'
        data = {}
        data['Status'] = input[:status] unless input[:status].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListFleets
    class ListFleets
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.ListFleets'
        data = {}
        data['BuildId'] = input[:build_id] unless input[:build_id].nil?
        data['ScriptId'] = input[:script_id] unless input[:script_id].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListGameServerGroups
    class ListGameServerGroups
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.ListGameServerGroups'
        data = {}
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListGameServers
    class ListGameServers
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.ListGameServers'
        data = {}
        data['GameServerGroupName'] = input[:game_server_group_name] unless input[:game_server_group_name].nil?
        data['SortOrder'] = input[:sort_order] unless input[:sort_order].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListScripts
    class ListScripts
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.ListScripts'
        data = {}
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ListTagsForResource
    class ListTagsForResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.ListTagsForResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for PutScalingPolicy
    class PutScalingPolicy
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.PutScalingPolicy'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['ScalingAdjustment'] = input[:scaling_adjustment] unless input[:scaling_adjustment].nil?
        data['ScalingAdjustmentType'] = input[:scaling_adjustment_type] unless input[:scaling_adjustment_type].nil?
        data['Threshold'] = Hearth::NumberHelper.serialize(input[:threshold]) unless input[:threshold].nil?
        data['ComparisonOperator'] = input[:comparison_operator] unless input[:comparison_operator].nil?
        data['EvaluationPeriods'] = input[:evaluation_periods] unless input[:evaluation_periods].nil?
        data['MetricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['PolicyType'] = input[:policy_type] unless input[:policy_type].nil?
        data['TargetConfiguration'] = Builders::TargetConfiguration.build(input[:target_configuration]) unless input[:target_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Structure Builder for TargetConfiguration
    class TargetConfiguration
      def self.build(input)
        data = {}
        data['TargetValue'] = Hearth::NumberHelper.serialize(input[:target_value]) unless input[:target_value].nil?
        data
      end
    end

    # Operation Builder for RegisterGameServer
    class RegisterGameServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.RegisterGameServer'
        data = {}
        data['GameServerGroupName'] = input[:game_server_group_name] unless input[:game_server_group_name].nil?
        data['GameServerId'] = input[:game_server_id] unless input[:game_server_id].nil?
        data['InstanceId'] = input[:instance_id] unless input[:instance_id].nil?
        data['ConnectionInfo'] = input[:connection_info] unless input[:connection_info].nil?
        data['GameServerData'] = input[:game_server_data] unless input[:game_server_data].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for RequestUploadCredentials
    class RequestUploadCredentials
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.RequestUploadCredentials'
        data = {}
        data['BuildId'] = input[:build_id] unless input[:build_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ResolveAlias
    class ResolveAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.ResolveAlias'
        data = {}
        data['AliasId'] = input[:alias_id] unless input[:alias_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ResumeGameServerGroup
    class ResumeGameServerGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.ResumeGameServerGroup'
        data = {}
        data['GameServerGroupName'] = input[:game_server_group_name] unless input[:game_server_group_name].nil?
        data['ResumeActions'] = Builders::GameServerGroupActions.build(input[:resume_actions]) unless input[:resume_actions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for GameServerGroupActions
    class GameServerGroupActions
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for SearchGameSessions
    class SearchGameSessions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.SearchGameSessions'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['AliasId'] = input[:alias_id] unless input[:alias_id].nil?
        data['Location'] = input[:location] unless input[:location].nil?
        data['FilterExpression'] = input[:filter_expression] unless input[:filter_expression].nil?
        data['SortExpression'] = input[:sort_expression] unless input[:sort_expression].nil?
        data['Limit'] = input[:limit] unless input[:limit].nil?
        data['NextToken'] = input[:next_token] unless input[:next_token].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StartFleetActions
    class StartFleetActions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.StartFleetActions'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['Actions'] = Builders::FleetActionList.build(input[:actions]) unless input[:actions].nil?
        data['Location'] = input[:location] unless input[:location].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for FleetActionList
    class FleetActionList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for StartGameSessionPlacement
    class StartGameSessionPlacement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.StartGameSessionPlacement'
        data = {}
        data['PlacementId'] = input[:placement_id] unless input[:placement_id].nil?
        data['GameSessionQueueName'] = input[:game_session_queue_name] unless input[:game_session_queue_name].nil?
        data['GameProperties'] = Builders::GamePropertyList.build(input[:game_properties]) unless input[:game_properties].nil?
        data['MaximumPlayerSessionCount'] = input[:maximum_player_session_count] unless input[:maximum_player_session_count].nil?
        data['GameSessionName'] = input[:game_session_name] unless input[:game_session_name].nil?
        data['PlayerLatencies'] = Builders::PlayerLatencyList.build(input[:player_latencies]) unless input[:player_latencies].nil?
        data['DesiredPlayerSessions'] = Builders::DesiredPlayerSessionList.build(input[:desired_player_sessions]) unless input[:desired_player_sessions].nil?
        data['GameSessionData'] = input[:game_session_data] unless input[:game_session_data].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for DesiredPlayerSessionList
    class DesiredPlayerSessionList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::DesiredPlayerSession.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for DesiredPlayerSession
    class DesiredPlayerSession
      def self.build(input)
        data = {}
        data['PlayerId'] = input[:player_id] unless input[:player_id].nil?
        data['PlayerData'] = input[:player_data] unless input[:player_data].nil?
        data
      end
    end

    # List Builder for PlayerLatencyList
    class PlayerLatencyList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::PlayerLatency.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for PlayerLatency
    class PlayerLatency
      def self.build(input)
        data = {}
        data['PlayerId'] = input[:player_id] unless input[:player_id].nil?
        data['RegionIdentifier'] = input[:region_identifier] unless input[:region_identifier].nil?
        data['LatencyInMilliseconds'] = Hearth::NumberHelper.serialize(input[:latency_in_milliseconds]) unless input[:latency_in_milliseconds].nil?
        data
      end
    end

    # Operation Builder for StartMatchBackfill
    class StartMatchBackfill
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.StartMatchBackfill'
        data = {}
        data['TicketId'] = input[:ticket_id] unless input[:ticket_id].nil?
        data['ConfigurationName'] = input[:configuration_name] unless input[:configuration_name].nil?
        data['GameSessionArn'] = input[:game_session_arn] unless input[:game_session_arn].nil?
        data['Players'] = Builders::PlayerList.build(input[:players]) unless input[:players].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for PlayerList
    class PlayerList
      def self.build(input)
        data = []
        input.each do |element|
          data << Builders::Player.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Player
    class Player
      def self.build(input)
        data = {}
        data['PlayerId'] = input[:player_id] unless input[:player_id].nil?
        data['PlayerAttributes'] = Builders::PlayerAttributeMap.build(input[:player_attributes]) unless input[:player_attributes].nil?
        data['Team'] = input[:team] unless input[:team].nil?
        data['LatencyInMs'] = Builders::LatencyMap.build(input[:latency_in_ms]) unless input[:latency_in_ms].nil?
        data
      end
    end

    # Map Builder for LatencyMap
    class LatencyMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for PlayerAttributeMap
    class PlayerAttributeMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Builders::AttributeValue.build(value) unless value.nil?
        end
        data
      end
    end

    # Structure Builder for AttributeValue
    class AttributeValue
      def self.build(input)
        data = {}
        data['S'] = input[:s] unless input[:s].nil?
        data['N'] = Hearth::NumberHelper.serialize(input[:n]) unless input[:n].nil?
        data['SL'] = Builders::StringList.build(input[:sl]) unless input[:sl].nil?
        data['SDM'] = Builders::StringDoubleMap.build(input[:sdm]) unless input[:sdm].nil?
        data
      end
    end

    # Map Builder for StringDoubleMap
    class StringDoubleMap
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = Hearth::NumberHelper.serialize(value) unless value.nil?
        end
        data
      end
    end

    # Operation Builder for StartMatchmaking
    class StartMatchmaking
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.StartMatchmaking'
        data = {}
        data['TicketId'] = input[:ticket_id] unless input[:ticket_id].nil?
        data['ConfigurationName'] = input[:configuration_name] unless input[:configuration_name].nil?
        data['Players'] = Builders::PlayerList.build(input[:players]) unless input[:players].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopFleetActions
    class StopFleetActions
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.StopFleetActions'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['Actions'] = Builders::FleetActionList.build(input[:actions]) unless input[:actions].nil?
        data['Location'] = input[:location] unless input[:location].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopGameSessionPlacement
    class StopGameSessionPlacement
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.StopGameSessionPlacement'
        data = {}
        data['PlacementId'] = input[:placement_id] unless input[:placement_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for StopMatchmaking
    class StopMatchmaking
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.StopMatchmaking'
        data = {}
        data['TicketId'] = input[:ticket_id] unless input[:ticket_id].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SuspendGameServerGroup
    class SuspendGameServerGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.SuspendGameServerGroup'
        data = {}
        data['GameServerGroupName'] = input[:game_server_group_name] unless input[:game_server_group_name].nil?
        data['SuspendActions'] = Builders::GameServerGroupActions.build(input[:suspend_actions]) unless input[:suspend_actions].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for TagResource
    class TagResource
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.TagResource'
        data = {}
        data['ResourceARN'] = input[:resource_arn] unless input[:resource_arn].nil?
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
        http_req.headers['X-Amz-Target'] = 'GameLift.UntagResource'
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

    # Operation Builder for UpdateAlias
    class UpdateAlias
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.UpdateAlias'
        data = {}
        data['AliasId'] = input[:alias_id] unless input[:alias_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['RoutingStrategy'] = Builders::RoutingStrategy.build(input[:routing_strategy]) unless input[:routing_strategy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateBuild
    class UpdateBuild
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.UpdateBuild'
        data = {}
        data['BuildId'] = input[:build_id] unless input[:build_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFleetAttributes
    class UpdateFleetAttributes
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.UpdateFleetAttributes'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['NewGameSessionProtectionPolicy'] = input[:new_game_session_protection_policy] unless input[:new_game_session_protection_policy].nil?
        data['ResourceCreationLimitPolicy'] = Builders::ResourceCreationLimitPolicy.build(input[:resource_creation_limit_policy]) unless input[:resource_creation_limit_policy].nil?
        data['MetricGroups'] = Builders::MetricGroupList.build(input[:metric_groups]) unless input[:metric_groups].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFleetCapacity
    class UpdateFleetCapacity
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.UpdateFleetCapacity'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['DesiredInstances'] = input[:desired_instances] unless input[:desired_instances].nil?
        data['MinSize'] = input[:min_size] unless input[:min_size].nil?
        data['MaxSize'] = input[:max_size] unless input[:max_size].nil?
        data['Location'] = input[:location] unless input[:location].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateFleetPortSettings
    class UpdateFleetPortSettings
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.UpdateFleetPortSettings'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['InboundPermissionAuthorizations'] = Builders::IpPermissionsList.build(input[:inbound_permission_authorizations]) unless input[:inbound_permission_authorizations].nil?
        data['InboundPermissionRevocations'] = Builders::IpPermissionsList.build(input[:inbound_permission_revocations]) unless input[:inbound_permission_revocations].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGameServer
    class UpdateGameServer
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.UpdateGameServer'
        data = {}
        data['GameServerGroupName'] = input[:game_server_group_name] unless input[:game_server_group_name].nil?
        data['GameServerId'] = input[:game_server_id] unless input[:game_server_id].nil?
        data['GameServerData'] = input[:game_server_data] unless input[:game_server_data].nil?
        data['UtilizationStatus'] = input[:utilization_status] unless input[:utilization_status].nil?
        data['HealthCheck'] = input[:health_check] unless input[:health_check].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGameServerGroup
    class UpdateGameServerGroup
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.UpdateGameServerGroup'
        data = {}
        data['GameServerGroupName'] = input[:game_server_group_name] unless input[:game_server_group_name].nil?
        data['RoleArn'] = input[:role_arn] unless input[:role_arn].nil?
        data['InstanceDefinitions'] = Builders::InstanceDefinitions.build(input[:instance_definitions]) unless input[:instance_definitions].nil?
        data['GameServerProtectionPolicy'] = input[:game_server_protection_policy] unless input[:game_server_protection_policy].nil?
        data['BalancingStrategy'] = input[:balancing_strategy] unless input[:balancing_strategy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGameSession
    class UpdateGameSession
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.UpdateGameSession'
        data = {}
        data['GameSessionId'] = input[:game_session_id] unless input[:game_session_id].nil?
        data['MaximumPlayerSessionCount'] = input[:maximum_player_session_count] unless input[:maximum_player_session_count].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['PlayerSessionCreationPolicy'] = input[:player_session_creation_policy] unless input[:player_session_creation_policy].nil?
        data['ProtectionPolicy'] = input[:protection_policy] unless input[:protection_policy].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateGameSessionQueue
    class UpdateGameSessionQueue
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.UpdateGameSessionQueue'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['TimeoutInSeconds'] = input[:timeout_in_seconds] unless input[:timeout_in_seconds].nil?
        data['PlayerLatencyPolicies'] = Builders::PlayerLatencyPolicyList.build(input[:player_latency_policies]) unless input[:player_latency_policies].nil?
        data['Destinations'] = Builders::GameSessionQueueDestinationList.build(input[:destinations]) unless input[:destinations].nil?
        data['FilterConfiguration'] = Builders::FilterConfiguration.build(input[:filter_configuration]) unless input[:filter_configuration].nil?
        data['PriorityConfiguration'] = Builders::PriorityConfiguration.build(input[:priority_configuration]) unless input[:priority_configuration].nil?
        data['CustomEventData'] = input[:custom_event_data] unless input[:custom_event_data].nil?
        data['NotificationTarget'] = input[:notification_target] unless input[:notification_target].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateMatchmakingConfiguration
    class UpdateMatchmakingConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.UpdateMatchmakingConfiguration'
        data = {}
        data['Name'] = input[:name] unless input[:name].nil?
        data['Description'] = input[:description] unless input[:description].nil?
        data['GameSessionQueueArns'] = Builders::QueueArnsList.build(input[:game_session_queue_arns]) unless input[:game_session_queue_arns].nil?
        data['RequestTimeoutSeconds'] = input[:request_timeout_seconds] unless input[:request_timeout_seconds].nil?
        data['AcceptanceTimeoutSeconds'] = input[:acceptance_timeout_seconds] unless input[:acceptance_timeout_seconds].nil?
        data['AcceptanceRequired'] = input[:acceptance_required] unless input[:acceptance_required].nil?
        data['RuleSetName'] = input[:rule_set_name] unless input[:rule_set_name].nil?
        data['NotificationTarget'] = input[:notification_target] unless input[:notification_target].nil?
        data['AdditionalPlayerCount'] = input[:additional_player_count] unless input[:additional_player_count].nil?
        data['CustomEventData'] = input[:custom_event_data] unless input[:custom_event_data].nil?
        data['GameProperties'] = Builders::GamePropertyList.build(input[:game_properties]) unless input[:game_properties].nil?
        data['GameSessionData'] = input[:game_session_data] unless input[:game_session_data].nil?
        data['BackfillMode'] = input[:backfill_mode] unless input[:backfill_mode].nil?
        data['FlexMatchMode'] = input[:flex_match_mode] unless input[:flex_match_mode].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateRuntimeConfiguration
    class UpdateRuntimeConfiguration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.UpdateRuntimeConfiguration'
        data = {}
        data['FleetId'] = input[:fleet_id] unless input[:fleet_id].nil?
        data['RuntimeConfiguration'] = Builders::RuntimeConfiguration.build(input[:runtime_configuration]) unless input[:runtime_configuration].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for UpdateScript
    class UpdateScript
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.UpdateScript'
        data = {}
        data['ScriptId'] = input[:script_id] unless input[:script_id].nil?
        data['Name'] = input[:name] unless input[:name].nil?
        data['Version'] = input[:version] unless input[:version].nil?
        data['StorageLocation'] = Builders::S3Location.build(input[:storage_location]) unless input[:storage_location].nil?
        data['ZipFile'] = Base64::encode64(input[:zip_file]).strip unless input[:zip_file].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for ValidateMatchmakingRuleSet
    class ValidateMatchmakingRuleSet
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/')
        http_req.headers['Content-Type'] = 'application/x-amz-json-1.1'
        http_req.headers['X-Amz-Target'] = 'GameLift.ValidateMatchmakingRuleSet'
        data = {}
        data['RuleSetBody'] = input[:rule_set_body] unless input[:rule_set_body].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
