# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::Chime
  module Paginators

    class ListAccounts
      # @param [Client] client
      # @param [Hash] params (see Client#list_accounts)
      # @param [Hash] options (see Client#list_accounts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_accounts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_accounts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_accounts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

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

    class ListAttendees
      # @param [Client] client
      # @param [Hash] params (see Client#list_attendees)
      # @param [Hash] options (see Client#list_attendees)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_attendees operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_attendees(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_attendees(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListBots
      # @param [Client] client
      # @param [Hash] params (see Client#list_bots)
      # @param [Hash] options (see Client#list_bots)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_bots operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_bots(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_bots(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

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

    class ListMediaCapturePipelines
      # @param [Client] client
      # @param [Hash] params (see Client#list_media_capture_pipelines)
      # @param [Hash] options (see Client#list_media_capture_pipelines)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_media_capture_pipelines operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_media_capture_pipelines(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_media_capture_pipelines(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListMeetings
      # @param [Client] client
      # @param [Hash] params (see Client#list_meetings)
      # @param [Hash] options (see Client#list_meetings)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_meetings operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_meetings(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_meetings(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListPhoneNumberOrders
      # @param [Client] client
      # @param [Hash] params (see Client#list_phone_number_orders)
      # @param [Hash] options (see Client#list_phone_number_orders)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_phone_number_orders operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_phone_number_orders(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_phone_number_orders(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListPhoneNumbers
      # @param [Client] client
      # @param [Hash] params (see Client#list_phone_numbers)
      # @param [Hash] options (see Client#list_phone_numbers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_phone_numbers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_phone_numbers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_phone_numbers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListProxySessions
      # @param [Client] client
      # @param [Hash] params (see Client#list_proxy_sessions)
      # @param [Hash] options (see Client#list_proxy_sessions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_proxy_sessions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_proxy_sessions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_proxy_sessions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListRoomMemberships
      # @param [Client] client
      # @param [Hash] params (see Client#list_room_memberships)
      # @param [Hash] options (see Client#list_room_memberships)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_room_memberships operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_room_memberships(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_room_memberships(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListRooms
      # @param [Client] client
      # @param [Hash] params (see Client#list_rooms)
      # @param [Hash] options (see Client#list_rooms)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_rooms operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_rooms(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_rooms(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSipMediaApplications
      # @param [Client] client
      # @param [Hash] params (see Client#list_sip_media_applications)
      # @param [Hash] options (see Client#list_sip_media_applications)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_sip_media_applications operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_sip_media_applications(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_sip_media_applications(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListSipRules
      # @param [Client] client
      # @param [Hash] params (see Client#list_sip_rules)
      # @param [Hash] options (see Client#list_sip_rules)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_sip_rules operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_sip_rules(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_sip_rules(params, @options)
            e.yield(response)
            output_token = response.next_token
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
          @prev_token = params[:next_token]
          response = @client.list_users(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_users(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListVoiceConnectorGroups
      # @param [Client] client
      # @param [Hash] params (see Client#list_voice_connector_groups)
      # @param [Hash] options (see Client#list_voice_connector_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_voice_connector_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_voice_connector_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_voice_connector_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListVoiceConnectors
      # @param [Client] client
      # @param [Hash] params (see Client#list_voice_connectors)
      # @param [Hash] options (see Client#list_voice_connectors)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_voice_connectors operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_voice_connectors(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_voice_connectors(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class SearchAvailablePhoneNumbers
      # @param [Client] client
      # @param [Hash] params (see Client#search_available_phone_numbers)
      # @param [Hash] options (see Client#search_available_phone_numbers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the search_available_phone_numbers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.search_available_phone_numbers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.search_available_phone_numbers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
