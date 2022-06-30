# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-resourcegroupstaggingapi'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::ResourceGroupsTaggingAPI
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#describe_report_creation' do

    end

    describe '#get_compliance_summary' do

    end

    describe '#get_resources' do

    end

    describe '#get_tag_keys' do

    end

    describe '#get_tag_values' do

    end

    describe '#start_report_creation' do

    end

    describe '#tag_resources' do

    end

    describe '#untag_resources' do

    end

  end
end
