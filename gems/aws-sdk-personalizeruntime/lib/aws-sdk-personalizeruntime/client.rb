# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

require 'stringio'

require_relative 'middleware/request_id'

module AWS::SDK::PersonalizeRuntime
  # An API client for AmazonPersonalizeRuntime
  # See {#initialize} for a full list of supported configuration options
  # <p></p>
  #
  class Client
    include Hearth::ClientStubs

    @middleware = Hearth::MiddlewareBuilder.new

    def self.middleware
      @middleware
    end

    # @param [Config] config
    #   An instance of {Config}
    #
    def initialize(config = AWS::SDK::PersonalizeRuntime::Config.new, options = {})
      @config = config
      @middleware = Hearth::MiddlewareBuilder.new(options[:middleware])
      @stubs = Hearth::Stubbing::Stubs.new
      @retry_quota = Hearth::Retry::RetryQuota.new
      @client_rate_limiter = Hearth::Retry::ClientRateLimiter.new
    end

    # <p>Re-ranks a list of recommended items for the given user. The first item in the list is
    #       deemed the most likely item to be of interest to the user.</p>
    #          <note>
    #             <p>The solution backing the campaign must have been created using a recipe of type
    #         PERSONALIZED_RANKING.</p>
    #          </note>
    #
    # @param [Hash] params
    #   See {Types::GetPersonalizedRankingInput}.
    #
    # @option params [String] :campaign_arn
    #   <p>The Amazon Resource Name (ARN) of the campaign to use for generating the personalized
    #         ranking.</p>
    #
    # @option params [Array<String>] :input_list
    #   <p>A list of items (by <code>itemId</code>) to rank. If an item was not included in the training dataset,
    #         the item is appended to the end of the reranked list. The maximum is 500.</p>
    #
    # @option params [String] :user_id
    #   <p>The user for which you want the campaign to provide a personalized ranking.</p>
    #
    # @option params [Hash<String, String>] :context
    #   <p>The contextual metadata to use when getting recommendations. Contextual metadata includes
    #         any interaction information that might be relevant when getting a user's recommendations, such
    #         as the user's current location or device type.</p>
    #
    # @option params [String] :filter_arn
    #   <p>The Amazon Resource Name (ARN) of a filter you created to include items or exclude items from recommendations for a given user.
    #         For more information, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter.html">Filtering Recommendations</a>.</p>
    #
    # @option params [Hash<String, String>] :filter_values
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
    # @return [Types::GetPersonalizedRankingOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_personalized_ranking(
    #     campaign_arn: 'campaignArn', # required
    #     input_list: [
    #       'member'
    #     ], # required
    #     user_id: 'userId', # required
    #     context: {
    #       'key' => 'value'
    #     },
    #     filter_arn: 'filterArn',
    #     filter_values: {
    #       'key' => 'value'
    #     }
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetPersonalizedRankingOutput
    #   resp.data.personalized_ranking #=> Array<PredictedItem>
    #   resp.data.personalized_ranking[0] #=> Types::PredictedItem
    #   resp.data.personalized_ranking[0].item_id #=> String
    #   resp.data.personalized_ranking[0].score #=> Float
    #   resp.data.recommendation_id #=> String
    #
    def get_personalized_ranking(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetPersonalizedRankingInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetPersonalizedRankingInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetPersonalizedRanking
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException]),
        data_parser: Parsers::GetPersonalizedRanking
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetPersonalizedRanking,
        stubs: @stubs,
        params_class: Params::GetPersonalizedRankingOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_personalized_ranking
        )
      )
      raise resp.error if resp.error
      resp
    end

    # <p>Returns a list of recommended items. For campaigns, the campaign's Amazon Resource Name (ARN) is required and the required user and item input depends on the recipe type used to
    #       create the solution backing the campaign as follows:</p>
    #          <ul>
    #             <li>
    #                <p>USER_PERSONALIZATION - <code>userId</code> required, <code>itemId</code> not used</p>
    #             </li>
    #             <li>
    #                <p>RELATED_ITEMS - <code>itemId</code> required, <code>userId</code> not used</p>
    #             </li>
    #          </ul>
    #          <note>
    #             <p>Campaigns that are backed by a solution created using a recipe of type
    #         PERSONALIZED_RANKING use the  API.</p>
    #          </note>
    #          <p>
    #       For recommenders, the recommender's ARN is required and the required item and user input depends on the use case (domain-based recipe) backing the recommender.
    #       For information on use case requirements see <a href="https://docs.aws.amazon.com/personalize/latest/dg/domain-use-cases.html">Choosing recommender use cases</a>.
    #     </p>
    #
    # @param [Hash] params
    #   See {Types::GetRecommendationsInput}.
    #
    # @option params [String] :campaign_arn
    #   <p>The Amazon Resource Name (ARN) of the campaign to use for getting recommendations.</p>
    #
    # @option params [String] :item_id
    #   <p>The item ID to provide recommendations for.</p>
    #            <p>Required for <code>RELATED_ITEMS</code> recipe type.</p>
    #
    # @option params [String] :user_id
    #   <p>The user ID to provide recommendations for.</p>
    #            <p>Required for <code>USER_PERSONALIZATION</code> recipe type.</p>
    #
    # @option params [Integer] :num_results
    #   <p>The number of results to return. The default is 25. The maximum is 500.</p>
    #
    # @option params [Hash<String, String>] :context
    #   <p>The contextual metadata to use when getting recommendations. Contextual metadata includes
    #         any interaction information that might be relevant when getting a user's recommendations, such
    #         as the user's current location or device type.</p>
    #
    # @option params [String] :filter_arn
    #   <p>The ARN of the filter to apply to the returned recommendations. For more information, see
    #         <a href="https://docs.aws.amazon.com/personalize/latest/dg/filter.html">Filtering Recommendations</a>.</p>
    #            <p>When using this parameter, be sure the filter resource is <code>ACTIVE</code>.</p>
    #
    # @option params [Hash<String, String>] :filter_values
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
    # @option params [String] :recommender_arn
    #   <p>The Amazon Resource Name (ARN) of the recommender to use to get recommendations. Provide a recommender ARN if you
    #       created a Domain dataset group with a recommender for a domain use case.</p>
    #
    # @return [Types::GetRecommendationsOutput]
    #
    # @example Request syntax with placeholder values
    #
    #   resp = client.get_recommendations(
    #     campaign_arn: 'campaignArn',
    #     item_id: 'itemId',
    #     user_id: 'userId',
    #     num_results: 1,
    #     context: {
    #       'key' => 'value'
    #     },
    #     filter_arn: 'filterArn',
    #     filter_values: {
    #       'key' => 'value'
    #     },
    #     recommender_arn: 'recommenderArn'
    #   )
    #
    # @example Response structure
    #
    #   resp.data #=> Types::GetRecommendationsOutput
    #   resp.data.item_list #=> Array<PredictedItem>
    #   resp.data.item_list[0] #=> Types::PredictedItem
    #   resp.data.item_list[0].item_id #=> String
    #   resp.data.item_list[0].score #=> Float
    #   resp.data.recommendation_id #=> String
    #
    def get_recommendations(params = {}, options = {}, &block)
      stack = Hearth::MiddlewareStack.new
      input = Params::GetRecommendationsInput.build(params)
      response_body = ::StringIO.new
      stack.use(Hearth::Middleware::Validate,
        validator: Validators::GetRecommendationsInput,
        validate_input: @config.validate_input
      )
      stack.use(Hearth::Middleware::Build,
        builder: Builders::GetRecommendations
      )
      stack.use(Hearth::HTTP::Middleware::ContentLength)
      stack.use(Hearth::Middleware::Retry,
        retry_mode: @config.retry_mode,
        error_inspector_class: Hearth::Retry::ErrorInspector,
        retry_quota: @retry_quota,
        max_attempts: @config.max_attempts,
        client_rate_limiter: @client_rate_limiter,
        adaptive_retry_wait_to_fill: @config.adaptive_retry_wait_to_fill
      )
      stack.use(Hearth::Middleware::Parse,
        error_parser: Hearth::HTTP::ErrorParser.new(error_module: Errors, success_status: 200, errors: [Errors::ResourceNotFoundException, Errors::InvalidInputException]),
        data_parser: Parsers::GetRecommendations
      )
      stack.use(Middleware::RequestId)
      stack.use(Hearth::Middleware::Send,
        stub_responses: @config.stub_responses,
        client: Hearth::HTTP::Client.new(logger: @config.logger, http_wire_trace: options.fetch(:http_wire_trace, @config.http_wire_trace)),
        stub_class: Stubs::GetRecommendations,
        stubs: @stubs,
        params_class: Params::GetRecommendationsOutput
      )
      apply_middleware(stack, options[:middleware])

      resp = stack.run(
        input: input,
        context: Hearth::Context.new(
          request: Hearth::HTTP::Request.new(url: options.fetch(:endpoint, @config.endpoint)),
          response: Hearth::HTTP::Response.new(body: response_body),
          params: params,
          logger: @config.logger,
          operation_name: :get_recommendations
        )
      )
      raise resp.error if resp.error
      resp
    end

    private

    def apply_middleware(middleware_stack, middleware)
      Client.middleware.apply(middleware_stack)
      @middleware.apply(middleware_stack)
      Hearth::MiddlewareBuilder.new(middleware).apply(middleware_stack)
    end
  end
end
