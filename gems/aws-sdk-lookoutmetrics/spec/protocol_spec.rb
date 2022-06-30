# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-lookoutmetrics'

require 'hearth/xml/node_matcher'
require 'hearth/query/param_matcher'

module AWS::SDK::LookoutMetrics
  describe Client do
    let(:endpoint) { 'http://127.0.0.1' }
    let(:config) { Config.new(stub_responses: true, endpoint: endpoint) }
    let(:client) { Client.new(config) }

    describe '#activate_anomaly_detector' do

    end

    describe '#back_test_anomaly_detector' do

    end

    describe '#create_alert' do

    end

    describe '#create_anomaly_detector' do

    end

    describe '#create_metric_set' do

    end

    describe '#deactivate_anomaly_detector' do

    end

    describe '#delete_alert' do

    end

    describe '#delete_anomaly_detector' do

    end

    describe '#describe_alert' do

    end

    describe '#describe_anomaly_detection_executions' do

    end

    describe '#describe_anomaly_detector' do

    end

    describe '#describe_metric_set' do

    end

    describe '#detect_metric_set_config' do

    end

    describe '#get_anomaly_group' do

    end

    describe '#get_feedback' do

    end

    describe '#get_sample_data' do

    end

    describe '#list_alerts' do

    end

    describe '#list_anomaly_detectors' do

    end

    describe '#list_anomaly_group_related_metrics' do

    end

    describe '#list_anomaly_group_summaries' do

    end

    describe '#list_anomaly_group_time_series' do

    end

    describe '#list_metric_sets' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#put_feedback' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

    describe '#update_anomaly_detector' do

    end

    describe '#update_metric_set' do

    end

  end
end
