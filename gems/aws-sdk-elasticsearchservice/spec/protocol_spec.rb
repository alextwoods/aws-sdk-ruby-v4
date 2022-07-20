# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-elasticsearchservice'

module AWS::SDK::ElasticsearchService
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#accept_inbound_cross_cluster_search_connection' do

    end

    describe '#add_tags' do

    end

    describe '#associate_package' do

    end

    describe '#cancel_elasticsearch_service_software_update' do

    end

    describe '#create_elasticsearch_domain' do

    end

    describe '#create_outbound_cross_cluster_search_connection' do

    end

    describe '#create_package' do

    end

    describe '#delete_elasticsearch_domain' do

    end

    describe '#delete_elasticsearch_service_role' do

    end

    describe '#delete_inbound_cross_cluster_search_connection' do

    end

    describe '#delete_outbound_cross_cluster_search_connection' do

    end

    describe '#delete_package' do

    end

    describe '#describe_domain_auto_tunes' do

    end

    describe '#describe_domain_change_progress' do

    end

    describe '#describe_elasticsearch_domain' do

    end

    describe '#describe_elasticsearch_domain_config' do

    end

    describe '#describe_elasticsearch_domains' do

    end

    describe '#describe_elasticsearch_instance_type_limits' do

    end

    describe '#describe_inbound_cross_cluster_search_connections' do

    end

    describe '#describe_outbound_cross_cluster_search_connections' do

    end

    describe '#describe_packages' do

    end

    describe '#describe_reserved_elasticsearch_instance_offerings' do

    end

    describe '#describe_reserved_elasticsearch_instances' do

    end

    describe '#dissociate_package' do

    end

    describe '#get_compatible_elasticsearch_versions' do

    end

    describe '#get_package_version_history' do

    end

    describe '#get_upgrade_history' do

    end

    describe '#get_upgrade_status' do

    end

    describe '#list_domain_names' do

    end

    describe '#list_domains_for_package' do

    end

    describe '#list_elasticsearch_instance_types' do

    end

    describe '#list_elasticsearch_versions' do

    end

    describe '#list_packages_for_domain' do

    end

    describe '#list_tags' do

    end

    describe '#purchase_reserved_elasticsearch_instance_offering' do

    end

    describe '#reject_inbound_cross_cluster_search_connection' do

    end

    describe '#remove_tags' do

    end

    describe '#start_elasticsearch_service_software_update' do

    end

    describe '#update_elasticsearch_domain_config' do

    end

    describe '#update_package' do

    end

    describe '#upgrade_elasticsearch_domain' do

    end

  end
end
