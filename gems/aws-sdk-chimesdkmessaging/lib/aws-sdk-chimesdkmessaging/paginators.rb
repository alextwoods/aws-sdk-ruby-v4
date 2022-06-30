# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::ChimeSDKMessaging
  module Paginators

    class ListChannelBans
      # @param [Client] client
      # @param [Hash] params (see Client#list_channel_bans)
      # @param [Hash] options (see Client#list_channel_bans)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_channel_bans operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_channel_bans(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_channel_bans(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListChannelFlows
      # @param [Client] client
      # @param [Hash] params (see Client#list_channel_flows)
      # @param [Hash] options (see Client#list_channel_flows)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_channel_flows operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_channel_flows(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_channel_flows(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListChannelMemberships
      # @param [Client] client
      # @param [Hash] params (see Client#list_channel_memberships)
      # @param [Hash] options (see Client#list_channel_memberships)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_channel_memberships operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_channel_memberships(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_channel_memberships(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListChannelMembershipsForAppInstanceUser
      # @param [Client] client
      # @param [Hash] params (see Client#list_channel_memberships_for_app_instance_user)
      # @param [Hash] options (see Client#list_channel_memberships_for_app_instance_user)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_channel_memberships_for_app_instance_user operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_channel_memberships_for_app_instance_user(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_channel_memberships_for_app_instance_user(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListChannelMessages
      # @param [Client] client
      # @param [Hash] params (see Client#list_channel_messages)
      # @param [Hash] options (see Client#list_channel_messages)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_channel_messages operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_channel_messages(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_channel_messages(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListChannelModerators
      # @param [Client] client
      # @param [Hash] params (see Client#list_channel_moderators)
      # @param [Hash] options (see Client#list_channel_moderators)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_channel_moderators operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_channel_moderators(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_channel_moderators(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListChannels
      # @param [Client] client
      # @param [Hash] params (see Client#list_channels)
      # @param [Hash] options (see Client#list_channels)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_channels operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_channels(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_channels(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListChannelsAssociatedWithChannelFlow
      # @param [Client] client
      # @param [Hash] params (see Client#list_channels_associated_with_channel_flow)
      # @param [Hash] options (see Client#list_channels_associated_with_channel_flow)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_channels_associated_with_channel_flow operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_channels_associated_with_channel_flow(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_channels_associated_with_channel_flow(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListChannelsModeratedByAppInstanceUser
      # @param [Client] client
      # @param [Hash] params (see Client#list_channels_moderated_by_app_instance_user)
      # @param [Hash] options (see Client#list_channels_moderated_by_app_instance_user)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_channels_moderated_by_app_instance_user operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_channels_moderated_by_app_instance_user(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_channels_moderated_by_app_instance_user(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class SearchChannels
      # @param [Client] client
      # @param [Hash] params (see Client#search_channels)
      # @param [Hash] options (see Client#search_channels)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_channels operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search_channels(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search_channels(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
