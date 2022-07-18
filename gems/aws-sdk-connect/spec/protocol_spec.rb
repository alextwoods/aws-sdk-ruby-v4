# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-connect'

module AWS::SDK::Connect
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_approved_origin' do

    end

    describe '#associate_bot' do

    end

    describe '#associate_default_vocabulary' do

    end

    describe '#associate_instance_storage_config' do

    end

    describe '#associate_lambda_function' do

    end

    describe '#associate_lex_bot' do

    end

    describe '#associate_phone_number_contact_flow' do

    end

    describe '#associate_queue_quick_connects' do

    end

    describe '#associate_routing_profile_queues' do

    end

    describe '#associate_security_key' do

    end

    describe '#claim_phone_number' do

    end

    describe '#create_agent_status' do

    end

    describe '#create_contact_flow' do

    end

    describe '#create_contact_flow_module' do

    end

    describe '#create_hours_of_operation' do

    end

    describe '#create_instance' do

    end

    describe '#create_integration_association' do

    end

    describe '#create_queue' do

    end

    describe '#create_quick_connect' do

    end

    describe '#create_routing_profile' do

    end

    describe '#create_security_profile' do

    end

    describe '#create_task_template' do

    end

    describe '#create_use_case' do

    end

    describe '#create_user' do

    end

    describe '#create_user_hierarchy_group' do

    end

    describe '#create_vocabulary' do

    end

    describe '#delete_contact_flow' do

    end

    describe '#delete_contact_flow_module' do

    end

    describe '#delete_hours_of_operation' do

    end

    describe '#delete_instance' do

    end

    describe '#delete_integration_association' do

    end

    describe '#delete_quick_connect' do

    end

    describe '#delete_security_profile' do

    end

    describe '#delete_task_template' do

    end

    describe '#delete_use_case' do

    end

    describe '#delete_user' do

    end

    describe '#delete_user_hierarchy_group' do

    end

    describe '#delete_vocabulary' do

    end

    describe '#describe_agent_status' do

    end

    describe '#describe_contact' do

    end

    describe '#describe_contact_flow' do

    end

    describe '#describe_contact_flow_module' do

    end

    describe '#describe_hours_of_operation' do

    end

    describe '#describe_instance' do

    end

    describe '#describe_instance_attribute' do

    end

    describe '#describe_instance_storage_config' do

    end

    describe '#describe_phone_number' do

    end

    describe '#describe_queue' do

    end

    describe '#describe_quick_connect' do

    end

    describe '#describe_routing_profile' do

    end

    describe '#describe_security_profile' do

    end

    describe '#describe_user' do

    end

    describe '#describe_user_hierarchy_group' do

    end

    describe '#describe_user_hierarchy_structure' do

    end

    describe '#describe_vocabulary' do

    end

    describe '#disassociate_approved_origin' do

    end

    describe '#disassociate_bot' do

    end

    describe '#disassociate_instance_storage_config' do

    end

    describe '#disassociate_lambda_function' do

    end

    describe '#disassociate_lex_bot' do

    end

    describe '#disassociate_phone_number_contact_flow' do

    end

    describe '#disassociate_queue_quick_connects' do

    end

    describe '#disassociate_routing_profile_queues' do

    end

    describe '#disassociate_security_key' do

    end

    describe '#get_contact_attributes' do

    end

    describe '#get_current_metric_data' do

    end

    describe '#get_current_user_data' do

    end

    describe '#get_federation_token' do

    end

    describe '#get_metric_data' do

    end

    describe '#get_task_template' do

    end

    describe '#list_agent_statuses' do

    end

    describe '#list_approved_origins' do

    end

    describe '#list_bots' do

    end

    describe '#list_contact_flow_modules' do

    end

    describe '#list_contact_flows' do

    end

    describe '#list_contact_references' do

    end

    describe '#list_default_vocabularies' do

    end

    describe '#list_hours_of_operations' do

    end

    describe '#list_instance_attributes' do

    end

    describe '#list_instances' do

    end

    describe '#list_instance_storage_configs' do

    end

    describe '#list_integration_associations' do

    end

    describe '#list_lambda_functions' do

    end

    describe '#list_lex_bots' do

    end

    describe '#list_phone_numbers' do

    end

    describe '#list_phone_numbers_v2' do

    end

    describe '#list_prompts' do

    end

    describe '#list_queue_quick_connects' do

    end

    describe '#list_queues' do

    end

    describe '#list_quick_connects' do

    end

    describe '#list_routing_profile_queues' do

    end

    describe '#list_routing_profiles' do

    end

    describe '#list_security_keys' do

    end

    describe '#list_security_profile_permissions' do

    end

    describe '#list_security_profiles' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_task_templates' do

    end

    describe '#list_use_cases' do

    end

    describe '#list_user_hierarchy_groups' do

    end

    describe '#list_users' do

    end

    describe '#put_user_status' do

    end

    describe '#release_phone_number' do

    end

    describe '#resume_contact_recording' do

    end

    describe '#search_available_phone_numbers' do

    end

    describe '#search_users' do

    end

    describe '#search_vocabularies' do

    end

    describe '#start_chat_contact' do

    end

    describe '#start_contact_recording' do

    end

    describe '#start_contact_streaming' do

    end

    describe '#start_outbound_voice_contact' do

    end

    describe '#start_task_contact' do

    end

    describe '#stop_contact' do

    end

    describe '#stop_contact_recording' do

    end

    describe '#stop_contact_streaming' do

    end

    describe '#suspend_contact_recording' do

    end

    describe '#tag_resource' do

    end

    describe '#transfer_contact' do

    end

    describe '#untag_resource' do

    end

    describe '#update_agent_status' do

    end

    describe '#update_contact' do

    end

    describe '#update_contact_attributes' do

    end

    describe '#update_contact_flow_content' do

    end

    describe '#update_contact_flow_metadata' do

    end

    describe '#update_contact_flow_module_content' do

    end

    describe '#update_contact_flow_module_metadata' do

    end

    describe '#update_contact_flow_name' do

    end

    describe '#update_contact_schedule' do

    end

    describe '#update_hours_of_operation' do

    end

    describe '#update_instance_attribute' do

    end

    describe '#update_instance_storage_config' do

    end

    describe '#update_phone_number' do

    end

    describe '#update_queue_hours_of_operation' do

    end

    describe '#update_queue_max_contacts' do

    end

    describe '#update_queue_name' do

    end

    describe '#update_queue_outbound_caller_config' do

    end

    describe '#update_queue_status' do

    end

    describe '#update_quick_connect_config' do

    end

    describe '#update_quick_connect_name' do

    end

    describe '#update_routing_profile_concurrency' do

    end

    describe '#update_routing_profile_default_outbound_queue' do

    end

    describe '#update_routing_profile_name' do

    end

    describe '#update_routing_profile_queues' do

    end

    describe '#update_security_profile' do

    end

    describe '#update_task_template' do

    end

    describe '#update_user_hierarchy' do

    end

    describe '#update_user_hierarchy_group_name' do

    end

    describe '#update_user_hierarchy_structure' do

    end

    describe '#update_user_identity_info' do

    end

    describe '#update_user_phone_config' do

    end

    describe '#update_user_routing_profile' do

    end

    describe '#update_user_security_profiles' do

    end

  end
end
