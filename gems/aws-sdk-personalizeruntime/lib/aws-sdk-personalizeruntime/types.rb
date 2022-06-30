# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::PersonalizeRuntime
  module Types

    # @!attribute campaign_arn
    #   <p>The Amazon Resource Name (ARN) of the campaign to use for generating the personalized
    #         ranking.</p>
    #
    #   @return [String]
    #
    # @!attribute input_list
    #   <p>A list of items (by <code>itemId</code>) to rank. If an item was not included in the training dataset,
    #         the item is appended to the end of the reranked list. The maximum is 500.</p>
    #
    #   @return [Array<String>]
    #
    # @!attribute user_id
    #   <p>The user for which you want the campaign to provide a personalized ranking.</p>
    #
    #   @return [String]
    #
    # @!attribute context
    #   <p>The contextual metadata to use when getting recommendations. Contextual metadata includes
    #         any interaction information that might be relevant when getting a user's recommendations, such
    #         as the user's current location or device type.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute filter_arn
    #   <p>The Amazon Resource Name (ARN) of a filter you created to include items or exclude items from recommendations for a given user.
    #         For more information, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter.html">Filtering Recommendations</a>.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_values
    #   <p>The values to use when filtering recommendations. For each placeholder parameter in your filter expression, provide the parameter name (in matching case)
    #         as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma.
    #       </p>
    #            <p>For filter expressions that use an <code>INCLUDE</code> element to include items,
    #         you must provide values for all parameters that are defined in the expression. For
    #         filters with expressions that use an <code>EXCLUDE</code> element to exclude items, you
    #         can omit the <code>filter-values</code>.In this case, Amazon Personalize doesn't use that portion of
    #         the expression to filter recommendations.</p>
    #            <p>For more information, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter.html">Filtering Recommendations</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    GetPersonalizedRankingInput = ::Struct.new(
      :campaign_arn,
      :input_list,
      :user_id,
      :context,
      :filter_arn,
      :filter_values,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute personalized_ranking
    #   <p>A list of items in order of most likely interest to the user. The maximum is 500.</p>
    #
    #   @return [Array<PredictedItem>]
    #
    # @!attribute recommendation_id
    #   <p>The ID of the recommendation.</p>
    #
    #   @return [String]
    #
    GetPersonalizedRankingOutput = ::Struct.new(
      :personalized_ranking,
      :recommendation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # @!attribute campaign_arn
    #   <p>The Amazon Resource Name (ARN) of the campaign to use for getting recommendations.</p>
    #
    #   @return [String]
    #
    # @!attribute item_id
    #   <p>The item ID to provide recommendations for.</p>
    #            <p>Required for <code>RELATED_ITEMS</code> recipe type.</p>
    #
    #   @return [String]
    #
    # @!attribute user_id
    #   <p>The user ID to provide recommendations for.</p>
    #            <p>Required for <code>USER_PERSONALIZATION</code> recipe type.</p>
    #
    #   @return [String]
    #
    # @!attribute num_results
    #   <p>The number of results to return. The default is 25. The maximum is 500.</p>
    #
    #   @return [Integer]
    #
    # @!attribute context
    #   <p>The contextual metadata to use when getting recommendations. Contextual metadata includes
    #         any interaction information that might be relevant when getting a user's recommendations, such
    #         as the user's current location or device type.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute filter_arn
    #   <p>The ARN of the filter to apply to the returned recommendations. For more information, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter.html">Filtering Recommendations</a>.</p>
    #            <p>When using this parameter, be sure the filter resource is <code>ACTIVE</code>.</p>
    #
    #   @return [String]
    #
    # @!attribute filter_values
    #   <p>The values to use when filtering recommendations. For each placeholder parameter in your filter expression, provide the parameter name (in matching case)
    #         as a key and the filter value(s) as the corresponding value. Separate multiple values for one parameter with a comma.
    #       </p>
    #            <p>For filter expressions that use an <code>INCLUDE</code> element to include items,
    #       you must provide values for all parameters that are defined in the expression. For
    #       filters with expressions that use an <code>EXCLUDE</code> element to exclude items, you
    #         can omit the <code>filter-values</code>.In this case, Amazon Personalize doesn't use that portion of
    #       the expression to filter recommendations.</p>
    #            <p>For more information, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter.html">Filtering Recommendations</a>.</p>
    #
    #   @return [Hash<String, String>]
    #
    # @!attribute recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender to use to get recommendations. Provide a recommender ARN if you
    #       created a Domain dataset group with a recommender for a domain use case.</p>
    #
    #   @return [String]
    #
    GetRecommendationsInput = ::Struct.new(
      :campaign_arn,
      :item_id,
      :user_id,
      :num_results,
      :context,
      :filter_arn,
      :filter_values,
      :recommender_arn,
      keyword_init: true
    ) do
      include Hearth::Structure
      def initialize(*)
        super
        self.num_results ||= 0
      end

    end

    # @!attribute item_list
    #   <p>A list of recommendations sorted in descending order by prediction score. There can be a
    #         maximum of 500 items in the list.</p>
    #
    #   @return [Array<PredictedItem>]
    #
    # @!attribute recommendation_id
    #   <p>The ID of the recommendation.</p>
    #
    #   @return [String]
    #
    GetRecommendationsOutput = ::Struct.new(
      :item_list,
      :recommendation_id,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>Provide a valid value for the field or parameter.</p>
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

    # <p>An object that identifies an item.</p>
    #          <p>The  and  APIs return a list of
    #       <code>PredictedItem</code>s.</p>
    #
    # @!attribute item_id
    #   <p>The recommended item ID.</p>
    #
    #   @return [String]
    #
    # @!attribute score
    #   <p>A numeric representation of the model's certainty that the item will be the next user
    #         selection. For more information on scoring logic, see <a>how-scores-work</a>.</p>
    #
    #   @return [Float]
    #
    PredictedItem = ::Struct.new(
      :item_id,
      :score,
      keyword_init: true
    ) do
      include Hearth::Structure
    end

    # <p>The specified resource does not exist.</p>
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
