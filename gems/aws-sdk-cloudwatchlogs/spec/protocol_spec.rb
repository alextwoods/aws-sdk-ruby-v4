# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-cloudwatchlogs'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::CloudWatchLogs
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#associate_kms_key' do

    end

    describe '#cancel_export_task' do

    end

    describe '#create_export_task' do

    end

    describe '#create_log_group' do

    end

    describe '#create_log_stream' do

    end

    describe '#delete_destination' do

    end

    describe '#delete_log_group' do

    end

    describe '#delete_log_stream' do

    end

    describe '#delete_metric_filter' do

    end

    describe '#delete_query_definition' do

    end

    describe '#delete_resource_policy' do

    end

    describe '#delete_retention_policy' do

    end

    describe '#delete_subscription_filter' do

    end

    describe '#describe_destinations' do

    end

    describe '#describe_export_tasks' do

    end

    describe '#describe_log_groups' do

    end

    describe '#describe_log_streams' do

    end

    describe '#describe_metric_filters' do

    end

    describe '#describe_queries' do

    end

    describe '#describe_query_definitions' do

    end

    describe '#describe_resource_policies' do

    end

    describe '#describe_subscription_filters' do

    end

    describe '#disassociate_kms_key' do

    end

    describe '#filter_log_events' do

    end

    describe '#get_log_events' do

    end

    describe '#get_log_group_fields' do

    end

    describe '#get_log_record' do

    end

    describe '#get_query_results' do

    end

    describe '#list_tags_log_group' do

    end

    describe '#put_destination' do

    end

    describe '#put_destination_policy' do

    end

    describe '#put_log_events' do

    end

    describe '#put_metric_filter' do

    end

    describe '#put_query_definition' do

    end

    describe '#put_resource_policy' do

    end

    describe '#put_retention_policy' do

    end

    describe '#put_subscription_filter' do

    end

    describe '#start_query' do

    end

    describe '#stop_query' do

    end

    describe '#tag_log_group' do

    end

    describe '#test_metric_filter' do

    end

    describe '#untag_log_group' do

    end

  end
end
