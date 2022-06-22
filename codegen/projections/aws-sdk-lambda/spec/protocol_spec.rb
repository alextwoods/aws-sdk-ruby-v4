# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-lambda'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::Lambda
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_layer_version_permission' do

    end

    describe '#add_permission' do

    end

    describe '#create_alias' do

    end

    describe '#create_code_signing_config' do

    end

    describe '#create_event_source_mapping' do

    end

    describe '#create_function' do

    end

    describe '#delete_alias' do

    end

    describe '#delete_code_signing_config' do

    end

    describe '#delete_event_source_mapping' do

    end

    describe '#delete_function' do

    end

    describe '#delete_function_code_signing_config' do

    end

    describe '#delete_function_concurrency' do

    end

    describe '#delete_function_event_invoke_config' do

    end

    describe '#delete_layer_version' do

    end

    describe '#delete_provisioned_concurrency_config' do

    end

    describe '#get_account_settings' do

    end

    describe '#get_alias' do

    end

    describe '#get_code_signing_config' do

    end

    describe '#get_event_source_mapping' do

    end

    describe '#get_function' do

    end

    describe '#get_function_code_signing_config' do

    end

    describe '#get_function_concurrency' do

    end

    describe '#get_function_configuration' do

    end

    describe '#get_function_event_invoke_config' do

    end

    describe '#get_layer_version' do

    end

    describe '#get_layer_version_by_arn' do

    end

    describe '#get_layer_version_policy' do

    end

    describe '#get_policy' do

    end

    describe '#get_provisioned_concurrency_config' do

    end

    describe '#invoke' do

    end

    describe '#invoke_async' do

    end

    describe '#list_aliases' do

    end

    describe '#list_code_signing_configs' do

    end

    describe '#list_event_source_mappings' do

    end

    describe '#list_function_event_invoke_configs' do

    end

    describe '#list_functions' do

    end

    describe '#list_functions_by_code_signing_config' do

    end

    describe '#list_layers' do

    end

    describe '#list_layer_versions' do

    end

    describe '#list_provisioned_concurrency_configs' do

    end

    describe '#list_tags' do

    end

    describe '#list_versions_by_function' do

    end

    describe '#publish_layer_version' do

    end

    describe '#publish_version' do

    end

    describe '#put_function_code_signing_config' do

    end

    describe '#put_function_concurrency' do

    end

    describe '#put_function_event_invoke_config' do

    end

    describe '#put_provisioned_concurrency_config' do

    end

    describe '#remove_layer_version_permission' do

    end

    describe '#remove_permission' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_alias' do

    end

    describe '#update_code_signing_config' do

    end

    describe '#update_event_source_mapping' do

    end

    describe '#update_function_code' do

    end

    describe '#update_function_configuration' do

    end

    describe '#update_function_event_invoke_config' do

    end

  end
end
