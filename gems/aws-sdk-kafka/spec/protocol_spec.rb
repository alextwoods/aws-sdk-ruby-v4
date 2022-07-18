# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-kafka'

module AWS::SDK::Kafka
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#batch_associate_scram_secret' do

    end

    describe '#batch_disassociate_scram_secret' do

    end

    describe '#create_cluster' do

    end

    describe '#create_cluster_v2' do

    end

    describe '#create_configuration' do

    end

    describe '#delete_cluster' do

    end

    describe '#delete_configuration' do

    end

    describe '#describe_cluster' do

    end

    describe '#describe_cluster_operation' do

    end

    describe '#describe_cluster_v2' do

    end

    describe '#describe_configuration' do

    end

    describe '#describe_configuration_revision' do

    end

    describe '#get_bootstrap_brokers' do

    end

    describe '#get_compatible_kafka_versions' do

    end

    describe '#list_cluster_operations' do

    end

    describe '#list_clusters' do

    end

    describe '#list_clusters_v2' do

    end

    describe '#list_configuration_revisions' do

    end

    describe '#list_configurations' do

    end

    describe '#list_kafka_versions' do

    end

    describe '#list_nodes' do

    end

    describe '#list_scram_secrets' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#reboot_broker' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_broker_count' do

    end

    describe '#update_broker_storage' do

    end

    describe '#update_broker_type' do

    end

    describe '#update_cluster_configuration' do

    end

    describe '#update_cluster_kafka_version' do

    end

    describe '#update_configuration' do

    end

    describe '#update_connectivity' do

    end

    describe '#update_monitoring' do

    end

    describe '#update_security' do

    end

  end
end
