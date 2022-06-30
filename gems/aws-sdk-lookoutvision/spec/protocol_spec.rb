# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-lookoutvision'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::LookoutVision
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_dataset' do

    end

    describe '#create_model' do

    end

    describe '#create_project' do

    end

    describe '#delete_dataset' do

    end

    describe '#delete_model' do

    end

    describe '#delete_project' do

    end

    describe '#describe_dataset' do

    end

    describe '#describe_model' do

    end

    describe '#describe_model_packaging_job' do

    end

    describe '#describe_project' do

    end

    describe '#detect_anomalies' do

    end

    describe '#list_dataset_entries' do

    end

    describe '#list_model_packaging_jobs' do

    end

    describe '#list_models' do

    end

    describe '#list_projects' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#start_model' do

    end

    describe '#start_model_packaging_job' do

    end

    describe '#stop_model' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_dataset_entries' do

    end

  end
end
