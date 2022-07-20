# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'time'

module AWS::SDK::GameLift
  module Validators

    class AcceptMatchInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptMatchInput, context: context)
        Hearth::Validator.validate!(input[:ticket_id], ::String, context: "#{context}[:ticket_id]")
        StringList.validate!(input[:player_ids], context: "#{context}[:player_ids]") unless input[:player_ids].nil?
        Hearth::Validator.validate!(input[:acceptance_type], ::String, context: "#{context}[:acceptance_type]")
      end
    end

    class AcceptMatchOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AcceptMatchOutput, context: context)
      end
    end

    class Alias
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Alias, context: context)
        Hearth::Validator.validate!(input[:alias_id], ::String, context: "#{context}[:alias_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:alias_arn], ::String, context: "#{context}[:alias_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        RoutingStrategy.validate!(input[:routing_strategy], context: "#{context}[:routing_strategy]") unless input[:routing_strategy].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class AliasList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Alias.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class AttributeValue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AttributeValue, context: context)
        Hearth::Validator.validate!(input[:s], ::String, context: "#{context}[:s]")
        Hearth::Validator.validate!(input[:n], ::Float, context: "#{context}[:n]")
        StringList.validate!(input[:sl], context: "#{context}[:sl]") unless input[:sl].nil?
        StringDoubleMap.validate!(input[:sdm], context: "#{context}[:sdm]") unless input[:sdm].nil?
      end
    end

    class AwsCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::AwsCredentials, context: context)
        Hearth::Validator.validate!(input[:access_key_id], ::String, context: "#{context}[:access_key_id]")
        Hearth::Validator.validate!(input[:secret_access_key], ::String, context: "#{context}[:secret_access_key]")
        Hearth::Validator.validate!(input[:session_token], ::String, context: "#{context}[:session_token]")
      end
    end

    class Build
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Build, context: context)
        Hearth::Validator.validate!(input[:build_id], ::String, context: "#{context}[:build_id]")
        Hearth::Validator.validate!(input[:build_arn], ::String, context: "#{context}[:build_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:size_on_disk], ::Integer, context: "#{context}[:size_on_disk]")
        Hearth::Validator.validate!(input[:operating_system], ::String, context: "#{context}[:operating_system]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class BuildList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Build.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class CertificateConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CertificateConfiguration, context: context)
        Hearth::Validator.validate!(input[:certificate_type], ::String, context: "#{context}[:certificate_type]")
      end
    end

    class ClaimGameServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClaimGameServerInput, context: context)
        Hearth::Validator.validate!(input[:game_server_group_name], ::String, context: "#{context}[:game_server_group_name]")
        Hearth::Validator.validate!(input[:game_server_id], ::String, context: "#{context}[:game_server_id]")
        Hearth::Validator.validate!(input[:game_server_data], ::String, context: "#{context}[:game_server_data]")
      end
    end

    class ClaimGameServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ClaimGameServerOutput, context: context)
        GameServer.validate!(input[:game_server], context: "#{context}[:game_server]") unless input[:game_server].nil?
      end
    end

    class ConflictException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ConflictException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class CreateAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAliasInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        RoutingStrategy.validate!(input[:routing_strategy], context: "#{context}[:routing_strategy]") unless input[:routing_strategy].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateAliasOutput, context: context)
        Alias.validate!(input[:alias], context: "#{context}[:alias]") unless input[:alias].nil?
      end
    end

    class CreateBuildInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBuildInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        S3Location.validate!(input[:storage_location], context: "#{context}[:storage_location]") unless input[:storage_location].nil?
        Hearth::Validator.validate!(input[:operating_system], ::String, context: "#{context}[:operating_system]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateBuildOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateBuildOutput, context: context)
        Build.validate!(input[:build], context: "#{context}[:build]") unless input[:build].nil?
        AwsCredentials.validate!(input[:upload_credentials], context: "#{context}[:upload_credentials]") unless input[:upload_credentials].nil?
        S3Location.validate!(input[:storage_location], context: "#{context}[:storage_location]") unless input[:storage_location].nil?
      end
    end

    class CreateFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFleetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:build_id], ::String, context: "#{context}[:build_id]")
        Hearth::Validator.validate!(input[:script_id], ::String, context: "#{context}[:script_id]")
        Hearth::Validator.validate!(input[:server_launch_path], ::String, context: "#{context}[:server_launch_path]")
        Hearth::Validator.validate!(input[:server_launch_parameters], ::String, context: "#{context}[:server_launch_parameters]")
        StringList.validate!(input[:log_paths], context: "#{context}[:log_paths]") unless input[:log_paths].nil?
        Hearth::Validator.validate!(input[:ec2_instance_type], ::String, context: "#{context}[:ec2_instance_type]")
        IpPermissionsList.validate!(input[:ec2_inbound_permissions], context: "#{context}[:ec2_inbound_permissions]") unless input[:ec2_inbound_permissions].nil?
        Hearth::Validator.validate!(input[:new_game_session_protection_policy], ::String, context: "#{context}[:new_game_session_protection_policy]")
        RuntimeConfiguration.validate!(input[:runtime_configuration], context: "#{context}[:runtime_configuration]") unless input[:runtime_configuration].nil?
        ResourceCreationLimitPolicy.validate!(input[:resource_creation_limit_policy], context: "#{context}[:resource_creation_limit_policy]") unless input[:resource_creation_limit_policy].nil?
        MetricGroupList.validate!(input[:metric_groups], context: "#{context}[:metric_groups]") unless input[:metric_groups].nil?
        Hearth::Validator.validate!(input[:peer_vpc_aws_account_id], ::String, context: "#{context}[:peer_vpc_aws_account_id]")
        Hearth::Validator.validate!(input[:peer_vpc_id], ::String, context: "#{context}[:peer_vpc_id]")
        Hearth::Validator.validate!(input[:fleet_type], ::String, context: "#{context}[:fleet_type]")
        Hearth::Validator.validate!(input[:instance_role_arn], ::String, context: "#{context}[:instance_role_arn]")
        CertificateConfiguration.validate!(input[:certificate_configuration], context: "#{context}[:certificate_configuration]") unless input[:certificate_configuration].nil?
        LocationConfigurationList.validate!(input[:locations], context: "#{context}[:locations]") unless input[:locations].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateFleetLocationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFleetLocationsInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        LocationConfigurationList.validate!(input[:locations], context: "#{context}[:locations]") unless input[:locations].nil?
      end
    end

    class CreateFleetLocationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFleetLocationsOutput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        LocationStateList.validate!(input[:location_states], context: "#{context}[:location_states]") unless input[:location_states].nil?
      end
    end

    class CreateFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateFleetOutput, context: context)
        FleetAttributes.validate!(input[:fleet_attributes], context: "#{context}[:fleet_attributes]") unless input[:fleet_attributes].nil?
        LocationStateList.validate!(input[:location_states], context: "#{context}[:location_states]") unless input[:location_states].nil?
      end
    end

    class CreateGameServerGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGameServerGroupInput, context: context)
        Hearth::Validator.validate!(input[:game_server_group_name], ::String, context: "#{context}[:game_server_group_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:min_size], ::Integer, context: "#{context}[:min_size]")
        Hearth::Validator.validate!(input[:max_size], ::Integer, context: "#{context}[:max_size]")
        LaunchTemplateSpecification.validate!(input[:launch_template], context: "#{context}[:launch_template]") unless input[:launch_template].nil?
        InstanceDefinitions.validate!(input[:instance_definitions], context: "#{context}[:instance_definitions]") unless input[:instance_definitions].nil?
        GameServerGroupAutoScalingPolicy.validate!(input[:auto_scaling_policy], context: "#{context}[:auto_scaling_policy]") unless input[:auto_scaling_policy].nil?
        Hearth::Validator.validate!(input[:balancing_strategy], ::String, context: "#{context}[:balancing_strategy]")
        Hearth::Validator.validate!(input[:game_server_protection_policy], ::String, context: "#{context}[:game_server_protection_policy]")
        VpcSubnets.validate!(input[:vpc_subnets], context: "#{context}[:vpc_subnets]") unless input[:vpc_subnets].nil?
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateGameServerGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGameServerGroupOutput, context: context)
        GameServerGroup.validate!(input[:game_server_group], context: "#{context}[:game_server_group]") unless input[:game_server_group].nil?
      end
    end

    class CreateGameSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGameSessionInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:alias_id], ::String, context: "#{context}[:alias_id]")
        Hearth::Validator.validate!(input[:maximum_player_session_count], ::Integer, context: "#{context}[:maximum_player_session_count]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        GamePropertyList.validate!(input[:game_properties], context: "#{context}[:game_properties]") unless input[:game_properties].nil?
        Hearth::Validator.validate!(input[:creator_id], ::String, context: "#{context}[:creator_id]")
        Hearth::Validator.validate!(input[:game_session_id], ::String, context: "#{context}[:game_session_id]")
        Hearth::Validator.validate!(input[:idempotency_token], ::String, context: "#{context}[:idempotency_token]")
        Hearth::Validator.validate!(input[:game_session_data], ::String, context: "#{context}[:game_session_data]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class CreateGameSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGameSessionOutput, context: context)
        GameSession.validate!(input[:game_session], context: "#{context}[:game_session]") unless input[:game_session].nil?
      end
    end

    class CreateGameSessionQueueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGameSessionQueueInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:timeout_in_seconds], ::Integer, context: "#{context}[:timeout_in_seconds]")
        PlayerLatencyPolicyList.validate!(input[:player_latency_policies], context: "#{context}[:player_latency_policies]") unless input[:player_latency_policies].nil?
        GameSessionQueueDestinationList.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        FilterConfiguration.validate!(input[:filter_configuration], context: "#{context}[:filter_configuration]") unless input[:filter_configuration].nil?
        PriorityConfiguration.validate!(input[:priority_configuration], context: "#{context}[:priority_configuration]") unless input[:priority_configuration].nil?
        Hearth::Validator.validate!(input[:custom_event_data], ::String, context: "#{context}[:custom_event_data]")
        Hearth::Validator.validate!(input[:notification_target], ::String, context: "#{context}[:notification_target]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateGameSessionQueueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateGameSessionQueueOutput, context: context)
        GameSessionQueue.validate!(input[:game_session_queue], context: "#{context}[:game_session_queue]") unless input[:game_session_queue].nil?
      end
    end

    class CreateMatchmakingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMatchmakingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        QueueArnsList.validate!(input[:game_session_queue_arns], context: "#{context}[:game_session_queue_arns]") unless input[:game_session_queue_arns].nil?
        Hearth::Validator.validate!(input[:request_timeout_seconds], ::Integer, context: "#{context}[:request_timeout_seconds]")
        Hearth::Validator.validate!(input[:acceptance_timeout_seconds], ::Integer, context: "#{context}[:acceptance_timeout_seconds]")
        Hearth::Validator.validate!(input[:acceptance_required], ::TrueClass, ::FalseClass, context: "#{context}[:acceptance_required]")
        Hearth::Validator.validate!(input[:rule_set_name], ::String, context: "#{context}[:rule_set_name]")
        Hearth::Validator.validate!(input[:notification_target], ::String, context: "#{context}[:notification_target]")
        Hearth::Validator.validate!(input[:additional_player_count], ::Integer, context: "#{context}[:additional_player_count]")
        Hearth::Validator.validate!(input[:custom_event_data], ::String, context: "#{context}[:custom_event_data]")
        GamePropertyList.validate!(input[:game_properties], context: "#{context}[:game_properties]") unless input[:game_properties].nil?
        Hearth::Validator.validate!(input[:game_session_data], ::String, context: "#{context}[:game_session_data]")
        Hearth::Validator.validate!(input[:backfill_mode], ::String, context: "#{context}[:backfill_mode]")
        Hearth::Validator.validate!(input[:flex_match_mode], ::String, context: "#{context}[:flex_match_mode]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateMatchmakingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMatchmakingConfigurationOutput, context: context)
        MatchmakingConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class CreateMatchmakingRuleSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMatchmakingRuleSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:rule_set_body], ::String, context: "#{context}[:rule_set_body]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateMatchmakingRuleSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateMatchmakingRuleSetOutput, context: context)
        MatchmakingRuleSet.validate!(input[:rule_set], context: "#{context}[:rule_set]") unless input[:rule_set].nil?
      end
    end

    class CreatePlayerSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePlayerSessionInput, context: context)
        Hearth::Validator.validate!(input[:game_session_id], ::String, context: "#{context}[:game_session_id]")
        Hearth::Validator.validate!(input[:player_id], ::String, context: "#{context}[:player_id]")
        Hearth::Validator.validate!(input[:player_data], ::String, context: "#{context}[:player_data]")
      end
    end

    class CreatePlayerSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePlayerSessionOutput, context: context)
        PlayerSession.validate!(input[:player_session], context: "#{context}[:player_session]") unless input[:player_session].nil?
      end
    end

    class CreatePlayerSessionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePlayerSessionsInput, context: context)
        Hearth::Validator.validate!(input[:game_session_id], ::String, context: "#{context}[:game_session_id]")
        PlayerIdList.validate!(input[:player_ids], context: "#{context}[:player_ids]") unless input[:player_ids].nil?
        PlayerDataMap.validate!(input[:player_data_map], context: "#{context}[:player_data_map]") unless input[:player_data_map].nil?
      end
    end

    class CreatePlayerSessionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreatePlayerSessionsOutput, context: context)
        PlayerSessionList.validate!(input[:player_sessions], context: "#{context}[:player_sessions]") unless input[:player_sessions].nil?
      end
    end

    class CreateScriptInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateScriptInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        S3Location.validate!(input[:storage_location], context: "#{context}[:storage_location]") unless input[:storage_location].nil?
        Hearth::Validator.validate!(input[:zip_file], ::String, context: "#{context}[:zip_file]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class CreateScriptOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateScriptOutput, context: context)
        Script.validate!(input[:script], context: "#{context}[:script]") unless input[:script].nil?
      end
    end

    class CreateVpcPeeringAuthorizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpcPeeringAuthorizationInput, context: context)
        Hearth::Validator.validate!(input[:game_lift_aws_account_id], ::String, context: "#{context}[:game_lift_aws_account_id]")
        Hearth::Validator.validate!(input[:peer_vpc_id], ::String, context: "#{context}[:peer_vpc_id]")
      end
    end

    class CreateVpcPeeringAuthorizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpcPeeringAuthorizationOutput, context: context)
        VpcPeeringAuthorization.validate!(input[:vpc_peering_authorization], context: "#{context}[:vpc_peering_authorization]") unless input[:vpc_peering_authorization].nil?
      end
    end

    class CreateVpcPeeringConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpcPeeringConnectionInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:peer_vpc_aws_account_id], ::String, context: "#{context}[:peer_vpc_aws_account_id]")
        Hearth::Validator.validate!(input[:peer_vpc_id], ::String, context: "#{context}[:peer_vpc_id]")
      end
    end

    class CreateVpcPeeringConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::CreateVpcPeeringConnectionOutput, context: context)
      end
    end

    class DeleteAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAliasInput, context: context)
        Hearth::Validator.validate!(input[:alias_id], ::String, context: "#{context}[:alias_id]")
      end
    end

    class DeleteAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteAliasOutput, context: context)
      end
    end

    class DeleteBuildInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBuildInput, context: context)
        Hearth::Validator.validate!(input[:build_id], ::String, context: "#{context}[:build_id]")
      end
    end

    class DeleteBuildOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteBuildOutput, context: context)
      end
    end

    class DeleteFleetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFleetInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
      end
    end

    class DeleteFleetLocationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFleetLocationsInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        LocationList.validate!(input[:locations], context: "#{context}[:locations]") unless input[:locations].nil?
      end
    end

    class DeleteFleetLocationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFleetLocationsOutput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        LocationStateList.validate!(input[:location_states], context: "#{context}[:location_states]") unless input[:location_states].nil?
      end
    end

    class DeleteFleetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteFleetOutput, context: context)
      end
    end

    class DeleteGameServerGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGameServerGroupInput, context: context)
        Hearth::Validator.validate!(input[:game_server_group_name], ::String, context: "#{context}[:game_server_group_name]")
        Hearth::Validator.validate!(input[:delete_option], ::String, context: "#{context}[:delete_option]")
      end
    end

    class DeleteGameServerGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGameServerGroupOutput, context: context)
        GameServerGroup.validate!(input[:game_server_group], context: "#{context}[:game_server_group]") unless input[:game_server_group].nil?
      end
    end

    class DeleteGameSessionQueueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGameSessionQueueInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteGameSessionQueueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteGameSessionQueueOutput, context: context)
      end
    end

    class DeleteMatchmakingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMatchmakingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteMatchmakingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMatchmakingConfigurationOutput, context: context)
      end
    end

    class DeleteMatchmakingRuleSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMatchmakingRuleSetInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class DeleteMatchmakingRuleSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteMatchmakingRuleSetOutput, context: context)
      end
    end

    class DeleteScalingPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScalingPolicyInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
      end
    end

    class DeleteScalingPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScalingPolicyOutput, context: context)
      end
    end

    class DeleteScriptInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScriptInput, context: context)
        Hearth::Validator.validate!(input[:script_id], ::String, context: "#{context}[:script_id]")
      end
    end

    class DeleteScriptOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteScriptOutput, context: context)
      end
    end

    class DeleteVpcPeeringAuthorizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVpcPeeringAuthorizationInput, context: context)
        Hearth::Validator.validate!(input[:game_lift_aws_account_id], ::String, context: "#{context}[:game_lift_aws_account_id]")
        Hearth::Validator.validate!(input[:peer_vpc_id], ::String, context: "#{context}[:peer_vpc_id]")
      end
    end

    class DeleteVpcPeeringAuthorizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVpcPeeringAuthorizationOutput, context: context)
      end
    end

    class DeleteVpcPeeringConnectionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVpcPeeringConnectionInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:vpc_peering_connection_id], ::String, context: "#{context}[:vpc_peering_connection_id]")
      end
    end

    class DeleteVpcPeeringConnectionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeleteVpcPeeringConnectionOutput, context: context)
      end
    end

    class DeregisterGameServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterGameServerInput, context: context)
        Hearth::Validator.validate!(input[:game_server_group_name], ::String, context: "#{context}[:game_server_group_name]")
        Hearth::Validator.validate!(input[:game_server_id], ::String, context: "#{context}[:game_server_id]")
      end
    end

    class DeregisterGameServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DeregisterGameServerOutput, context: context)
      end
    end

    class DescribeAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAliasInput, context: context)
        Hearth::Validator.validate!(input[:alias_id], ::String, context: "#{context}[:alias_id]")
      end
    end

    class DescribeAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeAliasOutput, context: context)
        Alias.validate!(input[:alias], context: "#{context}[:alias]") unless input[:alias].nil?
      end
    end

    class DescribeBuildInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBuildInput, context: context)
        Hearth::Validator.validate!(input[:build_id], ::String, context: "#{context}[:build_id]")
      end
    end

    class DescribeBuildOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeBuildOutput, context: context)
        Build.validate!(input[:build], context: "#{context}[:build]") unless input[:build].nil?
      end
    end

    class DescribeEC2InstanceLimitsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEC2InstanceLimitsInput, context: context)
        Hearth::Validator.validate!(input[:ec2_instance_type], ::String, context: "#{context}[:ec2_instance_type]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class DescribeEC2InstanceLimitsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeEC2InstanceLimitsOutput, context: context)
        EC2InstanceLimitList.validate!(input[:ec2_instance_limits], context: "#{context}[:ec2_instance_limits]") unless input[:ec2_instance_limits].nil?
      end
    end

    class DescribeFleetAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetAttributesInput, context: context)
        FleetIdOrArnList.validate!(input[:fleet_ids], context: "#{context}[:fleet_ids]") unless input[:fleet_ids].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetAttributesOutput, context: context)
        FleetAttributesList.validate!(input[:fleet_attributes], context: "#{context}[:fleet_attributes]") unless input[:fleet_attributes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetCapacityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetCapacityInput, context: context)
        FleetIdOrArnList.validate!(input[:fleet_ids], context: "#{context}[:fleet_ids]") unless input[:fleet_ids].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetCapacityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetCapacityOutput, context: context)
        FleetCapacityList.validate!(input[:fleet_capacity], context: "#{context}[:fleet_capacity]") unless input[:fleet_capacity].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetEventsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetEventsInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetEventsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetEventsOutput, context: context)
        EventList.validate!(input[:events], context: "#{context}[:events]") unless input[:events].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetLocationAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetLocationAttributesInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        LocationList.validate!(input[:locations], context: "#{context}[:locations]") unless input[:locations].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetLocationAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetLocationAttributesOutput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        LocationAttributesList.validate!(input[:location_attributes], context: "#{context}[:location_attributes]") unless input[:location_attributes].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetLocationCapacityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetLocationCapacityInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class DescribeFleetLocationCapacityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetLocationCapacityOutput, context: context)
        FleetCapacity.validate!(input[:fleet_capacity], context: "#{context}[:fleet_capacity]") unless input[:fleet_capacity].nil?
      end
    end

    class DescribeFleetLocationUtilizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetLocationUtilizationInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class DescribeFleetLocationUtilizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetLocationUtilizationOutput, context: context)
        FleetUtilization.validate!(input[:fleet_utilization], context: "#{context}[:fleet_utilization]") unless input[:fleet_utilization].nil?
      end
    end

    class DescribeFleetPortSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetPortSettingsInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class DescribeFleetPortSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetPortSettingsOutput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        IpPermissionsList.validate!(input[:inbound_permissions], context: "#{context}[:inbound_permissions]") unless input[:inbound_permissions].nil?
        Hearth::Validator.validate!(input[:update_status], ::String, context: "#{context}[:update_status]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class DescribeFleetUtilizationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetUtilizationInput, context: context)
        FleetIdOrArnList.validate!(input[:fleet_ids], context: "#{context}[:fleet_ids]") unless input[:fleet_ids].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeFleetUtilizationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeFleetUtilizationOutput, context: context)
        FleetUtilizationList.validate!(input[:fleet_utilization], context: "#{context}[:fleet_utilization]") unless input[:fleet_utilization].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeGameServerGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGameServerGroupInput, context: context)
        Hearth::Validator.validate!(input[:game_server_group_name], ::String, context: "#{context}[:game_server_group_name]")
      end
    end

    class DescribeGameServerGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGameServerGroupOutput, context: context)
        GameServerGroup.validate!(input[:game_server_group], context: "#{context}[:game_server_group]") unless input[:game_server_group].nil?
      end
    end

    class DescribeGameServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGameServerInput, context: context)
        Hearth::Validator.validate!(input[:game_server_group_name], ::String, context: "#{context}[:game_server_group_name]")
        Hearth::Validator.validate!(input[:game_server_id], ::String, context: "#{context}[:game_server_id]")
      end
    end

    class DescribeGameServerInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGameServerInstancesInput, context: context)
        Hearth::Validator.validate!(input[:game_server_group_name], ::String, context: "#{context}[:game_server_group_name]")
        GameServerInstanceIds.validate!(input[:instance_ids], context: "#{context}[:instance_ids]") unless input[:instance_ids].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeGameServerInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGameServerInstancesOutput, context: context)
        GameServerInstances.validate!(input[:game_server_instances], context: "#{context}[:game_server_instances]") unless input[:game_server_instances].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeGameServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGameServerOutput, context: context)
        GameServer.validate!(input[:game_server], context: "#{context}[:game_server]") unless input[:game_server].nil?
      end
    end

    class DescribeGameSessionDetailsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGameSessionDetailsInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:game_session_id], ::String, context: "#{context}[:game_session_id]")
        Hearth::Validator.validate!(input[:alias_id], ::String, context: "#{context}[:alias_id]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:status_filter], ::String, context: "#{context}[:status_filter]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeGameSessionDetailsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGameSessionDetailsOutput, context: context)
        GameSessionDetailList.validate!(input[:game_session_details], context: "#{context}[:game_session_details]") unless input[:game_session_details].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeGameSessionPlacementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGameSessionPlacementInput, context: context)
        Hearth::Validator.validate!(input[:placement_id], ::String, context: "#{context}[:placement_id]")
      end
    end

    class DescribeGameSessionPlacementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGameSessionPlacementOutput, context: context)
        GameSessionPlacement.validate!(input[:game_session_placement], context: "#{context}[:game_session_placement]") unless input[:game_session_placement].nil?
      end
    end

    class DescribeGameSessionQueuesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGameSessionQueuesInput, context: context)
        GameSessionQueueNameOrArnList.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeGameSessionQueuesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGameSessionQueuesOutput, context: context)
        GameSessionQueueList.validate!(input[:game_session_queues], context: "#{context}[:game_session_queues]") unless input[:game_session_queues].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeGameSessionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGameSessionsInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:game_session_id], ::String, context: "#{context}[:game_session_id]")
        Hearth::Validator.validate!(input[:alias_id], ::String, context: "#{context}[:alias_id]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:status_filter], ::String, context: "#{context}[:status_filter]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeGameSessionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeGameSessionsOutput, context: context)
        GameSessionList.validate!(input[:game_sessions], context: "#{context}[:game_sessions]") unless input[:game_sessions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeInstancesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstancesInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class DescribeInstancesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeInstancesOutput, context: context)
        InstanceList.validate!(input[:instances], context: "#{context}[:instances]") unless input[:instances].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMatchmakingConfigurationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMatchmakingConfigurationsInput, context: context)
        MatchmakingConfigurationNameList.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:rule_set_name], ::String, context: "#{context}[:rule_set_name]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMatchmakingConfigurationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMatchmakingConfigurationsOutput, context: context)
        MatchmakingConfigurationList.validate!(input[:configurations], context: "#{context}[:configurations]") unless input[:configurations].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMatchmakingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMatchmakingInput, context: context)
        MatchmakingIdList.validate!(input[:ticket_ids], context: "#{context}[:ticket_ids]") unless input[:ticket_ids].nil?
      end
    end

    class DescribeMatchmakingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMatchmakingOutput, context: context)
        MatchmakingTicketList.validate!(input[:ticket_list], context: "#{context}[:ticket_list]") unless input[:ticket_list].nil?
      end
    end

    class DescribeMatchmakingRuleSetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMatchmakingRuleSetsInput, context: context)
        MatchmakingRuleSetNameList.validate!(input[:names], context: "#{context}[:names]") unless input[:names].nil?
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeMatchmakingRuleSetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeMatchmakingRuleSetsOutput, context: context)
        MatchmakingRuleSetList.validate!(input[:rule_sets], context: "#{context}[:rule_sets]") unless input[:rule_sets].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribePlayerSessionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePlayerSessionsInput, context: context)
        Hearth::Validator.validate!(input[:game_session_id], ::String, context: "#{context}[:game_session_id]")
        Hearth::Validator.validate!(input[:player_id], ::String, context: "#{context}[:player_id]")
        Hearth::Validator.validate!(input[:player_session_id], ::String, context: "#{context}[:player_session_id]")
        Hearth::Validator.validate!(input[:player_session_status_filter], ::String, context: "#{context}[:player_session_status_filter]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribePlayerSessionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribePlayerSessionsOutput, context: context)
        PlayerSessionList.validate!(input[:player_sessions], context: "#{context}[:player_sessions]") unless input[:player_sessions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeRuntimeConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRuntimeConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
      end
    end

    class DescribeRuntimeConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeRuntimeConfigurationOutput, context: context)
        RuntimeConfiguration.validate!(input[:runtime_configuration], context: "#{context}[:runtime_configuration]") unless input[:runtime_configuration].nil?
      end
    end

    class DescribeScalingPoliciesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScalingPoliciesInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:status_filter], ::String, context: "#{context}[:status_filter]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class DescribeScalingPoliciesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScalingPoliciesOutput, context: context)
        ScalingPolicyList.validate!(input[:scaling_policies], context: "#{context}[:scaling_policies]") unless input[:scaling_policies].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class DescribeScriptInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScriptInput, context: context)
        Hearth::Validator.validate!(input[:script_id], ::String, context: "#{context}[:script_id]")
      end
    end

    class DescribeScriptOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeScriptOutput, context: context)
        Script.validate!(input[:script], context: "#{context}[:script]") unless input[:script].nil?
      end
    end

    class DescribeVpcPeeringAuthorizationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVpcPeeringAuthorizationsInput, context: context)
      end
    end

    class DescribeVpcPeeringAuthorizationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVpcPeeringAuthorizationsOutput, context: context)
        VpcPeeringAuthorizationList.validate!(input[:vpc_peering_authorizations], context: "#{context}[:vpc_peering_authorizations]") unless input[:vpc_peering_authorizations].nil?
      end
    end

    class DescribeVpcPeeringConnectionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVpcPeeringConnectionsInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
      end
    end

    class DescribeVpcPeeringConnectionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DescribeVpcPeeringConnectionsOutput, context: context)
        VpcPeeringConnectionList.validate!(input[:vpc_peering_connections], context: "#{context}[:vpc_peering_connections]") unless input[:vpc_peering_connections].nil?
      end
    end

    class DesiredPlayerSession
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DesiredPlayerSession, context: context)
        Hearth::Validator.validate!(input[:player_id], ::String, context: "#{context}[:player_id]")
        Hearth::Validator.validate!(input[:player_data], ::String, context: "#{context}[:player_data]")
      end
    end

    class DesiredPlayerSessionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DesiredPlayerSession.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class EC2InstanceCounts
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2InstanceCounts, context: context)
        Hearth::Validator.validate!(input[:desired], ::Integer, context: "#{context}[:desired]")
        Hearth::Validator.validate!(input[:minimum], ::Integer, context: "#{context}[:minimum]")
        Hearth::Validator.validate!(input[:maximum], ::Integer, context: "#{context}[:maximum]")
        Hearth::Validator.validate!(input[:pending], ::Integer, context: "#{context}[:pending]")
        Hearth::Validator.validate!(input[:active], ::Integer, context: "#{context}[:active]")
        Hearth::Validator.validate!(input[:idle], ::Integer, context: "#{context}[:idle]")
        Hearth::Validator.validate!(input[:terminating], ::Integer, context: "#{context}[:terminating]")
      end
    end

    class EC2InstanceLimit
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::EC2InstanceLimit, context: context)
        Hearth::Validator.validate!(input[:ec2_instance_type], ::String, context: "#{context}[:ec2_instance_type]")
        Hearth::Validator.validate!(input[:current_instances], ::Integer, context: "#{context}[:current_instances]")
        Hearth::Validator.validate!(input[:instance_limit], ::Integer, context: "#{context}[:instance_limit]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class EC2InstanceLimitList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          EC2InstanceLimit.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Event
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Event, context: context)
        Hearth::Validator.validate!(input[:event_id], ::String, context: "#{context}[:event_id]")
        Hearth::Validator.validate!(input[:resource_id], ::String, context: "#{context}[:resource_id]")
        Hearth::Validator.validate!(input[:event_code], ::String, context: "#{context}[:event_code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
        Hearth::Validator.validate!(input[:event_time], ::Time, context: "#{context}[:event_time]")
        Hearth::Validator.validate!(input[:pre_signed_log_url], ::String, context: "#{context}[:pre_signed_log_url]")
      end
    end

    class EventList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Event.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FilterConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FilterConfiguration, context: context)
        LocationList.validate!(input[:allowed_locations], context: "#{context}[:allowed_locations]") unless input[:allowed_locations].nil?
      end
    end

    class FleetActionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FleetAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FleetAttributes, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:fleet_type], ::String, context: "#{context}[:fleet_type]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:termination_time], ::Time, context: "#{context}[:termination_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:build_id], ::String, context: "#{context}[:build_id]")
        Hearth::Validator.validate!(input[:build_arn], ::String, context: "#{context}[:build_arn]")
        Hearth::Validator.validate!(input[:script_id], ::String, context: "#{context}[:script_id]")
        Hearth::Validator.validate!(input[:script_arn], ::String, context: "#{context}[:script_arn]")
        Hearth::Validator.validate!(input[:server_launch_path], ::String, context: "#{context}[:server_launch_path]")
        Hearth::Validator.validate!(input[:server_launch_parameters], ::String, context: "#{context}[:server_launch_parameters]")
        StringList.validate!(input[:log_paths], context: "#{context}[:log_paths]") unless input[:log_paths].nil?
        Hearth::Validator.validate!(input[:new_game_session_protection_policy], ::String, context: "#{context}[:new_game_session_protection_policy]")
        Hearth::Validator.validate!(input[:operating_system], ::String, context: "#{context}[:operating_system]")
        ResourceCreationLimitPolicy.validate!(input[:resource_creation_limit_policy], context: "#{context}[:resource_creation_limit_policy]") unless input[:resource_creation_limit_policy].nil?
        MetricGroupList.validate!(input[:metric_groups], context: "#{context}[:metric_groups]") unless input[:metric_groups].nil?
        FleetActionList.validate!(input[:stopped_actions], context: "#{context}[:stopped_actions]") unless input[:stopped_actions].nil?
        Hearth::Validator.validate!(input[:instance_role_arn], ::String, context: "#{context}[:instance_role_arn]")
        CertificateConfiguration.validate!(input[:certificate_configuration], context: "#{context}[:certificate_configuration]") unless input[:certificate_configuration].nil?
      end
    end

    class FleetAttributesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FleetAttributes.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FleetCapacity
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FleetCapacity, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        EC2InstanceCounts.validate!(input[:instance_counts], context: "#{context}[:instance_counts]") unless input[:instance_counts].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class FleetCapacityExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FleetCapacityExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class FleetCapacityList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FleetCapacity.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class FleetIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FleetIdOrArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class FleetUtilization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::FleetUtilization, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:active_server_process_count], ::Integer, context: "#{context}[:active_server_process_count]")
        Hearth::Validator.validate!(input[:active_game_session_count], ::Integer, context: "#{context}[:active_game_session_count]")
        Hearth::Validator.validate!(input[:current_player_session_count], ::Integer, context: "#{context}[:current_player_session_count]")
        Hearth::Validator.validate!(input[:maximum_player_session_count], ::Integer, context: "#{context}[:maximum_player_session_count]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class FleetUtilizationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          FleetUtilization.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GameProperty
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GameProperty, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class GamePropertyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GameProperty.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GameServer
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GameServer, context: context)
        Hearth::Validator.validate!(input[:game_server_group_name], ::String, context: "#{context}[:game_server_group_name]")
        Hearth::Validator.validate!(input[:game_server_group_arn], ::String, context: "#{context}[:game_server_group_arn]")
        Hearth::Validator.validate!(input[:game_server_id], ::String, context: "#{context}[:game_server_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:connection_info], ::String, context: "#{context}[:connection_info]")
        Hearth::Validator.validate!(input[:game_server_data], ::String, context: "#{context}[:game_server_data]")
        Hearth::Validator.validate!(input[:claim_status], ::String, context: "#{context}[:claim_status]")
        Hearth::Validator.validate!(input[:utilization_status], ::String, context: "#{context}[:utilization_status]")
        Hearth::Validator.validate!(input[:registration_time], ::Time, context: "#{context}[:registration_time]")
        Hearth::Validator.validate!(input[:last_claim_time], ::Time, context: "#{context}[:last_claim_time]")
        Hearth::Validator.validate!(input[:last_health_check_time], ::Time, context: "#{context}[:last_health_check_time]")
      end
    end

    class GameServerGroup
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GameServerGroup, context: context)
        Hearth::Validator.validate!(input[:game_server_group_name], ::String, context: "#{context}[:game_server_group_name]")
        Hearth::Validator.validate!(input[:game_server_group_arn], ::String, context: "#{context}[:game_server_group_arn]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        InstanceDefinitions.validate!(input[:instance_definitions], context: "#{context}[:instance_definitions]") unless input[:instance_definitions].nil?
        Hearth::Validator.validate!(input[:balancing_strategy], ::String, context: "#{context}[:balancing_strategy]")
        Hearth::Validator.validate!(input[:game_server_protection_policy], ::String, context: "#{context}[:game_server_protection_policy]")
        Hearth::Validator.validate!(input[:auto_scaling_group_arn], ::String, context: "#{context}[:auto_scaling_group_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        GameServerGroupActions.validate!(input[:suspended_actions], context: "#{context}[:suspended_actions]") unless input[:suspended_actions].nil?
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:last_updated_time], ::Time, context: "#{context}[:last_updated_time]")
      end
    end

    class GameServerGroupActions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GameServerGroupAutoScalingPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GameServerGroupAutoScalingPolicy, context: context)
        Hearth::Validator.validate!(input[:estimated_instance_warmup], ::Integer, context: "#{context}[:estimated_instance_warmup]")
        TargetTrackingConfiguration.validate!(input[:target_tracking_configuration], context: "#{context}[:target_tracking_configuration]") unless input[:target_tracking_configuration].nil?
      end
    end

    class GameServerGroups
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GameServerGroup.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GameServerInstance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GameServerInstance, context: context)
        Hearth::Validator.validate!(input[:game_server_group_name], ::String, context: "#{context}[:game_server_group_name]")
        Hearth::Validator.validate!(input[:game_server_group_arn], ::String, context: "#{context}[:game_server_group_arn]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:instance_status], ::String, context: "#{context}[:instance_status]")
      end
    end

    class GameServerInstanceIds
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GameServerInstances
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GameServerInstance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GameServers
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GameServer.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GameSession
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GameSession, context: context)
        Hearth::Validator.validate!(input[:game_session_id], ::String, context: "#{context}[:game_session_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:termination_time], ::Time, context: "#{context}[:termination_time]")
        Hearth::Validator.validate!(input[:current_player_session_count], ::Integer, context: "#{context}[:current_player_session_count]")
        Hearth::Validator.validate!(input[:maximum_player_session_count], ::Integer, context: "#{context}[:maximum_player_session_count]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        GamePropertyList.validate!(input[:game_properties], context: "#{context}[:game_properties]") unless input[:game_properties].nil?
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:player_session_creation_policy], ::String, context: "#{context}[:player_session_creation_policy]")
        Hearth::Validator.validate!(input[:creator_id], ::String, context: "#{context}[:creator_id]")
        Hearth::Validator.validate!(input[:game_session_data], ::String, context: "#{context}[:game_session_data]")
        Hearth::Validator.validate!(input[:matchmaker_data], ::String, context: "#{context}[:matchmaker_data]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class GameSessionConnectionInfo
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GameSessionConnectionInfo, context: context)
        Hearth::Validator.validate!(input[:game_session_arn], ::String, context: "#{context}[:game_session_arn]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        MatchedPlayerSessionList.validate!(input[:matched_player_sessions], context: "#{context}[:matched_player_sessions]") unless input[:matched_player_sessions].nil?
      end
    end

    class GameSessionDetail
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GameSessionDetail, context: context)
        GameSession.validate!(input[:game_session], context: "#{context}[:game_session]") unless input[:game_session].nil?
        Hearth::Validator.validate!(input[:protection_policy], ::String, context: "#{context}[:protection_policy]")
      end
    end

    class GameSessionDetailList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GameSessionDetail.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GameSessionFullException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GameSessionFullException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class GameSessionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GameSession.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GameSessionPlacement
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GameSessionPlacement, context: context)
        Hearth::Validator.validate!(input[:placement_id], ::String, context: "#{context}[:placement_id]")
        Hearth::Validator.validate!(input[:game_session_queue_name], ::String, context: "#{context}[:game_session_queue_name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        GamePropertyList.validate!(input[:game_properties], context: "#{context}[:game_properties]") unless input[:game_properties].nil?
        Hearth::Validator.validate!(input[:maximum_player_session_count], ::Integer, context: "#{context}[:maximum_player_session_count]")
        Hearth::Validator.validate!(input[:game_session_name], ::String, context: "#{context}[:game_session_name]")
        Hearth::Validator.validate!(input[:game_session_id], ::String, context: "#{context}[:game_session_id]")
        Hearth::Validator.validate!(input[:game_session_arn], ::String, context: "#{context}[:game_session_arn]")
        Hearth::Validator.validate!(input[:game_session_region], ::String, context: "#{context}[:game_session_region]")
        PlayerLatencyList.validate!(input[:player_latencies], context: "#{context}[:player_latencies]") unless input[:player_latencies].nil?
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        PlacedPlayerSessionList.validate!(input[:placed_player_sessions], context: "#{context}[:placed_player_sessions]") unless input[:placed_player_sessions].nil?
        Hearth::Validator.validate!(input[:game_session_data], ::String, context: "#{context}[:game_session_data]")
        Hearth::Validator.validate!(input[:matchmaker_data], ::String, context: "#{context}[:matchmaker_data]")
      end
    end

    class GameSessionQueue
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GameSessionQueue, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:game_session_queue_arn], ::String, context: "#{context}[:game_session_queue_arn]")
        Hearth::Validator.validate!(input[:timeout_in_seconds], ::Integer, context: "#{context}[:timeout_in_seconds]")
        PlayerLatencyPolicyList.validate!(input[:player_latency_policies], context: "#{context}[:player_latency_policies]") unless input[:player_latency_policies].nil?
        GameSessionQueueDestinationList.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        FilterConfiguration.validate!(input[:filter_configuration], context: "#{context}[:filter_configuration]") unless input[:filter_configuration].nil?
        PriorityConfiguration.validate!(input[:priority_configuration], context: "#{context}[:priority_configuration]") unless input[:priority_configuration].nil?
        Hearth::Validator.validate!(input[:custom_event_data], ::String, context: "#{context}[:custom_event_data]")
        Hearth::Validator.validate!(input[:notification_target], ::String, context: "#{context}[:notification_target]")
      end
    end

    class GameSessionQueueDestination
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GameSessionQueueDestination, context: context)
        Hearth::Validator.validate!(input[:destination_arn], ::String, context: "#{context}[:destination_arn]")
      end
    end

    class GameSessionQueueDestinationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GameSessionQueueDestination.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GameSessionQueueList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          GameSessionQueue.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class GameSessionQueueNameOrArnList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class GetGameSessionLogUrlInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGameSessionLogUrlInput, context: context)
        Hearth::Validator.validate!(input[:game_session_id], ::String, context: "#{context}[:game_session_id]")
      end
    end

    class GetGameSessionLogUrlOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetGameSessionLogUrlOutput, context: context)
        Hearth::Validator.validate!(input[:pre_signed_url], ::String, context: "#{context}[:pre_signed_url]")
      end
    end

    class GetInstanceAccessInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceAccessInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
      end
    end

    class GetInstanceAccessOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetInstanceAccessOutput, context: context)
        InstanceAccess.validate!(input[:instance_access], context: "#{context}[:instance_access]") unless input[:instance_access].nil?
      end
    end

    class IdempotentParameterMismatchException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IdempotentParameterMismatchException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Instance
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Instance, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Hearth::Validator.validate!(input[:operating_system], ::String, context: "#{context}[:operating_system]")
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class InstanceAccess
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceAccess, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:operating_system], ::String, context: "#{context}[:operating_system]")
        InstanceCredentials.validate!(input[:credentials], context: "#{context}[:credentials]") unless input[:credentials].nil?
      end
    end

    class InstanceCredentials
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceCredentials, context: context)
        Hearth::Validator.validate!(input[:user_name], ::String, context: "#{context}[:user_name]")
        Hearth::Validator.validate!(input[:secret], ::String, context: "#{context}[:secret]")
      end
    end

    class InstanceDefinition
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InstanceDefinition, context: context)
        Hearth::Validator.validate!(input[:instance_type], ::String, context: "#{context}[:instance_type]")
        Hearth::Validator.validate!(input[:weighted_capacity], ::String, context: "#{context}[:weighted_capacity]")
      end
    end

    class InstanceDefinitions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          InstanceDefinition.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InstanceList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Instance.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class InternalServiceException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InternalServiceException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidFleetStatusException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidFleetStatusException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidGameSessionStatusException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidGameSessionStatusException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidRequestException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidRequestException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class IpPermission
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::IpPermission, context: context)
        Hearth::Validator.validate!(input[:from_port], ::Integer, context: "#{context}[:from_port]")
        Hearth::Validator.validate!(input[:to_port], ::Integer, context: "#{context}[:to_port]")
        Hearth::Validator.validate!(input[:ip_range], ::String, context: "#{context}[:ip_range]")
        Hearth::Validator.validate!(input[:protocol], ::String, context: "#{context}[:protocol]")
      end
    end

    class IpPermissionsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          IpPermission.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LatencyMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Integer, context: "#{context}[:#{key}]")
        end
      end
    end

    class LaunchTemplateSpecification
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LaunchTemplateSpecification, context: context)
        Hearth::Validator.validate!(input[:launch_template_id], ::String, context: "#{context}[:launch_template_id]")
        Hearth::Validator.validate!(input[:launch_template_name], ::String, context: "#{context}[:launch_template_name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ListAliasesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAliasesInput, context: context)
        Hearth::Validator.validate!(input[:routing_strategy_type], ::String, context: "#{context}[:routing_strategy_type]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListAliasesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListAliasesOutput, context: context)
        AliasList.validate!(input[:aliases], context: "#{context}[:aliases]") unless input[:aliases].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBuildsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBuildsInput, context: context)
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListBuildsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListBuildsOutput, context: context)
        BuildList.validate!(input[:builds], context: "#{context}[:builds]") unless input[:builds].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFleetsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFleetsInput, context: context)
        Hearth::Validator.validate!(input[:build_id], ::String, context: "#{context}[:build_id]")
        Hearth::Validator.validate!(input[:script_id], ::String, context: "#{context}[:script_id]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListFleetsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListFleetsOutput, context: context)
        FleetIdList.validate!(input[:fleet_ids], context: "#{context}[:fleet_ids]") unless input[:fleet_ids].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGameServerGroupsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGameServerGroupsInput, context: context)
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGameServerGroupsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGameServerGroupsOutput, context: context)
        GameServerGroups.validate!(input[:game_server_groups], context: "#{context}[:game_server_groups]") unless input[:game_server_groups].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGameServersInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGameServersInput, context: context)
        Hearth::Validator.validate!(input[:game_server_group_name], ::String, context: "#{context}[:game_server_group_name]")
        Hearth::Validator.validate!(input[:sort_order], ::String, context: "#{context}[:sort_order]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListGameServersOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListGameServersOutput, context: context)
        GameServers.validate!(input[:game_servers], context: "#{context}[:game_servers]") unless input[:game_servers].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListScriptsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListScriptsInput, context: context)
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListScriptsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListScriptsOutput, context: context)
        ScriptList.validate!(input[:scripts], context: "#{context}[:scripts]") unless input[:scripts].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ListTagsForResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
      end
    end

    class ListTagsForResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ListTagsForResourceOutput, context: context)
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class LocationAttributes
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LocationAttributes, context: context)
        LocationState.validate!(input[:location_state], context: "#{context}[:location_state]") unless input[:location_state].nil?
        FleetActionList.validate!(input[:stopped_actions], context: "#{context}[:stopped_actions]") unless input[:stopped_actions].nil?
        Hearth::Validator.validate!(input[:update_status], ::String, context: "#{context}[:update_status]")
      end
    end

    class LocationAttributesList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LocationAttributes.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LocationConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LocationConfiguration, context: context)
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class LocationConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LocationConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class LocationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class LocationState
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LocationState, context: context)
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
      end
    end

    class LocationStateList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          LocationState.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MatchedPlayerSession
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MatchedPlayerSession, context: context)
        Hearth::Validator.validate!(input[:player_id], ::String, context: "#{context}[:player_id]")
        Hearth::Validator.validate!(input[:player_session_id], ::String, context: "#{context}[:player_session_id]")
      end
    end

    class MatchedPlayerSessionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MatchedPlayerSession.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MatchmakingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MatchmakingConfiguration, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:configuration_arn], ::String, context: "#{context}[:configuration_arn]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        QueueArnsList.validate!(input[:game_session_queue_arns], context: "#{context}[:game_session_queue_arns]") unless input[:game_session_queue_arns].nil?
        Hearth::Validator.validate!(input[:request_timeout_seconds], ::Integer, context: "#{context}[:request_timeout_seconds]")
        Hearth::Validator.validate!(input[:acceptance_timeout_seconds], ::Integer, context: "#{context}[:acceptance_timeout_seconds]")
        Hearth::Validator.validate!(input[:acceptance_required], ::TrueClass, ::FalseClass, context: "#{context}[:acceptance_required]")
        Hearth::Validator.validate!(input[:rule_set_name], ::String, context: "#{context}[:rule_set_name]")
        Hearth::Validator.validate!(input[:rule_set_arn], ::String, context: "#{context}[:rule_set_arn]")
        Hearth::Validator.validate!(input[:notification_target], ::String, context: "#{context}[:notification_target]")
        Hearth::Validator.validate!(input[:additional_player_count], ::Integer, context: "#{context}[:additional_player_count]")
        Hearth::Validator.validate!(input[:custom_event_data], ::String, context: "#{context}[:custom_event_data]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        GamePropertyList.validate!(input[:game_properties], context: "#{context}[:game_properties]") unless input[:game_properties].nil?
        Hearth::Validator.validate!(input[:game_session_data], ::String, context: "#{context}[:game_session_data]")
        Hearth::Validator.validate!(input[:backfill_mode], ::String, context: "#{context}[:backfill_mode]")
        Hearth::Validator.validate!(input[:flex_match_mode], ::String, context: "#{context}[:flex_match_mode]")
      end
    end

    class MatchmakingConfigurationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MatchmakingConfiguration.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MatchmakingConfigurationNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MatchmakingIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MatchmakingRuleSet
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MatchmakingRuleSet, context: context)
        Hearth::Validator.validate!(input[:rule_set_name], ::String, context: "#{context}[:rule_set_name]")
        Hearth::Validator.validate!(input[:rule_set_arn], ::String, context: "#{context}[:rule_set_arn]")
        Hearth::Validator.validate!(input[:rule_set_body], ::String, context: "#{context}[:rule_set_body]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
      end
    end

    class MatchmakingRuleSetList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MatchmakingRuleSet.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MatchmakingRuleSetNameList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class MatchmakingTicket
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::MatchmakingTicket, context: context)
        Hearth::Validator.validate!(input[:ticket_id], ::String, context: "#{context}[:ticket_id]")
        Hearth::Validator.validate!(input[:configuration_name], ::String, context: "#{context}[:configuration_name]")
        Hearth::Validator.validate!(input[:configuration_arn], ::String, context: "#{context}[:configuration_arn]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:status_reason], ::String, context: "#{context}[:status_reason]")
        Hearth::Validator.validate!(input[:status_message], ::String, context: "#{context}[:status_message]")
        Hearth::Validator.validate!(input[:start_time], ::Time, context: "#{context}[:start_time]")
        Hearth::Validator.validate!(input[:end_time], ::Time, context: "#{context}[:end_time]")
        PlayerList.validate!(input[:players], context: "#{context}[:players]") unless input[:players].nil?
        GameSessionConnectionInfo.validate!(input[:game_session_connection_info], context: "#{context}[:game_session_connection_info]") unless input[:game_session_connection_info].nil?
        Hearth::Validator.validate!(input[:estimated_wait_time], ::Integer, context: "#{context}[:estimated_wait_time]")
      end
    end

    class MatchmakingTicketList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          MatchmakingTicket.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class MetricGroupList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class NotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::NotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class OutOfCapacityException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::OutOfCapacityException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class PlacedPlayerSession
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlacedPlayerSession, context: context)
        Hearth::Validator.validate!(input[:player_id], ::String, context: "#{context}[:player_id]")
        Hearth::Validator.validate!(input[:player_session_id], ::String, context: "#{context}[:player_session_id]")
      end
    end

    class PlacedPlayerSessionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PlacedPlayerSession.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Player
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Player, context: context)
        Hearth::Validator.validate!(input[:player_id], ::String, context: "#{context}[:player_id]")
        PlayerAttributeMap.validate!(input[:player_attributes], context: "#{context}[:player_attributes]") unless input[:player_attributes].nil?
        Hearth::Validator.validate!(input[:team], ::String, context: "#{context}[:team]")
        LatencyMap.validate!(input[:latency_in_ms], context: "#{context}[:latency_in_ms]") unless input[:latency_in_ms].nil?
      end
    end

    class PlayerAttributeMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          AttributeValue.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class PlayerDataMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class PlayerIdList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PlayerLatency
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlayerLatency, context: context)
        Hearth::Validator.validate!(input[:player_id], ::String, context: "#{context}[:player_id]")
        Hearth::Validator.validate!(input[:region_identifier], ::String, context: "#{context}[:region_identifier]")
        Hearth::Validator.validate!(input[:latency_in_milliseconds], ::Float, context: "#{context}[:latency_in_milliseconds]")
      end
    end

    class PlayerLatencyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PlayerLatency.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlayerLatencyPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlayerLatencyPolicy, context: context)
        Hearth::Validator.validate!(input[:maximum_individual_player_latency_milliseconds], ::Integer, context: "#{context}[:maximum_individual_player_latency_milliseconds]")
        Hearth::Validator.validate!(input[:policy_duration_seconds], ::Integer, context: "#{context}[:policy_duration_seconds]")
      end
    end

    class PlayerLatencyPolicyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PlayerLatencyPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlayerList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Player.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PlayerSession
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PlayerSession, context: context)
        Hearth::Validator.validate!(input[:player_session_id], ::String, context: "#{context}[:player_session_id]")
        Hearth::Validator.validate!(input[:player_id], ::String, context: "#{context}[:player_id]")
        Hearth::Validator.validate!(input[:game_session_id], ::String, context: "#{context}[:game_session_id]")
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:termination_time], ::Time, context: "#{context}[:termination_time]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:ip_address], ::String, context: "#{context}[:ip_address]")
        Hearth::Validator.validate!(input[:dns_name], ::String, context: "#{context}[:dns_name]")
        Hearth::Validator.validate!(input[:port], ::Integer, context: "#{context}[:port]")
        Hearth::Validator.validate!(input[:player_data], ::String, context: "#{context}[:player_data]")
      end
    end

    class PlayerSessionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PlayerSession.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PriorityConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PriorityConfiguration, context: context)
        PriorityTypeList.validate!(input[:priority_order], context: "#{context}[:priority_order]") unless input[:priority_order].nil?
        LocationList.validate!(input[:location_order], context: "#{context}[:location_order]") unless input[:location_order].nil?
      end
    end

    class PriorityTypeList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class PutScalingPolicyInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutScalingPolicyInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:scaling_adjustment], ::Integer, context: "#{context}[:scaling_adjustment]")
        Hearth::Validator.validate!(input[:scaling_adjustment_type], ::String, context: "#{context}[:scaling_adjustment_type]")
        Hearth::Validator.validate!(input[:threshold], ::Float, context: "#{context}[:threshold]")
        Hearth::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
        Hearth::Validator.validate!(input[:evaluation_periods], ::Integer, context: "#{context}[:evaluation_periods]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:policy_type], ::String, context: "#{context}[:policy_type]")
        TargetConfiguration.validate!(input[:target_configuration], context: "#{context}[:target_configuration]") unless input[:target_configuration].nil?
      end
    end

    class PutScalingPolicyOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PutScalingPolicyOutput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
      end
    end

    class QueueArnsList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class RegisterGameServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterGameServerInput, context: context)
        Hearth::Validator.validate!(input[:game_server_group_name], ::String, context: "#{context}[:game_server_group_name]")
        Hearth::Validator.validate!(input[:game_server_id], ::String, context: "#{context}[:game_server_id]")
        Hearth::Validator.validate!(input[:instance_id], ::String, context: "#{context}[:instance_id]")
        Hearth::Validator.validate!(input[:connection_info], ::String, context: "#{context}[:connection_info]")
        Hearth::Validator.validate!(input[:game_server_data], ::String, context: "#{context}[:game_server_data]")
      end
    end

    class RegisterGameServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RegisterGameServerOutput, context: context)
        GameServer.validate!(input[:game_server], context: "#{context}[:game_server]") unless input[:game_server].nil?
      end
    end

    class RequestUploadCredentialsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestUploadCredentialsInput, context: context)
        Hearth::Validator.validate!(input[:build_id], ::String, context: "#{context}[:build_id]")
      end
    end

    class RequestUploadCredentialsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RequestUploadCredentialsOutput, context: context)
        AwsCredentials.validate!(input[:upload_credentials], context: "#{context}[:upload_credentials]") unless input[:upload_credentials].nil?
        S3Location.validate!(input[:storage_location], context: "#{context}[:storage_location]") unless input[:storage_location].nil?
      end
    end

    class ResolveAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolveAliasInput, context: context)
        Hearth::Validator.validate!(input[:alias_id], ::String, context: "#{context}[:alias_id]")
      end
    end

    class ResolveAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResolveAliasOutput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
      end
    end

    class ResourceCreationLimitPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceCreationLimitPolicy, context: context)
        Hearth::Validator.validate!(input[:new_game_sessions_per_creator], ::Integer, context: "#{context}[:new_game_sessions_per_creator]")
        Hearth::Validator.validate!(input[:policy_period_in_minutes], ::Integer, context: "#{context}[:policy_period_in_minutes]")
      end
    end

    class ResumeGameServerGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResumeGameServerGroupInput, context: context)
        Hearth::Validator.validate!(input[:game_server_group_name], ::String, context: "#{context}[:game_server_group_name]")
        GameServerGroupActions.validate!(input[:resume_actions], context: "#{context}[:resume_actions]") unless input[:resume_actions].nil?
      end
    end

    class ResumeGameServerGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResumeGameServerGroupOutput, context: context)
        GameServerGroup.validate!(input[:game_server_group], context: "#{context}[:game_server_group]") unless input[:game_server_group].nil?
      end
    end

    class RoutingStrategy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RoutingStrategy, context: context)
        Hearth::Validator.validate!(input[:type], ::String, context: "#{context}[:type]")
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class RuntimeConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::RuntimeConfiguration, context: context)
        ServerProcessList.validate!(input[:server_processes], context: "#{context}[:server_processes]") unless input[:server_processes].nil?
        Hearth::Validator.validate!(input[:max_concurrent_game_session_activations], ::Integer, context: "#{context}[:max_concurrent_game_session_activations]")
        Hearth::Validator.validate!(input[:game_session_activation_timeout_seconds], ::Integer, context: "#{context}[:game_session_activation_timeout_seconds]")
      end
    end

    class S3Location
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::S3Location, context: context)
        Hearth::Validator.validate!(input[:bucket], ::String, context: "#{context}[:bucket]")
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        Hearth::Validator.validate!(input[:object_version], ::String, context: "#{context}[:object_version]")
      end
    end

    class ScalingPolicy
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ScalingPolicy, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:status], ::String, context: "#{context}[:status]")
        Hearth::Validator.validate!(input[:scaling_adjustment], ::Integer, context: "#{context}[:scaling_adjustment]")
        Hearth::Validator.validate!(input[:scaling_adjustment_type], ::String, context: "#{context}[:scaling_adjustment_type]")
        Hearth::Validator.validate!(input[:comparison_operator], ::String, context: "#{context}[:comparison_operator]")
        Hearth::Validator.validate!(input[:threshold], ::Float, context: "#{context}[:threshold]")
        Hearth::Validator.validate!(input[:evaluation_periods], ::Integer, context: "#{context}[:evaluation_periods]")
        Hearth::Validator.validate!(input[:metric_name], ::String, context: "#{context}[:metric_name]")
        Hearth::Validator.validate!(input[:policy_type], ::String, context: "#{context}[:policy_type]")
        TargetConfiguration.validate!(input[:target_configuration], context: "#{context}[:target_configuration]") unless input[:target_configuration].nil?
        Hearth::Validator.validate!(input[:update_status], ::String, context: "#{context}[:update_status]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class ScalingPolicyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ScalingPolicy.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class Script
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Script, context: context)
        Hearth::Validator.validate!(input[:script_id], ::String, context: "#{context}[:script_id]")
        Hearth::Validator.validate!(input[:script_arn], ::String, context: "#{context}[:script_arn]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        Hearth::Validator.validate!(input[:size_on_disk], ::Integer, context: "#{context}[:size_on_disk]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        S3Location.validate!(input[:storage_location], context: "#{context}[:storage_location]") unless input[:storage_location].nil?
      end
    end

    class ScriptList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Script.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class SearchGameSessionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchGameSessionsInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:alias_id], ::String, context: "#{context}[:alias_id]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
        Hearth::Validator.validate!(input[:filter_expression], ::String, context: "#{context}[:filter_expression]")
        Hearth::Validator.validate!(input[:sort_expression], ::String, context: "#{context}[:sort_expression]")
        Hearth::Validator.validate!(input[:limit], ::Integer, context: "#{context}[:limit]")
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class SearchGameSessionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SearchGameSessionsOutput, context: context)
        GameSessionList.validate!(input[:game_sessions], context: "#{context}[:game_sessions]") unless input[:game_sessions].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class ServerProcess
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ServerProcess, context: context)
        Hearth::Validator.validate!(input[:launch_path], ::String, context: "#{context}[:launch_path]")
        Hearth::Validator.validate!(input[:parameters], ::String, context: "#{context}[:parameters]")
        Hearth::Validator.validate!(input[:concurrent_executions], ::Integer, context: "#{context}[:concurrent_executions]")
      end
    end

    class ServerProcessList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          ServerProcess.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class StartFleetActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFleetActionsInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        FleetActionList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class StartFleetActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartFleetActionsOutput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
      end
    end

    class StartGameSessionPlacementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartGameSessionPlacementInput, context: context)
        Hearth::Validator.validate!(input[:placement_id], ::String, context: "#{context}[:placement_id]")
        Hearth::Validator.validate!(input[:game_session_queue_name], ::String, context: "#{context}[:game_session_queue_name]")
        GamePropertyList.validate!(input[:game_properties], context: "#{context}[:game_properties]") unless input[:game_properties].nil?
        Hearth::Validator.validate!(input[:maximum_player_session_count], ::Integer, context: "#{context}[:maximum_player_session_count]")
        Hearth::Validator.validate!(input[:game_session_name], ::String, context: "#{context}[:game_session_name]")
        PlayerLatencyList.validate!(input[:player_latencies], context: "#{context}[:player_latencies]") unless input[:player_latencies].nil?
        DesiredPlayerSessionList.validate!(input[:desired_player_sessions], context: "#{context}[:desired_player_sessions]") unless input[:desired_player_sessions].nil?
        Hearth::Validator.validate!(input[:game_session_data], ::String, context: "#{context}[:game_session_data]")
      end
    end

    class StartGameSessionPlacementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartGameSessionPlacementOutput, context: context)
        GameSessionPlacement.validate!(input[:game_session_placement], context: "#{context}[:game_session_placement]") unless input[:game_session_placement].nil?
      end
    end

    class StartMatchBackfillInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMatchBackfillInput, context: context)
        Hearth::Validator.validate!(input[:ticket_id], ::String, context: "#{context}[:ticket_id]")
        Hearth::Validator.validate!(input[:configuration_name], ::String, context: "#{context}[:configuration_name]")
        Hearth::Validator.validate!(input[:game_session_arn], ::String, context: "#{context}[:game_session_arn]")
        PlayerList.validate!(input[:players], context: "#{context}[:players]") unless input[:players].nil?
      end
    end

    class StartMatchBackfillOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMatchBackfillOutput, context: context)
        MatchmakingTicket.validate!(input[:matchmaking_ticket], context: "#{context}[:matchmaking_ticket]") unless input[:matchmaking_ticket].nil?
      end
    end

    class StartMatchmakingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMatchmakingInput, context: context)
        Hearth::Validator.validate!(input[:ticket_id], ::String, context: "#{context}[:ticket_id]")
        Hearth::Validator.validate!(input[:configuration_name], ::String, context: "#{context}[:configuration_name]")
        PlayerList.validate!(input[:players], context: "#{context}[:players]") unless input[:players].nil?
      end
    end

    class StartMatchmakingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StartMatchmakingOutput, context: context)
        MatchmakingTicket.validate!(input[:matchmaking_ticket], context: "#{context}[:matchmaking_ticket]") unless input[:matchmaking_ticket].nil?
      end
    end

    class StopFleetActionsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopFleetActionsInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        FleetActionList.validate!(input[:actions], context: "#{context}[:actions]") unless input[:actions].nil?
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class StopFleetActionsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopFleetActionsOutput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
      end
    end

    class StopGameSessionPlacementInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopGameSessionPlacementInput, context: context)
        Hearth::Validator.validate!(input[:placement_id], ::String, context: "#{context}[:placement_id]")
      end
    end

    class StopGameSessionPlacementOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopGameSessionPlacementOutput, context: context)
        GameSessionPlacement.validate!(input[:game_session_placement], context: "#{context}[:game_session_placement]") unless input[:game_session_placement].nil?
      end
    end

    class StopMatchmakingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopMatchmakingInput, context: context)
        Hearth::Validator.validate!(input[:ticket_id], ::String, context: "#{context}[:ticket_id]")
      end
    end

    class StopMatchmakingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::StopMatchmakingOutput, context: context)
      end
    end

    class StringDoubleMap
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::Float, context: "#{context}[:#{key}]")
        end
      end
    end

    class StringList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class SuspendGameServerGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuspendGameServerGroupInput, context: context)
        Hearth::Validator.validate!(input[:game_server_group_name], ::String, context: "#{context}[:game_server_group_name]")
        GameServerGroupActions.validate!(input[:suspend_actions], context: "#{context}[:suspend_actions]") unless input[:suspend_actions].nil?
      end
    end

    class SuspendGameServerGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::SuspendGameServerGroupOutput, context: context)
        GameServerGroup.validate!(input[:game_server_group], context: "#{context}[:game_server_group]") unless input[:game_server_group].nil?
      end
    end

    class Tag
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Tag, context: context)
        Hearth::Validator.validate!(input[:key], ::String, context: "#{context}[:key]")
        Hearth::Validator.validate!(input[:value], ::String, context: "#{context}[:value]")
      end
    end

    class TagKeyList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class TagList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Tag.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class TagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagList.validate!(input[:tags], context: "#{context}[:tags]") unless input[:tags].nil?
      end
    end

    class TagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TagResourceOutput, context: context)
      end
    end

    class TaggingFailedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TaggingFailedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TargetConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetConfiguration, context: context)
        Hearth::Validator.validate!(input[:target_value], ::Float, context: "#{context}[:target_value]")
      end
    end

    class TargetTrackingConfiguration
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TargetTrackingConfiguration, context: context)
        Hearth::Validator.validate!(input[:target_value], ::Float, context: "#{context}[:target_value]")
      end
    end

    class TerminalRoutingStrategyException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::TerminalRoutingStrategyException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnauthorizedException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnauthorizedException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UnsupportedRegionException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UnsupportedRegionException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class UntagResourceInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceInput, context: context)
        Hearth::Validator.validate!(input[:resource_arn], ::String, context: "#{context}[:resource_arn]")
        TagKeyList.validate!(input[:tag_keys], context: "#{context}[:tag_keys]") unless input[:tag_keys].nil?
      end
    end

    class UntagResourceOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UntagResourceOutput, context: context)
      end
    end

    class UpdateAliasInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAliasInput, context: context)
        Hearth::Validator.validate!(input[:alias_id], ::String, context: "#{context}[:alias_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        RoutingStrategy.validate!(input[:routing_strategy], context: "#{context}[:routing_strategy]") unless input[:routing_strategy].nil?
      end
    end

    class UpdateAliasOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateAliasOutput, context: context)
        Alias.validate!(input[:alias], context: "#{context}[:alias]") unless input[:alias].nil?
      end
    end

    class UpdateBuildInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBuildInput, context: context)
        Hearth::Validator.validate!(input[:build_id], ::String, context: "#{context}[:build_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
      end
    end

    class UpdateBuildOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateBuildOutput, context: context)
        Build.validate!(input[:build], context: "#{context}[:build]") unless input[:build].nil?
      end
    end

    class UpdateFleetAttributesInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFleetAttributesInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        Hearth::Validator.validate!(input[:new_game_session_protection_policy], ::String, context: "#{context}[:new_game_session_protection_policy]")
        ResourceCreationLimitPolicy.validate!(input[:resource_creation_limit_policy], context: "#{context}[:resource_creation_limit_policy]") unless input[:resource_creation_limit_policy].nil?
        MetricGroupList.validate!(input[:metric_groups], context: "#{context}[:metric_groups]") unless input[:metric_groups].nil?
      end
    end

    class UpdateFleetAttributesOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFleetAttributesOutput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
      end
    end

    class UpdateFleetCapacityInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFleetCapacityInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:desired_instances], ::Integer, context: "#{context}[:desired_instances]")
        Hearth::Validator.validate!(input[:min_size], ::Integer, context: "#{context}[:min_size]")
        Hearth::Validator.validate!(input[:max_size], ::Integer, context: "#{context}[:max_size]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class UpdateFleetCapacityOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFleetCapacityOutput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:location], ::String, context: "#{context}[:location]")
      end
    end

    class UpdateFleetPortSettingsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFleetPortSettingsInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        IpPermissionsList.validate!(input[:inbound_permission_authorizations], context: "#{context}[:inbound_permission_authorizations]") unless input[:inbound_permission_authorizations].nil?
        IpPermissionsList.validate!(input[:inbound_permission_revocations], context: "#{context}[:inbound_permission_revocations]") unless input[:inbound_permission_revocations].nil?
      end
    end

    class UpdateFleetPortSettingsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateFleetPortSettingsOutput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
      end
    end

    class UpdateGameServerGroupInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGameServerGroupInput, context: context)
        Hearth::Validator.validate!(input[:game_server_group_name], ::String, context: "#{context}[:game_server_group_name]")
        Hearth::Validator.validate!(input[:role_arn], ::String, context: "#{context}[:role_arn]")
        InstanceDefinitions.validate!(input[:instance_definitions], context: "#{context}[:instance_definitions]") unless input[:instance_definitions].nil?
        Hearth::Validator.validate!(input[:game_server_protection_policy], ::String, context: "#{context}[:game_server_protection_policy]")
        Hearth::Validator.validate!(input[:balancing_strategy], ::String, context: "#{context}[:balancing_strategy]")
      end
    end

    class UpdateGameServerGroupOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGameServerGroupOutput, context: context)
        GameServerGroup.validate!(input[:game_server_group], context: "#{context}[:game_server_group]") unless input[:game_server_group].nil?
      end
    end

    class UpdateGameServerInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGameServerInput, context: context)
        Hearth::Validator.validate!(input[:game_server_group_name], ::String, context: "#{context}[:game_server_group_name]")
        Hearth::Validator.validate!(input[:game_server_id], ::String, context: "#{context}[:game_server_id]")
        Hearth::Validator.validate!(input[:game_server_data], ::String, context: "#{context}[:game_server_data]")
        Hearth::Validator.validate!(input[:utilization_status], ::String, context: "#{context}[:utilization_status]")
        Hearth::Validator.validate!(input[:health_check], ::String, context: "#{context}[:health_check]")
      end
    end

    class UpdateGameServerOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGameServerOutput, context: context)
        GameServer.validate!(input[:game_server], context: "#{context}[:game_server]") unless input[:game_server].nil?
      end
    end

    class UpdateGameSessionInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGameSessionInput, context: context)
        Hearth::Validator.validate!(input[:game_session_id], ::String, context: "#{context}[:game_session_id]")
        Hearth::Validator.validate!(input[:maximum_player_session_count], ::Integer, context: "#{context}[:maximum_player_session_count]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:player_session_creation_policy], ::String, context: "#{context}[:player_session_creation_policy]")
        Hearth::Validator.validate!(input[:protection_policy], ::String, context: "#{context}[:protection_policy]")
      end
    end

    class UpdateGameSessionOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGameSessionOutput, context: context)
        GameSession.validate!(input[:game_session], context: "#{context}[:game_session]") unless input[:game_session].nil?
      end
    end

    class UpdateGameSessionQueueInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGameSessionQueueInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:timeout_in_seconds], ::Integer, context: "#{context}[:timeout_in_seconds]")
        PlayerLatencyPolicyList.validate!(input[:player_latency_policies], context: "#{context}[:player_latency_policies]") unless input[:player_latency_policies].nil?
        GameSessionQueueDestinationList.validate!(input[:destinations], context: "#{context}[:destinations]") unless input[:destinations].nil?
        FilterConfiguration.validate!(input[:filter_configuration], context: "#{context}[:filter_configuration]") unless input[:filter_configuration].nil?
        PriorityConfiguration.validate!(input[:priority_configuration], context: "#{context}[:priority_configuration]") unless input[:priority_configuration].nil?
        Hearth::Validator.validate!(input[:custom_event_data], ::String, context: "#{context}[:custom_event_data]")
        Hearth::Validator.validate!(input[:notification_target], ::String, context: "#{context}[:notification_target]")
      end
    end

    class UpdateGameSessionQueueOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateGameSessionQueueOutput, context: context)
        GameSessionQueue.validate!(input[:game_session_queue], context: "#{context}[:game_session_queue]") unless input[:game_session_queue].nil?
      end
    end

    class UpdateMatchmakingConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMatchmakingConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:description], ::String, context: "#{context}[:description]")
        QueueArnsList.validate!(input[:game_session_queue_arns], context: "#{context}[:game_session_queue_arns]") unless input[:game_session_queue_arns].nil?
        Hearth::Validator.validate!(input[:request_timeout_seconds], ::Integer, context: "#{context}[:request_timeout_seconds]")
        Hearth::Validator.validate!(input[:acceptance_timeout_seconds], ::Integer, context: "#{context}[:acceptance_timeout_seconds]")
        Hearth::Validator.validate!(input[:acceptance_required], ::TrueClass, ::FalseClass, context: "#{context}[:acceptance_required]")
        Hearth::Validator.validate!(input[:rule_set_name], ::String, context: "#{context}[:rule_set_name]")
        Hearth::Validator.validate!(input[:notification_target], ::String, context: "#{context}[:notification_target]")
        Hearth::Validator.validate!(input[:additional_player_count], ::Integer, context: "#{context}[:additional_player_count]")
        Hearth::Validator.validate!(input[:custom_event_data], ::String, context: "#{context}[:custom_event_data]")
        GamePropertyList.validate!(input[:game_properties], context: "#{context}[:game_properties]") unless input[:game_properties].nil?
        Hearth::Validator.validate!(input[:game_session_data], ::String, context: "#{context}[:game_session_data]")
        Hearth::Validator.validate!(input[:backfill_mode], ::String, context: "#{context}[:backfill_mode]")
        Hearth::Validator.validate!(input[:flex_match_mode], ::String, context: "#{context}[:flex_match_mode]")
      end
    end

    class UpdateMatchmakingConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateMatchmakingConfigurationOutput, context: context)
        MatchmakingConfiguration.validate!(input[:configuration], context: "#{context}[:configuration]") unless input[:configuration].nil?
      end
    end

    class UpdateRuntimeConfigurationInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRuntimeConfigurationInput, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        RuntimeConfiguration.validate!(input[:runtime_configuration], context: "#{context}[:runtime_configuration]") unless input[:runtime_configuration].nil?
      end
    end

    class UpdateRuntimeConfigurationOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateRuntimeConfigurationOutput, context: context)
        RuntimeConfiguration.validate!(input[:runtime_configuration], context: "#{context}[:runtime_configuration]") unless input[:runtime_configuration].nil?
      end
    end

    class UpdateScriptInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateScriptInput, context: context)
        Hearth::Validator.validate!(input[:script_id], ::String, context: "#{context}[:script_id]")
        Hearth::Validator.validate!(input[:name], ::String, context: "#{context}[:name]")
        Hearth::Validator.validate!(input[:version], ::String, context: "#{context}[:version]")
        S3Location.validate!(input[:storage_location], context: "#{context}[:storage_location]") unless input[:storage_location].nil?
        Hearth::Validator.validate!(input[:zip_file], ::String, context: "#{context}[:zip_file]")
      end
    end

    class UpdateScriptOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::UpdateScriptOutput, context: context)
        Script.validate!(input[:script], context: "#{context}[:script]") unless input[:script].nil?
      end
    end

    class ValidateMatchmakingRuleSetInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidateMatchmakingRuleSetInput, context: context)
        Hearth::Validator.validate!(input[:rule_set_body], ::String, context: "#{context}[:rule_set_body]")
      end
    end

    class ValidateMatchmakingRuleSetOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ValidateMatchmakingRuleSetOutput, context: context)
        Hearth::Validator.validate!(input[:valid], ::TrueClass, ::FalseClass, context: "#{context}[:valid]")
      end
    end

    class VpcPeeringAuthorization
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcPeeringAuthorization, context: context)
        Hearth::Validator.validate!(input[:game_lift_aws_account_id], ::String, context: "#{context}[:game_lift_aws_account_id]")
        Hearth::Validator.validate!(input[:peer_vpc_aws_account_id], ::String, context: "#{context}[:peer_vpc_aws_account_id]")
        Hearth::Validator.validate!(input[:peer_vpc_id], ::String, context: "#{context}[:peer_vpc_id]")
        Hearth::Validator.validate!(input[:creation_time], ::Time, context: "#{context}[:creation_time]")
        Hearth::Validator.validate!(input[:expiration_time], ::Time, context: "#{context}[:expiration_time]")
      end
    end

    class VpcPeeringAuthorizationList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VpcPeeringAuthorization.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VpcPeeringConnection
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcPeeringConnection, context: context)
        Hearth::Validator.validate!(input[:fleet_id], ::String, context: "#{context}[:fleet_id]")
        Hearth::Validator.validate!(input[:fleet_arn], ::String, context: "#{context}[:fleet_arn]")
        Hearth::Validator.validate!(input[:ip_v4_cidr_block], ::String, context: "#{context}[:ip_v4_cidr_block]")
        Hearth::Validator.validate!(input[:vpc_peering_connection_id], ::String, context: "#{context}[:vpc_peering_connection_id]")
        VpcPeeringConnectionStatus.validate!(input[:status], context: "#{context}[:status]") unless input[:status].nil?
        Hearth::Validator.validate!(input[:peer_vpc_id], ::String, context: "#{context}[:peer_vpc_id]")
        Hearth::Validator.validate!(input[:game_lift_vpc_id], ::String, context: "#{context}[:game_lift_vpc_id]")
      end
    end

    class VpcPeeringConnectionList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          VpcPeeringConnection.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class VpcPeeringConnectionStatus
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::VpcPeeringConnectionStatus, context: context)
        Hearth::Validator.validate!(input[:code], ::String, context: "#{context}[:code]")
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class VpcSubnets
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

  end
end
