# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-iotthingsgraph'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::IoTThingsGraph
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_entity_to_thing' do

    end

    describe '#create_flow_template' do

    end

    describe '#create_system_instance' do

    end

    describe '#create_system_template' do

    end

    describe '#delete_flow_template' do

    end

    describe '#delete_namespace' do

    end

    describe '#delete_system_instance' do

    end

    describe '#delete_system_template' do

    end

    describe '#deploy_system_instance' do

    end

    describe '#deprecate_flow_template' do

    end

    describe '#deprecate_system_template' do

    end

    describe '#describe_namespace' do

    end

    describe '#dissociate_entity_from_thing' do

    end

    describe '#get_entities' do

    end

    describe '#get_flow_template' do

    end

    describe '#get_flow_template_revisions' do

    end

    describe '#get_namespace_deletion_status' do

    end

    describe '#get_system_instance' do

    end

    describe '#get_system_template' do

    end

    describe '#get_system_template_revisions' do

    end

    describe '#get_upload_status' do

    end

    describe '#list_flow_execution_messages' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#search_entities' do

    end

    describe '#search_flow_executions' do

    end

    describe '#search_flow_templates' do

    end

    describe '#search_system_instances' do

    end

    describe '#search_system_templates' do

    end

    describe '#search_things' do

    end

    describe '#tag_resource' do

    end

    describe '#undeploy_system_instance' do

    end

    describe '#untag_resource' do

    end

    describe '#update_flow_template' do

    end

    describe '#update_system_template' do

    end

    describe '#upload_entity_definitions' do

    end

  end
end
