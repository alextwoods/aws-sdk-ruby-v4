# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-workspaces'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::WorkSpaces
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_connection_alias' do

    end

    describe '#associate_ip_groups' do

    end

    describe '#authorize_ip_rules' do

    end

    describe '#copy_workspace_image' do

    end

    describe '#create_connect_client_add_in' do

    end

    describe '#create_connection_alias' do

    end

    describe '#create_ip_group' do

    end

    describe '#create_tags' do

    end

    describe '#create_updated_workspace_image' do

    end

    describe '#create_workspace_bundle' do

    end

    describe '#create_workspaces' do

    end

    describe '#delete_client_branding' do

    end

    describe '#delete_connect_client_add_in' do

    end

    describe '#delete_connection_alias' do

    end

    describe '#delete_ip_group' do

    end

    describe '#delete_tags' do

    end

    describe '#delete_workspace_bundle' do

    end

    describe '#delete_workspace_image' do

    end

    describe '#deregister_workspace_directory' do

    end

    describe '#describe_account' do

    end

    describe '#describe_account_modifications' do

    end

    describe '#describe_client_branding' do

    end

    describe '#describe_client_properties' do

    end

    describe '#describe_connect_client_add_ins' do

    end

    describe '#describe_connection_aliases' do

    end

    describe '#describe_connection_alias_permissions' do

    end

    describe '#describe_ip_groups' do

    end

    describe '#describe_tags' do

    end

    describe '#describe_workspace_bundles' do

    end

    describe '#describe_workspace_directories' do

    end

    describe '#describe_workspace_image_permissions' do

    end

    describe '#describe_workspace_images' do

    end

    describe '#describe_workspaces' do

    end

    describe '#describe_workspaces_connection_status' do

    end

    describe '#describe_workspace_snapshots' do

    end

    describe '#disassociate_connection_alias' do

    end

    describe '#disassociate_ip_groups' do

    end

    describe '#import_client_branding' do

    end

    describe '#import_workspace_image' do

    end

    describe '#list_available_management_cidr_ranges' do

    end

    describe '#migrate_workspace' do

    end

    describe '#modify_account' do

    end

    describe '#modify_client_properties' do

    end

    describe '#modify_selfservice_permissions' do

    end

    describe '#modify_workspace_access_properties' do

    end

    describe '#modify_workspace_creation_properties' do

    end

    describe '#modify_workspace_properties' do

    end

    describe '#modify_workspace_state' do

    end

    describe '#reboot_workspaces' do

    end

    describe '#rebuild_workspaces' do

    end

    describe '#register_workspace_directory' do

    end

    describe '#restore_workspace' do

    end

    describe '#revoke_ip_rules' do

    end

    describe '#start_workspaces' do

    end

    describe '#stop_workspaces' do

    end

    describe '#terminate_workspaces' do

    end

    describe '#update_connect_client_add_in' do

    end

    describe '#update_connection_alias_permission' do

    end

    describe '#update_rules_of_ip_group' do

    end

    describe '#update_workspace_bundle' do

    end

    describe '#update_workspace_image_permission' do

    end

  end
end
