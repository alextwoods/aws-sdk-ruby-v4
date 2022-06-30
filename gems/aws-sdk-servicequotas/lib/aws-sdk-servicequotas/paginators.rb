# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ServiceQuotas
  module Paginators

    class ListAWSDefaultServiceQuotas
      # @param [Client] client
      # @param [Hash] params (see Client#list_aws_default_service_quotas)
      # @param [Hash] options (see Client#list_aws_default_service_quotas)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_aws_default_service_quotas operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_aws_default_service_quotas(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_aws_default_service_quotas(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_aws_default_service_quotas operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.quotas.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListRequestedServiceQuotaChangeHistory
      # @param [Client] client
      # @param [Hash] params (see Client#list_requested_service_quota_change_history)
      # @param [Hash] options (see Client#list_requested_service_quota_change_history)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_requested_service_quota_change_history operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_requested_service_quota_change_history(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_requested_service_quota_change_history(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_requested_service_quota_change_history operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.requested_quotas.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListRequestedServiceQuotaChangeHistoryByQuota
      # @param [Client] client
      # @param [Hash] params (see Client#list_requested_service_quota_change_history_by_quota)
      # @param [Hash] options (see Client#list_requested_service_quota_change_history_by_quota)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_requested_service_quota_change_history_by_quota operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_requested_service_quota_change_history_by_quota(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_requested_service_quota_change_history_by_quota(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_requested_service_quota_change_history_by_quota operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.requested_quotas.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListServiceQuotaIncreaseRequestsInTemplate
      # @param [Client] client
      # @param [Hash] params (see Client#list_service_quota_increase_requests_in_template)
      # @param [Hash] options (see Client#list_service_quota_increase_requests_in_template)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_service_quota_increase_requests_in_template operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_service_quota_increase_requests_in_template(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_service_quota_increase_requests_in_template(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_service_quota_increase_requests_in_template operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.service_quota_increase_request_in_template_list.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListServiceQuotas
      # @param [Client] client
      # @param [Hash] params (see Client#list_service_quotas)
      # @param [Hash] options (see Client#list_service_quotas)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_service_quotas operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_service_quotas(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_service_quotas(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_service_quotas operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.quotas.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListServices
      # @param [Client] client
      # @param [Hash] params (see Client#list_services)
      # @param [Hash] options (see Client#list_services)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_services operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_services(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_services(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_services operation.
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

  end
end
