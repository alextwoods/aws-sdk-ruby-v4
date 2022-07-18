# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PersonalizeRuntime
  module Builders

    # Operation Builder for GetPersonalizedRanking
    class GetPersonalizedRanking
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/personalize-ranking')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['campaignArn'] = input[:campaign_arn] unless input[:campaign_arn].nil?
        data['inputList'] = Builders::InputList.build(input[:input_list]) unless input[:input_list].nil?
        data['userId'] = input[:user_id] unless input[:user_id].nil?
        data['context'] = Builders::Context.build(input[:context]) unless input[:context].nil?
        data['filterArn'] = input[:filter_arn] unless input[:filter_arn].nil?
        data['filterValues'] = Builders::FilterValues.build(input[:filter_values]) unless input[:filter_values].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end

    # Map Builder for FilterValues
    class FilterValues
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # Map Builder for Context
    class Context
      def self.build(input)
        data = {}
        input.each do |key, value|
          data[key] = value unless value.nil?
        end
        data
      end
    end

    # List Builder for InputList
    class InputList
      def self.build(input)
        data = []
        input.each do |element|
          data << element unless element.nil?
        end
        data
      end
    end

    # Operation Builder for GetRecommendations
    class GetRecommendations
      def self.build(http_req, input:)
        http_req.http_method = 'POST'
        http_req.append_path('/recommendations')
        params = Hearth::Query::ParamList.new
        http_req.append_query_params(params)

        http_req.headers['Content-Type'] = 'application/json'
        data = {}
        data['campaignArn'] = input[:campaign_arn] unless input[:campaign_arn].nil?
        data['itemId'] = input[:item_id] unless input[:item_id].nil?
        data['userId'] = input[:user_id] unless input[:user_id].nil?
        data['numResults'] = input[:num_results] unless input[:num_results].nil?
        data['context'] = Builders::Context.build(input[:context]) unless input[:context].nil?
        data['filterArn'] = input[:filter_arn] unless input[:filter_arn].nil?
        data['filterValues'] = Builders::FilterValues.build(input[:filter_values]) unless input[:filter_values].nil?
        data['recommenderArn'] = input[:recommender_arn] unless input[:recommender_arn].nil?
        http_req.body = StringIO.new(Hearth::JSON.dump(data))
      end
    end
  end
end
