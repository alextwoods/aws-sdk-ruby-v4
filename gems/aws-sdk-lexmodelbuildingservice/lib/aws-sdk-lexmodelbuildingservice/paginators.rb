# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::LexModelBuildingService
  module Paginators

    class GetBotAliases
      # @param [Client] client
      # @param [Hash] params (see Client#get_bot_aliases)
      # @param [Hash] options (see Client#get_bot_aliases)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_bot_aliases operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_bot_aliases(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_bot_aliases(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetBotChannelAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#get_bot_channel_associations)
      # @param [Hash] options (see Client#get_bot_channel_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_bot_channel_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_bot_channel_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_bot_channel_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetBots
      # @param [Client] client
      # @param [Hash] params (see Client#get_bots)
      # @param [Hash] options (see Client#get_bots)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_bots operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_bots(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_bots(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetBotVersions
      # @param [Client] client
      # @param [Hash] params (see Client#get_bot_versions)
      # @param [Hash] options (see Client#get_bot_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_bot_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_bot_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_bot_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetBuiltinIntents
      # @param [Client] client
      # @param [Hash] params (see Client#get_builtin_intents)
      # @param [Hash] options (see Client#get_builtin_intents)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_builtin_intents operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_builtin_intents(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_builtin_intents(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetBuiltinSlotTypes
      # @param [Client] client
      # @param [Hash] params (see Client#get_builtin_slot_types)
      # @param [Hash] options (see Client#get_builtin_slot_types)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_builtin_slot_types operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_builtin_slot_types(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_builtin_slot_types(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetIntents
      # @param [Client] client
      # @param [Hash] params (see Client#get_intents)
      # @param [Hash] options (see Client#get_intents)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_intents operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_intents(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_intents(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetIntentVersions
      # @param [Client] client
      # @param [Hash] params (see Client#get_intent_versions)
      # @param [Hash] options (see Client#get_intent_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_intent_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_intent_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_intent_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetMigrations
      # @param [Client] client
      # @param [Hash] params (see Client#get_migrations)
      # @param [Hash] options (see Client#get_migrations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_migrations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_migrations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_migrations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetSlotTypes
      # @param [Client] client
      # @param [Hash] params (see Client#get_slot_types)
      # @param [Hash] options (see Client#get_slot_types)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_slot_types operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_slot_types(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_slot_types(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetSlotTypeVersions
      # @param [Client] client
      # @param [Hash] params (see Client#get_slot_type_versions)
      # @param [Hash] options (see Client#get_slot_type_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_slot_type_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_slot_type_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_slot_type_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
