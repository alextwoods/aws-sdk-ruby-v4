# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Resiliencehub
  module Paginators

    class ListAlarmRecommendations
      # @param [Client] client
      # @param [Hash] params (see Client#list_alarm_recommendations)
      # @param [Hash] options (see Client#list_alarm_recommendations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_alarm_recommendations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_alarm_recommendations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_alarm_recommendations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAppAssessments
      # @param [Client] client
      # @param [Hash] params (see Client#list_app_assessments)
      # @param [Hash] options (see Client#list_app_assessments)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_app_assessments operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_app_assessments(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_app_assessments(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAppComponentCompliances
      # @param [Client] client
      # @param [Hash] params (see Client#list_app_component_compliances)
      # @param [Hash] options (see Client#list_app_component_compliances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_app_component_compliances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_app_component_compliances(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_app_component_compliances(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAppComponentRecommendations
      # @param [Client] client
      # @param [Hash] params (see Client#list_app_component_recommendations)
      # @param [Hash] options (see Client#list_app_component_recommendations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_app_component_recommendations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_app_component_recommendations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_app_component_recommendations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListApps
      # @param [Client] client
      # @param [Hash] params (see Client#list_apps)
      # @param [Hash] options (see Client#list_apps)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_apps operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_apps(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_apps(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAppVersionResourceMappings
      # @param [Client] client
      # @param [Hash] params (see Client#list_app_version_resource_mappings)
      # @param [Hash] options (see Client#list_app_version_resource_mappings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_app_version_resource_mappings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_app_version_resource_mappings(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_app_version_resource_mappings(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAppVersionResources
      # @param [Client] client
      # @param [Hash] params (see Client#list_app_version_resources)
      # @param [Hash] options (see Client#list_app_version_resources)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_app_version_resources operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_app_version_resources(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_app_version_resources(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAppVersions
      # @param [Client] client
      # @param [Hash] params (see Client#list_app_versions)
      # @param [Hash] options (see Client#list_app_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_app_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_app_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_app_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListRecommendationTemplates
      # @param [Client] client
      # @param [Hash] params (see Client#list_recommendation_templates)
      # @param [Hash] options (see Client#list_recommendation_templates)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_recommendation_templates operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_recommendation_templates(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_recommendation_templates(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListResiliencyPolicies
      # @param [Client] client
      # @param [Hash] params (see Client#list_resiliency_policies)
      # @param [Hash] options (see Client#list_resiliency_policies)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resiliency_policies operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resiliency_policies(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resiliency_policies(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSopRecommendations
      # @param [Client] client
      # @param [Hash] params (see Client#list_sop_recommendations)
      # @param [Hash] options (see Client#list_sop_recommendations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_sop_recommendations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_sop_recommendations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_sop_recommendations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSuggestedResiliencyPolicies
      # @param [Client] client
      # @param [Hash] params (see Client#list_suggested_resiliency_policies)
      # @param [Hash] options (see Client#list_suggested_resiliency_policies)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_suggested_resiliency_policies operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_suggested_resiliency_policies(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_suggested_resiliency_policies(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListTestRecommendations
      # @param [Client] client
      # @param [Hash] params (see Client#list_test_recommendations)
      # @param [Hash] options (see Client#list_test_recommendations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_test_recommendations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_test_recommendations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_test_recommendations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListUnsupportedAppVersionResources
      # @param [Client] client
      # @param [Hash] params (see Client#list_unsupported_app_version_resources)
      # @param [Hash] options (see Client#list_unsupported_app_version_resources)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_unsupported_app_version_resources operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_unsupported_app_version_resources(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_unsupported_app_version_resources(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
