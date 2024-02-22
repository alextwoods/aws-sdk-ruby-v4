# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-cloudwatch'

module AWS::SDK::CloudWatch
  describe Client do
    let(:client) do
      Client.new(
        stub_responses: true,
        validate_input: false,
        endpoint: 'http://127.0.0.1',
        retry_strategy: Hearth::Retry::Standard.new(max_attempts: 0)
      )
    end

    describe '#delete_alarms' do

    end

    describe '#delete_anomaly_detector' do

    end

    describe '#delete_dashboards' do

    end

    describe '#delete_insight_rules' do

    end

    describe '#delete_metric_stream' do

    end

    describe '#describe_alarm_history' do

    end

    describe '#describe_alarms' do

    end

    describe '#describe_alarms_for_metric' do

    end

    describe '#describe_anomaly_detectors' do

    end

    describe '#describe_insight_rules' do

    end

    describe '#disable_alarm_actions' do

    end

    describe '#disable_insight_rules' do

    end

    describe '#enable_alarm_actions' do

    end

    describe '#enable_insight_rules' do

    end

    describe '#get_dashboard' do

    end

    describe '#get_insight_rule_report' do

    end

    describe '#get_metric_data' do

    end

    describe '#get_metric_statistics' do

    end

    describe '#get_metric_stream' do

    end

    describe '#get_metric_widget_image' do

    end

    describe '#list_dashboards' do

    end

    describe '#list_managed_insight_rules' do

    end

    describe '#list_metrics' do

    end

    describe '#list_metric_streams' do

    end

    describe '#list_tags_for_resource' do

    end

    describe '#put_anomaly_detector' do

    end

    describe '#put_composite_alarm' do

    end

    describe '#put_dashboard' do

    end

    describe '#put_insight_rule' do

    end

    describe '#put_managed_insight_rules' do

    end

    describe '#put_metric_alarm' do

    end

    describe '#put_metric_data' do

    end

    describe '#put_metric_stream' do

    end

    describe '#set_alarm_state' do

    end

    describe '#start_metric_streams' do

    end

    describe '#stop_metric_streams' do

    end

    describe '#tag_resource' do

    end

    describe '#untag_resource' do

    end

  end
end
