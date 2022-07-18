# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-lightsail'

module AWS::SDK::Lightsail
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#allocate_static_ip' do

    end

    describe '#attach_certificate_to_distribution' do

    end

    describe '#attach_disk' do

    end

    describe '#attach_instances_to_load_balancer' do

    end

    describe '#attach_load_balancer_tls_certificate' do

    end

    describe '#attach_static_ip' do

    end

    describe '#close_instance_public_ports' do

    end

    describe '#copy_snapshot' do

    end

    describe '#create_bucket' do

    end

    describe '#create_bucket_access_key' do

    end

    describe '#create_certificate' do

    end

    describe '#create_cloud_formation_stack' do

    end

    describe '#create_contact_method' do

    end

    describe '#create_container_service' do

    end

    describe '#create_container_service_deployment' do

    end

    describe '#create_container_service_registry_login' do

    end

    describe '#create_disk' do

    end

    describe '#create_disk_from_snapshot' do

    end

    describe '#create_disk_snapshot' do

    end

    describe '#create_distribution' do

    end

    describe '#create_domain' do

    end

    describe '#create_domain_entry' do

    end

    describe '#create_instances' do

    end

    describe '#create_instances_from_snapshot' do

    end

    describe '#create_instance_snapshot' do

    end

    describe '#create_key_pair' do

    end

    describe '#create_load_balancer' do

    end

    describe '#create_load_balancer_tls_certificate' do

    end

    describe '#create_relational_database' do

    end

    describe '#create_relational_database_from_snapshot' do

    end

    describe '#create_relational_database_snapshot' do

    end

    describe '#delete_alarm' do

    end

    describe '#delete_auto_snapshot' do

    end

    describe '#delete_bucket' do

    end

    describe '#delete_bucket_access_key' do

    end

    describe '#delete_certificate' do

    end

    describe '#delete_contact_method' do

    end

    describe '#delete_container_image' do

    end

    describe '#delete_container_service' do

    end

    describe '#delete_disk' do

    end

    describe '#delete_disk_snapshot' do

    end

    describe '#delete_distribution' do

    end

    describe '#delete_domain' do

    end

    describe '#delete_domain_entry' do

    end

    describe '#delete_instance' do

    end

    describe '#delete_instance_snapshot' do

    end

    describe '#delete_key_pair' do

    end

    describe '#delete_known_host_keys' do

    end

    describe '#delete_load_balancer' do

    end

    describe '#delete_load_balancer_tls_certificate' do

    end

    describe '#delete_relational_database' do

    end

    describe '#delete_relational_database_snapshot' do

    end

    describe '#detach_certificate_from_distribution' do

    end

    describe '#detach_disk' do

    end

    describe '#detach_instances_from_load_balancer' do

    end

    describe '#detach_static_ip' do

    end

    describe '#disable_add_on' do

    end

    describe '#download_default_key_pair' do

    end

    describe '#enable_add_on' do

    end

    describe '#export_snapshot' do

    end

    describe '#get_active_names' do

    end

    describe '#get_alarms' do

    end

    describe '#get_auto_snapshots' do

    end

    describe '#get_blueprints' do

    end

    describe '#get_bucket_access_keys' do

    end

    describe '#get_bucket_bundles' do

    end

    describe '#get_bucket_metric_data' do

    end

    describe '#get_buckets' do

    end

    describe '#get_bundles' do

    end

    describe '#get_certificates' do

    end

    describe '#get_cloud_formation_stack_records' do

    end

    describe '#get_contact_methods' do

    end

    describe '#get_container_api_metadata' do

    end

    describe '#get_container_images' do

    end

    describe '#get_container_log' do

    end

    describe '#get_container_service_deployments' do

    end

    describe '#get_container_service_metric_data' do

    end

    describe '#get_container_service_powers' do

    end

    describe '#get_container_services' do

    end

    describe '#get_disk' do

    end

    describe '#get_disks' do

    end

    describe '#get_disk_snapshot' do

    end

    describe '#get_disk_snapshots' do

    end

    describe '#get_distribution_bundles' do

    end

    describe '#get_distribution_latest_cache_reset' do

    end

    describe '#get_distribution_metric_data' do

    end

    describe '#get_distributions' do

    end

    describe '#get_domain' do

    end

    describe '#get_domains' do

    end

    describe '#get_export_snapshot_records' do

    end

    describe '#get_instance' do

    end

    describe '#get_instance_access_details' do

    end

    describe '#get_instance_metric_data' do

    end

    describe '#get_instance_port_states' do

    end

    describe '#get_instances' do

    end

    describe '#get_instance_snapshot' do

    end

    describe '#get_instance_snapshots' do

    end

    describe '#get_instance_state' do

    end

    describe '#get_key_pair' do

    end

    describe '#get_key_pairs' do

    end

    describe '#get_load_balancer' do

    end

    describe '#get_load_balancer_metric_data' do

    end

    describe '#get_load_balancers' do

    end

    describe '#get_load_balancer_tls_certificates' do

    end

    describe '#get_load_balancer_tls_policies' do

    end

    describe '#get_operation' do

    end

    describe '#get_operations' do

    end

    describe '#get_operations_for_resource' do

    end

    describe '#get_regions' do

    end

    describe '#get_relational_database' do

    end

    describe '#get_relational_database_blueprints' do

    end

    describe '#get_relational_database_bundles' do

    end

    describe '#get_relational_database_events' do

    end

    describe '#get_relational_database_log_events' do

    end

    describe '#get_relational_database_log_streams' do

    end

    describe '#get_relational_database_master_user_password' do

    end

    describe '#get_relational_database_metric_data' do

    end

    describe '#get_relational_database_parameters' do

    end

    describe '#get_relational_databases' do

    end

    describe '#get_relational_database_snapshot' do

    end

    describe '#get_relational_database_snapshots' do

    end

    describe '#get_static_ip' do

    end

    describe '#get_static_ips' do

    end

    describe '#import_key_pair' do

    end

    describe '#is_vpc_peered' do

    end

    describe '#open_instance_public_ports' do

    end

    describe '#peer_vpc' do

    end

    describe '#put_alarm' do

    end

    describe '#put_instance_public_ports' do

    end

    describe '#reboot_instance' do

    end

    describe '#reboot_relational_database' do

    end

    describe '#register_container_image' do

    end

    describe '#release_static_ip' do

    end

    describe '#reset_distribution_cache' do

    end

    describe '#send_contact_method_verification' do

    end

    describe '#set_ip_address_type' do

    end

    describe '#set_resource_access_for_bucket' do

    end

    describe '#start_instance' do

    end

    describe '#start_relational_database' do

    end

    describe '#stop_instance' do

    end

    describe '#stop_relational_database' do

    end

    describe '#tag_resource' do

    end

    describe '#test_alarm' do

    end

    describe '#unpeer_vpc' do

    end

    describe '#untag_resource' do

    end

    describe '#update_bucket' do

    end

    describe '#update_bucket_bundle' do

    end

    describe '#update_container_service' do

    end

    describe '#update_distribution' do

    end

    describe '#update_distribution_bundle' do

    end

    describe '#update_domain_entry' do

    end

    describe '#update_load_balancer_attribute' do

    end

    describe '#update_relational_database' do

    end

    describe '#update_relational_database_parameters' do

    end

  end
end
