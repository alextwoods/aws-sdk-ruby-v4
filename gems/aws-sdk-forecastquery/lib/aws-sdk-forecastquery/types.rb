# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Forecastquery
  module Types

    # <p>The forecast value for a specific date. Part of the <a>Forecast</a>
    #       object.</p>
    #
    # @!attribute timestamp
    #   <p>The timestamp of the specific forecast.</p>
    #
    #   @return [String]
    #
    # @!attribute value
    #   <p>The forecast value.</p>
    #
    #   @return [Float]
    #
    DataPoint = ::Struct.new(
      :timestamp,
      :value,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provides information about a forecast. Returned as part of the <a>QueryForecast</a> response.</p>
    #
    # @!attribute predictions
    #   <p>The forecast.</p>
    #            <p>The <i>string</i> of the string-to-array map is one of the following
    #         values:</p>
    #            <ul>
    #               <li>
    #                  <p>p10</p>
    #               </li>
    #               <li>
    #                  <p>p50</p>
    #               </li>
    #               <li>
    #                  <p>p90</p>
    #               </li>
    #            </ul>
    #
    #   @return [Hash<String, Array<DataPoint>>]
    #
    Forecast = ::Struct.new(
      :predictions,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The value is invalid or is too long.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidInputException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The token is not valid. Tokens expire after 24 hours.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    InvalidNextTokenException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The limit on the number of requests per second has been exceeded.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    LimitExceededException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute forecast_arn
    #   <p>The Amazon Resource Name (ARN) of the forecast to query.</p>
    #
    #   @return [String]
    #
    # @!attribute start_date
    #   <p>The start date for the forecast. Specify the date using this format: yyyy-MM-dd'T'HH:mm:ss
    #         (ISO 8601 format). For example, 2015-01-01T08:00:00.</p>
    #
    #   @return [String]
    #
    # @!attribute end_date
    #   <p>The end date for the forecast. Specify the date using this format: yyyy-MM-dd'T'HH:mm:ss
    #         (ISO 8601 format). For example, 2015-01-01T20:00:00. </p>
    #
    #   @return [String]
    #
    # @!attribute filters
    #   <p>The filtering criteria to apply when retrieving the forecast. For example, to get the
    #         forecast for <code>client_21</code> in the electricity usage dataset, specify the
    #         following:</p>
    #            <p>
    #               <code>{"item_id" : "client_21"}</code>
    #            </p>
    #
    #
    #            <p>To get the full forecast, use the <a href="https://docs.aws.amazon.com/en_us/forecast/latest/dg/API_CreateForecastExportJob.html">CreateForecastExportJob</a> operation.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute next_token
    #   <p>If the result of the previous request was truncated, the response includes a
    #           <code>NextToken</code>. To retrieve the next set of results, use the token in the next
    #         request. Tokens expire after 24 hours.</p>
    #
    #   @return [String]
    #
    QueryForecastInput = ::Struct.new(
      :forecast_arn,
      :start_date,
      :end_date,
      :filters,
      :next_token,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute forecast
    #   <p>The forecast.</p>
    #
    #   @return [Forecast]
    #
    QueryForecastOutput = ::Struct.new(
      :forecast,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource is in use.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceInUseException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>We can't find that resource. Check the information that you've provided and try
    #       again.</p>
    #
    # @!attribute message
    #
    #   @return [String]
    #
    ResourceNotFoundException = ::Struct.new(
      :message,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

  end
end
