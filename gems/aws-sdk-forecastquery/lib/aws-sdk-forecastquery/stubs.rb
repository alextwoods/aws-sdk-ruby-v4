# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Forecastquery
  module Stubs

    # Operation Stubber for QueryForecast
    class QueryForecast
      def self.default(visited=[])
        {
          forecast: Stubs::Forecast.default(visited),
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        data['Forecast'] = Stubs::Forecast.stub(stub[:forecast]) unless stub[:forecast].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
        http_resp.status = 200
      end
    end

    # Structure Stubber for Forecast
    class Forecast
      def self.default(visited=[])
        return nil if visited.include?('Forecast')
        visited = visited + ['Forecast']
        {
          predictions: Stubs::Predictions.default(visited),
        }
      end

      def self.stub(stub)
        stub ||= Types::Forecast.new
        data = {}
        data['Predictions'] = Stubs::Predictions.stub(stub[:predictions]) unless stub[:predictions].nil?
        data
      end
    end

    # Map Stubber for Predictions
    class Predictions
      def self.default(visited=[])
        return nil if visited.include?('Predictions')
        visited = visited + ['Predictions']
        {
          test_key: Stubs::TimeSeries.default(visited)
        }
      end

      def self.stub(stub)
        stub ||= {}
        data = {}
        stub.each do |key, value|
          data[key] = Stubs::TimeSeries.stub(value) unless value.nil?
        end
        data
      end
    end

    # List Stubber for TimeSeries
    class TimeSeries
      def self.default(visited=[])
        return nil if visited.include?('TimeSeries')
        visited = visited + ['TimeSeries']
        [
          Stubs::DataPoint.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::DataPoint.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for DataPoint
    class DataPoint
      def self.default(visited=[])
        return nil if visited.include?('DataPoint')
        visited = visited + ['DataPoint']
        {
          timestamp: 'timestamp',
          value: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::DataPoint.new
        data = {}
        data['Timestamp'] = stub[:timestamp] unless stub[:timestamp].nil?
        data['Value'] = Hearth::NumberHelper.serialize(stub[:value])
        data
      end
    end
  end
end