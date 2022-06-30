# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Inspector
  module Paginators

    class GetExclusionsPreview
      # @param [Client] client
      # @param [Hash] params (see Client#get_exclusions_preview)
      # @param [Hash] options (see Client#get_exclusions_preview)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_exclusions_preview operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_exclusions_preview(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_exclusions_preview(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAssessmentRunAgents
      # @param [Client] client
      # @param [Hash] params (see Client#list_assessment_run_agents)
      # @param [Hash] options (see Client#list_assessment_run_agents)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_assessment_run_agents operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_assessment_run_agents(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_assessment_run_agents(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAssessmentRuns
      # @param [Client] client
      # @param [Hash] params (see Client#list_assessment_runs)
      # @param [Hash] options (see Client#list_assessment_runs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_assessment_runs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_assessment_runs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_assessment_runs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAssessmentTargets
      # @param [Client] client
      # @param [Hash] params (see Client#list_assessment_targets)
      # @param [Hash] options (see Client#list_assessment_targets)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_assessment_targets operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_assessment_targets(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_assessment_targets(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAssessmentTemplates
      # @param [Client] client
      # @param [Hash] params (see Client#list_assessment_templates)
      # @param [Hash] options (see Client#list_assessment_templates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_assessment_templates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_assessment_templates(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_assessment_templates(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListEventSubscriptions
      # @param [Client] client
      # @param [Hash] params (see Client#list_event_subscriptions)
      # @param [Hash] options (see Client#list_event_subscriptions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_event_subscriptions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_event_subscriptions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_event_subscriptions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListExclusions
      # @param [Client] client
      # @param [Hash] params (see Client#list_exclusions)
      # @param [Hash] options (see Client#list_exclusions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_exclusions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_exclusions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_exclusions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListFindings
      # @param [Client] client
      # @param [Hash] params (see Client#list_findings)
      # @param [Hash] options (see Client#list_findings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_findings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_findings(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_findings(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListRulesPackages
      # @param [Client] client
      # @param [Hash] params (see Client#list_rules_packages)
      # @param [Hash] options (see Client#list_rules_packages)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_rules_packages operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_rules_packages(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_rules_packages(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class PreviewAgents
      # @param [Client] client
      # @param [Hash] params (see Client#preview_agents)
      # @param [Hash] options (see Client#preview_agents)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the preview_agents operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.preview_agents(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.preview_agents(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
