# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-location'

module AWS::SDK::Location
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_tracker_consumer' do

    end

    describe '#batch_delete_device_position_history' do

    end

    describe '#batch_delete_geofence' do

    end

    describe '#batch_evaluate_geofences' do

    end

    describe '#batch_get_device_position' do

    end

    describe '#batch_put_geofence' do

    end

    describe '#batch_update_device_position' do

    end

    describe '#calculate_route' do

    end

    describe '#calculate_route_matrix' do

    end

    describe '#create_geofence_collection' do

    end

    describe '#create_map' do

    end

    describe '#create_place_index' do

    end

    describe '#create_route_calculator' do

    end

    describe '#create_tracker' do

    end

    describe '#delete_geofence_collection' do

    end

    describe '#delete_map' do

    end

    describe '#delete_place_index' do

    end

    describe '#delete_route_calculator' do

    end

    describe '#delete_tracker' do

    end

    describe '#describe_geofence_collection' do

    end

    describe '#describe_map' do

    end

    describe '#describe_place_index' do

    end

    describe '#describe_route_calculator' do

    end

    describe '#describe_tracker' do

    end

    describe '#disassociate_tracker_consumer' do

    end

    describe '#get_device_position' do

    end

    describe '#get_device_position_history' do

    end

    describe '#get_geofence' do

    end

    describe '#get_map_glyphs' do

    end

    describe '#get_map_sprites' do

    end

    describe '#get_map_style_descriptor' do

    end

    describe '#get_map_tile' do

    end

    describe '#list_device_positions' do

    end

    describe '#list_geofence_collections' do

    end

    describe '#list_geofences' do

    end

    describe '#list_maps' do

    end

    describe '#list_place_indexes' do

    end

    describe '#list_route_calculators' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_tracker_consumers' do

    end

    describe '#list_trackers' do

    end

    describe '#put_geofence' do

    end

    describe '#search_place_index_for_position' do

    end

    describe '#search_place_index_for_suggestions' do

    end

    describe '#search_place_index_for_text' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_geofence_collection' do

    end

    describe '#update_map' do

    end

    describe '#update_place_index' do

    end

    describe '#update_route_calculator' do

    end

    describe '#update_tracker' do

    end

  end
end
