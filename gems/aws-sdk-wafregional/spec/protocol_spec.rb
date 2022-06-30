# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-wafregional'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::WAFRegional
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_web_acl' do

    end

    describe '#create_byte_match_set' do

    end

    describe '#create_geo_match_set' do

    end

    describe '#create_ip_set' do

    end

    describe '#create_rate_based_rule' do

    end

    describe '#create_regex_match_set' do

    end

    describe '#create_regex_pattern_set' do

    end

    describe '#create_rule' do

    end

    describe '#create_rule_group' do

    end

    describe '#create_size_constraint_set' do

    end

    describe '#create_sql_injection_match_set' do

    end

    describe '#create_web_acl' do

    end

    describe '#create_web_acl_migration_stack' do

    end

    describe '#create_xss_match_set' do

    end

    describe '#delete_byte_match_set' do

    end

    describe '#delete_geo_match_set' do

    end

    describe '#delete_ip_set' do

    end

    describe '#delete_logging_configuration' do

    end

    describe '#delete_permission_policy' do

    end

    describe '#delete_rate_based_rule' do

    end

    describe '#delete_regex_match_set' do

    end

    describe '#delete_regex_pattern_set' do

    end

    describe '#delete_rule' do

    end

    describe '#delete_rule_group' do

    end

    describe '#delete_size_constraint_set' do

    end

    describe '#delete_sql_injection_match_set' do

    end

    describe '#delete_web_acl' do

    end

    describe '#delete_xss_match_set' do

    end

    describe '#disassociate_web_acl' do

    end

    describe '#get_byte_match_set' do

    end

    describe '#get_change_token' do

    end

    describe '#get_change_token_status' do

    end

    describe '#get_geo_match_set' do

    end

    describe '#get_ip_set' do

    end

    describe '#get_logging_configuration' do

    end

    describe '#get_permission_policy' do

    end

    describe '#get_rate_based_rule' do

    end

    describe '#get_rate_based_rule_managed_keys' do

    end

    describe '#get_regex_match_set' do

    end

    describe '#get_regex_pattern_set' do

    end

    describe '#get_rule' do

    end

    describe '#get_rule_group' do

    end

    describe '#get_sampled_requests' do

    end

    describe '#get_size_constraint_set' do

    end

    describe '#get_sql_injection_match_set' do

    end

    describe '#get_web_acl' do

    end

    describe '#get_web_acl_for_resource' do

    end

    describe '#get_xss_match_set' do

    end

    describe '#list_activated_rules_in_rule_group' do

    end

    describe '#list_byte_match_sets' do

    end

    describe '#list_geo_match_sets' do

    end

    describe '#list_ip_sets' do

    end

    describe '#list_logging_configurations' do

    end

    describe '#list_rate_based_rules' do

    end

    describe '#list_regex_match_sets' do

    end

    describe '#list_regex_pattern_sets' do

    end

    describe '#list_resources_for_web_acl' do

    end

    describe '#list_rule_groups' do

    end

    describe '#list_rules' do

    end

    describe '#list_size_constraint_sets' do

    end

    describe '#list_sql_injection_match_sets' do

    end

    describe '#list_subscribed_rule_groups' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_web_ac_ls' do

    end

    describe '#list_xss_match_sets' do

    end

    describe '#put_logging_configuration' do

    end

    describe '#put_permission_policy' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_byte_match_set' do

    end

    describe '#update_geo_match_set' do

    end

    describe '#update_ip_set' do

    end

    describe '#update_rate_based_rule' do

    end

    describe '#update_regex_match_set' do

    end

    describe '#update_regex_pattern_set' do

    end

    describe '#update_rule' do

    end

    describe '#update_rule_group' do

    end

    describe '#update_size_constraint_set' do

    end

    describe '#update_sql_injection_match_set' do

    end

    describe '#update_web_acl' do

    end

    describe '#update_xss_match_set' do

    end

  end
end
