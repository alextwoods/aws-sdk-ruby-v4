# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-wafv2'

module AWS::SDK::WAFV2
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_web_acl' do

    end

    describe '#check_capacity' do

    end

    describe '#create_ip_set' do

    end

    describe '#create_regex_pattern_set' do

    end

    describe '#create_rule_group' do

    end

    describe '#create_web_acl' do

    end

    describe '#delete_firewall_manager_rule_groups' do

    end

    describe '#delete_ip_set' do

    end

    describe '#delete_logging_configuration' do

    end

    describe '#delete_permission_policy' do

    end

    describe '#delete_regex_pattern_set' do

    end

    describe '#delete_rule_group' do

    end

    describe '#delete_web_acl' do

    end

    describe '#describe_managed_rule_group' do

    end

    describe '#disassociate_web_acl' do

    end

    describe '#generate_mobile_sdk_release_url' do

    end

    describe '#get_ip_set' do

    end

    describe '#get_logging_configuration' do

    end

    describe '#get_managed_rule_set' do

    end

    describe '#get_mobile_sdk_release' do

    end

    describe '#get_permission_policy' do

    end

    describe '#get_rate_based_statement_managed_keys' do

    end

    describe '#get_regex_pattern_set' do

    end

    describe '#get_rule_group' do

    end

    describe '#get_sampled_requests' do

    end

    describe '#get_web_acl' do

    end

    describe '#get_web_acl_for_resource' do

    end

    describe '#list_available_managed_rule_groups' do

    end

    describe '#list_available_managed_rule_group_versions' do

    end

    describe '#list_ip_sets' do

    end

    describe '#list_logging_configurations' do

    end

    describe '#list_managed_rule_sets' do

    end

    describe '#list_mobile_sdk_releases' do

    end

    describe '#list_regex_pattern_sets' do

    end

    describe '#list_resources_for_web_acl' do

    end

    describe '#list_rule_groups' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_web_ac_ls' do

    end

    describe '#put_logging_configuration' do

    end

    describe '#put_managed_rule_set_versions' do

    end

    describe '#put_permission_policy' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_ip_set' do

    end

    describe '#update_managed_rule_set_version_expiry_date' do

    end

    describe '#update_regex_pattern_set' do

    end

    describe '#update_rule_group' do

    end

    describe '#update_web_acl' do

    end

  end
end
