# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-mgn'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Mgn
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#change_server_life_cycle_state' do

    end

    describe '#create_replication_configuration_template' do

    end

    describe '#delete_job' do

    end

    describe '#delete_replication_configuration_template' do

    end

    describe '#delete_source_server' do

    end

    describe '#delete_vcenter_client' do

    end

    describe '#describe_job_log_items' do

    end

    describe '#describe_jobs' do

    end

    describe '#describe_replication_configuration_templates' do

    end

    describe '#describe_source_servers' do

    end

    describe '#describe_vcenter_clients' do

    end

    describe '#disconnect_from_service' do

    end

    describe '#finalize_cutover' do

    end

    describe '#get_launch_configuration' do

    end

    describe '#get_replication_configuration' do

    end

    describe '#initialize_service' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#mark_as_archived' do

    end

    describe '#retry_data_replication' do

    end

    describe '#start_cutover' do

    end

    describe '#start_replication' do

    end

    describe '#start_test' do

    end

    describe '#tag_resource' do

    end

    describe '#terminate_target_instances' do

    end

    describe '#untag_resource' do

    end

    describe '#update_launch_configuration' do

    end

    describe '#update_replication_configuration' do

    end

    describe '#update_replication_configuration_template' do

    end

    describe '#update_source_server_replication_type' do

    end

  end
end
