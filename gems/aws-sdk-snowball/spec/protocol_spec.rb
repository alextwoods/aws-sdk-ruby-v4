# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-snowball'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Snowball
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#cancel_cluster' do

    end

    describe '#cancel_job' do

    end

    describe '#create_address' do

    end

    describe '#create_cluster' do

    end

    describe '#create_job' do

    end

    describe '#create_long_term_pricing' do

    end

    describe '#create_return_shipping_label' do

    end

    describe '#describe_address' do

    end

    describe '#describe_addresses' do

    end

    describe '#describe_cluster' do

    end

    describe '#describe_job' do

    end

    describe '#describe_return_shipping_label' do

    end

    describe '#get_job_manifest' do

    end

    describe '#get_job_unlock_code' do

    end

    describe '#get_snowball_usage' do

    end

    describe '#get_software_updates' do

    end

    describe '#list_cluster_jobs' do

    end

    describe '#list_clusters' do

    end

    describe '#list_compatible_images' do

    end

    describe '#list_jobs' do

    end

    describe '#list_long_term_pricing' do

    end

    describe '#update_cluster' do

    end

    describe '#update_job' do

    end

    describe '#update_job_shipment_state' do

    end

    describe '#update_long_term_pricing' do

    end

  end
end
