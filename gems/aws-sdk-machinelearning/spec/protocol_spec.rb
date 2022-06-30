# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-machinelearning'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::MachineLearning
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_tags' do

    end

    describe '#create_batch_prediction' do

    end

    describe '#create_data_source_from_rds' do

    end

    describe '#create_data_source_from_redshift' do

    end

    describe '#create_data_source_from_s3' do

    end

    describe '#create_evaluation' do

    end

    describe '#create_ml_model' do

    end

    describe '#create_realtime_endpoint' do

    end

    describe '#delete_batch_prediction' do

    end

    describe '#delete_data_source' do

    end

    describe '#delete_evaluation' do

    end

    describe '#delete_ml_model' do

    end

    describe '#delete_realtime_endpoint' do

    end

    describe '#delete_tags' do

    end

    describe '#describe_batch_predictions' do

    end

    describe '#describe_data_sources' do

    end

    describe '#describe_evaluations' do

    end

    describe '#describe_ml_models' do

    end

    describe '#describe_tags' do

    end

    describe '#get_batch_prediction' do

    end

    describe '#get_data_source' do

    end

    describe '#get_evaluation' do

    end

    describe '#get_ml_model' do

    end

    describe '#predict' do

    end

    describe '#update_batch_prediction' do

    end

    describe '#update_data_source' do

    end

    describe '#update_evaluation' do

    end

    describe '#update_ml_model' do

    end

  end
end
