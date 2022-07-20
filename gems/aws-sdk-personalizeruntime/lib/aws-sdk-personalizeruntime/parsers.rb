# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PersonalizeRuntime
  module Parsers

    # Operation Parser for GetPersonalizedRanking
    class GetPersonalizedRanking
      def self.parse(http_resp)
        data = Types::GetPersonalizedRankingOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.personalized_ranking = (Parsers::ItemList.parse(map['personalizedRanking']) unless map['personalizedRanking'].nil?)
        data.recommendation_id = map['recommendationId']
        data
      end
    end

    class ItemList
      def self.parse(list)
        data = []
        list.map do |value|
          data << Parsers::PredictedItem.parse(value) unless value.nil?
        end
        data
      end
    end

    class PredictedItem
      def self.parse(map)
        data = Types::PredictedItem.new
        data.item_id = map['itemId']
        data.score = Hearth::NumberHelper.deserialize(map['score'])
        return data
      end
    end

    # Error Parser for ResourceNotFoundException
    class ResourceNotFoundException
      def self.parse(http_resp)
        data = Types::ResourceNotFoundException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Error Parser for InvalidInputException
    class InvalidInputException
      def self.parse(http_resp)
        data = Types::InvalidInputException.new
        map = Hearth::JSON.load(http_resp.body)
        data.message = map['message'] || map['Message']
        data
      end
    end

    # Operation Parser for GetRecommendations
    class GetRecommendations
      def self.parse(http_resp)
        data = Types::GetRecommendationsOutput.new
        map = Hearth::JSON.load(http_resp.body)
        data.item_list = (Parsers::ItemList.parse(map['itemList']) unless map['itemList'].nil?)
        data.recommendation_id = map['recommendationId']
        data
      end
    end
  end
end
