# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-backupgateway'

module AWS::SDK::BackupGateway
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_gateway_to_server' do

    end

    describe '#create_gateway' do

    end

    describe '#delete_gateway' do

    end

    describe '#delete_hypervisor' do

    end

    describe '#disassociate_gateway_from_server' do

    end

    describe '#get_gateway' do

    end

    describe '#import_hypervisor_configuration' do

    end

    describe '#list_gateways' do

    end

    describe '#list_hypervisors' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_virtual_machines' do

    end

    describe '#put_maintenance_start_time' do

    end

    describe '#tag_resource' do

    end

    describe '#test_hypervisor_configuration' do

    end

    describe '#untag_resource' do

    end

    describe '#update_gateway_information' do

    end

    describe '#update_gateway_software_now' do

    end

    describe '#update_hypervisor' do

    end

  end
end
