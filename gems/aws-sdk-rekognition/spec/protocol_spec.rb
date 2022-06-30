# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-rekognition'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Rekognition
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#compare_faces' do

    end

    describe '#create_collection' do

    end

    describe '#create_dataset' do

    end

    describe '#create_project' do

    end

    describe '#create_project_version' do

    end

    describe '#create_stream_processor' do

    end

    describe '#delete_collection' do

    end

    describe '#delete_dataset' do

    end

    describe '#delete_faces' do

    end

    describe '#delete_project' do

    end

    describe '#delete_project_version' do

    end

    describe '#delete_stream_processor' do

    end

    describe '#describe_collection' do

    end

    describe '#describe_dataset' do

    end

    describe '#describe_projects' do

    end

    describe '#describe_project_versions' do

    end

    describe '#describe_stream_processor' do

    end

    describe '#detect_custom_labels' do

    end

    describe '#detect_faces' do

    end

    describe '#detect_labels' do

    end

    describe '#detect_moderation_labels' do

    end

    describe '#detect_protective_equipment' do

    end

    describe '#detect_text' do

    end

    describe '#distribute_dataset_entries' do

    end

    describe '#get_celebrity_info' do

    end

    describe '#get_celebrity_recognition' do

    end

    describe '#get_content_moderation' do

    end

    describe '#get_face_detection' do

    end

    describe '#get_face_search' do

    end

    describe '#get_label_detection' do

    end

    describe '#get_person_tracking' do

    end

    describe '#get_segment_detection' do

    end

    describe '#get_text_detection' do

    end

    describe '#index_faces' do

    end

    describe '#list_collections' do

    end

    describe '#list_dataset_entries' do

    end

    describe '#list_dataset_labels' do

    end

    describe '#list_faces' do

    end

    describe '#list_stream_processors' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#recognize_celebrities' do

    end

    describe '#search_faces' do

    end

    describe '#search_faces_by_image' do

    end

    describe '#start_celebrity_recognition' do

    end

    describe '#start_content_moderation' do

    end

    describe '#start_face_detection' do

    end

    describe '#start_face_search' do

    end

    describe '#start_label_detection' do

    end

    describe '#start_person_tracking' do

    end

    describe '#start_project_version' do

    end

    describe '#start_segment_detection' do

    end

    describe '#start_stream_processor' do

    end

    describe '#start_text_detection' do

    end

    describe '#stop_project_version' do

    end

    describe '#stop_stream_processor' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_dataset_entries' do

    end

    describe '#update_stream_processor' do

    end

  end
end
