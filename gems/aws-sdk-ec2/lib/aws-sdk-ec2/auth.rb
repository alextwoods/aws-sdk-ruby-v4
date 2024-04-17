# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::EC2
  module Auth
    Params = Struct.new(:operation_name, :region, keyword_init: true)

    SCHEMES = [
      AWS::SDK::Core::AuthSchemes::SigV4.new,
      Hearth::AuthSchemes::Anonymous.new
    ].freeze

    class Resolver

      def resolve(params)
        options = []
        case params.operation_name
        when :accept_address_transfer
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :accept_reserved_instances_exchange_quote
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :accept_transit_gateway_multicast_domain_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :accept_transit_gateway_peering_attachment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :accept_transit_gateway_vpc_attachment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :accept_vpc_endpoint_connections
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :accept_vpc_peering_connection
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :advertise_byoip_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :allocate_address
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :allocate_hosts
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :allocate_ipam_pool_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :apply_security_groups_to_client_vpn_target_network
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :assign_ipv6_addresses
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :assign_private_ip_addresses
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :assign_private_nat_gateway_address
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :associate_address
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :associate_client_vpn_target_network
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :associate_dhcp_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :associate_enclave_certificate_iam_role
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :associate_iam_instance_profile
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :associate_instance_event_window
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :associate_ipam_byoasn
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :associate_ipam_resource_discovery
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :associate_nat_gateway_address
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :associate_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :associate_subnet_cidr_block
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :associate_transit_gateway_multicast_domain
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :associate_transit_gateway_policy_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :associate_transit_gateway_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :associate_trunk_interface
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :associate_vpc_cidr_block
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :attach_classic_link_vpc
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :attach_internet_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :attach_network_interface
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :attach_verified_access_trust_provider
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :attach_volume
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :attach_vpn_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :authorize_client_vpn_ingress
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :authorize_security_group_egress
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :authorize_security_group_ingress
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :bundle_instance
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :cancel_bundle_task
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :cancel_capacity_reservation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :cancel_capacity_reservation_fleets
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :cancel_conversion_task
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :cancel_export_task
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :cancel_image_launch_permission
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :cancel_import_task
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :cancel_reserved_instances_listing
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :cancel_spot_fleet_requests
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :cancel_spot_instance_requests
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :confirm_product_instance
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :copy_fpga_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :copy_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :copy_snapshot
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_capacity_reservation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_capacity_reservation_fleet
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_carrier_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_client_vpn_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_client_vpn_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_coip_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_coip_pool
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_customer_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_default_subnet
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_default_vpc
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_dhcp_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_egress_only_internet_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_fleet
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_flow_logs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_fpga_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_instance_connect_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_instance_event_window
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_instance_export_task
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_internet_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_ipam
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_ipam_pool
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_ipam_resource_discovery
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_ipam_scope
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_key_pair
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_launch_template
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_launch_template_version
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_local_gateway_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_local_gateway_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_local_gateway_route_table_virtual_interface_group_association
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_local_gateway_route_table_vpc_association
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_managed_prefix_list
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_nat_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_network_acl
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_network_acl_entry
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_network_insights_access_scope
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_network_insights_path
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_network_interface
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_network_interface_permission
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_placement_group
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_public_ipv4_pool
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_replace_root_volume_task
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_reserved_instances_listing
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_restore_image_task
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_security_group
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_snapshot
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_snapshots
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_spot_datafeed_subscription
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_store_image_task
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_subnet
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_subnet_cidr_reservation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_tags
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_traffic_mirror_filter
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_traffic_mirror_filter_rule
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_traffic_mirror_session
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_traffic_mirror_target
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_transit_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_transit_gateway_connect
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_transit_gateway_connect_peer
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_transit_gateway_multicast_domain
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_transit_gateway_peering_attachment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_transit_gateway_policy_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_transit_gateway_prefix_list_reference
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_transit_gateway_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_transit_gateway_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_transit_gateway_route_table_announcement
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_transit_gateway_vpc_attachment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_verified_access_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_verified_access_group
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_verified_access_instance
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_verified_access_trust_provider
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_volume
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_vpc
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_vpc_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_vpc_endpoint_connection_notification
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_vpc_endpoint_service_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_vpc_peering_connection
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_vpn_connection
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_vpn_connection_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :create_vpn_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_carrier_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_client_vpn_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_client_vpn_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_coip_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_coip_pool
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_customer_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_dhcp_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_egress_only_internet_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_fleets
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_flow_logs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_fpga_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_instance_connect_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_instance_event_window
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_internet_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_ipam
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_ipam_pool
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_ipam_resource_discovery
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_ipam_scope
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_key_pair
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_launch_template
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_launch_template_versions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_local_gateway_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_local_gateway_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_local_gateway_route_table_virtual_interface_group_association
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_local_gateway_route_table_vpc_association
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_managed_prefix_list
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_nat_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_network_acl
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_network_acl_entry
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_network_insights_access_scope
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_network_insights_access_scope_analysis
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_network_insights_analysis
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_network_insights_path
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_network_interface
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_network_interface_permission
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_placement_group
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_public_ipv4_pool
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_queued_reserved_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_security_group
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_snapshot
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_spot_datafeed_subscription
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_subnet
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_subnet_cidr_reservation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_tags
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_traffic_mirror_filter
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_traffic_mirror_filter_rule
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_traffic_mirror_session
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_traffic_mirror_target
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_transit_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_transit_gateway_connect
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_transit_gateway_connect_peer
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_transit_gateway_multicast_domain
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_transit_gateway_peering_attachment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_transit_gateway_policy_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_transit_gateway_prefix_list_reference
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_transit_gateway_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_transit_gateway_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_transit_gateway_route_table_announcement
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_transit_gateway_vpc_attachment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_verified_access_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_verified_access_group
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_verified_access_instance
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_verified_access_trust_provider
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_volume
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_vpc
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_vpc_endpoint_connection_notifications
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_vpc_endpoints
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_vpc_endpoint_service_configurations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_vpc_peering_connection
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_vpn_connection
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_vpn_connection_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :delete_vpn_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :deprovision_byoip_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :deprovision_ipam_byoasn
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :deprovision_ipam_pool_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :deprovision_public_ipv4_pool_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :deregister_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :deregister_instance_event_notification_attributes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :deregister_transit_gateway_multicast_group_members
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :deregister_transit_gateway_multicast_group_sources
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_account_attributes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_addresses
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_addresses_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_address_transfers
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_aggregate_id_format
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_availability_zones
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_aws_network_performance_metric_subscriptions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_bundle_tasks
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_byoip_cidrs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_capacity_block_offerings
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_capacity_reservation_fleets
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_capacity_reservations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_carrier_gateways
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_classic_link_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_client_vpn_authorization_rules
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_client_vpn_connections
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_client_vpn_endpoints
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_client_vpn_routes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_client_vpn_target_networks
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_coip_pools
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_conversion_tasks
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_customer_gateways
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_dhcp_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_egress_only_internet_gateways
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_elastic_gpus
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_export_image_tasks
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_export_tasks
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_fast_launch_images
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_fast_snapshot_restores
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_fleet_history
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_fleet_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_fleets
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_flow_logs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_fpga_image_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_fpga_images
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_host_reservation_offerings
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_host_reservations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_hosts
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_iam_instance_profile_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_identity_id_format
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_id_format
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_image_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_images
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_import_image_tasks
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_import_snapshot_tasks
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_instance_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_instance_connect_endpoints
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_instance_credit_specifications
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_instance_event_notification_attributes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_instance_event_windows
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_instance_status
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_instance_topology
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_instance_type_offerings
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_instance_types
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_internet_gateways
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_ipam_byoasn
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_ipam_pools
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_ipam_resource_discoveries
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_ipam_resource_discovery_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_ipams
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_ipam_scopes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_ipv6_pools
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_key_pairs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_launch_templates
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_launch_template_versions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_local_gateway_route_tables
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_local_gateway_route_table_virtual_interface_group_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_local_gateway_route_table_vpc_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_local_gateways
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_local_gateway_virtual_interface_groups
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_local_gateway_virtual_interfaces
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_locked_snapshots
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_managed_prefix_lists
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_moving_addresses
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_nat_gateways
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_network_acls
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_network_insights_access_scope_analyses
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_network_insights_access_scopes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_network_insights_analyses
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_network_insights_paths
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_network_interface_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_network_interface_permissions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_network_interfaces
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_placement_groups
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_prefix_lists
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_principal_id_format
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_public_ipv4_pools
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_regions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_replace_root_volume_tasks
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_reserved_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_reserved_instances_listings
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_reserved_instances_modifications
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_reserved_instances_offerings
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_route_tables
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_scheduled_instance_availability
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_scheduled_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_security_group_references
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_security_group_rules
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_security_groups
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_snapshot_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_snapshots
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_snapshot_tier_status
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_spot_datafeed_subscription
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_spot_fleet_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_spot_fleet_request_history
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_spot_fleet_requests
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_spot_instance_requests
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_spot_price_history
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_stale_security_groups
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_store_image_tasks
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_subnets
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_tags
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_traffic_mirror_filters
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_traffic_mirror_sessions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_traffic_mirror_targets
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_transit_gateway_attachments
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_transit_gateway_connect_peers
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_transit_gateway_connects
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_transit_gateway_multicast_domains
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_transit_gateway_peering_attachments
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_transit_gateway_policy_tables
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_transit_gateway_route_table_announcements
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_transit_gateway_route_tables
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_transit_gateways
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_transit_gateway_vpc_attachments
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_trunk_interface_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_verified_access_endpoints
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_verified_access_groups
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_verified_access_instance_logging_configurations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_verified_access_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_verified_access_trust_providers
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_volume_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_volumes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_volumes_modifications
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_volume_status
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_vpc_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_vpc_classic_link
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_vpc_classic_link_dns_support
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_vpc_endpoint_connection_notifications
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_vpc_endpoint_connections
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_vpc_endpoints
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_vpc_endpoint_service_configurations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_vpc_endpoint_service_permissions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_vpc_endpoint_services
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_vpc_peering_connections
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_vpcs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_vpn_connections
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :describe_vpn_gateways
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :detach_classic_link_vpc
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :detach_internet_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :detach_network_interface
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :detach_verified_access_trust_provider
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :detach_volume
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :detach_vpn_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disable_address_transfer
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disable_aws_network_performance_metric_subscription
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disable_ebs_encryption_by_default
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disable_fast_launch
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disable_fast_snapshot_restores
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disable_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disable_image_block_public_access
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disable_image_deprecation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disable_ipam_organization_admin_account
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disable_serial_console_access
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disable_snapshot_block_public_access
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disable_transit_gateway_route_table_propagation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disable_vgw_route_propagation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disable_vpc_classic_link
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disable_vpc_classic_link_dns_support
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disassociate_address
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disassociate_client_vpn_target_network
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disassociate_enclave_certificate_iam_role
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disassociate_iam_instance_profile
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disassociate_instance_event_window
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disassociate_ipam_byoasn
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disassociate_ipam_resource_discovery
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disassociate_nat_gateway_address
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disassociate_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disassociate_subnet_cidr_block
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disassociate_transit_gateway_multicast_domain
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disassociate_transit_gateway_policy_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disassociate_transit_gateway_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disassociate_trunk_interface
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :disassociate_vpc_cidr_block
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :enable_address_transfer
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :enable_aws_network_performance_metric_subscription
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :enable_ebs_encryption_by_default
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :enable_fast_launch
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :enable_fast_snapshot_restores
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :enable_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :enable_image_block_public_access
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :enable_image_deprecation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :enable_ipam_organization_admin_account
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :enable_reachability_analyzer_organization_sharing
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :enable_serial_console_access
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :enable_snapshot_block_public_access
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :enable_transit_gateway_route_table_propagation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :enable_vgw_route_propagation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :enable_volume_io
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :enable_vpc_classic_link
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :enable_vpc_classic_link_dns_support
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :export_client_vpn_client_certificate_revocation_list
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :export_client_vpn_client_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :export_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :export_transit_gateway_routes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_associated_enclave_certificate_iam_roles
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_associated_ipv6_pool_cidrs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_aws_network_performance_data
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_capacity_reservation_usage
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_coip_pool_usage
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_console_output
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_console_screenshot
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_default_credit_specification
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_ebs_default_kms_key_id
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_ebs_encryption_by_default
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_flow_logs_integration_template
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_groups_for_capacity_reservation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_host_reservation_purchase_preview
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_image_block_public_access_state
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_instance_types_from_instance_requirements
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_instance_uefi_data
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_ipam_address_history
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_ipam_discovered_accounts
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_ipam_discovered_public_addresses
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_ipam_discovered_resource_cidrs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_ipam_pool_allocations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_ipam_pool_cidrs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_ipam_resource_cidrs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_launch_template_data
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_managed_prefix_list_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_managed_prefix_list_entries
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_network_insights_access_scope_analysis_findings
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_network_insights_access_scope_content
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_password_data
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_reserved_instances_exchange_quote
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_security_groups_for_vpc
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_serial_console_access_status
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_snapshot_block_public_access_state
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_spot_placement_scores
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_subnet_cidr_reservations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_transit_gateway_attachment_propagations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_transit_gateway_multicast_domain_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_transit_gateway_policy_table_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_transit_gateway_policy_table_entries
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_transit_gateway_prefix_list_references
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_transit_gateway_route_table_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_transit_gateway_route_table_propagations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_verified_access_endpoint_policy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_verified_access_group_policy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_vpn_connection_device_sample_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_vpn_connection_device_types
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :get_vpn_tunnel_replacement_status
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :import_client_vpn_client_certificate_revocation_list
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :import_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :import_instance
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :import_key_pair
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :import_snapshot
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :import_volume
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :list_images_in_recycle_bin
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :list_snapshots_in_recycle_bin
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :lock_snapshot
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_address_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_availability_zone_group
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_capacity_reservation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_capacity_reservation_fleet
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_client_vpn_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_default_credit_specification
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_ebs_default_kms_key_id
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_fleet
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_fpga_image_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_hosts
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_identity_id_format
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_id_format
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_image_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_instance_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_instance_capacity_reservation_attributes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_instance_credit_specification
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_instance_event_start_time
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_instance_event_window
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_instance_maintenance_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_instance_metadata_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_instance_placement
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_ipam
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_ipam_pool
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_ipam_resource_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_ipam_resource_discovery
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_ipam_scope
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_launch_template
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_local_gateway_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_managed_prefix_list
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_network_interface_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_private_dns_name_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_reserved_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_security_group_rules
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_snapshot_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_snapshot_tier
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_spot_fleet_request
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_subnet_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_traffic_mirror_filter_network_services
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_traffic_mirror_filter_rule
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_traffic_mirror_session
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_transit_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_transit_gateway_prefix_list_reference
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_transit_gateway_vpc_attachment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_verified_access_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_verified_access_endpoint_policy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_verified_access_group
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_verified_access_group_policy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_verified_access_instance
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_verified_access_instance_logging_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_verified_access_trust_provider
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_volume
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_volume_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_vpc_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_vpc_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_vpc_endpoint_connection_notification
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_vpc_endpoint_service_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_vpc_endpoint_service_payer_responsibility
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_vpc_endpoint_service_permissions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_vpc_peering_connection_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_vpc_tenancy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_vpn_connection
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_vpn_connection_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_vpn_tunnel_certificate
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :modify_vpn_tunnel_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :monitor_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :move_address_to_vpc
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :move_byoip_cidr_to_ipam
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :provision_byoip_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :provision_ipam_byoasn
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :provision_ipam_pool_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :provision_public_ipv4_pool_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :purchase_capacity_block
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :purchase_host_reservation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :purchase_reserved_instances_offering
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :purchase_scheduled_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :reboot_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :register_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :register_instance_event_notification_attributes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :register_transit_gateway_multicast_group_members
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :register_transit_gateway_multicast_group_sources
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :reject_transit_gateway_multicast_domain_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :reject_transit_gateway_peering_attachment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :reject_transit_gateway_vpc_attachment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :reject_vpc_endpoint_connections
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :reject_vpc_peering_connection
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :release_address
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :release_hosts
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :release_ipam_pool_allocation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :replace_iam_instance_profile_association
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :replace_network_acl_association
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :replace_network_acl_entry
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :replace_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :replace_route_table_association
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :replace_transit_gateway_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :replace_vpn_tunnel
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :report_instance_status
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :request_spot_fleet
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :request_spot_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :reset_address_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :reset_ebs_default_kms_key_id
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :reset_fpga_image_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :reset_image_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :reset_instance_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :reset_network_interface_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :reset_snapshot_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :restore_address_to_classic
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :restore_image_from_recycle_bin
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :restore_managed_prefix_list_version
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :restore_snapshot_from_recycle_bin
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :restore_snapshot_tier
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :revoke_client_vpn_ingress
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :revoke_security_group_egress
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :revoke_security_group_ingress
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :run_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :run_scheduled_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :search_local_gateway_routes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :search_transit_gateway_multicast_groups
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :search_transit_gateway_routes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :send_diagnostic_interrupt
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :start_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :start_network_insights_access_scope_analysis
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :start_network_insights_analysis
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :start_vpc_endpoint_service_private_dns_verification
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :stop_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :terminate_client_vpn_connections
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :terminate_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :unassign_ipv6_addresses
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :unassign_private_ip_addresses
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :unassign_private_nat_gateway_address
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :unlock_snapshot
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :unmonitor_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :update_security_group_rule_descriptions_egress
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :update_security_group_rule_descriptions_ingress
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        when :withdraw_byoip_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { service: 'ec2', region: params.region })
        else nil
        end
        options
      end

    end
  end
end
