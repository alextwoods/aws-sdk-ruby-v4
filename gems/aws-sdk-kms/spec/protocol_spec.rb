# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-kms'

module AWS::SDK::KMS
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#cancel_key_deletion' do

    end

    describe '#connect_custom_key_store' do

    end

    describe '#create_alias' do

    end

    describe '#create_custom_key_store' do

    end

    describe '#create_grant' do

    end

    describe '#create_key' do

    end

    describe '#decrypt' do

    end

    describe '#delete_alias' do

    end

    describe '#delete_custom_key_store' do

    end

    describe '#delete_imported_key_material' do

    end

    describe '#describe_custom_key_stores' do

    end

    describe '#describe_key' do

    end

    describe '#disable_key' do

    end

    describe '#disable_key_rotation' do

    end

    describe '#disconnect_custom_key_store' do

    end

    describe '#enable_key' do

    end

    describe '#enable_key_rotation' do

    end

    describe '#encrypt' do

    end

    describe '#generate_data_key' do

    end

    describe '#generate_data_key_pair' do

    end

    describe '#generate_data_key_pair_without_plaintext' do

    end

    describe '#generate_data_key_without_plaintext' do

    end

    describe '#generate_mac' do

    end

    describe '#generate_random' do

    end

    describe '#get_key_policy' do

    end

    describe '#get_key_rotation_status' do

    end

    describe '#get_parameters_for_import' do

    end

    describe '#get_public_key' do

    end

    describe '#import_key_material' do

    end

    describe '#list_aliases' do

    end

    describe '#list_grants' do

    end

    describe '#list_key_policies' do

    end

    describe '#list_keys' do

    end

    describe '#list_resource_tags' do

    end

    describe '#list_retirable_grants' do

    end

    describe '#put_key_policy' do

    end

    describe '#re_encrypt' do

    end

    describe '#replicate_key' do

    end

    describe '#retire_grant' do

    end

    describe '#revoke_grant' do

    end

    describe '#schedule_key_deletion' do

    end

    describe '#sign' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_alias' do

    end

    describe '#update_custom_key_store' do

    end

    describe '#update_key_description' do

    end

    describe '#update_primary_region' do

    end

    describe '#verify' do

    end

    describe '#verify_mac' do

    end

  end
end
