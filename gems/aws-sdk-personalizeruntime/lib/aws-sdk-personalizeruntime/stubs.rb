# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PersonalizeRuntime
  module Stubs

    # Operation Stubber for GetPersonalizedRanking
    class GetPersonalizedRanking
      def self.default(visited=[])
        {
          personalized_ranking: ItemList.default(visited),
          recommendation_id: 'recommendation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['personalizedRanking'] = Stubs::ItemList.stub(stub[:personalized_ranking]) unless stub[:personalized_ranking].nil?
        data['recommendationId'] = stub[:recommendation_id] unless stub[:recommendation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # List Stubber for ItemList
    class ItemList
      def self.default(visited=[])
        return nil if visited.include?('ItemList')
        visited = visited + ['ItemList']
        [
          PredictedItem.default(visited)
        ]
      end

      def self.stub(stub)
        stub ||= []
        data = []
        stub.each do |element|
          data << Stubs::PredictedItem.stub(element) unless element.nil?
        end
        data
      end
    end

    # Structure Stubber for PredictedItem
    class PredictedItem
      def self.default(visited=[])
        return nil if visited.include?('PredictedItem')
        visited = visited + ['PredictedItem']
        {
          item_id: 'item_id',
          score: 1.0,
        }
      end

      def self.stub(stub)
        stub ||= Types::PredictedItem.new
        data = {}
        data['itemId'] = stub[:item_id] unless stub[:item_id].nil?
        data['score'] = Hearth::NumberHelper.serialize(stub[:score])
        data
      end
    end

    # Operation Stubber for GetRecommendations
    class GetRecommendations
      def self.default(visited=[])
        {
          item_list: ItemList.default(visited),
          recommendation_id: 'recommendation_id',
        }
      end

      def self.stub(http_resp, stub:)
        data = {}
        http_resp.status = 200
        http_resp.headers['Content-Type'] = 'application/json'
        data['itemList'] = Stubs::ItemList.stub(stub[:item_list]) unless stub[:item_list].nil?
        data['recommendationId'] = stub[:recommendation_id] unless stub[:recommendation_id].nil?
        http_resp.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
