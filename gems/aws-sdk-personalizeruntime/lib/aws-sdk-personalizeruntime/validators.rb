# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PersonalizeRuntime
  module Validators

    class Context
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class FilterValues
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Hash, context: context)
        input.each do |key, value|
          Hearth::Validator.validate!(key, ::String, ::Symbol, context: "#{context}.keys")
          Hearth::Validator.validate!(value, ::String, context: "#{context}[:#{key}]")
        end
      end
    end

    class GetPersonalizedRankingInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPersonalizedRankingInput, context: context)
        Hearth::Validator.validate!(input[:campaign_arn], ::String, context: "#{context}[:campaign_arn]")
        InputList.validate!(input[:input_list], context: "#{context}[:input_list]") unless input[:input_list].nil?
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Context.validate!(input[:context], context: "#{context}[:context]") unless input[:context].nil?
        Hearth::Validator.validate!(input[:filter_arn], ::String, context: "#{context}[:filter_arn]")
        FilterValues.validate!(input[:filter_values], context: "#{context}[:filter_values]") unless input[:filter_values].nil?
      end
    end

    class GetPersonalizedRankingOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetPersonalizedRankingOutput, context: context)
        ItemList.validate!(input[:personalized_ranking], context: "#{context}[:personalized_ranking]") unless input[:personalized_ranking].nil?
        Hearth::Validator.validate!(input[:recommendation_id], ::String, context: "#{context}[:recommendation_id]")
      end
    end

    class GetRecommendationsInput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecommendationsInput, context: context)
        Hearth::Validator.validate!(input[:campaign_arn], ::String, context: "#{context}[:campaign_arn]")
        Hearth::Validator.validate!(input[:item_id], ::String, context: "#{context}[:item_id]")
        Hearth::Validator.validate!(input[:user_id], ::String, context: "#{context}[:user_id]")
        Hearth::Validator.validate!(input[:num_results], ::Integer, context: "#{context}[:num_results]")
        Context.validate!(input[:context], context: "#{context}[:context]") unless input[:context].nil?
        Hearth::Validator.validate!(input[:filter_arn], ::String, context: "#{context}[:filter_arn]")
        FilterValues.validate!(input[:filter_values], context: "#{context}[:filter_values]") unless input[:filter_values].nil?
        Hearth::Validator.validate!(input[:recommender_arn], ::String, context: "#{context}[:recommender_arn]")
      end
    end

    class GetRecommendationsOutput
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::GetRecommendationsOutput, context: context)
        ItemList.validate!(input[:item_list], context: "#{context}[:item_list]") unless input[:item_list].nil?
        Hearth::Validator.validate!(input[:recommendation_id], ::String, context: "#{context}[:recommendation_id]")
      end
    end

    class InputList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          Hearth::Validator.validate!(element, ::String, context: "#{context}[#{index}]")
        end
      end
    end

    class InvalidInputException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::InvalidInputException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

    class ItemList
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, ::Array, context: context)
        input.each_with_index do |element, index|
          PredictedItem.validate!(element, context: "#{context}[#{index}]") unless element.nil?
        end
      end
    end

    class PredictedItem
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::PredictedItem, context: context)
        Hearth::Validator.validate!(input[:item_id], ::String, context: "#{context}[:item_id]")
        Hearth::Validator.validate!(input[:score], ::Float, context: "#{context}[:score]")
      end
    end

    class ResourceNotFoundException
      def self.validate!(input, context:)
        Hearth::Validator.validate!(input, Types::ResourceNotFoundException, context: context)
        Hearth::Validator.validate!(input[:message], ::String, context: "#{context}[:message]")
      end
    end

  end
end
