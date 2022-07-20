# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-directoryservice'

module AWS::SDK::DirectoryService
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#accept_shared_directory' do

    end

    describe '#add_ip_routes' do

    end

    describe '#add_region' do

    end

    describe '#add_tags_to_resource' do

    end

    describe '#cancel_schema_extension' do

    end

    describe '#connect_directory' do

    end

    describe '#create_alias' do

    end

    describe '#create_computer' do

    end

    describe '#create_conditional_forwarder' do

    end

    describe '#create_directory' do

    end

    describe '#create_log_subscription' do

    end

    describe '#create_microsoft_ad' do

    end

    describe '#create_snapshot' do

    end

    describe '#create_trust' do

    end

    describe '#delete_conditional_forwarder' do

    end

    describe '#delete_directory' do

    end

    describe '#delete_log_subscription' do

    end

    describe '#delete_snapshot' do

    end

    describe '#delete_trust' do

    end

    describe '#deregister_certificate' do

    end

    describe '#deregister_event_topic' do

    end

    describe '#describe_certificate' do

    end

    describe '#describe_client_authentication_settings' do

    end

    describe '#describe_conditional_forwarders' do

    end

    describe '#describe_directories' do

    end

    describe '#describe_domain_controllers' do

    end

    describe '#describe_event_topics' do

    end

    describe '#describe_ldaps_settings' do

    end

    describe '#describe_regions' do

    end

    describe '#describe_shared_directories' do

    end

    describe '#describe_snapshots' do

    end

    describe '#describe_trusts' do

    end

    describe '#disable_client_authentication' do

    end

    describe '#disable_ldaps' do

    end

    describe '#disable_radius' do

    end

    describe '#disable_sso' do

    end

    describe '#enable_client_authentication' do

    end

    describe '#enable_ldaps' do

    end

    describe '#enable_radius' do

    end

    describe '#enable_sso' do

    end

    describe '#get_directory_limits' do

    end

    describe '#get_snapshot_limits' do

    end

    describe '#list_certificates' do

    end

    describe '#list_ip_routes' do

    end

    describe '#list_log_subscriptions' do

    end

    describe '#list_schema_extensions' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#register_certificate' do

    end

    describe '#register_event_topic' do

    end

    describe '#reject_shared_directory' do

    end

    describe '#remove_ip_routes' do

    end

    describe '#remove_region' do

    end

    describe '#remove_tags_from_resource' do

    end

    describe '#reset_user_password' do

    end

    describe '#restore_from_snapshot' do

    end

    describe '#share_directory' do

    end

    describe '#start_schema_extension' do

    end

    describe '#unshare_directory' do

    end

    describe '#update_conditional_forwarder' do

    end

    describe '#update_number_of_domain_controllers' do

    end

    describe '#update_radius' do

    end

    describe '#update_trust' do

    end

    describe '#verify_trust' do

    end

  end
end
