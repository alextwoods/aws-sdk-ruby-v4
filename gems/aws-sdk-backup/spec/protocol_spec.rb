# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-backup'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::Backup
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_backup_plan' do

    end

    describe '#create_backup_selection' do

    end

    describe '#create_backup_vault' do

    end

    describe '#create_framework' do

    end

    describe '#create_report_plan' do

    end

    describe '#delete_backup_plan' do

    end

    describe '#delete_backup_selection' do

    end

    describe '#delete_backup_vault' do

    end

    describe '#delete_backup_vault_access_policy' do

    end

    describe '#delete_backup_vault_lock_configuration' do

    end

    describe '#delete_backup_vault_notifications' do

    end

    describe '#delete_framework' do

    end

    describe '#delete_recovery_point' do

    end

    describe '#delete_report_plan' do

    end

    describe '#describe_backup_job' do

    end

    describe '#describe_backup_vault' do

    end

    describe '#describe_copy_job' do

    end

    describe '#describe_framework' do

    end

    describe '#describe_global_settings' do

    end

    describe '#describe_protected_resource' do

    end

    describe '#describe_recovery_point' do

    end

    describe '#describe_region_settings' do

    end

    describe '#describe_report_job' do

    end

    describe '#describe_report_plan' do

    end

    describe '#describe_restore_job' do

    end

    describe '#disassociate_recovery_point' do

    end

    describe '#export_backup_plan_template' do

    end

    describe '#get_backup_plan' do

    end

    describe '#get_backup_plan_from_json' do

    end

    describe '#get_backup_plan_from_template' do

    end

    describe '#get_backup_selection' do

    end

    describe '#get_backup_vault_access_policy' do

    end

    describe '#get_backup_vault_notifications' do

    end

    describe '#get_recovery_point_restore_metadata' do

    end

    describe '#get_supported_resource_types' do

    end

    describe '#list_backup_jobs' do

    end

    describe '#list_backup_plans' do

    end

    describe '#list_backup_plan_templates' do

    end

    describe '#list_backup_plan_versions' do

    end

    describe '#list_backup_selections' do

    end

    describe '#list_backup_vaults' do

    end

    describe '#list_copy_jobs' do

    end

    describe '#list_frameworks' do

    end

    describe '#list_protected_resources' do

    end

    describe '#list_recovery_points_by_backup_vault' do

    end

    describe '#list_recovery_points_by_resource' do

    end

    describe '#list_report_jobs' do

    end

    describe '#list_report_plans' do

    end

    describe '#list_restore_jobs' do

    end

    describe '#list_tags' do

    end

    describe '#put_backup_vault_access_policy' do

    end

    describe '#put_backup_vault_lock_configuration' do

    end

    describe '#put_backup_vault_notifications' do

    end

    describe '#start_backup_job' do

    end

    describe '#start_copy_job' do

    end

    describe '#start_report_job' do

    end

    describe '#start_restore_job' do

    end

    describe '#stop_backup_job' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_backup_plan' do

    end

    describe '#update_framework' do

    end

    describe '#update_global_settings' do

    end

    describe '#update_recovery_point_lifecycle' do

    end

    describe '#update_region_settings' do

    end

    describe '#update_report_plan' do

    end

  end
end
