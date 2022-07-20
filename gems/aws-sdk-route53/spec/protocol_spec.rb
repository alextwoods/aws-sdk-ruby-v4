# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-route53'

module AWS::SDK::Route53
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#activate_key_signing_key' do

    end

    describe '#associate_vpc_with_hosted_zone' do

    end

    describe '#change_cidr_collection' do

    end

    describe '#change_resource_record_sets' do

    end

    describe '#change_tags_for_resource' do

    end

    describe '#create_cidr_collection' do

    end

    describe '#create_health_check' do

    end

    describe '#create_hosted_zone' do

    end

    describe '#create_key_signing_key' do

    end

    describe '#create_query_logging_config' do

    end

    describe '#create_reusable_delegation_set' do

    end

    describe '#create_traffic_policy' do

    end

    describe '#create_traffic_policy_instance' do

    end

    describe '#create_traffic_policy_version' do

    end

    describe '#create_vpc_association_authorization' do

    end

    describe '#deactivate_key_signing_key' do

    end

    describe '#delete_cidr_collection' do

    end

    describe '#delete_health_check' do

    end

    describe '#delete_hosted_zone' do

    end

    describe '#delete_key_signing_key' do

    end

    describe '#delete_query_logging_config' do

    end

    describe '#delete_reusable_delegation_set' do

    end

    describe '#delete_traffic_policy' do

    end

    describe '#delete_traffic_policy_instance' do

    end

    describe '#delete_vpc_association_authorization' do

    end

    describe '#disable_hosted_zone_dnssec' do

    end

    describe '#disassociate_vpc_from_hosted_zone' do

    end

    describe '#enable_hosted_zone_dnssec' do

    end

    describe '#get_account_limit' do

    end

    describe '#get_change' do

    end

    describe '#get_checker_ip_ranges' do

    end

    describe '#get_dnssec' do

    end

    describe '#get_geo_location' do

    end

    describe '#get_health_check' do

    end

    describe '#get_health_check_count' do

    end

    describe '#get_health_check_last_failure_reason' do

    end

    describe '#get_health_check_status' do

    end

    describe '#get_hosted_zone' do

    end

    describe '#get_hosted_zone_count' do

    end

    describe '#get_hosted_zone_limit' do

    end

    describe '#get_query_logging_config' do

    end

    describe '#get_reusable_delegation_set' do

    end

    describe '#get_reusable_delegation_set_limit' do

    end

    describe '#get_traffic_policy' do

    end

    describe '#get_traffic_policy_instance' do

    end

    describe '#get_traffic_policy_instance_count' do

    end

    describe '#list_cidr_blocks' do

    end

    describe '#list_cidr_collections' do

    end

    describe '#list_cidr_locations' do

    end

    describe '#list_geo_locations' do

    end

    describe '#list_health_checks' do

    end

    describe '#list_hosted_zones' do

    end

    describe '#list_hosted_zones_by_name' do

    end

    describe '#list_hosted_zones_by_vpc' do

    end

    describe '#list_query_logging_configs' do

    end

    describe '#list_resource_record_sets' do

    end

    describe '#list_reusable_delegation_sets' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_tags_for_resources' do

    end

    describe '#list_traffic_policies' do

    end

    describe '#list_traffic_policy_instances' do

    end

    describe '#list_traffic_policy_instances_by_hosted_zone' do

    end

    describe '#list_traffic_policy_instances_by_policy' do

    end

    describe '#list_traffic_policy_versions' do

    end

    describe '#list_vpc_association_authorizations' do

    end

    describe '#test_dns_answer' do

    end

    describe '#update_health_check' do

    end

    describe '#update_hosted_zone_comment' do

    end

    describe '#update_traffic_policy_comment' do

    end

    describe '#update_traffic_policy_instance' do

    end

  end
end
