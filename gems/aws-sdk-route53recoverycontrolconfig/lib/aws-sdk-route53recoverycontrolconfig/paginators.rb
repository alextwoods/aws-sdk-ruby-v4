# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Route53RecoveryControlConfig
  module Paginators

    class ListAssociatedRoute53HealthChecks
      # @param [Client] client
      # @param [Hash] params (see Client#list_associated_route53_health_checks)
      # @param [Hash] options (see Client#list_associated_route53_health_checks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_associated_route53_health_checks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_associated_route53_health_checks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_associated_route53_health_checks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListClusters
      # @param [Client] client
      # @param [Hash] params (see Client#list_clusters)
      # @param [Hash] options (see Client#list_clusters)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_clusters operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_clusters(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_clusters(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListControlPanels
      # @param [Client] client
      # @param [Hash] params (see Client#list_control_panels)
      # @param [Hash] options (see Client#list_control_panels)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_control_panels operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_control_panels(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_control_panels(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListRoutingControls
      # @param [Client] client
      # @param [Hash] params (see Client#list_routing_controls)
      # @param [Hash] options (see Client#list_routing_controls)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_routing_controls operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_routing_controls(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_routing_controls(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSafetyRules
      # @param [Client] client
      # @param [Hash] params (see Client#list_safety_rules)
      # @param [Hash] options (see Client#list_safety_rules)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_safety_rules operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_safety_rules(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_safety_rules(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
