# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-acm'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::ACM
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#add_tags_to_certificate' do

    end

    describe '#delete_certificate' do

    end

    describe '#describe_certificate' do

    end

    describe '#export_certificate' do

    end

    describe '#get_account_configuration' do

    end

    describe '#get_certificate' do

    end

    describe '#import_certificate' do

    end

    describe '#list_certificates' do

    end

    describe '#list_tags_for_certificate' do

    end

    describe '#put_account_configuration' do

    end

    describe '#remove_tags_from_certificate' do

    end

    describe '#renew_certificate' do

    end

    describe '#request_certificate' do

    end

    describe '#resend_validation_email' do

    end

    describe '#update_certificate_options' do

    end

  end
end
