# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-comprehendmedical'

module AWS::SDK::ComprehendMedical
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#describe_entities_detection_v2_job' do

    end

    describe '#describe_icd10_cm_inference_job' do

    end

    describe '#describe_phi_detection_job' do

    end

    describe '#describe_rx_norm_inference_job' do

    end

    describe '#describe_snomedct_inference_job' do

    end

    describe '#detect_entities' do

    end

    describe '#detect_entities_v2' do

    end

    describe '#detect_phi' do

    end

    describe '#infer_icd10_cm' do

    end

    describe '#infer_rx_norm' do

    end

    describe '#infer_snomedct' do

    end

    describe '#list_entities_detection_v2_jobs' do

    end

    describe '#list_icd10_cm_inference_jobs' do

    end

    describe '#list_phi_detection_jobs' do

    end

    describe '#list_rx_norm_inference_jobs' do

    end

    describe '#list_snomedct_inference_jobs' do

    end

    describe '#start_entities_detection_v2_job' do

    end

    describe '#start_icd10_cm_inference_job' do

    end

    describe '#start_phi_detection_job' do

    end

    describe '#start_rx_norm_inference_job' do

    end

    describe '#start_snomedct_inference_job' do

    end

    describe '#stop_entities_detection_v2_job' do

    end

    describe '#stop_icd10_cm_inference_job' do

    end

    describe '#stop_phi_detection_job' do

    end

    describe '#stop_rx_norm_inference_job' do

    end

    describe '#stop_snomedct_inference_job' do

    end

  end
end
