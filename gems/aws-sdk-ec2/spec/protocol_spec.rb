# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-ec2'

module AWS::SDK::EC2
  describe Client do
    let(:config) do
      Config.new(
        stub_responses: true,
        validate_input: false,
        endpoint: 'http://127.0.0.1',
        retry_strategy: Hearth::Retry::Standard.new(max_attempts: 0)
      )
    end

    let(:client) { Client.new(config) }
    let(:before_send) do
      Class.new do
        def initialize(&block)
          @block = block
        end

        def read_before_transmit(context)
          @block.call(context)
        end
      end
    end

    let(:after_send) do
      Class.new do
        def initialize(&block)
          @block = block
        end

        def read_after_transmit(context)
          @block.call(context)
        end
      end
    end

    describe '#accept_address_transfer' do

    end

    describe '#accept_reserved_instances_exchange_quote' do

    end

    describe '#accept_transit_gateway_multicast_domain_associations' do

    end

    describe '#accept_transit_gateway_peering_attachment' do

    end

    describe '#accept_transit_gateway_vpc_attachment' do

    end

    describe '#accept_vpc_endpoint_connections' do

    end

    describe '#accept_vpc_peering_connection' do

    end

    describe '#advertise_byoip_cidr' do

    end

    describe '#allocate_address' do

    end

    describe '#allocate_hosts' do

    end

    describe '#allocate_ipam_pool_cidr' do

    end

    describe '#apply_security_groups_to_client_vpn_target_network' do

    end

    describe '#assign_ipv6_addresses' do

    end

    describe '#assign_private_ip_addresses' do

    end

    describe '#assign_private_nat_gateway_address' do

    end

    describe '#associate_address' do

    end

    describe '#associate_client_vpn_target_network' do

    end

    describe '#associate_dhcp_options' do

    end

    describe '#associate_enclave_certificate_iam_role' do

    end

    describe '#associate_iam_instance_profile' do

    end

    describe '#associate_instance_event_window' do

    end

    describe '#associate_ipam_resource_discovery' do

    end

    describe '#associate_nat_gateway_address' do

    end

    describe '#associate_route_table' do

    end

    describe '#associate_subnet_cidr_block' do

    end

    describe '#associate_transit_gateway_multicast_domain' do

    end

    describe '#associate_transit_gateway_policy_table' do

    end

    describe '#associate_transit_gateway_route_table' do

    end

    describe '#associate_trunk_interface' do

    end

    describe '#associate_vpc_cidr_block' do

    end

    describe '#attach_classic_link_vpc' do

    end

    describe '#attach_internet_gateway' do

    end

    describe '#attach_network_interface' do

    end

    describe '#attach_verified_access_trust_provider' do

    end

    describe '#attach_volume' do

    end

    describe '#attach_vpn_gateway' do

    end

    describe '#authorize_client_vpn_ingress' do

    end

    describe '#authorize_security_group_egress' do

    end

    describe '#authorize_security_group_ingress' do

    end

    describe '#bundle_instance' do

    end

    describe '#cancel_bundle_task' do

    end

    describe '#cancel_capacity_reservation' do

    end

    describe '#cancel_capacity_reservation_fleets' do

    end

    describe '#cancel_conversion_task' do

    end

    describe '#cancel_export_task' do

    end

    describe '#cancel_image_launch_permission' do

    end

    describe '#cancel_import_task' do

    end

    describe '#cancel_reserved_instances_listing' do

    end

    describe '#cancel_spot_fleet_requests' do

    end

    describe '#cancel_spot_instance_requests' do

    end

    describe '#confirm_product_instance' do

    end

    describe '#copy_fpga_image' do

    end

    describe '#copy_image' do

    end

    describe '#copy_snapshot' do

    end

    describe '#create_capacity_reservation' do

    end

    describe '#create_capacity_reservation_fleet' do

    end

    describe '#create_carrier_gateway' do

    end

    describe '#create_client_vpn_endpoint' do

    end

    describe '#create_client_vpn_route' do

    end

    describe '#create_coip_cidr' do

    end

    describe '#create_coip_pool' do

    end

    describe '#create_customer_gateway' do

    end

    describe '#create_default_subnet' do

    end

    describe '#create_default_vpc' do

    end

    describe '#create_dhcp_options' do

    end

    describe '#create_egress_only_internet_gateway' do

    end

    describe '#create_fleet' do

    end

    describe '#create_flow_logs' do

    end

    describe '#create_fpga_image' do

    end

    describe '#create_image' do

    end

    describe '#create_instance_connect_endpoint' do

    end

    describe '#create_instance_event_window' do

    end

    describe '#create_instance_export_task' do

    end

    describe '#create_internet_gateway' do

    end

    describe '#create_ipam' do

    end

    describe '#create_ipam_pool' do

    end

    describe '#create_ipam_resource_discovery' do

    end

    describe '#create_ipam_scope' do

    end

    describe '#create_key_pair' do

    end

    describe '#create_launch_template' do

    end

    describe '#create_launch_template_version' do

    end

    describe '#create_local_gateway_route' do

    end

    describe '#create_local_gateway_route_table' do

    end

    describe '#create_local_gateway_route_table_virtual_interface_group_association' do

    end

    describe '#create_local_gateway_route_table_vpc_association' do

    end

    describe '#create_managed_prefix_list' do

    end

    describe '#create_nat_gateway' do

    end

    describe '#create_network_acl' do

    end

    describe '#create_network_acl_entry' do

    end

    describe '#create_network_insights_access_scope' do

    end

    describe '#create_network_insights_path' do

    end

    describe '#create_network_interface' do

    end

    describe '#create_network_interface_permission' do

    end

    describe '#create_placement_group' do

    end

    describe '#create_public_ipv4_pool' do

    end

    describe '#create_replace_root_volume_task' do

    end

    describe '#create_reserved_instances_listing' do

    end

    describe '#create_restore_image_task' do

    end

    describe '#create_route' do

    end

    describe '#create_route_table' do

    end

    describe '#create_security_group' do

    end

    describe '#create_snapshot' do

    end

    describe '#create_snapshots' do

    end

    describe '#create_spot_datafeed_subscription' do

    end

    describe '#create_store_image_task' do

    end

    describe '#create_subnet' do

    end

    describe '#create_subnet_cidr_reservation' do

    end

    describe '#create_tags' do

    end

    describe '#create_traffic_mirror_filter' do

    end

    describe '#create_traffic_mirror_filter_rule' do

    end

    describe '#create_traffic_mirror_session' do

    end

    describe '#create_traffic_mirror_target' do

    end

    describe '#create_transit_gateway' do

    end

    describe '#create_transit_gateway_connect' do

    end

    describe '#create_transit_gateway_connect_peer' do

    end

    describe '#create_transit_gateway_multicast_domain' do

    end

    describe '#create_transit_gateway_peering_attachment' do

    end

    describe '#create_transit_gateway_policy_table' do

    end

    describe '#create_transit_gateway_prefix_list_reference' do

    end

    describe '#create_transit_gateway_route' do

    end

    describe '#create_transit_gateway_route_table' do

    end

    describe '#create_transit_gateway_route_table_announcement' do

    end

    describe '#create_transit_gateway_vpc_attachment' do

    end

    describe '#create_verified_access_endpoint' do

    end

    describe '#create_verified_access_group' do

    end

    describe '#create_verified_access_instance' do

    end

    describe '#create_verified_access_trust_provider' do

    end

    describe '#create_volume' do

    end

    describe '#create_vpc' do

    end

    describe '#create_vpc_endpoint' do

    end

    describe '#create_vpc_endpoint_connection_notification' do

    end

    describe '#create_vpc_endpoint_service_configuration' do

    end

    describe '#create_vpc_peering_connection' do

    end

    describe '#create_vpn_connection' do

    end

    describe '#create_vpn_connection_route' do

    end

    describe '#create_vpn_gateway' do

    end

    describe '#delete_carrier_gateway' do

    end

    describe '#delete_client_vpn_endpoint' do

    end

    describe '#delete_client_vpn_route' do

    end

    describe '#delete_coip_cidr' do

    end

    describe '#delete_coip_pool' do

    end

    describe '#delete_customer_gateway' do

    end

    describe '#delete_dhcp_options' do

    end

    describe '#delete_egress_only_internet_gateway' do

    end

    describe '#delete_fleets' do

    end

    describe '#delete_flow_logs' do

    end

    describe '#delete_fpga_image' do

    end

    describe '#delete_instance_connect_endpoint' do

    end

    describe '#delete_instance_event_window' do

    end

    describe '#delete_internet_gateway' do

    end

    describe '#delete_ipam' do

    end

    describe '#delete_ipam_pool' do

    end

    describe '#delete_ipam_resource_discovery' do

    end

    describe '#delete_ipam_scope' do

    end

    describe '#delete_key_pair' do

    end

    describe '#delete_launch_template' do

    end

    describe '#delete_launch_template_versions' do

    end

    describe '#delete_local_gateway_route' do

    end

    describe '#delete_local_gateway_route_table' do

    end

    describe '#delete_local_gateway_route_table_virtual_interface_group_association' do

    end

    describe '#delete_local_gateway_route_table_vpc_association' do

    end

    describe '#delete_managed_prefix_list' do

    end

    describe '#delete_nat_gateway' do

    end

    describe '#delete_network_acl' do

    end

    describe '#delete_network_acl_entry' do

    end

    describe '#delete_network_insights_access_scope' do

    end

    describe '#delete_network_insights_access_scope_analysis' do

    end

    describe '#delete_network_insights_analysis' do

    end

    describe '#delete_network_insights_path' do

    end

    describe '#delete_network_interface' do

    end

    describe '#delete_network_interface_permission' do

    end

    describe '#delete_placement_group' do

    end

    describe '#delete_public_ipv4_pool' do

    end

    describe '#delete_queued_reserved_instances' do

    end

    describe '#delete_route' do

    end

    describe '#delete_route_table' do

    end

    describe '#delete_security_group' do

    end

    describe '#delete_snapshot' do

    end

    describe '#delete_spot_datafeed_subscription' do

    end

    describe '#delete_subnet' do

    end

    describe '#delete_subnet_cidr_reservation' do

    end

    describe '#delete_tags' do

    end

    describe '#delete_traffic_mirror_filter' do

    end

    describe '#delete_traffic_mirror_filter_rule' do

    end

    describe '#delete_traffic_mirror_session' do

    end

    describe '#delete_traffic_mirror_target' do

    end

    describe '#delete_transit_gateway' do

    end

    describe '#delete_transit_gateway_connect' do

    end

    describe '#delete_transit_gateway_connect_peer' do

    end

    describe '#delete_transit_gateway_multicast_domain' do

    end

    describe '#delete_transit_gateway_peering_attachment' do

    end

    describe '#delete_transit_gateway_policy_table' do

    end

    describe '#delete_transit_gateway_prefix_list_reference' do

    end

    describe '#delete_transit_gateway_route' do

    end

    describe '#delete_transit_gateway_route_table' do

    end

    describe '#delete_transit_gateway_route_table_announcement' do

    end

    describe '#delete_transit_gateway_vpc_attachment' do

    end

    describe '#delete_verified_access_endpoint' do

    end

    describe '#delete_verified_access_group' do

    end

    describe '#delete_verified_access_instance' do

    end

    describe '#delete_verified_access_trust_provider' do

    end

    describe '#delete_volume' do

    end

    describe '#delete_vpc' do

    end

    describe '#delete_vpc_endpoint_connection_notifications' do

    end

    describe '#delete_vpc_endpoints' do

    end

    describe '#delete_vpc_endpoint_service_configurations' do

    end

    describe '#delete_vpc_peering_connection' do

    end

    describe '#delete_vpn_connection' do

    end

    describe '#delete_vpn_connection_route' do

    end

    describe '#delete_vpn_gateway' do

    end

    describe '#deprovision_byoip_cidr' do

    end

    describe '#deprovision_ipam_pool_cidr' do

    end

    describe '#deprovision_public_ipv4_pool_cidr' do

    end

    describe '#deregister_image' do

    end

    describe '#deregister_instance_event_notification_attributes' do

    end

    describe '#deregister_transit_gateway_multicast_group_members' do

    end

    describe '#deregister_transit_gateway_multicast_group_sources' do

    end

    describe '#describe_account_attributes' do

    end

    describe '#describe_addresses' do

    end

    describe '#describe_addresses_attribute' do

    end

    describe '#describe_address_transfers' do

    end

    describe '#describe_aggregate_id_format' do

    end

    describe '#describe_availability_zones' do

    end

    describe '#describe_aws_network_performance_metric_subscriptions' do

    end

    describe '#describe_bundle_tasks' do

    end

    describe '#describe_byoip_cidrs' do

    end

    describe '#describe_capacity_reservation_fleets' do

    end

    describe '#describe_capacity_reservations' do

    end

    describe '#describe_carrier_gateways' do

    end

    describe '#describe_classic_link_instances' do

    end

    describe '#describe_client_vpn_authorization_rules' do

    end

    describe '#describe_client_vpn_connections' do

    end

    describe '#describe_client_vpn_endpoints' do

    end

    describe '#describe_client_vpn_routes' do

    end

    describe '#describe_client_vpn_target_networks' do

    end

    describe '#describe_coip_pools' do

    end

    describe '#describe_conversion_tasks' do

    end

    describe '#describe_customer_gateways' do

    end

    describe '#describe_dhcp_options' do

    end

    describe '#describe_egress_only_internet_gateways' do

    end

    describe '#describe_elastic_gpus' do

    end

    describe '#describe_export_image_tasks' do

    end

    describe '#describe_export_tasks' do

    end

    describe '#describe_fast_launch_images' do

    end

    describe '#describe_fast_snapshot_restores' do

    end

    describe '#describe_fleet_history' do

    end

    describe '#describe_fleet_instances' do

    end

    describe '#describe_fleets' do

    end

    describe '#describe_flow_logs' do

    end

    describe '#describe_fpga_image_attribute' do

    end

    describe '#describe_fpga_images' do

    end

    describe '#describe_host_reservation_offerings' do

    end

    describe '#describe_host_reservations' do

    end

    describe '#describe_hosts' do

    end

    describe '#describe_iam_instance_profile_associations' do

    end

    describe '#describe_identity_id_format' do

    end

    describe '#describe_id_format' do

    end

    describe '#describe_image_attribute' do

    end

    describe '#describe_images' do

    end

    describe '#describe_import_image_tasks' do

    end

    describe '#describe_import_snapshot_tasks' do

    end

    describe '#describe_instance_attribute' do

    end

    describe '#describe_instance_connect_endpoints' do

    end

    describe '#describe_instance_credit_specifications' do

    end

    describe '#describe_instance_event_notification_attributes' do

    end

    describe '#describe_instance_event_windows' do

    end

    describe '#describe_instances' do

    end

    describe '#describe_instance_status' do

    end

    describe '#describe_instance_type_offerings' do

    end

    describe '#describe_instance_types' do

    end

    describe '#describe_internet_gateways' do

    end

    describe '#describe_ipam_pools' do

    end

    describe '#describe_ipam_resource_discoveries' do

    end

    describe '#describe_ipam_resource_discovery_associations' do

    end

    describe '#describe_ipams' do

    end

    describe '#describe_ipam_scopes' do

    end

    describe '#describe_ipv6_pools' do

    end

    describe '#describe_key_pairs' do

    end

    describe '#describe_launch_templates' do

    end

    describe '#describe_launch_template_versions' do

    end

    describe '#describe_local_gateway_route_tables' do

    end

    describe '#describe_local_gateway_route_table_virtual_interface_group_associations' do

    end

    describe '#describe_local_gateway_route_table_vpc_associations' do

    end

    describe '#describe_local_gateways' do

    end

    describe '#describe_local_gateway_virtual_interface_groups' do

    end

    describe '#describe_local_gateway_virtual_interfaces' do

    end

    describe '#describe_managed_prefix_lists' do

    end

    describe '#describe_moving_addresses' do

    end

    describe '#describe_nat_gateways' do

    end

    describe '#describe_network_acls' do

    end

    describe '#describe_network_insights_access_scope_analyses' do

    end

    describe '#describe_network_insights_access_scopes' do

    end

    describe '#describe_network_insights_analyses' do

    end

    describe '#describe_network_insights_paths' do

    end

    describe '#describe_network_interface_attribute' do

    end

    describe '#describe_network_interface_permissions' do

    end

    describe '#describe_network_interfaces' do

    end

    describe '#describe_placement_groups' do

    end

    describe '#describe_prefix_lists' do

    end

    describe '#describe_principal_id_format' do

    end

    describe '#describe_public_ipv4_pools' do

    end

    describe '#describe_regions' do

    end

    describe '#describe_replace_root_volume_tasks' do

    end

    describe '#describe_reserved_instances' do

    end

    describe '#describe_reserved_instances_listings' do

    end

    describe '#describe_reserved_instances_modifications' do

    end

    describe '#describe_reserved_instances_offerings' do

    end

    describe '#describe_route_tables' do

    end

    describe '#describe_scheduled_instance_availability' do

    end

    describe '#describe_scheduled_instances' do

    end

    describe '#describe_security_group_references' do

    end

    describe '#describe_security_group_rules' do

    end

    describe '#describe_security_groups' do

    end

    describe '#describe_snapshot_attribute' do

    end

    describe '#describe_snapshots' do

    end

    describe '#describe_snapshot_tier_status' do

    end

    describe '#describe_spot_datafeed_subscription' do

    end

    describe '#describe_spot_fleet_instances' do

    end

    describe '#describe_spot_fleet_request_history' do

    end

    describe '#describe_spot_fleet_requests' do

    end

    describe '#describe_spot_instance_requests' do

    end

    describe '#describe_spot_price_history' do

    end

    describe '#describe_stale_security_groups' do

    end

    describe '#describe_store_image_tasks' do

    end

    describe '#describe_subnets' do

    end

    describe '#describe_tags' do

    end

    describe '#describe_traffic_mirror_filters' do

    end

    describe '#describe_traffic_mirror_sessions' do

    end

    describe '#describe_traffic_mirror_targets' do

    end

    describe '#describe_transit_gateway_attachments' do

    end

    describe '#describe_transit_gateway_connect_peers' do

    end

    describe '#describe_transit_gateway_connects' do

    end

    describe '#describe_transit_gateway_multicast_domains' do

    end

    describe '#describe_transit_gateway_peering_attachments' do

    end

    describe '#describe_transit_gateway_policy_tables' do

    end

    describe '#describe_transit_gateway_route_table_announcements' do

    end

    describe '#describe_transit_gateway_route_tables' do

    end

    describe '#describe_transit_gateways' do

    end

    describe '#describe_transit_gateway_vpc_attachments' do

    end

    describe '#describe_trunk_interface_associations' do

    end

    describe '#describe_verified_access_endpoints' do

    end

    describe '#describe_verified_access_groups' do

    end

    describe '#describe_verified_access_instance_logging_configurations' do

    end

    describe '#describe_verified_access_instances' do

    end

    describe '#describe_verified_access_trust_providers' do

    end

    describe '#describe_volume_attribute' do

    end

    describe '#describe_volumes' do

    end

    describe '#describe_volumes_modifications' do

    end

    describe '#describe_volume_status' do

    end

    describe '#describe_vpc_attribute' do

    end

    describe '#describe_vpc_classic_link' do

    end

    describe '#describe_vpc_classic_link_dns_support' do

    end

    describe '#describe_vpc_endpoint_connection_notifications' do

    end

    describe '#describe_vpc_endpoint_connections' do

    end

    describe '#describe_vpc_endpoints' do

    end

    describe '#describe_vpc_endpoint_service_configurations' do

    end

    describe '#describe_vpc_endpoint_service_permissions' do

    end

    describe '#describe_vpc_endpoint_services' do

    end

    describe '#describe_vpc_peering_connections' do

    end

    describe '#describe_vpcs' do

    end

    describe '#describe_vpn_connections' do

    end

    describe '#describe_vpn_gateways' do

    end

    describe '#detach_classic_link_vpc' do

    end

    describe '#detach_internet_gateway' do

    end

    describe '#detach_network_interface' do

    end

    describe '#detach_verified_access_trust_provider' do

    end

    describe '#detach_volume' do

    end

    describe '#detach_vpn_gateway' do

    end

    describe '#disable_address_transfer' do

    end

    describe '#disable_aws_network_performance_metric_subscription' do

    end

    describe '#disable_ebs_encryption_by_default' do

    end

    describe '#disable_fast_launch' do

    end

    describe '#disable_fast_snapshot_restores' do

    end

    describe '#disable_image_deprecation' do

    end

    describe '#disable_ipam_organization_admin_account' do

    end

    describe '#disable_serial_console_access' do

    end

    describe '#disable_transit_gateway_route_table_propagation' do

    end

    describe '#disable_vgw_route_propagation' do

    end

    describe '#disable_vpc_classic_link' do

    end

    describe '#disable_vpc_classic_link_dns_support' do

    end

    describe '#disassociate_address' do

    end

    describe '#disassociate_client_vpn_target_network' do

    end

    describe '#disassociate_enclave_certificate_iam_role' do

    end

    describe '#disassociate_iam_instance_profile' do

    end

    describe '#disassociate_instance_event_window' do

    end

    describe '#disassociate_ipam_resource_discovery' do

    end

    describe '#disassociate_nat_gateway_address' do

    end

    describe '#disassociate_route_table' do

    end

    describe '#disassociate_subnet_cidr_block' do

    end

    describe '#disassociate_transit_gateway_multicast_domain' do

    end

    describe '#disassociate_transit_gateway_policy_table' do

    end

    describe '#disassociate_transit_gateway_route_table' do

    end

    describe '#disassociate_trunk_interface' do

    end

    describe '#disassociate_vpc_cidr_block' do

    end

    describe '#enable_address_transfer' do

    end

    describe '#enable_aws_network_performance_metric_subscription' do

    end

    describe '#enable_ebs_encryption_by_default' do

    end

    describe '#enable_fast_launch' do

    end

    describe '#enable_fast_snapshot_restores' do

    end

    describe '#enable_image_deprecation' do

    end

    describe '#enable_ipam_organization_admin_account' do

    end

    describe '#enable_reachability_analyzer_organization_sharing' do

    end

    describe '#enable_serial_console_access' do

    end

    describe '#enable_transit_gateway_route_table_propagation' do

    end

    describe '#enable_vgw_route_propagation' do

    end

    describe '#enable_volume_io' do

    end

    describe '#enable_vpc_classic_link' do

    end

    describe '#enable_vpc_classic_link_dns_support' do

    end

    describe '#export_client_vpn_client_certificate_revocation_list' do

    end

    describe '#export_client_vpn_client_configuration' do

    end

    describe '#export_image' do

    end

    describe '#export_transit_gateway_routes' do

    end

    describe '#get_associated_enclave_certificate_iam_roles' do

    end

    describe '#get_associated_ipv6_pool_cidrs' do

    end

    describe '#get_aws_network_performance_data' do

    end

    describe '#get_capacity_reservation_usage' do

    end

    describe '#get_coip_pool_usage' do

    end

    describe '#get_console_output' do

    end

    describe '#get_console_screenshot' do

    end

    describe '#get_default_credit_specification' do

    end

    describe '#get_ebs_default_kms_key_id' do

    end

    describe '#get_ebs_encryption_by_default' do

    end

    describe '#get_flow_logs_integration_template' do

    end

    describe '#get_groups_for_capacity_reservation' do

    end

    describe '#get_host_reservation_purchase_preview' do

    end

    describe '#get_instance_types_from_instance_requirements' do

    end

    describe '#get_instance_uefi_data' do

    end

    describe '#get_ipam_address_history' do

    end

    describe '#get_ipam_discovered_accounts' do

    end

    describe '#get_ipam_discovered_resource_cidrs' do

    end

    describe '#get_ipam_pool_allocations' do

    end

    describe '#get_ipam_pool_cidrs' do

    end

    describe '#get_ipam_resource_cidrs' do

    end

    describe '#get_launch_template_data' do

    end

    describe '#get_managed_prefix_list_associations' do

    end

    describe '#get_managed_prefix_list_entries' do

    end

    describe '#get_network_insights_access_scope_analysis_findings' do

    end

    describe '#get_network_insights_access_scope_content' do

    end

    describe '#get_password_data' do

    end

    describe '#get_reserved_instances_exchange_quote' do

    end

    describe '#get_serial_console_access_status' do

    end

    describe '#get_spot_placement_scores' do

    end

    describe '#get_subnet_cidr_reservations' do

    end

    describe '#get_transit_gateway_attachment_propagations' do

    end

    describe '#get_transit_gateway_multicast_domain_associations' do

    end

    describe '#get_transit_gateway_policy_table_associations' do

    end

    describe '#get_transit_gateway_policy_table_entries' do

    end

    describe '#get_transit_gateway_prefix_list_references' do

    end

    describe '#get_transit_gateway_route_table_associations' do

    end

    describe '#get_transit_gateway_route_table_propagations' do

    end

    describe '#get_verified_access_endpoint_policy' do

    end

    describe '#get_verified_access_group_policy' do

    end

    describe '#get_vpn_connection_device_sample_configuration' do

    end

    describe '#get_vpn_connection_device_types' do

    end

    describe '#get_vpn_tunnel_replacement_status' do

    end

    describe '#import_client_vpn_client_certificate_revocation_list' do

    end

    describe '#import_image' do

    end

    describe '#import_instance' do

    end

    describe '#import_key_pair' do

    end

    describe '#import_snapshot' do

    end

    describe '#import_volume' do

    end

    describe '#list_images_in_recycle_bin' do

    end

    describe '#list_snapshots_in_recycle_bin' do

    end

    describe '#modify_address_attribute' do

    end

    describe '#modify_availability_zone_group' do

    end

    describe '#modify_capacity_reservation' do

    end

    describe '#modify_capacity_reservation_fleet' do

    end

    describe '#modify_client_vpn_endpoint' do

    end

    describe '#modify_default_credit_specification' do

    end

    describe '#modify_ebs_default_kms_key_id' do

    end

    describe '#modify_fleet' do

    end

    describe '#modify_fpga_image_attribute' do

    end

    describe '#modify_hosts' do

    end

    describe '#modify_identity_id_format' do

    end

    describe '#modify_id_format' do

    end

    describe '#modify_image_attribute' do

    end

    describe '#modify_instance_attribute' do

    end

    describe '#modify_instance_capacity_reservation_attributes' do

    end

    describe '#modify_instance_credit_specification' do

    end

    describe '#modify_instance_event_start_time' do

    end

    describe '#modify_instance_event_window' do

    end

    describe '#modify_instance_maintenance_options' do

    end

    describe '#modify_instance_metadata_options' do

    end

    describe '#modify_instance_placement' do

    end

    describe '#modify_ipam' do

    end

    describe '#modify_ipam_pool' do

    end

    describe '#modify_ipam_resource_cidr' do

    end

    describe '#modify_ipam_resource_discovery' do

    end

    describe '#modify_ipam_scope' do

    end

    describe '#modify_launch_template' do

    end

    describe '#modify_local_gateway_route' do

    end

    describe '#modify_managed_prefix_list' do

    end

    describe '#modify_network_interface_attribute' do

    end

    describe '#modify_private_dns_name_options' do

    end

    describe '#modify_reserved_instances' do

    end

    describe '#modify_security_group_rules' do

    end

    describe '#modify_snapshot_attribute' do

    end

    describe '#modify_snapshot_tier' do

    end

    describe '#modify_spot_fleet_request' do

    end

    describe '#modify_subnet_attribute' do

    end

    describe '#modify_traffic_mirror_filter_network_services' do

    end

    describe '#modify_traffic_mirror_filter_rule' do

    end

    describe '#modify_traffic_mirror_session' do

    end

    describe '#modify_transit_gateway' do

    end

    describe '#modify_transit_gateway_prefix_list_reference' do

    end

    describe '#modify_transit_gateway_vpc_attachment' do

    end

    describe '#modify_verified_access_endpoint' do

    end

    describe '#modify_verified_access_endpoint_policy' do

    end

    describe '#modify_verified_access_group' do

    end

    describe '#modify_verified_access_group_policy' do

    end

    describe '#modify_verified_access_instance' do

    end

    describe '#modify_verified_access_instance_logging_configuration' do

    end

    describe '#modify_verified_access_trust_provider' do

    end

    describe '#modify_volume' do

    end

    describe '#modify_volume_attribute' do

    end

    describe '#modify_vpc_attribute' do

    end

    describe '#modify_vpc_endpoint' do

    end

    describe '#modify_vpc_endpoint_connection_notification' do

    end

    describe '#modify_vpc_endpoint_service_configuration' do

    end

    describe '#modify_vpc_endpoint_service_payer_responsibility' do

    end

    describe '#modify_vpc_endpoint_service_permissions' do

    end

    describe '#modify_vpc_peering_connection_options' do

    end

    describe '#modify_vpc_tenancy' do

    end

    describe '#modify_vpn_connection' do

    end

    describe '#modify_vpn_connection_options' do

    end

    describe '#modify_vpn_tunnel_certificate' do

    end

    describe '#modify_vpn_tunnel_options' do

    end

    describe '#monitor_instances' do

    end

    describe '#move_address_to_vpc' do

    end

    describe '#move_byoip_cidr_to_ipam' do

    end

    describe '#provision_byoip_cidr' do

    end

    describe '#provision_ipam_pool_cidr' do

    end

    describe '#provision_public_ipv4_pool_cidr' do

    end

    describe '#purchase_host_reservation' do

    end

    describe '#purchase_reserved_instances_offering' do

    end

    describe '#purchase_scheduled_instances' do

    end

    describe '#reboot_instances' do

    end

    describe '#register_image' do

    end

    describe '#register_instance_event_notification_attributes' do

    end

    describe '#register_transit_gateway_multicast_group_members' do

    end

    describe '#register_transit_gateway_multicast_group_sources' do

    end

    describe '#reject_transit_gateway_multicast_domain_associations' do

    end

    describe '#reject_transit_gateway_peering_attachment' do

    end

    describe '#reject_transit_gateway_vpc_attachment' do

    end

    describe '#reject_vpc_endpoint_connections' do

    end

    describe '#reject_vpc_peering_connection' do

    end

    describe '#release_address' do

    end

    describe '#release_hosts' do

    end

    describe '#release_ipam_pool_allocation' do

    end

    describe '#replace_iam_instance_profile_association' do

    end

    describe '#replace_network_acl_association' do

    end

    describe '#replace_network_acl_entry' do

    end

    describe '#replace_route' do

    end

    describe '#replace_route_table_association' do

    end

    describe '#replace_transit_gateway_route' do

    end

    describe '#replace_vpn_tunnel' do

    end

    describe '#report_instance_status' do

    end

    describe '#request_spot_fleet' do

    end

    describe '#request_spot_instances' do

    end

    describe '#reset_address_attribute' do

    end

    describe '#reset_ebs_default_kms_key_id' do

    end

    describe '#reset_fpga_image_attribute' do

    end

    describe '#reset_image_attribute' do

    end

    describe '#reset_instance_attribute' do

    end

    describe '#reset_network_interface_attribute' do

    end

    describe '#reset_snapshot_attribute' do

    end

    describe '#restore_address_to_classic' do

    end

    describe '#restore_image_from_recycle_bin' do

    end

    describe '#restore_managed_prefix_list_version' do

    end

    describe '#restore_snapshot_from_recycle_bin' do

    end

    describe '#restore_snapshot_tier' do

    end

    describe '#revoke_client_vpn_ingress' do

    end

    describe '#revoke_security_group_egress' do

    end

    describe '#revoke_security_group_ingress' do

    end

    describe '#run_instances' do

    end

    describe '#run_scheduled_instances' do

    end

    describe '#search_local_gateway_routes' do

    end

    describe '#search_transit_gateway_multicast_groups' do

    end

    describe '#search_transit_gateway_routes' do

    end

    describe '#send_diagnostic_interrupt' do

    end

    describe '#start_instances' do

    end

    describe '#start_network_insights_access_scope_analysis' do

    end

    describe '#start_network_insights_analysis' do

    end

    describe '#start_vpc_endpoint_service_private_dns_verification' do

    end

    describe '#stop_instances' do

    end

    describe '#terminate_client_vpn_connections' do

    end

    describe '#terminate_instances' do

    end

    describe '#unassign_ipv6_addresses' do

    end

    describe '#unassign_private_ip_addresses' do

    end

    describe '#unassign_private_nat_gateway_address' do

    end

    describe '#unmonitor_instances' do

    end

    describe '#update_security_group_rule_descriptions_egress' do

    end

    describe '#update_security_group_rule_descriptions_ingress' do

    end

    describe '#withdraw_byoip_cidr' do

    end

  end
end
