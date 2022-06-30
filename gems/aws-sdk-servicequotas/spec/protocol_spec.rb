# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-servicequotas'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::ServiceQuotas
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_service_quota_template' do

    end

    describe '#delete_service_quota_increase_request_from_template' do

    end

    describe '#disassociate_service_quota_template' do

    end

    describe '#get_association_for_service_quota_template' do

    end

    describe '#get_aws_default_service_quota' do

    end

    describe '#get_requested_service_quota_change' do

    end

    describe '#get_service_quota' do

    end

    describe '#get_service_quota_increase_request_from_template' do

    end

    describe '#list_aws_default_service_quotas' do

    end

    describe '#list_requested_service_quota_change_history' do

    end

    describe '#list_requested_service_quota_change_history_by_quota' do

    end

    describe '#list_service_quota_increase_requests_in_template' do

    end

    describe '#list_service_quotas' do

    end

    describe '#list_services' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#put_service_quota_increase_request_into_template' do

    end

    describe '#request_service_quota_increase' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

  end
end
