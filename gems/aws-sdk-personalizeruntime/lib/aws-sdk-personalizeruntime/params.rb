# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'securerandom'

module AWS::SDK::PersonalizeRuntime
  module Params

    module Context
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module FilterValues
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, context: context)
        data = {}
        params.each do |key, value|
          data[key] = value
        end
        data
      end
    end

    module GetPersonalizedRankingInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPersonalizedRankingInput, context: context)
        type = Types::GetPersonalizedRankingInput.new
        type.campaign_arn = params[:campaign_arn]
        type.input_list = InputList.build(params[:input_list], context: "#{context}[:input_list]") unless params[:input_list].nil?
        type.user_id = params[:user_id]
        type.context = Context.build(params[:context], context: "#{context}[:context]") unless params[:context].nil?
        type.filter_arn = params[:filter_arn]
        type.filter_values = FilterValues.build(params[:filter_values], context: "#{context}[:filter_values]") unless params[:filter_values].nil?
        type
      end
    end

    module GetPersonalizedRankingOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetPersonalizedRankingOutput, context: context)
        type = Types::GetPersonalizedRankingOutput.new
        type.personalized_ranking = ItemList.build(params[:personalized_ranking], context: "#{context}[:personalized_ranking]") unless params[:personalized_ranking].nil?
        type.recommendation_id = params[:recommendation_id]
        type
      end
    end

    module GetRecommendationsInput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecommendationsInput, context: context)
        type = Types::GetRecommendationsInput.new
        type.campaign_arn = params[:campaign_arn]
        type.item_id = params[:item_id]
        type.user_id = params[:user_id]
        type.num_results = params[:num_results]
        type.context = Context.build(params[:context], context: "#{context}[:context]") unless params[:context].nil?
        type.filter_arn = params[:filter_arn]
        type.filter_values = FilterValues.build(params[:filter_values], context: "#{context}[:filter_values]") unless params[:filter_values].nil?
        type.recommender_arn = params[:recommender_arn]
        type
      end
    end

    module GetRecommendationsOutput
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::GetRecommendationsOutput, context: context)
        type = Types::GetRecommendationsOutput.new
        type.item_list = ItemList.build(params[:item_list], context: "#{context}[:item_list]") unless params[:item_list].nil?
        type.recommendation_id = params[:recommendation_id]
        type
      end
    end

    module InputList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each do |element|
          data << element
        end
        data
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

    module ItemList
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Array, context: context)
        data = []
        params.each_with_index do |element, index|
          data << PredictedItem.build(element, context: "#{context}[#{index}]") unless element.nil?
        end
        data
      end
    end

    module PredictedItem
      def self.build(params, context: '')
        Hearth::Validator.validate!(params, ::Hash, Types::PredictedItem, context: context)
        type = Types::PredictedItem.new
        type.item_id = params[:item_id]
        type.score = params[:score]
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

  end
end
