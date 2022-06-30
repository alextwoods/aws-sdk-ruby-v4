# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::IoTWireless
  module Paginators

    class ListDestinations
      # @param [Client] client
      # @param [Hash] params (see Client#list_destinations)
      # @param [Hash] options (see Client#list_destinations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_destinations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_destinations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_destinations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListDeviceProfiles
      # @param [Client] client
      # @param [Hash] params (see Client#list_device_profiles)
      # @param [Hash] options (see Client#list_device_profiles)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_device_profiles operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_device_profiles(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_device_profiles(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListFuotaTasks
      # @param [Client] client
      # @param [Hash] params (see Client#list_fuota_tasks)
      # @param [Hash] options (see Client#list_fuota_tasks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_fuota_tasks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_fuota_tasks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_fuota_tasks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListMulticastGroups
      # @param [Client] client
      # @param [Hash] params (see Client#list_multicast_groups)
      # @param [Hash] options (see Client#list_multicast_groups)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_multicast_groups operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_multicast_groups(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_multicast_groups(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListMulticastGroupsByFuotaTask
      # @param [Client] client
      # @param [Hash] params (see Client#list_multicast_groups_by_fuota_task)
      # @param [Hash] options (see Client#list_multicast_groups_by_fuota_task)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_multicast_groups_by_fuota_task operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_multicast_groups_by_fuota_task(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_multicast_groups_by_fuota_task(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListNetworkAnalyzerConfigurations
      # @param [Client] client
      # @param [Hash] params (see Client#list_network_analyzer_configurations)
      # @param [Hash] options (see Client#list_network_analyzer_configurations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_network_analyzer_configurations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_network_analyzer_configurations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_network_analyzer_configurations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListQueuedMessages
      # @param [Client] client
      # @param [Hash] params (see Client#list_queued_messages)
      # @param [Hash] options (see Client#list_queued_messages)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_queued_messages operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_queued_messages(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_queued_messages(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListServiceProfiles
      # @param [Client] client
      # @param [Hash] params (see Client#list_service_profiles)
      # @param [Hash] options (see Client#list_service_profiles)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_service_profiles operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_service_profiles(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_service_profiles(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListWirelessDevices
      # @param [Client] client
      # @param [Hash] params (see Client#list_wireless_devices)
      # @param [Hash] options (see Client#list_wireless_devices)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_wireless_devices operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_wireless_devices(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_wireless_devices(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListWirelessGateways
      # @param [Client] client
      # @param [Hash] params (see Client#list_wireless_gateways)
      # @param [Hash] options (see Client#list_wireless_gateways)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_wireless_gateways operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_wireless_gateways(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_wireless_gateways(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
