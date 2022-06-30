# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ManagedBlockchain
  module Paginators

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

    class ListNetworks
      # @param [Client] client
      # @param [Hash] params (see Client#list_networks)
      # @param [Hash] options (see Client#list_networks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_networks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_networks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_networks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListNodes
      # @param [Client] client
      # @param [Hash] params (see Client#list_nodes)
      # @param [Hash] options (see Client#list_nodes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_nodes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_nodes(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_nodes(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListProposals
      # @param [Client] client
      # @param [Hash] params (see Client#list_proposals)
      # @param [Hash] options (see Client#list_proposals)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_proposals operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_proposals(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_proposals(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListProposalVotes
      # @param [Client] client
      # @param [Hash] params (see Client#list_proposal_votes)
      # @param [Hash] options (see Client#list_proposal_votes)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_proposal_votes operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_proposal_votes(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_proposal_votes(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
