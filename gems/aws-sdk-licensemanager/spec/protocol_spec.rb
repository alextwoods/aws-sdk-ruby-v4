# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-licensemanager'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::LicenseManager
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#accept_grant' do

    end

    describe '#check_in_license' do

    end

    describe '#checkout_borrow_license' do

    end

    describe '#checkout_license' do

    end

    describe '#create_grant' do

    end

    describe '#create_grant_version' do

    end

    describe '#create_license' do

    end

    describe '#create_license_configuration' do

    end

    describe '#create_license_conversion_task_for_resource' do

    end

    describe '#create_license_manager_report_generator' do

    end

    describe '#create_license_version' do

    end

    describe '#create_token' do

    end

    describe '#delete_grant' do

    end

    describe '#delete_license' do

    end

    describe '#delete_license_configuration' do

    end

    describe '#delete_license_manager_report_generator' do

    end

    describe '#delete_token' do

    end

    describe '#extend_license_consumption' do

    end

    describe '#get_access_token' do

    end

    describe '#get_grant' do

    end

    describe '#get_license' do

    end

    describe '#get_license_configuration' do

    end

    describe '#get_license_conversion_task' do

    end

    describe '#get_license_manager_report_generator' do

    end

    describe '#get_license_usage' do

    end

    describe '#get_service_settings' do

    end

    describe '#list_associations_for_license_configuration' do

    end

    describe '#list_distributed_grants' do

    end

    describe '#list_failures_for_license_configuration_operations' do

    end

    describe '#list_license_configurations' do

    end

    describe '#list_license_conversion_tasks' do

    end

    describe '#list_license_manager_report_generators' do

    end

    describe '#list_licenses' do

    end

    describe '#list_license_specifications_for_resource' do

    end

    describe '#list_license_versions' do

    end

    describe '#list_received_grants' do

    end

    describe '#list_received_licenses' do

    end

    describe '#list_resource_inventory' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_tokens' do

    end

    describe '#list_usage_for_license_configuration' do

    end

    describe '#reject_grant' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_license_configuration' do

    end

    describe '#update_license_manager_report_generator' do

    end

    describe '#update_license_specifications_for_resource' do

    end

    describe '#update_service_settings' do

    end

  end
end
