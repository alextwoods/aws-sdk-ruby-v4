# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-iot'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::IoT
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#accept_certificate_transfer' do

    end

    describe '#add_thing_to_billing_group' do

    end

    describe '#add_thing_to_thing_group' do

    end

    describe '#associate_targets_with_job' do

    end

    describe '#attach_policy' do

    end

    describe '#attach_principal_policy' do

    end

    describe '#attach_security_profile' do

    end

    describe '#attach_thing_principal' do

    end

    describe '#cancel_audit_mitigation_actions_task' do

    end

    describe '#cancel_audit_task' do

    end

    describe '#cancel_certificate_transfer' do

    end

    describe '#cancel_detect_mitigation_actions_task' do

    end

    describe '#cancel_job' do

    end

    describe '#cancel_job_execution' do

    end

    describe '#clear_default_authorizer' do

    end

    describe '#confirm_topic_rule_destination' do

    end

    describe '#create_audit_suppression' do

    end

    describe '#create_authorizer' do

    end

    describe '#create_billing_group' do

    end

    describe '#create_certificate_from_csr' do

    end

    describe '#create_custom_metric' do

    end

    describe '#create_dimension' do

    end

    describe '#create_domain_configuration' do

    end

    describe '#create_dynamic_thing_group' do

    end

    describe '#create_fleet_metric' do

    end

    describe '#create_job' do

    end

    describe '#create_job_template' do

    end

    describe '#create_keys_and_certificate' do

    end

    describe '#create_mitigation_action' do

    end

    describe '#create_ota_update' do

    end

    describe '#create_policy' do

    end

    describe '#create_policy_version' do

    end

    describe '#create_provisioning_claim' do

    end

    describe '#create_provisioning_template' do

    end

    describe '#create_provisioning_template_version' do

    end

    describe '#create_role_alias' do

    end

    describe '#create_scheduled_audit' do

    end

    describe '#create_security_profile' do

    end

    describe '#create_stream' do

    end

    describe '#create_thing' do

    end

    describe '#create_thing_group' do

    end

    describe '#create_thing_type' do

    end

    describe '#create_topic_rule' do

    end

    describe '#create_topic_rule_destination' do

    end

    describe '#delete_account_audit_configuration' do

    end

    describe '#delete_audit_suppression' do

    end

    describe '#delete_authorizer' do

    end

    describe '#delete_billing_group' do

    end

    describe '#delete_ca_certificate' do

    end

    describe '#delete_certificate' do

    end

    describe '#delete_custom_metric' do

    end

    describe '#delete_dimension' do

    end

    describe '#delete_domain_configuration' do

    end

    describe '#delete_dynamic_thing_group' do

    end

    describe '#delete_fleet_metric' do

    end

    describe '#delete_job' do

    end

    describe '#delete_job_execution' do

    end

    describe '#delete_job_template' do

    end

    describe '#delete_mitigation_action' do

    end

    describe '#delete_ota_update' do

    end

    describe '#delete_policy' do

    end

    describe '#delete_policy_version' do

    end

    describe '#delete_provisioning_template' do

    end

    describe '#delete_provisioning_template_version' do

    end

    describe '#delete_registration_code' do

    end

    describe '#delete_role_alias' do

    end

    describe '#delete_scheduled_audit' do

    end

    describe '#delete_security_profile' do

    end

    describe '#delete_stream' do

    end

    describe '#delete_thing' do

    end

    describe '#delete_thing_group' do

    end

    describe '#delete_thing_type' do

    end

    describe '#delete_topic_rule' do

    end

    describe '#delete_topic_rule_destination' do

    end

    describe '#delete_v2_logging_level' do

    end

    describe '#deprecate_thing_type' do

    end

    describe '#describe_account_audit_configuration' do

    end

    describe '#describe_audit_finding' do

    end

    describe '#describe_audit_mitigation_actions_task' do

    end

    describe '#describe_audit_suppression' do

    end

    describe '#describe_audit_task' do

    end

    describe '#describe_authorizer' do

    end

    describe '#describe_billing_group' do

    end

    describe '#describe_ca_certificate' do

    end

    describe '#describe_certificate' do

    end

    describe '#describe_custom_metric' do

    end

    describe '#describe_default_authorizer' do

    end

    describe '#describe_detect_mitigation_actions_task' do

    end

    describe '#describe_dimension' do

    end

    describe '#describe_domain_configuration' do

    end

    describe '#describe_endpoint' do

    end

    describe '#describe_event_configurations' do

    end

    describe '#describe_fleet_metric' do

    end

    describe '#describe_index' do

    end

    describe '#describe_job' do

    end

    describe '#describe_job_execution' do

    end

    describe '#describe_job_template' do

    end

    describe '#describe_managed_job_template' do

    end

    describe '#describe_mitigation_action' do

    end

    describe '#describe_provisioning_template' do

    end

    describe '#describe_provisioning_template_version' do

    end

    describe '#describe_role_alias' do

    end

    describe '#describe_scheduled_audit' do

    end

    describe '#describe_security_profile' do

    end

    describe '#describe_stream' do

    end

    describe '#describe_thing' do

    end

    describe '#describe_thing_group' do

    end

    describe '#describe_thing_registration_task' do

    end

    describe '#describe_thing_type' do

    end

    describe '#detach_policy' do

    end

    describe '#detach_principal_policy' do

    end

    describe '#detach_security_profile' do

    end

    describe '#detach_thing_principal' do

    end

    describe '#disable_topic_rule' do

    end

    describe '#enable_topic_rule' do

    end

    describe '#get_behavior_model_training_summaries' do

    end

    describe '#get_buckets_aggregation' do

    end

    describe '#get_cardinality' do

    end

    describe '#get_effective_policies' do

    end

    describe '#get_indexing_configuration' do

    end

    describe '#get_job_document' do

    end

    describe '#get_logging_options' do

    end

    describe '#get_ota_update' do

    end

    describe '#get_percentiles' do

    end

    describe '#get_policy' do

    end

    describe '#get_policy_version' do

    end

    describe '#get_registration_code' do

    end

    describe '#get_statistics' do

    end

    describe '#get_topic_rule' do

    end

    describe '#get_topic_rule_destination' do

    end

    describe '#get_v2_logging_options' do

    end

    describe '#list_active_violations' do

    end

    describe '#list_attached_policies' do

    end

    describe '#list_audit_findings' do

    end

    describe '#list_audit_mitigation_actions_executions' do

    end

    describe '#list_audit_mitigation_actions_tasks' do

    end

    describe '#list_audit_suppressions' do

    end

    describe '#list_audit_tasks' do

    end

    describe '#list_authorizers' do

    end

    describe '#list_billing_groups' do

    end

    describe '#list_ca_certificates' do

    end

    describe '#list_certificates' do

    end

    describe '#list_certificates_by_ca' do

    end

    describe '#list_custom_metrics' do

    end

    describe '#list_detect_mitigation_actions_executions' do

    end

    describe '#list_detect_mitigation_actions_tasks' do

    end

    describe '#list_dimensions' do

    end

    describe '#list_domain_configurations' do

    end

    describe '#list_fleet_metrics' do

    end

    describe '#list_indices' do

    end

    describe '#list_job_executions_for_job' do

    end

    describe '#list_job_executions_for_thing' do

    end

    describe '#list_jobs' do

    end

    describe '#list_job_templates' do

    end

    describe '#list_managed_job_templates' do

    end

    describe '#list_metric_values' do

    end

    describe '#list_mitigation_actions' do

    end

    describe '#list_ota_updates' do

    end

    describe '#list_outgoing_certificates' do

    end

    describe '#list_policies' do

    end

    describe '#list_policy_principals' do

    end

    describe '#list_policy_versions' do

    end

    describe '#list_principal_policies' do

    end

    describe '#list_principal_things' do

    end

    describe '#list_provisioning_templates' do

    end

    describe '#list_provisioning_template_versions' do

    end

    describe '#list_role_aliases' do

    end

    describe '#list_scheduled_audits' do

    end

    describe '#list_security_profiles' do

    end

    describe '#list_security_profiles_for_target' do

    end

    describe '#list_streams' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_targets_for_policy' do

    end

    describe '#list_targets_for_security_profile' do

    end

    describe '#list_thing_groups' do

    end

    describe '#list_thing_groups_for_thing' do

    end

    describe '#list_thing_principals' do

    end

    describe '#list_thing_registration_task_reports' do

    end

    describe '#list_thing_registration_tasks' do

    end

    describe '#list_things' do

    end

    describe '#list_things_in_billing_group' do

    end

    describe '#list_things_in_thing_group' do

    end

    describe '#list_thing_types' do

    end

    describe '#list_topic_rule_destinations' do

    end

    describe '#list_topic_rules' do

    end

    describe '#list_v2_logging_levels' do

    end

    describe '#list_violation_events' do

    end

    describe '#put_verification_state_on_violation' do

    end

    describe '#register_ca_certificate' do

    end

    describe '#register_certificate' do

    end

    describe '#register_certificate_without_ca' do

    end

    describe '#register_thing' do

    end

    describe '#reject_certificate_transfer' do

    end

    describe '#remove_thing_from_billing_group' do

    end

    describe '#remove_thing_from_thing_group' do

    end

    describe '#replace_topic_rule' do

    end

    describe '#search_index' do

    end

    describe '#set_default_authorizer' do

    end

    describe '#set_default_policy_version' do

    end

    describe '#set_logging_options' do

    end

    describe '#set_v2_logging_level' do

    end

    describe '#set_v2_logging_options' do

    end

    describe '#start_audit_mitigation_actions_task' do

    end

    describe '#start_detect_mitigation_actions_task' do

    end

    describe '#start_on_demand_audit_task' do

    end

    describe '#start_thing_registration_task' do

    end

    describe '#stop_thing_registration_task' do

    end

    describe '#tag_resource' do

    end

    describe '#test_authorization' do

    end

    describe '#test_invoke_authorizer' do

    end

    describe '#transfer_certificate' do

    end

    describe '#untag_resource' do

    end

    describe '#update_account_audit_configuration' do

    end

    describe '#update_audit_suppression' do

    end

    describe '#update_authorizer' do

    end

    describe '#update_billing_group' do

    end

    describe '#update_ca_certificate' do

    end

    describe '#update_certificate' do

    end

    describe '#update_custom_metric' do

    end

    describe '#update_dimension' do

    end

    describe '#update_domain_configuration' do

    end

    describe '#update_dynamic_thing_group' do

    end

    describe '#update_event_configurations' do

    end

    describe '#update_fleet_metric' do

    end

    describe '#update_indexing_configuration' do

    end

    describe '#update_job' do

    end

    describe '#update_mitigation_action' do

    end

    describe '#update_provisioning_template' do

    end

    describe '#update_role_alias' do

    end

    describe '#update_scheduled_audit' do

    end

    describe '#update_security_profile' do

    end

    describe '#update_stream' do

    end

    describe '#update_thing' do

    end

    describe '#update_thing_group' do

    end

    describe '#update_thing_groups_for_thing' do

    end

    describe '#update_topic_rule_destination' do

    end

    describe '#validate_security_profile_behaviors' do

    end

  end
end
