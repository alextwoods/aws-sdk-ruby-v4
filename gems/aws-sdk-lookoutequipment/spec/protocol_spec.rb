# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-lookoutequipment'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::LookoutEquipment
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_dataset' do

    end

    describe '#create_inference_scheduler' do

    end

    describe '#create_model' do

    end

    describe '#delete_dataset' do

    end

    describe '#delete_inference_scheduler' do

    end

    describe '#delete_model' do

    end

    describe '#describe_data_ingestion_job' do

    end

    describe '#describe_dataset' do

    end

    describe '#describe_inference_scheduler' do

    end

    describe '#describe_model' do

    end

    describe '#list_data_ingestion_jobs' do

    end

    describe '#list_datasets' do

    end

    describe '#list_inference_executions' do

    end

    describe '#list_inference_schedulers' do

    end

    describe '#list_models' do

    end

    describe '#list_sensor_statistics' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#start_data_ingestion_job' do

    end

    describe '#start_inference_scheduler' do

    end

    describe '#stop_inference_scheduler' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_inference_scheduler' do

    end

  end
end
