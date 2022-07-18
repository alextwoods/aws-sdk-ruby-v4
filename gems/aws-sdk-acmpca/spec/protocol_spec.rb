# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-acmpca'

module AWS::SDK::ACMPCA
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_certificate_authority' do

    end

    describe '#create_certificate_authority_audit_report' do

    end

    describe '#create_permission' do

    end

    describe '#delete_certificate_authority' do

    end

    describe '#delete_permission' do

    end

    describe '#delete_policy' do

    end

    describe '#describe_certificate_authority' do

    end

    describe '#describe_certificate_authority_audit_report' do

    end

    describe '#get_certificate' do

    end

    describe '#get_certificate_authority_certificate' do

    end

    describe '#get_certificate_authority_csr' do

    end

    describe '#get_policy' do

    end

    describe '#import_certificate_authority_certificate' do

    end

    describe '#issue_certificate' do

    end

    describe '#list_certificate_authorities' do

    end

    describe '#list_permissions' do

    end

    describe '#list_tags' do

    end

    describe '#put_policy' do

    end

    describe '#restore_certificate_authority' do

    end

    describe '#revoke_certificate' do

    end

    describe '#tag_certificate_authority' do

    end

    describe '#untag_certificate_authority' do

    end

    describe '#update_certificate_authority' do

    end

  end
end
