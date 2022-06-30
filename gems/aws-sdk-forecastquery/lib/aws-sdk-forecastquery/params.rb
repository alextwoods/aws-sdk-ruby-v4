# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::Forecastquery
  module Params

    module DataPoint
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::DataPoint, context: context)
        type = Types::DataPoint.new
        type.timestamp = params[:timestamp]
        type.value = params[:value]
        type
      end
    end

    module Filters
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module Forecast
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::Forecast, context: context)
        type = Types::Forecast.new
        type.predictions = Predictions.build(params[:predictions], context: "#{context}[:predictions]") unless params[:predictions].nil?
        type
      end
    end

    module InvalidInputException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidInputException, context: context)
        type = Types::InvalidInputException.new
        type.message = params[:message]
        type
      end
    end

    module InvalidNextTokenException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::InvalidNextTokenException, context: context)
        type = Types::InvalidNextTokenException.new
        type.message = params[:message]
        type
      end
    end

    module LimitExceededException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::LimitExceededException, context: context)
        type = Types::LimitExceededException.new
        type.message = params[:message]
        type
      end
    end

    module Predictions
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = TimeSeries.build(value, context: "#{context}[:#{key}]") unless value.nil?
        end
        data
      end
    end

    module QueryForecastInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryForecastInput, context: context)
        type = Types::QueryForecastInput.new
        type.forecast_arn = params[:forecast_arn]
        type.start_date = params[:start_date]
        type.end_date = params[:end_date]
        type.filters = Filters.build(params[:filters], context: "#{context}[:filters]") unless params[:filters].nil?
        type.next_token = params[:next_token]
        type
      end
    end

    module QueryForecastOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::QueryForecastOutput, context: context)
        type = Types::QueryForecastOutput.new
        type.forecast = Forecast.build(params[:forecast], context: "#{context}[:forecast]") unless params[:forecast].nil?
        type
      end
    end

    module ResourceInUseException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceInUseException, context: context)
        type = Types::ResourceInUseException.new
        type.message = params[:message]
        type
      end
    end

    module ResourceNotFoundException
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::ResourceNotFoundException, context: context)
        type = Types::ResourceNotFoundException.new
        type.message = params[:message]
        type
      end
    end

    module TimeSeries
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << DataPoint.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

  end
end
