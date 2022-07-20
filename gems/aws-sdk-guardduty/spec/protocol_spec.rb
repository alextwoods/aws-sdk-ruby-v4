# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-guardduty'

module AWS::SDK::GuardDuty
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#accept_invitation' do

    end

    describe '#archive_findings' do

    end

    describe '#create_detector' do

    end

    describe '#create_filter' do

    end

    describe '#create_ip_set' do

    end

    describe '#create_members' do

    end

    describe '#create_publishing_destination' do

    end

    describe '#create_sample_findings' do

    end

    describe '#create_threat_intel_set' do

    end

    describe '#decline_invitations' do

    end

    describe '#delete_detector' do

    end

    describe '#delete_filter' do

    end

    describe '#delete_invitations' do

    end

    describe '#delete_ip_set' do

    end

    describe '#delete_members' do

    end

    describe '#delete_publishing_destination' do

    end

    describe '#delete_threat_intel_set' do

    end

    describe '#describe_organization_configuration' do

    end

    describe '#describe_publishing_destination' do

    end

    describe '#disable_organization_admin_account' do

    end

    describe '#disassociate_from_master_account' do

    end

    describe '#disassociate_members' do

    end

    describe '#enable_organization_admin_account' do

    end

    describe '#get_detector' do

    end

    describe '#get_filter' do

    end

    describe '#get_findings' do

    end

    describe '#get_findings_statistics' do

    end

    describe '#get_invitations_count' do

    end

    describe '#get_ip_set' do

    end

    describe '#get_master_account' do

    end

    describe '#get_member_detectors' do

    end

    describe '#get_members' do

    end

    describe '#get_threat_intel_set' do

    end

    describe '#get_usage_statistics' do

    end

    describe '#invite_members' do

    end

    describe '#list_detectors' do

    end

    describe '#list_filters' do

    end

    describe '#list_findings' do

    end

    describe '#list_invitations' do

    end

    describe '#list_ip_sets' do

    end

    describe '#list_members' do

    end

    describe '#list_organization_admin_accounts' do

    end

    describe '#list_publishing_destinations' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_threat_intel_sets' do

    end

    describe '#start_monitoring_members' do

    end

    describe '#stop_monitoring_members' do

    end

    describe '#tag_resource' do

    end

    describe '#unarchive_findings' do

    end

    describe '#untag_resource' do

    end

    describe '#update_detector' do

    end

    describe '#update_filter' do

    end

    describe '#update_findings_feedback' do

    end

    describe '#update_ip_set' do

    end

    describe '#update_member_detectors' do

    end

    describe '#update_organization_configuration' do

    end

    describe '#update_publishing_destination' do

    end

    describe '#update_threat_intel_set' do

    end

  end
end
