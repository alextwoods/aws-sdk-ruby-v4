# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-sms'

module AWS::SDK::SMS
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_app' do

    end

    describe '#create_replication_job' do

    end

    describe '#delete_app' do

    end

    describe '#delete_app_launch_configuration' do

    end

    describe '#delete_app_replication_configuration' do

    end

    describe '#delete_app_validation_configuration' do

    end

    describe '#delete_replication_job' do

    end

    describe '#delete_server_catalog' do

    end

    describe '#disassociate_connector' do

    end

    describe '#generate_change_set' do

    end

    describe '#generate_template' do

    end

    describe '#get_app' do

    end

    describe '#get_app_launch_configuration' do

    end

    describe '#get_app_replication_configuration' do

    end

    describe '#get_app_validation_configuration' do

    end

    describe '#get_app_validation_output' do

    end

    describe '#get_connectors' do

    end

    describe '#get_replication_jobs' do

    end

    describe '#get_replication_runs' do

    end

    describe '#get_servers' do

    end

    describe '#import_app_catalog' do

    end

    describe '#import_server_catalog' do

    end

    describe '#launch_app' do

    end

    describe '#list_apps' do

    end

    describe '#notify_app_validation_output' do

    end

    describe '#put_app_launch_configuration' do

    end

    describe '#put_app_replication_configuration' do

    end

    describe '#put_app_validation_configuration' do

    end

    describe '#start_app_replication' do

    end

    describe '#start_on_demand_app_replication' do

    end

    describe '#start_on_demand_replication_run' do

    end

    describe '#stop_app_replication' do

    end

    describe '#terminate_app' do

    end

    describe '#update_app' do

    end

    describe '#update_replication_job' do

    end

  end
end
