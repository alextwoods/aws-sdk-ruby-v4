# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-ssmcontacts'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::SSMContacts
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#accept_page' do

    end

    describe '#activate_contact_channel' do

    end

    describe '#create_contact' do

    end

    describe '#create_contact_channel' do

    end

    describe '#deactivate_contact_channel' do

    end

    describe '#delete_contact' do

    end

    describe '#delete_contact_channel' do

    end

    describe '#describe_engagement' do

    end

    describe '#describe_page' do

    end

    describe '#get_contact' do

    end

    describe '#get_contact_channel' do

    end

    describe '#get_contact_policy' do

    end

    describe '#list_contact_channels' do

    end

    describe '#list_contacts' do

    end

    describe '#list_engagements' do

    end

    describe '#list_page_receipts' do

    end

    describe '#list_pages_by_contact' do

    end

    describe '#list_pages_by_engagement' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#put_contact_policy' do

    end

    describe '#send_activation_code' do

    end

    describe '#start_engagement' do

    end

    describe '#stop_engagement' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_contact' do

    end

    describe '#update_contact_channel' do

    end

  end
end
