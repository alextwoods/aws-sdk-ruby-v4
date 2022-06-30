# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::SNS
  module Paginators

    class ListEndpointsByPlatformApplication
      # @param [Client] client
      # @param [Hash] params (see Client#list_endpoints_by_platform_application)
      # @param [Hash] options (see Client#list_endpoints_by_platform_application)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_endpoints_by_platform_application operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_endpoints_by_platform_application(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_endpoints_by_platform_application(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_endpoints_by_platform_application operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.endpoints.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListOriginationNumbers
      # @param [Client] client
      # @param [Hash] params (see Client#list_origination_numbers)
      # @param [Hash] options (see Client#list_origination_numbers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_origination_numbers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_origination_numbers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_origination_numbers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListPhoneNumbersOptedOut
      # @param [Client] client
      # @param [Hash] params (see Client#list_phone_numbers_opted_out)
      # @param [Hash] options (see Client#list_phone_numbers_opted_out)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_phone_numbers_opted_out operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_phone_numbers_opted_out(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_phone_numbers_opted_out(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_phone_numbers_opted_out operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.phone_numbers.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListPlatformApplications
      # @param [Client] client
      # @param [Hash] params (see Client#list_platform_applications)
      # @param [Hash] options (see Client#list_platform_applications)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_platform_applications operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_platform_applications(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_platform_applications(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_platform_applications operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.platform_applications.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListSMSSandboxPhoneNumbers
      # @param [Client] client
      # @param [Hash] params (see Client#list_sms_sandbox_phone_numbers)
      # @param [Hash] options (see Client#list_sms_sandbox_phone_numbers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_sms_sandbox_phone_numbers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_sms_sandbox_phone_numbers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_sms_sandbox_phone_numbers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_sms_sandbox_phone_numbers operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.phone_numbers.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListSubscriptions
      # @param [Client] client
      # @param [Hash] params (see Client#list_subscriptions)
      # @param [Hash] options (see Client#list_subscriptions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_subscriptions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_subscriptions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_subscriptions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_subscriptions operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.subscriptions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListSubscriptionsByTopic
      # @param [Client] client
      # @param [Hash] params (see Client#list_subscriptions_by_topic)
      # @param [Hash] options (see Client#list_subscriptions_by_topic)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_subscriptions_by_topic operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_subscriptions_by_topic(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_subscriptions_by_topic(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_subscriptions_by_topic operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.subscriptions.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListTopics
      # @param [Client] client
      # @param [Hash] params (see Client#list_topics)
      # @param [Hash] options (see Client#list_topics)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_topics operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_topics(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_topics(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_topics operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.topics.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
