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
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :accept_reserved_instances_exchange_quote
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :accept_transit_gateway_multicast_domain_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :accept_transit_gateway_peering_attachment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :accept_transit_gateway_vpc_attachment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :accept_vpc_endpoint_connections
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :accept_vpc_peering_connection
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :advertise_byoip_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :allocate_address
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :allocate_hosts
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :allocate_ipam_pool_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :apply_security_groups_to_client_vpn_target_network
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :assign_ipv6_addresses
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :assign_private_ip_addresses
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :assign_private_nat_gateway_address
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :associate_address
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :associate_client_vpn_target_network
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :associate_dhcp_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :associate_enclave_certificate_iam_role
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :associate_iam_instance_profile
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :associate_instance_event_window
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :associate_ipam_byoasn
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :associate_ipam_resource_discovery
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :associate_nat_gateway_address
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :associate_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :associate_subnet_cidr_block
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :associate_transit_gateway_multicast_domain
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :associate_transit_gateway_policy_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :associate_transit_gateway_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :associate_trunk_interface
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :associate_vpc_cidr_block
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :attach_classic_link_vpc
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :attach_internet_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :attach_network_interface
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :attach_verified_access_trust_provider
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :attach_volume
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :attach_vpn_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :authorize_client_vpn_ingress
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :authorize_security_group_egress
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :authorize_security_group_ingress
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :bundle_instance
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :cancel_bundle_task
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :cancel_capacity_reservation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :cancel_capacity_reservation_fleets
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :cancel_conversion_task
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :cancel_export_task
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :cancel_image_launch_permission
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :cancel_import_task
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :cancel_reserved_instances_listing
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :cancel_spot_fleet_requests
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :cancel_spot_instance_requests
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :confirm_product_instance
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :copy_fpga_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :copy_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :copy_snapshot
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_capacity_reservation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_capacity_reservation_fleet
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_carrier_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_client_vpn_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_client_vpn_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_coip_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_coip_pool
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_customer_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_default_subnet
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_default_vpc
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_dhcp_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_egress_only_internet_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_fleet
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_flow_logs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_fpga_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_instance_connect_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_instance_event_window
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_instance_export_task
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_internet_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_ipam
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_ipam_pool
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_ipam_resource_discovery
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_ipam_scope
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_key_pair
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_launch_template
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_launch_template_version
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_local_gateway_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_local_gateway_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_local_gateway_route_table_virtual_interface_group_association
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_local_gateway_route_table_vpc_association
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_managed_prefix_list
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_nat_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_network_acl
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_network_acl_entry
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_network_insights_access_scope
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_network_insights_path
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_network_interface
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_network_interface_permission
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_placement_group
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_public_ipv4_pool
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_replace_root_volume_task
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_reserved_instances_listing
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_restore_image_task
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_security_group
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_snapshot
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_snapshots
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_spot_datafeed_subscription
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_store_image_task
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_subnet
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_subnet_cidr_reservation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_tags
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_traffic_mirror_filter
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_traffic_mirror_filter_rule
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_traffic_mirror_session
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_traffic_mirror_target
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_transit_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_transit_gateway_connect
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_transit_gateway_connect_peer
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_transit_gateway_multicast_domain
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_transit_gateway_peering_attachment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_transit_gateway_policy_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_transit_gateway_prefix_list_reference
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_transit_gateway_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_transit_gateway_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_transit_gateway_route_table_announcement
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_transit_gateway_vpc_attachment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_verified_access_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_verified_access_group
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_verified_access_instance
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_verified_access_trust_provider
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_volume
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_vpc
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_vpc_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_vpc_endpoint_connection_notification
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_vpc_endpoint_service_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_vpc_peering_connection
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_vpn_connection
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_vpn_connection_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :create_vpn_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_carrier_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_client_vpn_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_client_vpn_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_coip_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_coip_pool
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_customer_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_dhcp_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_egress_only_internet_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_fleets
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_flow_logs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_fpga_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_instance_connect_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_instance_event_window
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_internet_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_ipam
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_ipam_pool
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_ipam_resource_discovery
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_ipam_scope
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_key_pair
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_launch_template
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_launch_template_versions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_local_gateway_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_local_gateway_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_local_gateway_route_table_virtual_interface_group_association
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_local_gateway_route_table_vpc_association
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_managed_prefix_list
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_nat_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_network_acl
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_network_acl_entry
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_network_insights_access_scope
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_network_insights_access_scope_analysis
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_network_insights_analysis
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_network_insights_path
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_network_interface
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_network_interface_permission
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_placement_group
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_public_ipv4_pool
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_queued_reserved_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_security_group
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_snapshot
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_spot_datafeed_subscription
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_subnet
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_subnet_cidr_reservation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_tags
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_traffic_mirror_filter
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_traffic_mirror_filter_rule
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_traffic_mirror_session
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_traffic_mirror_target
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_transit_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_transit_gateway_connect
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_transit_gateway_connect_peer
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_transit_gateway_multicast_domain
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_transit_gateway_peering_attachment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_transit_gateway_policy_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_transit_gateway_prefix_list_reference
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_transit_gateway_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_transit_gateway_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_transit_gateway_route_table_announcement
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_transit_gateway_vpc_attachment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_verified_access_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_verified_access_group
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_verified_access_instance
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_verified_access_trust_provider
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_volume
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_vpc
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_vpc_endpoint_connection_notifications
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_vpc_endpoints
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_vpc_endpoint_service_configurations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_vpc_peering_connection
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_vpn_connection
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_vpn_connection_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :delete_vpn_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :deprovision_byoip_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :deprovision_ipam_byoasn
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :deprovision_ipam_pool_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :deprovision_public_ipv4_pool_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :deregister_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :deregister_instance_event_notification_attributes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :deregister_transit_gateway_multicast_group_members
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :deregister_transit_gateway_multicast_group_sources
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_account_attributes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_addresses
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_addresses_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_address_transfers
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_aggregate_id_format
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_availability_zones
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_aws_network_performance_metric_subscriptions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_bundle_tasks
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_byoip_cidrs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_capacity_block_offerings
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_capacity_reservation_fleets
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_capacity_reservations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_carrier_gateways
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_classic_link_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_client_vpn_authorization_rules
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_client_vpn_connections
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_client_vpn_endpoints
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_client_vpn_routes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_client_vpn_target_networks
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_coip_pools
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_conversion_tasks
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_customer_gateways
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_dhcp_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_egress_only_internet_gateways
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_elastic_gpus
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_export_image_tasks
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_export_tasks
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_fast_launch_images
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_fast_snapshot_restores
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_fleet_history
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_fleet_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_fleets
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_flow_logs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_fpga_image_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_fpga_images
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_host_reservation_offerings
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_host_reservations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_hosts
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_iam_instance_profile_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_identity_id_format
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_id_format
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_image_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_images
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_import_image_tasks
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_import_snapshot_tasks
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_instance_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_instance_connect_endpoints
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_instance_credit_specifications
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_instance_event_notification_attributes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_instance_event_windows
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_instance_status
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_instance_topology
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_instance_type_offerings
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_instance_types
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_internet_gateways
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_ipam_byoasn
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_ipam_pools
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_ipam_resource_discoveries
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_ipam_resource_discovery_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_ipams
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_ipam_scopes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_ipv6_pools
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_key_pairs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_launch_templates
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_launch_template_versions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_local_gateway_route_tables
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_local_gateway_route_table_virtual_interface_group_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_local_gateway_route_table_vpc_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_local_gateways
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_local_gateway_virtual_interface_groups
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_local_gateway_virtual_interfaces
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_locked_snapshots
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_managed_prefix_lists
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_moving_addresses
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_nat_gateways
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_network_acls
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_network_insights_access_scope_analyses
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_network_insights_access_scopes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_network_insights_analyses
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_network_insights_paths
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_network_interface_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_network_interface_permissions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_network_interfaces
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_placement_groups
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_prefix_lists
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_principal_id_format
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_public_ipv4_pools
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_regions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_replace_root_volume_tasks
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_reserved_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_reserved_instances_listings
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_reserved_instances_modifications
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_reserved_instances_offerings
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_route_tables
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_scheduled_instance_availability
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_scheduled_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_security_group_references
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_security_group_rules
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_security_groups
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_snapshot_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_snapshots
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_snapshot_tier_status
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_spot_datafeed_subscription
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_spot_fleet_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_spot_fleet_request_history
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_spot_fleet_requests
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_spot_instance_requests
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_spot_price_history
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_stale_security_groups
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_store_image_tasks
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_subnets
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_tags
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_traffic_mirror_filters
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_traffic_mirror_sessions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_traffic_mirror_targets
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_transit_gateway_attachments
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_transit_gateway_connect_peers
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_transit_gateway_connects
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_transit_gateway_multicast_domains
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_transit_gateway_peering_attachments
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_transit_gateway_policy_tables
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_transit_gateway_route_table_announcements
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_transit_gateway_route_tables
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_transit_gateways
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_transit_gateway_vpc_attachments
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_trunk_interface_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_verified_access_endpoints
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_verified_access_groups
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_verified_access_instance_logging_configurations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_verified_access_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_verified_access_trust_providers
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_volume_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_volumes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_volumes_modifications
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_volume_status
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_vpc_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_vpc_classic_link
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_vpc_classic_link_dns_support
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_vpc_endpoint_connection_notifications
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_vpc_endpoint_connections
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_vpc_endpoints
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_vpc_endpoint_service_configurations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_vpc_endpoint_service_permissions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_vpc_endpoint_services
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_vpc_peering_connections
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_vpcs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_vpn_connections
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :describe_vpn_gateways
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :detach_classic_link_vpc
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :detach_internet_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :detach_network_interface
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :detach_verified_access_trust_provider
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :detach_volume
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :detach_vpn_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disable_address_transfer
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disable_aws_network_performance_metric_subscription
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disable_ebs_encryption_by_default
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disable_fast_launch
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disable_fast_snapshot_restores
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disable_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disable_image_block_public_access
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disable_image_deprecation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disable_ipam_organization_admin_account
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disable_serial_console_access
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disable_snapshot_block_public_access
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disable_transit_gateway_route_table_propagation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disable_vgw_route_propagation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disable_vpc_classic_link
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disable_vpc_classic_link_dns_support
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disassociate_address
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disassociate_client_vpn_target_network
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disassociate_enclave_certificate_iam_role
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disassociate_iam_instance_profile
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disassociate_instance_event_window
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disassociate_ipam_byoasn
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disassociate_ipam_resource_discovery
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disassociate_nat_gateway_address
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disassociate_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disassociate_subnet_cidr_block
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disassociate_transit_gateway_multicast_domain
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disassociate_transit_gateway_policy_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disassociate_transit_gateway_route_table
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disassociate_trunk_interface
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :disassociate_vpc_cidr_block
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :enable_address_transfer
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :enable_aws_network_performance_metric_subscription
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :enable_ebs_encryption_by_default
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :enable_fast_launch
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :enable_fast_snapshot_restores
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :enable_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :enable_image_block_public_access
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :enable_image_deprecation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :enable_ipam_organization_admin_account
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :enable_reachability_analyzer_organization_sharing
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :enable_serial_console_access
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :enable_snapshot_block_public_access
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :enable_transit_gateway_route_table_propagation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :enable_vgw_route_propagation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :enable_volume_io
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :enable_vpc_classic_link
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :enable_vpc_classic_link_dns_support
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :export_client_vpn_client_certificate_revocation_list
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :export_client_vpn_client_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :export_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :export_transit_gateway_routes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_associated_enclave_certificate_iam_roles
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_associated_ipv6_pool_cidrs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_aws_network_performance_data
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_capacity_reservation_usage
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_coip_pool_usage
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_console_output
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_console_screenshot
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_default_credit_specification
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_ebs_default_kms_key_id
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_ebs_encryption_by_default
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_flow_logs_integration_template
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_groups_for_capacity_reservation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_host_reservation_purchase_preview
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_image_block_public_access_state
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_instance_types_from_instance_requirements
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_instance_uefi_data
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_ipam_address_history
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_ipam_discovered_accounts
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_ipam_discovered_public_addresses
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_ipam_discovered_resource_cidrs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_ipam_pool_allocations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_ipam_pool_cidrs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_ipam_resource_cidrs
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_launch_template_data
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_managed_prefix_list_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_managed_prefix_list_entries
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_network_insights_access_scope_analysis_findings
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_network_insights_access_scope_content
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_password_data
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_reserved_instances_exchange_quote
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_security_groups_for_vpc
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_serial_console_access_status
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_snapshot_block_public_access_state
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_spot_placement_scores
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_subnet_cidr_reservations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_transit_gateway_attachment_propagations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_transit_gateway_multicast_domain_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_transit_gateway_policy_table_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_transit_gateway_policy_table_entries
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_transit_gateway_prefix_list_references
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_transit_gateway_route_table_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_transit_gateway_route_table_propagations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_verified_access_endpoint_policy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_verified_access_group_policy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_vpn_connection_device_sample_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_vpn_connection_device_types
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :get_vpn_tunnel_replacement_status
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :import_client_vpn_client_certificate_revocation_list
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :import_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :import_instance
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :import_key_pair
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :import_snapshot
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :import_volume
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :list_images_in_recycle_bin
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :list_snapshots_in_recycle_bin
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :lock_snapshot
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_address_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_availability_zone_group
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_capacity_reservation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_capacity_reservation_fleet
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_client_vpn_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_default_credit_specification
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_ebs_default_kms_key_id
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_fleet
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_fpga_image_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_hosts
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_identity_id_format
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_id_format
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_image_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_instance_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_instance_capacity_reservation_attributes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_instance_credit_specification
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_instance_event_start_time
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_instance_event_window
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_instance_maintenance_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_instance_metadata_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_instance_placement
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_ipam
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_ipam_pool
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_ipam_resource_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_ipam_resource_discovery
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_ipam_scope
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_launch_template
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_local_gateway_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_managed_prefix_list
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_network_interface_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_private_dns_name_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_reserved_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_security_group_rules
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_snapshot_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_snapshot_tier
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_spot_fleet_request
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_subnet_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_traffic_mirror_filter_network_services
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_traffic_mirror_filter_rule
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_traffic_mirror_session
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_transit_gateway
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_transit_gateway_prefix_list_reference
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_transit_gateway_vpc_attachment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_verified_access_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_verified_access_endpoint_policy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_verified_access_group
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_verified_access_group_policy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_verified_access_instance
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_verified_access_instance_logging_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_verified_access_trust_provider
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_volume
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_volume_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_vpc_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_vpc_endpoint
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_vpc_endpoint_connection_notification
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_vpc_endpoint_service_configuration
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_vpc_endpoint_service_payer_responsibility
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_vpc_endpoint_service_permissions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_vpc_peering_connection_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_vpc_tenancy
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_vpn_connection
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_vpn_connection_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_vpn_tunnel_certificate
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :modify_vpn_tunnel_options
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :monitor_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :move_address_to_vpc
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :move_byoip_cidr_to_ipam
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :provision_byoip_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :provision_ipam_byoasn
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :provision_ipam_pool_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :provision_public_ipv4_pool_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :purchase_capacity_block
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :purchase_host_reservation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :purchase_reserved_instances_offering
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :purchase_scheduled_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :reboot_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :register_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :register_instance_event_notification_attributes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :register_transit_gateway_multicast_group_members
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :register_transit_gateway_multicast_group_sources
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :reject_transit_gateway_multicast_domain_associations
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :reject_transit_gateway_peering_attachment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :reject_transit_gateway_vpc_attachment
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :reject_vpc_endpoint_connections
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :reject_vpc_peering_connection
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :release_address
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :release_hosts
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :release_ipam_pool_allocation
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :replace_iam_instance_profile_association
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :replace_network_acl_association
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :replace_network_acl_entry
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :replace_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :replace_route_table_association
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :replace_transit_gateway_route
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :replace_vpn_tunnel
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :report_instance_status
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :request_spot_fleet
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :request_spot_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :reset_address_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :reset_ebs_default_kms_key_id
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :reset_fpga_image_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :reset_image_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :reset_instance_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :reset_network_interface_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :reset_snapshot_attribute
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :restore_address_to_classic
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :restore_image_from_recycle_bin
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :restore_managed_prefix_list_version
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :restore_snapshot_from_recycle_bin
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :restore_snapshot_tier
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :revoke_client_vpn_ingress
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :revoke_security_group_egress
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :revoke_security_group_ingress
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :run_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :run_scheduled_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :search_local_gateway_routes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :search_transit_gateway_multicast_groups
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :search_transit_gateway_routes
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :send_diagnostic_interrupt
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :start_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :start_network_insights_access_scope_analysis
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :start_network_insights_analysis
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :start_vpc_endpoint_service_private_dns_verification
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :stop_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :terminate_client_vpn_connections
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :terminate_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :unassign_ipv6_addresses
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :unassign_private_ip_addresses
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :unassign_private_nat_gateway_address
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :unlock_snapshot
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :unmonitor_instances
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :update_security_group_rule_descriptions_egress
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :update_security_group_rule_descriptions_ingress
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        when :withdraw_byoip_cidr
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'ec2' })
        else nil
        end
        options
      end

    end
  end
end
