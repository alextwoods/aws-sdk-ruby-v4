# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-mwaa'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::MWAA
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#create_cli_token' do

    end

    describe '#create_environment' do

    end

    describe '#create_web_login_token' do

    end

    describe '#delete_environment' do

    end

    describe '#get_environment' do

    end

    describe '#list_environments' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#publish_metrics' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_environment' do

    end

  end
end