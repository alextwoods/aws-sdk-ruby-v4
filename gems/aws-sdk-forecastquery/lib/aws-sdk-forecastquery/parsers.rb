# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'base64'

module AWS::SDK::Forecastquery
  module Parsers

    # Operation Parser for QueryForecast
    class QueryForecast
      def self.parse(http_resp)
        data = Types::QueryForecastOutput.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.forecast = (Parsers::Forecast.parse(map['Forecast']) unless map['Forecast'].nil?)
        data
      end
    end

    class Forecast
      def self.parse(map)
        data = Types::Forecast.new
        data.predictions = (Parsers::Predictions.parse(map['Predictions']) unless map['Predictions'].nil?)
        return data
      end
    end

    class Predictions
      def self.parse(map)
        data = {}
        map.map do |key, value|
          data[key] = Parsers::TimeSeries.parse(value) unless value.nil?
        end
        data
      end
    end

    class TimeSeries
      def self.parse(list)
        list.map do |value|
          Parsers::DataPoint.parse(value) unless value.nil?
        end
      end
    end

    class DataPoint
      def self.parse(map)
        data = Types::DataPoint.new
        data.timestamp = map['Timestamp']
        data.value = Hearth::NumberHelper.deserialize(map['Value'])
        return data
      end
    end

    # Error Parser for InvalidInputException
    class InvalidInputException
      def self.parse(http_resp)
        data = Types::InvalidInputException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceInUseException
    class ResourceInUseException
      def self.parse(http_resp)
        data = Types::ResourceInUseException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for InvalidNextTokenException
    class InvalidNextTokenException
      def self.parse(http_resp)
        data = Types::InvalidNextTokenException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for LimitExceededException
    class LimitExceededException
      def self.parse(http_resp)
        data = Types::LimitExceededException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        body = http_resp.body.read
        return data if body.empty?
        map = Hearth::JSON.load(body)
        data.message = map['Message']
        data
      end
    end
  end
end
