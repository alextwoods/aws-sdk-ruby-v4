# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-cloudsearch'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::CloudSearch
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#build_suggesters' do

    end

    describe '#create_domain' do

    end

    describe '#define_analysis_scheme' do

    end

    describe '#define_expression' do

    end

    describe '#define_index_field' do

    end

    describe '#define_suggester' do

    end

    describe '#delete_analysis_scheme' do

    end

    describe '#delete_domain' do

    end

    describe '#delete_expression' do

    end

    describe '#delete_index_field' do

    end

    describe '#delete_suggester' do

    end

    describe '#describe_analysis_schemes' do

    end

    describe '#describe_availability_options' do

    end

    describe '#describe_domain_endpoint_options' do

    end

    describe '#describe_domains' do

    end

    describe '#describe_expressions' do

    end

    describe '#describe_index_fields' do

    end

    describe '#describe_scaling_parameters' do

    end

    describe '#describe_service_access_policies' do

    end

    describe '#describe_suggesters' do

    end

    describe '#index_documents' do

    end

    describe '#list_domain_names' do

    end

    describe '#update_availability_options' do

    end

    describe '#update_domain_endpoint_options' do

    end

    describe '#update_scaling_parameters' do

    end

    describe '#update_service_access_policies' do

    end

  end
end
