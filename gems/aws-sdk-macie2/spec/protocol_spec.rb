# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-macie2'

module AWS::SDK::Macie2
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#accept_invitation' do

    end

    describe '#batch_get_custom_data_identifiers' do

    end

    describe '#create_classification_job' do

    end

    describe '#create_custom_data_identifier' do

    end

    describe '#create_findings_filter' do

    end

    describe '#create_invitations' do

    end

    describe '#create_member' do

    end

    describe '#create_sample_findings' do

    end

    describe '#decline_invitations' do

    end

    describe '#delete_custom_data_identifier' do

    end

    describe '#delete_findings_filter' do

    end

    describe '#delete_invitations' do

    end

    describe '#delete_member' do

    end

    describe '#describe_buckets' do

    end

    describe '#describe_classification_job' do

    end

    describe '#describe_organization_configuration' do

    end

    describe '#disable_macie' do

    end

    describe '#disable_organization_admin_account' do

    end

    describe '#disassociate_from_administrator_account' do

    end

    describe '#disassociate_from_master_account' do

    end

    describe '#disassociate_member' do

    end

    describe '#enable_macie' do

    end

    describe '#enable_organization_admin_account' do

    end

    describe '#get_administrator_account' do

    end

    describe '#get_bucket_statistics' do

    end

    describe '#get_classification_export_configuration' do

    end

    describe '#get_custom_data_identifier' do

    end

    describe '#get_findings' do

    end

    describe '#get_findings_filter' do

    end

    describe '#get_findings_publication_configuration' do

    end

    describe '#get_finding_statistics' do

    end

    describe '#get_invitations_count' do

    end

    describe '#get_macie_session' do

    end

    describe '#get_master_account' do

    end

    describe '#get_member' do

    end

    describe '#get_usage_statistics' do

    end

    describe '#get_usage_totals' do

    end

    describe '#list_classification_jobs' do

    end

    describe '#list_custom_data_identifiers' do

    end

    describe '#list_findings' do

    end

    describe '#list_findings_filters' do

    end

    describe '#list_invitations' do

    end

    describe '#list_managed_data_identifiers' do

    end

    describe '#list_members' do

    end

    describe '#list_organization_admin_accounts' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#put_classification_export_configuration' do

    end

    describe '#put_findings_publication_configuration' do

    end

    describe '#search_resources' do

    end

    describe '#tag_resource' do

    end

    describe '#test_custom_data_identifier' do

    end

    describe '#untag_resource' do

    end

    describe '#update_classification_job' do

    end

    describe '#update_findings_filter' do

    end

    describe '#update_macie_session' do

    end

    describe '#update_member_session' do

    end

    describe '#update_organization_configuration' do

    end

  end
end
