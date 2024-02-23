# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudWatch
  module Auth
    Params = Struct.new(:operation_name, keyword_init: true)

    SCHEMES = [
      String.new
    ].freeze

    class Resolver

      def resolve(auth_params)
        options = []
        case auth_params.operation_name
        when :delete_alarms
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :delete_anomaly_detector
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :delete_dashboards
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :delete_insight_rules
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :delete_metric_stream
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_alarm_history
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_alarms
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_alarms_for_metric
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_anomaly_detectors
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :describe_insight_rules
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :disable_alarm_actions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :disable_insight_rules
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :enable_alarm_actions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :enable_insight_rules
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :get_dashboard
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :get_insight_rule_report
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :get_metric_data
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :get_metric_statistics
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :get_metric_stream
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :get_metric_widget_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :list_dashboards
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :list_managed_insight_rules
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :list_metrics
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :list_metric_streams
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :list_tags_for_resource
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :put_anomaly_detector
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :put_composite_alarm
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :put_dashboard
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :put_insight_rule
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :put_managed_insight_rules
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :put_metric_alarm
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :put_metric_data
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :put_metric_stream
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :set_alarm_state
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :start_metric_streams
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :stop_metric_streams
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :tag_resource
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        when :untag_resource
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4')
        end
      end

    end
  end
end
