# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-apprunner'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::AppRunner
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_custom_domain' do

    end

    describe '#create_auto_scaling_configuration' do

    end

    describe '#create_connection' do

    end

    describe '#create_observability_configuration' do

    end

    describe '#create_service' do

    end

    describe '#create_vpc_connector' do

    end

    describe '#delete_auto_scaling_configuration' do

    end

    describe '#delete_connection' do

    end

    describe '#delete_observability_configuration' do

    end

    describe '#delete_service' do

    end

    describe '#delete_vpc_connector' do

    end

    describe '#describe_auto_scaling_configuration' do

    end

    describe '#describe_custom_domains' do

    end

    describe '#describe_observability_configuration' do

    end

    describe '#describe_service' do

    end

    describe '#describe_vpc_connector' do

    end

    describe '#disassociate_custom_domain' do

    end

    describe '#list_auto_scaling_configurations' do

    end

    describe '#list_connections' do

    end

    describe '#list_observability_configurations' do

    end

    describe '#list_operations' do

    end

    describe '#list_services' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_vpc_connectors' do

    end

    describe '#pause_service' do

    end

    describe '#resume_service' do

    end

    describe '#start_deployment' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_service' do

    end

  end
end
