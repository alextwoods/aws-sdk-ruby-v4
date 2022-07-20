# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-auditmanager'

module AWS::SDK::AuditManager
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_assessment_report_evidence_folder' do

    end

    describe '#batch_associate_assessment_report_evidence' do

    end

    describe '#batch_create_delegation_by_assessment' do

    end

    describe '#batch_delete_delegation_by_assessment' do

    end

    describe '#batch_disassociate_assessment_report_evidence' do

    end

    describe '#batch_import_evidence_to_assessment_control' do

    end

    describe '#create_assessment' do

    end

    describe '#create_assessment_framework' do

    end

    describe '#create_assessment_report' do

    end

    describe '#create_control' do

    end

    describe '#delete_assessment' do

    end

    describe '#delete_assessment_framework' do

    end

    describe '#delete_assessment_framework_share' do

    end

    describe '#delete_assessment_report' do

    end

    describe '#delete_control' do

    end

    describe '#deregister_account' do

    end

    describe '#deregister_organization_admin_account' do

    end

    describe '#disassociate_assessment_report_evidence_folder' do

    end

    describe '#get_account_status' do

    end

    describe '#get_assessment' do

    end

    describe '#get_assessment_framework' do

    end

    describe '#get_assessment_report_url' do

    end

    describe '#get_change_logs' do

    end

    describe '#get_control' do

    end

    describe '#get_delegations' do

    end

    describe '#get_evidence' do

    end

    describe '#get_evidence_by_evidence_folder' do

    end

    describe '#get_evidence_folder' do

    end

    describe '#get_evidence_folders_by_assessment' do

    end

    describe '#get_evidence_folders_by_assessment_control' do

    end

    describe '#get_insights' do

    end

    describe '#get_insights_by_assessment' do

    end

    describe '#get_organization_admin_account' do

    end

    describe '#get_services_in_scope' do

    end

    describe '#get_settings' do

    end

    describe '#list_assessment_control_insights_by_control_domain' do

    end

    describe '#list_assessment_frameworks' do

    end

    describe '#list_assessment_framework_share_requests' do

    end

    describe '#list_assessment_reports' do

    end

    describe '#list_assessments' do

    end

    describe '#list_control_domain_insights' do

    end

    describe '#list_control_domain_insights_by_assessment' do

    end

    describe '#list_control_insights_by_control_domain' do

    end

    describe '#list_controls' do

    end

    describe '#list_keywords_for_data_source' do

    end

    describe '#list_notifications' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#register_account' do

    end

    describe '#register_organization_admin_account' do

    end

    describe '#start_assessment_framework_share' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_assessment' do

    end

    describe '#update_assessment_control' do

    end

    describe '#update_assessment_control_set_status' do

    end

    describe '#update_assessment_framework' do

    end

    describe '#update_assessment_framework_share' do

    end

    describe '#update_assessment_status' do

    end

    describe '#update_control' do

    end

    describe '#update_settings' do

    end

    describe '#validate_assessment_report_integrity' do

    end

  end
end
