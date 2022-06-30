# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ChimeSDKIdentity
  module Paginators

    class ListAppInstanceAdmins
      # @param [Client] client
      # @param [Hash] params (see Client#list_app_instance_admins)
      # @param [Hash] options (see Client#list_app_instance_admins)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_app_instance_admins operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_app_instance_admins(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_app_instance_admins(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAppInstances
      # @param [Client] client
      # @param [Hash] params (see Client#list_app_instances)
      # @param [Hash] options (see Client#list_app_instances)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_app_instances operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_app_instances(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_app_instances(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAppInstanceUserEndpoints
      # @param [Client] client
      # @param [Hash] params (see Client#list_app_instance_user_endpoints)
      # @param [Hash] options (see Client#list_app_instance_user_endpoints)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_app_instance_user_endpoints operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_app_instance_user_endpoints(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_app_instance_user_endpoints(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAppInstanceUsers
      # @param [Client] client
      # @param [Hash] params (see Client#list_app_instance_users)
      # @param [Hash] options (see Client#list_app_instance_users)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_app_instance_users operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_app_instance_users(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_app_instance_users(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
