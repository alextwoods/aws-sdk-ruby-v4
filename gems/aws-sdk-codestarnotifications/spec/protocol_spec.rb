# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-codestarnotifications'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::CodestarNotifications
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_notification_rule' do

    end

    describe '#delete_notification_rule' do

    end

    describe '#delete_target' do

    end

    describe '#describe_notification_rule' do

    end

    describe '#list_event_types' do

    end

    describe '#list_notification_rules' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#list_targets' do

    end

    describe '#subscribe' do

    end

    describe '#tag_resource' do

    end

    describe '#unsubscribe' do

    end

    describe '#untag_resource' do

    end

    describe '#update_notification_rule' do

    end

  end
end
