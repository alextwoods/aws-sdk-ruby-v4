# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-configservice'

module AWS::SDK::ConfigService
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#batch_get_aggregate_resource_config' do

    end

    describe '#batch_get_resource_config' do

    end

    describe '#delete_aggregation_authorization' do

    end

    describe '#delete_config_rule' do

    end

    describe '#delete_configuration_aggregator' do

    end

    describe '#delete_configuration_recorder' do

    end

    describe '#delete_conformance_pack' do

    end

    describe '#delete_delivery_channel' do

    end

    describe '#delete_evaluation_results' do

    end

    describe '#delete_organization_config_rule' do

    end

    describe '#delete_organization_conformance_pack' do

    end

    describe '#delete_pending_aggregation_request' do

    end

    describe '#delete_remediation_configuration' do

    end

    describe '#delete_remediation_exceptions' do

    end

    describe '#delete_resource_config' do

    end

    describe '#delete_retention_configuration' do

    end

    describe '#delete_stored_query' do

    end

    describe '#deliver_config_snapshot' do

    end

    describe '#describe_aggregate_compliance_by_config_rules' do

    end

    describe '#describe_aggregate_compliance_by_conformance_packs' do

    end

    describe '#describe_aggregation_authorizations' do

    end

    describe '#describe_compliance_by_config_rule' do

    end

    describe '#describe_compliance_by_resource' do

    end

    describe '#describe_config_rule_evaluation_status' do

    end

    describe '#describe_config_rules' do

    end

    describe '#describe_configuration_aggregators' do

    end

    describe '#describe_configuration_aggregator_sources_status' do

    end

    describe '#describe_configuration_recorders' do

    end

    describe '#describe_configuration_recorder_status' do

    end

    describe '#describe_conformance_pack_compliance' do

    end

    describe '#describe_conformance_packs' do

    end

    describe '#describe_conformance_pack_status' do

    end

    describe '#describe_delivery_channels' do

    end

    describe '#describe_delivery_channel_status' do

    end

    describe '#describe_organization_config_rules' do

    end

    describe '#describe_organization_config_rule_statuses' do

    end

    describe '#describe_organization_conformance_packs' do

    end

    describe '#describe_organization_conformance_pack_statuses' do

    end

    describe '#describe_pending_aggregation_requests' do

    end

    describe '#describe_remediation_configurations' do

    end

    describe '#describe_remediation_exceptions' do

    end

    describe '#describe_remediation_execution_status' do

    end

    describe '#describe_retention_configurations' do

    end

    describe '#get_aggregate_compliance_details_by_config_rule' do

    end

    describe '#get_aggregate_config_rule_compliance_summary' do

    end

    describe '#get_aggregate_conformance_pack_compliance_summary' do

    end

    describe '#get_aggregate_discovered_resource_counts' do

    end

    describe '#get_aggregate_resource_config' do

    end

    describe '#get_compliance_details_by_config_rule' do

    end

    describe '#get_compliance_details_by_resource' do

    end

    describe '#get_compliance_summary_by_config_rule' do

    end

    describe '#get_compliance_summary_by_resource_type' do

    end

    describe '#get_conformance_pack_compliance_details' do

    end

    describe '#get_conformance_pack_compliance_summary' do

    end

    describe '#get_custom_rule_policy' do

    end

    describe '#get_discovered_resource_counts' do

    end

    describe '#get_organization_config_rule_detailed_status' do

    end

    describe '#get_organization_conformance_pack_detailed_status' do

    end

    describe '#get_organization_custom_rule_policy' do

    end

    describe '#get_resource_config_history' do

    end

    describe '#get_stored_query' do

    end

    describe '#list_aggregate_discovered_resources' do

    end

    describe '#list_discovered_resources' do

    end

    describe '#list_stored_queries' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#put_aggregation_authorization' do

    end

    describe '#put_config_rule' do

    end

    describe '#put_configuration_aggregator' do

    end

    describe '#put_configuration_recorder' do

    end

    describe '#put_conformance_pack' do

    end

    describe '#put_delivery_channel' do

    end

    describe '#put_evaluations' do

    end

    describe '#put_external_evaluation' do

    end

    describe '#put_organization_config_rule' do

    end

    describe '#put_organization_conformance_pack' do

    end

    describe '#put_remediation_configurations' do

    end

    describe '#put_remediation_exceptions' do

    end

    describe '#put_resource_config' do

    end

    describe '#put_retention_configuration' do

    end

    describe '#put_stored_query' do

    end

    describe '#select_aggregate_resource_config' do

    end

    describe '#select_resource_config' do

    end

    describe '#start_config_rules_evaluation' do

    end

    describe '#start_configuration_recorder' do

    end

    describe '#start_remediation_execution' do

    end

    describe '#stop_configuration_recorder' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

  end
end
