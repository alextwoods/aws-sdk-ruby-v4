# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::XRay
  module Paginators

    class BatchGetTraces
      # @param [Client] client
      # @param [Hash] params (see Client#batch_get_traces)
      # @param [Hash] options (see Client#batch_get_traces)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the batch_get_traces operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.batch_get_traces(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.batch_get_traces(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the batch_get_traces operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.traces.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetGroups
      # @param [Client] client
      # @param [Hash] params (see Client#get_groups)
      # @param [Hash] options (see Client#get_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_groups operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.groups.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetInsightEvents
      # @param [Client] client
      # @param [Hash] params (see Client#get_insight_events)
      # @param [Hash] options (see Client#get_insight_events)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_insight_events operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_insight_events(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_insight_events(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetInsightSummaries
      # @param [Client] client
      # @param [Hash] params (see Client#get_insight_summaries)
      # @param [Hash] options (see Client#get_insight_summaries)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_insight_summaries operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_insight_summaries(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_insight_summaries(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetSamplingRules
      # @param [Client] client
      # @param [Hash] params (see Client#get_sampling_rules)
      # @param [Hash] options (see Client#get_sampling_rules)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_sampling_rules operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_sampling_rules(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_sampling_rules(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_sampling_rules operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.sampling_rule_records.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetSamplingStatisticSummaries
      # @param [Client] client
      # @param [Hash] params (see Client#get_sampling_statistic_summaries)
      # @param [Hash] options (see Client#get_sampling_statistic_summaries)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_sampling_statistic_summaries operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_sampling_statistic_summaries(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_sampling_statistic_summaries(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_sampling_statistic_summaries operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.sampling_statistic_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetServiceGraph
      # @param [Client] client
      # @param [Hash] params (see Client#get_service_graph)
      # @param [Hash] options (see Client#get_service_graph)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_service_graph operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_service_graph(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_service_graph(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_service_graph operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.services.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetTimeSeriesServiceStatistics
      # @param [Client] client
      # @param [Hash] params (see Client#get_time_series_service_statistics)
      # @param [Hash] options (see Client#get_time_series_service_statistics)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_time_series_service_statistics operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_time_series_service_statistics(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_time_series_service_statistics(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_time_series_service_statistics operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.time_series_service_statistics.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetTraceGraph
      # @param [Client] client
      # @param [Hash] params (see Client#get_trace_graph)
      # @param [Hash] options (see Client#get_trace_graph)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_trace_graph operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_trace_graph(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_trace_graph(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_trace_graph operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.services.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class GetTraceSummaries
      # @param [Client] client
      # @param [Hash] params (see Client#get_trace_summaries)
      # @param [Hash] options (see Client#get_trace_summaries)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_trace_summaries operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_trace_summaries(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_trace_summaries(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the get_trace_summaries operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.trace_summaries.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
