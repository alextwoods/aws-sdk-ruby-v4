# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-drs'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Drs
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_extended_source_server' do

    end

    describe '#create_replication_configuration_template' do

    end

    describe '#delete_job' do

    end

    describe '#delete_recovery_instance' do

    end

    describe '#delete_replication_configuration_template' do

    end

    describe '#delete_source_server' do

    end

    describe '#describe_job_log_items' do

    end

    describe '#describe_jobs' do

    end

    describe '#describe_recovery_instances' do

    end

    describe '#describe_recovery_snapshots' do

    end

    describe '#describe_replication_configuration_templates' do

    end

    describe '#describe_source_servers' do

    end

    describe '#disconnect_recovery_instance' do

    end

    describe '#disconnect_source_server' do

    end

    describe '#get_failback_replication_configuration' do

    end

    describe '#get_launch_configuration' do

    end

    describe '#get_replication_configuration' do

    end

    describe '#initialize_service' do

    end

    describe '#list_extensible_source_servers' do

    end

    describe '#list_staging_accounts' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#retry_data_replication' do

    end

    describe '#start_failback_launch' do

    end

    describe '#start_recovery' do

    end

    describe '#stop_failback' do

    end

    describe '#tag_resource' do

    end

    describe '#terminate_recovery_instances' do

    end

    describe '#untag_resource' do

    end

    describe '#update_failback_replication_configuration' do

    end

    describe '#update_launch_configuration' do

    end

    describe '#update_replication_configuration' do

    end

    describe '#update_replication_configuration_template' do

    end

  end
end
