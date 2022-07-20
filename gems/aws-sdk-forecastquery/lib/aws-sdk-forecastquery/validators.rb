# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Forecastquery
  module Validators

    class DataPoint
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::DataPoint, context: context)
        Hearth::Validator.validate!(input[:timestamp], ::String, context: "#{context}[:timestamp]")
        Hearth::Validator.validate!(input[:value], ::Float, context: "#{context}[:value]")
      end
    end

    class Filters
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class Forecast
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::Forecast, context: context)
        Predictions.validate!(input[:predictions], context: "#{context}[:predictions]") unless input[:predictions].nil?
      end
    end

    class InvalidInputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class InvalidNextTokenException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidNextTokenException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class LimitExceededException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::LimitExceededException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class Predictions
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          TimeSeries.validate!(value, context: "#{context}[:#{key}]") unless value.nil?
        end
      end
    end

    class QueryForecastInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryForecastInput, context: context)
        Hearth::Validator.validate!(input[:forecast_arn], ::String, context: "#{context}[:forecast_arn]")
        Hearth::Validator.validate!(input[:start_date], ::String, context: "#{context}[:start_date]")
        Hearth::Validator.validate!(input[:end_date], ::String, context: "#{context}[:end_date]")
        Filters.validate!(input[:filters], context: "#{context}[:filters]") unless input[:filters].nil?
        Hearth::Validator.validate!(input[:next_token], ::String, context: "#{context}[:next_token]")
      end
    end

    class QueryForecastOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::QueryForecastOutput, context: context)
        Forecast.validate!(input[:forecast], context: "#{context}[:forecast]") unless input[:forecast].nil?
      end
    end

    class ResourceInUseException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceInUseException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class TimeSeries
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          DataPoint.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

  end
end
