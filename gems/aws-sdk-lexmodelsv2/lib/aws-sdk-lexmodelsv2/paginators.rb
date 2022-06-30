# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexModelsV2
  module Paginators

    class ListAggregatedUtterances
      # @param [Client] client
      # @param [Hash] params (see Client#list_aggregated_utterances)
      # @param [Hash] options (see Client#list_aggregated_utterances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_aggregated_utterances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_aggregated_utterances(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_aggregated_utterances(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListBotAliases
      # @param [Client] client
      # @param [Hash] params (see Client#list_bot_aliases)
      # @param [Hash] options (see Client#list_bot_aliases)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_bot_aliases operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_bot_aliases(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_bot_aliases(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListBotLocales
      # @param [Client] client
      # @param [Hash] params (see Client#list_bot_locales)
      # @param [Hash] options (see Client#list_bot_locales)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_bot_locales operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_bot_locales(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_bot_locales(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListBotRecommendations
      # @param [Client] client
      # @param [Hash] params (see Client#list_bot_recommendations)
      # @param [Hash] options (see Client#list_bot_recommendations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_bot_recommendations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_bot_recommendations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_bot_recommendations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListBots
      # @param [Client] client
      # @param [Hash] params (see Client#list_bots)
      # @param [Hash] options (see Client#list_bots)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_bots operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_bots(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_bots(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListBotVersions
      # @param [Client] client
      # @param [Hash] params (see Client#list_bot_versions)
      # @param [Hash] options (see Client#list_bot_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_bot_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_bot_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_bot_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListBuiltInIntents
      # @param [Client] client
      # @param [Hash] params (see Client#list_built_in_intents)
      # @param [Hash] options (see Client#list_built_in_intents)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_built_in_intents operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_built_in_intents(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_built_in_intents(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListBuiltInSlotTypes
      # @param [Client] client
      # @param [Hash] params (see Client#list_built_in_slot_types)
      # @param [Hash] options (see Client#list_built_in_slot_types)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_built_in_slot_types operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_built_in_slot_types(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_built_in_slot_types(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListExports
      # @param [Client] client
      # @param [Hash] params (see Client#list_exports)
      # @param [Hash] options (see Client#list_exports)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_exports operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_exports(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_exports(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListImports
      # @param [Client] client
      # @param [Hash] params (see Client#list_imports)
      # @param [Hash] options (see Client#list_imports)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_imports operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_imports(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_imports(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListIntents
      # @param [Client] client
      # @param [Hash] params (see Client#list_intents)
      # @param [Hash] options (see Client#list_intents)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_intents operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_intents(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_intents(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListRecommendedIntents
      # @param [Client] client
      # @param [Hash] params (see Client#list_recommended_intents)
      # @param [Hash] options (see Client#list_recommended_intents)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_recommended_intents operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_recommended_intents(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_recommended_intents(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSlots
      # @param [Client] client
      # @param [Hash] params (see Client#list_slots)
      # @param [Hash] options (see Client#list_slots)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_slots operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_slots(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_slots(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSlotTypes
      # @param [Client] client
      # @param [Hash] params (see Client#list_slot_types)
      # @param [Hash] options (see Client#list_slot_types)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_slot_types operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_slot_types(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_slot_types(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
