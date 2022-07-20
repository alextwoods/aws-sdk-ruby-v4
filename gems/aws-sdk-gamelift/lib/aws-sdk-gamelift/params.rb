# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GameLift
  module Params

    module AcceptMatchInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptMatchInput, context: context)
        type = Types::AcceptMatchInput.new
        type.ticket_id = params[:ticket_id]
        type.player_ids = StringList.build(params[:player_ids], context: "#{context}[:player_ids]") unless params[:player_ids].nil?
        type.acceptance_type = params[:acceptance_type]
        type
      end
    end

    module AcceptMatchOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AcceptMatchOutput, context: context)
        type = Types::AcceptMatchOutput.new
        type
      end
    end

    module Alias
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Alias, context: context)
        type = Types::Alias.new
        type.alias_id = params[:alias_id]
        type.name = params[:name]
        type.alias_arn = params[:alias_arn]
        type.description = params[:description]
        type.routing_strategy = RoutingStrategy.build(params[:routing_strategy], context: "#{context}[:routing_strategy]") unless params[:routing_strategy].nil?
        type.creation_time = params[:creation_time]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module AliasList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Alias.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module AttributeValue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AttributeValue, context: context)
        type = Types::AttributeValue.new
        type.s = params[:s]
        type.n = params[:n]
        type.sl = StringList.build(params[:sl], context: "#{context}[:sl]") unless params[:sl].nil?
        type.sdm = StringDoubleMap.build(params[:sdm], context: "#{context}[:sdm]") unless params[:sdm].nil?
        type
      end
    end

    module AwsCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::AwsCredentials, context: context)
        type = Types::AwsCredentials.new
        type.access_key_id = params[:access_key_id]
        type.secret_access_key = params[:secret_access_key]
        type.session_token = params[:session_token]
        type
      end
    end

    module Build
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Build, context: context)
        type = Types::Build.new
        type.build_id = params[:build_id]
        type.build_arn = params[:build_arn]
        type.name = params[:name]
        type.version = params[:version]
        type.status = params[:status]
        type.size_on_disk = params[:size_on_disk]
        type.operating_system = params[:operating_system]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module BuildList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Build.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module CertificateConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CertificateConfiguration, context: context)
        type = Types::CertificateConfiguration.new
        type.certificate_type = params[:certificate_type]
        type
      end
    end

    module ClaimGameServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClaimGameServerInput, context: context)
        type = Types::ClaimGameServerInput.new
        type.game_server_group_name = params[:game_server_group_name]
        type.game_server_id = params[:game_server_id]
        type.game_server_data = params[:game_server_data]
        type
      end
    end

    module ClaimGameServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ClaimGameServerOutput, context: context)
        type = Types::ClaimGameServerOutput.new
        type.game_server = GameServer.build(params[:game_server], context: "#{context}[:game_server]") unless params[:game_server].nil?
        type
      end
    end

    module ConflictException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ConflictException, context: context)
        type = Types::ConflictException.new
        type.message = params[:message]
        type
      end
    end

    module CreateAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAliasInput, context: context)
        type = Types::CreateAliasInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.routing_strategy = RoutingStrategy.build(params[:routing_strategy], context: "#{context}[:routing_strategy]") unless params[:routing_strategy].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateAliasOutput, context: context)
        type = Types::CreateAliasOutput.new
        type.alias = Alias.build(params[:alias], context: "#{context}[:alias]") unless params[:alias].nil?
        type
      end
    end

    module CreateBuildInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBuildInput, context: context)
        type = Types::CreateBuildInput.new
        type.name = params[:name]
        type.version = params[:version]
        type.storage_location = S3Location.build(params[:storage_location], context: "#{context}[:storage_location]") unless params[:storage_location].nil?
        type.operating_system = params[:operating_system]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateBuildOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateBuildOutput, context: context)
        type = Types::CreateBuildOutput.new
        type.build = Build.build(params[:build], context: "#{context}[:build]") unless params[:build].nil?
        type.upload_credentials = AwsCredentials.build(params[:upload_credentials], context: "#{context}[:upload_credentials]") unless params[:upload_credentials].nil?
        type.storage_location = S3Location.build(params[:storage_location], context: "#{context}[:storage_location]") unless params[:storage_location].nil?
        type
      end
    end

    module CreateFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFleetInput, context: context)
        type = Types::CreateFleetInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.build_id = params[:build_id]
        type.script_id = params[:script_id]
        type.server_launch_path = params[:server_launch_path]
        type.server_launch_parameters = params[:server_launch_parameters]
        type.log_paths = StringList.build(params[:log_paths], context: "#{context}[:log_paths]") unless params[:log_paths].nil?
        type.ec2_instance_type = params[:ec2_instance_type]
        type.ec2_inbound_permissions = IpPermissionsList.build(params[:ec2_inbound_permissions], context: "#{context}[:ec2_inbound_permissions]") unless params[:ec2_inbound_permissions].nil?
        type.new_game_session_protection_policy = params[:new_game_session_protection_policy]
        type.runtime_configuration = RuntimeConfiguration.build(params[:runtime_configuration], context: "#{context}[:runtime_configuration]") unless params[:runtime_configuration].nil?
        type.resource_creation_limit_policy = ResourceCreationLimitPolicy.build(params[:resource_creation_limit_policy], context: "#{context}[:resource_creation_limit_policy]") unless params[:resource_creation_limit_policy].nil?
        type.metric_groups = MetricGroupList.build(params[:metric_groups], context: "#{context}[:metric_groups]") unless params[:metric_groups].nil?
        type.peer_vpc_aws_account_id = params[:peer_vpc_aws_account_id]
        type.peer_vpc_id = params[:peer_vpc_id]
        type.fleet_type = params[:fleet_type]
        type.instance_role_arn = params[:instance_role_arn]
        type.certificate_configuration = CertificateConfiguration.build(params[:certificate_configuration], context: "#{context}[:certificate_configuration]") unless params[:certificate_configuration].nil?
        type.locations = LocationConfigurationList.build(params[:locations], context: "#{context}[:locations]") unless params[:locations].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateFleetLocationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFleetLocationsInput, context: context)
        type = Types::CreateFleetLocationsInput.new
        type.fleet_id = params[:fleet_id]
        type.locations = LocationConfigurationList.build(params[:locations], context: "#{context}[:locations]") unless params[:locations].nil?
        type
      end
    end

    module CreateFleetLocationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFleetLocationsOutput, context: context)
        type = Types::CreateFleetLocationsOutput.new
        type.fleet_id = params[:fleet_id]
        type.fleet_arn = params[:fleet_arn]
        type.location_states = LocationStateList.build(params[:location_states], context: "#{context}[:location_states]") unless params[:location_states].nil?
        type
      end
    end

    module CreateFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateFleetOutput, context: context)
        type = Types::CreateFleetOutput.new
        type.fleet_attributes = FleetAttributes.build(params[:fleet_attributes], context: "#{context}[:fleet_attributes]") unless params[:fleet_attributes].nil?
        type.location_states = LocationStateList.build(params[:location_states], context: "#{context}[:location_states]") unless params[:location_states].nil?
        type
      end
    end

    module CreateGameServerGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGameServerGroupInput, context: context)
        type = Types::CreateGameServerGroupInput.new
        type.game_server_group_name = params[:game_server_group_name]
        type.role_arn = params[:role_arn]
        type.min_size = params[:min_size]
        type.max_size = params[:max_size]
        type.launch_template = LaunchTemplateSpecification.build(params[:launch_template], context: "#{context}[:launch_template]") unless params[:launch_template].nil?
        type.instance_definitions = InstanceDefinitions.build(params[:instance_definitions], context: "#{context}[:instance_definitions]") unless params[:instance_definitions].nil?
        type.auto_scaling_policy = GameServerGroupAutoScalingPolicy.build(params[:auto_scaling_policy], context: "#{context}[:auto_scaling_policy]") unless params[:auto_scaling_policy].nil?
        type.balancing_strategy = params[:balancing_strategy]
        type.game_server_protection_policy = params[:game_server_protection_policy]
        type.vpc_subnets = VpcSubnets.build(params[:vpc_subnets], context: "#{context}[:vpc_subnets]") unless params[:vpc_subnets].nil?
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateGameServerGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGameServerGroupOutput, context: context)
        type = Types::CreateGameServerGroupOutput.new
        type.game_server_group = GameServerGroup.build(params[:game_server_group], context: "#{context}[:game_server_group]") unless params[:game_server_group].nil?
        type
      end
    end

    module CreateGameSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGameSessionInput, context: context)
        type = Types::CreateGameSessionInput.new
        type.fleet_id = params[:fleet_id]
        type.alias_id = params[:alias_id]
        type.maximum_player_session_count = params[:maximum_player_session_count]
        type.name = params[:name]
        type.game_properties = GamePropertyList.build(params[:game_properties], context: "#{context}[:game_properties]") unless params[:game_properties].nil?
        type.creator_id = params[:creator_id]
        type.game_session_id = params[:game_session_id]
        type.idempotency_token = params[:idempotency_token]
        type.game_session_data = params[:game_session_data]
        type.location = params[:location]
        type
      end
    end

    module CreateGameSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGameSessionOutput, context: context)
        type = Types::CreateGameSessionOutput.new
        type.game_session = GameSession.build(params[:game_session], context: "#{context}[:game_session]") unless params[:game_session].nil?
        type
      end
    end

    module CreateGameSessionQueueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGameSessionQueueInput, context: context)
        type = Types::CreateGameSessionQueueInput.new
        type.name = params[:name]
        type.timeout_in_seconds = params[:timeout_in_seconds]
        type.player_latency_policies = PlayerLatencyPolicyList.build(params[:player_latency_policies], context: "#{context}[:player_latency_policies]") unless params[:player_latency_policies].nil?
        type.destinations = GameSessionQueueDestinationList.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.filter_configuration = FilterConfiguration.build(params[:filter_configuration], context: "#{context}[:filter_configuration]") unless params[:filter_configuration].nil?
        type.priority_configuration = PriorityConfiguration.build(params[:priority_configuration], context: "#{context}[:priority_configuration]") unless params[:priority_configuration].nil?
        type.custom_event_data = params[:custom_event_data]
        type.notification_target = params[:notification_target]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateGameSessionQueueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateGameSessionQueueOutput, context: context)
        type = Types::CreateGameSessionQueueOutput.new
        type.game_session_queue = GameSessionQueue.build(params[:game_session_queue], context: "#{context}[:game_session_queue]") unless params[:game_session_queue].nil?
        type
      end
    end

    module CreateMatchmakingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMatchmakingConfigurationInput, context: context)
        type = Types::CreateMatchmakingConfigurationInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.game_session_queue_arns = QueueArnsList.build(params[:game_session_queue_arns], context: "#{context}[:game_session_queue_arns]") unless params[:game_session_queue_arns].nil?
        type.request_timeout_seconds = params[:request_timeout_seconds]
        type.acceptance_timeout_seconds = params[:acceptance_timeout_seconds]
        type.acceptance_required = params[:acceptance_required]
        type.rule_set_name = params[:rule_set_name]
        type.notification_target = params[:notification_target]
        type.additional_player_count = params[:additional_player_count]
        type.custom_event_data = params[:custom_event_data]
        type.game_properties = GamePropertyList.build(params[:game_properties], context: "#{context}[:game_properties]") unless params[:game_properties].nil?
        type.game_session_data = params[:game_session_data]
        type.backfill_mode = params[:backfill_mode]
        type.flex_match_mode = params[:flex_match_mode]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateMatchmakingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMatchmakingConfigurationOutput, context: context)
        type = Types::CreateMatchmakingConfigurationOutput.new
        type.configuration = MatchmakingConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module CreateMatchmakingRuleSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMatchmakingRuleSetInput, context: context)
        type = Types::CreateMatchmakingRuleSetInput.new
        type.name = params[:name]
        type.rule_set_body = params[:rule_set_body]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateMatchmakingRuleSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateMatchmakingRuleSetOutput, context: context)
        type = Types::CreateMatchmakingRuleSetOutput.new
        type.rule_set = MatchmakingRuleSet.build(params[:rule_set], context: "#{context}[:rule_set]") unless params[:rule_set].nil?
        type
      end
    end

    module CreatePlayerSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePlayerSessionInput, context: context)
        type = Types::CreatePlayerSessionInput.new
        type.game_session_id = params[:game_session_id]
        type.player_id = params[:player_id]
        type.player_data = params[:player_data]
        type
      end
    end

    module CreatePlayerSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePlayerSessionOutput, context: context)
        type = Types::CreatePlayerSessionOutput.new
        type.player_session = PlayerSession.build(params[:player_session], context: "#{context}[:player_session]") unless params[:player_session].nil?
        type
      end
    end

    module CreatePlayerSessionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePlayerSessionsInput, context: context)
        type = Types::CreatePlayerSessionsInput.new
        type.game_session_id = params[:game_session_id]
        type.player_ids = PlayerIdList.build(params[:player_ids], context: "#{context}[:player_ids]") unless params[:player_ids].nil?
        type.player_data_map = PlayerDataMap.build(params[:player_data_map], context: "#{context}[:player_data_map]") unless params[:player_data_map].nil?
        type
      end
    end

    module CreatePlayerSessionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreatePlayerSessionsOutput, context: context)
        type = Types::CreatePlayerSessionsOutput.new
        type.player_sessions = PlayerSessionList.build(params[:player_sessions], context: "#{context}[:player_sessions]") unless params[:player_sessions].nil?
        type
      end
    end

    module CreateScriptInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateScriptInput, context: context)
        type = Types::CreateScriptInput.new
        type.name = params[:name]
        type.version = params[:version]
        type.storage_location = S3Location.build(params[:storage_location], context: "#{context}[:storage_location]") unless params[:storage_location].nil?
        type.zip_file = params[:zip_file]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module CreateScriptOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateScriptOutput, context: context)
        type = Types::CreateScriptOutput.new
        type.script = Script.build(params[:script], context: "#{context}[:script]") unless params[:script].nil?
        type
      end
    end

    module CreateVpcPeeringAuthorizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpcPeeringAuthorizationInput, context: context)
        type = Types::CreateVpcPeeringAuthorizationInput.new
        type.game_lift_aws_account_id = params[:game_lift_aws_account_id]
        type.peer_vpc_id = params[:peer_vpc_id]
        type
      end
    end

    module CreateVpcPeeringAuthorizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpcPeeringAuthorizationOutput, context: context)
        type = Types::CreateVpcPeeringAuthorizationOutput.new
        type.vpc_peering_authorization = VpcPeeringAuthorization.build(params[:vpc_peering_authorization], context: "#{context}[:vpc_peering_authorization]") unless params[:vpc_peering_authorization].nil?
        type
      end
    end

    module CreateVpcPeeringConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpcPeeringConnectionInput, context: context)
        type = Types::CreateVpcPeeringConnectionInput.new
        type.fleet_id = params[:fleet_id]
        type.peer_vpc_aws_account_id = params[:peer_vpc_aws_account_id]
        type.peer_vpc_id = params[:peer_vpc_id]
        type
      end
    end

    module CreateVpcPeeringConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::CreateVpcPeeringConnectionOutput, context: context)
        type = Types::CreateVpcPeeringConnectionOutput.new
        type
      end
    end

    module DeleteAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAliasInput, context: context)
        type = Types::DeleteAliasInput.new
        type.alias_id = params[:alias_id]
        type
      end
    end

    module DeleteAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteAliasOutput, context: context)
        type = Types::DeleteAliasOutput.new
        type
      end
    end

    module DeleteBuildInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBuildInput, context: context)
        type = Types::DeleteBuildInput.new
        type.build_id = params[:build_id]
        type
      end
    end

    module DeleteBuildOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteBuildOutput, context: context)
        type = Types::DeleteBuildOutput.new
        type
      end
    end

    module DeleteFleetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFleetInput, context: context)
        type = Types::DeleteFleetInput.new
        type.fleet_id = params[:fleet_id]
        type
      end
    end

    module DeleteFleetLocationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFleetLocationsInput, context: context)
        type = Types::DeleteFleetLocationsInput.new
        type.fleet_id = params[:fleet_id]
        type.locations = LocationList.build(params[:locations], context: "#{context}[:locations]") unless params[:locations].nil?
        type
      end
    end

    module DeleteFleetLocationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFleetLocationsOutput, context: context)
        type = Types::DeleteFleetLocationsOutput.new
        type.fleet_id = params[:fleet_id]
        type.fleet_arn = params[:fleet_arn]
        type.location_states = LocationStateList.build(params[:location_states], context: "#{context}[:location_states]") unless params[:location_states].nil?
        type
      end
    end

    module DeleteFleetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteFleetOutput, context: context)
        type = Types::DeleteFleetOutput.new
        type
      end
    end

    module DeleteGameServerGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGameServerGroupInput, context: context)
        type = Types::DeleteGameServerGroupInput.new
        type.game_server_group_name = params[:game_server_group_name]
        type.delete_option = params[:delete_option]
        type
      end
    end

    module DeleteGameServerGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGameServerGroupOutput, context: context)
        type = Types::DeleteGameServerGroupOutput.new
        type.game_server_group = GameServerGroup.build(params[:game_server_group], context: "#{context}[:game_server_group]") unless params[:game_server_group].nil?
        type
      end
    end

    module DeleteGameSessionQueueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGameSessionQueueInput, context: context)
        type = Types::DeleteGameSessionQueueInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteGameSessionQueueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteGameSessionQueueOutput, context: context)
        type = Types::DeleteGameSessionQueueOutput.new
        type
      end
    end

    module DeleteMatchmakingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMatchmakingConfigurationInput, context: context)
        type = Types::DeleteMatchmakingConfigurationInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteMatchmakingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMatchmakingConfigurationOutput, context: context)
        type = Types::DeleteMatchmakingConfigurationOutput.new
        type
      end
    end

    module DeleteMatchmakingRuleSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMatchmakingRuleSetInput, context: context)
        type = Types::DeleteMatchmakingRuleSetInput.new
        type.name = params[:name]
        type
      end
    end

    module DeleteMatchmakingRuleSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteMatchmakingRuleSetOutput, context: context)
        type = Types::DeleteMatchmakingRuleSetOutput.new
        type
      end
    end

    module DeleteScalingPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScalingPolicyInput, context: context)
        type = Types::DeleteScalingPolicyInput.new
        type.name = params[:name]
        type.fleet_id = params[:fleet_id]
        type
      end
    end

    module DeleteScalingPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScalingPolicyOutput, context: context)
        type = Types::DeleteScalingPolicyOutput.new
        type
      end
    end

    module DeleteScriptInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScriptInput, context: context)
        type = Types::DeleteScriptInput.new
        type.script_id = params[:script_id]
        type
      end
    end

    module DeleteScriptOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteScriptOutput, context: context)
        type = Types::DeleteScriptOutput.new
        type
      end
    end

    module DeleteVpcPeeringAuthorizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVpcPeeringAuthorizationInput, context: context)
        type = Types::DeleteVpcPeeringAuthorizationInput.new
        type.game_lift_aws_account_id = params[:game_lift_aws_account_id]
        type.peer_vpc_id = params[:peer_vpc_id]
        type
      end
    end

    module DeleteVpcPeeringAuthorizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVpcPeeringAuthorizationOutput, context: context)
        type = Types::DeleteVpcPeeringAuthorizationOutput.new
        type
      end
    end

    module DeleteVpcPeeringConnectionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVpcPeeringConnectionInput, context: context)
        type = Types::DeleteVpcPeeringConnectionInput.new
        type.fleet_id = params[:fleet_id]
        type.vpc_peering_connection_id = params[:vpc_peering_connection_id]
        type
      end
    end

    module DeleteVpcPeeringConnectionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeleteVpcPeeringConnectionOutput, context: context)
        type = Types::DeleteVpcPeeringConnectionOutput.new
        type
      end
    end

    module DeregisterGameServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterGameServerInput, context: context)
        type = Types::DeregisterGameServerInput.new
        type.game_server_group_name = params[:game_server_group_name]
        type.game_server_id = params[:game_server_id]
        type
      end
    end

    module DeregisterGameServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DeregisterGameServerOutput, context: context)
        type = Types::DeregisterGameServerOutput.new
        type
      end
    end

    module DescribeAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAliasInput, context: context)
        type = Types::DescribeAliasInput.new
        type.alias_id = params[:alias_id]
        type
      end
    end

    module DescribeAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeAliasOutput, context: context)
        type = Types::DescribeAliasOutput.new
        type.alias = Alias.build(params[:alias], context: "#{context}[:alias]") unless params[:alias].nil?
        type
      end
    end

    module DescribeBuildInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBuildInput, context: context)
        type = Types::DescribeBuildInput.new
        type.build_id = params[:build_id]
        type
      end
    end

    module DescribeBuildOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeBuildOutput, context: context)
        type = Types::DescribeBuildOutput.new
        type.build = Build.build(params[:build], context: "#{context}[:build]") unless params[:build].nil?
        type
      end
    end

    module DescribeEC2InstanceLimitsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEC2InstanceLimitsInput, context: context)
        type = Types::DescribeEC2InstanceLimitsInput.new
        type.ec2_instance_type = params[:ec2_instance_type]
        type.location = params[:location]
        type
      end
    end

    module DescribeEC2InstanceLimitsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeEC2InstanceLimitsOutput, context: context)
        type = Types::DescribeEC2InstanceLimitsOutput.new
        type.ec2_instance_limits = EC2InstanceLimitList.build(params[:ec2_instance_limits], context: "#{context}[:ec2_instance_limits]") unless params[:ec2_instance_limits].nil?
        type
      end
    end

    module DescribeFleetAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetAttributesInput, context: context)
        type = Types::DescribeFleetAttributesInput.new
        type.fleet_ids = FleetIdOrArnList.build(params[:fleet_ids], context: "#{context}[:fleet_ids]") unless params[:fleet_ids].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetAttributesOutput, context: context)
        type = Types::DescribeFleetAttributesOutput.new
        type.fleet_attributes = FleetAttributesList.build(params[:fleet_attributes], context: "#{context}[:fleet_attributes]") unless params[:fleet_attributes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetCapacityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetCapacityInput, context: context)
        type = Types::DescribeFleetCapacityInput.new
        type.fleet_ids = FleetIdOrArnList.build(params[:fleet_ids], context: "#{context}[:fleet_ids]") unless params[:fleet_ids].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetCapacityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetCapacityOutput, context: context)
        type = Types::DescribeFleetCapacityOutput.new
        type.fleet_capacity = FleetCapacityList.build(params[:fleet_capacity], context: "#{context}[:fleet_capacity]") unless params[:fleet_capacity].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetEventsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetEventsInput, context: context)
        type = Types::DescribeFleetEventsInput.new
        type.fleet_id = params[:fleet_id]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetEventsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetEventsOutput, context: context)
        type = Types::DescribeFleetEventsOutput.new
        type.events = EventList.build(params[:events], context: "#{context}[:events]") unless params[:events].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetLocationAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetLocationAttributesInput, context: context)
        type = Types::DescribeFleetLocationAttributesInput.new
        type.fleet_id = params[:fleet_id]
        type.locations = LocationList.build(params[:locations], context: "#{context}[:locations]") unless params[:locations].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetLocationAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetLocationAttributesOutput, context: context)
        type = Types::DescribeFleetLocationAttributesOutput.new
        type.fleet_id = params[:fleet_id]
        type.fleet_arn = params[:fleet_arn]
        type.location_attributes = LocationAttributesList.build(params[:location_attributes], context: "#{context}[:location_attributes]") unless params[:location_attributes].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetLocationCapacityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetLocationCapacityInput, context: context)
        type = Types::DescribeFleetLocationCapacityInput.new
        type.fleet_id = params[:fleet_id]
        type.location = params[:location]
        type
      end
    end

    module DescribeFleetLocationCapacityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetLocationCapacityOutput, context: context)
        type = Types::DescribeFleetLocationCapacityOutput.new
        type.fleet_capacity = FleetCapacity.build(params[:fleet_capacity], context: "#{context}[:fleet_capacity]") unless params[:fleet_capacity].nil?
        type
      end
    end

    module DescribeFleetLocationUtilizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetLocationUtilizationInput, context: context)
        type = Types::DescribeFleetLocationUtilizationInput.new
        type.fleet_id = params[:fleet_id]
        type.location = params[:location]
        type
      end
    end

    module DescribeFleetLocationUtilizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetLocationUtilizationOutput, context: context)
        type = Types::DescribeFleetLocationUtilizationOutput.new
        type.fleet_utilization = FleetUtilization.build(params[:fleet_utilization], context: "#{context}[:fleet_utilization]") unless params[:fleet_utilization].nil?
        type
      end
    end

    module DescribeFleetPortSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetPortSettingsInput, context: context)
        type = Types::DescribeFleetPortSettingsInput.new
        type.fleet_id = params[:fleet_id]
        type.location = params[:location]
        type
      end
    end

    module DescribeFleetPortSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetPortSettingsOutput, context: context)
        type = Types::DescribeFleetPortSettingsOutput.new
        type.fleet_id = params[:fleet_id]
        type.fleet_arn = params[:fleet_arn]
        type.inbound_permissions = IpPermissionsList.build(params[:inbound_permissions], context: "#{context}[:inbound_permissions]") unless params[:inbound_permissions].nil?
        type.update_status = params[:update_status]
        type.location = params[:location]
        type
      end
    end

    module DescribeFleetUtilizationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetUtilizationInput, context: context)
        type = Types::DescribeFleetUtilizationInput.new
        type.fleet_ids = FleetIdOrArnList.build(params[:fleet_ids], context: "#{context}[:fleet_ids]") unless params[:fleet_ids].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeFleetUtilizationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeFleetUtilizationOutput, context: context)
        type = Types::DescribeFleetUtilizationOutput.new
        type.fleet_utilization = FleetUtilizationList.build(params[:fleet_utilization], context: "#{context}[:fleet_utilization]") unless params[:fleet_utilization].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeGameServerGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGameServerGroupInput, context: context)
        type = Types::DescribeGameServerGroupInput.new
        type.game_server_group_name = params[:game_server_group_name]
        type
      end
    end

    module DescribeGameServerGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGameServerGroupOutput, context: context)
        type = Types::DescribeGameServerGroupOutput.new
        type.game_server_group = GameServerGroup.build(params[:game_server_group], context: "#{context}[:game_server_group]") unless params[:game_server_group].nil?
        type
      end
    end

    module DescribeGameServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGameServerInput, context: context)
        type = Types::DescribeGameServerInput.new
        type.game_server_group_name = params[:game_server_group_name]
        type.game_server_id = params[:game_server_id]
        type
      end
    end

    module DescribeGameServerInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGameServerInstancesInput, context: context)
        type = Types::DescribeGameServerInstancesInput.new
        type.game_server_group_name = params[:game_server_group_name]
        type.instance_ids = GameServerInstanceIds.build(params[:instance_ids], context: "#{context}[:instance_ids]") unless params[:instance_ids].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeGameServerInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGameServerInstancesOutput, context: context)
        type = Types::DescribeGameServerInstancesOutput.new
        type.game_server_instances = GameServerInstances.build(params[:game_server_instances], context: "#{context}[:game_server_instances]") unless params[:game_server_instances].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeGameServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGameServerOutput, context: context)
        type = Types::DescribeGameServerOutput.new
        type.game_server = GameServer.build(params[:game_server], context: "#{context}[:game_server]") unless params[:game_server].nil?
        type
      end
    end

    module DescribeGameSessionDetailsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGameSessionDetailsInput, context: context)
        type = Types::DescribeGameSessionDetailsInput.new
        type.fleet_id = params[:fleet_id]
        type.game_session_id = params[:game_session_id]
        type.alias_id = params[:alias_id]
        type.location = params[:location]
        type.status_filter = params[:status_filter]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeGameSessionDetailsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGameSessionDetailsOutput, context: context)
        type = Types::DescribeGameSessionDetailsOutput.new
        type.game_session_details = GameSessionDetailList.build(params[:game_session_details], context: "#{context}[:game_session_details]") unless params[:game_session_details].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeGameSessionPlacementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGameSessionPlacementInput, context: context)
        type = Types::DescribeGameSessionPlacementInput.new
        type.placement_id = params[:placement_id]
        type
      end
    end

    module DescribeGameSessionPlacementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGameSessionPlacementOutput, context: context)
        type = Types::DescribeGameSessionPlacementOutput.new
        type.game_session_placement = GameSessionPlacement.build(params[:game_session_placement], context: "#{context}[:game_session_placement]") unless params[:game_session_placement].nil?
        type
      end
    end

    module DescribeGameSessionQueuesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGameSessionQueuesInput, context: context)
        type = Types::DescribeGameSessionQueuesInput.new
        type.names = GameSessionQueueNameOrArnList.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeGameSessionQueuesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGameSessionQueuesOutput, context: context)
        type = Types::DescribeGameSessionQueuesOutput.new
        type.game_session_queues = GameSessionQueueList.build(params[:game_session_queues], context: "#{context}[:game_session_queues]") unless params[:game_session_queues].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeGameSessionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGameSessionsInput, context: context)
        type = Types::DescribeGameSessionsInput.new
        type.fleet_id = params[:fleet_id]
        type.game_session_id = params[:game_session_id]
        type.alias_id = params[:alias_id]
        type.location = params[:location]
        type.status_filter = params[:status_filter]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeGameSessionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeGameSessionsOutput, context: context)
        type = Types::DescribeGameSessionsOutput.new
        type.game_sessions = GameSessionList.build(params[:game_sessions], context: "#{context}[:game_sessions]") unless params[:game_sessions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeInstancesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstancesInput, context: context)
        type = Types::DescribeInstancesInput.new
        type.fleet_id = params[:fleet_id]
        type.instance_id = params[:instance_id]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type.location = params[:location]
        type
      end
    end

    module DescribeInstancesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeInstancesOutput, context: context)
        type = Types::DescribeInstancesOutput.new
        type.instances = InstanceList.build(params[:instances], context: "#{context}[:instances]") unless params[:instances].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMatchmakingConfigurationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMatchmakingConfigurationsInput, context: context)
        type = Types::DescribeMatchmakingConfigurationsInput.new
        type.names = MatchmakingConfigurationNameList.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.rule_set_name = params[:rule_set_name]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMatchmakingConfigurationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMatchmakingConfigurationsOutput, context: context)
        type = Types::DescribeMatchmakingConfigurationsOutput.new
        type.configurations = MatchmakingConfigurationList.build(params[:configurations], context: "#{context}[:configurations]") unless params[:configurations].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMatchmakingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMatchmakingInput, context: context)
        type = Types::DescribeMatchmakingInput.new
        type.ticket_ids = MatchmakingIdList.build(params[:ticket_ids], context: "#{context}[:ticket_ids]") unless params[:ticket_ids].nil?
        type
      end
    end

    module DescribeMatchmakingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMatchmakingOutput, context: context)
        type = Types::DescribeMatchmakingOutput.new
        type.ticket_list = MatchmakingTicketList.build(params[:ticket_list], context: "#{context}[:ticket_list]") unless params[:ticket_list].nil?
        type
      end
    end

    module DescribeMatchmakingRuleSetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMatchmakingRuleSetsInput, context: context)
        type = Types::DescribeMatchmakingRuleSetsInput.new
        type.names = MatchmakingRuleSetNameList.build(params[:names], context: "#{context}[:names]") unless params[:names].nil?
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeMatchmakingRuleSetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeMatchmakingRuleSetsOutput, context: context)
        type = Types::DescribeMatchmakingRuleSetsOutput.new
        type.rule_sets = MatchmakingRuleSetList.build(params[:rule_sets], context: "#{context}[:rule_sets]") unless params[:rule_sets].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribePlayerSessionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePlayerSessionsInput, context: context)
        type = Types::DescribePlayerSessionsInput.new
        type.game_session_id = params[:game_session_id]
        type.player_id = params[:player_id]
        type.player_session_id = params[:player_session_id]
        type.player_session_status_filter = params[:player_session_status_filter]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribePlayerSessionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribePlayerSessionsOutput, context: context)
        type = Types::DescribePlayerSessionsOutput.new
        type.player_sessions = PlayerSessionList.build(params[:player_sessions], context: "#{context}[:player_sessions]") unless params[:player_sessions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeRuntimeConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRuntimeConfigurationInput, context: context)
        type = Types::DescribeRuntimeConfigurationInput.new
        type.fleet_id = params[:fleet_id]
        type
      end
    end

    module DescribeRuntimeConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeRuntimeConfigurationOutput, context: context)
        type = Types::DescribeRuntimeConfigurationOutput.new
        type.runtime_configuration = RuntimeConfiguration.build(params[:runtime_configuration], context: "#{context}[:runtime_configuration]") unless params[:runtime_configuration].nil?
        type
      end
    end

    module DescribeScalingPoliciesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScalingPoliciesInput, context: context)
        type = Types::DescribeScalingPoliciesInput.new
        type.fleet_id = params[:fleet_id]
        type.status_filter = params[:status_filter]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type.location = params[:location]
        type
      end
    end

    module DescribeScalingPoliciesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScalingPoliciesOutput, context: context)
        type = Types::DescribeScalingPoliciesOutput.new
        type.scaling_policies = ScalingPolicyList.build(params[:scaling_policies], context: "#{context}[:scaling_policies]") unless params[:scaling_policies].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module DescribeScriptInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScriptInput, context: context)
        type = Types::DescribeScriptInput.new
        type.script_id = params[:script_id]
        type
      end
    end

    module DescribeScriptOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeScriptOutput, context: context)
        type = Types::DescribeScriptOutput.new
        type.script = Script.build(params[:script], context: "#{context}[:script]") unless params[:script].nil?
        type
      end
    end

    module DescribeVpcPeeringAuthorizationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVpcPeeringAuthorizationsInput, context: context)
        type = Types::DescribeVpcPeeringAuthorizationsInput.new
        type
      end
    end

    module DescribeVpcPeeringAuthorizationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVpcPeeringAuthorizationsOutput, context: context)
        type = Types::DescribeVpcPeeringAuthorizationsOutput.new
        type.vpc_peering_authorizations = VpcPeeringAuthorizationList.build(params[:vpc_peering_authorizations], context: "#{context}[:vpc_peering_authorizations]") unless params[:vpc_peering_authorizations].nil?
        type
      end
    end

    module DescribeVpcPeeringConnectionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVpcPeeringConnectionsInput, context: context)
        type = Types::DescribeVpcPeeringConnectionsInput.new
        type.fleet_id = params[:fleet_id]
        type
      end
    end

    module DescribeVpcPeeringConnectionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DescribeVpcPeeringConnectionsOutput, context: context)
        type = Types::DescribeVpcPeeringConnectionsOutput.new
        type.vpc_peering_connections = VpcPeeringConnectionList.build(params[:vpc_peering_connections], context: "#{context}[:vpc_peering_connections]") unless params[:vpc_peering_connections].nil?
        type
      end
    end

    module DesiredPlayerSession
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DesiredPlayerSession, context: context)
        type = Types::DesiredPlayerSession.new
        type.player_id = params[:player_id]
        type.player_data = params[:player_data]
        type
      end
    end

    module DesiredPlayerSessionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DesiredPlayerSession.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module EC2InstanceCounts
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2InstanceCounts, context: context)
        type = Types::EC2InstanceCounts.new
        type.desired = params[:desired]
        type.minimum = params[:minimum]
        type.maximum = params[:maximum]
        type.pending = params[:pending]
        type.active = params[:active]
        type.idle = params[:idle]
        type.terminating = params[:terminating]
        type
      end
    end

    module EC2InstanceLimit
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::EC2InstanceLimit, context: context)
        type = Types::EC2InstanceLimit.new
        type.ec2_instance_type = params[:ec2_instance_type]
        type.current_instances = params[:current_instances]
        type.instance_limit = params[:instance_limit]
        type.location = params[:location]
        type
      end
    end

    module EC2InstanceLimitList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << EC2InstanceLimit.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Event
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Event, context: context)
        type = Types::Event.new
        type.event_id = params[:event_id]
        type.resource_id = params[:resource_id]
        type.event_code = params[:event_code]
        type.message = params[:message]
        type.event_time = params[:event_time]
        type.pre_signed_log_url = params[:pre_signed_log_url]
        type
      end
    end

    module EventList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Event.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FilterConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FilterConfiguration, context: context)
        type = Types::FilterConfiguration.new
        type.allowed_locations = LocationList.build(params[:allowed_locations], context: "#{context}[:allowed_locations]") unless params[:allowed_locations].nil?
        type
      end
    end

    module FleetActionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FleetAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FleetAttributes, context: context)
        type = Types::FleetAttributes.new
        type.fleet_id = params[:fleet_id]
        type.fleet_arn = params[:fleet_arn]
        type.fleet_type = params[:fleet_type]
        type.instance_type = params[:instance_type]
        type.description = params[:description]
        type.name = params[:name]
        type.creation_time = params[:creation_time]
        type.termination_time = params[:termination_time]
        type.status = params[:status]
        type.build_id = params[:build_id]
        type.build_arn = params[:build_arn]
        type.script_id = params[:script_id]
        type.script_arn = params[:script_arn]
        type.server_launch_path = params[:server_launch_path]
        type.server_launch_parameters = params[:server_launch_parameters]
        type.log_paths = StringList.build(params[:log_paths], context: "#{context}[:log_paths]") unless params[:log_paths].nil?
        type.new_game_session_protection_policy = params[:new_game_session_protection_policy]
        type.operating_system = params[:operating_system]
        type.resource_creation_limit_policy = ResourceCreationLimitPolicy.build(params[:resource_creation_limit_policy], context: "#{context}[:resource_creation_limit_policy]") unless params[:resource_creation_limit_policy].nil?
        type.metric_groups = MetricGroupList.build(params[:metric_groups], context: "#{context}[:metric_groups]") unless params[:metric_groups].nil?
        type.stopped_actions = FleetActionList.build(params[:stopped_actions], context: "#{context}[:stopped_actions]") unless params[:stopped_actions].nil?
        type.instance_role_arn = params[:instance_role_arn]
        type.certificate_configuration = CertificateConfiguration.build(params[:certificate_configuration], context: "#{context}[:certificate_configuration]") unless params[:certificate_configuration].nil?
        type
      end
    end

    module FleetAttributesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FleetAttributes.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FleetCapacity
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FleetCapacity, context: context)
        type = Types::FleetCapacity.new
        type.fleet_id = params[:fleet_id]
        type.fleet_arn = params[:fleet_arn]
        type.instance_type = params[:instance_type]
        type.instance_counts = EC2InstanceCounts.build(params[:instance_counts], context: "#{context}[:instance_counts]") unless params[:instance_counts].nil?
        type.location = params[:location]
        type
      end
    end

    module FleetCapacityExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FleetCapacityExceededException, context: context)
        type = Types::FleetCapacityExceededException.new
        type.message = params[:message]
        type
      end
    end

    module FleetCapacityList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FleetCapacity.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module FleetIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FleetIdOrArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module FleetUtilization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::FleetUtilization, context: context)
        type = Types::FleetUtilization.new
        type.fleet_id = params[:fleet_id]
        type.fleet_arn = params[:fleet_arn]
        type.active_server_process_count = params[:active_server_process_count]
        type.active_game_session_count = params[:active_game_session_count]
        type.current_player_session_count = params[:current_player_session_count]
        type.maximum_player_session_count = params[:maximum_player_session_count]
        type.location = params[:location]
        type
      end
    end

    module FleetUtilizationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << FleetUtilization.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GameProperty
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GameProperty, context: context)
        type = Types::GameProperty.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module GamePropertyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GameProperty.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GameServer
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GameServer, context: context)
        type = Types::GameServer.new
        type.game_server_group_name = params[:game_server_group_name]
        type.game_server_group_arn = params[:game_server_group_arn]
        type.game_server_id = params[:game_server_id]
        type.instance_id = params[:instance_id]
        type.connection_info = params[:connection_info]
        type.game_server_data = params[:game_server_data]
        type.claim_status = params[:claim_status]
        type.utilization_status = params[:utilization_status]
        type.registration_time = params[:registration_time]
        type.last_claim_time = params[:last_claim_time]
        type.last_health_check_time = params[:last_health_check_time]
        type
      end
    end

    module GameServerGroup
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GameServerGroup, context: context)
        type = Types::GameServerGroup.new
        type.game_server_group_name = params[:game_server_group_name]
        type.game_server_group_arn = params[:game_server_group_arn]
        type.role_arn = params[:role_arn]
        type.instance_definitions = InstanceDefinitions.build(params[:instance_definitions], context: "#{context}[:instance_definitions]") unless params[:instance_definitions].nil?
        type.balancing_strategy = params[:balancing_strategy]
        type.game_server_protection_policy = params[:game_server_protection_policy]
        type.auto_scaling_group_arn = params[:auto_scaling_group_arn]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.suspended_actions = GameServerGroupActions.build(params[:suspended_actions], context: "#{context}[:suspended_actions]") unless params[:suspended_actions].nil?
        type.creation_time = params[:creation_time]
        type.last_updated_time = params[:last_updated_time]
        type
      end
    end

    module GameServerGroupActions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GameServerGroupAutoScalingPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GameServerGroupAutoScalingPolicy, context: context)
        type = Types::GameServerGroupAutoScalingPolicy.new
        type.estimated_instance_warmup = params[:estimated_instance_warmup]
        type.target_tracking_configuration = TargetTrackingConfiguration.build(params[:target_tracking_configuration], context: "#{context}[:target_tracking_configuration]") unless params[:target_tracking_configuration].nil?
        type
      end
    end

    module GameServerGroups
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GameServerGroup.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GameServerInstance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GameServerInstance, context: context)
        type = Types::GameServerInstance.new
        type.game_server_group_name = params[:game_server_group_name]
        type.game_server_group_arn = params[:game_server_group_arn]
        type.instance_id = params[:instance_id]
        type.instance_status = params[:instance_status]
        type
      end
    end

    module GameServerInstanceIds
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GameServerInstances
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GameServerInstance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GameServers
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GameServer.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GameSession
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GameSession, context: context)
        type = Types::GameSession.new
        type.game_session_id = params[:game_session_id]
        type.name = params[:name]
        type.fleet_id = params[:fleet_id]
        type.fleet_arn = params[:fleet_arn]
        type.creation_time = params[:creation_time]
        type.termination_time = params[:termination_time]
        type.current_player_session_count = params[:current_player_session_count]
        type.maximum_player_session_count = params[:maximum_player_session_count]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.game_properties = GamePropertyList.build(params[:game_properties], context: "#{context}[:game_properties]") unless params[:game_properties].nil?
        type.ip_address = params[:ip_address]
        type.dns_name = params[:dns_name]
        type.port = params[:port]
        type.player_session_creation_policy = params[:player_session_creation_policy]
        type.creator_id = params[:creator_id]
        type.game_session_data = params[:game_session_data]
        type.matchmaker_data = params[:matchmaker_data]
        type.location = params[:location]
        type
      end
    end

    module GameSessionConnectionInfo
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GameSessionConnectionInfo, context: context)
        type = Types::GameSessionConnectionInfo.new
        type.game_session_arn = params[:game_session_arn]
        type.ip_address = params[:ip_address]
        type.dns_name = params[:dns_name]
        type.port = params[:port]
        type.matched_player_sessions = MatchedPlayerSessionList.build(params[:matched_player_sessions], context: "#{context}[:matched_player_sessions]") unless params[:matched_player_sessions].nil?
        type
      end
    end

    module GameSessionDetail
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GameSessionDetail, context: context)
        type = Types::GameSessionDetail.new
        type.game_session = GameSession.build(params[:game_session], context: "#{context}[:game_session]") unless params[:game_session].nil?
        type.protection_policy = params[:protection_policy]
        type
      end
    end

    module GameSessionDetailList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GameSessionDetail.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GameSessionFullException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GameSessionFullException, context: context)
        type = Types::GameSessionFullException.new
        type.message = params[:message]
        type
      end
    end

    module GameSessionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GameSession.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GameSessionPlacement
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GameSessionPlacement, context: context)
        type = Types::GameSessionPlacement.new
        type.placement_id = params[:placement_id]
        type.game_session_queue_name = params[:game_session_queue_name]
        type.status = params[:status]
        type.game_properties = GamePropertyList.build(params[:game_properties], context: "#{context}[:game_properties]") unless params[:game_properties].nil?
        type.maximum_player_session_count = params[:maximum_player_session_count]
        type.game_session_name = params[:game_session_name]
        type.game_session_id = params[:game_session_id]
        type.game_session_arn = params[:game_session_arn]
        type.game_session_region = params[:game_session_region]
        type.player_latencies = PlayerLatencyList.build(params[:player_latencies], context: "#{context}[:player_latencies]") unless params[:player_latencies].nil?
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.ip_address = params[:ip_address]
        type.dns_name = params[:dns_name]
        type.port = params[:port]
        type.placed_player_sessions = PlacedPlayerSessionList.build(params[:placed_player_sessions], context: "#{context}[:placed_player_sessions]") unless params[:placed_player_sessions].nil?
        type.game_session_data = params[:game_session_data]
        type.matchmaker_data = params[:matchmaker_data]
        type
      end
    end

    module GameSessionQueue
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GameSessionQueue, context: context)
        type = Types::GameSessionQueue.new
        type.name = params[:name]
        type.game_session_queue_arn = params[:game_session_queue_arn]
        type.timeout_in_seconds = params[:timeout_in_seconds]
        type.player_latency_policies = PlayerLatencyPolicyList.build(params[:player_latency_policies], context: "#{context}[:player_latency_policies]") unless params[:player_latency_policies].nil?
        type.destinations = GameSessionQueueDestinationList.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.filter_configuration = FilterConfiguration.build(params[:filter_configuration], context: "#{context}[:filter_configuration]") unless params[:filter_configuration].nil?
        type.priority_configuration = PriorityConfiguration.build(params[:priority_configuration], context: "#{context}[:priority_configuration]") unless params[:priority_configuration].nil?
        type.custom_event_data = params[:custom_event_data]
        type.notification_target = params[:notification_target]
        type
      end
    end

    module GameSessionQueueDestination
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GameSessionQueueDestination, context: context)
        type = Types::GameSessionQueueDestination.new
        type.destination_arn = params[:destination_arn]
        type
      end
    end

    module GameSessionQueueDestinationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GameSessionQueueDestination.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GameSessionQueueList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << GameSessionQueue.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module GameSessionQueueNameOrArnList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module GetGameSessionLogUrlInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGameSessionLogUrlInput, context: context)
        type = Types::GetGameSessionLogUrlInput.new
        type.game_session_id = params[:game_session_id]
        type
      end
    end

    module GetGameSessionLogUrlOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetGameSessionLogUrlOutput, context: context)
        type = Types::GetGameSessionLogUrlOutput.new
        type.pre_signed_url = params[:pre_signed_url]
        type
      end
    end

    module GetInstanceAccessInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceAccessInput, context: context)
        type = Types::GetInstanceAccessInput.new
        type.fleet_id = params[:fleet_id]
        type.instance_id = params[:instance_id]
        type
      end
    end

    module GetInstanceAccessOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetInstanceAccessOutput, context: context)
        type = Types::GetInstanceAccessOutput.new
        type.instance_access = InstanceAccess.build(params[:instance_access], context: "#{context}[:instance_access]") unless params[:instance_access].nil?
        type
      end
    end

    module IdempotentParameterMismatchException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IdempotentParameterMismatchException, context: context)
        type = Types::IdempotentParameterMismatchException.new
        type.message = params[:message]
        type
      end
    end

    module Instance
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Instance, context: context)
        type = Types::Instance.new
        type.fleet_id = params[:fleet_id]
        type.fleet_arn = params[:fleet_arn]
        type.instance_id = params[:instance_id]
        type.ip_address = params[:ip_address]
        type.dns_name = params[:dns_name]
        type.operating_system = params[:operating_system]
        type.type = params[:type]
        type.status = params[:status]
        type.creation_time = params[:creation_time]
        type.location = params[:location]
        type
      end
    end

    module InstanceAccess
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceAccess, context: context)
        type = Types::InstanceAccess.new
        type.fleet_id = params[:fleet_id]
        type.instance_id = params[:instance_id]
        type.ip_address = params[:ip_address]
        type.operating_system = params[:operating_system]
        type.credentials = InstanceCredentials.build(params[:credentials], context: "#{context}[:credentials]") unless params[:credentials].nil?
        type
      end
    end

    module InstanceCredentials
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceCredentials, context: context)
        type = Types::InstanceCredentials.new
        type.user_name = params[:user_name]
        type.secret = params[:secret]
        type
      end
    end

    module InstanceDefinition
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InstanceDefinition, context: context)
        type = Types::InstanceDefinition.new
        type.instance_type = params[:instance_type]
        type.weighted_capacity = params[:weighted_capacity]
        type
      end
    end

    module InstanceDefinitions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << InstanceDefinition.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InstanceList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Instance.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module InternalServiceException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InternalServiceException, context: context)
        type = Types::InternalServiceException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidFleetStatusException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidFleetStatusException, context: context)
        type = Types::InvalidFleetStatusException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidGameSessionStatusException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidGameSessionStatusException, context: context)
        type = Types::InvalidGameSessionStatusException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidRequestException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidRequestException, context: context)
        type = Types::InvalidRequestException.new
        type.message = params[:message]
        type
      end
    end

    module IpPermission
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::IpPermission, context: context)
        type = Types::IpPermission.new
        type.from_port = params[:from_port]
        type.to_port = params[:to_port]
        type.ip_range = params[:ip_range]
        type.protocol = params[:protocol]
        type
      end
    end

    module IpPermissionsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << IpPermission.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LatencyMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module LaunchTemplateSpecification
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LaunchTemplateSpecification, context: context)
        type = Types::LaunchTemplateSpecification.new
        type.launch_template_id = params[:launch_template_id]
        type.launch_template_name = params[:launch_template_name]
        type.version = params[:version]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module ListAliasesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAliasesInput, context: context)
        type = Types::ListAliasesInput.new
        type.routing_strategy_type = params[:routing_strategy_type]
        type.name = params[:name]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListAliasesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListAliasesOutput, context: context)
        type = Types::ListAliasesOutput.new
        type.aliases = AliasList.build(params[:aliases], context: "#{context}[:aliases]") unless params[:aliases].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBuildsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBuildsInput, context: context)
        type = Types::ListBuildsInput.new
        type.status = params[:status]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListBuildsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListBuildsOutput, context: context)
        type = Types::ListBuildsOutput.new
        type.builds = BuildList.build(params[:builds], context: "#{context}[:builds]") unless params[:builds].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFleetsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFleetsInput, context: context)
        type = Types::ListFleetsInput.new
        type.build_id = params[:build_id]
        type.script_id = params[:script_id]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListFleetsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListFleetsOutput, context: context)
        type = Types::ListFleetsOutput.new
        type.fleet_ids = FleetIdList.build(params[:fleet_ids], context: "#{context}[:fleet_ids]") unless params[:fleet_ids].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGameServerGroupsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGameServerGroupsInput, context: context)
        type = Types::ListGameServerGroupsInput.new
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGameServerGroupsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGameServerGroupsOutput, context: context)
        type = Types::ListGameServerGroupsOutput.new
        type.game_server_groups = GameServerGroups.build(params[:game_server_groups], context: "#{context}[:game_server_groups]") unless params[:game_server_groups].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGameServersInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGameServersInput, context: context)
        type = Types::ListGameServersInput.new
        type.game_server_group_name = params[:game_server_group_name]
        type.sort_order = params[:sort_order]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListGameServersOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListGameServersOutput, context: context)
        type = Types::ListGameServersOutput.new
        type.game_servers = GameServers.build(params[:game_servers], context: "#{context}[:game_servers]") unless params[:game_servers].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListScriptsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListScriptsInput, context: context)
        type = Types::ListScriptsInput.new
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module ListScriptsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListScriptsOutput, context: context)
        type = Types::ListScriptsOutput.new
        type.scripts = ScriptList.build(params[:scripts], context: "#{context}[:scripts]") unless params[:scripts].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ListTagsForResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceInput, context: context)
        type = Types::ListTagsForResourceInput.new
        type.resource_arn = params[:resource_arn]
        type
      end
    end

    module ListTagsForResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ListTagsForResourceOutput, context: context)
        type = Types::ListTagsForResourceOutput.new
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module LocationAttributes
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LocationAttributes, context: context)
        type = Types::LocationAttributes.new
        type.location_state = LocationState.build(params[:location_state], context: "#{context}[:location_state]") unless params[:location_state].nil?
        type.stopped_actions = FleetActionList.build(params[:stopped_actions], context: "#{context}[:stopped_actions]") unless params[:stopped_actions].nil?
        type.update_status = params[:update_status]
        type
      end
    end

    module LocationAttributesList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LocationAttributes.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LocationConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LocationConfiguration, context: context)
        type = Types::LocationConfiguration.new
        type.location = params[:location]
        type
      end
    end

    module LocationConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LocationConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module LocationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module LocationState
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LocationState, context: context)
        type = Types::LocationState.new
        type.location = params[:location]
        type.status = params[:status]
        type
      end
    end

    module LocationStateList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << LocationState.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MatchedPlayerSession
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MatchedPlayerSession, context: context)
        type = Types::MatchedPlayerSession.new
        type.player_id = params[:player_id]
        type.player_session_id = params[:player_session_id]
        type
      end
    end

    module MatchedPlayerSessionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MatchedPlayerSession.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MatchmakingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MatchmakingConfiguration, context: context)
        type = Types::MatchmakingConfiguration.new
        type.name = params[:name]
        type.configuration_arn = params[:configuration_arn]
        type.description = params[:description]
        type.game_session_queue_arns = QueueArnsList.build(params[:game_session_queue_arns], context: "#{context}[:game_session_queue_arns]") unless params[:game_session_queue_arns].nil?
        type.request_timeout_seconds = params[:request_timeout_seconds]
        type.acceptance_timeout_seconds = params[:acceptance_timeout_seconds]
        type.acceptance_required = params[:acceptance_required]
        type.rule_set_name = params[:rule_set_name]
        type.rule_set_arn = params[:rule_set_arn]
        type.notification_target = params[:notification_target]
        type.additional_player_count = params[:additional_player_count]
        type.custom_event_data = params[:custom_event_data]
        type.creation_time = params[:creation_time]
        type.game_properties = GamePropertyList.build(params[:game_properties], context: "#{context}[:game_properties]") unless params[:game_properties].nil?
        type.game_session_data = params[:game_session_data]
        type.backfill_mode = params[:backfill_mode]
        type.flex_match_mode = params[:flex_match_mode]
        type
      end
    end

    module MatchmakingConfigurationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MatchmakingConfiguration.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MatchmakingConfigurationNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MatchmakingIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MatchmakingRuleSet
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MatchmakingRuleSet, context: context)
        type = Types::MatchmakingRuleSet.new
        type.rule_set_name = params[:rule_set_name]
        type.rule_set_arn = params[:rule_set_arn]
        type.rule_set_body = params[:rule_set_body]
        type.creation_time = params[:creation_time]
        type
      end
    end

    module MatchmakingRuleSetList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MatchmakingRuleSet.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MatchmakingRuleSetNameList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module MatchmakingTicket
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::MatchmakingTicket, context: context)
        type = Types::MatchmakingTicket.new
        type.ticket_id = params[:ticket_id]
        type.configuration_name = params[:configuration_name]
        type.configuration_arn = params[:configuration_arn]
        type.status = params[:status]
        type.status_reason = params[:status_reason]
        type.status_message = params[:status_message]
        type.start_time = params[:start_time]
        type.end_time = params[:end_time]
        type.players = PlayerList.build(params[:players], context: "#{context}[:players]") unless params[:players].nil?
        type.game_session_connection_info = GameSessionConnectionInfo.build(params[:game_session_connection_info], context: "#{context}[:game_session_connection_info]") unless params[:game_session_connection_info].nil?
        type.estimated_wait_time = params[:estimated_wait_time]
        type
      end
    end

    module MatchmakingTicketList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << MatchmakingTicket.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module MetricGroupList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module NotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::NotFoundException, context: context)
        type = Types::NotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module OutOfCapacityException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::OutOfCapacityException, context: context)
        type = Types::OutOfCapacityException.new
        type.message = params[:message]
        type
      end
    end

    module PlacedPlayerSession
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlacedPlayerSession, context: context)
        type = Types::PlacedPlayerSession.new
        type.player_id = params[:player_id]
        type.player_session_id = params[:player_session_id]
        type
      end
    end

    module PlacedPlayerSessionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PlacedPlayerSession.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Player
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Player, context: context)
        type = Types::Player.new
        type.player_id = params[:player_id]
        type.player_attributes = PlayerAttributeMap.build(params[:player_attributes], context: "#{context}[:player_attributes]") unless params[:player_attributes].nil?
        type.team = params[:team]
        type.latency_in_ms = LatencyMap.build(params[:latency_in_ms], context: "#{context}[:latency_in_ms]") unless params[:latency_in_ms].nil?
        type
      end
    end

    module PlayerAttributeMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = AttributeValue.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module PlayerDataMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module PlayerIdList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PlayerLatency
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlayerLatency, context: context)
        type = Types::PlayerLatency.new
        type.player_id = params[:player_id]
        type.region_identifier = params[:region_identifier]
        type.latency_in_milliseconds = params[:latency_in_milliseconds]
        type
      end
    end

    module PlayerLatencyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PlayerLatency.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlayerLatencyPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlayerLatencyPolicy, context: context)
        type = Types::PlayerLatencyPolicy.new
        type.maximum_individual_player_latency_milliseconds = params[:maximum_individual_player_latency_milliseconds]
        type.policy_duration_seconds = params[:policy_duration_seconds]
        type
      end
    end

    module PlayerLatencyPolicyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PlayerLatencyPolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlayerList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Player.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PlayerSession
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PlayerSession, context: context)
        type = Types::PlayerSession.new
        type.player_session_id = params[:player_session_id]
        type.player_id = params[:player_id]
        type.game_session_id = params[:game_session_id]
        type.fleet_id = params[:fleet_id]
        type.fleet_arn = params[:fleet_arn]
        type.creation_time = params[:creation_time]
        type.termination_time = params[:termination_time]
        type.status = params[:status]
        type.ip_address = params[:ip_address]
        type.dns_name = params[:dns_name]
        type.port = params[:port]
        type.player_data = params[:player_data]
        type
      end
    end

    module PlayerSessionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PlayerSession.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PriorityConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PriorityConfiguration, context: context)
        type = Types::PriorityConfiguration.new
        type.priority_order = PriorityTypeList.build(params[:priority_order], context: "#{context}[:priority_order]") unless params[:priority_order].nil?
        type.location_order = LocationList.build(params[:location_order], context: "#{context}[:location_order]") unless params[:location_order].nil?
        type
      end
    end

    module PriorityTypeList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module PutScalingPolicyInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutScalingPolicyInput, context: context)
        type = Types::PutScalingPolicyInput.new
        type.name = params[:name]
        type.fleet_id = params[:fleet_id]
        type.scaling_adjustment = params[:scaling_adjustment]
        type.scaling_adjustment_type = params[:scaling_adjustment_type]
        type.threshold = params[:threshold]
        type.comparison_operator = params[:comparison_operator]
        type.evaluation_periods = params[:evaluation_periods]
        type.metric_name = params[:metric_name]
        type.policy_type = params[:policy_type]
        type.target_configuration = TargetConfiguration.build(params[:target_configuration], context: "#{context}[:target_configuration]") unless params[:target_configuration].nil?
        type
      end
    end

    module PutScalingPolicyOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PutScalingPolicyOutput, context: context)
        type = Types::PutScalingPolicyOutput.new
        type.name = params[:name]
        type
      end
    end

    module QueueArnsList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module RegisterGameServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterGameServerInput, context: context)
        type = Types::RegisterGameServerInput.new
        type.game_server_group_name = params[:game_server_group_name]
        type.game_server_id = params[:game_server_id]
        type.instance_id = params[:instance_id]
        type.connection_info = params[:connection_info]
        type.game_server_data = params[:game_server_data]
        type
      end
    end

    module RegisterGameServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RegisterGameServerOutput, context: context)
        type = Types::RegisterGameServerOutput.new
        type.game_server = GameServer.build(params[:game_server], context: "#{context}[:game_server]") unless params[:game_server].nil?
        type
      end
    end

    module RequestUploadCredentialsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestUploadCredentialsInput, context: context)
        type = Types::RequestUploadCredentialsInput.new
        type.build_id = params[:build_id]
        type
      end
    end

    module RequestUploadCredentialsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RequestUploadCredentialsOutput, context: context)
        type = Types::RequestUploadCredentialsOutput.new
        type.upload_credentials = AwsCredentials.build(params[:upload_credentials], context: "#{context}[:upload_credentials]") unless params[:upload_credentials].nil?
        type.storage_location = S3Location.build(params[:storage_location], context: "#{context}[:storage_location]") unless params[:storage_location].nil?
        type
      end
    end

    module ResolveAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolveAliasInput, context: context)
        type = Types::ResolveAliasInput.new
        type.alias_id = params[:alias_id]
        type
      end
    end

    module ResolveAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResolveAliasOutput, context: context)
        type = Types::ResolveAliasOutput.new
        type.fleet_id = params[:fleet_id]
        type.fleet_arn = params[:fleet_arn]
        type
      end
    end

    module ResourceCreationLimitPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceCreationLimitPolicy, context: context)
        type = Types::ResourceCreationLimitPolicy.new
        type.new_game_sessions_per_creator = params[:new_game_sessions_per_creator]
        type.policy_period_in_minutes = params[:policy_period_in_minutes]
        type
      end
    end

    module ResumeGameServerGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResumeGameServerGroupInput, context: context)
        type = Types::ResumeGameServerGroupInput.new
        type.game_server_group_name = params[:game_server_group_name]
        type.resume_actions = GameServerGroupActions.build(params[:resume_actions], context: "#{context}[:resume_actions]") unless params[:resume_actions].nil?
        type
      end
    end

    module ResumeGameServerGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResumeGameServerGroupOutput, context: context)
        type = Types::ResumeGameServerGroupOutput.new
        type.game_server_group = GameServerGroup.build(params[:game_server_group], context: "#{context}[:game_server_group]") unless params[:game_server_group].nil?
        type
      end
    end

    module RoutingStrategy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RoutingStrategy, context: context)
        type = Types::RoutingStrategy.new
        type.type = params[:type]
        type.fleet_id = params[:fleet_id]
        type.message = params[:message]
        type
      end
    end

    module RuntimeConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::RuntimeConfiguration, context: context)
        type = Types::RuntimeConfiguration.new
        type.server_processes = ServerProcessList.build(params[:server_processes], context: "#{context}[:server_processes]") unless params[:server_processes].nil?
        type.max_concurrent_game_session_activations = params[:max_concurrent_game_session_activations]
        type.game_session_activation_timeout_seconds = params[:game_session_activation_timeout_seconds]
        type
      end
    end

    module S3Location
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::S3Location, context: context)
        type = Types::S3Location.new
        type.bucket = params[:bucket]
        type.key = params[:key]
        type.role_arn = params[:role_arn]
        type.object_version = params[:object_version]
        type
      end
    end

    module ScalingPolicy
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ScalingPolicy, context: context)
        type = Types::ScalingPolicy.new
        type.fleet_id = params[:fleet_id]
        type.fleet_arn = params[:fleet_arn]
        type.name = params[:name]
        type.status = params[:status]
        type.scaling_adjustment = params[:scaling_adjustment]
        type.scaling_adjustment_type = params[:scaling_adjustment_type]
        type.comparison_operator = params[:comparison_operator]
        type.threshold = params[:threshold]
        type.evaluation_periods = params[:evaluation_periods]
        type.metric_name = params[:metric_name]
        type.policy_type = params[:policy_type]
        type.target_configuration = TargetConfiguration.build(params[:target_configuration], context: "#{context}[:target_configuration]") unless params[:target_configuration].nil?
        type.update_status = params[:update_status]
        type.location = params[:location]
        type
      end
    end

    module ScalingPolicyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ScalingPolicy.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module Script
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Script, context: context)
        type = Types::Script.new
        type.script_id = params[:script_id]
        type.script_arn = params[:script_arn]
        type.name = params[:name]
        type.version = params[:version]
        type.size_on_disk = params[:size_on_disk]
        type.creation_time = params[:creation_time]
        type.storage_location = S3Location.build(params[:storage_location], context: "#{context}[:storage_location]") unless params[:storage_location].nil?
        type
      end
    end

    module ScriptList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Script.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module SearchGameSessionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchGameSessionsInput, context: context)
        type = Types::SearchGameSessionsInput.new
        type.fleet_id = params[:fleet_id]
        type.alias_id = params[:alias_id]
        type.location = params[:location]
        type.filter_expression = params[:filter_expression]
        type.sort_expression = params[:sort_expression]
        type.limit = params[:limit]
        type.next_token = params[:next_token]
        type
      end
    end

    module SearchGameSessionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SearchGameSessionsOutput, context: context)
        type = Types::SearchGameSessionsOutput.new
        type.game_sessions = GameSessionList.build(params[:game_sessions], context: "#{context}[:game_sessions]") unless params[:game_sessions].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module ServerProcess
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ServerProcess, context: context)
        type = Types::ServerProcess.new
        type.launch_path = params[:launch_path]
        type.parameters = params[:parameters]
        type.concurrent_executions = params[:concurrent_executions]
        type
      end
    end

    module ServerProcessList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << ServerProcess.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module StartFleetActionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFleetActionsInput, context: context)
        type = Types::StartFleetActionsInput.new
        type.fleet_id = params[:fleet_id]
        type.actions = FleetActionList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.location = params[:location]
        type
      end
    end

    module StartFleetActionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartFleetActionsOutput, context: context)
        type = Types::StartFleetActionsOutput.new
        type.fleet_id = params[:fleet_id]
        type.fleet_arn = params[:fleet_arn]
        type
      end
    end

    module StartGameSessionPlacementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartGameSessionPlacementInput, context: context)
        type = Types::StartGameSessionPlacementInput.new
        type.placement_id = params[:placement_id]
        type.game_session_queue_name = params[:game_session_queue_name]
        type.game_properties = GamePropertyList.build(params[:game_properties], context: "#{context}[:game_properties]") unless params[:game_properties].nil?
        type.maximum_player_session_count = params[:maximum_player_session_count]
        type.game_session_name = params[:game_session_name]
        type.player_latencies = PlayerLatencyList.build(params[:player_latencies], context: "#{context}[:player_latencies]") unless params[:player_latencies].nil?
        type.desired_player_sessions = DesiredPlayerSessionList.build(params[:desired_player_sessions], context: "#{context}[:desired_player_sessions]") unless params[:desired_player_sessions].nil?
        type.game_session_data = params[:game_session_data]
        type
      end
    end

    module StartGameSessionPlacementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartGameSessionPlacementOutput, context: context)
        type = Types::StartGameSessionPlacementOutput.new
        type.game_session_placement = GameSessionPlacement.build(params[:game_session_placement], context: "#{context}[:game_session_placement]") unless params[:game_session_placement].nil?
        type
      end
    end

    module StartMatchBackfillInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMatchBackfillInput, context: context)
        type = Types::StartMatchBackfillInput.new
        type.ticket_id = params[:ticket_id]
        type.configuration_name = params[:configuration_name]
        type.game_session_arn = params[:game_session_arn]
        type.players = PlayerList.build(params[:players], context: "#{context}[:players]") unless params[:players].nil?
        type
      end
    end

    module StartMatchBackfillOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMatchBackfillOutput, context: context)
        type = Types::StartMatchBackfillOutput.new
        type.matchmaking_ticket = MatchmakingTicket.build(params[:matchmaking_ticket], context: "#{context}[:matchmaking_ticket]") unless params[:matchmaking_ticket].nil?
        type
      end
    end

    module StartMatchmakingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMatchmakingInput, context: context)
        type = Types::StartMatchmakingInput.new
        type.ticket_id = params[:ticket_id]
        type.configuration_name = params[:configuration_name]
        type.players = PlayerList.build(params[:players], context: "#{context}[:players]") unless params[:players].nil?
        type
      end
    end

    module StartMatchmakingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StartMatchmakingOutput, context: context)
        type = Types::StartMatchmakingOutput.new
        type.matchmaking_ticket = MatchmakingTicket.build(params[:matchmaking_ticket], context: "#{context}[:matchmaking_ticket]") unless params[:matchmaking_ticket].nil?
        type
      end
    end

    module StopFleetActionsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopFleetActionsInput, context: context)
        type = Types::StopFleetActionsInput.new
        type.fleet_id = params[:fleet_id]
        type.actions = FleetActionList.build(params[:actions], context: "#{context}[:actions]") unless params[:actions].nil?
        type.location = params[:location]
        type
      end
    end

    module StopFleetActionsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopFleetActionsOutput, context: context)
        type = Types::StopFleetActionsOutput.new
        type.fleet_id = params[:fleet_id]
        type.fleet_arn = params[:fleet_arn]
        type
      end
    end

    module StopGameSessionPlacementInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopGameSessionPlacementInput, context: context)
        type = Types::StopGameSessionPlacementInput.new
        type.placement_id = params[:placement_id]
        type
      end
    end

    module StopGameSessionPlacementOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopGameSessionPlacementOutput, context: context)
        type = Types::StopGameSessionPlacementOutput.new
        type.game_session_placement = GameSessionPlacement.build(params[:game_session_placement], context: "#{context}[:game_session_placement]") unless params[:game_session_placement].nil?
        type
      end
    end

    module StopMatchmakingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopMatchmakingInput, context: context)
        type = Types::StopMatchmakingInput.new
        type.ticket_id = params[:ticket_id]
        type
      end
    end

    module StopMatchmakingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::StopMatchmakingOutput, context: context)
        type = Types::StopMatchmakingOutput.new
        type
      end
    end

    module StringDoubleMap
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module StringList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module SuspendGameServerGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuspendGameServerGroupInput, context: context)
        type = Types::SuspendGameServerGroupInput.new
        type.game_server_group_name = params[:game_server_group_name]
        type.suspend_actions = GameServerGroupActions.build(params[:suspend_actions], context: "#{context}[:suspend_actions]") unless params[:suspend_actions].nil?
        type
      end
    end

    module SuspendGameServerGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::SuspendGameServerGroupOutput, context: context)
        type = Types::SuspendGameServerGroupOutput.new
        type.game_server_group = GameServerGroup.build(params[:game_server_group], context: "#{context}[:game_server_group]") unless params[:game_server_group].nil?
        type
      end
    end

    module Tag
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Tag, context: context)
        type = Types::Tag.new
        type.key = params[:key]
        type.value = params[:value]
        type
      end
    end

    module TagKeyList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

    module TagList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << Tag.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module TagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceInput, context: context)
        type = Types::TagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tags = TagList.build(params[:tags], context: "#{context}[:tags]") unless params[:tags].nil?
        type
      end
    end

    module TagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TagResourceOutput, context: context)
        type = Types::TagResourceOutput.new
        type
      end
    end

    module TaggingFailedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TaggingFailedException, context: context)
        type = Types::TaggingFailedException.new
        type.message = params[:message]
        type
      end
    end

    module TargetConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetConfiguration, context: context)
        type = Types::TargetConfiguration.new
        type.target_value = params[:target_value]
        type
      end
    end

    module TargetTrackingConfiguration
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TargetTrackingConfiguration, context: context)
        type = Types::TargetTrackingConfiguration.new
        type.target_value = params[:target_value]
        type
      end
    end

    module TerminalRoutingStrategyException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::TerminalRoutingStrategyException, context: context)
        type = Types::TerminalRoutingStrategyException.new
        type.message = params[:message]
        type
      end
    end

    module UnauthorizedException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnauthorizedException, context: context)
        type = Types::UnauthorizedException.new
        type.message = params[:message]
        type
      end
    end

    module UnsupportedRegionException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UnsupportedRegionException, context: context)
        type = Types::UnsupportedRegionException.new
        type.message = params[:message]
        type
      end
    end

    module UntagResourceInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceInput, context: context)
        type = Types::UntagResourceInput.new
        type.resource_arn = params[:resource_arn]
        type.tag_keys = TagKeyList.build(params[:tag_keys], context: "#{context}[:tag_keys]") unless params[:tag_keys].nil?
        type
      end
    end

    module UntagResourceOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UntagResourceOutput, context: context)
        type = Types::UntagResourceOutput.new
        type
      end
    end

    module UpdateAliasInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAliasInput, context: context)
        type = Types::UpdateAliasInput.new
        type.alias_id = params[:alias_id]
        type.name = params[:name]
        type.description = params[:description]
        type.routing_strategy = RoutingStrategy.build(params[:routing_strategy], context: "#{context}[:routing_strategy]") unless params[:routing_strategy].nil?
        type
      end
    end

    module UpdateAliasOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateAliasOutput, context: context)
        type = Types::UpdateAliasOutput.new
        type.alias = Alias.build(params[:alias], context: "#{context}[:alias]") unless params[:alias].nil?
        type
      end
    end

    module UpdateBuildInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBuildInput, context: context)
        type = Types::UpdateBuildInput.new
        type.build_id = params[:build_id]
        type.name = params[:name]
        type.version = params[:version]
        type
      end
    end

    module UpdateBuildOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateBuildOutput, context: context)
        type = Types::UpdateBuildOutput.new
        type.build = Build.build(params[:build], context: "#{context}[:build]") unless params[:build].nil?
        type
      end
    end

    module UpdateFleetAttributesInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFleetAttributesInput, context: context)
        type = Types::UpdateFleetAttributesInput.new
        type.fleet_id = params[:fleet_id]
        type.name = params[:name]
        type.description = params[:description]
        type.new_game_session_protection_policy = params[:new_game_session_protection_policy]
        type.resource_creation_limit_policy = ResourceCreationLimitPolicy.build(params[:resource_creation_limit_policy], context: "#{context}[:resource_creation_limit_policy]") unless params[:resource_creation_limit_policy].nil?
        type.metric_groups = MetricGroupList.build(params[:metric_groups], context: "#{context}[:metric_groups]") unless params[:metric_groups].nil?
        type
      end
    end

    module UpdateFleetAttributesOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFleetAttributesOutput, context: context)
        type = Types::UpdateFleetAttributesOutput.new
        type.fleet_id = params[:fleet_id]
        type
      end
    end

    module UpdateFleetCapacityInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFleetCapacityInput, context: context)
        type = Types::UpdateFleetCapacityInput.new
        type.fleet_id = params[:fleet_id]
        type.desired_instances = params[:desired_instances]
        type.min_size = params[:min_size]
        type.max_size = params[:max_size]
        type.location = params[:location]
        type
      end
    end

    module UpdateFleetCapacityOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFleetCapacityOutput, context: context)
        type = Types::UpdateFleetCapacityOutput.new
        type.fleet_id = params[:fleet_id]
        type.fleet_arn = params[:fleet_arn]
        type.location = params[:location]
        type
      end
    end

    module UpdateFleetPortSettingsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFleetPortSettingsInput, context: context)
        type = Types::UpdateFleetPortSettingsInput.new
        type.fleet_id = params[:fleet_id]
        type.inbound_permission_authorizations = IpPermissionsList.build(params[:inbound_permission_authorizations], context: "#{context}[:inbound_permission_authorizations]") unless params[:inbound_permission_authorizations].nil?
        type.inbound_permission_revocations = IpPermissionsList.build(params[:inbound_permission_revocations], context: "#{context}[:inbound_permission_revocations]") unless params[:inbound_permission_revocations].nil?
        type
      end
    end

    module UpdateFleetPortSettingsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateFleetPortSettingsOutput, context: context)
        type = Types::UpdateFleetPortSettingsOutput.new
        type.fleet_id = params[:fleet_id]
        type
      end
    end

    module UpdateGameServerGroupInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGameServerGroupInput, context: context)
        type = Types::UpdateGameServerGroupInput.new
        type.game_server_group_name = params[:game_server_group_name]
        type.role_arn = params[:role_arn]
        type.instance_definitions = InstanceDefinitions.build(params[:instance_definitions], context: "#{context}[:instance_definitions]") unless params[:instance_definitions].nil?
        type.game_server_protection_policy = params[:game_server_protection_policy]
        type.balancing_strategy = params[:balancing_strategy]
        type
      end
    end

    module UpdateGameServerGroupOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGameServerGroupOutput, context: context)
        type = Types::UpdateGameServerGroupOutput.new
        type.game_server_group = GameServerGroup.build(params[:game_server_group], context: "#{context}[:game_server_group]") unless params[:game_server_group].nil?
        type
      end
    end

    module UpdateGameServerInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGameServerInput, context: context)
        type = Types::UpdateGameServerInput.new
        type.game_server_group_name = params[:game_server_group_name]
        type.game_server_id = params[:game_server_id]
        type.game_server_data = params[:game_server_data]
        type.utilization_status = params[:utilization_status]
        type.health_check = params[:health_check]
        type
      end
    end

    module UpdateGameServerOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGameServerOutput, context: context)
        type = Types::UpdateGameServerOutput.new
        type.game_server = GameServer.build(params[:game_server], context: "#{context}[:game_server]") unless params[:game_server].nil?
        type
      end
    end

    module UpdateGameSessionInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGameSessionInput, context: context)
        type = Types::UpdateGameSessionInput.new
        type.game_session_id = params[:game_session_id]
        type.maximum_player_session_count = params[:maximum_player_session_count]
        type.name = params[:name]
        type.player_session_creation_policy = params[:player_session_creation_policy]
        type.protection_policy = params[:protection_policy]
        type
      end
    end

    module UpdateGameSessionOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGameSessionOutput, context: context)
        type = Types::UpdateGameSessionOutput.new
        type.game_session = GameSession.build(params[:game_session], context: "#{context}[:game_session]") unless params[:game_session].nil?
        type
      end
    end

    module UpdateGameSessionQueueInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGameSessionQueueInput, context: context)
        type = Types::UpdateGameSessionQueueInput.new
        type.name = params[:name]
        type.timeout_in_seconds = params[:timeout_in_seconds]
        type.player_latency_policies = PlayerLatencyPolicyList.build(params[:player_latency_policies], context: "#{context}[:player_latency_policies]") unless params[:player_latency_policies].nil?
        type.destinations = GameSessionQueueDestinationList.build(params[:destinations], context: "#{context}[:destinations]") unless params[:destinations].nil?
        type.filter_configuration = FilterConfiguration.build(params[:filter_configuration], context: "#{context}[:filter_configuration]") unless params[:filter_configuration].nil?
        type.priority_configuration = PriorityConfiguration.build(params[:priority_configuration], context: "#{context}[:priority_configuration]") unless params[:priority_configuration].nil?
        type.custom_event_data = params[:custom_event_data]
        type.notification_target = params[:notification_target]
        type
      end
    end

    module UpdateGameSessionQueueOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateGameSessionQueueOutput, context: context)
        type = Types::UpdateGameSessionQueueOutput.new
        type.game_session_queue = GameSessionQueue.build(params[:game_session_queue], context: "#{context}[:game_session_queue]") unless params[:game_session_queue].nil?
        type
      end
    end

    module UpdateMatchmakingConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMatchmakingConfigurationInput, context: context)
        type = Types::UpdateMatchmakingConfigurationInput.new
        type.name = params[:name]
        type.description = params[:description]
        type.game_session_queue_arns = QueueArnsList.build(params[:game_session_queue_arns], context: "#{context}[:game_session_queue_arns]") unless params[:game_session_queue_arns].nil?
        type.request_timeout_seconds = params[:request_timeout_seconds]
        type.acceptance_timeout_seconds = params[:acceptance_timeout_seconds]
        type.acceptance_required = params[:acceptance_required]
        type.rule_set_name = params[:rule_set_name]
        type.notification_target = params[:notification_target]
        type.additional_player_count = params[:additional_player_count]
        type.custom_event_data = params[:custom_event_data]
        type.game_properties = GamePropertyList.build(params[:game_properties], context: "#{context}[:game_properties]") unless params[:game_properties].nil?
        type.game_session_data = params[:game_session_data]
        type.backfill_mode = params[:backfill_mode]
        type.flex_match_mode = params[:flex_match_mode]
        type
      end
    end

    module UpdateMatchmakingConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateMatchmakingConfigurationOutput, context: context)
        type = Types::UpdateMatchmakingConfigurationOutput.new
        type.configuration = MatchmakingConfiguration.build(params[:configuration], context: "#{context}[:configuration]") unless params[:configuration].nil?
        type
      end
    end

    module UpdateRuntimeConfigurationInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRuntimeConfigurationInput, context: context)
        type = Types::UpdateRuntimeConfigurationInput.new
        type.fleet_id = params[:fleet_id]
        type.runtime_configuration = RuntimeConfiguration.build(params[:runtime_configuration], context: "#{context}[:runtime_configuration]") unless params[:runtime_configuration].nil?
        type
      end
    end

    module UpdateRuntimeConfigurationOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateRuntimeConfigurationOutput, context: context)
        type = Types::UpdateRuntimeConfigurationOutput.new
        type.runtime_configuration = RuntimeConfiguration.build(params[:runtime_configuration], context: "#{context}[:runtime_configuration]") unless params[:runtime_configuration].nil?
        type
      end
    end

    module UpdateScriptInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateScriptInput, context: context)
        type = Types::UpdateScriptInput.new
        type.script_id = params[:script_id]
        type.name = params[:name]
        type.version = params[:version]
        type.storage_location = S3Location.build(params[:storage_location], context: "#{context}[:storage_location]") unless params[:storage_location].nil?
        type.zip_file = params[:zip_file]
        type
      end
    end

    module UpdateScriptOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::UpdateScriptOutput, context: context)
        type = Types::UpdateScriptOutput.new
        type.script = Script.build(params[:script], context: "#{context}[:script]") unless params[:script].nil?
        type
      end
    end

    module ValidateMatchmakingRuleSetInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidateMatchmakingRuleSetInput, context: context)
        type = Types::ValidateMatchmakingRuleSetInput.new
        type.rule_set_body = params[:rule_set_body]
        type
      end
    end

    module ValidateMatchmakingRuleSetOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ValidateMatchmakingRuleSetOutput, context: context)
        type = Types::ValidateMatchmakingRuleSetOutput.new
        type.valid = params[:valid]
        type
      end
    end

    module VpcPeeringAuthorization
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcPeeringAuthorization, context: context)
        type = Types::VpcPeeringAuthorization.new
        type.game_lift_aws_account_id = params[:game_lift_aws_account_id]
        type.peer_vpc_aws_account_id = params[:peer_vpc_aws_account_id]
        type.peer_vpc_id = params[:peer_vpc_id]
        type.creation_time = params[:creation_time]
        type.expiration_time = params[:expiration_time]
        type
      end
    end

    module VpcPeeringAuthorizationList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VpcPeeringAuthorization.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VpcPeeringConnection
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcPeeringConnection, context: context)
        type = Types::VpcPeeringConnection.new
        type.fleet_id = params[:fleet_id]
        type.fleet_arn = params[:fleet_arn]
        type.ip_v4_cidr_block = params[:ip_v4_cidr_block]
        type.vpc_peering_connection_id = params[:vpc_peering_connection_id]
        type.status = VpcPeeringConnectionStatus.build(params[:status], context: "#{context}[:status]") unless params[:status].nil?
        type.peer_vpc_id = params[:peer_vpc_id]
        type.game_lift_vpc_id = params[:game_lift_vpc_id]
        type
      end
    end

    module VpcPeeringConnectionList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << VpcPeeringConnection.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module VpcPeeringConnectionStatus
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::VpcPeeringConnectionStatus, context: context)
        type = Types::VpcPeeringConnectionStatus.new
        type.code = params[:code]
        type.message = params[:message]
        type
      end
    end

    module VpcSubnets
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
      end
    end

  end
end
