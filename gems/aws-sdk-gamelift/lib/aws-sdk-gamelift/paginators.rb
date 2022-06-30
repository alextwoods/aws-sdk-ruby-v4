# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::GameLift
  module Paginators

    class DescribeFleetAttributes
      # @param [Client] client
      # @param [Hash] params (see Client#describe_fleet_attributes)
      # @param [Hash] options (see Client#describe_fleet_attributes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_fleet_attributes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_fleet_attributes(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_fleet_attributes(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeFleetCapacity
      # @param [Client] client
      # @param [Hash] params (see Client#describe_fleet_capacity)
      # @param [Hash] options (see Client#describe_fleet_capacity)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_fleet_capacity operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_fleet_capacity(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_fleet_capacity(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeFleetEvents
      # @param [Client] client
      # @param [Hash] params (see Client#describe_fleet_events)
      # @param [Hash] options (see Client#describe_fleet_events)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_fleet_events operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_fleet_events(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_fleet_events(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeFleetLocationAttributes
      # @param [Client] client
      # @param [Hash] params (see Client#describe_fleet_location_attributes)
      # @param [Hash] options (see Client#describe_fleet_location_attributes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_fleet_location_attributes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_fleet_location_attributes(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_fleet_location_attributes(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeFleetUtilization
      # @param [Client] client
      # @param [Hash] params (see Client#describe_fleet_utilization)
      # @param [Hash] options (see Client#describe_fleet_utilization)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_fleet_utilization operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_fleet_utilization(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_fleet_utilization(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeGameServerInstances
      # @param [Client] client
      # @param [Hash] params (see Client#describe_game_server_instances)
      # @param [Hash] options (see Client#describe_game_server_instances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_game_server_instances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_game_server_instances(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_game_server_instances(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeGameSessionDetails
      # @param [Client] client
      # @param [Hash] params (see Client#describe_game_session_details)
      # @param [Hash] options (see Client#describe_game_session_details)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_game_session_details operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_game_session_details(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_game_session_details(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeGameSessionQueues
      # @param [Client] client
      # @param [Hash] params (see Client#describe_game_session_queues)
      # @param [Hash] options (see Client#describe_game_session_queues)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_game_session_queues operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_game_session_queues(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_game_session_queues(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeGameSessions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_game_sessions)
      # @param [Hash] options (see Client#describe_game_sessions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_game_sessions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_game_sessions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_game_sessions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeInstances
      # @param [Client] client
      # @param [Hash] params (see Client#describe_instances)
      # @param [Hash] options (see Client#describe_instances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_instances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_instances(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_instances(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeMatchmakingConfigurations
      # @param [Client] client
      # @param [Hash] params (see Client#describe_matchmaking_configurations)
      # @param [Hash] options (see Client#describe_matchmaking_configurations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_matchmaking_configurations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_matchmaking_configurations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_matchmaking_configurations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeMatchmakingRuleSets
      # @param [Client] client
      # @param [Hash] params (see Client#describe_matchmaking_rule_sets)
      # @param [Hash] options (see Client#describe_matchmaking_rule_sets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_matchmaking_rule_sets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_matchmaking_rule_sets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_matchmaking_rule_sets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribePlayerSessions
      # @param [Client] client
      # @param [Hash] params (see Client#describe_player_sessions)
      # @param [Hash] options (see Client#describe_player_sessions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_player_sessions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_player_sessions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_player_sessions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class DescribeScalingPolicies
      # @param [Client] client
      # @param [Hash] params (see Client#describe_scaling_policies)
      # @param [Hash] options (see Client#describe_scaling_policies)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_scaling_policies operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_scaling_policies(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_scaling_policies(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAliases
      # @param [Client] client
      # @param [Hash] params (see Client#list_aliases)
      # @param [Hash] options (see Client#list_aliases)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_aliases operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_aliases(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_aliases(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListBuilds
      # @param [Client] client
      # @param [Hash] params (see Client#list_builds)
      # @param [Hash] options (see Client#list_builds)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_builds operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_builds(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_builds(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListFleets
      # @param [Client] client
      # @param [Hash] params (see Client#list_fleets)
      # @param [Hash] options (see Client#list_fleets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_fleets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_fleets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_fleets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListGameServerGroups
      # @param [Client] client
      # @param [Hash] params (see Client#list_game_server_groups)
      # @param [Hash] options (see Client#list_game_server_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_game_server_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_game_server_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_game_server_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListGameServers
      # @param [Client] client
      # @param [Hash] params (see Client#list_game_servers)
      # @param [Hash] options (see Client#list_game_servers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_game_servers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_game_servers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_game_servers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListScripts
      # @param [Client] client
      # @param [Hash] params (see Client#list_scripts)
      # @param [Hash] options (see Client#list_scripts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_scripts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_scripts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_scripts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class SearchGameSessions
      # @param [Client] client
      # @param [Hash] params (see Client#search_game_sessions)
      # @param [Hash] options (see Client#search_game_sessions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_game_sessions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search_game_sessions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search_game_sessions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
