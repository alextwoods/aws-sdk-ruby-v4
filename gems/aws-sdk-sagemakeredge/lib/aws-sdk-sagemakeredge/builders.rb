# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

module AWS::SDK::SagemakerEdge
  module Builders

    # Operation Builder for GetDeviceRegistration
    class GetDeviceRegistration
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/GetDeviceRegistration')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['DeviceName'] = input[:device_name] unless input[:device_name].nil?
        data['DeviceFleetName'] = input[:device_fleet_name] unless input[:device_fleet_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Operation Builder for SendHeartbeat
    class SendHeartbeat
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/SendHeartbeat')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['AgentMetrics'] = EdgeMetrics.build(input[:agent_metrics]) unless input[:agent_metrics].nil?
        data['Models'] = Models.build(input[:models]) unless input[:models].nil?
        data['AgentVersion'] = input[:agent_version] unless input[:agent_version].nil?
        data['DeviceName'] = input[:device_name] unless input[:device_name].nil?
        data['DeviceFleetName'] = input[:device_fleet_name] unless input[:device_fleet_name].nil?
        http_req.body = ::StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Builder for Models
    class Models
      def self.build(input)
        data = []
        input.each do |element|
          data << Model.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for Model
    class Model
      def self.build(input)
        data = {}
        data['ModelName'] = input[:model_name] unless input[:model_name].nil?
        data['ModelVersion'] = input[:model_version] unless input[:model_version].nil?
        data['LatestSampleTime'] = Hearth::TimeHelper.to_epoch_seconds(input[:latest_sample_time]).to_i unless input[:latest_sample_time].nil?
        data['LatestInference'] = Hearth::TimeHelper.to_epoch_seconds(input[:latest_inference]).to_i unless input[:latest_inference].nil?
        data['ModelMetrics'] = EdgeMetrics.build(input[:model_metrics]) unless input[:model_metrics].nil?
        data
      end
    end

    # List Builder for EdgeMetrics
    class EdgeMetrics
      def self.build(input)
        data = []
        input.each do |element|
          data << EdgeMetric.build(element) unless element.nil?
        end
        data
      end
    end

    # Structure Builder for EdgeMetric
    class EdgeMetric
      def self.build(input)
        data = {}
        data['Dimension'] = input[:dimension] unless input[:dimension].nil?
        data['MetricName'] = input[:metric_name] unless input[:metric_name].nil?
        data['Value'] = Hearth::NumberHelper.serialize(input[:value]) unless input[:value].nil?
        data['Timestamp'] = Hearth::TimeHelper.to_epoch_seconds(input[:timestamp]).to_i unless input[:timestamp].nil?
        data
      end
    end
  end
end
