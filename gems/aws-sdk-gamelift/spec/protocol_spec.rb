# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-gamelift'

module AWS::SDK::GameLift
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#accept_match' do

    end

    describe '#claim_game_server' do

    end

    describe '#create_alias' do

    end

    describe '#create_build' do

    end

    describe '#create_fleet' do

    end

    describe '#create_fleet_locations' do

    end

    describe '#create_game_server_group' do

    end

    describe '#create_game_session' do

    end

    describe '#create_game_session_queue' do

    end

    describe '#create_matchmaking_configuration' do

    end

    describe '#create_matchmaking_rule_set' do

    end

    describe '#create_player_session' do

    end

    describe '#create_player_sessions' do

    end

    describe '#create_script' do

    end

    describe '#create_vpc_peering_authorization' do

    end

    describe '#create_vpc_peering_connection' do

    end

    describe '#delete_alias' do

    end

    describe '#delete_build' do

    end

    describe '#delete_fleet' do

    end

    describe '#delete_fleet_locations' do

    end

    describe '#delete_game_server_group' do

    end

    describe '#delete_game_session_queue' do

    end

    describe '#delete_matchmaking_configuration' do

    end

    describe '#delete_matchmaking_rule_set' do

    end

    describe '#delete_scaling_policy' do

    end

    describe '#delete_script' do

    end

    describe '#delete_vpc_peering_authorization' do

    end

    describe '#delete_vpc_peering_connection' do

    end

    describe '#deregister_game_server' do

    end

    describe '#describe_alias' do

    end

    describe '#describe_build' do

    end

    describe '#describe_ec2_instance_limits' do

    end

    describe '#describe_fleet_attributes' do

    end

    describe '#describe_fleet_capacity' do

    end

    describe '#describe_fleet_events' do

    end

    describe '#describe_fleet_location_attributes' do

    end

    describe '#describe_fleet_location_capacity' do

    end

    describe '#describe_fleet_location_utilization' do

    end

    describe '#describe_fleet_port_settings' do

    end

    describe '#describe_fleet_utilization' do

    end

    describe '#describe_game_server' do

    end

    describe '#describe_game_server_group' do

    end

    describe '#describe_game_server_instances' do

    end

    describe '#describe_game_session_details' do

    end

    describe '#describe_game_session_placement' do

    end

    describe '#describe_game_session_queues' do

    end

    describe '#describe_game_sessions' do

    end

    describe '#describe_instances' do

    end

    describe '#describe_matchmaking' do

    end

    describe '#describe_matchmaking_configurations' do

    end

    describe '#describe_matchmaking_rule_sets' do

    end

    describe '#describe_player_sessions' do

    end

    describe '#describe_runtime_configuration' do

    end

    describe '#describe_scaling_policies' do

    end

    describe '#describe_script' do

    end

    describe '#describe_vpc_peering_authorizations' do

    end

    describe '#describe_vpc_peering_connections' do

    end

    describe '#get_game_session_log_url' do

    end

    describe '#get_instance_access' do

    end

    describe '#list_aliases' do

    end

    describe '#list_builds' do

    end

    describe '#list_fleets' do

    end

    describe '#list_game_server_groups' do

    end

    describe '#list_game_servers' do

    end

    describe '#list_scripts' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#put_scaling_policy' do

    end

    describe '#register_game_server' do

    end

    describe '#request_upload_credentials' do

    end

    describe '#resolve_alias' do

    end

    describe '#resume_game_server_group' do

    end

    describe '#search_game_sessions' do

    end

    describe '#start_fleet_actions' do

    end

    describe '#start_game_session_placement' do

    end

    describe '#start_match_backfill' do

    end

    describe '#start_matchmaking' do

    end

    describe '#stop_fleet_actions' do

    end

    describe '#stop_game_session_placement' do

    end

    describe '#stop_matchmaking' do

    end

    describe '#suspend_game_server_group' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_alias' do

    end

    describe '#update_build' do

    end

    describe '#update_fleet_attributes' do

    end

    describe '#update_fleet_capacity' do

    end

    describe '#update_fleet_port_settings' do

    end

    describe '#update_game_server' do

    end

    describe '#update_game_server_group' do

    end

    describe '#update_game_session' do

    end

    describe '#update_game_session_queue' do

    end

    describe '#update_matchmaking_configuration' do

    end

    describe '#update_runtime_configuration' do

    end

    describe '#update_script' do

    end

    describe '#validate_matchmaking_rule_set' do

    end

  end
end
