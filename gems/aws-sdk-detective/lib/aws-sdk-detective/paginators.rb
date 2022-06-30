# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Detective
  module Paginators

    class ListGraphs
      # @param [Client] client
      # @param [Hash] params (see Client#list_graphs)
      # @param [Hash] options (see Client#list_graphs)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_graphs operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_graphs(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_graphs(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListInvitations
      # @param [Client] client
      # @param [Hash] params (see Client#list_invitations)
      # @param [Hash] options (see Client#list_invitations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_invitations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_invitations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_invitations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListMembers
      # @param [Client] client
      # @param [Hash] params (see Client#list_members)
      # @param [Hash] options (see Client#list_members)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_members operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_members(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_members(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListOrganizationAdminAccounts
      # @param [Client] client
      # @param [Hash] params (see Client#list_organization_admin_accounts)
      # @param [Hash] options (see Client#list_organization_admin_accounts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_organization_admin_accounts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_organization_admin_accounts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_organization_admin_accounts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
