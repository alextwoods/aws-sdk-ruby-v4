# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-frauddetector'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::FraudDetector
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#batch_create_variable' do

    end

    describe '#batch_get_variable' do

    end

    describe '#cancel_batch_import_job' do

    end

    describe '#cancel_batch_prediction_job' do

    end

    describe '#create_batch_import_job' do

    end

    describe '#create_batch_prediction_job' do

    end

    describe '#create_detector_version' do

    end

    describe '#create_model' do

    end

    describe '#create_model_version' do

    end

    describe '#create_rule' do

    end

    describe '#create_variable' do

    end

    describe '#delete_batch_import_job' do

    end

    describe '#delete_batch_prediction_job' do

    end

    describe '#delete_detector' do

    end

    describe '#delete_detector_version' do

    end

    describe '#delete_entity_type' do

    end

    describe '#delete_event' do

    end

    describe '#delete_events_by_event_type' do

    end

    describe '#delete_event_type' do

    end

    describe '#delete_external_model' do

    end

    describe '#delete_label' do

    end

    describe '#delete_model' do

    end

    describe '#delete_model_version' do

    end

    describe '#delete_outcome' do

    end

    describe '#delete_rule' do

    end

    describe '#delete_variable' do

    end

    describe '#describe_detector' do

    end

    describe '#describe_model_versions' do

    end

    describe '#get_batch_import_jobs' do

    end

    describe '#get_batch_prediction_jobs' do

    end

    describe '#get_delete_events_by_event_type_status' do

    end

    describe '#get_detectors' do

    end

    describe '#get_detector_version' do

    end

    describe '#get_entity_types' do

    end

    describe '#get_event' do

    end

    describe '#get_event_prediction' do

    end

    describe '#get_event_prediction_metadata' do

    end

    describe '#get_event_types' do

    end

    describe '#get_external_models' do

    end

    describe '#get_kms_encryption_key' do

    end

    describe '#get_labels' do

    end

    describe '#get_models' do

    end

    describe '#get_model_version' do

    end

    describe '#get_outcomes' do

    end

    describe '#get_rules' do

    end

    describe '#get_variables' do

    end

    describe '#list_event_predictions' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#put_detector' do

    end

    describe '#put_entity_type' do

    end

    describe '#put_event_type' do

    end

    describe '#put_external_model' do

    end

    describe '#put_kms_encryption_key' do

    end

    describe '#put_label' do

    end

    describe '#put_outcome' do

    end

    describe '#send_event' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_detector_version' do

    end

    describe '#update_detector_version_metadata' do

    end

    describe '#update_detector_version_status' do

    end

    describe '#update_event_label' do

    end

    describe '#update_model' do

    end

    describe '#update_model_version' do

    end

    describe '#update_model_version_status' do

    end

    describe '#update_rule_metadata' do

    end

    describe '#update_rule_version' do

    end

    describe '#update_variable' do

    end

  end
end
