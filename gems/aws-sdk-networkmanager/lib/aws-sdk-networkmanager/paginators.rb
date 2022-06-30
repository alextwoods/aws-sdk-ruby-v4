# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file was code generated using smithy-ruby.
# https://github.com/awslabs/smithy-ruby
#
# WARNING ABOUT GENERATED CODE

module AWS::SDK::NetworkManager
  module Paginators

    class DescribeGlobalNetworks
      # @param [Client] client
      # @param [Hash] params (see Client#describe_global_networks)
      # @param [Hash] options (see Client#describe_global_networks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the describe_global_networks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.describe_global_networks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.describe_global_networks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetConnections
      # @param [Client] client
      # @param [Hash] params (see Client#get_connections)
      # @param [Hash] options (see Client#get_connections)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_connections operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_connections(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_connections(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetConnectPeerAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#get_connect_peer_associations)
      # @param [Hash] options (see Client#get_connect_peer_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_connect_peer_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_connect_peer_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_connect_peer_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetCoreNetworkChangeSet
      # @param [Client] client
      # @param [Hash] params (see Client#get_core_network_change_set)
      # @param [Hash] options (see Client#get_core_network_change_set)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_core_network_change_set operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_core_network_change_set(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_core_network_change_set(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetCustomerGatewayAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#get_customer_gateway_associations)
      # @param [Hash] options (see Client#get_customer_gateway_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_customer_gateway_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_customer_gateway_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_customer_gateway_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetDevices
      # @param [Client] client
      # @param [Hash] params (see Client#get_devices)
      # @param [Hash] options (see Client#get_devices)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_devices operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_devices(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_devices(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetLinkAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#get_link_associations)
      # @param [Hash] options (see Client#get_link_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_link_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_link_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_link_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetLinks
      # @param [Client] client
      # @param [Hash] params (see Client#get_links)
      # @param [Hash] options (see Client#get_links)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_links operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_links(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_links(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetNetworkResourceCounts
      # @param [Client] client
      # @param [Hash] params (see Client#get_network_resource_counts)
      # @param [Hash] options (see Client#get_network_resource_counts)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_network_resource_counts operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_network_resource_counts(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_network_resource_counts(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetNetworkResourceRelationships
      # @param [Client] client
      # @param [Hash] params (see Client#get_network_resource_relationships)
      # @param [Hash] options (see Client#get_network_resource_relationships)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_network_resource_relationships operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_network_resource_relationships(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_network_resource_relationships(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetNetworkResources
      # @param [Client] client
      # @param [Hash] params (see Client#get_network_resources)
      # @param [Hash] options (see Client#get_network_resources)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_network_resources operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_network_resources(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_network_resources(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetNetworkTelemetry
      # @param [Client] client
      # @param [Hash] params (see Client#get_network_telemetry)
      # @param [Hash] options (see Client#get_network_telemetry)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_network_telemetry operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_network_telemetry(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_network_telemetry(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetSites
      # @param [Client] client
      # @param [Hash] params (see Client#get_sites)
      # @param [Hash] options (see Client#get_sites)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_sites operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_sites(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_sites(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetTransitGatewayConnectPeerAssociations
      # @param [Client] client
      # @param [Hash] params (see Client#get_transit_gateway_connect_peer_associations)
      # @param [Hash] options (see Client#get_transit_gateway_connect_peer_associations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_transit_gateway_connect_peer_associations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_transit_gateway_connect_peer_associations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_transit_gateway_connect_peer_associations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class GetTransitGatewayRegistrations
      # @param [Client] client
      # @param [Hash] params (see Client#get_transit_gateway_registrations)
      # @param [Hash] options (see Client#get_transit_gateway_registrations)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the get_transit_gateway_registrations operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.get_transit_gateway_registrations(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.get_transit_gateway_registrations(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListAttachments
      # @param [Client] client
      # @param [Hash] params (see Client#list_attachments)
      # @param [Hash] options (see Client#list_attachments)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_attachments operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_attachments(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_attachments(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListConnectPeers
      # @param [Client] client
      # @param [Hash] params (see Client#list_connect_peers)
      # @param [Hash] options (see Client#list_connect_peers)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_connect_peers operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_connect_peers(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_connect_peers(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListCoreNetworkPolicyVersions
      # @param [Client] client
      # @param [Hash] params (see Client#list_core_network_policy_versions)
      # @param [Hash] options (see Client#list_core_network_policy_versions)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_core_network_policy_versions operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_core_network_policy_versions(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_core_network_policy_versions(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

    class ListCoreNetworks
      # @param [Client] client
      # @param [Hash] params (see Client#list_core_networks)
      # @param [Hash] options (see Client#list_core_networks)
      def initialize(client, params = {}, options = {})
        @params = params
        @options = options
        @client = client
      end
      # Iterate all response pages of the list_core_networks operation.
      # @return [Enumerator]
      def pages
        params = @params
        Enumerator.new do |e|
          @prev_token = params[:next_token]
          response = @client.list_core_networks(params, @options)
          e.yield(response)
          output_token = response.next_token

          until output_token.nil? || @prev_token == output_token
            params = params.merge(next_token: output_token)
            response = @client.list_core_networks(params, @options)
            e.yield(response)
            output_token = response.next_token
          end
        end
      end
    end

  end
end
