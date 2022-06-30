# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::CognitoIdentityProvider
  module Paginators

    class AdminListGroupsForUser
      # @param [Client] client
      # @param [Hash] params (see Client#admin_list_groups_for_user)
      # @param [Hash] options (see Client#admin_list_groups_for_user)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the admin_list_groups_for_user operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.admin_list_groups_for_user(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.admin_list_groups_for_user(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the admin_list_groups_for_user operation.
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

    class AdminListUserAuthEvents
      # @param [Client] client
      # @param [Hash] params (see Client#admin_list_user_auth_events)
      # @param [Hash] options (see Client#admin_list_user_auth_events)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the admin_list_user_auth_events operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.admin_list_user_auth_events(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.admin_list_user_auth_events(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the admin_list_user_auth_events operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.auth_events.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListGroups
      # @param [Client] client
      # @param [Hash] params (see Client#list_groups)
      # @param [Hash] options (see Client#list_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_groups operation.
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

    class ListIdentityProviders
      # @param [Client] client
      # @param [Hash] params (see Client#list_identity_providers)
      # @param [Hash] options (see Client#list_identity_providers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_identity_providers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_identity_providers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_identity_providers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_identity_providers operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.providers.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListResourceServers
      # @param [Client] client
      # @param [Hash] params (see Client#list_resource_servers)
      # @param [Hash] options (see Client#list_resource_servers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_resource_servers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_resource_servers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_resource_servers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_resource_servers operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.resource_servers.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListUserPoolClients
      # @param [Client] client
      # @param [Hash] params (see Client#list_user_pool_clients)
      # @param [Hash] options (see Client#list_user_pool_clients)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_user_pool_clients operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_user_pool_clients(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_user_pool_clients(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_user_pool_clients operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.user_pool_clients.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListUserPools
      # @param [Client] client
      # @param [Hash] params (see Client#list_user_pools)
      # @param [Hash] options (see Client#list_user_pools)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_user_pools operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_user_pools(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_user_pools(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_user_pools operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.user_pools.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListUsers
      # @param [Client] client
      # @param [Hash] params (see Client#list_users)
      # @param [Hash] options (see Client#list_users)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_users operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:pagination_token]
          response = @client.list_users(params, @options)
          e.yield(response)
          output_token = response.pagination_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(pagination_token: output_token)
            response = @client.list_users(params, @options)
            e.yield(response)
            output_token = response.pagination_token
          end
        end
      end

      # Iterate all items from pages in the list_users operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.users.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

    class ListUsersInGroup
      # @param [Client] client
      # @param [Hash] params (see Client#list_users_in_group)
      # @param [Hash] options (see Client#list_users_in_group)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_users_in_group operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_users_in_group(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_users_in_group(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end

      # Iterate all items from pages in the list_users_in_group operation.
      # @return [Enumerator]
      def items
        Enumerator.new do |e|
          pages.each do |page|
            page.users.each do |item|
              e.yield(item)
            end
          end
        end
      end
    end

  end
end
