# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/smithy-lang/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CloudWatch
  module Auth
    Params = Struct.new(:operation_name, :region, keyword_init: true)

    SCHEMES = [
      AWS::SDK::Core::AuthSchemes::SigV4.new,
      Hearth::AuthSchemes::Anonymous.new
    ].freeze

    class Resolver

      def resolve(params)
        options = []
        case params.operation_name
        when :delete_alarms
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :delete_anomaly_detector
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :delete_dashboards
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :delete_insight_rules
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :delete_metric_stream
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :describe_alarm_history
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :describe_alarms
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :describe_alarms_for_metric
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :describe_anomaly_detectors
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :describe_insight_rules
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :disable_alarm_actions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :disable_insight_rules
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :enable_alarm_actions
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :enable_insight_rules
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :get_dashboard
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :get_insight_rule_report
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :get_metric_data
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :get_metric_statistics
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :get_metric_stream
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :get_metric_widget_image
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :list_dashboards
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :list_managed_insight_rules
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :list_metrics
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :list_metric_streams
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :list_tags_for_resource
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :put_anomaly_detector
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :put_composite_alarm
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :put_dashboard
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :put_insight_rule
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :put_managed_insight_rules
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :put_metric_alarm
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :put_metric_data
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :put_metric_stream
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :set_alarm_state
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :start_metric_streams
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :stop_metric_streams
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :tag_resource
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        when :untag_resource
          options << Hearth::AuthOption.new(scheme_id: 'aws.auth#sigv4', signer_properties: { region: params.region, service: 'monitoring' })
        else nil
        end
        options
      end

    end
  end
end
